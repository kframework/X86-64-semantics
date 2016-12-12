; ModuleID = 'Output/test_27.clang.trans.bc'
source_filename = "Output/test_27.clang.bc"
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
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
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
module asm "  .globl sub_100;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_100(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [5 x i8] }>
%1 = type <{ [32 x i8], i32, [28 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x212 = internal constant %0 <{ [5 x i8] c"%lu\0A\00" }>, align 64
@data_0x218 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [28 x i8] c"\FF\00\00\00\00A\0E\10\86\02C\0D\06I\83\05\8E\04\8F\03\1C\00\00\00<\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\12\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_100(%RegState*) #1 {
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
  br label %block_0x100, !mcsema_real_eip !2

block_0x100:                                      ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sub i64 %RSP_val.3, 128, !mcsema_real_eip !4
  %4 = xor i64 %3, %RSP_val.3, !mcsema_real_eip !4
  %5 = xor i64 %4, 128, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %RSP_val.3, 128, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %RSP_val.3, 128, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = and i64 %16, %17, !mcsema_real_eip !4
  %19 = lshr i64 %18, 63, !mcsema_real_eip !4
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !4
  store i1 %20, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 12, i64* %XAX, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !6
  %21 = zext i32 %EAX_val.5 to i64, !mcsema_real_eip !6
  store i64 %21, i64* %XDI, !mcsema_real_eip !6
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !7
  %22 = add i64 %RBP_val.6, -4, !mcsema_real_eip !7
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !7
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !7
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %25, !mcsema_real_eip !7
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !8
  %26 = add i64 %RBP_val.7, -16, !mcsema_real_eip !8
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !8
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %29, !mcsema_real_eip !8
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !9
  %30 = add i64 %RBP_val.8, -12, !mcsema_real_eip !9
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !9
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !9
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %33, !mcsema_real_eip !9
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !10
  %34 = add i64 %RBP_val.9, -8, !mcsema_real_eip !10
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !10
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !10
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !10
  store i32 10, i32* %37, !mcsema_real_eip !10
  %RDI_val.10 = load i64, i64* %XDI, !mcsema_real_eip !11
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !11
  %38 = sub i64 %RSP_val.11, 8, !mcsema_real_eip !11
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %39, !mcsema_real_eip !11
  store i64 %38, i64* %XSP, !mcsema_real_eip !11
  %40 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.10), !mcsema_real_eip !11
  store i64 %40, i64* %XAX, !mcsema_real_eip !11
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !12
  %41 = add i64 %RBP_val.12, -16, !mcsema_real_eip !12
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !12
  %43 = ptrtoint i64* %42 to i64, !mcsema_real_eip !12
  store i64 %43, i64* %XDI, !mcsema_real_eip !12
  store i64 1, i64* %R8, !mcsema_real_eip !13
  store i64 2, i64* %R9, !mcsema_real_eip !14
  store i64 3, i64* %XCX, !mcsema_real_eip !15
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !16
  %44 = add i64 %RBP_val.13, -24, !mcsema_real_eip !16
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !16
  %RAX_val.14 = load i64, i64* %XAX, !mcsema_real_eip !16
  store i64 %RAX_val.14, i64* %45, !mcsema_real_eip !16
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !17
  %46 = add i64 %RBP_val.15, -24, !mcsema_real_eip !17
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !17
  %48 = load i64, i64* %47, !mcsema_real_eip !17
  store i64 %48, i64* %XAX, !mcsema_real_eip !17
  %RAX_val.16 = load i64, i64* %XAX, !mcsema_real_eip !18
  %49 = add i64 %RAX_val.16, 0, !mcsema_real_eip !18
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !18
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !18
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !18
  store i32 5, i32* %52, !mcsema_real_eip !18
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !19
  %53 = add i64 %RBP_val.17, -24, !mcsema_real_eip !19
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !19
  %55 = load i64, i64* %54, !mcsema_real_eip !19
  store i64 %55, i64* %XAX, !mcsema_real_eip !19
  %RAX_val.18 = load i64, i64* %XAX, !mcsema_real_eip !20
  %56 = add i64 %RAX_val.18, 4, !mcsema_real_eip !20
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !20
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !20
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !20
  store i32 5, i32* %59, !mcsema_real_eip !20
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !21
  %60 = add i64 %RBP_val.19, -24, !mcsema_real_eip !21
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !21
  %62 = load i64, i64* %61, !mcsema_real_eip !21
  store i64 %62, i64* %XAX, !mcsema_real_eip !21
  %RAX_val.20 = load i64, i64* %XAX, !mcsema_real_eip !22
  %63 = add i64 %RAX_val.20, 8, !mcsema_real_eip !22
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !22
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !22
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !22
  store i32 5, i32* %66, !mcsema_real_eip !22
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !23
  %67 = add i64 %RBP_val.21, -24, !mcsema_real_eip !23
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !23
  %69 = load i64, i64* %68, !mcsema_real_eip !23
  store i64 %69, i64* %XAX, !mcsema_real_eip !23
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !24
  %70 = add i64 %RBP_val.22, -24, !mcsema_real_eip !24
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !24
  %72 = load i64, i64* %71, !mcsema_real_eip !24
  store i64 %72, i64* %XDX, !mcsema_real_eip !24
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !25
  %73 = add i64 %RBP_val.23, -16, !mcsema_real_eip !25
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !25
  %75 = load i64, i64* %74, !mcsema_real_eip !25
  store i64 %75, i64* %XSI, !mcsema_real_eip !25
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !26
  %76 = add i64 %RBP_val.24, -48, !mcsema_real_eip !26
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !26
  %RSI_val.25 = load i64, i64* %XSI, !mcsema_real_eip !26
  store i64 %RSI_val.25, i64* %77, !mcsema_real_eip !26
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !27
  %78 = add i64 %RBP_val.26, -8, !mcsema_real_eip !27
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !27
  %80 = ptrtoint i64* %79 to i64, !mcsema_real_eip !27
  %81 = inttoptr i64 %80 to i32*, !mcsema_real_eip !27
  %82 = load i32, i32* %81, !mcsema_real_eip !27
  %83 = zext i32 %82 to i64, !mcsema_real_eip !27
  store i64 %83, i64* %R10, !mcsema_real_eip !27
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !28
  %84 = add i64 %RBP_val.27, -40, !mcsema_real_eip !28
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !28
  %R10D.28 = bitcast i64* %R10 to i32*, !mcsema_real_eip !28
  %R10D_val.29 = load i32, i32* %R10D.28, !mcsema_real_eip !28
  %86 = ptrtoint i64* %85 to i64, !mcsema_real_eip !28
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !28
  store i32 %R10D_val.29, i32* %87, !mcsema_real_eip !28
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !29
  %88 = add i64 %RBP_val.30, -48, !mcsema_real_eip !29
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !29
  %90 = load i64, i64* %89, !mcsema_real_eip !29
  store i64 %90, i64* %XSI, !mcsema_real_eip !29
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !30
  %91 = add i64 %RBP_val.31, -40, !mcsema_real_eip !30
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !30
  %93 = ptrtoint i64* %92 to i64, !mcsema_real_eip !30
  %94 = inttoptr i64 %93 to i32*, !mcsema_real_eip !30
  %95 = load i32, i32* %94, !mcsema_real_eip !30
  %96 = zext i32 %95 to i64, !mcsema_real_eip !30
  store i64 %96, i64* %R10, !mcsema_real_eip !30
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !31
  %97 = add i64 %RBP_val.32, -64, !mcsema_real_eip !31
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !31
  %RDI_val.33 = load i64, i64* %XDI, !mcsema_real_eip !31
  store i64 %RDI_val.33, i64* %98, !mcsema_real_eip !31
  %RSI_val.34 = load i64, i64* %XSI, !mcsema_real_eip !32
  store i64 %RSI_val.34, i64* %XDI, !mcsema_real_eip !32
  %R10D.35 = bitcast i64* %R10 to i32*, !mcsema_real_eip !33
  %R10D_val.36 = load i32, i32* %R10D.35, !mcsema_real_eip !33
  %99 = zext i32 %R10D_val.36 to i64, !mcsema_real_eip !33
  store i64 %99, i64* %XSI, !mcsema_real_eip !33
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !34
  %100 = add i64 %RBP_val.37, -64, !mcsema_real_eip !34
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !34
  %102 = load i64, i64* %101, !mcsema_real_eip !34
  store i64 %102, i64* %R11, !mcsema_real_eip !34
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !35
  %103 = add i64 %RBP_val.38, -72, !mcsema_real_eip !35
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !35
  %RDX_val.39 = load i64, i64* %XDX, !mcsema_real_eip !35
  store i64 %RDX_val.39, i64* %104, !mcsema_real_eip !35
  %R11_val.40 = load i64, i64* %R11, !mcsema_real_eip !36
  store i64 %R11_val.40, i64* %XDX, !mcsema_real_eip !36
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !37
  %105 = add i64 %RBP_val.41, -76, !mcsema_real_eip !37
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !37
  %ECX.42 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %ECX_val.43 = load i32, i32* %ECX.42, !mcsema_real_eip !37
  %107 = ptrtoint i64* %106 to i64, !mcsema_real_eip !37
  %108 = inttoptr i64 %107 to i32*, !mcsema_real_eip !37
  store i32 %ECX_val.43, i32* %108, !mcsema_real_eip !37
  %RAX_val.44 = load i64, i64* %XAX, !mcsema_real_eip !38
  store i64 %RAX_val.44, i64* %XCX, !mcsema_real_eip !38
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !39
  %109 = add i64 %RSP_val.45, 0, !mcsema_real_eip !39
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !39
  %111 = ptrtoint i64* %110 to i64, !mcsema_real_eip !39
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !39
  store i32 3, i32* %112, !mcsema_real_eip !39
  %R11_val.46 = load i64, i64* %R11, !mcsema_real_eip !40
  %113 = add i64 %R11_val.46, 0, !mcsema_real_eip !40
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !40
  %115 = load i64, i64* %114, !mcsema_real_eip !40
  store i64 %115, i64* %XAX, !mcsema_real_eip !40
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !41
  %116 = add i64 %RSP_val.47, 8, !mcsema_real_eip !41
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !41
  %RAX_val.48 = load i64, i64* %XAX, !mcsema_real_eip !41
  store i64 %RAX_val.48, i64* %117, !mcsema_real_eip !41
  %R11_val.49 = load i64, i64* %R11, !mcsema_real_eip !42
  %118 = add i64 %R11_val.49, 8, !mcsema_real_eip !42
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !42
  %120 = ptrtoint i64* %119 to i64, !mcsema_real_eip !42
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !42
  %122 = load i32, i32* %121, !mcsema_real_eip !42
  %123 = zext i32 %122 to i64, !mcsema_real_eip !42
  store i64 %123, i64* %R10, !mcsema_real_eip !42
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !43
  %124 = add i64 %RSP_val.50, 16, !mcsema_real_eip !43
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !43
  %R10D.51 = bitcast i64* %R10 to i32*, !mcsema_real_eip !43
  %R10D_val.52 = load i32, i32* %R10D.51, !mcsema_real_eip !43
  %126 = ptrtoint i64* %125 to i64, !mcsema_real_eip !43
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !43
  store i32 %R10D_val.52, i32* %127, !mcsema_real_eip !43
  %RSP_val.53 = load i64, i64* %XSP, !mcsema_real_eip !44
  %128 = add i64 %RSP_val.53, 24, !mcsema_real_eip !44
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !44
  %R11_val.54 = load i64, i64* %R11, !mcsema_real_eip !44
  store i64 %R11_val.54, i64* %129, !mcsema_real_eip !44
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !45
  %130 = add i64 %RBP_val.55, -72, !mcsema_real_eip !45
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !45
  %132 = load i64, i64* %131, !mcsema_real_eip !45
  store i64 %132, i64* %XAX, !mcsema_real_eip !45
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !46
  %133 = add i64 %RSP_val.56, 32, !mcsema_real_eip !46
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !46
  %RAX_val.57 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.57, i64* %134, !mcsema_real_eip !46
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !47
  %135 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !47
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !47
  store i64 -4981261766360305936, i64* %136, !mcsema_real_eip !47
  store i64 %135, i64* %XSP, !mcsema_real_eip !47
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !47
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, !mcsema_real_eip !48
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !49
  %137 = add i64 %RBP_val.59, -32, !mcsema_real_eip !49
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !49
  %RAX_val.60 = load i64, i64* %XAX, !mcsema_real_eip !49
  store i64 %RAX_val.60, i64* %138, !mcsema_real_eip !49
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !50
  %139 = add i64 %RBP_val.61, -32, !mcsema_real_eip !50
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !50
  %141 = load i64, i64* %140, !mcsema_real_eip !50
  store i64 %141, i64* %XAX, !mcsema_real_eip !50
  %RAX_val.62 = load i64, i64* %XAX, !mcsema_real_eip !51
  %142 = add i64 %RAX_val.62, 0, !mcsema_real_eip !51
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !51
  %144 = ptrtoint i64* %143 to i64, !mcsema_real_eip !51
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !51
  %146 = load i32, i32* %145, !mcsema_real_eip !51
  %147 = zext i32 %146 to i64, !mcsema_real_eip !51
  store i64 %147, i64* %XSI, !mcsema_real_eip !51
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !52
  %148 = add i64 %RBP_val.63, -32, !mcsema_real_eip !52
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !52
  %150 = load i64, i64* %149, !mcsema_real_eip !52
  store i64 %150, i64* %XAX, !mcsema_real_eip !52
  %RAX_val.64 = load i64, i64* %XAX, !mcsema_real_eip !53
  %151 = add i64 %RAX_val.64, 4, !mcsema_real_eip !53
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !53
  %153 = ptrtoint i64* %152 to i64, !mcsema_real_eip !53
  %154 = inttoptr i64 %153 to i32*, !mcsema_real_eip !53
  %155 = load i32, i32* %154, !mcsema_real_eip !53
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !53
  %ESI_val.66 = load i32, i32* %ESI.65, !mcsema_real_eip !53
  %156 = add i32 %ESI_val.66, %155, !mcsema_real_eip !53
  %157 = xor i32 %156, %155, !mcsema_real_eip !53
  %158 = xor i32 %157, %ESI_val.66, !mcsema_real_eip !53
  %159 = and i32 %158, 16, !mcsema_real_eip !53
  %160 = icmp ne i32 %159, 0, !mcsema_real_eip !53
  store i1 %160, i1* %AF, !mcsema_real_eip !53
  %161 = lshr i32 %156, 31, !mcsema_real_eip !53
  %162 = trunc i32 %161 to i1, !mcsema_real_eip !53
  store i1 %162, i1* %SF, !mcsema_real_eip !53
  %163 = icmp eq i32 %156, 0, !mcsema_real_eip !53
  store i1 %163, i1* %ZF, !mcsema_real_eip !53
  %164 = xor i32 %155, %ESI_val.66, !mcsema_real_eip !53
  %165 = xor i32 %164, -1, !mcsema_real_eip !53
  %166 = xor i32 %155, %156, !mcsema_real_eip !53
  %167 = and i32 %165, %166, !mcsema_real_eip !53
  %168 = lshr i32 %167, 31, !mcsema_real_eip !53
  %169 = and i32 %168, 1, !mcsema_real_eip !53
  %170 = trunc i32 %169 to i1, !mcsema_real_eip !53
  store i1 %170, i1* %OF, !mcsema_real_eip !53
  %171 = trunc i32 %156 to i8, !mcsema_real_eip !53
  %172 = call i8 @llvm.ctpop.i8(i8 %171), !mcsema_real_eip !53
  %173 = trunc i8 %172 to i1, !mcsema_real_eip !53
  %174 = xor i1 %173, true, !mcsema_real_eip !53
  store i1 %174, i1* %PF, !mcsema_real_eip !53
  %175 = icmp ult i32 %156, %155, !mcsema_real_eip !53
  store i1 %175, i1* %CF, !mcsema_real_eip !53
  %176 = zext i32 %156 to i64, !mcsema_real_eip !53
  store i64 %176, i64* %XSI, !mcsema_real_eip !53
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !54
  %177 = add i64 %RBP_val.67, -32, !mcsema_real_eip !54
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !54
  %179 = load i64, i64* %178, !mcsema_real_eip !54
  store i64 %179, i64* %XAX, !mcsema_real_eip !54
  %RAX_val.68 = load i64, i64* %XAX, !mcsema_real_eip !55
  %180 = add i64 %RAX_val.68, 8, !mcsema_real_eip !55
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !55
  %182 = ptrtoint i64* %181 to i64, !mcsema_real_eip !55
  %183 = inttoptr i64 %182 to i32*, !mcsema_real_eip !55
  %184 = load i32, i32* %183, !mcsema_real_eip !55
  %ESI.69 = bitcast i64* %XSI to i32*, !mcsema_real_eip !55
  %ESI_val.70 = load i32, i32* %ESI.69, !mcsema_real_eip !55
  %185 = add i32 %ESI_val.70, %184, !mcsema_real_eip !55
  %186 = xor i32 %185, %184, !mcsema_real_eip !55
  %187 = xor i32 %186, %ESI_val.70, !mcsema_real_eip !55
  %188 = and i32 %187, 16, !mcsema_real_eip !55
  %189 = icmp ne i32 %188, 0, !mcsema_real_eip !55
  store i1 %189, i1* %AF, !mcsema_real_eip !55
  %190 = lshr i32 %185, 31, !mcsema_real_eip !55
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !55
  store i1 %191, i1* %SF, !mcsema_real_eip !55
  %192 = icmp eq i32 %185, 0, !mcsema_real_eip !55
  store i1 %192, i1* %ZF, !mcsema_real_eip !55
  %193 = xor i32 %184, %ESI_val.70, !mcsema_real_eip !55
  %194 = xor i32 %193, -1, !mcsema_real_eip !55
  %195 = xor i32 %184, %185, !mcsema_real_eip !55
  %196 = and i32 %194, %195, !mcsema_real_eip !55
  %197 = lshr i32 %196, 31, !mcsema_real_eip !55
  %198 = and i32 %197, 1, !mcsema_real_eip !55
  %199 = trunc i32 %198 to i1, !mcsema_real_eip !55
  store i1 %199, i1* %OF, !mcsema_real_eip !55
  %200 = trunc i32 %185 to i8, !mcsema_real_eip !55
  %201 = call i8 @llvm.ctpop.i8(i8 %200), !mcsema_real_eip !55
  %202 = trunc i8 %201 to i1, !mcsema_real_eip !55
  %203 = xor i1 %202, true, !mcsema_real_eip !55
  store i1 %203, i1* %PF, !mcsema_real_eip !55
  %204 = icmp ult i32 %185, %184, !mcsema_real_eip !55
  store i1 %204, i1* %CF, !mcsema_real_eip !55
  %205 = zext i32 %185 to i64, !mcsema_real_eip !55
  store i64 %205, i64* %XSI, !mcsema_real_eip !55
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !56
  %206 = add i64 %RBP_val.71, -52, !mcsema_real_eip !56
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !56
  %ESI.72 = bitcast i64* %XSI to i32*, !mcsema_real_eip !56
  %ESI_val.73 = load i32, i32* %ESI.72, !mcsema_real_eip !56
  %208 = ptrtoint i64* %207 to i64, !mcsema_real_eip !56
  %209 = inttoptr i64 %208 to i32*, !mcsema_real_eip !56
  store i32 %ESI_val.73, i32* %209, !mcsema_real_eip !56
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !57
  %210 = add i64 %RBP_val.74, -52, !mcsema_real_eip !57
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !57
  %212 = ptrtoint i64* %211 to i64, !mcsema_real_eip !57
  %213 = inttoptr i64 %212 to i32*, !mcsema_real_eip !57
  %214 = load i32, i32* %213, !mcsema_real_eip !57
  %215 = zext i32 %214 to i64, !mcsema_real_eip !57
  store i64 %215, i64* %XSI, !mcsema_real_eip !57
  %AL.75 = bitcast i64* %XAX to i8*, !mcsema_real_eip !58
  store i8 0, i8* %AL.75, !mcsema_real_eip !58
  %RDI_val.76 = load i64, i64* %XDI, !mcsema_real_eip !59
  %RSI_val.77 = load i64, i64* %XSI, !mcsema_real_eip !59
  %RDX_val.78 = load i64, i64* %XDX, !mcsema_real_eip !59
  %RCX_val.79 = load i64, i64* %XCX, !mcsema_real_eip !59
  %R8_val.80 = load i64, i64* %R8, !mcsema_real_eip !59
  %R9_val.81 = load i64, i64* %R9, !mcsema_real_eip !59
  %RSP_val.82 = load i64, i64* %XSP, !mcsema_real_eip !59
  %216 = inttoptr i64 %RSP_val.82 to i64*, !mcsema_real_eip !59
  %217 = load i64, i64* %216, !mcsema_real_eip !59
  %218 = add i64 %RSP_val.82, 8, !mcsema_real_eip !59
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !59
  %220 = load i64, i64* %219, !mcsema_real_eip !59
  %221 = add i64 %218, 8, !mcsema_real_eip !59
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !59
  %223 = load i64, i64* %222, !mcsema_real_eip !59
  %224 = add i64 %221, 8, !mcsema_real_eip !59
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !59
  %226 = load i64, i64* %225, !mcsema_real_eip !59
  %227 = add i64 %224, 8, !mcsema_real_eip !59
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !59
  %229 = load i64, i64* %228, !mcsema_real_eip !59
  %230 = add i64 %227, 8, !mcsema_real_eip !59
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !59
  %232 = load i64, i64* %231, !mcsema_real_eip !59
  %RSP_val.83 = load i64, i64* %XSP, !mcsema_real_eip !59
  %233 = sub i64 %RSP_val.83, 8, !mcsema_real_eip !59
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !59
  store i64 -2415393069852865332, i64* %234, !mcsema_real_eip !59
  store i64 %233, i64* %XSP, !mcsema_real_eip !59
  %235 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.76, i64 %RSI_val.77, i64 %RDX_val.78, i64 %RCX_val.79, i64 %R8_val.80, i64 %R9_val.81, i64 %217, i64 %220, i64 %223, i64 %226, i64 %229, i64 %232), !mcsema_real_eip !59
  store i64 %235, i64* %XAX, !mcsema_real_eip !59
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !60
  %236 = add i64 %RBP_val.84, -52, !mcsema_real_eip !60
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !60
  %238 = ptrtoint i64* %237 to i64, !mcsema_real_eip !60
  %239 = inttoptr i64 %238 to i32*, !mcsema_real_eip !60
  %240 = load i32, i32* %239, !mcsema_real_eip !60
  %241 = zext i32 %240 to i64, !mcsema_real_eip !60
  store i64 %241, i64* %XSI, !mcsema_real_eip !60
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !61
  %242 = add i64 %RBP_val.85, -80, !mcsema_real_eip !61
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !61
  %EAX.86 = bitcast i64* %XAX to i32*, !mcsema_real_eip !61
  %EAX_val.87 = load i32, i32* %EAX.86, !mcsema_real_eip !61
  %244 = ptrtoint i64* %243 to i64, !mcsema_real_eip !61
  %245 = inttoptr i64 %244 to i32*, !mcsema_real_eip !61
  store i32 %EAX_val.87, i32* %245, !mcsema_real_eip !61
  %ESI.88 = bitcast i64* %XSI to i32*, !mcsema_real_eip !62
  %ESI_val.89 = load i32, i32* %ESI.88, !mcsema_real_eip !62
  %246 = zext i32 %ESI_val.89 to i64, !mcsema_real_eip !62
  store i64 %246, i64* %XAX, !mcsema_real_eip !62
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !63
  %247 = add i64 128, %RSP_val.90, !mcsema_real_eip !63
  %248 = xor i64 %247, %RSP_val.90, !mcsema_real_eip !63
  %249 = xor i64 %248, 128, !mcsema_real_eip !63
  %250 = and i64 %249, 16, !mcsema_real_eip !63
  %251 = icmp ne i64 %250, 0, !mcsema_real_eip !63
  store i1 %251, i1* %AF, !mcsema_real_eip !63
  %252 = lshr i64 %247, 63, !mcsema_real_eip !63
  %253 = trunc i64 %252 to i1, !mcsema_real_eip !63
  store i1 %253, i1* %SF, !mcsema_real_eip !63
  %254 = icmp eq i64 %247, 0, !mcsema_real_eip !63
  store i1 %254, i1* %ZF, !mcsema_real_eip !63
  %255 = xor i64 %RSP_val.90, 128, !mcsema_real_eip !63
  %256 = xor i64 %255, -1, !mcsema_real_eip !63
  %257 = xor i64 %RSP_val.90, %247, !mcsema_real_eip !63
  %258 = and i64 %256, %257, !mcsema_real_eip !63
  %259 = lshr i64 %258, 63, !mcsema_real_eip !63
  %260 = and i64 %259, 1, !mcsema_real_eip !63
  %261 = trunc i64 %260 to i1, !mcsema_real_eip !63
  store i1 %261, i1* %OF, !mcsema_real_eip !63
  %262 = trunc i64 %247 to i8, !mcsema_real_eip !63
  %263 = call i8 @llvm.ctpop.i8(i8 %262), !mcsema_real_eip !63
  %264 = trunc i8 %263 to i1, !mcsema_real_eip !63
  %265 = xor i1 %264, true, !mcsema_real_eip !63
  store i1 %265, i1* %PF, !mcsema_real_eip !63
  %266 = icmp ult i64 %247, %RSP_val.90, !mcsema_real_eip !63
  store i1 %266, i1* %CF, !mcsema_real_eip !63
  store i64 %247, i64* %XSP, !mcsema_real_eip !63
  %RSP_val.91 = load i64, i64* %XSP, !mcsema_real_eip !64
  %267 = inttoptr i64 %RSP_val.91 to i64*, !mcsema_real_eip !64
  %268 = load i64, i64* %267, !mcsema_real_eip !64
  store i64 %268, i64* %XBP, !mcsema_real_eip !64
  %269 = add i64 %RSP_val.91, 8, !mcsema_real_eip !64
  store i64 %269, i64* %XSP, !mcsema_real_eip !64
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !65
  %270 = add i64 %RSP_val.92, 8, !mcsema_real_eip !65
  %271 = inttoptr i64 %RSP_val.92 to i64*, !mcsema_real_eip !65
  %272 = load i64, i64* %271, !mcsema_real_eip !65
  store i64 %272, i64* %XIP, !mcsema_real_eip !65
  store i64 %270, i64* %XSP, !mcsema_real_eip !65
  ret void, !mcsema_real_eip !65
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !66
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !66
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !66
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !66
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !66
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !66
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !66
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !66
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !66
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !66
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !66
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !66
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !66
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !66
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !66
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !66
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !66
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !66
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !66
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !66
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !66
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !66
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !66
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !66
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !66
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !66
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !66
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !66
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !66
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !66
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !66
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !66
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !66
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !66
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !66
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !66
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !66
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !66
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !66
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !66
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !66
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !66
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !66
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !66
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !66
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !66
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !66
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !66
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !66
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !66
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !66
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !66
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !66
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !66
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !66
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !66
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !66
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !66
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !66
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !66
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !66
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !66
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !66
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !66
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !66
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !66
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !66
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !66
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !66
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !66
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !66
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !66
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !66
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !66
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !66
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !66
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !66
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !66
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !66
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !66
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !66
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !66
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !66
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !66
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !66
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !66
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !66
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !66
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !66
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !66
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !66
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !66
  br label %block_0x0, !mcsema_real_eip !66

block_0x0:                                        ; preds = %entry
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !66
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !66
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !66
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !66
  store i64 %RBP_val.93, i64* %2, !mcsema_real_eip !66
  store i64 %1, i64* %XSP, !mcsema_real_eip !66
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !67
  store i64 %RSP_val.95, i64* %XBP, !mcsema_real_eip !67
  %R15_val.96 = load i64, i64* %R15, !mcsema_real_eip !68
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !68
  %3 = sub i64 %RSP_val.97, 8, !mcsema_real_eip !68
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !68
  store i64 %R15_val.96, i64* %4, !mcsema_real_eip !68
  store i64 %3, i64* %XSP, !mcsema_real_eip !68
  %R14_val.98 = load i64, i64* %R14, !mcsema_real_eip !69
  %RSP_val.99 = load i64, i64* %XSP, !mcsema_real_eip !69
  %5 = sub i64 %RSP_val.99, 8, !mcsema_real_eip !69
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !69
  store i64 %R14_val.98, i64* %6, !mcsema_real_eip !69
  store i64 %5, i64* %XSP, !mcsema_real_eip !69
  %RBX_val.100 = load i64, i64* %XBX, !mcsema_real_eip !70
  %RSP_val.101 = load i64, i64* %XSP, !mcsema_real_eip !70
  %7 = sub i64 %RSP_val.101, 8, !mcsema_real_eip !70
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !70
  store i64 %RBX_val.100, i64* %8, !mcsema_real_eip !70
  store i64 %7, i64* %XSP, !mcsema_real_eip !70
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !71
  %9 = sub i64 %RSP_val.102, 104, !mcsema_real_eip !71
  %10 = xor i64 %9, %RSP_val.102, !mcsema_real_eip !71
  %11 = xor i64 %10, 104, !mcsema_real_eip !71
  %12 = and i64 %11, 16, !mcsema_real_eip !71
  %13 = icmp ne i64 %12, 0, !mcsema_real_eip !71
  store i1 %13, i1* %AF, !mcsema_real_eip !71
  %14 = trunc i64 %9 to i8, !mcsema_real_eip !71
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !71
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !71
  %17 = xor i1 %16, true, !mcsema_real_eip !71
  store i1 %17, i1* %PF, !mcsema_real_eip !71
  %18 = icmp eq i64 %9, 0, !mcsema_real_eip !71
  store i1 %18, i1* %ZF, !mcsema_real_eip !71
  %19 = lshr i64 %9, 63, !mcsema_real_eip !71
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !71
  store i1 %20, i1* %SF, !mcsema_real_eip !71
  %21 = icmp ult i64 %RSP_val.102, 104, !mcsema_real_eip !71
  store i1 %21, i1* %CF, !mcsema_real_eip !71
  %22 = xor i64 %RSP_val.102, 104, !mcsema_real_eip !71
  %23 = xor i64 %RSP_val.102, %9, !mcsema_real_eip !71
  %24 = and i64 %22, %23, !mcsema_real_eip !71
  %25 = lshr i64 %24, 63, !mcsema_real_eip !71
  %26 = trunc i64 %25 to i1, !mcsema_real_eip !71
  store i1 %26, i1* %OF, !mcsema_real_eip !71
  store i64 %9, i64* %XSP, !mcsema_real_eip !71
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !72
  %27 = add i64 %RBP_val.103, 48, !mcsema_real_eip !72
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !72
  %29 = load i64, i64* %28, !mcsema_real_eip !72
  store i64 %29, i64* %XAX, !mcsema_real_eip !72
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !73
  %30 = add i64 %RBP_val.104, 40, !mcsema_real_eip !73
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !73
  %32 = load i64, i64* %31, !mcsema_real_eip !73
  store i64 %32, i64* %R10, !mcsema_real_eip !73
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !74
  %33 = add i64 %RBP_val.105, 24, !mcsema_real_eip !74
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !74
  %35 = ptrtoint i64* %34 to i64, !mcsema_real_eip !74
  store i64 %35, i64* %R11, !mcsema_real_eip !74
  %RBP_val.106 = load i64, i64* %XBP, !mcsema_real_eip !75
  %36 = add i64 %RBP_val.106, 16, !mcsema_real_eip !75
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !75
  %38 = ptrtoint i64* %37 to i64, !mcsema_real_eip !75
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !75
  %40 = load i32, i32* %39, !mcsema_real_eip !75
  %41 = zext i32 %40 to i64, !mcsema_real_eip !75
  store i64 %41, i64* %XBX, !mcsema_real_eip !75
  store i64 12, i64* %R14, !mcsema_real_eip !76
  %R14D.107 = bitcast i64* %R14 to i32*, !mcsema_real_eip !77
  %R14D_val.108 = load i32, i32* %R14D.107, !mcsema_real_eip !77
  %42 = zext i32 %R14D_val.108 to i64, !mcsema_real_eip !77
  store i64 %42, i64* %R15, !mcsema_real_eip !77
  %RBP_val.109 = load i64, i64* %XBP, !mcsema_real_eip !78
  %43 = add i64 %RBP_val.109, -56, !mcsema_real_eip !78
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !78
  %RDI_val.110 = load i64, i64* %XDI, !mcsema_real_eip !78
  store i64 %RDI_val.110, i64* %44, !mcsema_real_eip !78
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !79
  %45 = add i64 %RBP_val.111, -48, !mcsema_real_eip !79
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !79
  %ESI.112 = bitcast i64* %XSI to i32*, !mcsema_real_eip !79
  %ESI_val.113 = load i32, i32* %ESI.112, !mcsema_real_eip !79
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !79
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !79
  store i32 %ESI_val.113, i32* %48, !mcsema_real_eip !79
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !80
  %49 = add i64 %RBP_val.114, -56, !mcsema_real_eip !80
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !80
  %51 = load i64, i64* %50, !mcsema_real_eip !80
  store i64 %51, i64* %XDI, !mcsema_real_eip !80
  %RBP_val.115 = load i64, i64* %XBP, !mcsema_real_eip !81
  %52 = add i64 %RBP_val.115, -40, !mcsema_real_eip !81
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !81
  %RDI_val.116 = load i64, i64* %XDI, !mcsema_real_eip !81
  store i64 %RDI_val.116, i64* %53, !mcsema_real_eip !81
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !82
  %54 = add i64 %RBP_val.117, -48, !mcsema_real_eip !82
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !82
  %56 = ptrtoint i64* %55 to i64, !mcsema_real_eip !82
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !82
  %58 = load i32, i32* %57, !mcsema_real_eip !82
  %59 = zext i32 %58 to i64, !mcsema_real_eip !82
  store i64 %59, i64* %XSI, !mcsema_real_eip !82
  %RBP_val.118 = load i64, i64* %XBP, !mcsema_real_eip !83
  %60 = add i64 %RBP_val.118, -32, !mcsema_real_eip !83
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !83
  %ESI.119 = bitcast i64* %XSI to i32*, !mcsema_real_eip !83
  %ESI_val.120 = load i32, i32* %ESI.119, !mcsema_real_eip !83
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !83
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !83
  store i32 %ESI_val.120, i32* %63, !mcsema_real_eip !83
  %RBP_val.121 = load i64, i64* %XBP, !mcsema_real_eip !84
  %64 = add i64 %RBP_val.121, -64, !mcsema_real_eip !84
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !84
  %RDX_val.122 = load i64, i64* %XDX, !mcsema_real_eip !84
  store i64 %RDX_val.122, i64* %65, !mcsema_real_eip !84
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !85
  %66 = add i64 %RBP_val.123, -72, !mcsema_real_eip !85
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !85
  %RCX_val.124 = load i64, i64* %XCX, !mcsema_real_eip !85
  store i64 %RCX_val.124, i64* %67, !mcsema_real_eip !85
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !86
  %68 = add i64 %RBP_val.125, -76, !mcsema_real_eip !86
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !86
  %R8D.126 = bitcast i64* %R8 to i32*, !mcsema_real_eip !86
  %R8D_val.127 = load i32, i32* %R8D.126, !mcsema_real_eip !86
  %70 = ptrtoint i64* %69 to i64, !mcsema_real_eip !86
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !86
  store i32 %R8D_val.127, i32* %71, !mcsema_real_eip !86
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !87
  %72 = add i64 %RBP_val.128, -80, !mcsema_real_eip !87
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !87
  %R9D.129 = bitcast i64* %R9 to i32*, !mcsema_real_eip !87
  %R9D_val.130 = load i32, i32* %R9D.129, !mcsema_real_eip !87
  %74 = ptrtoint i64* %73 to i64, !mcsema_real_eip !87
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !87
  store i32 %R9D_val.130, i32* %75, !mcsema_real_eip !87
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !88
  %76 = add i64 %RBP_val.131, -84, !mcsema_real_eip !88
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !88
  %EBX.132 = bitcast i64* %XBX to i32*, !mcsema_real_eip !88
  %EBX_val.133 = load i32, i32* %EBX.132, !mcsema_real_eip !88
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !88
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !88
  store i32 %EBX_val.133, i32* %79, !mcsema_real_eip !88
  %RBP_val.134 = load i64, i64* %XBP, !mcsema_real_eip !89
  %80 = add i64 %RBP_val.134, -96, !mcsema_real_eip !89
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !89
  %R10_val.135 = load i64, i64* %R10, !mcsema_real_eip !89
  store i64 %R10_val.135, i64* %81, !mcsema_real_eip !89
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !90
  %82 = add i64 %RBP_val.136, -104, !mcsema_real_eip !90
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !90
  %RAX_val.137 = load i64, i64* %XAX, !mcsema_real_eip !90
  store i64 %RAX_val.137, i64* %83, !mcsema_real_eip !90
  %R15_val.138 = load i64, i64* %R15, !mcsema_real_eip !91
  store i64 %R15_val.138, i64* %XDI, !mcsema_real_eip !91
  %RBP_val.139 = load i64, i64* %XBP, !mcsema_real_eip !92
  %84 = add i64 %RBP_val.139, -120, !mcsema_real_eip !92
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !92
  %R11_val.140 = load i64, i64* %R11, !mcsema_real_eip !92
  store i64 %R11_val.140, i64* %85, !mcsema_real_eip !92
  %RDI_val.141 = load i64, i64* %XDI, !mcsema_real_eip !93
  %RSP_val.142 = load i64, i64* %XSP, !mcsema_real_eip !93
  %86 = sub i64 %RSP_val.142, 8, !mcsema_real_eip !93
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !93
  store i64 -2415393069852865332, i64* %87, !mcsema_real_eip !93
  store i64 %86, i64* %XSP, !mcsema_real_eip !93
  %88 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.141), !mcsema_real_eip !93
  store i64 %88, i64* %XAX, !mcsema_real_eip !93
  %RBP_val.143 = load i64, i64* %XBP, !mcsema_real_eip !94
  %89 = add i64 %RBP_val.143, -112, !mcsema_real_eip !94
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !94
  %RAX_val.144 = load i64, i64* %XAX, !mcsema_real_eip !94
  store i64 %RAX_val.144, i64* %90, !mcsema_real_eip !94
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !95
  %91 = add i64 %RBP_val.145, -40, !mcsema_real_eip !95
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !95
  %93 = ptrtoint i64* %92 to i64, !mcsema_real_eip !95
  %94 = inttoptr i64 %93 to i32*, !mcsema_real_eip !95
  %95 = load i32, i32* %94, !mcsema_real_eip !95
  %96 = zext i32 %95 to i64, !mcsema_real_eip !95
  store i64 %96, i64* %XSI, !mcsema_real_eip !95
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !96
  %97 = add i64 %RBP_val.146, -64, !mcsema_real_eip !96
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !96
  %99 = load i64, i64* %98, !mcsema_real_eip !96
  store i64 %99, i64* %XAX, !mcsema_real_eip !96
  %RAX_val.147 = load i64, i64* %XAX, !mcsema_real_eip !97
  %100 = add i64 %RAX_val.147, 0, !mcsema_real_eip !97
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !97
  %102 = ptrtoint i64* %101 to i64, !mcsema_real_eip !97
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !97
  %104 = load i32, i32* %103, !mcsema_real_eip !97
  %ESI.148 = bitcast i64* %XSI to i32*, !mcsema_real_eip !97
  %ESI_val.149 = load i32, i32* %ESI.148, !mcsema_real_eip !97
  %105 = add i32 %ESI_val.149, %104, !mcsema_real_eip !97
  %106 = xor i32 %105, %104, !mcsema_real_eip !97
  %107 = xor i32 %106, %ESI_val.149, !mcsema_real_eip !97
  %108 = and i32 %107, 16, !mcsema_real_eip !97
  %109 = icmp ne i32 %108, 0, !mcsema_real_eip !97
  store i1 %109, i1* %AF, !mcsema_real_eip !97
  %110 = lshr i32 %105, 31, !mcsema_real_eip !97
  %111 = trunc i32 %110 to i1, !mcsema_real_eip !97
  store i1 %111, i1* %SF, !mcsema_real_eip !97
  %112 = icmp eq i32 %105, 0, !mcsema_real_eip !97
  store i1 %112, i1* %ZF, !mcsema_real_eip !97
  %113 = xor i32 %104, %ESI_val.149, !mcsema_real_eip !97
  %114 = xor i32 %113, -1, !mcsema_real_eip !97
  %115 = xor i32 %104, %105, !mcsema_real_eip !97
  %116 = and i32 %114, %115, !mcsema_real_eip !97
  %117 = lshr i32 %116, 31, !mcsema_real_eip !97
  %118 = and i32 %117, 1, !mcsema_real_eip !97
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !97
  store i1 %119, i1* %OF, !mcsema_real_eip !97
  %120 = trunc i32 %105 to i8, !mcsema_real_eip !97
  %121 = call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !97
  %122 = trunc i8 %121 to i1, !mcsema_real_eip !97
  %123 = xor i1 %122, true, !mcsema_real_eip !97
  store i1 %123, i1* %PF, !mcsema_real_eip !97
  %124 = icmp ult i32 %105, %104, !mcsema_real_eip !97
  store i1 %124, i1* %CF, !mcsema_real_eip !97
  %125 = zext i32 %105 to i64, !mcsema_real_eip !97
  store i64 %125, i64* %XSI, !mcsema_real_eip !97
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !98
  %126 = add i64 %RBP_val.150, -72, !mcsema_real_eip !98
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !98
  %128 = load i64, i64* %127, !mcsema_real_eip !98
  store i64 %128, i64* %XAX, !mcsema_real_eip !98
  %RAX_val.151 = load i64, i64* %XAX, !mcsema_real_eip !99
  %129 = add i64 %RAX_val.151, 0, !mcsema_real_eip !99
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !99
  %131 = ptrtoint i64* %130 to i64, !mcsema_real_eip !99
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !99
  %133 = load i32, i32* %132, !mcsema_real_eip !99
  %ESI.152 = bitcast i64* %XSI to i32*, !mcsema_real_eip !99
  %ESI_val.153 = load i32, i32* %ESI.152, !mcsema_real_eip !99
  %134 = add i32 %ESI_val.153, %133, !mcsema_real_eip !99
  %135 = xor i32 %134, %133, !mcsema_real_eip !99
  %136 = xor i32 %135, %ESI_val.153, !mcsema_real_eip !99
  %137 = and i32 %136, 16, !mcsema_real_eip !99
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !99
  store i1 %138, i1* %AF, !mcsema_real_eip !99
  %139 = lshr i32 %134, 31, !mcsema_real_eip !99
  %140 = trunc i32 %139 to i1, !mcsema_real_eip !99
  store i1 %140, i1* %SF, !mcsema_real_eip !99
  %141 = icmp eq i32 %134, 0, !mcsema_real_eip !99
  store i1 %141, i1* %ZF, !mcsema_real_eip !99
  %142 = xor i32 %133, %ESI_val.153, !mcsema_real_eip !99
  %143 = xor i32 %142, -1, !mcsema_real_eip !99
  %144 = xor i32 %133, %134, !mcsema_real_eip !99
  %145 = and i32 %143, %144, !mcsema_real_eip !99
  %146 = lshr i32 %145, 31, !mcsema_real_eip !99
  %147 = and i32 %146, 1, !mcsema_real_eip !99
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !99
  store i1 %148, i1* %OF, !mcsema_real_eip !99
  %149 = trunc i32 %134 to i8, !mcsema_real_eip !99
  %150 = call i8 @llvm.ctpop.i8(i8 %149), !mcsema_real_eip !99
  %151 = trunc i8 %150 to i1, !mcsema_real_eip !99
  %152 = xor i1 %151, true, !mcsema_real_eip !99
  store i1 %152, i1* %PF, !mcsema_real_eip !99
  %153 = icmp ult i32 %134, %133, !mcsema_real_eip !99
  store i1 %153, i1* %CF, !mcsema_real_eip !99
  %154 = zext i32 %134 to i64, !mcsema_real_eip !99
  store i64 %154, i64* %XSI, !mcsema_real_eip !99
  %RBP_val.154 = load i64, i64* %XBP, !mcsema_real_eip !100
  %155 = add i64 %RBP_val.154, -120, !mcsema_real_eip !100
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !100
  %157 = load i64, i64* %156, !mcsema_real_eip !100
  store i64 %157, i64* %XAX, !mcsema_real_eip !100
  %RAX_val.155 = load i64, i64* %XAX, !mcsema_real_eip !101
  %158 = add i64 %RAX_val.155, 0, !mcsema_real_eip !101
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !101
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !101
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !101
  %162 = load i32, i32* %161, !mcsema_real_eip !101
  %163 = zext i32 %162 to i64, !mcsema_real_eip !101
  store i64 %163, i64* %R8, !mcsema_real_eip !101
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !102
  %164 = add i64 %RBP_val.156, -96, !mcsema_real_eip !102
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !102
  %166 = load i64, i64* %165, !mcsema_real_eip !102
  store i64 %166, i64* %XCX, !mcsema_real_eip !102
  %RCX_val.157 = load i64, i64* %XCX, !mcsema_real_eip !103
  %167 = add i64 %RCX_val.157, 0, !mcsema_real_eip !103
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !103
  %169 = ptrtoint i64* %168 to i64, !mcsema_real_eip !103
  %170 = inttoptr i64 %169 to i32*, !mcsema_real_eip !103
  %171 = load i32, i32* %170, !mcsema_real_eip !103
  %R8D.158 = bitcast i64* %R8 to i32*, !mcsema_real_eip !103
  %R8D_val.159 = load i32, i32* %R8D.158, !mcsema_real_eip !103
  %172 = add i32 %R8D_val.159, %171, !mcsema_real_eip !103
  %173 = xor i32 %172, %171, !mcsema_real_eip !103
  %174 = xor i32 %173, %R8D_val.159, !mcsema_real_eip !103
  %175 = and i32 %174, 16, !mcsema_real_eip !103
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !103
  store i1 %176, i1* %AF, !mcsema_real_eip !103
  %177 = lshr i32 %172, 31, !mcsema_real_eip !103
  %178 = trunc i32 %177 to i1, !mcsema_real_eip !103
  store i1 %178, i1* %SF, !mcsema_real_eip !103
  %179 = icmp eq i32 %172, 0, !mcsema_real_eip !103
  store i1 %179, i1* %ZF, !mcsema_real_eip !103
  %180 = xor i32 %171, %R8D_val.159, !mcsema_real_eip !103
  %181 = xor i32 %180, -1, !mcsema_real_eip !103
  %182 = xor i32 %171, %172, !mcsema_real_eip !103
  %183 = and i32 %181, %182, !mcsema_real_eip !103
  %184 = lshr i32 %183, 31, !mcsema_real_eip !103
  %185 = and i32 %184, 1, !mcsema_real_eip !103
  %186 = trunc i32 %185 to i1, !mcsema_real_eip !103
  store i1 %186, i1* %OF, !mcsema_real_eip !103
  %187 = trunc i32 %172 to i8, !mcsema_real_eip !103
  %188 = call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !103
  %189 = trunc i8 %188 to i1, !mcsema_real_eip !103
  %190 = xor i1 %189, true, !mcsema_real_eip !103
  store i1 %190, i1* %PF, !mcsema_real_eip !103
  %191 = icmp ult i32 %172, %171, !mcsema_real_eip !103
  store i1 %191, i1* %CF, !mcsema_real_eip !103
  %192 = zext i32 %172 to i64, !mcsema_real_eip !103
  store i64 %192, i64* %R8, !mcsema_real_eip !103
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !104
  %193 = add i64 %RBP_val.160, -104, !mcsema_real_eip !104
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !104
  %195 = load i64, i64* %194, !mcsema_real_eip !104
  store i64 %195, i64* %XCX, !mcsema_real_eip !104
  %RCX_val.161 = load i64, i64* %XCX, !mcsema_real_eip !105
  %196 = add i64 %RCX_val.161, 0, !mcsema_real_eip !105
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !105
  %198 = ptrtoint i64* %197 to i64, !mcsema_real_eip !105
  %199 = inttoptr i64 %198 to i32*, !mcsema_real_eip !105
  %200 = load i32, i32* %199, !mcsema_real_eip !105
  %R8D.162 = bitcast i64* %R8 to i32*, !mcsema_real_eip !105
  %R8D_val.163 = load i32, i32* %R8D.162, !mcsema_real_eip !105
  %201 = add i32 %R8D_val.163, %200, !mcsema_real_eip !105
  %202 = xor i32 %201, %200, !mcsema_real_eip !105
  %203 = xor i32 %202, %R8D_val.163, !mcsema_real_eip !105
  %204 = and i32 %203, 16, !mcsema_real_eip !105
  %205 = icmp ne i32 %204, 0, !mcsema_real_eip !105
  store i1 %205, i1* %AF, !mcsema_real_eip !105
  %206 = lshr i32 %201, 31, !mcsema_real_eip !105
  %207 = trunc i32 %206 to i1, !mcsema_real_eip !105
  store i1 %207, i1* %SF, !mcsema_real_eip !105
  %208 = icmp eq i32 %201, 0, !mcsema_real_eip !105
  store i1 %208, i1* %ZF, !mcsema_real_eip !105
  %209 = xor i32 %200, %R8D_val.163, !mcsema_real_eip !105
  %210 = xor i32 %209, -1, !mcsema_real_eip !105
  %211 = xor i32 %200, %201, !mcsema_real_eip !105
  %212 = and i32 %210, %211, !mcsema_real_eip !105
  %213 = lshr i32 %212, 31, !mcsema_real_eip !105
  %214 = and i32 %213, 1, !mcsema_real_eip !105
  %215 = trunc i32 %214 to i1, !mcsema_real_eip !105
  store i1 %215, i1* %OF, !mcsema_real_eip !105
  %216 = trunc i32 %201 to i8, !mcsema_real_eip !105
  %217 = call i8 @llvm.ctpop.i8(i8 %216), !mcsema_real_eip !105
  %218 = trunc i8 %217 to i1, !mcsema_real_eip !105
  %219 = xor i1 %218, true, !mcsema_real_eip !105
  store i1 %219, i1* %PF, !mcsema_real_eip !105
  %220 = icmp ult i32 %201, %200, !mcsema_real_eip !105
  store i1 %220, i1* %CF, !mcsema_real_eip !105
  %221 = zext i32 %201 to i64, !mcsema_real_eip !105
  store i64 %221, i64* %R8, !mcsema_real_eip !105
  %ESI.164 = bitcast i64* %XSI to i32*, !mcsema_real_eip !106
  %ESI_val.165 = load i32, i32* %ESI.164, !mcsema_real_eip !106
  %R8D.166 = bitcast i64* %R8 to i32*, !mcsema_real_eip !106
  %R8D_val.167 = load i32, i32* %R8D.166, !mcsema_real_eip !106
  %222 = add i32 %R8D_val.167, %ESI_val.165, !mcsema_real_eip !106
  %223 = xor i32 %222, %ESI_val.165, !mcsema_real_eip !106
  %224 = xor i32 %223, %R8D_val.167, !mcsema_real_eip !106
  %225 = and i32 %224, 16, !mcsema_real_eip !106
  %226 = icmp ne i32 %225, 0, !mcsema_real_eip !106
  store i1 %226, i1* %AF, !mcsema_real_eip !106
  %227 = lshr i32 %222, 31, !mcsema_real_eip !106
  %228 = trunc i32 %227 to i1, !mcsema_real_eip !106
  store i1 %228, i1* %SF, !mcsema_real_eip !106
  %229 = icmp eq i32 %222, 0, !mcsema_real_eip !106
  store i1 %229, i1* %ZF, !mcsema_real_eip !106
  %230 = xor i32 %ESI_val.165, %R8D_val.167, !mcsema_real_eip !106
  %231 = xor i32 %230, -1, !mcsema_real_eip !106
  %232 = xor i32 %ESI_val.165, %222, !mcsema_real_eip !106
  %233 = and i32 %231, %232, !mcsema_real_eip !106
  %234 = lshr i32 %233, 31, !mcsema_real_eip !106
  %235 = and i32 %234, 1, !mcsema_real_eip !106
  %236 = trunc i32 %235 to i1, !mcsema_real_eip !106
  store i1 %236, i1* %OF, !mcsema_real_eip !106
  %237 = trunc i32 %222 to i8, !mcsema_real_eip !106
  %238 = call i8 @llvm.ctpop.i8(i8 %237), !mcsema_real_eip !106
  %239 = trunc i8 %238 to i1, !mcsema_real_eip !106
  %240 = xor i1 %239, true, !mcsema_real_eip !106
  store i1 %240, i1* %PF, !mcsema_real_eip !106
  %241 = icmp ult i32 %222, %ESI_val.165, !mcsema_real_eip !106
  store i1 %241, i1* %CF, !mcsema_real_eip !106
  %242 = zext i32 %222 to i64, !mcsema_real_eip !106
  store i64 %242, i64* %XSI, !mcsema_real_eip !106
  %RBP_val.168 = load i64, i64* %XBP, !mcsema_real_eip !107
  %243 = add i64 %RBP_val.168, -112, !mcsema_real_eip !107
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !107
  %245 = load i64, i64* %244, !mcsema_real_eip !107
  store i64 %245, i64* %XCX, !mcsema_real_eip !107
  %RCX_val.169 = load i64, i64* %XCX, !mcsema_real_eip !108
  %246 = add i64 %RCX_val.169, 0, !mcsema_real_eip !108
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !108
  %ESI.170 = bitcast i64* %XSI to i32*, !mcsema_real_eip !108
  %ESI_val.171 = load i32, i32* %ESI.170, !mcsema_real_eip !108
  %248 = ptrtoint i64* %247 to i64, !mcsema_real_eip !108
  %249 = inttoptr i64 %248 to i32*, !mcsema_real_eip !108
  store i32 %ESI_val.171, i32* %249, !mcsema_real_eip !108
  %RBP_val.172 = load i64, i64* %XBP, !mcsema_real_eip !109
  %250 = add i64 %RBP_val.172, -36, !mcsema_real_eip !109
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !109
  %252 = ptrtoint i64* %251 to i64, !mcsema_real_eip !109
  %253 = inttoptr i64 %252 to i32*, !mcsema_real_eip !109
  %254 = load i32, i32* %253, !mcsema_real_eip !109
  %255 = zext i32 %254 to i64, !mcsema_real_eip !109
  store i64 %255, i64* %XSI, !mcsema_real_eip !109
  %RBP_val.173 = load i64, i64* %XBP, !mcsema_real_eip !110
  %256 = add i64 %RBP_val.173, -64, !mcsema_real_eip !110
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !110
  %258 = load i64, i64* %257, !mcsema_real_eip !110
  store i64 %258, i64* %XCX, !mcsema_real_eip !110
  %RCX_val.174 = load i64, i64* %XCX, !mcsema_real_eip !111
  %259 = add i64 %RCX_val.174, 4, !mcsema_real_eip !111
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !111
  %261 = ptrtoint i64* %260 to i64, !mcsema_real_eip !111
  %262 = inttoptr i64 %261 to i32*, !mcsema_real_eip !111
  %263 = load i32, i32* %262, !mcsema_real_eip !111
  %ESI.175 = bitcast i64* %XSI to i32*, !mcsema_real_eip !111
  %ESI_val.176 = load i32, i32* %ESI.175, !mcsema_real_eip !111
  %264 = add i32 %ESI_val.176, %263, !mcsema_real_eip !111
  %265 = xor i32 %264, %263, !mcsema_real_eip !111
  %266 = xor i32 %265, %ESI_val.176, !mcsema_real_eip !111
  %267 = and i32 %266, 16, !mcsema_real_eip !111
  %268 = icmp ne i32 %267, 0, !mcsema_real_eip !111
  store i1 %268, i1* %AF, !mcsema_real_eip !111
  %269 = lshr i32 %264, 31, !mcsema_real_eip !111
  %270 = trunc i32 %269 to i1, !mcsema_real_eip !111
  store i1 %270, i1* %SF, !mcsema_real_eip !111
  %271 = icmp eq i32 %264, 0, !mcsema_real_eip !111
  store i1 %271, i1* %ZF, !mcsema_real_eip !111
  %272 = xor i32 %263, %ESI_val.176, !mcsema_real_eip !111
  %273 = xor i32 %272, -1, !mcsema_real_eip !111
  %274 = xor i32 %263, %264, !mcsema_real_eip !111
  %275 = and i32 %273, %274, !mcsema_real_eip !111
  %276 = lshr i32 %275, 31, !mcsema_real_eip !111
  %277 = and i32 %276, 1, !mcsema_real_eip !111
  %278 = trunc i32 %277 to i1, !mcsema_real_eip !111
  store i1 %278, i1* %OF, !mcsema_real_eip !111
  %279 = trunc i32 %264 to i8, !mcsema_real_eip !111
  %280 = call i8 @llvm.ctpop.i8(i8 %279), !mcsema_real_eip !111
  %281 = trunc i8 %280 to i1, !mcsema_real_eip !111
  %282 = xor i1 %281, true, !mcsema_real_eip !111
  store i1 %282, i1* %PF, !mcsema_real_eip !111
  %283 = icmp ult i32 %264, %263, !mcsema_real_eip !111
  store i1 %283, i1* %CF, !mcsema_real_eip !111
  %284 = zext i32 %264 to i64, !mcsema_real_eip !111
  store i64 %284, i64* %XSI, !mcsema_real_eip !111
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !112
  %285 = add i64 %RBP_val.177, -72, !mcsema_real_eip !112
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !112
  %287 = load i64, i64* %286, !mcsema_real_eip !112
  store i64 %287, i64* %XCX, !mcsema_real_eip !112
  %RCX_val.178 = load i64, i64* %XCX, !mcsema_real_eip !113
  %288 = add i64 %RCX_val.178, 4, !mcsema_real_eip !113
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !113
  %290 = ptrtoint i64* %289 to i64, !mcsema_real_eip !113
  %291 = inttoptr i64 %290 to i32*, !mcsema_real_eip !113
  %292 = load i32, i32* %291, !mcsema_real_eip !113
  %ESI.179 = bitcast i64* %XSI to i32*, !mcsema_real_eip !113
  %ESI_val.180 = load i32, i32* %ESI.179, !mcsema_real_eip !113
  %293 = add i32 %ESI_val.180, %292, !mcsema_real_eip !113
  %294 = xor i32 %293, %292, !mcsema_real_eip !113
  %295 = xor i32 %294, %ESI_val.180, !mcsema_real_eip !113
  %296 = and i32 %295, 16, !mcsema_real_eip !113
  %297 = icmp ne i32 %296, 0, !mcsema_real_eip !113
  store i1 %297, i1* %AF, !mcsema_real_eip !113
  %298 = lshr i32 %293, 31, !mcsema_real_eip !113
  %299 = trunc i32 %298 to i1, !mcsema_real_eip !113
  store i1 %299, i1* %SF, !mcsema_real_eip !113
  %300 = icmp eq i32 %293, 0, !mcsema_real_eip !113
  store i1 %300, i1* %ZF, !mcsema_real_eip !113
  %301 = xor i32 %292, %ESI_val.180, !mcsema_real_eip !113
  %302 = xor i32 %301, -1, !mcsema_real_eip !113
  %303 = xor i32 %292, %293, !mcsema_real_eip !113
  %304 = and i32 %302, %303, !mcsema_real_eip !113
  %305 = lshr i32 %304, 31, !mcsema_real_eip !113
  %306 = and i32 %305, 1, !mcsema_real_eip !113
  %307 = trunc i32 %306 to i1, !mcsema_real_eip !113
  store i1 %307, i1* %OF, !mcsema_real_eip !113
  %308 = trunc i32 %293 to i8, !mcsema_real_eip !113
  %309 = call i8 @llvm.ctpop.i8(i8 %308), !mcsema_real_eip !113
  %310 = trunc i8 %309 to i1, !mcsema_real_eip !113
  %311 = xor i1 %310, true, !mcsema_real_eip !113
  store i1 %311, i1* %PF, !mcsema_real_eip !113
  %312 = icmp ult i32 %293, %292, !mcsema_real_eip !113
  store i1 %312, i1* %CF, !mcsema_real_eip !113
  %313 = zext i32 %293 to i64, !mcsema_real_eip !113
  store i64 %313, i64* %XSI, !mcsema_real_eip !113
  %RAX_val.181 = load i64, i64* %XAX, !mcsema_real_eip !114
  %314 = add i64 %RAX_val.181, 4, !mcsema_real_eip !114
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !114
  %316 = ptrtoint i64* %315 to i64, !mcsema_real_eip !114
  %317 = inttoptr i64 %316 to i32*, !mcsema_real_eip !114
  %318 = load i32, i32* %317, !mcsema_real_eip !114
  %319 = zext i32 %318 to i64, !mcsema_real_eip !114
  store i64 %319, i64* %R8, !mcsema_real_eip !114
  %RBP_val.182 = load i64, i64* %XBP, !mcsema_real_eip !115
  %320 = add i64 %RBP_val.182, -96, !mcsema_real_eip !115
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !115
  %322 = load i64, i64* %321, !mcsema_real_eip !115
  store i64 %322, i64* %XCX, !mcsema_real_eip !115
  %RCX_val.183 = load i64, i64* %XCX, !mcsema_real_eip !116
  %323 = add i64 %RCX_val.183, 4, !mcsema_real_eip !116
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !116
  %325 = ptrtoint i64* %324 to i64, !mcsema_real_eip !116
  %326 = inttoptr i64 %325 to i32*, !mcsema_real_eip !116
  %327 = load i32, i32* %326, !mcsema_real_eip !116
  %R8D.184 = bitcast i64* %R8 to i32*, !mcsema_real_eip !116
  %R8D_val.185 = load i32, i32* %R8D.184, !mcsema_real_eip !116
  %328 = add i32 %R8D_val.185, %327, !mcsema_real_eip !116
  %329 = xor i32 %328, %327, !mcsema_real_eip !116
  %330 = xor i32 %329, %R8D_val.185, !mcsema_real_eip !116
  %331 = and i32 %330, 16, !mcsema_real_eip !116
  %332 = icmp ne i32 %331, 0, !mcsema_real_eip !116
  store i1 %332, i1* %AF, !mcsema_real_eip !116
  %333 = lshr i32 %328, 31, !mcsema_real_eip !116
  %334 = trunc i32 %333 to i1, !mcsema_real_eip !116
  store i1 %334, i1* %SF, !mcsema_real_eip !116
  %335 = icmp eq i32 %328, 0, !mcsema_real_eip !116
  store i1 %335, i1* %ZF, !mcsema_real_eip !116
  %336 = xor i32 %327, %R8D_val.185, !mcsema_real_eip !116
  %337 = xor i32 %336, -1, !mcsema_real_eip !116
  %338 = xor i32 %327, %328, !mcsema_real_eip !116
  %339 = and i32 %337, %338, !mcsema_real_eip !116
  %340 = lshr i32 %339, 31, !mcsema_real_eip !116
  %341 = and i32 %340, 1, !mcsema_real_eip !116
  %342 = trunc i32 %341 to i1, !mcsema_real_eip !116
  store i1 %342, i1* %OF, !mcsema_real_eip !116
  %343 = trunc i32 %328 to i8, !mcsema_real_eip !116
  %344 = call i8 @llvm.ctpop.i8(i8 %343), !mcsema_real_eip !116
  %345 = trunc i8 %344 to i1, !mcsema_real_eip !116
  %346 = xor i1 %345, true, !mcsema_real_eip !116
  store i1 %346, i1* %PF, !mcsema_real_eip !116
  %347 = icmp ult i32 %328, %327, !mcsema_real_eip !116
  store i1 %347, i1* %CF, !mcsema_real_eip !116
  %348 = zext i32 %328 to i64, !mcsema_real_eip !116
  store i64 %348, i64* %R8, !mcsema_real_eip !116
  %RBP_val.186 = load i64, i64* %XBP, !mcsema_real_eip !117
  %349 = add i64 %RBP_val.186, -104, !mcsema_real_eip !117
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !117
  %351 = load i64, i64* %350, !mcsema_real_eip !117
  store i64 %351, i64* %XCX, !mcsema_real_eip !117
  %RCX_val.187 = load i64, i64* %XCX, !mcsema_real_eip !118
  %352 = add i64 %RCX_val.187, 4, !mcsema_real_eip !118
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !118
  %354 = ptrtoint i64* %353 to i64, !mcsema_real_eip !118
  %355 = inttoptr i64 %354 to i32*, !mcsema_real_eip !118
  %356 = load i32, i32* %355, !mcsema_real_eip !118
  %R8D.188 = bitcast i64* %R8 to i32*, !mcsema_real_eip !118
  %R8D_val.189 = load i32, i32* %R8D.188, !mcsema_real_eip !118
  %357 = add i32 %R8D_val.189, %356, !mcsema_real_eip !118
  %358 = xor i32 %357, %356, !mcsema_real_eip !118
  %359 = xor i32 %358, %R8D_val.189, !mcsema_real_eip !118
  %360 = and i32 %359, 16, !mcsema_real_eip !118
  %361 = icmp ne i32 %360, 0, !mcsema_real_eip !118
  store i1 %361, i1* %AF, !mcsema_real_eip !118
  %362 = lshr i32 %357, 31, !mcsema_real_eip !118
  %363 = trunc i32 %362 to i1, !mcsema_real_eip !118
  store i1 %363, i1* %SF, !mcsema_real_eip !118
  %364 = icmp eq i32 %357, 0, !mcsema_real_eip !118
  store i1 %364, i1* %ZF, !mcsema_real_eip !118
  %365 = xor i32 %356, %R8D_val.189, !mcsema_real_eip !118
  %366 = xor i32 %365, -1, !mcsema_real_eip !118
  %367 = xor i32 %356, %357, !mcsema_real_eip !118
  %368 = and i32 %366, %367, !mcsema_real_eip !118
  %369 = lshr i32 %368, 31, !mcsema_real_eip !118
  %370 = and i32 %369, 1, !mcsema_real_eip !118
  %371 = trunc i32 %370 to i1, !mcsema_real_eip !118
  store i1 %371, i1* %OF, !mcsema_real_eip !118
  %372 = trunc i32 %357 to i8, !mcsema_real_eip !118
  %373 = call i8 @llvm.ctpop.i8(i8 %372), !mcsema_real_eip !118
  %374 = trunc i8 %373 to i1, !mcsema_real_eip !118
  %375 = xor i1 %374, true, !mcsema_real_eip !118
  store i1 %375, i1* %PF, !mcsema_real_eip !118
  %376 = icmp ult i32 %357, %356, !mcsema_real_eip !118
  store i1 %376, i1* %CF, !mcsema_real_eip !118
  %377 = zext i32 %357 to i64, !mcsema_real_eip !118
  store i64 %377, i64* %R8, !mcsema_real_eip !118
  %ESI.190 = bitcast i64* %XSI to i32*, !mcsema_real_eip !119
  %ESI_val.191 = load i32, i32* %ESI.190, !mcsema_real_eip !119
  %R8D.192 = bitcast i64* %R8 to i32*, !mcsema_real_eip !119
  %R8D_val.193 = load i32, i32* %R8D.192, !mcsema_real_eip !119
  %378 = add i32 %R8D_val.193, %ESI_val.191, !mcsema_real_eip !119
  %379 = xor i32 %378, %ESI_val.191, !mcsema_real_eip !119
  %380 = xor i32 %379, %R8D_val.193, !mcsema_real_eip !119
  %381 = and i32 %380, 16, !mcsema_real_eip !119
  %382 = icmp ne i32 %381, 0, !mcsema_real_eip !119
  store i1 %382, i1* %AF, !mcsema_real_eip !119
  %383 = lshr i32 %378, 31, !mcsema_real_eip !119
  %384 = trunc i32 %383 to i1, !mcsema_real_eip !119
  store i1 %384, i1* %SF, !mcsema_real_eip !119
  %385 = icmp eq i32 %378, 0, !mcsema_real_eip !119
  store i1 %385, i1* %ZF, !mcsema_real_eip !119
  %386 = xor i32 %ESI_val.191, %R8D_val.193, !mcsema_real_eip !119
  %387 = xor i32 %386, -1, !mcsema_real_eip !119
  %388 = xor i32 %ESI_val.191, %378, !mcsema_real_eip !119
  %389 = and i32 %387, %388, !mcsema_real_eip !119
  %390 = lshr i32 %389, 31, !mcsema_real_eip !119
  %391 = and i32 %390, 1, !mcsema_real_eip !119
  %392 = trunc i32 %391 to i1, !mcsema_real_eip !119
  store i1 %392, i1* %OF, !mcsema_real_eip !119
  %393 = trunc i32 %378 to i8, !mcsema_real_eip !119
  %394 = call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !119
  %395 = trunc i8 %394 to i1, !mcsema_real_eip !119
  %396 = xor i1 %395, true, !mcsema_real_eip !119
  store i1 %396, i1* %PF, !mcsema_real_eip !119
  %397 = icmp ult i32 %378, %ESI_val.191, !mcsema_real_eip !119
  store i1 %397, i1* %CF, !mcsema_real_eip !119
  %398 = zext i32 %378 to i64, !mcsema_real_eip !119
  store i64 %398, i64* %XSI, !mcsema_real_eip !119
  %RBP_val.194 = load i64, i64* %XBP, !mcsema_real_eip !120
  %399 = add i64 %RBP_val.194, -112, !mcsema_real_eip !120
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !120
  %401 = load i64, i64* %400, !mcsema_real_eip !120
  store i64 %401, i64* %XCX, !mcsema_real_eip !120
  %RCX_val.195 = load i64, i64* %XCX, !mcsema_real_eip !121
  %402 = add i64 %RCX_val.195, 4, !mcsema_real_eip !121
  %403 = inttoptr i64 %402 to i64*, !mcsema_real_eip !121
  %ESI.196 = bitcast i64* %XSI to i32*, !mcsema_real_eip !121
  %ESI_val.197 = load i32, i32* %ESI.196, !mcsema_real_eip !121
  %404 = ptrtoint i64* %403 to i64, !mcsema_real_eip !121
  %405 = inttoptr i64 %404 to i32*, !mcsema_real_eip !121
  store i32 %ESI_val.197, i32* %405, !mcsema_real_eip !121
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !122
  %406 = add i64 %RBP_val.198, -32, !mcsema_real_eip !122
  %407 = inttoptr i64 %406 to i64*, !mcsema_real_eip !122
  %408 = ptrtoint i64* %407 to i64, !mcsema_real_eip !122
  %409 = inttoptr i64 %408 to i32*, !mcsema_real_eip !122
  %410 = load i32, i32* %409, !mcsema_real_eip !122
  %411 = zext i32 %410 to i64, !mcsema_real_eip !122
  store i64 %411, i64* %XSI, !mcsema_real_eip !122
  %RBP_val.199 = load i64, i64* %XBP, !mcsema_real_eip !123
  %412 = add i64 %RBP_val.199, -64, !mcsema_real_eip !123
  %413 = inttoptr i64 %412 to i64*, !mcsema_real_eip !123
  %414 = load i64, i64* %413, !mcsema_real_eip !123
  store i64 %414, i64* %XCX, !mcsema_real_eip !123
  %RCX_val.200 = load i64, i64* %XCX, !mcsema_real_eip !124
  %415 = add i64 %RCX_val.200, 8, !mcsema_real_eip !124
  %416 = inttoptr i64 %415 to i64*, !mcsema_real_eip !124
  %417 = ptrtoint i64* %416 to i64, !mcsema_real_eip !124
  %418 = inttoptr i64 %417 to i32*, !mcsema_real_eip !124
  %419 = load i32, i32* %418, !mcsema_real_eip !124
  %ESI.201 = bitcast i64* %XSI to i32*, !mcsema_real_eip !124
  %ESI_val.202 = load i32, i32* %ESI.201, !mcsema_real_eip !124
  %420 = add i32 %ESI_val.202, %419, !mcsema_real_eip !124
  %421 = xor i32 %420, %419, !mcsema_real_eip !124
  %422 = xor i32 %421, %ESI_val.202, !mcsema_real_eip !124
  %423 = and i32 %422, 16, !mcsema_real_eip !124
  %424 = icmp ne i32 %423, 0, !mcsema_real_eip !124
  store i1 %424, i1* %AF, !mcsema_real_eip !124
  %425 = lshr i32 %420, 31, !mcsema_real_eip !124
  %426 = trunc i32 %425 to i1, !mcsema_real_eip !124
  store i1 %426, i1* %SF, !mcsema_real_eip !124
  %427 = icmp eq i32 %420, 0, !mcsema_real_eip !124
  store i1 %427, i1* %ZF, !mcsema_real_eip !124
  %428 = xor i32 %419, %ESI_val.202, !mcsema_real_eip !124
  %429 = xor i32 %428, -1, !mcsema_real_eip !124
  %430 = xor i32 %419, %420, !mcsema_real_eip !124
  %431 = and i32 %429, %430, !mcsema_real_eip !124
  %432 = lshr i32 %431, 31, !mcsema_real_eip !124
  %433 = and i32 %432, 1, !mcsema_real_eip !124
  %434 = trunc i32 %433 to i1, !mcsema_real_eip !124
  store i1 %434, i1* %OF, !mcsema_real_eip !124
  %435 = trunc i32 %420 to i8, !mcsema_real_eip !124
  %436 = call i8 @llvm.ctpop.i8(i8 %435), !mcsema_real_eip !124
  %437 = trunc i8 %436 to i1, !mcsema_real_eip !124
  %438 = xor i1 %437, true, !mcsema_real_eip !124
  store i1 %438, i1* %PF, !mcsema_real_eip !124
  %439 = icmp ult i32 %420, %419, !mcsema_real_eip !124
  store i1 %439, i1* %CF, !mcsema_real_eip !124
  %440 = zext i32 %420 to i64, !mcsema_real_eip !124
  store i64 %440, i64* %XSI, !mcsema_real_eip !124
  %RBP_val.203 = load i64, i64* %XBP, !mcsema_real_eip !125
  %441 = add i64 %RBP_val.203, -72, !mcsema_real_eip !125
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !125
  %443 = load i64, i64* %442, !mcsema_real_eip !125
  store i64 %443, i64* %XCX, !mcsema_real_eip !125
  %RCX_val.204 = load i64, i64* %XCX, !mcsema_real_eip !126
  %444 = add i64 %RCX_val.204, 8, !mcsema_real_eip !126
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !126
  %446 = ptrtoint i64* %445 to i64, !mcsema_real_eip !126
  %447 = inttoptr i64 %446 to i32*, !mcsema_real_eip !126
  %448 = load i32, i32* %447, !mcsema_real_eip !126
  %ESI.205 = bitcast i64* %XSI to i32*, !mcsema_real_eip !126
  %ESI_val.206 = load i32, i32* %ESI.205, !mcsema_real_eip !126
  %449 = add i32 %ESI_val.206, %448, !mcsema_real_eip !126
  %450 = xor i32 %449, %448, !mcsema_real_eip !126
  %451 = xor i32 %450, %ESI_val.206, !mcsema_real_eip !126
  %452 = and i32 %451, 16, !mcsema_real_eip !126
  %453 = icmp ne i32 %452, 0, !mcsema_real_eip !126
  store i1 %453, i1* %AF, !mcsema_real_eip !126
  %454 = lshr i32 %449, 31, !mcsema_real_eip !126
  %455 = trunc i32 %454 to i1, !mcsema_real_eip !126
  store i1 %455, i1* %SF, !mcsema_real_eip !126
  %456 = icmp eq i32 %449, 0, !mcsema_real_eip !126
  store i1 %456, i1* %ZF, !mcsema_real_eip !126
  %457 = xor i32 %448, %ESI_val.206, !mcsema_real_eip !126
  %458 = xor i32 %457, -1, !mcsema_real_eip !126
  %459 = xor i32 %448, %449, !mcsema_real_eip !126
  %460 = and i32 %458, %459, !mcsema_real_eip !126
  %461 = lshr i32 %460, 31, !mcsema_real_eip !126
  %462 = and i32 %461, 1, !mcsema_real_eip !126
  %463 = trunc i32 %462 to i1, !mcsema_real_eip !126
  store i1 %463, i1* %OF, !mcsema_real_eip !126
  %464 = trunc i32 %449 to i8, !mcsema_real_eip !126
  %465 = call i8 @llvm.ctpop.i8(i8 %464), !mcsema_real_eip !126
  %466 = trunc i8 %465 to i1, !mcsema_real_eip !126
  %467 = xor i1 %466, true, !mcsema_real_eip !126
  store i1 %467, i1* %PF, !mcsema_real_eip !126
  %468 = icmp ult i32 %449, %448, !mcsema_real_eip !126
  store i1 %468, i1* %CF, !mcsema_real_eip !126
  %469 = zext i32 %449 to i64, !mcsema_real_eip !126
  store i64 %469, i64* %XSI, !mcsema_real_eip !126
  %RAX_val.207 = load i64, i64* %XAX, !mcsema_real_eip !127
  %470 = add i64 %RAX_val.207, 8, !mcsema_real_eip !127
  %471 = inttoptr i64 %470 to i64*, !mcsema_real_eip !127
  %472 = ptrtoint i64* %471 to i64, !mcsema_real_eip !127
  %473 = inttoptr i64 %472 to i32*, !mcsema_real_eip !127
  %474 = load i32, i32* %473, !mcsema_real_eip !127
  %475 = zext i32 %474 to i64, !mcsema_real_eip !127
  store i64 %475, i64* %R8, !mcsema_real_eip !127
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !128
  %476 = add i64 %RBP_val.208, -96, !mcsema_real_eip !128
  %477 = inttoptr i64 %476 to i64*, !mcsema_real_eip !128
  %478 = load i64, i64* %477, !mcsema_real_eip !128
  store i64 %478, i64* %XCX, !mcsema_real_eip !128
  %RCX_val.209 = load i64, i64* %XCX, !mcsema_real_eip !129
  %479 = add i64 %RCX_val.209, 8, !mcsema_real_eip !129
  %480 = inttoptr i64 %479 to i64*, !mcsema_real_eip !129
  %481 = ptrtoint i64* %480 to i64, !mcsema_real_eip !129
  %482 = inttoptr i64 %481 to i32*, !mcsema_real_eip !129
  %483 = load i32, i32* %482, !mcsema_real_eip !129
  %R8D.210 = bitcast i64* %R8 to i32*, !mcsema_real_eip !129
  %R8D_val.211 = load i32, i32* %R8D.210, !mcsema_real_eip !129
  %484 = add i32 %R8D_val.211, %483, !mcsema_real_eip !129
  %485 = xor i32 %484, %483, !mcsema_real_eip !129
  %486 = xor i32 %485, %R8D_val.211, !mcsema_real_eip !129
  %487 = and i32 %486, 16, !mcsema_real_eip !129
  %488 = icmp ne i32 %487, 0, !mcsema_real_eip !129
  store i1 %488, i1* %AF, !mcsema_real_eip !129
  %489 = lshr i32 %484, 31, !mcsema_real_eip !129
  %490 = trunc i32 %489 to i1, !mcsema_real_eip !129
  store i1 %490, i1* %SF, !mcsema_real_eip !129
  %491 = icmp eq i32 %484, 0, !mcsema_real_eip !129
  store i1 %491, i1* %ZF, !mcsema_real_eip !129
  %492 = xor i32 %483, %R8D_val.211, !mcsema_real_eip !129
  %493 = xor i32 %492, -1, !mcsema_real_eip !129
  %494 = xor i32 %483, %484, !mcsema_real_eip !129
  %495 = and i32 %493, %494, !mcsema_real_eip !129
  %496 = lshr i32 %495, 31, !mcsema_real_eip !129
  %497 = and i32 %496, 1, !mcsema_real_eip !129
  %498 = trunc i32 %497 to i1, !mcsema_real_eip !129
  store i1 %498, i1* %OF, !mcsema_real_eip !129
  %499 = trunc i32 %484 to i8, !mcsema_real_eip !129
  %500 = call i8 @llvm.ctpop.i8(i8 %499), !mcsema_real_eip !129
  %501 = trunc i8 %500 to i1, !mcsema_real_eip !129
  %502 = xor i1 %501, true, !mcsema_real_eip !129
  store i1 %502, i1* %PF, !mcsema_real_eip !129
  %503 = icmp ult i32 %484, %483, !mcsema_real_eip !129
  store i1 %503, i1* %CF, !mcsema_real_eip !129
  %504 = zext i32 %484 to i64, !mcsema_real_eip !129
  store i64 %504, i64* %R8, !mcsema_real_eip !129
  %RBP_val.212 = load i64, i64* %XBP, !mcsema_real_eip !130
  %505 = add i64 %RBP_val.212, -104, !mcsema_real_eip !130
  %506 = inttoptr i64 %505 to i64*, !mcsema_real_eip !130
  %507 = load i64, i64* %506, !mcsema_real_eip !130
  store i64 %507, i64* %XCX, !mcsema_real_eip !130
  %RCX_val.213 = load i64, i64* %XCX, !mcsema_real_eip !131
  %508 = add i64 %RCX_val.213, 8, !mcsema_real_eip !131
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !131
  %510 = ptrtoint i64* %509 to i64, !mcsema_real_eip !131
  %511 = inttoptr i64 %510 to i32*, !mcsema_real_eip !131
  %512 = load i32, i32* %511, !mcsema_real_eip !131
  %R8D.214 = bitcast i64* %R8 to i32*, !mcsema_real_eip !131
  %R8D_val.215 = load i32, i32* %R8D.214, !mcsema_real_eip !131
  %513 = add i32 %R8D_val.215, %512, !mcsema_real_eip !131
  %514 = xor i32 %513, %512, !mcsema_real_eip !131
  %515 = xor i32 %514, %R8D_val.215, !mcsema_real_eip !131
  %516 = and i32 %515, 16, !mcsema_real_eip !131
  %517 = icmp ne i32 %516, 0, !mcsema_real_eip !131
  store i1 %517, i1* %AF, !mcsema_real_eip !131
  %518 = lshr i32 %513, 31, !mcsema_real_eip !131
  %519 = trunc i32 %518 to i1, !mcsema_real_eip !131
  store i1 %519, i1* %SF, !mcsema_real_eip !131
  %520 = icmp eq i32 %513, 0, !mcsema_real_eip !131
  store i1 %520, i1* %ZF, !mcsema_real_eip !131
  %521 = xor i32 %512, %R8D_val.215, !mcsema_real_eip !131
  %522 = xor i32 %521, -1, !mcsema_real_eip !131
  %523 = xor i32 %512, %513, !mcsema_real_eip !131
  %524 = and i32 %522, %523, !mcsema_real_eip !131
  %525 = lshr i32 %524, 31, !mcsema_real_eip !131
  %526 = and i32 %525, 1, !mcsema_real_eip !131
  %527 = trunc i32 %526 to i1, !mcsema_real_eip !131
  store i1 %527, i1* %OF, !mcsema_real_eip !131
  %528 = trunc i32 %513 to i8, !mcsema_real_eip !131
  %529 = call i8 @llvm.ctpop.i8(i8 %528), !mcsema_real_eip !131
  %530 = trunc i8 %529 to i1, !mcsema_real_eip !131
  %531 = xor i1 %530, true, !mcsema_real_eip !131
  store i1 %531, i1* %PF, !mcsema_real_eip !131
  %532 = icmp ult i32 %513, %512, !mcsema_real_eip !131
  store i1 %532, i1* %CF, !mcsema_real_eip !131
  %533 = zext i32 %513 to i64, !mcsema_real_eip !131
  store i64 %533, i64* %R8, !mcsema_real_eip !131
  %ESI.216 = bitcast i64* %XSI to i32*, !mcsema_real_eip !132
  %ESI_val.217 = load i32, i32* %ESI.216, !mcsema_real_eip !132
  %R8D.218 = bitcast i64* %R8 to i32*, !mcsema_real_eip !132
  %R8D_val.219 = load i32, i32* %R8D.218, !mcsema_real_eip !132
  %534 = add i32 %R8D_val.219, %ESI_val.217, !mcsema_real_eip !132
  %535 = xor i32 %534, %ESI_val.217, !mcsema_real_eip !132
  %536 = xor i32 %535, %R8D_val.219, !mcsema_real_eip !132
  %537 = and i32 %536, 16, !mcsema_real_eip !132
  %538 = icmp ne i32 %537, 0, !mcsema_real_eip !132
  store i1 %538, i1* %AF, !mcsema_real_eip !132
  %539 = lshr i32 %534, 31, !mcsema_real_eip !132
  %540 = trunc i32 %539 to i1, !mcsema_real_eip !132
  store i1 %540, i1* %SF, !mcsema_real_eip !132
  %541 = icmp eq i32 %534, 0, !mcsema_real_eip !132
  store i1 %541, i1* %ZF, !mcsema_real_eip !132
  %542 = xor i32 %ESI_val.217, %R8D_val.219, !mcsema_real_eip !132
  %543 = xor i32 %542, -1, !mcsema_real_eip !132
  %544 = xor i32 %ESI_val.217, %534, !mcsema_real_eip !132
  %545 = and i32 %543, %544, !mcsema_real_eip !132
  %546 = lshr i32 %545, 31, !mcsema_real_eip !132
  %547 = and i32 %546, 1, !mcsema_real_eip !132
  %548 = trunc i32 %547 to i1, !mcsema_real_eip !132
  store i1 %548, i1* %OF, !mcsema_real_eip !132
  %549 = trunc i32 %534 to i8, !mcsema_real_eip !132
  %550 = call i8 @llvm.ctpop.i8(i8 %549), !mcsema_real_eip !132
  %551 = trunc i8 %550 to i1, !mcsema_real_eip !132
  %552 = xor i1 %551, true, !mcsema_real_eip !132
  store i1 %552, i1* %PF, !mcsema_real_eip !132
  %553 = icmp ult i32 %534, %ESI_val.217, !mcsema_real_eip !132
  store i1 %553, i1* %CF, !mcsema_real_eip !132
  %554 = zext i32 %534 to i64, !mcsema_real_eip !132
  store i64 %554, i64* %XSI, !mcsema_real_eip !132
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !133
  %555 = add i64 %RBP_val.220, -112, !mcsema_real_eip !133
  %556 = inttoptr i64 %555 to i64*, !mcsema_real_eip !133
  %557 = load i64, i64* %556, !mcsema_real_eip !133
  store i64 %557, i64* %XCX, !mcsema_real_eip !133
  %RCX_val.221 = load i64, i64* %XCX, !mcsema_real_eip !134
  %558 = add i64 %RCX_val.221, 8, !mcsema_real_eip !134
  %559 = inttoptr i64 %558 to i64*, !mcsema_real_eip !134
  %ESI.222 = bitcast i64* %XSI to i32*, !mcsema_real_eip !134
  %ESI_val.223 = load i32, i32* %ESI.222, !mcsema_real_eip !134
  %560 = ptrtoint i64* %559 to i64, !mcsema_real_eip !134
  %561 = inttoptr i64 %560 to i32*, !mcsema_real_eip !134
  store i32 %ESI_val.223, i32* %561, !mcsema_real_eip !134
  %RBP_val.224 = load i64, i64* %XBP, !mcsema_real_eip !135
  %562 = add i64 %RBP_val.224, -112, !mcsema_real_eip !135
  %563 = inttoptr i64 %562 to i64*, !mcsema_real_eip !135
  %564 = load i64, i64* %563, !mcsema_real_eip !135
  store i64 %564, i64* %XAX, !mcsema_real_eip !135
  %RSP_val.225 = load i64, i64* %XSP, !mcsema_real_eip !136
  %565 = add i64 104, %RSP_val.225, !mcsema_real_eip !136
  %566 = xor i64 %565, %RSP_val.225, !mcsema_real_eip !136
  %567 = xor i64 %566, 104, !mcsema_real_eip !136
  %568 = and i64 %567, 16, !mcsema_real_eip !136
  %569 = icmp ne i64 %568, 0, !mcsema_real_eip !136
  store i1 %569, i1* %AF, !mcsema_real_eip !136
  %570 = lshr i64 %565, 63, !mcsema_real_eip !136
  %571 = trunc i64 %570 to i1, !mcsema_real_eip !136
  store i1 %571, i1* %SF, !mcsema_real_eip !136
  %572 = icmp eq i64 %565, 0, !mcsema_real_eip !136
  store i1 %572, i1* %ZF, !mcsema_real_eip !136
  %573 = xor i64 %RSP_val.225, 104, !mcsema_real_eip !136
  %574 = xor i64 %573, -1, !mcsema_real_eip !136
  %575 = xor i64 %RSP_val.225, %565, !mcsema_real_eip !136
  %576 = and i64 %574, %575, !mcsema_real_eip !136
  %577 = lshr i64 %576, 63, !mcsema_real_eip !136
  %578 = and i64 %577, 1, !mcsema_real_eip !136
  %579 = trunc i64 %578 to i1, !mcsema_real_eip !136
  store i1 %579, i1* %OF, !mcsema_real_eip !136
  %580 = trunc i64 %565 to i8, !mcsema_real_eip !136
  %581 = call i8 @llvm.ctpop.i8(i8 %580), !mcsema_real_eip !136
  %582 = trunc i8 %581 to i1, !mcsema_real_eip !136
  %583 = xor i1 %582, true, !mcsema_real_eip !136
  store i1 %583, i1* %PF, !mcsema_real_eip !136
  %584 = icmp ult i64 %565, %RSP_val.225, !mcsema_real_eip !136
  store i1 %584, i1* %CF, !mcsema_real_eip !136
  store i64 %565, i64* %XSP, !mcsema_real_eip !136
  %RSP_val.226 = load i64, i64* %XSP, !mcsema_real_eip !137
  %585 = inttoptr i64 %RSP_val.226 to i64*, !mcsema_real_eip !137
  %586 = load i64, i64* %585, !mcsema_real_eip !137
  store i64 %586, i64* %XBX, !mcsema_real_eip !137
  %587 = add i64 %RSP_val.226, 8, !mcsema_real_eip !137
  store i64 %587, i64* %XSP, !mcsema_real_eip !137
  %RSP_val.227 = load i64, i64* %XSP, !mcsema_real_eip !138
  %588 = inttoptr i64 %RSP_val.227 to i64*, !mcsema_real_eip !138
  %589 = load i64, i64* %588, !mcsema_real_eip !138
  store i64 %589, i64* %R14, !mcsema_real_eip !138
  %590 = add i64 %RSP_val.227, 8, !mcsema_real_eip !138
  store i64 %590, i64* %XSP, !mcsema_real_eip !138
  %RSP_val.228 = load i64, i64* %XSP, !mcsema_real_eip !139
  %591 = inttoptr i64 %RSP_val.228 to i64*, !mcsema_real_eip !139
  %592 = load i64, i64* %591, !mcsema_real_eip !139
  store i64 %592, i64* %R15, !mcsema_real_eip !139
  %593 = add i64 %RSP_val.228, 8, !mcsema_real_eip !139
  store i64 %593, i64* %XSP, !mcsema_real_eip !139
  %RSP_val.229 = load i64, i64* %XSP, !mcsema_real_eip !140
  %594 = inttoptr i64 %RSP_val.229 to i64*, !mcsema_real_eip !140
  %595 = load i64, i64* %594, !mcsema_real_eip !140
  store i64 %595, i64* %XBP, !mcsema_real_eip !140
  %596 = add i64 %RSP_val.229, 8, !mcsema_real_eip !140
  store i64 %596, i64* %XSP, !mcsema_real_eip !140
  %RSP_val.230 = load i64, i64* %XSP, !mcsema_real_eip !141
  %597 = add i64 %RSP_val.230, 8, !mcsema_real_eip !141
  %598 = inttoptr i64 %RSP_val.230 to i64*, !mcsema_real_eip !141
  %599 = load i64, i64* %598, !mcsema_real_eip !141
  store i64 %599, i64* %XIP, !mcsema_real_eip !141
  store i64 %597, i64* %XSP, !mcsema_real_eip !141
  ret void, !mcsema_real_eip !141
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

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
!2 = !{i64 256}
!3 = !{i64 257}
!4 = !{i64 260}
!5 = !{i64 267}
!6 = !{i64 272}
!7 = !{i64 274}
!8 = !{i64 281}
!9 = !{i64 288}
!10 = !{i64 295}
!11 = !{i64 302}
!12 = !{i64 307}
!13 = !{i64 311}
!14 = !{i64 317}
!15 = !{i64 323}
!16 = !{i64 328}
!17 = !{i64 332}
!18 = !{i64 336}
!19 = !{i64 342}
!20 = !{i64 346}
!21 = !{i64 353}
!22 = !{i64 357}
!23 = !{i64 364}
!24 = !{i64 368}
!25 = !{i64 372}
!26 = !{i64 376}
!27 = !{i64 380}
!28 = !{i64 384}
!29 = !{i64 388}
!30 = !{i64 392}
!31 = !{i64 396}
!32 = !{i64 400}
!33 = !{i64 403}
!34 = !{i64 406}
!35 = !{i64 410}
!36 = !{i64 414}
!37 = !{i64 417}
!38 = !{i64 420}
!39 = !{i64 423}
!40 = !{i64 430}
!41 = !{i64 433}
!42 = !{i64 438}
!43 = !{i64 442}
!44 = !{i64 447}
!45 = !{i64 452}
!46 = !{i64 456}
!47 = !{i64 461}
!48 = !{i64 466}
!49 = !{i64 476}
!50 = !{i64 480}
!51 = !{i64 484}
!52 = !{i64 486}
!53 = !{i64 490}
!54 = !{i64 493}
!55 = !{i64 497}
!56 = !{i64 500}
!57 = !{i64 503}
!58 = !{i64 506}
!59 = !{i64 508}
!60 = !{i64 513}
!61 = !{i64 516}
!62 = !{i64 519}
!63 = !{i64 521}
!64 = !{i64 528}
!65 = !{i64 529}
!66 = !{i64 0}
!67 = !{i64 1}
!68 = !{i64 4}
!69 = !{i64 6}
!70 = !{i64 8}
!71 = !{i64 9}
!72 = !{i64 13}
!73 = !{i64 17}
!74 = !{i64 21}
!75 = !{i64 25}
!76 = !{i64 28}
!77 = !{i64 34}
!78 = !{i64 37}
!79 = !{i64 41}
!80 = !{i64 44}
!81 = !{i64 48}
!82 = !{i64 52}
!83 = !{i64 55}
!84 = !{i64 58}
!85 = !{i64 62}
!86 = !{i64 66}
!87 = !{i64 70}
!88 = !{i64 74}
!89 = !{i64 77}
!90 = !{i64 81}
!91 = !{i64 85}
!92 = !{i64 88}
!93 = !{i64 92}
!94 = !{i64 97}
!95 = !{i64 101}
!96 = !{i64 104}
!97 = !{i64 108}
!98 = !{i64 110}
!99 = !{i64 114}
!100 = !{i64 116}
!101 = !{i64 120}
!102 = !{i64 123}
!103 = !{i64 127}
!104 = !{i64 130}
!105 = !{i64 134}
!106 = !{i64 137}
!107 = !{i64 140}
!108 = !{i64 144}
!109 = !{i64 146}
!110 = !{i64 149}
!111 = !{i64 153}
!112 = !{i64 156}
!113 = !{i64 160}
!114 = !{i64 163}
!115 = !{i64 167}
!116 = !{i64 171}
!117 = !{i64 175}
!118 = !{i64 179}
!119 = !{i64 183}
!120 = !{i64 186}
!121 = !{i64 190}
!122 = !{i64 193}
!123 = !{i64 196}
!124 = !{i64 200}
!125 = !{i64 203}
!126 = !{i64 207}
!127 = !{i64 210}
!128 = !{i64 214}
!129 = !{i64 218}
!130 = !{i64 222}
!131 = !{i64 226}
!132 = !{i64 230}
!133 = !{i64 233}
!134 = !{i64 237}
!135 = !{i64 240}
!136 = !{i64 244}
!137 = !{i64 248}
!138 = !{i64 249}
!139 = !{i64 251}
!140 = !{i64 253}
!141 = !{i64 254}
