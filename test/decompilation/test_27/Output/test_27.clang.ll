; ModuleID = 'Output/test_27.clang.bc'
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
  %21 = zext i32 12 to i64, !mcsema_real_eip !5
  store i64 %21, i64* %XAX, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !6
  %22 = zext i32 %EAX_val.5 to i64, !mcsema_real_eip !6
  store i64 %22, i64* %XDI, !mcsema_real_eip !6
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !7
  %23 = add i64 %RBP_val.6, -4, !mcsema_real_eip !7
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !7
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !7
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %26, !mcsema_real_eip !7
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !8
  %27 = add i64 %RBP_val.7, -16, !mcsema_real_eip !8
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !8
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !8
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %30, !mcsema_real_eip !8
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !9
  %31 = add i64 %RBP_val.8, -12, !mcsema_real_eip !9
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !9
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !9
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %34, !mcsema_real_eip !9
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !10
  %35 = add i64 %RBP_val.9, -8, !mcsema_real_eip !10
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !10
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !10
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !10
  store i32 10, i32* %38, !mcsema_real_eip !10
  %RDI_val.10 = load i64, i64* %XDI, !mcsema_real_eip !11
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !11
  %39 = sub i64 %RSP_val.11, 8, !mcsema_real_eip !11
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %40, !mcsema_real_eip !11
  store i64 %39, i64* %XSP, !mcsema_real_eip !11
  %41 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.10), !mcsema_real_eip !11
  store i64 %41, i64* %XAX, !mcsema_real_eip !11
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !12
  %42 = add i64 %RBP_val.12, -16, !mcsema_real_eip !12
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !12
  %44 = ptrtoint i64* %43 to i64, !mcsema_real_eip !12
  store i64 %44, i64* %XDI, !mcsema_real_eip !12
  %45 = zext i32 1 to i64, !mcsema_real_eip !13
  store i64 %45, i64* %R8, !mcsema_real_eip !13
  %46 = zext i32 2 to i64, !mcsema_real_eip !14
  store i64 %46, i64* %R9, !mcsema_real_eip !14
  %47 = zext i32 3 to i64, !mcsema_real_eip !15
  store i64 %47, i64* %XCX, !mcsema_real_eip !15
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !16
  %48 = add i64 %RBP_val.13, -24, !mcsema_real_eip !16
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !16
  %RAX_val.14 = load i64, i64* %XAX, !mcsema_real_eip !16
  store i64 %RAX_val.14, i64* %49, !mcsema_real_eip !16
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !17
  %50 = add i64 %RBP_val.15, -24, !mcsema_real_eip !17
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !17
  %52 = load i64, i64* %51, !mcsema_real_eip !17
  store i64 %52, i64* %XAX, !mcsema_real_eip !17
  %RAX_val.16 = load i64, i64* %XAX, !mcsema_real_eip !18
  %53 = add i64 %RAX_val.16, 0, !mcsema_real_eip !18
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !18
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !18
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !18
  store i32 5, i32* %56, !mcsema_real_eip !18
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !19
  %57 = add i64 %RBP_val.17, -24, !mcsema_real_eip !19
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !19
  %59 = load i64, i64* %58, !mcsema_real_eip !19
  store i64 %59, i64* %XAX, !mcsema_real_eip !19
  %RAX_val.18 = load i64, i64* %XAX, !mcsema_real_eip !20
  %60 = add i64 %RAX_val.18, 4, !mcsema_real_eip !20
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !20
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !20
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !20
  store i32 5, i32* %63, !mcsema_real_eip !20
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !21
  %64 = add i64 %RBP_val.19, -24, !mcsema_real_eip !21
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !21
  %66 = load i64, i64* %65, !mcsema_real_eip !21
  store i64 %66, i64* %XAX, !mcsema_real_eip !21
  %RAX_val.20 = load i64, i64* %XAX, !mcsema_real_eip !22
  %67 = add i64 %RAX_val.20, 8, !mcsema_real_eip !22
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !22
  %69 = ptrtoint i64* %68 to i64, !mcsema_real_eip !22
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !22
  store i32 5, i32* %70, !mcsema_real_eip !22
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !23
  %71 = add i64 %RBP_val.21, -24, !mcsema_real_eip !23
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !23
  %73 = load i64, i64* %72, !mcsema_real_eip !23
  store i64 %73, i64* %XAX, !mcsema_real_eip !23
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !24
  %74 = add i64 %RBP_val.22, -24, !mcsema_real_eip !24
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !24
  %76 = load i64, i64* %75, !mcsema_real_eip !24
  store i64 %76, i64* %XDX, !mcsema_real_eip !24
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !25
  %77 = add i64 %RBP_val.23, -16, !mcsema_real_eip !25
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !25
  %79 = load i64, i64* %78, !mcsema_real_eip !25
  store i64 %79, i64* %XSI, !mcsema_real_eip !25
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !26
  %80 = add i64 %RBP_val.24, -48, !mcsema_real_eip !26
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !26
  %RSI_val.25 = load i64, i64* %XSI, !mcsema_real_eip !26
  store i64 %RSI_val.25, i64* %81, !mcsema_real_eip !26
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !27
  %82 = add i64 %RBP_val.26, -8, !mcsema_real_eip !27
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !27
  %84 = ptrtoint i64* %83 to i64, !mcsema_real_eip !27
  %85 = inttoptr i64 %84 to i32*, !mcsema_real_eip !27
  %86 = load i32, i32* %85, !mcsema_real_eip !27
  %87 = zext i32 %86 to i64, !mcsema_real_eip !27
  store i64 %87, i64* %R10, !mcsema_real_eip !27
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !28
  %88 = add i64 %RBP_val.27, -40, !mcsema_real_eip !28
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !28
  %R10D.28 = bitcast i64* %R10 to i32*, !mcsema_real_eip !28
  %R10D_val.29 = load i32, i32* %R10D.28, !mcsema_real_eip !28
  %90 = ptrtoint i64* %89 to i64, !mcsema_real_eip !28
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !28
  store i32 %R10D_val.29, i32* %91, !mcsema_real_eip !28
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !29
  %92 = add i64 %RBP_val.30, -48, !mcsema_real_eip !29
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !29
  %94 = load i64, i64* %93, !mcsema_real_eip !29
  store i64 %94, i64* %XSI, !mcsema_real_eip !29
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !30
  %95 = add i64 %RBP_val.31, -40, !mcsema_real_eip !30
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !30
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !30
  %98 = inttoptr i64 %97 to i32*, !mcsema_real_eip !30
  %99 = load i32, i32* %98, !mcsema_real_eip !30
  %100 = zext i32 %99 to i64, !mcsema_real_eip !30
  store i64 %100, i64* %R10, !mcsema_real_eip !30
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !31
  %101 = add i64 %RBP_val.32, -64, !mcsema_real_eip !31
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !31
  %RDI_val.33 = load i64, i64* %XDI, !mcsema_real_eip !31
  store i64 %RDI_val.33, i64* %102, !mcsema_real_eip !31
  %RSI_val.34 = load i64, i64* %XSI, !mcsema_real_eip !32
  store i64 %RSI_val.34, i64* %XDI, !mcsema_real_eip !32
  %R10D.35 = bitcast i64* %R10 to i32*, !mcsema_real_eip !33
  %R10D_val.36 = load i32, i32* %R10D.35, !mcsema_real_eip !33
  %103 = zext i32 %R10D_val.36 to i64, !mcsema_real_eip !33
  store i64 %103, i64* %XSI, !mcsema_real_eip !33
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !34
  %104 = add i64 %RBP_val.37, -64, !mcsema_real_eip !34
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !34
  %106 = load i64, i64* %105, !mcsema_real_eip !34
  store i64 %106, i64* %R11, !mcsema_real_eip !34
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !35
  %107 = add i64 %RBP_val.38, -72, !mcsema_real_eip !35
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !35
  %RDX_val.39 = load i64, i64* %XDX, !mcsema_real_eip !35
  store i64 %RDX_val.39, i64* %108, !mcsema_real_eip !35
  %R11_val.40 = load i64, i64* %R11, !mcsema_real_eip !36
  store i64 %R11_val.40, i64* %XDX, !mcsema_real_eip !36
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !37
  %109 = add i64 %RBP_val.41, -76, !mcsema_real_eip !37
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !37
  %ECX.42 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %ECX_val.43 = load i32, i32* %ECX.42, !mcsema_real_eip !37
  %111 = ptrtoint i64* %110 to i64, !mcsema_real_eip !37
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !37
  store i32 %ECX_val.43, i32* %112, !mcsema_real_eip !37
  %RAX_val.44 = load i64, i64* %XAX, !mcsema_real_eip !38
  store i64 %RAX_val.44, i64* %XCX, !mcsema_real_eip !38
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !39
  %113 = add i64 %RSP_val.45, 0, !mcsema_real_eip !39
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !39
  %115 = ptrtoint i64* %114 to i64, !mcsema_real_eip !39
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !39
  store i32 3, i32* %116, !mcsema_real_eip !39
  %R11_val.46 = load i64, i64* %R11, !mcsema_real_eip !40
  %117 = add i64 %R11_val.46, 0, !mcsema_real_eip !40
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !40
  %119 = load i64, i64* %118, !mcsema_real_eip !40
  store i64 %119, i64* %XAX, !mcsema_real_eip !40
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !41
  %120 = add i64 %RSP_val.47, 8, !mcsema_real_eip !41
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !41
  %RAX_val.48 = load i64, i64* %XAX, !mcsema_real_eip !41
  store i64 %RAX_val.48, i64* %121, !mcsema_real_eip !41
  %R11_val.49 = load i64, i64* %R11, !mcsema_real_eip !42
  %122 = add i64 %R11_val.49, 8, !mcsema_real_eip !42
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !42
  %124 = ptrtoint i64* %123 to i64, !mcsema_real_eip !42
  %125 = inttoptr i64 %124 to i32*, !mcsema_real_eip !42
  %126 = load i32, i32* %125, !mcsema_real_eip !42
  %127 = zext i32 %126 to i64, !mcsema_real_eip !42
  store i64 %127, i64* %R10, !mcsema_real_eip !42
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !43
  %128 = add i64 %RSP_val.50, 16, !mcsema_real_eip !43
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !43
  %R10D.51 = bitcast i64* %R10 to i32*, !mcsema_real_eip !43
  %R10D_val.52 = load i32, i32* %R10D.51, !mcsema_real_eip !43
  %130 = ptrtoint i64* %129 to i64, !mcsema_real_eip !43
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !43
  store i32 %R10D_val.52, i32* %131, !mcsema_real_eip !43
  %RSP_val.53 = load i64, i64* %XSP, !mcsema_real_eip !44
  %132 = add i64 %RSP_val.53, 24, !mcsema_real_eip !44
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !44
  %R11_val.54 = load i64, i64* %R11, !mcsema_real_eip !44
  store i64 %R11_val.54, i64* %133, !mcsema_real_eip !44
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !45
  %134 = add i64 %RBP_val.55, -72, !mcsema_real_eip !45
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !45
  %136 = load i64, i64* %135, !mcsema_real_eip !45
  store i64 %136, i64* %XAX, !mcsema_real_eip !45
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !46
  %137 = add i64 %RSP_val.56, 32, !mcsema_real_eip !46
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !46
  %RAX_val.57 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.57, i64* %138, !mcsema_real_eip !46
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !47
  %139 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !47
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !47
  store i64 -4981261766360305936, i64* %140, !mcsema_real_eip !47
  store i64 %139, i64* %XSP, !mcsema_real_eip !47
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !47
  %141 = getelementptr %0, %0* @data_0x212, i64 0, i32 0, !mcsema_real_eip !48
  %142 = ptrtoint [5 x i8]* %141 to i64, !mcsema_real_eip !48
  %143 = add i64 %142, 0, !mcsema_real_eip !48
  store i64 %143, i64* %XDI, !mcsema_real_eip !48
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !49
  %144 = add i64 %RBP_val.59, -32, !mcsema_real_eip !49
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !49
  %RAX_val.60 = load i64, i64* %XAX, !mcsema_real_eip !49
  store i64 %RAX_val.60, i64* %145, !mcsema_real_eip !49
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !50
  %146 = add i64 %RBP_val.61, -32, !mcsema_real_eip !50
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !50
  %148 = load i64, i64* %147, !mcsema_real_eip !50
  store i64 %148, i64* %XAX, !mcsema_real_eip !50
  %RAX_val.62 = load i64, i64* %XAX, !mcsema_real_eip !51
  %149 = add i64 %RAX_val.62, 0, !mcsema_real_eip !51
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !51
  %151 = ptrtoint i64* %150 to i64, !mcsema_real_eip !51
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !51
  %153 = load i32, i32* %152, !mcsema_real_eip !51
  %154 = zext i32 %153 to i64, !mcsema_real_eip !51
  store i64 %154, i64* %XSI, !mcsema_real_eip !51
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !52
  %155 = add i64 %RBP_val.63, -32, !mcsema_real_eip !52
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !52
  %157 = load i64, i64* %156, !mcsema_real_eip !52
  store i64 %157, i64* %XAX, !mcsema_real_eip !52
  %RAX_val.64 = load i64, i64* %XAX, !mcsema_real_eip !53
  %158 = add i64 %RAX_val.64, 4, !mcsema_real_eip !53
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !53
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !53
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !53
  %162 = load i32, i32* %161, !mcsema_real_eip !53
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !53
  %ESI_val.66 = load i32, i32* %ESI.65, !mcsema_real_eip !53
  %163 = add i32 %ESI_val.66, %162, !mcsema_real_eip !53
  %164 = xor i32 %163, %162, !mcsema_real_eip !53
  %165 = xor i32 %164, %ESI_val.66, !mcsema_real_eip !53
  %166 = and i32 %165, 16, !mcsema_real_eip !53
  %167 = icmp ne i32 %166, 0, !mcsema_real_eip !53
  store i1 %167, i1* %AF, !mcsema_real_eip !53
  %168 = lshr i32 %163, 31, !mcsema_real_eip !53
  %169 = trunc i32 %168 to i1, !mcsema_real_eip !53
  store i1 %169, i1* %SF, !mcsema_real_eip !53
  %170 = icmp eq i32 %163, 0, !mcsema_real_eip !53
  store i1 %170, i1* %ZF, !mcsema_real_eip !53
  %171 = xor i32 %162, %ESI_val.66, !mcsema_real_eip !53
  %172 = xor i32 %171, -1, !mcsema_real_eip !53
  %173 = xor i32 %162, %163, !mcsema_real_eip !53
  %174 = and i32 %172, %173, !mcsema_real_eip !53
  %175 = lshr i32 %174, 31, !mcsema_real_eip !53
  %176 = and i32 %175, 1, !mcsema_real_eip !53
  %177 = trunc i32 %176 to i1, !mcsema_real_eip !53
  store i1 %177, i1* %OF, !mcsema_real_eip !53
  %178 = trunc i32 %163 to i8, !mcsema_real_eip !53
  %179 = call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !53
  %180 = trunc i8 %179 to i1, !mcsema_real_eip !53
  %181 = xor i1 %180, true, !mcsema_real_eip !53
  store i1 %181, i1* %PF, !mcsema_real_eip !53
  %182 = icmp ult i32 %163, %162, !mcsema_real_eip !53
  store i1 %182, i1* %CF, !mcsema_real_eip !53
  %183 = zext i32 %163 to i64, !mcsema_real_eip !53
  store i64 %183, i64* %XSI, !mcsema_real_eip !53
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !54
  %184 = add i64 %RBP_val.67, -32, !mcsema_real_eip !54
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !54
  %186 = load i64, i64* %185, !mcsema_real_eip !54
  store i64 %186, i64* %XAX, !mcsema_real_eip !54
  %RAX_val.68 = load i64, i64* %XAX, !mcsema_real_eip !55
  %187 = add i64 %RAX_val.68, 8, !mcsema_real_eip !55
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !55
  %189 = ptrtoint i64* %188 to i64, !mcsema_real_eip !55
  %190 = inttoptr i64 %189 to i32*, !mcsema_real_eip !55
  %191 = load i32, i32* %190, !mcsema_real_eip !55
  %ESI.69 = bitcast i64* %XSI to i32*, !mcsema_real_eip !55
  %ESI_val.70 = load i32, i32* %ESI.69, !mcsema_real_eip !55
  %192 = add i32 %ESI_val.70, %191, !mcsema_real_eip !55
  %193 = xor i32 %192, %191, !mcsema_real_eip !55
  %194 = xor i32 %193, %ESI_val.70, !mcsema_real_eip !55
  %195 = and i32 %194, 16, !mcsema_real_eip !55
  %196 = icmp ne i32 %195, 0, !mcsema_real_eip !55
  store i1 %196, i1* %AF, !mcsema_real_eip !55
  %197 = lshr i32 %192, 31, !mcsema_real_eip !55
  %198 = trunc i32 %197 to i1, !mcsema_real_eip !55
  store i1 %198, i1* %SF, !mcsema_real_eip !55
  %199 = icmp eq i32 %192, 0, !mcsema_real_eip !55
  store i1 %199, i1* %ZF, !mcsema_real_eip !55
  %200 = xor i32 %191, %ESI_val.70, !mcsema_real_eip !55
  %201 = xor i32 %200, -1, !mcsema_real_eip !55
  %202 = xor i32 %191, %192, !mcsema_real_eip !55
  %203 = and i32 %201, %202, !mcsema_real_eip !55
  %204 = lshr i32 %203, 31, !mcsema_real_eip !55
  %205 = and i32 %204, 1, !mcsema_real_eip !55
  %206 = trunc i32 %205 to i1, !mcsema_real_eip !55
  store i1 %206, i1* %OF, !mcsema_real_eip !55
  %207 = trunc i32 %192 to i8, !mcsema_real_eip !55
  %208 = call i8 @llvm.ctpop.i8(i8 %207), !mcsema_real_eip !55
  %209 = trunc i8 %208 to i1, !mcsema_real_eip !55
  %210 = xor i1 %209, true, !mcsema_real_eip !55
  store i1 %210, i1* %PF, !mcsema_real_eip !55
  %211 = icmp ult i32 %192, %191, !mcsema_real_eip !55
  store i1 %211, i1* %CF, !mcsema_real_eip !55
  %212 = zext i32 %192 to i64, !mcsema_real_eip !55
  store i64 %212, i64* %XSI, !mcsema_real_eip !55
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !56
  %213 = add i64 %RBP_val.71, -52, !mcsema_real_eip !56
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !56
  %ESI.72 = bitcast i64* %XSI to i32*, !mcsema_real_eip !56
  %ESI_val.73 = load i32, i32* %ESI.72, !mcsema_real_eip !56
  %215 = ptrtoint i64* %214 to i64, !mcsema_real_eip !56
  %216 = inttoptr i64 %215 to i32*, !mcsema_real_eip !56
  store i32 %ESI_val.73, i32* %216, !mcsema_real_eip !56
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !57
  %217 = add i64 %RBP_val.74, -52, !mcsema_real_eip !57
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !57
  %219 = ptrtoint i64* %218 to i64, !mcsema_real_eip !57
  %220 = inttoptr i64 %219 to i32*, !mcsema_real_eip !57
  %221 = load i32, i32* %220, !mcsema_real_eip !57
  %222 = zext i32 %221 to i64, !mcsema_real_eip !57
  store i64 %222, i64* %XSI, !mcsema_real_eip !57
  %AL.75 = bitcast i64* %XAX to i8*, !mcsema_real_eip !58
  store i8 0, i8* %AL.75, !mcsema_real_eip !58
  %RDI_val.76 = load i64, i64* %XDI, !mcsema_real_eip !59
  %RSI_val.77 = load i64, i64* %XSI, !mcsema_real_eip !59
  %RDX_val.78 = load i64, i64* %XDX, !mcsema_real_eip !59
  %RCX_val.79 = load i64, i64* %XCX, !mcsema_real_eip !59
  %R8_val.80 = load i64, i64* %R8, !mcsema_real_eip !59
  %R9_val.81 = load i64, i64* %R9, !mcsema_real_eip !59
  %RSP_val.82 = load i64, i64* %XSP, !mcsema_real_eip !59
  %223 = inttoptr i64 %RSP_val.82 to i64*, !mcsema_real_eip !59
  %224 = load i64, i64* %223, !mcsema_real_eip !59
  %225 = add i64 %RSP_val.82, 8, !mcsema_real_eip !59
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !59
  %227 = load i64, i64* %226, !mcsema_real_eip !59
  %228 = add i64 %225, 8, !mcsema_real_eip !59
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !59
  %230 = load i64, i64* %229, !mcsema_real_eip !59
  %231 = add i64 %228, 8, !mcsema_real_eip !59
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !59
  %233 = load i64, i64* %232, !mcsema_real_eip !59
  %234 = add i64 %231, 8, !mcsema_real_eip !59
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !59
  %236 = load i64, i64* %235, !mcsema_real_eip !59
  %237 = add i64 %234, 8, !mcsema_real_eip !59
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !59
  %239 = load i64, i64* %238, !mcsema_real_eip !59
  %RSP_val.83 = load i64, i64* %XSP, !mcsema_real_eip !59
  %240 = sub i64 %RSP_val.83, 8, !mcsema_real_eip !59
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !59
  store i64 -2415393069852865332, i64* %241, !mcsema_real_eip !59
  store i64 %240, i64* %XSP, !mcsema_real_eip !59
  %242 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.76, i64 %RSI_val.77, i64 %RDX_val.78, i64 %RCX_val.79, i64 %R8_val.80, i64 %R9_val.81, i64 %224, i64 %227, i64 %230, i64 %233, i64 %236, i64 %239), !mcsema_real_eip !59
  store i64 %242, i64* %XAX, !mcsema_real_eip !59
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !60
  %243 = add i64 %RBP_val.84, -52, !mcsema_real_eip !60
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !60
  %245 = ptrtoint i64* %244 to i64, !mcsema_real_eip !60
  %246 = inttoptr i64 %245 to i32*, !mcsema_real_eip !60
  %247 = load i32, i32* %246, !mcsema_real_eip !60
  %248 = zext i32 %247 to i64, !mcsema_real_eip !60
  store i64 %248, i64* %XSI, !mcsema_real_eip !60
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !61
  %249 = add i64 %RBP_val.85, -80, !mcsema_real_eip !61
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !61
  %EAX.86 = bitcast i64* %XAX to i32*, !mcsema_real_eip !61
  %EAX_val.87 = load i32, i32* %EAX.86, !mcsema_real_eip !61
  %251 = ptrtoint i64* %250 to i64, !mcsema_real_eip !61
  %252 = inttoptr i64 %251 to i32*, !mcsema_real_eip !61
  store i32 %EAX_val.87, i32* %252, !mcsema_real_eip !61
  %ESI.88 = bitcast i64* %XSI to i32*, !mcsema_real_eip !62
  %ESI_val.89 = load i32, i32* %ESI.88, !mcsema_real_eip !62
  %253 = zext i32 %ESI_val.89 to i64, !mcsema_real_eip !62
  store i64 %253, i64* %XAX, !mcsema_real_eip !62
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !63
  %254 = add i64 128, %RSP_val.90, !mcsema_real_eip !63
  %255 = xor i64 %254, %RSP_val.90, !mcsema_real_eip !63
  %256 = xor i64 %255, 128, !mcsema_real_eip !63
  %257 = and i64 %256, 16, !mcsema_real_eip !63
  %258 = icmp ne i64 %257, 0, !mcsema_real_eip !63
  store i1 %258, i1* %AF, !mcsema_real_eip !63
  %259 = lshr i64 %254, 63, !mcsema_real_eip !63
  %260 = trunc i64 %259 to i1, !mcsema_real_eip !63
  store i1 %260, i1* %SF, !mcsema_real_eip !63
  %261 = icmp eq i64 %254, 0, !mcsema_real_eip !63
  store i1 %261, i1* %ZF, !mcsema_real_eip !63
  %262 = xor i64 %RSP_val.90, 128, !mcsema_real_eip !63
  %263 = xor i64 %262, -1, !mcsema_real_eip !63
  %264 = xor i64 %RSP_val.90, %254, !mcsema_real_eip !63
  %265 = and i64 %263, %264, !mcsema_real_eip !63
  %266 = lshr i64 %265, 63, !mcsema_real_eip !63
  %267 = and i64 %266, 1, !mcsema_real_eip !63
  %268 = trunc i64 %267 to i1, !mcsema_real_eip !63
  store i1 %268, i1* %OF, !mcsema_real_eip !63
  %269 = trunc i64 %254 to i8, !mcsema_real_eip !63
  %270 = call i8 @llvm.ctpop.i8(i8 %269), !mcsema_real_eip !63
  %271 = trunc i8 %270 to i1, !mcsema_real_eip !63
  %272 = xor i1 %271, true, !mcsema_real_eip !63
  store i1 %272, i1* %PF, !mcsema_real_eip !63
  %273 = icmp ult i64 %254, %RSP_val.90, !mcsema_real_eip !63
  store i1 %273, i1* %CF, !mcsema_real_eip !63
  store i64 %254, i64* %XSP, !mcsema_real_eip !63
  %RSP_val.91 = load i64, i64* %XSP, !mcsema_real_eip !64
  %274 = inttoptr i64 %RSP_val.91 to i64*, !mcsema_real_eip !64
  %275 = load i64, i64* %274, !mcsema_real_eip !64
  store i64 %275, i64* %XBP, !mcsema_real_eip !64
  %276 = add i64 %RSP_val.91, 8, !mcsema_real_eip !64
  store i64 %276, i64* %XSP, !mcsema_real_eip !64
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !65
  %277 = add i64 %RSP_val.92, 8, !mcsema_real_eip !65
  %278 = inttoptr i64 %RSP_val.92 to i64*, !mcsema_real_eip !65
  %279 = load i64, i64* %278, !mcsema_real_eip !65
  store i64 %279, i64* %XIP, !mcsema_real_eip !65
  store i64 %277, i64* %XSP, !mcsema_real_eip !65
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
  %9 = sext i8 104 to i64, !mcsema_real_eip !71
  %10 = sub i64 %RSP_val.102, %9, !mcsema_real_eip !71
  %11 = xor i64 %10, %RSP_val.102, !mcsema_real_eip !71
  %12 = xor i64 %11, %9, !mcsema_real_eip !71
  %13 = and i64 %12, 16, !mcsema_real_eip !71
  %14 = icmp ne i64 %13, 0, !mcsema_real_eip !71
  store i1 %14, i1* %AF, !mcsema_real_eip !71
  %15 = trunc i64 %10 to i8, !mcsema_real_eip !71
  %16 = call i8 @llvm.ctpop.i8(i8 %15), !mcsema_real_eip !71
  %17 = trunc i8 %16 to i1, !mcsema_real_eip !71
  %18 = xor i1 %17, true, !mcsema_real_eip !71
  store i1 %18, i1* %PF, !mcsema_real_eip !71
  %19 = icmp eq i64 %10, 0, !mcsema_real_eip !71
  store i1 %19, i1* %ZF, !mcsema_real_eip !71
  %20 = lshr i64 %10, 63, !mcsema_real_eip !71
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !71
  store i1 %21, i1* %SF, !mcsema_real_eip !71
  %22 = icmp ult i64 %RSP_val.102, %9, !mcsema_real_eip !71
  store i1 %22, i1* %CF, !mcsema_real_eip !71
  %23 = xor i64 %RSP_val.102, %9, !mcsema_real_eip !71
  %24 = xor i64 %RSP_val.102, %10, !mcsema_real_eip !71
  %25 = and i64 %23, %24, !mcsema_real_eip !71
  %26 = lshr i64 %25, 63, !mcsema_real_eip !71
  %27 = trunc i64 %26 to i1, !mcsema_real_eip !71
  store i1 %27, i1* %OF, !mcsema_real_eip !71
  store i64 %10, i64* %XSP, !mcsema_real_eip !71
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !72
  %28 = add i64 %RBP_val.103, 48, !mcsema_real_eip !72
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !72
  %30 = load i64, i64* %29, !mcsema_real_eip !72
  store i64 %30, i64* %XAX, !mcsema_real_eip !72
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !73
  %31 = add i64 %RBP_val.104, 40, !mcsema_real_eip !73
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !73
  %33 = load i64, i64* %32, !mcsema_real_eip !73
  store i64 %33, i64* %R10, !mcsema_real_eip !73
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !74
  %34 = add i64 %RBP_val.105, 24, !mcsema_real_eip !74
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !74
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !74
  store i64 %36, i64* %R11, !mcsema_real_eip !74
  %RBP_val.106 = load i64, i64* %XBP, !mcsema_real_eip !75
  %37 = add i64 %RBP_val.106, 16, !mcsema_real_eip !75
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !75
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !75
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !75
  %41 = load i32, i32* %40, !mcsema_real_eip !75
  %42 = zext i32 %41 to i64, !mcsema_real_eip !75
  store i64 %42, i64* %XBX, !mcsema_real_eip !75
  %43 = zext i32 12 to i64, !mcsema_real_eip !76
  store i64 %43, i64* %R14, !mcsema_real_eip !76
  %R14D.107 = bitcast i64* %R14 to i32*, !mcsema_real_eip !77
  %R14D_val.108 = load i32, i32* %R14D.107, !mcsema_real_eip !77
  %44 = zext i32 %R14D_val.108 to i64, !mcsema_real_eip !77
  store i64 %44, i64* %R15, !mcsema_real_eip !77
  %RBP_val.109 = load i64, i64* %XBP, !mcsema_real_eip !78
  %45 = add i64 %RBP_val.109, -56, !mcsema_real_eip !78
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !78
  %RDI_val.110 = load i64, i64* %XDI, !mcsema_real_eip !78
  store i64 %RDI_val.110, i64* %46, !mcsema_real_eip !78
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !79
  %47 = add i64 %RBP_val.111, -48, !mcsema_real_eip !79
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !79
  %ESI.112 = bitcast i64* %XSI to i32*, !mcsema_real_eip !79
  %ESI_val.113 = load i32, i32* %ESI.112, !mcsema_real_eip !79
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !79
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !79
  store i32 %ESI_val.113, i32* %50, !mcsema_real_eip !79
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !80
  %51 = add i64 %RBP_val.114, -56, !mcsema_real_eip !80
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !80
  %53 = load i64, i64* %52, !mcsema_real_eip !80
  store i64 %53, i64* %XDI, !mcsema_real_eip !80
  %RBP_val.115 = load i64, i64* %XBP, !mcsema_real_eip !81
  %54 = add i64 %RBP_val.115, -40, !mcsema_real_eip !81
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !81
  %RDI_val.116 = load i64, i64* %XDI, !mcsema_real_eip !81
  store i64 %RDI_val.116, i64* %55, !mcsema_real_eip !81
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !82
  %56 = add i64 %RBP_val.117, -48, !mcsema_real_eip !82
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !82
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !82
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !82
  %60 = load i32, i32* %59, !mcsema_real_eip !82
  %61 = zext i32 %60 to i64, !mcsema_real_eip !82
  store i64 %61, i64* %XSI, !mcsema_real_eip !82
  %RBP_val.118 = load i64, i64* %XBP, !mcsema_real_eip !83
  %62 = add i64 %RBP_val.118, -32, !mcsema_real_eip !83
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !83
  %ESI.119 = bitcast i64* %XSI to i32*, !mcsema_real_eip !83
  %ESI_val.120 = load i32, i32* %ESI.119, !mcsema_real_eip !83
  %64 = ptrtoint i64* %63 to i64, !mcsema_real_eip !83
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !83
  store i32 %ESI_val.120, i32* %65, !mcsema_real_eip !83
  %RBP_val.121 = load i64, i64* %XBP, !mcsema_real_eip !84
  %66 = add i64 %RBP_val.121, -64, !mcsema_real_eip !84
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !84
  %RDX_val.122 = load i64, i64* %XDX, !mcsema_real_eip !84
  store i64 %RDX_val.122, i64* %67, !mcsema_real_eip !84
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !85
  %68 = add i64 %RBP_val.123, -72, !mcsema_real_eip !85
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !85
  %RCX_val.124 = load i64, i64* %XCX, !mcsema_real_eip !85
  store i64 %RCX_val.124, i64* %69, !mcsema_real_eip !85
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !86
  %70 = add i64 %RBP_val.125, -76, !mcsema_real_eip !86
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !86
  %R8D.126 = bitcast i64* %R8 to i32*, !mcsema_real_eip !86
  %R8D_val.127 = load i32, i32* %R8D.126, !mcsema_real_eip !86
  %72 = ptrtoint i64* %71 to i64, !mcsema_real_eip !86
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !86
  store i32 %R8D_val.127, i32* %73, !mcsema_real_eip !86
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !87
  %74 = add i64 %RBP_val.128, -80, !mcsema_real_eip !87
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !87
  %R9D.129 = bitcast i64* %R9 to i32*, !mcsema_real_eip !87
  %R9D_val.130 = load i32, i32* %R9D.129, !mcsema_real_eip !87
  %76 = ptrtoint i64* %75 to i64, !mcsema_real_eip !87
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !87
  store i32 %R9D_val.130, i32* %77, !mcsema_real_eip !87
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !88
  %78 = add i64 %RBP_val.131, -84, !mcsema_real_eip !88
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !88
  %EBX.132 = bitcast i64* %XBX to i32*, !mcsema_real_eip !88
  %EBX_val.133 = load i32, i32* %EBX.132, !mcsema_real_eip !88
  %80 = ptrtoint i64* %79 to i64, !mcsema_real_eip !88
  %81 = inttoptr i64 %80 to i32*, !mcsema_real_eip !88
  store i32 %EBX_val.133, i32* %81, !mcsema_real_eip !88
  %RBP_val.134 = load i64, i64* %XBP, !mcsema_real_eip !89
  %82 = add i64 %RBP_val.134, -96, !mcsema_real_eip !89
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !89
  %R10_val.135 = load i64, i64* %R10, !mcsema_real_eip !89
  store i64 %R10_val.135, i64* %83, !mcsema_real_eip !89
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !90
  %84 = add i64 %RBP_val.136, -104, !mcsema_real_eip !90
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !90
  %RAX_val.137 = load i64, i64* %XAX, !mcsema_real_eip !90
  store i64 %RAX_val.137, i64* %85, !mcsema_real_eip !90
  %R15_val.138 = load i64, i64* %R15, !mcsema_real_eip !91
  store i64 %R15_val.138, i64* %XDI, !mcsema_real_eip !91
  %RBP_val.139 = load i64, i64* %XBP, !mcsema_real_eip !92
  %86 = add i64 %RBP_val.139, -120, !mcsema_real_eip !92
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !92
  %R11_val.140 = load i64, i64* %R11, !mcsema_real_eip !92
  store i64 %R11_val.140, i64* %87, !mcsema_real_eip !92
  %RDI_val.141 = load i64, i64* %XDI, !mcsema_real_eip !93
  %RSP_val.142 = load i64, i64* %XSP, !mcsema_real_eip !93
  %88 = sub i64 %RSP_val.142, 8, !mcsema_real_eip !93
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !93
  store i64 -2415393069852865332, i64* %89, !mcsema_real_eip !93
  store i64 %88, i64* %XSP, !mcsema_real_eip !93
  %90 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.141), !mcsema_real_eip !93
  store i64 %90, i64* %XAX, !mcsema_real_eip !93
  %RBP_val.143 = load i64, i64* %XBP, !mcsema_real_eip !94
  %91 = add i64 %RBP_val.143, -112, !mcsema_real_eip !94
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !94
  %RAX_val.144 = load i64, i64* %XAX, !mcsema_real_eip !94
  store i64 %RAX_val.144, i64* %92, !mcsema_real_eip !94
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !95
  %93 = add i64 %RBP_val.145, -40, !mcsema_real_eip !95
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !95
  %95 = ptrtoint i64* %94 to i64, !mcsema_real_eip !95
  %96 = inttoptr i64 %95 to i32*, !mcsema_real_eip !95
  %97 = load i32, i32* %96, !mcsema_real_eip !95
  %98 = zext i32 %97 to i64, !mcsema_real_eip !95
  store i64 %98, i64* %XSI, !mcsema_real_eip !95
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !96
  %99 = add i64 %RBP_val.146, -64, !mcsema_real_eip !96
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !96
  %101 = load i64, i64* %100, !mcsema_real_eip !96
  store i64 %101, i64* %XAX, !mcsema_real_eip !96
  %RAX_val.147 = load i64, i64* %XAX, !mcsema_real_eip !97
  %102 = add i64 %RAX_val.147, 0, !mcsema_real_eip !97
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !97
  %104 = ptrtoint i64* %103 to i64, !mcsema_real_eip !97
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !97
  %106 = load i32, i32* %105, !mcsema_real_eip !97
  %ESI.148 = bitcast i64* %XSI to i32*, !mcsema_real_eip !97
  %ESI_val.149 = load i32, i32* %ESI.148, !mcsema_real_eip !97
  %107 = add i32 %ESI_val.149, %106, !mcsema_real_eip !97
  %108 = xor i32 %107, %106, !mcsema_real_eip !97
  %109 = xor i32 %108, %ESI_val.149, !mcsema_real_eip !97
  %110 = and i32 %109, 16, !mcsema_real_eip !97
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !97
  store i1 %111, i1* %AF, !mcsema_real_eip !97
  %112 = lshr i32 %107, 31, !mcsema_real_eip !97
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !97
  store i1 %113, i1* %SF, !mcsema_real_eip !97
  %114 = icmp eq i32 %107, 0, !mcsema_real_eip !97
  store i1 %114, i1* %ZF, !mcsema_real_eip !97
  %115 = xor i32 %106, %ESI_val.149, !mcsema_real_eip !97
  %116 = xor i32 %115, -1, !mcsema_real_eip !97
  %117 = xor i32 %106, %107, !mcsema_real_eip !97
  %118 = and i32 %116, %117, !mcsema_real_eip !97
  %119 = lshr i32 %118, 31, !mcsema_real_eip !97
  %120 = and i32 %119, 1, !mcsema_real_eip !97
  %121 = trunc i32 %120 to i1, !mcsema_real_eip !97
  store i1 %121, i1* %OF, !mcsema_real_eip !97
  %122 = trunc i32 %107 to i8, !mcsema_real_eip !97
  %123 = call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !97
  %124 = trunc i8 %123 to i1, !mcsema_real_eip !97
  %125 = xor i1 %124, true, !mcsema_real_eip !97
  store i1 %125, i1* %PF, !mcsema_real_eip !97
  %126 = icmp ult i32 %107, %106, !mcsema_real_eip !97
  store i1 %126, i1* %CF, !mcsema_real_eip !97
  %127 = zext i32 %107 to i64, !mcsema_real_eip !97
  store i64 %127, i64* %XSI, !mcsema_real_eip !97
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !98
  %128 = add i64 %RBP_val.150, -72, !mcsema_real_eip !98
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !98
  %130 = load i64, i64* %129, !mcsema_real_eip !98
  store i64 %130, i64* %XAX, !mcsema_real_eip !98
  %RAX_val.151 = load i64, i64* %XAX, !mcsema_real_eip !99
  %131 = add i64 %RAX_val.151, 0, !mcsema_real_eip !99
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !99
  %133 = ptrtoint i64* %132 to i64, !mcsema_real_eip !99
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !99
  %135 = load i32, i32* %134, !mcsema_real_eip !99
  %ESI.152 = bitcast i64* %XSI to i32*, !mcsema_real_eip !99
  %ESI_val.153 = load i32, i32* %ESI.152, !mcsema_real_eip !99
  %136 = add i32 %ESI_val.153, %135, !mcsema_real_eip !99
  %137 = xor i32 %136, %135, !mcsema_real_eip !99
  %138 = xor i32 %137, %ESI_val.153, !mcsema_real_eip !99
  %139 = and i32 %138, 16, !mcsema_real_eip !99
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !99
  store i1 %140, i1* %AF, !mcsema_real_eip !99
  %141 = lshr i32 %136, 31, !mcsema_real_eip !99
  %142 = trunc i32 %141 to i1, !mcsema_real_eip !99
  store i1 %142, i1* %SF, !mcsema_real_eip !99
  %143 = icmp eq i32 %136, 0, !mcsema_real_eip !99
  store i1 %143, i1* %ZF, !mcsema_real_eip !99
  %144 = xor i32 %135, %ESI_val.153, !mcsema_real_eip !99
  %145 = xor i32 %144, -1, !mcsema_real_eip !99
  %146 = xor i32 %135, %136, !mcsema_real_eip !99
  %147 = and i32 %145, %146, !mcsema_real_eip !99
  %148 = lshr i32 %147, 31, !mcsema_real_eip !99
  %149 = and i32 %148, 1, !mcsema_real_eip !99
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !99
  store i1 %150, i1* %OF, !mcsema_real_eip !99
  %151 = trunc i32 %136 to i8, !mcsema_real_eip !99
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !99
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !99
  %154 = xor i1 %153, true, !mcsema_real_eip !99
  store i1 %154, i1* %PF, !mcsema_real_eip !99
  %155 = icmp ult i32 %136, %135, !mcsema_real_eip !99
  store i1 %155, i1* %CF, !mcsema_real_eip !99
  %156 = zext i32 %136 to i64, !mcsema_real_eip !99
  store i64 %156, i64* %XSI, !mcsema_real_eip !99
  %RBP_val.154 = load i64, i64* %XBP, !mcsema_real_eip !100
  %157 = add i64 %RBP_val.154, -120, !mcsema_real_eip !100
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !100
  %159 = load i64, i64* %158, !mcsema_real_eip !100
  store i64 %159, i64* %XAX, !mcsema_real_eip !100
  %RAX_val.155 = load i64, i64* %XAX, !mcsema_real_eip !101
  %160 = add i64 %RAX_val.155, 0, !mcsema_real_eip !101
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !101
  %162 = ptrtoint i64* %161 to i64, !mcsema_real_eip !101
  %163 = inttoptr i64 %162 to i32*, !mcsema_real_eip !101
  %164 = load i32, i32* %163, !mcsema_real_eip !101
  %165 = zext i32 %164 to i64, !mcsema_real_eip !101
  store i64 %165, i64* %R8, !mcsema_real_eip !101
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !102
  %166 = add i64 %RBP_val.156, -96, !mcsema_real_eip !102
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !102
  %168 = load i64, i64* %167, !mcsema_real_eip !102
  store i64 %168, i64* %XCX, !mcsema_real_eip !102
  %RCX_val.157 = load i64, i64* %XCX, !mcsema_real_eip !103
  %169 = add i64 %RCX_val.157, 0, !mcsema_real_eip !103
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !103
  %171 = ptrtoint i64* %170 to i64, !mcsema_real_eip !103
  %172 = inttoptr i64 %171 to i32*, !mcsema_real_eip !103
  %173 = load i32, i32* %172, !mcsema_real_eip !103
  %R8D.158 = bitcast i64* %R8 to i32*, !mcsema_real_eip !103
  %R8D_val.159 = load i32, i32* %R8D.158, !mcsema_real_eip !103
  %174 = add i32 %R8D_val.159, %173, !mcsema_real_eip !103
  %175 = xor i32 %174, %173, !mcsema_real_eip !103
  %176 = xor i32 %175, %R8D_val.159, !mcsema_real_eip !103
  %177 = and i32 %176, 16, !mcsema_real_eip !103
  %178 = icmp ne i32 %177, 0, !mcsema_real_eip !103
  store i1 %178, i1* %AF, !mcsema_real_eip !103
  %179 = lshr i32 %174, 31, !mcsema_real_eip !103
  %180 = trunc i32 %179 to i1, !mcsema_real_eip !103
  store i1 %180, i1* %SF, !mcsema_real_eip !103
  %181 = icmp eq i32 %174, 0, !mcsema_real_eip !103
  store i1 %181, i1* %ZF, !mcsema_real_eip !103
  %182 = xor i32 %173, %R8D_val.159, !mcsema_real_eip !103
  %183 = xor i32 %182, -1, !mcsema_real_eip !103
  %184 = xor i32 %173, %174, !mcsema_real_eip !103
  %185 = and i32 %183, %184, !mcsema_real_eip !103
  %186 = lshr i32 %185, 31, !mcsema_real_eip !103
  %187 = and i32 %186, 1, !mcsema_real_eip !103
  %188 = trunc i32 %187 to i1, !mcsema_real_eip !103
  store i1 %188, i1* %OF, !mcsema_real_eip !103
  %189 = trunc i32 %174 to i8, !mcsema_real_eip !103
  %190 = call i8 @llvm.ctpop.i8(i8 %189), !mcsema_real_eip !103
  %191 = trunc i8 %190 to i1, !mcsema_real_eip !103
  %192 = xor i1 %191, true, !mcsema_real_eip !103
  store i1 %192, i1* %PF, !mcsema_real_eip !103
  %193 = icmp ult i32 %174, %173, !mcsema_real_eip !103
  store i1 %193, i1* %CF, !mcsema_real_eip !103
  %194 = zext i32 %174 to i64, !mcsema_real_eip !103
  store i64 %194, i64* %R8, !mcsema_real_eip !103
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !104
  %195 = add i64 %RBP_val.160, -104, !mcsema_real_eip !104
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !104
  %197 = load i64, i64* %196, !mcsema_real_eip !104
  store i64 %197, i64* %XCX, !mcsema_real_eip !104
  %RCX_val.161 = load i64, i64* %XCX, !mcsema_real_eip !105
  %198 = add i64 %RCX_val.161, 0, !mcsema_real_eip !105
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !105
  %200 = ptrtoint i64* %199 to i64, !mcsema_real_eip !105
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !105
  %202 = load i32, i32* %201, !mcsema_real_eip !105
  %R8D.162 = bitcast i64* %R8 to i32*, !mcsema_real_eip !105
  %R8D_val.163 = load i32, i32* %R8D.162, !mcsema_real_eip !105
  %203 = add i32 %R8D_val.163, %202, !mcsema_real_eip !105
  %204 = xor i32 %203, %202, !mcsema_real_eip !105
  %205 = xor i32 %204, %R8D_val.163, !mcsema_real_eip !105
  %206 = and i32 %205, 16, !mcsema_real_eip !105
  %207 = icmp ne i32 %206, 0, !mcsema_real_eip !105
  store i1 %207, i1* %AF, !mcsema_real_eip !105
  %208 = lshr i32 %203, 31, !mcsema_real_eip !105
  %209 = trunc i32 %208 to i1, !mcsema_real_eip !105
  store i1 %209, i1* %SF, !mcsema_real_eip !105
  %210 = icmp eq i32 %203, 0, !mcsema_real_eip !105
  store i1 %210, i1* %ZF, !mcsema_real_eip !105
  %211 = xor i32 %202, %R8D_val.163, !mcsema_real_eip !105
  %212 = xor i32 %211, -1, !mcsema_real_eip !105
  %213 = xor i32 %202, %203, !mcsema_real_eip !105
  %214 = and i32 %212, %213, !mcsema_real_eip !105
  %215 = lshr i32 %214, 31, !mcsema_real_eip !105
  %216 = and i32 %215, 1, !mcsema_real_eip !105
  %217 = trunc i32 %216 to i1, !mcsema_real_eip !105
  store i1 %217, i1* %OF, !mcsema_real_eip !105
  %218 = trunc i32 %203 to i8, !mcsema_real_eip !105
  %219 = call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !105
  %220 = trunc i8 %219 to i1, !mcsema_real_eip !105
  %221 = xor i1 %220, true, !mcsema_real_eip !105
  store i1 %221, i1* %PF, !mcsema_real_eip !105
  %222 = icmp ult i32 %203, %202, !mcsema_real_eip !105
  store i1 %222, i1* %CF, !mcsema_real_eip !105
  %223 = zext i32 %203 to i64, !mcsema_real_eip !105
  store i64 %223, i64* %R8, !mcsema_real_eip !105
  %ESI.164 = bitcast i64* %XSI to i32*, !mcsema_real_eip !106
  %ESI_val.165 = load i32, i32* %ESI.164, !mcsema_real_eip !106
  %R8D.166 = bitcast i64* %R8 to i32*, !mcsema_real_eip !106
  %R8D_val.167 = load i32, i32* %R8D.166, !mcsema_real_eip !106
  %224 = add i32 %R8D_val.167, %ESI_val.165, !mcsema_real_eip !106
  %225 = xor i32 %224, %ESI_val.165, !mcsema_real_eip !106
  %226 = xor i32 %225, %R8D_val.167, !mcsema_real_eip !106
  %227 = and i32 %226, 16, !mcsema_real_eip !106
  %228 = icmp ne i32 %227, 0, !mcsema_real_eip !106
  store i1 %228, i1* %AF, !mcsema_real_eip !106
  %229 = lshr i32 %224, 31, !mcsema_real_eip !106
  %230 = trunc i32 %229 to i1, !mcsema_real_eip !106
  store i1 %230, i1* %SF, !mcsema_real_eip !106
  %231 = icmp eq i32 %224, 0, !mcsema_real_eip !106
  store i1 %231, i1* %ZF, !mcsema_real_eip !106
  %232 = xor i32 %ESI_val.165, %R8D_val.167, !mcsema_real_eip !106
  %233 = xor i32 %232, -1, !mcsema_real_eip !106
  %234 = xor i32 %ESI_val.165, %224, !mcsema_real_eip !106
  %235 = and i32 %233, %234, !mcsema_real_eip !106
  %236 = lshr i32 %235, 31, !mcsema_real_eip !106
  %237 = and i32 %236, 1, !mcsema_real_eip !106
  %238 = trunc i32 %237 to i1, !mcsema_real_eip !106
  store i1 %238, i1* %OF, !mcsema_real_eip !106
  %239 = trunc i32 %224 to i8, !mcsema_real_eip !106
  %240 = call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !106
  %241 = trunc i8 %240 to i1, !mcsema_real_eip !106
  %242 = xor i1 %241, true, !mcsema_real_eip !106
  store i1 %242, i1* %PF, !mcsema_real_eip !106
  %243 = icmp ult i32 %224, %ESI_val.165, !mcsema_real_eip !106
  store i1 %243, i1* %CF, !mcsema_real_eip !106
  %244 = zext i32 %224 to i64, !mcsema_real_eip !106
  store i64 %244, i64* %XSI, !mcsema_real_eip !106
  %RBP_val.168 = load i64, i64* %XBP, !mcsema_real_eip !107
  %245 = add i64 %RBP_val.168, -112, !mcsema_real_eip !107
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !107
  %247 = load i64, i64* %246, !mcsema_real_eip !107
  store i64 %247, i64* %XCX, !mcsema_real_eip !107
  %RCX_val.169 = load i64, i64* %XCX, !mcsema_real_eip !108
  %248 = add i64 %RCX_val.169, 0, !mcsema_real_eip !108
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !108
  %ESI.170 = bitcast i64* %XSI to i32*, !mcsema_real_eip !108
  %ESI_val.171 = load i32, i32* %ESI.170, !mcsema_real_eip !108
  %250 = ptrtoint i64* %249 to i64, !mcsema_real_eip !108
  %251 = inttoptr i64 %250 to i32*, !mcsema_real_eip !108
  store i32 %ESI_val.171, i32* %251, !mcsema_real_eip !108
  %RBP_val.172 = load i64, i64* %XBP, !mcsema_real_eip !109
  %252 = add i64 %RBP_val.172, -36, !mcsema_real_eip !109
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !109
  %254 = ptrtoint i64* %253 to i64, !mcsema_real_eip !109
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !109
  %256 = load i32, i32* %255, !mcsema_real_eip !109
  %257 = zext i32 %256 to i64, !mcsema_real_eip !109
  store i64 %257, i64* %XSI, !mcsema_real_eip !109
  %RBP_val.173 = load i64, i64* %XBP, !mcsema_real_eip !110
  %258 = add i64 %RBP_val.173, -64, !mcsema_real_eip !110
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !110
  %260 = load i64, i64* %259, !mcsema_real_eip !110
  store i64 %260, i64* %XCX, !mcsema_real_eip !110
  %RCX_val.174 = load i64, i64* %XCX, !mcsema_real_eip !111
  %261 = add i64 %RCX_val.174, 4, !mcsema_real_eip !111
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !111
  %263 = ptrtoint i64* %262 to i64, !mcsema_real_eip !111
  %264 = inttoptr i64 %263 to i32*, !mcsema_real_eip !111
  %265 = load i32, i32* %264, !mcsema_real_eip !111
  %ESI.175 = bitcast i64* %XSI to i32*, !mcsema_real_eip !111
  %ESI_val.176 = load i32, i32* %ESI.175, !mcsema_real_eip !111
  %266 = add i32 %ESI_val.176, %265, !mcsema_real_eip !111
  %267 = xor i32 %266, %265, !mcsema_real_eip !111
  %268 = xor i32 %267, %ESI_val.176, !mcsema_real_eip !111
  %269 = and i32 %268, 16, !mcsema_real_eip !111
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !111
  store i1 %270, i1* %AF, !mcsema_real_eip !111
  %271 = lshr i32 %266, 31, !mcsema_real_eip !111
  %272 = trunc i32 %271 to i1, !mcsema_real_eip !111
  store i1 %272, i1* %SF, !mcsema_real_eip !111
  %273 = icmp eq i32 %266, 0, !mcsema_real_eip !111
  store i1 %273, i1* %ZF, !mcsema_real_eip !111
  %274 = xor i32 %265, %ESI_val.176, !mcsema_real_eip !111
  %275 = xor i32 %274, -1, !mcsema_real_eip !111
  %276 = xor i32 %265, %266, !mcsema_real_eip !111
  %277 = and i32 %275, %276, !mcsema_real_eip !111
  %278 = lshr i32 %277, 31, !mcsema_real_eip !111
  %279 = and i32 %278, 1, !mcsema_real_eip !111
  %280 = trunc i32 %279 to i1, !mcsema_real_eip !111
  store i1 %280, i1* %OF, !mcsema_real_eip !111
  %281 = trunc i32 %266 to i8, !mcsema_real_eip !111
  %282 = call i8 @llvm.ctpop.i8(i8 %281), !mcsema_real_eip !111
  %283 = trunc i8 %282 to i1, !mcsema_real_eip !111
  %284 = xor i1 %283, true, !mcsema_real_eip !111
  store i1 %284, i1* %PF, !mcsema_real_eip !111
  %285 = icmp ult i32 %266, %265, !mcsema_real_eip !111
  store i1 %285, i1* %CF, !mcsema_real_eip !111
  %286 = zext i32 %266 to i64, !mcsema_real_eip !111
  store i64 %286, i64* %XSI, !mcsema_real_eip !111
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !112
  %287 = add i64 %RBP_val.177, -72, !mcsema_real_eip !112
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !112
  %289 = load i64, i64* %288, !mcsema_real_eip !112
  store i64 %289, i64* %XCX, !mcsema_real_eip !112
  %RCX_val.178 = load i64, i64* %XCX, !mcsema_real_eip !113
  %290 = add i64 %RCX_val.178, 4, !mcsema_real_eip !113
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !113
  %292 = ptrtoint i64* %291 to i64, !mcsema_real_eip !113
  %293 = inttoptr i64 %292 to i32*, !mcsema_real_eip !113
  %294 = load i32, i32* %293, !mcsema_real_eip !113
  %ESI.179 = bitcast i64* %XSI to i32*, !mcsema_real_eip !113
  %ESI_val.180 = load i32, i32* %ESI.179, !mcsema_real_eip !113
  %295 = add i32 %ESI_val.180, %294, !mcsema_real_eip !113
  %296 = xor i32 %295, %294, !mcsema_real_eip !113
  %297 = xor i32 %296, %ESI_val.180, !mcsema_real_eip !113
  %298 = and i32 %297, 16, !mcsema_real_eip !113
  %299 = icmp ne i32 %298, 0, !mcsema_real_eip !113
  store i1 %299, i1* %AF, !mcsema_real_eip !113
  %300 = lshr i32 %295, 31, !mcsema_real_eip !113
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !113
  store i1 %301, i1* %SF, !mcsema_real_eip !113
  %302 = icmp eq i32 %295, 0, !mcsema_real_eip !113
  store i1 %302, i1* %ZF, !mcsema_real_eip !113
  %303 = xor i32 %294, %ESI_val.180, !mcsema_real_eip !113
  %304 = xor i32 %303, -1, !mcsema_real_eip !113
  %305 = xor i32 %294, %295, !mcsema_real_eip !113
  %306 = and i32 %304, %305, !mcsema_real_eip !113
  %307 = lshr i32 %306, 31, !mcsema_real_eip !113
  %308 = and i32 %307, 1, !mcsema_real_eip !113
  %309 = trunc i32 %308 to i1, !mcsema_real_eip !113
  store i1 %309, i1* %OF, !mcsema_real_eip !113
  %310 = trunc i32 %295 to i8, !mcsema_real_eip !113
  %311 = call i8 @llvm.ctpop.i8(i8 %310), !mcsema_real_eip !113
  %312 = trunc i8 %311 to i1, !mcsema_real_eip !113
  %313 = xor i1 %312, true, !mcsema_real_eip !113
  store i1 %313, i1* %PF, !mcsema_real_eip !113
  %314 = icmp ult i32 %295, %294, !mcsema_real_eip !113
  store i1 %314, i1* %CF, !mcsema_real_eip !113
  %315 = zext i32 %295 to i64, !mcsema_real_eip !113
  store i64 %315, i64* %XSI, !mcsema_real_eip !113
  %RAX_val.181 = load i64, i64* %XAX, !mcsema_real_eip !114
  %316 = add i64 %RAX_val.181, 4, !mcsema_real_eip !114
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !114
  %318 = ptrtoint i64* %317 to i64, !mcsema_real_eip !114
  %319 = inttoptr i64 %318 to i32*, !mcsema_real_eip !114
  %320 = load i32, i32* %319, !mcsema_real_eip !114
  %321 = zext i32 %320 to i64, !mcsema_real_eip !114
  store i64 %321, i64* %R8, !mcsema_real_eip !114
  %RBP_val.182 = load i64, i64* %XBP, !mcsema_real_eip !115
  %322 = add i64 %RBP_val.182, -96, !mcsema_real_eip !115
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !115
  %324 = load i64, i64* %323, !mcsema_real_eip !115
  store i64 %324, i64* %XCX, !mcsema_real_eip !115
  %RCX_val.183 = load i64, i64* %XCX, !mcsema_real_eip !116
  %325 = add i64 %RCX_val.183, 4, !mcsema_real_eip !116
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !116
  %327 = ptrtoint i64* %326 to i64, !mcsema_real_eip !116
  %328 = inttoptr i64 %327 to i32*, !mcsema_real_eip !116
  %329 = load i32, i32* %328, !mcsema_real_eip !116
  %R8D.184 = bitcast i64* %R8 to i32*, !mcsema_real_eip !116
  %R8D_val.185 = load i32, i32* %R8D.184, !mcsema_real_eip !116
  %330 = add i32 %R8D_val.185, %329, !mcsema_real_eip !116
  %331 = xor i32 %330, %329, !mcsema_real_eip !116
  %332 = xor i32 %331, %R8D_val.185, !mcsema_real_eip !116
  %333 = and i32 %332, 16, !mcsema_real_eip !116
  %334 = icmp ne i32 %333, 0, !mcsema_real_eip !116
  store i1 %334, i1* %AF, !mcsema_real_eip !116
  %335 = lshr i32 %330, 31, !mcsema_real_eip !116
  %336 = trunc i32 %335 to i1, !mcsema_real_eip !116
  store i1 %336, i1* %SF, !mcsema_real_eip !116
  %337 = icmp eq i32 %330, 0, !mcsema_real_eip !116
  store i1 %337, i1* %ZF, !mcsema_real_eip !116
  %338 = xor i32 %329, %R8D_val.185, !mcsema_real_eip !116
  %339 = xor i32 %338, -1, !mcsema_real_eip !116
  %340 = xor i32 %329, %330, !mcsema_real_eip !116
  %341 = and i32 %339, %340, !mcsema_real_eip !116
  %342 = lshr i32 %341, 31, !mcsema_real_eip !116
  %343 = and i32 %342, 1, !mcsema_real_eip !116
  %344 = trunc i32 %343 to i1, !mcsema_real_eip !116
  store i1 %344, i1* %OF, !mcsema_real_eip !116
  %345 = trunc i32 %330 to i8, !mcsema_real_eip !116
  %346 = call i8 @llvm.ctpop.i8(i8 %345), !mcsema_real_eip !116
  %347 = trunc i8 %346 to i1, !mcsema_real_eip !116
  %348 = xor i1 %347, true, !mcsema_real_eip !116
  store i1 %348, i1* %PF, !mcsema_real_eip !116
  %349 = icmp ult i32 %330, %329, !mcsema_real_eip !116
  store i1 %349, i1* %CF, !mcsema_real_eip !116
  %350 = zext i32 %330 to i64, !mcsema_real_eip !116
  store i64 %350, i64* %R8, !mcsema_real_eip !116
  %RBP_val.186 = load i64, i64* %XBP, !mcsema_real_eip !117
  %351 = add i64 %RBP_val.186, -104, !mcsema_real_eip !117
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !117
  %353 = load i64, i64* %352, !mcsema_real_eip !117
  store i64 %353, i64* %XCX, !mcsema_real_eip !117
  %RCX_val.187 = load i64, i64* %XCX, !mcsema_real_eip !118
  %354 = add i64 %RCX_val.187, 4, !mcsema_real_eip !118
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !118
  %356 = ptrtoint i64* %355 to i64, !mcsema_real_eip !118
  %357 = inttoptr i64 %356 to i32*, !mcsema_real_eip !118
  %358 = load i32, i32* %357, !mcsema_real_eip !118
  %R8D.188 = bitcast i64* %R8 to i32*, !mcsema_real_eip !118
  %R8D_val.189 = load i32, i32* %R8D.188, !mcsema_real_eip !118
  %359 = add i32 %R8D_val.189, %358, !mcsema_real_eip !118
  %360 = xor i32 %359, %358, !mcsema_real_eip !118
  %361 = xor i32 %360, %R8D_val.189, !mcsema_real_eip !118
  %362 = and i32 %361, 16, !mcsema_real_eip !118
  %363 = icmp ne i32 %362, 0, !mcsema_real_eip !118
  store i1 %363, i1* %AF, !mcsema_real_eip !118
  %364 = lshr i32 %359, 31, !mcsema_real_eip !118
  %365 = trunc i32 %364 to i1, !mcsema_real_eip !118
  store i1 %365, i1* %SF, !mcsema_real_eip !118
  %366 = icmp eq i32 %359, 0, !mcsema_real_eip !118
  store i1 %366, i1* %ZF, !mcsema_real_eip !118
  %367 = xor i32 %358, %R8D_val.189, !mcsema_real_eip !118
  %368 = xor i32 %367, -1, !mcsema_real_eip !118
  %369 = xor i32 %358, %359, !mcsema_real_eip !118
  %370 = and i32 %368, %369, !mcsema_real_eip !118
  %371 = lshr i32 %370, 31, !mcsema_real_eip !118
  %372 = and i32 %371, 1, !mcsema_real_eip !118
  %373 = trunc i32 %372 to i1, !mcsema_real_eip !118
  store i1 %373, i1* %OF, !mcsema_real_eip !118
  %374 = trunc i32 %359 to i8, !mcsema_real_eip !118
  %375 = call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !118
  %376 = trunc i8 %375 to i1, !mcsema_real_eip !118
  %377 = xor i1 %376, true, !mcsema_real_eip !118
  store i1 %377, i1* %PF, !mcsema_real_eip !118
  %378 = icmp ult i32 %359, %358, !mcsema_real_eip !118
  store i1 %378, i1* %CF, !mcsema_real_eip !118
  %379 = zext i32 %359 to i64, !mcsema_real_eip !118
  store i64 %379, i64* %R8, !mcsema_real_eip !118
  %ESI.190 = bitcast i64* %XSI to i32*, !mcsema_real_eip !119
  %ESI_val.191 = load i32, i32* %ESI.190, !mcsema_real_eip !119
  %R8D.192 = bitcast i64* %R8 to i32*, !mcsema_real_eip !119
  %R8D_val.193 = load i32, i32* %R8D.192, !mcsema_real_eip !119
  %380 = add i32 %R8D_val.193, %ESI_val.191, !mcsema_real_eip !119
  %381 = xor i32 %380, %ESI_val.191, !mcsema_real_eip !119
  %382 = xor i32 %381, %R8D_val.193, !mcsema_real_eip !119
  %383 = and i32 %382, 16, !mcsema_real_eip !119
  %384 = icmp ne i32 %383, 0, !mcsema_real_eip !119
  store i1 %384, i1* %AF, !mcsema_real_eip !119
  %385 = lshr i32 %380, 31, !mcsema_real_eip !119
  %386 = trunc i32 %385 to i1, !mcsema_real_eip !119
  store i1 %386, i1* %SF, !mcsema_real_eip !119
  %387 = icmp eq i32 %380, 0, !mcsema_real_eip !119
  store i1 %387, i1* %ZF, !mcsema_real_eip !119
  %388 = xor i32 %ESI_val.191, %R8D_val.193, !mcsema_real_eip !119
  %389 = xor i32 %388, -1, !mcsema_real_eip !119
  %390 = xor i32 %ESI_val.191, %380, !mcsema_real_eip !119
  %391 = and i32 %389, %390, !mcsema_real_eip !119
  %392 = lshr i32 %391, 31, !mcsema_real_eip !119
  %393 = and i32 %392, 1, !mcsema_real_eip !119
  %394 = trunc i32 %393 to i1, !mcsema_real_eip !119
  store i1 %394, i1* %OF, !mcsema_real_eip !119
  %395 = trunc i32 %380 to i8, !mcsema_real_eip !119
  %396 = call i8 @llvm.ctpop.i8(i8 %395), !mcsema_real_eip !119
  %397 = trunc i8 %396 to i1, !mcsema_real_eip !119
  %398 = xor i1 %397, true, !mcsema_real_eip !119
  store i1 %398, i1* %PF, !mcsema_real_eip !119
  %399 = icmp ult i32 %380, %ESI_val.191, !mcsema_real_eip !119
  store i1 %399, i1* %CF, !mcsema_real_eip !119
  %400 = zext i32 %380 to i64, !mcsema_real_eip !119
  store i64 %400, i64* %XSI, !mcsema_real_eip !119
  %RBP_val.194 = load i64, i64* %XBP, !mcsema_real_eip !120
  %401 = add i64 %RBP_val.194, -112, !mcsema_real_eip !120
  %402 = inttoptr i64 %401 to i64*, !mcsema_real_eip !120
  %403 = load i64, i64* %402, !mcsema_real_eip !120
  store i64 %403, i64* %XCX, !mcsema_real_eip !120
  %RCX_val.195 = load i64, i64* %XCX, !mcsema_real_eip !121
  %404 = add i64 %RCX_val.195, 4, !mcsema_real_eip !121
  %405 = inttoptr i64 %404 to i64*, !mcsema_real_eip !121
  %ESI.196 = bitcast i64* %XSI to i32*, !mcsema_real_eip !121
  %ESI_val.197 = load i32, i32* %ESI.196, !mcsema_real_eip !121
  %406 = ptrtoint i64* %405 to i64, !mcsema_real_eip !121
  %407 = inttoptr i64 %406 to i32*, !mcsema_real_eip !121
  store i32 %ESI_val.197, i32* %407, !mcsema_real_eip !121
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !122
  %408 = add i64 %RBP_val.198, -32, !mcsema_real_eip !122
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !122
  %410 = ptrtoint i64* %409 to i64, !mcsema_real_eip !122
  %411 = inttoptr i64 %410 to i32*, !mcsema_real_eip !122
  %412 = load i32, i32* %411, !mcsema_real_eip !122
  %413 = zext i32 %412 to i64, !mcsema_real_eip !122
  store i64 %413, i64* %XSI, !mcsema_real_eip !122
  %RBP_val.199 = load i64, i64* %XBP, !mcsema_real_eip !123
  %414 = add i64 %RBP_val.199, -64, !mcsema_real_eip !123
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !123
  %416 = load i64, i64* %415, !mcsema_real_eip !123
  store i64 %416, i64* %XCX, !mcsema_real_eip !123
  %RCX_val.200 = load i64, i64* %XCX, !mcsema_real_eip !124
  %417 = add i64 %RCX_val.200, 8, !mcsema_real_eip !124
  %418 = inttoptr i64 %417 to i64*, !mcsema_real_eip !124
  %419 = ptrtoint i64* %418 to i64, !mcsema_real_eip !124
  %420 = inttoptr i64 %419 to i32*, !mcsema_real_eip !124
  %421 = load i32, i32* %420, !mcsema_real_eip !124
  %ESI.201 = bitcast i64* %XSI to i32*, !mcsema_real_eip !124
  %ESI_val.202 = load i32, i32* %ESI.201, !mcsema_real_eip !124
  %422 = add i32 %ESI_val.202, %421, !mcsema_real_eip !124
  %423 = xor i32 %422, %421, !mcsema_real_eip !124
  %424 = xor i32 %423, %ESI_val.202, !mcsema_real_eip !124
  %425 = and i32 %424, 16, !mcsema_real_eip !124
  %426 = icmp ne i32 %425, 0, !mcsema_real_eip !124
  store i1 %426, i1* %AF, !mcsema_real_eip !124
  %427 = lshr i32 %422, 31, !mcsema_real_eip !124
  %428 = trunc i32 %427 to i1, !mcsema_real_eip !124
  store i1 %428, i1* %SF, !mcsema_real_eip !124
  %429 = icmp eq i32 %422, 0, !mcsema_real_eip !124
  store i1 %429, i1* %ZF, !mcsema_real_eip !124
  %430 = xor i32 %421, %ESI_val.202, !mcsema_real_eip !124
  %431 = xor i32 %430, -1, !mcsema_real_eip !124
  %432 = xor i32 %421, %422, !mcsema_real_eip !124
  %433 = and i32 %431, %432, !mcsema_real_eip !124
  %434 = lshr i32 %433, 31, !mcsema_real_eip !124
  %435 = and i32 %434, 1, !mcsema_real_eip !124
  %436 = trunc i32 %435 to i1, !mcsema_real_eip !124
  store i1 %436, i1* %OF, !mcsema_real_eip !124
  %437 = trunc i32 %422 to i8, !mcsema_real_eip !124
  %438 = call i8 @llvm.ctpop.i8(i8 %437), !mcsema_real_eip !124
  %439 = trunc i8 %438 to i1, !mcsema_real_eip !124
  %440 = xor i1 %439, true, !mcsema_real_eip !124
  store i1 %440, i1* %PF, !mcsema_real_eip !124
  %441 = icmp ult i32 %422, %421, !mcsema_real_eip !124
  store i1 %441, i1* %CF, !mcsema_real_eip !124
  %442 = zext i32 %422 to i64, !mcsema_real_eip !124
  store i64 %442, i64* %XSI, !mcsema_real_eip !124
  %RBP_val.203 = load i64, i64* %XBP, !mcsema_real_eip !125
  %443 = add i64 %RBP_val.203, -72, !mcsema_real_eip !125
  %444 = inttoptr i64 %443 to i64*, !mcsema_real_eip !125
  %445 = load i64, i64* %444, !mcsema_real_eip !125
  store i64 %445, i64* %XCX, !mcsema_real_eip !125
  %RCX_val.204 = load i64, i64* %XCX, !mcsema_real_eip !126
  %446 = add i64 %RCX_val.204, 8, !mcsema_real_eip !126
  %447 = inttoptr i64 %446 to i64*, !mcsema_real_eip !126
  %448 = ptrtoint i64* %447 to i64, !mcsema_real_eip !126
  %449 = inttoptr i64 %448 to i32*, !mcsema_real_eip !126
  %450 = load i32, i32* %449, !mcsema_real_eip !126
  %ESI.205 = bitcast i64* %XSI to i32*, !mcsema_real_eip !126
  %ESI_val.206 = load i32, i32* %ESI.205, !mcsema_real_eip !126
  %451 = add i32 %ESI_val.206, %450, !mcsema_real_eip !126
  %452 = xor i32 %451, %450, !mcsema_real_eip !126
  %453 = xor i32 %452, %ESI_val.206, !mcsema_real_eip !126
  %454 = and i32 %453, 16, !mcsema_real_eip !126
  %455 = icmp ne i32 %454, 0, !mcsema_real_eip !126
  store i1 %455, i1* %AF, !mcsema_real_eip !126
  %456 = lshr i32 %451, 31, !mcsema_real_eip !126
  %457 = trunc i32 %456 to i1, !mcsema_real_eip !126
  store i1 %457, i1* %SF, !mcsema_real_eip !126
  %458 = icmp eq i32 %451, 0, !mcsema_real_eip !126
  store i1 %458, i1* %ZF, !mcsema_real_eip !126
  %459 = xor i32 %450, %ESI_val.206, !mcsema_real_eip !126
  %460 = xor i32 %459, -1, !mcsema_real_eip !126
  %461 = xor i32 %450, %451, !mcsema_real_eip !126
  %462 = and i32 %460, %461, !mcsema_real_eip !126
  %463 = lshr i32 %462, 31, !mcsema_real_eip !126
  %464 = and i32 %463, 1, !mcsema_real_eip !126
  %465 = trunc i32 %464 to i1, !mcsema_real_eip !126
  store i1 %465, i1* %OF, !mcsema_real_eip !126
  %466 = trunc i32 %451 to i8, !mcsema_real_eip !126
  %467 = call i8 @llvm.ctpop.i8(i8 %466), !mcsema_real_eip !126
  %468 = trunc i8 %467 to i1, !mcsema_real_eip !126
  %469 = xor i1 %468, true, !mcsema_real_eip !126
  store i1 %469, i1* %PF, !mcsema_real_eip !126
  %470 = icmp ult i32 %451, %450, !mcsema_real_eip !126
  store i1 %470, i1* %CF, !mcsema_real_eip !126
  %471 = zext i32 %451 to i64, !mcsema_real_eip !126
  store i64 %471, i64* %XSI, !mcsema_real_eip !126
  %RAX_val.207 = load i64, i64* %XAX, !mcsema_real_eip !127
  %472 = add i64 %RAX_val.207, 8, !mcsema_real_eip !127
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !127
  %474 = ptrtoint i64* %473 to i64, !mcsema_real_eip !127
  %475 = inttoptr i64 %474 to i32*, !mcsema_real_eip !127
  %476 = load i32, i32* %475, !mcsema_real_eip !127
  %477 = zext i32 %476 to i64, !mcsema_real_eip !127
  store i64 %477, i64* %R8, !mcsema_real_eip !127
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !128
  %478 = add i64 %RBP_val.208, -96, !mcsema_real_eip !128
  %479 = inttoptr i64 %478 to i64*, !mcsema_real_eip !128
  %480 = load i64, i64* %479, !mcsema_real_eip !128
  store i64 %480, i64* %XCX, !mcsema_real_eip !128
  %RCX_val.209 = load i64, i64* %XCX, !mcsema_real_eip !129
  %481 = add i64 %RCX_val.209, 8, !mcsema_real_eip !129
  %482 = inttoptr i64 %481 to i64*, !mcsema_real_eip !129
  %483 = ptrtoint i64* %482 to i64, !mcsema_real_eip !129
  %484 = inttoptr i64 %483 to i32*, !mcsema_real_eip !129
  %485 = load i32, i32* %484, !mcsema_real_eip !129
  %R8D.210 = bitcast i64* %R8 to i32*, !mcsema_real_eip !129
  %R8D_val.211 = load i32, i32* %R8D.210, !mcsema_real_eip !129
  %486 = add i32 %R8D_val.211, %485, !mcsema_real_eip !129
  %487 = xor i32 %486, %485, !mcsema_real_eip !129
  %488 = xor i32 %487, %R8D_val.211, !mcsema_real_eip !129
  %489 = and i32 %488, 16, !mcsema_real_eip !129
  %490 = icmp ne i32 %489, 0, !mcsema_real_eip !129
  store i1 %490, i1* %AF, !mcsema_real_eip !129
  %491 = lshr i32 %486, 31, !mcsema_real_eip !129
  %492 = trunc i32 %491 to i1, !mcsema_real_eip !129
  store i1 %492, i1* %SF, !mcsema_real_eip !129
  %493 = icmp eq i32 %486, 0, !mcsema_real_eip !129
  store i1 %493, i1* %ZF, !mcsema_real_eip !129
  %494 = xor i32 %485, %R8D_val.211, !mcsema_real_eip !129
  %495 = xor i32 %494, -1, !mcsema_real_eip !129
  %496 = xor i32 %485, %486, !mcsema_real_eip !129
  %497 = and i32 %495, %496, !mcsema_real_eip !129
  %498 = lshr i32 %497, 31, !mcsema_real_eip !129
  %499 = and i32 %498, 1, !mcsema_real_eip !129
  %500 = trunc i32 %499 to i1, !mcsema_real_eip !129
  store i1 %500, i1* %OF, !mcsema_real_eip !129
  %501 = trunc i32 %486 to i8, !mcsema_real_eip !129
  %502 = call i8 @llvm.ctpop.i8(i8 %501), !mcsema_real_eip !129
  %503 = trunc i8 %502 to i1, !mcsema_real_eip !129
  %504 = xor i1 %503, true, !mcsema_real_eip !129
  store i1 %504, i1* %PF, !mcsema_real_eip !129
  %505 = icmp ult i32 %486, %485, !mcsema_real_eip !129
  store i1 %505, i1* %CF, !mcsema_real_eip !129
  %506 = zext i32 %486 to i64, !mcsema_real_eip !129
  store i64 %506, i64* %R8, !mcsema_real_eip !129
  %RBP_val.212 = load i64, i64* %XBP, !mcsema_real_eip !130
  %507 = add i64 %RBP_val.212, -104, !mcsema_real_eip !130
  %508 = inttoptr i64 %507 to i64*, !mcsema_real_eip !130
  %509 = load i64, i64* %508, !mcsema_real_eip !130
  store i64 %509, i64* %XCX, !mcsema_real_eip !130
  %RCX_val.213 = load i64, i64* %XCX, !mcsema_real_eip !131
  %510 = add i64 %RCX_val.213, 8, !mcsema_real_eip !131
  %511 = inttoptr i64 %510 to i64*, !mcsema_real_eip !131
  %512 = ptrtoint i64* %511 to i64, !mcsema_real_eip !131
  %513 = inttoptr i64 %512 to i32*, !mcsema_real_eip !131
  %514 = load i32, i32* %513, !mcsema_real_eip !131
  %R8D.214 = bitcast i64* %R8 to i32*, !mcsema_real_eip !131
  %R8D_val.215 = load i32, i32* %R8D.214, !mcsema_real_eip !131
  %515 = add i32 %R8D_val.215, %514, !mcsema_real_eip !131
  %516 = xor i32 %515, %514, !mcsema_real_eip !131
  %517 = xor i32 %516, %R8D_val.215, !mcsema_real_eip !131
  %518 = and i32 %517, 16, !mcsema_real_eip !131
  %519 = icmp ne i32 %518, 0, !mcsema_real_eip !131
  store i1 %519, i1* %AF, !mcsema_real_eip !131
  %520 = lshr i32 %515, 31, !mcsema_real_eip !131
  %521 = trunc i32 %520 to i1, !mcsema_real_eip !131
  store i1 %521, i1* %SF, !mcsema_real_eip !131
  %522 = icmp eq i32 %515, 0, !mcsema_real_eip !131
  store i1 %522, i1* %ZF, !mcsema_real_eip !131
  %523 = xor i32 %514, %R8D_val.215, !mcsema_real_eip !131
  %524 = xor i32 %523, -1, !mcsema_real_eip !131
  %525 = xor i32 %514, %515, !mcsema_real_eip !131
  %526 = and i32 %524, %525, !mcsema_real_eip !131
  %527 = lshr i32 %526, 31, !mcsema_real_eip !131
  %528 = and i32 %527, 1, !mcsema_real_eip !131
  %529 = trunc i32 %528 to i1, !mcsema_real_eip !131
  store i1 %529, i1* %OF, !mcsema_real_eip !131
  %530 = trunc i32 %515 to i8, !mcsema_real_eip !131
  %531 = call i8 @llvm.ctpop.i8(i8 %530), !mcsema_real_eip !131
  %532 = trunc i8 %531 to i1, !mcsema_real_eip !131
  %533 = xor i1 %532, true, !mcsema_real_eip !131
  store i1 %533, i1* %PF, !mcsema_real_eip !131
  %534 = icmp ult i32 %515, %514, !mcsema_real_eip !131
  store i1 %534, i1* %CF, !mcsema_real_eip !131
  %535 = zext i32 %515 to i64, !mcsema_real_eip !131
  store i64 %535, i64* %R8, !mcsema_real_eip !131
  %ESI.216 = bitcast i64* %XSI to i32*, !mcsema_real_eip !132
  %ESI_val.217 = load i32, i32* %ESI.216, !mcsema_real_eip !132
  %R8D.218 = bitcast i64* %R8 to i32*, !mcsema_real_eip !132
  %R8D_val.219 = load i32, i32* %R8D.218, !mcsema_real_eip !132
  %536 = add i32 %R8D_val.219, %ESI_val.217, !mcsema_real_eip !132
  %537 = xor i32 %536, %ESI_val.217, !mcsema_real_eip !132
  %538 = xor i32 %537, %R8D_val.219, !mcsema_real_eip !132
  %539 = and i32 %538, 16, !mcsema_real_eip !132
  %540 = icmp ne i32 %539, 0, !mcsema_real_eip !132
  store i1 %540, i1* %AF, !mcsema_real_eip !132
  %541 = lshr i32 %536, 31, !mcsema_real_eip !132
  %542 = trunc i32 %541 to i1, !mcsema_real_eip !132
  store i1 %542, i1* %SF, !mcsema_real_eip !132
  %543 = icmp eq i32 %536, 0, !mcsema_real_eip !132
  store i1 %543, i1* %ZF, !mcsema_real_eip !132
  %544 = xor i32 %ESI_val.217, %R8D_val.219, !mcsema_real_eip !132
  %545 = xor i32 %544, -1, !mcsema_real_eip !132
  %546 = xor i32 %ESI_val.217, %536, !mcsema_real_eip !132
  %547 = and i32 %545, %546, !mcsema_real_eip !132
  %548 = lshr i32 %547, 31, !mcsema_real_eip !132
  %549 = and i32 %548, 1, !mcsema_real_eip !132
  %550 = trunc i32 %549 to i1, !mcsema_real_eip !132
  store i1 %550, i1* %OF, !mcsema_real_eip !132
  %551 = trunc i32 %536 to i8, !mcsema_real_eip !132
  %552 = call i8 @llvm.ctpop.i8(i8 %551), !mcsema_real_eip !132
  %553 = trunc i8 %552 to i1, !mcsema_real_eip !132
  %554 = xor i1 %553, true, !mcsema_real_eip !132
  store i1 %554, i1* %PF, !mcsema_real_eip !132
  %555 = icmp ult i32 %536, %ESI_val.217, !mcsema_real_eip !132
  store i1 %555, i1* %CF, !mcsema_real_eip !132
  %556 = zext i32 %536 to i64, !mcsema_real_eip !132
  store i64 %556, i64* %XSI, !mcsema_real_eip !132
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !133
  %557 = add i64 %RBP_val.220, -112, !mcsema_real_eip !133
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !133
  %559 = load i64, i64* %558, !mcsema_real_eip !133
  store i64 %559, i64* %XCX, !mcsema_real_eip !133
  %RCX_val.221 = load i64, i64* %XCX, !mcsema_real_eip !134
  %560 = add i64 %RCX_val.221, 8, !mcsema_real_eip !134
  %561 = inttoptr i64 %560 to i64*, !mcsema_real_eip !134
  %ESI.222 = bitcast i64* %XSI to i32*, !mcsema_real_eip !134
  %ESI_val.223 = load i32, i32* %ESI.222, !mcsema_real_eip !134
  %562 = ptrtoint i64* %561 to i64, !mcsema_real_eip !134
  %563 = inttoptr i64 %562 to i32*, !mcsema_real_eip !134
  store i32 %ESI_val.223, i32* %563, !mcsema_real_eip !134
  %RBP_val.224 = load i64, i64* %XBP, !mcsema_real_eip !135
  %564 = add i64 %RBP_val.224, -112, !mcsema_real_eip !135
  %565 = inttoptr i64 %564 to i64*, !mcsema_real_eip !135
  %566 = load i64, i64* %565, !mcsema_real_eip !135
  store i64 %566, i64* %XAX, !mcsema_real_eip !135
  %RSP_val.225 = load i64, i64* %XSP, !mcsema_real_eip !136
  %567 = add i64 104, %RSP_val.225, !mcsema_real_eip !136
  %568 = xor i64 %567, %RSP_val.225, !mcsema_real_eip !136
  %569 = xor i64 %568, 104, !mcsema_real_eip !136
  %570 = and i64 %569, 16, !mcsema_real_eip !136
  %571 = icmp ne i64 %570, 0, !mcsema_real_eip !136
  store i1 %571, i1* %AF, !mcsema_real_eip !136
  %572 = lshr i64 %567, 63, !mcsema_real_eip !136
  %573 = trunc i64 %572 to i1, !mcsema_real_eip !136
  store i1 %573, i1* %SF, !mcsema_real_eip !136
  %574 = icmp eq i64 %567, 0, !mcsema_real_eip !136
  store i1 %574, i1* %ZF, !mcsema_real_eip !136
  %575 = xor i64 %RSP_val.225, 104, !mcsema_real_eip !136
  %576 = xor i64 %575, -1, !mcsema_real_eip !136
  %577 = xor i64 %RSP_val.225, %567, !mcsema_real_eip !136
  %578 = and i64 %576, %577, !mcsema_real_eip !136
  %579 = lshr i64 %578, 63, !mcsema_real_eip !136
  %580 = and i64 %579, 1, !mcsema_real_eip !136
  %581 = trunc i64 %580 to i1, !mcsema_real_eip !136
  store i1 %581, i1* %OF, !mcsema_real_eip !136
  %582 = trunc i64 %567 to i8, !mcsema_real_eip !136
  %583 = call i8 @llvm.ctpop.i8(i8 %582), !mcsema_real_eip !136
  %584 = trunc i8 %583 to i1, !mcsema_real_eip !136
  %585 = xor i1 %584, true, !mcsema_real_eip !136
  store i1 %585, i1* %PF, !mcsema_real_eip !136
  %586 = icmp ult i64 %567, %RSP_val.225, !mcsema_real_eip !136
  store i1 %586, i1* %CF, !mcsema_real_eip !136
  store i64 %567, i64* %XSP, !mcsema_real_eip !136
  %RSP_val.226 = load i64, i64* %XSP, !mcsema_real_eip !137
  %587 = inttoptr i64 %RSP_val.226 to i64*, !mcsema_real_eip !137
  %588 = load i64, i64* %587, !mcsema_real_eip !137
  store i64 %588, i64* %XBX, !mcsema_real_eip !137
  %589 = add i64 %RSP_val.226, 8, !mcsema_real_eip !137
  store i64 %589, i64* %XSP, !mcsema_real_eip !137
  %RSP_val.227 = load i64, i64* %XSP, !mcsema_real_eip !138
  %590 = inttoptr i64 %RSP_val.227 to i64*, !mcsema_real_eip !138
  %591 = load i64, i64* %590, !mcsema_real_eip !138
  store i64 %591, i64* %R14, !mcsema_real_eip !138
  %592 = add i64 %RSP_val.227, 8, !mcsema_real_eip !138
  store i64 %592, i64* %XSP, !mcsema_real_eip !138
  %RSP_val.228 = load i64, i64* %XSP, !mcsema_real_eip !139
  %593 = inttoptr i64 %RSP_val.228 to i64*, !mcsema_real_eip !139
  %594 = load i64, i64* %593, !mcsema_real_eip !139
  store i64 %594, i64* %R15, !mcsema_real_eip !139
  %595 = add i64 %RSP_val.228, 8, !mcsema_real_eip !139
  store i64 %595, i64* %XSP, !mcsema_real_eip !139
  %RSP_val.229 = load i64, i64* %XSP, !mcsema_real_eip !140
  %596 = inttoptr i64 %RSP_val.229 to i64*, !mcsema_real_eip !140
  %597 = load i64, i64* %596, !mcsema_real_eip !140
  store i64 %597, i64* %XBP, !mcsema_real_eip !140
  %598 = add i64 %RSP_val.229, 8, !mcsema_real_eip !140
  store i64 %598, i64* %XSP, !mcsema_real_eip !140
  %RSP_val.230 = load i64, i64* %XSP, !mcsema_real_eip !141
  %599 = add i64 %RSP_val.230, 8, !mcsema_real_eip !141
  %600 = inttoptr i64 %RSP_val.230 to i64*, !mcsema_real_eip !141
  %601 = load i64, i64* %600, !mcsema_real_eip !141
  store i64 %601, i64* %XIP, !mcsema_real_eip !141
  store i64 %599, i64* %XSP, !mcsema_real_eip !141
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
