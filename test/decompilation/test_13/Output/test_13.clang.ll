; ModuleID = 'Output/test_13.clang.bc'
source_filename = "Output/test_13.clang.bc"
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
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
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
module asm "  .globl sub_0;"
module asm "  .globl doWork;"
module asm "  .type doWork,@function"
module asm "doWork:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doWork,0b-doWork;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x180 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\83\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"l\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00T\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"|\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
define internal x86_64_sysvcc void @checkFn(%RegState*) #1 {
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
  br label %block_0x90, !mcsema_real_eip !2

block_0x90:                                       ; preds = %entry
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
  %22 = add i64 %RBP_val.4, -8, !mcsema_real_eip !5
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %23, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %24 = add i64 %RBP_val.6, -12, !mcsema_real_eip !6
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !6
  %26 = ptrtoint i64* %25 to i64, !mcsema_real_eip !6
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !6
  store i32 1, i32* %27, !mcsema_real_eip !6
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !7
  %28 = add i64 %RBP_val.7, -8, !mcsema_real_eip !7
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !7
  %30 = load i64, i64* %29, !mcsema_real_eip !7
  store i64 %30, i64* %XDI, !mcsema_real_eip !7
  %RDI_val.8 = load i64, i64* %XDI, !mcsema_real_eip !8
  %RSP_val.9 = load i64, i64* %XSP, !mcsema_real_eip !8
  %31 = sub i64 %RSP_val.9, 8, !mcsema_real_eip !8
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !8
  store i64 -2415393069852865332, i64* %32, !mcsema_real_eip !8
  store i64 %31, i64* %XSP, !mcsema_real_eip !8
  %33 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.8), !mcsema_real_eip !8
  store i64 %33, i64* %XAX, !mcsema_real_eip !8
  %EAX.10 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.11 = load i32, i32* %EAX.10, !mcsema_real_eip !9
  %34 = zext i32 %EAX_val.11 to i64, !mcsema_real_eip !9
  store i64 %34, i64* %XCX, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %35 = add i64 %RBP_val.12, -16, !mcsema_real_eip !10
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !10
  %ECX.13 = bitcast i64* %XCX to i32*, !mcsema_real_eip !10
  %ECX_val.14 = load i32, i32* %ECX.13, !mcsema_real_eip !10
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !10
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !10
  store i32 %ECX_val.14, i32* %38, !mcsema_real_eip !10
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %39 = add i64 %RBP_val.15, -16, !mcsema_real_eip !11
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !11
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !11
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !11
  %43 = load i32, i32* %42, !mcsema_real_eip !11
  %44 = sub i32 %43, 1, !mcsema_real_eip !11
  %45 = xor i32 %44, %43, !mcsema_real_eip !11
  %46 = xor i32 %45, 1, !mcsema_real_eip !11
  %47 = and i32 %46, 16, !mcsema_real_eip !11
  %48 = icmp ne i32 %47, 0, !mcsema_real_eip !11
  store i1 %48, i1* %AF, !mcsema_real_eip !11
  %49 = trunc i32 %44 to i8, !mcsema_real_eip !11
  %50 = call i8 @llvm.ctpop.i8(i8 %49), !mcsema_real_eip !11
  %51 = trunc i8 %50 to i1, !mcsema_real_eip !11
  %52 = xor i1 %51, true, !mcsema_real_eip !11
  store i1 %52, i1* %PF, !mcsema_real_eip !11
  %53 = icmp eq i32 %44, 0, !mcsema_real_eip !11
  store i1 %53, i1* %ZF, !mcsema_real_eip !11
  %54 = lshr i32 %44, 31, !mcsema_real_eip !11
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !11
  store i1 %55, i1* %SF, !mcsema_real_eip !11
  %56 = icmp ult i32 %43, 1, !mcsema_real_eip !11
  store i1 %56, i1* %CF, !mcsema_real_eip !11
  %57 = xor i32 %43, 1, !mcsema_real_eip !11
  %58 = xor i32 %43, %44, !mcsema_real_eip !11
  %59 = and i32 %57, %58, !mcsema_real_eip !11
  %60 = lshr i32 %59, 31, !mcsema_real_eip !11
  %61 = trunc i32 %60 to i1, !mcsema_real_eip !11
  store i1 %61, i1* %OF, !mcsema_real_eip !11
  %62 = load i1, i1* %OF, !mcsema_real_eip !12
  %63 = load i1, i1* %SF, !mcsema_real_eip !12
  %64 = icmp eq i1 %63, %62, !mcsema_real_eip !12
  %65 = icmp eq i1 %64, false, !mcsema_real_eip !12
  %66 = load i1, i1* %ZF, !mcsema_real_eip !12
  %67 = icmp eq i1 %66, true, !mcsema_real_eip !12
  %68 = or i1 %67, %65, !mcsema_real_eip !12
  br i1 %68, label %block_0xf3, label %block_0xbb, !mcsema_real_eip !12

block_0xbb:                                       ; preds = %block_0x90
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !13
  %69 = add i64 %RBP_val.16, -8, !mcsema_real_eip !13
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !13
  %71 = load i64, i64* %70, !mcsema_real_eip !13
  store i64 %71, i64* %XAX, !mcsema_real_eip !13
  %RAX_val.17 = load i64, i64* %XAX, !mcsema_real_eip !14
  %72 = add i64 %RAX_val.17, 0, !mcsema_real_eip !14
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !14
  %74 = ptrtoint i64* %73 to i64, !mcsema_real_eip !14
  %75 = inttoptr i64 %74 to i8*, !mcsema_real_eip !14
  %76 = load i8, i8* %75, !mcsema_real_eip !14
  %CL.18 = bitcast i64* %XCX to i8*, !mcsema_real_eip !14
  store i8 %76, i8* %CL.18, !mcsema_real_eip !14
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !15
  %77 = add i64 %RBP_val.19, -17, !mcsema_real_eip !15
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !15
  %CL.20 = bitcast i64* %XCX to i8*, !mcsema_real_eip !15
  %CL_val.21 = load i8, i8* %CL.20, !mcsema_real_eip !15
  %79 = ptrtoint i64* %78 to i64, !mcsema_real_eip !15
  %80 = inttoptr i64 %79 to i8*, !mcsema_real_eip !15
  store i8 %CL_val.21, i8* %80, !mcsema_real_eip !15
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !16
  %81 = add i64 %RBP_val.22, -8, !mcsema_real_eip !16
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !16
  %83 = load i64, i64* %82, !mcsema_real_eip !16
  store i64 %83, i64* %XAX, !mcsema_real_eip !16
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !17
  %84 = add i64 %RBP_val.23, -16, !mcsema_real_eip !17
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !17
  %86 = ptrtoint i64* %85 to i64, !mcsema_real_eip !17
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !17
  %88 = load i32, i32* %87, !mcsema_real_eip !17
  %89 = zext i32 %88 to i64, !mcsema_real_eip !17
  store i64 %89, i64* %XDX, !mcsema_real_eip !17
  %EDX.24 = bitcast i64* %XDX to i32*, !mcsema_real_eip !18
  %EDX_val.25 = load i32, i32* %EDX.24, !mcsema_real_eip !18
  %90 = sub i32 %EDX_val.25, 1, !mcsema_real_eip !18
  %91 = xor i32 %90, %EDX_val.25, !mcsema_real_eip !18
  %92 = xor i32 %91, 1, !mcsema_real_eip !18
  %93 = and i32 %92, 16, !mcsema_real_eip !18
  %94 = icmp ne i32 %93, 0, !mcsema_real_eip !18
  store i1 %94, i1* %AF, !mcsema_real_eip !18
  %95 = trunc i32 %90 to i8, !mcsema_real_eip !18
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !18
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !18
  %98 = xor i1 %97, true, !mcsema_real_eip !18
  store i1 %98, i1* %PF, !mcsema_real_eip !18
  %99 = icmp eq i32 %90, 0, !mcsema_real_eip !18
  store i1 %99, i1* %ZF, !mcsema_real_eip !18
  %100 = lshr i32 %90, 31, !mcsema_real_eip !18
  %101 = trunc i32 %100 to i1, !mcsema_real_eip !18
  store i1 %101, i1* %SF, !mcsema_real_eip !18
  %102 = icmp ult i32 %EDX_val.25, 1, !mcsema_real_eip !18
  store i1 %102, i1* %CF, !mcsema_real_eip !18
  %103 = xor i32 %EDX_val.25, 1, !mcsema_real_eip !18
  %104 = xor i32 %EDX_val.25, %90, !mcsema_real_eip !18
  %105 = and i32 %103, %104, !mcsema_real_eip !18
  %106 = lshr i32 %105, 31, !mcsema_real_eip !18
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !18
  store i1 %107, i1* %OF, !mcsema_real_eip !18
  %108 = zext i32 %90 to i64, !mcsema_real_eip !18
  store i64 %108, i64* %XDX, !mcsema_real_eip !18
  %EDX.26 = bitcast i64* %XDX to i32*, !mcsema_real_eip !19
  %EDX_val.27 = load i32, i32* %EDX.26, !mcsema_real_eip !19
  %109 = sext i32 %EDX_val.27 to i64, !mcsema_real_eip !19
  store i64 %109, i64* %XSI, !mcsema_real_eip !19
  %RAX_val.28 = load i64, i64* %XAX, !mcsema_real_eip !20
  %110 = add i64 %RAX_val.28, 0, !mcsema_real_eip !20
  %RSI_val.29 = load i64, i64* %XSI, !mcsema_real_eip !20
  %111 = add i64 %110, %RSI_val.29, !mcsema_real_eip !20
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !20
  %113 = ptrtoint i64* %112 to i64, !mcsema_real_eip !20
  %114 = inttoptr i64 %113 to i8*, !mcsema_real_eip !20
  %115 = load i8, i8* %114, !mcsema_real_eip !20
  %CL.30 = bitcast i64* %XCX to i8*, !mcsema_real_eip !20
  store i8 %115, i8* %CL.30, !mcsema_real_eip !20
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !21
  %116 = add i64 %RBP_val.31, -18, !mcsema_real_eip !21
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !21
  %CL.32 = bitcast i64* %XCX to i8*, !mcsema_real_eip !21
  %CL_val.33 = load i8, i8* %CL.32, !mcsema_real_eip !21
  %118 = ptrtoint i64* %117 to i64, !mcsema_real_eip !21
  %119 = inttoptr i64 %118 to i8*, !mcsema_real_eip !21
  store i8 %CL_val.33, i8* %119, !mcsema_real_eip !21
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !22
  %120 = add i64 %RBP_val.34, -17, !mcsema_real_eip !22
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !22
  %122 = ptrtoint i64* %121 to i64, !mcsema_real_eip !22
  %123 = inttoptr i64 %122 to i8*, !mcsema_real_eip !22
  %124 = load i8, i8* %123, !mcsema_real_eip !22
  %125 = sext i8 %124 to i32, !mcsema_real_eip !22
  %126 = zext i32 %125 to i64, !mcsema_real_eip !22
  store i64 %126, i64* %XDX, !mcsema_real_eip !22
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !23
  %127 = add i64 %RBP_val.35, -18, !mcsema_real_eip !23
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !23
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !23
  %130 = inttoptr i64 %129 to i8*, !mcsema_real_eip !23
  %131 = load i8, i8* %130, !mcsema_real_eip !23
  %132 = sext i8 %131 to i32, !mcsema_real_eip !23
  %133 = zext i32 %132 to i64, !mcsema_real_eip !23
  store i64 %133, i64* %XDI, !mcsema_real_eip !23
  %EDX.36 = bitcast i64* %XDX to i32*, !mcsema_real_eip !24
  %EDX_val.37 = load i32, i32* %EDX.36, !mcsema_real_eip !24
  %EDI.38 = bitcast i64* %XDI to i32*, !mcsema_real_eip !24
  %EDI_val.39 = load i32, i32* %EDI.38, !mcsema_real_eip !24
  %134 = sub i32 %EDX_val.37, %EDI_val.39, !mcsema_real_eip !24
  %135 = xor i32 %134, %EDX_val.37, !mcsema_real_eip !24
  %136 = xor i32 %135, %EDI_val.39, !mcsema_real_eip !24
  %137 = and i32 %136, 16, !mcsema_real_eip !24
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !24
  store i1 %138, i1* %AF, !mcsema_real_eip !24
  %139 = trunc i32 %134 to i8, !mcsema_real_eip !24
  %140 = call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !24
  %141 = trunc i8 %140 to i1, !mcsema_real_eip !24
  %142 = xor i1 %141, true, !mcsema_real_eip !24
  store i1 %142, i1* %PF, !mcsema_real_eip !24
  %143 = icmp eq i32 %134, 0, !mcsema_real_eip !24
  store i1 %143, i1* %ZF, !mcsema_real_eip !24
  %144 = lshr i32 %134, 31, !mcsema_real_eip !24
  %145 = trunc i32 %144 to i1, !mcsema_real_eip !24
  store i1 %145, i1* %SF, !mcsema_real_eip !24
  %146 = icmp ult i32 %EDX_val.37, %EDI_val.39, !mcsema_real_eip !24
  store i1 %146, i1* %CF, !mcsema_real_eip !24
  %147 = xor i32 %EDX_val.37, %EDI_val.39, !mcsema_real_eip !24
  %148 = xor i32 %EDX_val.37, %134, !mcsema_real_eip !24
  %149 = and i32 %147, %148, !mcsema_real_eip !24
  %150 = lshr i32 %149, 31, !mcsema_real_eip !24
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !24
  store i1 %151, i1* %OF, !mcsema_real_eip !24
  %152 = load i1, i1* %ZF, !mcsema_real_eip !25
  %153 = icmp eq i1 %152, false, !mcsema_real_eip !25
  br i1 %153, label %block_0xee, label %block_0xe7, !mcsema_real_eip !25

block_0xe7:                                       ; preds = %block_0xbb
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !26
  %154 = add i64 %RBP_val.40, -12, !mcsema_real_eip !26
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !26
  %156 = ptrtoint i64* %155 to i64, !mcsema_real_eip !26
  %157 = inttoptr i64 %156 to i32*, !mcsema_real_eip !26
  store i32 0, i32* %157, !mcsema_real_eip !26
  br label %block_0xee, !mcsema_real_eip !27

block_0xee:                                       ; preds = %block_0xe7, %block_0xbb
  br label %block_0xf3, !mcsema_real_eip !27

block_0xf3:                                       ; preds = %block_0xee, %block_0x90
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !28
  %158 = add i64 %RBP_val.41, -12, !mcsema_real_eip !28
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !28
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !28
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !28
  %162 = load i32, i32* %161, !mcsema_real_eip !28
  %163 = zext i32 %162 to i64, !mcsema_real_eip !28
  store i64 %163, i64* %XAX, !mcsema_real_eip !28
  %RSP_val.42 = load i64, i64* %XSP, !mcsema_real_eip !29
  %164 = add i64 32, %RSP_val.42, !mcsema_real_eip !29
  %165 = xor i64 %164, %RSP_val.42, !mcsema_real_eip !29
  %166 = xor i64 %165, 32, !mcsema_real_eip !29
  %167 = and i64 %166, 16, !mcsema_real_eip !29
  %168 = icmp ne i64 %167, 0, !mcsema_real_eip !29
  store i1 %168, i1* %AF, !mcsema_real_eip !29
  %169 = lshr i64 %164, 63, !mcsema_real_eip !29
  %170 = trunc i64 %169 to i1, !mcsema_real_eip !29
  store i1 %170, i1* %SF, !mcsema_real_eip !29
  %171 = icmp eq i64 %164, 0, !mcsema_real_eip !29
  store i1 %171, i1* %ZF, !mcsema_real_eip !29
  %172 = xor i64 %RSP_val.42, 32, !mcsema_real_eip !29
  %173 = xor i64 %172, -1, !mcsema_real_eip !29
  %174 = xor i64 %RSP_val.42, %164, !mcsema_real_eip !29
  %175 = and i64 %173, %174, !mcsema_real_eip !29
  %176 = lshr i64 %175, 63, !mcsema_real_eip !29
  %177 = and i64 %176, 1, !mcsema_real_eip !29
  %178 = trunc i64 %177 to i1, !mcsema_real_eip !29
  store i1 %178, i1* %OF, !mcsema_real_eip !29
  %179 = trunc i64 %164 to i8, !mcsema_real_eip !29
  %180 = call i8 @llvm.ctpop.i8(i8 %179), !mcsema_real_eip !29
  %181 = trunc i8 %180 to i1, !mcsema_real_eip !29
  %182 = xor i1 %181, true, !mcsema_real_eip !29
  store i1 %182, i1* %PF, !mcsema_real_eip !29
  %183 = icmp ult i64 %164, %RSP_val.42, !mcsema_real_eip !29
  store i1 %183, i1* %CF, !mcsema_real_eip !29
  store i64 %164, i64* %XSP, !mcsema_real_eip !29
  %RSP_val.43 = load i64, i64* %XSP, !mcsema_real_eip !30
  %184 = inttoptr i64 %RSP_val.43 to i64*, !mcsema_real_eip !30
  %185 = load i64, i64* %184, !mcsema_real_eip !30
  store i64 %185, i64* %XBP, !mcsema_real_eip !30
  %186 = add i64 %RSP_val.43, 8, !mcsema_real_eip !30
  store i64 %186, i64* %XSP, !mcsema_real_eip !30
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !31
  %187 = add i64 %RSP_val.44, 8, !mcsema_real_eip !31
  %188 = inttoptr i64 %RSP_val.44 to i64*, !mcsema_real_eip !31
  %189 = load i64, i64* %188, !mcsema_real_eip !31
  store i64 %189, i64* %XIP, !mcsema_real_eip !31
  store i64 %187, i64* %XSP, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @doStuff(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !32
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !32
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !32
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !32
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !32
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !32
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !32
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !32
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !32
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !32
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !32
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !32
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !32
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !32
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !32
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !32
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !32
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !32
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !32
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !32
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !32
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !32
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !32
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !32
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !32
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !32
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !32
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !32
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !32
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !32
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !32
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !32
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !32
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !32
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !32
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !32
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !32
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !32
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !32
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !32
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !32
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !32
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !32
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !32
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !32
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !32
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !32
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !32
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !32
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !32
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !32
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !32
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !32
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !32
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !32
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !32
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !32
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !32
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !32
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !32
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !32
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !32
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !32
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !32
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !32
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !32
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !32
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !32
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !32
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !32
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !32
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !32
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !32
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !32
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !32
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !32
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !32
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !32
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !32
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !32
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !32
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !32
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !32
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !32
  br label %block_0x100, !mcsema_real_eip !32

block_0x100:                                      ; preds = %entry
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !32
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !32
  %1 = sub i64 %RSP_val.46, 8, !mcsema_real_eip !32
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !32
  store i64 %RBP_val.45, i64* %2, !mcsema_real_eip !32
  store i64 %1, i64* %XSP, !mcsema_real_eip !32
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !33
  store i64 %RSP_val.47, i64* %XBP, !mcsema_real_eip !33
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !34
  %3 = add i64 %RBP_val.48, -8, !mcsema_real_eip !34
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !34
  %RDI_val.49 = load i64, i64* %XDI, !mcsema_real_eip !34
  store i64 %RDI_val.49, i64* %4, !mcsema_real_eip !34
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !35
  %5 = add i64 %RBP_val.50, -16, !mcsema_real_eip !35
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !35
  %RSI_val.51 = load i64, i64* %XSI, !mcsema_real_eip !35
  store i64 %RSI_val.51, i64* %6, !mcsema_real_eip !35
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !36
  %7 = add i64 %RBP_val.52, -8, !mcsema_real_eip !36
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !36
  %9 = load i64, i64* %8, !mcsema_real_eip !36
  store i64 %9, i64* %XSI, !mcsema_real_eip !36
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !37
  %10 = add i64 %RBP_val.53, -24, !mcsema_real_eip !37
  %11 = inttoptr i64 %10 to i64*, !mcsema_real_eip !37
  %RSI_val.54 = load i64, i64* %XSI, !mcsema_real_eip !37
  store i64 %RSI_val.54, i64* %11, !mcsema_real_eip !37
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !38
  %12 = add i64 %RBP_val.55, -16, !mcsema_real_eip !38
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !38
  %14 = load i64, i64* %13, !mcsema_real_eip !38
  store i64 %14, i64* %XSI, !mcsema_real_eip !38
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !39
  %15 = add i64 %RBP_val.56, -32, !mcsema_real_eip !39
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !39
  %RSI_val.57 = load i64, i64* %XSI, !mcsema_real_eip !39
  store i64 %RSI_val.57, i64* %16, !mcsema_real_eip !39
  %RBP_val.58 = load i64, i64* %XBP, !mcsema_real_eip !40
  %17 = add i64 %RBP_val.58, -24, !mcsema_real_eip !40
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !40
  %19 = load i64, i64* %18, !mcsema_real_eip !40
  store i64 %19, i64* %XSI, !mcsema_real_eip !40
  %RSI_val.59 = load i64, i64* %XSI, !mcsema_real_eip !41
  %20 = add i64 %RSI_val.59, 0, !mcsema_real_eip !41
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !41
  %22 = ptrtoint i64* %21 to i64, !mcsema_real_eip !41
  %23 = inttoptr i64 %22 to i8*, !mcsema_real_eip !41
  %24 = load i8, i8* %23, !mcsema_real_eip !41
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !41
  store i8 %24, i8* %AL.60, !mcsema_real_eip !41
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !42
  %25 = add i64 %RBP_val.61, -33, !mcsema_real_eip !42
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !42
  %AL.62 = bitcast i64* %XAX to i8*, !mcsema_real_eip !42
  %AL_val.63 = load i8, i8* %AL.62, !mcsema_real_eip !42
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !42
  %28 = inttoptr i64 %27 to i8*, !mcsema_real_eip !42
  store i8 %AL_val.63, i8* %28, !mcsema_real_eip !42
  br label %block_0x125, !mcsema_real_eip !43

block_0x125:                                      ; preds = %block_0x154, %block_0x100
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !43
  %29 = add i64 %RBP_val.64, -33, !mcsema_real_eip !43
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !43
  %31 = ptrtoint i64* %30 to i64, !mcsema_real_eip !43
  %32 = inttoptr i64 %31 to i8*, !mcsema_real_eip !43
  %33 = load i8, i8* %32, !mcsema_real_eip !43
  %34 = sext i8 %33 to i32, !mcsema_real_eip !43
  %35 = zext i32 %34 to i64, !mcsema_real_eip !43
  store i64 %35, i64* %XAX, !mcsema_real_eip !43
  %EAX.65 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.66 = load i32, i32* %EAX.65, !mcsema_real_eip !44
  %36 = sub i32 %EAX_val.66, 0, !mcsema_real_eip !44
  %37 = xor i32 %36, %EAX_val.66, !mcsema_real_eip !44
  %38 = xor i32 %37, 0, !mcsema_real_eip !44
  %39 = and i32 %38, 16, !mcsema_real_eip !44
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !44
  store i1 %40, i1* %AF, !mcsema_real_eip !44
  %41 = trunc i32 %36 to i8, !mcsema_real_eip !44
  %42 = call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !44
  %43 = trunc i8 %42 to i1, !mcsema_real_eip !44
  %44 = xor i1 %43, true, !mcsema_real_eip !44
  store i1 %44, i1* %PF, !mcsema_real_eip !44
  %45 = icmp eq i32 %36, 0, !mcsema_real_eip !44
  store i1 %45, i1* %ZF, !mcsema_real_eip !44
  %46 = lshr i32 %36, 31, !mcsema_real_eip !44
  %47 = trunc i32 %46 to i1, !mcsema_real_eip !44
  store i1 %47, i1* %SF, !mcsema_real_eip !44
  %48 = icmp ult i32 %EAX_val.66, 0, !mcsema_real_eip !44
  store i1 %48, i1* %CF, !mcsema_real_eip !44
  %49 = xor i32 %EAX_val.66, 0, !mcsema_real_eip !44
  %50 = xor i32 %EAX_val.66, %36, !mcsema_real_eip !44
  %51 = and i32 %49, %50, !mcsema_real_eip !44
  %52 = lshr i32 %51, 31, !mcsema_real_eip !44
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !44
  store i1 %53, i1* %OF, !mcsema_real_eip !44
  %54 = load i1, i1* %ZF, !mcsema_real_eip !45
  %55 = icmp eq i1 %54, true, !mcsema_real_eip !45
  br i1 %55, label %block_0x17a, label %block_0x132, !mcsema_real_eip !45

block_0x132:                                      ; preds = %block_0x125
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !46
  %56 = add i64 %RBP_val.67, -33, !mcsema_real_eip !46
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !46
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !46
  %59 = inttoptr i64 %58 to i8*, !mcsema_real_eip !46
  %60 = load i8, i8* %59, !mcsema_real_eip !46
  %61 = sext i8 %60 to i32, !mcsema_real_eip !46
  %62 = zext i32 %61 to i64, !mcsema_real_eip !46
  store i64 %62, i64* %XAX, !mcsema_real_eip !46
  %EAX.68 = bitcast i64* %XAX to i32*, !mcsema_real_eip !47
  %EAX_val.69 = load i32, i32* %EAX.68, !mcsema_real_eip !47
  %63 = sub i32 %EAX_val.69, 47, !mcsema_real_eip !47
  %64 = xor i32 %63, %EAX_val.69, !mcsema_real_eip !47
  %65 = xor i32 %64, 47, !mcsema_real_eip !47
  %66 = and i32 %65, 16, !mcsema_real_eip !47
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !47
  store i1 %67, i1* %AF, !mcsema_real_eip !47
  %68 = trunc i32 %63 to i8, !mcsema_real_eip !47
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !47
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !47
  %71 = xor i1 %70, true, !mcsema_real_eip !47
  store i1 %71, i1* %PF, !mcsema_real_eip !47
  %72 = icmp eq i32 %63, 0, !mcsema_real_eip !47
  store i1 %72, i1* %ZF, !mcsema_real_eip !47
  %73 = lshr i32 %63, 31, !mcsema_real_eip !47
  %74 = trunc i32 %73 to i1, !mcsema_real_eip !47
  store i1 %74, i1* %SF, !mcsema_real_eip !47
  %75 = icmp ult i32 %EAX_val.69, 47, !mcsema_real_eip !47
  store i1 %75, i1* %CF, !mcsema_real_eip !47
  %76 = xor i32 %EAX_val.69, 47, !mcsema_real_eip !47
  %77 = xor i32 %EAX_val.69, %63, !mcsema_real_eip !47
  %78 = and i32 %76, %77, !mcsema_real_eip !47
  %79 = lshr i32 %78, 31, !mcsema_real_eip !47
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !47
  store i1 %80, i1* %OF, !mcsema_real_eip !47
  %81 = load i1, i1* %ZF, !mcsema_real_eip !48
  %82 = icmp eq i1 %81, false, !mcsema_real_eip !48
  br i1 %82, label %block_0x14b, label %block_0x13f, !mcsema_real_eip !48

block_0x13f:                                      ; preds = %block_0x132
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !49
  %83 = add i64 %RBP_val.70, -32, !mcsema_real_eip !49
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !49
  %85 = load i64, i64* %84, !mcsema_real_eip !49
  store i64 %85, i64* %XAX, !mcsema_real_eip !49
  %RAX_val.71 = load i64, i64* %XAX, !mcsema_real_eip !50
  %86 = add i64 %RAX_val.71, 0, !mcsema_real_eip !50
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !50
  %88 = ptrtoint i64* %87 to i64, !mcsema_real_eip !50
  %89 = inttoptr i64 %88 to i8*, !mcsema_real_eip !50
  store i8 92, i8* %89, !mcsema_real_eip !50
  br label %block_0x154, !mcsema_real_eip !51

block_0x14b:                                      ; preds = %block_0x132
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !52
  %90 = add i64 %RBP_val.72, -33, !mcsema_real_eip !52
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !52
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !52
  %93 = inttoptr i64 %92 to i8*, !mcsema_real_eip !52
  %94 = load i8, i8* %93, !mcsema_real_eip !52
  %AL.73 = bitcast i64* %XAX to i8*, !mcsema_real_eip !52
  store i8 %94, i8* %AL.73, !mcsema_real_eip !52
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !53
  %95 = add i64 %RBP_val.74, -32, !mcsema_real_eip !53
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !53
  %97 = load i64, i64* %96, !mcsema_real_eip !53
  store i64 %97, i64* %XCX, !mcsema_real_eip !53
  %RCX_val.75 = load i64, i64* %XCX, !mcsema_real_eip !54
  %98 = add i64 %RCX_val.75, 0, !mcsema_real_eip !54
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !54
  %AL.76 = bitcast i64* %XAX to i8*, !mcsema_real_eip !54
  %AL_val.77 = load i8, i8* %AL.76, !mcsema_real_eip !54
  %100 = ptrtoint i64* %99 to i64, !mcsema_real_eip !54
  %101 = inttoptr i64 %100 to i8*, !mcsema_real_eip !54
  store i8 %AL_val.77, i8* %101, !mcsema_real_eip !54
  br label %block_0x154, !mcsema_real_eip !55

block_0x154:                                      ; preds = %block_0x14b, %block_0x13f
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !55
  %102 = add i64 %RBP_val.78, -24, !mcsema_real_eip !55
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !55
  %104 = load i64, i64* %103, !mcsema_real_eip !55
  store i64 %104, i64* %XAX, !mcsema_real_eip !55
  %RAX_val.79 = load i64, i64* %XAX, !mcsema_real_eip !56
  %105 = add i64 1, %RAX_val.79, !mcsema_real_eip !56
  %106 = xor i64 %105, %RAX_val.79, !mcsema_real_eip !56
  %107 = xor i64 %106, 1, !mcsema_real_eip !56
  %108 = and i64 %107, 16, !mcsema_real_eip !56
  %109 = icmp ne i64 %108, 0, !mcsema_real_eip !56
  store i1 %109, i1* %AF, !mcsema_real_eip !56
  %110 = lshr i64 %105, 63, !mcsema_real_eip !56
  %111 = trunc i64 %110 to i1, !mcsema_real_eip !56
  store i1 %111, i1* %SF, !mcsema_real_eip !56
  %112 = icmp eq i64 %105, 0, !mcsema_real_eip !56
  store i1 %112, i1* %ZF, !mcsema_real_eip !56
  %113 = xor i64 %RAX_val.79, 1, !mcsema_real_eip !56
  %114 = xor i64 %113, -1, !mcsema_real_eip !56
  %115 = xor i64 %RAX_val.79, %105, !mcsema_real_eip !56
  %116 = and i64 %114, %115, !mcsema_real_eip !56
  %117 = lshr i64 %116, 63, !mcsema_real_eip !56
  %118 = and i64 %117, 1, !mcsema_real_eip !56
  %119 = trunc i64 %118 to i1, !mcsema_real_eip !56
  store i1 %119, i1* %OF, !mcsema_real_eip !56
  %120 = trunc i64 %105 to i8, !mcsema_real_eip !56
  %121 = call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !56
  %122 = trunc i8 %121 to i1, !mcsema_real_eip !56
  %123 = xor i1 %122, true, !mcsema_real_eip !56
  store i1 %123, i1* %PF, !mcsema_real_eip !56
  %124 = icmp ult i64 %105, %RAX_val.79, !mcsema_real_eip !56
  store i1 %124, i1* %CF, !mcsema_real_eip !56
  store i64 %105, i64* %XAX, !mcsema_real_eip !56
  %RBP_val.80 = load i64, i64* %XBP, !mcsema_real_eip !57
  %125 = add i64 %RBP_val.80, -24, !mcsema_real_eip !57
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !57
  %RAX_val.81 = load i64, i64* %XAX, !mcsema_real_eip !57
  store i64 %RAX_val.81, i64* %126, !mcsema_real_eip !57
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !58
  %127 = add i64 %RBP_val.82, -32, !mcsema_real_eip !58
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !58
  %129 = load i64, i64* %128, !mcsema_real_eip !58
  store i64 %129, i64* %XAX, !mcsema_real_eip !58
  %RAX_val.83 = load i64, i64* %XAX, !mcsema_real_eip !59
  %130 = add i64 1, %RAX_val.83, !mcsema_real_eip !59
  %131 = xor i64 %130, %RAX_val.83, !mcsema_real_eip !59
  %132 = xor i64 %131, 1, !mcsema_real_eip !59
  %133 = and i64 %132, 16, !mcsema_real_eip !59
  %134 = icmp ne i64 %133, 0, !mcsema_real_eip !59
  store i1 %134, i1* %AF, !mcsema_real_eip !59
  %135 = lshr i64 %130, 63, !mcsema_real_eip !59
  %136 = trunc i64 %135 to i1, !mcsema_real_eip !59
  store i1 %136, i1* %SF, !mcsema_real_eip !59
  %137 = icmp eq i64 %130, 0, !mcsema_real_eip !59
  store i1 %137, i1* %ZF, !mcsema_real_eip !59
  %138 = xor i64 %RAX_val.83, 1, !mcsema_real_eip !59
  %139 = xor i64 %138, -1, !mcsema_real_eip !59
  %140 = xor i64 %RAX_val.83, %130, !mcsema_real_eip !59
  %141 = and i64 %139, %140, !mcsema_real_eip !59
  %142 = lshr i64 %141, 63, !mcsema_real_eip !59
  %143 = and i64 %142, 1, !mcsema_real_eip !59
  %144 = trunc i64 %143 to i1, !mcsema_real_eip !59
  store i1 %144, i1* %OF, !mcsema_real_eip !59
  %145 = trunc i64 %130 to i8, !mcsema_real_eip !59
  %146 = call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !59
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !59
  %148 = xor i1 %147, true, !mcsema_real_eip !59
  store i1 %148, i1* %PF, !mcsema_real_eip !59
  %149 = icmp ult i64 %130, %RAX_val.83, !mcsema_real_eip !59
  store i1 %149, i1* %CF, !mcsema_real_eip !59
  store i64 %130, i64* %XAX, !mcsema_real_eip !59
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !60
  %150 = add i64 %RBP_val.84, -32, !mcsema_real_eip !60
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !60
  %RAX_val.85 = load i64, i64* %XAX, !mcsema_real_eip !60
  store i64 %RAX_val.85, i64* %151, !mcsema_real_eip !60
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !61
  %152 = add i64 %RBP_val.86, -24, !mcsema_real_eip !61
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !61
  %154 = load i64, i64* %153, !mcsema_real_eip !61
  store i64 %154, i64* %XAX, !mcsema_real_eip !61
  %RAX_val.87 = load i64, i64* %XAX, !mcsema_real_eip !62
  %155 = add i64 %RAX_val.87, 0, !mcsema_real_eip !62
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !62
  %157 = ptrtoint i64* %156 to i64, !mcsema_real_eip !62
  %158 = inttoptr i64 %157 to i8*, !mcsema_real_eip !62
  %159 = load i8, i8* %158, !mcsema_real_eip !62
  %CL.88 = bitcast i64* %XCX to i8*, !mcsema_real_eip !62
  store i8 %159, i8* %CL.88, !mcsema_real_eip !62
  %RBP_val.89 = load i64, i64* %XBP, !mcsema_real_eip !63
  %160 = add i64 %RBP_val.89, -33, !mcsema_real_eip !63
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !63
  %CL.90 = bitcast i64* %XCX to i8*, !mcsema_real_eip !63
  %CL_val.91 = load i8, i8* %CL.90, !mcsema_real_eip !63
  %162 = ptrtoint i64* %161 to i64, !mcsema_real_eip !63
  %163 = inttoptr i64 %162 to i8*, !mcsema_real_eip !63
  store i8 %CL_val.91, i8* %163, !mcsema_real_eip !63
  br label %block_0x125, !mcsema_real_eip !64

block_0x17a:                                      ; preds = %block_0x125
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !65
  %164 = inttoptr i64 %RSP_val.92 to i64*, !mcsema_real_eip !65
  %165 = load i64, i64* %164, !mcsema_real_eip !65
  store i64 %165, i64* %XBP, !mcsema_real_eip !65
  %166 = add i64 %RSP_val.92, 8, !mcsema_real_eip !65
  store i64 %166, i64* %XSP, !mcsema_real_eip !65
  %RSP_val.93 = load i64, i64* %XSP, !mcsema_real_eip !66
  %167 = add i64 %RSP_val.93, 8, !mcsema_real_eip !66
  %168 = inttoptr i64 %RSP_val.93 to i64*, !mcsema_real_eip !66
  %169 = load i64, i64* %168, !mcsema_real_eip !66
  store i64 %169, i64* %XIP, !mcsema_real_eip !66
  store i64 %167, i64* %XSP, !mcsema_real_eip !66
  ret void, !mcsema_real_eip !66
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !67
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !67
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !67
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !67
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !67
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !67
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !67
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !67
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !67
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !67
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !67
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !67
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !67
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !67
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !67
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !67
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !67
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !67
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !67
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !67
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !67
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !67
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !67
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !67
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !67
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !67
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !67
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !67
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !67
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !67
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !67
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !67
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !67
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !67
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !67
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !67
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !67
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !67
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !67
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !67
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !67
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !67
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !67
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !67
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !67
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !67
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !67
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !67
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !67
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !67
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !67
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !67
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !67
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !67
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !67
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !67
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !67
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !67
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !67
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !67
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !67
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !67
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !67
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !67
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !67
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !67
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !67
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !67
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !67
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !67
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !67
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !67
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !67
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !67
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !67
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !67
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !67
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !67
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !67
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !67
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !67
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !67
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !67
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !67
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !67
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !67
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !67
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !67
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !67
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !67
  br label %block_0x0, !mcsema_real_eip !67

block_0x0:                                        ; preds = %entry
  %RBP_val.94 = load i64, i64* %XBP, !mcsema_real_eip !67
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !67
  %1 = sub i64 %RSP_val.95, 8, !mcsema_real_eip !67
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !67
  store i64 %RBP_val.94, i64* %2, !mcsema_real_eip !67
  store i64 %1, i64* %XSP, !mcsema_real_eip !67
  %RSP_val.96 = load i64, i64* %XSP, !mcsema_real_eip !68
  store i64 %RSP_val.96, i64* %XBP, !mcsema_real_eip !68
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !69
  %3 = sext i8 32 to i64, !mcsema_real_eip !69
  %4 = sub i64 %RSP_val.97, %3, !mcsema_real_eip !69
  %5 = xor i64 %4, %RSP_val.97, !mcsema_real_eip !69
  %6 = xor i64 %5, %3, !mcsema_real_eip !69
  %7 = and i64 %6, 16, !mcsema_real_eip !69
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !69
  store i1 %8, i1* %AF, !mcsema_real_eip !69
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !69
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !69
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !69
  %12 = xor i1 %11, true, !mcsema_real_eip !69
  store i1 %12, i1* %PF, !mcsema_real_eip !69
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !69
  store i1 %13, i1* %ZF, !mcsema_real_eip !69
  %14 = lshr i64 %4, 63, !mcsema_real_eip !69
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !69
  store i1 %15, i1* %SF, !mcsema_real_eip !69
  %16 = icmp ult i64 %RSP_val.97, %3, !mcsema_real_eip !69
  store i1 %16, i1* %CF, !mcsema_real_eip !69
  %17 = xor i64 %RSP_val.97, %3, !mcsema_real_eip !69
  %18 = xor i64 %RSP_val.97, %4, !mcsema_real_eip !69
  %19 = and i64 %17, %18, !mcsema_real_eip !69
  %20 = lshr i64 %19, 63, !mcsema_real_eip !69
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !69
  store i1 %21, i1* %OF, !mcsema_real_eip !69
  store i64 %4, i64* %XSP, !mcsema_real_eip !69
  %RBP_val.98 = load i64, i64* %XBP, !mcsema_real_eip !70
  %22 = add i64 %RBP_val.98, -8, !mcsema_real_eip !70
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !70
  %RDI_val.99 = load i64, i64* %XDI, !mcsema_real_eip !70
  store i64 %RDI_val.99, i64* %23, !mcsema_real_eip !70
  %RBP_val.100 = load i64, i64* %XBP, !mcsema_real_eip !71
  %24 = add i64 %RBP_val.100, -12, !mcsema_real_eip !71
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !71
  %ESI.101 = bitcast i64* %XSI to i32*, !mcsema_real_eip !71
  %ESI_val.102 = load i32, i32* %ESI.101, !mcsema_real_eip !71
  %26 = ptrtoint i64* %25 to i64, !mcsema_real_eip !71
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !71
  store i32 %ESI_val.102, i32* %27, !mcsema_real_eip !71
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !72
  %28 = add i64 %RBP_val.103, -16, !mcsema_real_eip !72
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !72
  %30 = ptrtoint i64* %29 to i64, !mcsema_real_eip !72
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !72
  store i32 0, i32* %31, !mcsema_real_eip !72
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !73
  %32 = add i64 %RBP_val.104, -12, !mcsema_real_eip !73
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !73
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !73
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !73
  %36 = load i32, i32* %35, !mcsema_real_eip !73
  %37 = sext i32 %36 to i64, !mcsema_real_eip !73
  store i64 %37, i64* %XDI, !mcsema_real_eip !73
  %RDI_val.105 = load i64, i64* %XDI, !mcsema_real_eip !74
  %38 = and i64 3, 63, !mcsema_real_eip !74
  %39 = sub i64 3, 1, !mcsema_real_eip !74
  %40 = icmp ne i64 %38, 0, !mcsema_real_eip !74
  %41 = select i1 %40, i64 %39, i64 0, !mcsema_real_eip !74
  %42 = select i1 %40, i64 1, i64 0, !mcsema_real_eip !74
  %43 = shl i64 %RDI_val.105, %41, !mcsema_real_eip !74
  %44 = and i64 %43, -9223372036854775808, !mcsema_real_eip !74
  %45 = icmp ne i64 %44, 0, !mcsema_real_eip !74
  %46 = load i1, i1* %CF, !mcsema_real_eip !74
  %47 = select i1 %40, i1 %45, i1 %46, !mcsema_real_eip !74
  %48 = shl i64 %43, %42, !mcsema_real_eip !74
  %49 = icmp eq i64 %38, 1, !mcsema_real_eip !74
  %50 = load i1, i1* %OF, !mcsema_real_eip !74
  %51 = and i64 %48, -9223372036854775808, !mcsema_real_eip !74
  %52 = icmp ne i64 %51, 0, !mcsema_real_eip !74
  %53 = xor i1 %52, %47, !mcsema_real_eip !74
  %54 = select i1 %49, i1 %53, i1 %50, !mcsema_real_eip !74
  store i1 %54, i1* %OF, !mcsema_real_eip !74
  store i1 %47, i1* %CF, !mcsema_real_eip !74
  %55 = load i1, i1* %ZF, !mcsema_real_eip !74
  %56 = icmp eq i64 %48, 0, !mcsema_real_eip !74
  %57 = select i1 %40, i1 %56, i1 %55, !mcsema_real_eip !74
  store i1 %57, i1* %ZF, !mcsema_real_eip !74
  %58 = load i1, i1* %SF, !mcsema_real_eip !74
  %59 = icmp slt i64 %48, 0, !mcsema_real_eip !74
  %60 = select i1 %40, i1 %59, i1 %58, !mcsema_real_eip !74
  store i1 %60, i1* %SF, !mcsema_real_eip !74
  %61 = load i1, i1* %PF, !mcsema_real_eip !74
  %62 = trunc i64 %48 to i8, !mcsema_real_eip !74
  %63 = call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !74
  %64 = trunc i8 %63 to i1, !mcsema_real_eip !74
  %65 = xor i1 %64, true, !mcsema_real_eip !74
  store i1 %65, i1* %PF, !mcsema_real_eip !74
  %66 = load i1, i1* %PF, !mcsema_real_eip !74
  %67 = select i1 %40, i1 %66, i1 %61, !mcsema_real_eip !74
  store i1 %67, i1* %PF, !mcsema_real_eip !74
  store i64 %48, i64* %XDI, !mcsema_real_eip !74
  %RDI_val.106 = load i64, i64* %XDI, !mcsema_real_eip !75
  %RSP_val.107 = load i64, i64* %XSP, !mcsema_real_eip !75
  %68 = sub i64 %RSP_val.107, 8, !mcsema_real_eip !75
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !75
  store i64 -2415393069852865332, i64* %69, !mcsema_real_eip !75
  store i64 %68, i64* %XSP, !mcsema_real_eip !75
  %70 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.106), !mcsema_real_eip !75
  store i64 %70, i64* %XAX, !mcsema_real_eip !75
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !76
  %71 = add i64 %RBP_val.108, -24, !mcsema_real_eip !76
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !76
  %RAX_val.109 = load i64, i64* %XAX, !mcsema_real_eip !76
  store i64 %RAX_val.109, i64* %72, !mcsema_real_eip !76
  br label %block_0x27, !mcsema_real_eip !77

block_0x27:                                       ; preds = %block_0x67, %block_0x0
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !77
  %73 = add i64 %RBP_val.110, -16, !mcsema_real_eip !77
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !77
  %75 = ptrtoint i64* %74 to i64, !mcsema_real_eip !77
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !77
  %77 = load i32, i32* %76, !mcsema_real_eip !77
  %78 = zext i32 %77 to i64, !mcsema_real_eip !77
  store i64 %78, i64* %XAX, !mcsema_real_eip !77
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !78
  %79 = add i64 %RBP_val.111, -12, !mcsema_real_eip !78
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !78
  %EAX.112 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.113 = load i32, i32* %EAX.112, !mcsema_real_eip !78
  %81 = ptrtoint i64* %80 to i64, !mcsema_real_eip !78
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !78
  %83 = load i32, i32* %82, !mcsema_real_eip !78
  %84 = sub i32 %EAX_val.113, %83, !mcsema_real_eip !78
  %85 = xor i32 %84, %EAX_val.113, !mcsema_real_eip !78
  %86 = xor i32 %85, %83, !mcsema_real_eip !78
  %87 = and i32 %86, 16, !mcsema_real_eip !78
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !78
  store i1 %88, i1* %AF, !mcsema_real_eip !78
  %89 = trunc i32 %84 to i8, !mcsema_real_eip !78
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !78
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !78
  %92 = xor i1 %91, true, !mcsema_real_eip !78
  store i1 %92, i1* %PF, !mcsema_real_eip !78
  %93 = icmp eq i32 %84, 0, !mcsema_real_eip !78
  store i1 %93, i1* %ZF, !mcsema_real_eip !78
  %94 = lshr i32 %84, 31, !mcsema_real_eip !78
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !78
  store i1 %95, i1* %SF, !mcsema_real_eip !78
  %96 = icmp ult i32 %EAX_val.113, %83, !mcsema_real_eip !78
  store i1 %96, i1* %CF, !mcsema_real_eip !78
  %97 = xor i32 %EAX_val.113, %83, !mcsema_real_eip !78
  %98 = xor i32 %EAX_val.113, %84, !mcsema_real_eip !78
  %99 = and i32 %97, %98, !mcsema_real_eip !78
  %100 = lshr i32 %99, 31, !mcsema_real_eip !78
  %101 = trunc i32 %100 to i1, !mcsema_real_eip !78
  store i1 %101, i1* %OF, !mcsema_real_eip !78
  %102 = load i1, i1* %OF, !mcsema_real_eip !79
  %103 = load i1, i1* %SF, !mcsema_real_eip !79
  %104 = icmp eq i1 %103, %102, !mcsema_real_eip !79
  br i1 %104, label %block_0x75, label %block_0x33, !mcsema_real_eip !79

block_0x33:                                       ; preds = %block_0x27
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !80
  %105 = add i64 %RBP_val.114, -8, !mcsema_real_eip !80
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !80
  %107 = load i64, i64* %106, !mcsema_real_eip !80
  store i64 %107, i64* %XAX, !mcsema_real_eip !80
  %RBP_val.115 = load i64, i64* %XBP, !mcsema_real_eip !81
  %108 = add i64 %RBP_val.115, -16, !mcsema_real_eip !81
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !81
  %110 = ptrtoint i64* %109 to i64, !mcsema_real_eip !81
  %111 = inttoptr i64 %110 to i32*, !mcsema_real_eip !81
  %112 = load i32, i32* %111, !mcsema_real_eip !81
  %113 = sext i32 %112 to i64, !mcsema_real_eip !81
  store i64 %113, i64* %XCX, !mcsema_real_eip !81
  %RAX_val.116 = load i64, i64* %XAX, !mcsema_real_eip !82
  %114 = add i64 %RAX_val.116, 0, !mcsema_real_eip !82
  %RCX_val.117 = load i64, i64* %XCX, !mcsema_real_eip !82
  %115 = mul i64 %RCX_val.117, 8, !mcsema_real_eip !82
  %116 = add i64 %114, %115, !mcsema_real_eip !82
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !82
  %118 = load i64, i64* %117, !mcsema_real_eip !82
  store i64 %118, i64* %XAX, !mcsema_real_eip !82
  %RBP_val.118 = load i64, i64* %XBP, !mcsema_real_eip !83
  %119 = add i64 %RBP_val.118, -32, !mcsema_real_eip !83
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !83
  %RAX_val.119 = load i64, i64* %XAX, !mcsema_real_eip !83
  store i64 %RAX_val.119, i64* %120, !mcsema_real_eip !83
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !84
  %121 = add i64 %RBP_val.120, -32, !mcsema_real_eip !84
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !84
  %123 = load i64, i64* %122, !mcsema_real_eip !84
  store i64 %123, i64* %XDI, !mcsema_real_eip !84
  %RSP_val.121 = load i64, i64* %XSP, !mcsema_real_eip !85
  %124 = sub i64 %RSP_val.121, 8, !mcsema_real_eip !85
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !85
  store i64 -4981261766360305936, i64* %125, !mcsema_real_eip !85
  store i64 %124, i64* %XSP, !mcsema_real_eip !85
  call x86_64_sysvcc void @checkFn(%RegState* %0), !mcsema_real_eip !85
  %EAX.122 = bitcast i64* %XAX to i32*, !mcsema_real_eip !86
  %EAX_val.123 = load i32, i32* %EAX.122, !mcsema_real_eip !86
  %126 = sub i32 %EAX_val.123, 0, !mcsema_real_eip !86
  %127 = xor i32 %126, %EAX_val.123, !mcsema_real_eip !86
  %128 = xor i32 %127, 0, !mcsema_real_eip !86
  %129 = and i32 %128, 16, !mcsema_real_eip !86
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !86
  store i1 %130, i1* %AF, !mcsema_real_eip !86
  %131 = trunc i32 %126 to i8, !mcsema_real_eip !86
  %132 = call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !86
  %133 = trunc i8 %132 to i1, !mcsema_real_eip !86
  %134 = xor i1 %133, true, !mcsema_real_eip !86
  store i1 %134, i1* %PF, !mcsema_real_eip !86
  %135 = icmp eq i32 %126, 0, !mcsema_real_eip !86
  store i1 %135, i1* %ZF, !mcsema_real_eip !86
  %136 = lshr i32 %126, 31, !mcsema_real_eip !86
  %137 = trunc i32 %136 to i1, !mcsema_real_eip !86
  store i1 %137, i1* %SF, !mcsema_real_eip !86
  %138 = icmp ult i32 %EAX_val.123, 0, !mcsema_real_eip !86
  store i1 %138, i1* %CF, !mcsema_real_eip !86
  %139 = xor i32 %EAX_val.123, 0, !mcsema_real_eip !86
  %140 = xor i32 %EAX_val.123, %126, !mcsema_real_eip !86
  %141 = and i32 %139, %140, !mcsema_real_eip !86
  %142 = lshr i32 %141, 31, !mcsema_real_eip !86
  %143 = trunc i32 %142 to i1, !mcsema_real_eip !86
  store i1 %143, i1* %OF, !mcsema_real_eip !86
  %144 = load i1, i1* %ZF, !mcsema_real_eip !87
  %145 = icmp eq i1 %144, false, !mcsema_real_eip !87
  br i1 %145, label %block_0x62, label %block_0x55, !mcsema_real_eip !87

block_0x55:                                       ; preds = %block_0x33
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !88
  %146 = add i64 %RBP_val.124, -32, !mcsema_real_eip !88
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !88
  %148 = load i64, i64* %147, !mcsema_real_eip !88
  store i64 %148, i64* %XDI, !mcsema_real_eip !88
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !89
  %149 = add i64 %RBP_val.125, -32, !mcsema_real_eip !89
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !89
  %151 = load i64, i64* %150, !mcsema_real_eip !89
  store i64 %151, i64* %XSI, !mcsema_real_eip !89
  %RSP_val.126 = load i64, i64* %XSP, !mcsema_real_eip !90
  %152 = sub i64 %RSP_val.126, 8, !mcsema_real_eip !90
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !90
  store i64 -4981261766360305936, i64* %153, !mcsema_real_eip !90
  store i64 %152, i64* %XSP, !mcsema_real_eip !90
  call x86_64_sysvcc void @doStuff(%RegState* %0), !mcsema_real_eip !90
  br label %block_0x62, !mcsema_real_eip !91

block_0x62:                                       ; preds = %block_0x55, %block_0x33
  br label %block_0x67, !mcsema_real_eip !91

block_0x67:                                       ; preds = %block_0x62
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !92
  %154 = add i64 %RBP_val.127, -16, !mcsema_real_eip !92
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !92
  %156 = ptrtoint i64* %155 to i64, !mcsema_real_eip !92
  %157 = inttoptr i64 %156 to i32*, !mcsema_real_eip !92
  %158 = load i32, i32* %157, !mcsema_real_eip !92
  %159 = zext i32 %158 to i64, !mcsema_real_eip !92
  store i64 %159, i64* %XAX, !mcsema_real_eip !92
  %EAX.128 = bitcast i64* %XAX to i32*, !mcsema_real_eip !93
  %EAX_val.129 = load i32, i32* %EAX.128, !mcsema_real_eip !93
  %160 = add i32 1, %EAX_val.129, !mcsema_real_eip !93
  %161 = xor i32 %160, %EAX_val.129, !mcsema_real_eip !93
  %162 = xor i32 %161, 1, !mcsema_real_eip !93
  %163 = and i32 %162, 16, !mcsema_real_eip !93
  %164 = icmp ne i32 %163, 0, !mcsema_real_eip !93
  store i1 %164, i1* %AF, !mcsema_real_eip !93
  %165 = lshr i32 %160, 31, !mcsema_real_eip !93
  %166 = trunc i32 %165 to i1, !mcsema_real_eip !93
  store i1 %166, i1* %SF, !mcsema_real_eip !93
  %167 = icmp eq i32 %160, 0, !mcsema_real_eip !93
  store i1 %167, i1* %ZF, !mcsema_real_eip !93
  %168 = xor i32 %EAX_val.129, 1, !mcsema_real_eip !93
  %169 = xor i32 %168, -1, !mcsema_real_eip !93
  %170 = xor i32 %EAX_val.129, %160, !mcsema_real_eip !93
  %171 = and i32 %169, %170, !mcsema_real_eip !93
  %172 = lshr i32 %171, 31, !mcsema_real_eip !93
  %173 = and i32 %172, 1, !mcsema_real_eip !93
  %174 = trunc i32 %173 to i1, !mcsema_real_eip !93
  store i1 %174, i1* %OF, !mcsema_real_eip !93
  %175 = trunc i32 %160 to i8, !mcsema_real_eip !93
  %176 = call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !93
  %177 = trunc i8 %176 to i1, !mcsema_real_eip !93
  %178 = xor i1 %177, true, !mcsema_real_eip !93
  store i1 %178, i1* %PF, !mcsema_real_eip !93
  %179 = icmp ult i32 %160, %EAX_val.129, !mcsema_real_eip !93
  store i1 %179, i1* %CF, !mcsema_real_eip !93
  %180 = zext i32 %160 to i64, !mcsema_real_eip !93
  store i64 %180, i64* %XAX, !mcsema_real_eip !93
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !94
  %181 = add i64 %RBP_val.130, -16, !mcsema_real_eip !94
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !94
  %EAX.131 = bitcast i64* %XAX to i32*, !mcsema_real_eip !94
  %EAX_val.132 = load i32, i32* %EAX.131, !mcsema_real_eip !94
  %183 = ptrtoint i64* %182 to i64, !mcsema_real_eip !94
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !94
  store i32 %EAX_val.132, i32* %184, !mcsema_real_eip !94
  br label %block_0x27, !mcsema_real_eip !95

block_0x75:                                       ; preds = %block_0x27
  %RBP_val.133 = load i64, i64* %XBP, !mcsema_real_eip !96
  %185 = add i64 %RBP_val.133, -24, !mcsema_real_eip !96
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !96
  %187 = load i64, i64* %186, !mcsema_real_eip !96
  store i64 %187, i64* %XAX, !mcsema_real_eip !96
  %RAX_val.134 = load i64, i64* %XAX, !mcsema_real_eip !97
  %188 = add i64 %RAX_val.134, 1, !mcsema_real_eip !97
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !97
  %190 = ptrtoint i64* %189 to i64, !mcsema_real_eip !97
  %191 = inttoptr i64 %190 to i8*, !mcsema_real_eip !97
  store i8 2, i8* %191, !mcsema_real_eip !97
  %RSP_val.135 = load i64, i64* %XSP, !mcsema_real_eip !98
  %192 = add i64 32, %RSP_val.135, !mcsema_real_eip !98
  %193 = xor i64 %192, %RSP_val.135, !mcsema_real_eip !98
  %194 = xor i64 %193, 32, !mcsema_real_eip !98
  %195 = and i64 %194, 16, !mcsema_real_eip !98
  %196 = icmp ne i64 %195, 0, !mcsema_real_eip !98
  store i1 %196, i1* %AF, !mcsema_real_eip !98
  %197 = lshr i64 %192, 63, !mcsema_real_eip !98
  %198 = trunc i64 %197 to i1, !mcsema_real_eip !98
  store i1 %198, i1* %SF, !mcsema_real_eip !98
  %199 = icmp eq i64 %192, 0, !mcsema_real_eip !98
  store i1 %199, i1* %ZF, !mcsema_real_eip !98
  %200 = xor i64 %RSP_val.135, 32, !mcsema_real_eip !98
  %201 = xor i64 %200, -1, !mcsema_real_eip !98
  %202 = xor i64 %RSP_val.135, %192, !mcsema_real_eip !98
  %203 = and i64 %201, %202, !mcsema_real_eip !98
  %204 = lshr i64 %203, 63, !mcsema_real_eip !98
  %205 = and i64 %204, 1, !mcsema_real_eip !98
  %206 = trunc i64 %205 to i1, !mcsema_real_eip !98
  store i1 %206, i1* %OF, !mcsema_real_eip !98
  %207 = trunc i64 %192 to i8, !mcsema_real_eip !98
  %208 = call i8 @llvm.ctpop.i8(i8 %207), !mcsema_real_eip !98
  %209 = trunc i8 %208 to i1, !mcsema_real_eip !98
  %210 = xor i1 %209, true, !mcsema_real_eip !98
  store i1 %210, i1* %PF, !mcsema_real_eip !98
  %211 = icmp ult i64 %192, %RSP_val.135, !mcsema_real_eip !98
  store i1 %211, i1* %CF, !mcsema_real_eip !98
  store i64 %192, i64* %XSP, !mcsema_real_eip !98
  %RSP_val.136 = load i64, i64* %XSP, !mcsema_real_eip !99
  %212 = inttoptr i64 %RSP_val.136 to i64*, !mcsema_real_eip !99
  %213 = load i64, i64* %212, !mcsema_real_eip !99
  store i64 %213, i64* %XBP, !mcsema_real_eip !99
  %214 = add i64 %RSP_val.136, 8, !mcsema_real_eip !99
  store i64 %214, i64* %XSP, !mcsema_real_eip !99
  %RSP_val.137 = load i64, i64* %XSP, !mcsema_real_eip !100
  %215 = add i64 %RSP_val.137, 8, !mcsema_real_eip !100
  %216 = inttoptr i64 %RSP_val.137 to i64*, !mcsema_real_eip !100
  %217 = load i64, i64* %216, !mcsema_real_eip !100
  store i64 %217, i64* %XIP, !mcsema_real_eip !100
  store i64 %215, i64* %XSP, !mcsema_real_eip !100
  ret void, !mcsema_real_eip !100
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare void @doWork() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 144}
!3 = !{i64 145}
!4 = !{i64 148}
!5 = !{i64 152}
!6 = !{i64 156}
!7 = !{i64 163}
!8 = !{i64 167}
!9 = !{i64 172}
!10 = !{i64 174}
!11 = !{i64 177}
!12 = !{i64 181}
!13 = !{i64 187}
!14 = !{i64 191}
!15 = !{i64 193}
!16 = !{i64 196}
!17 = !{i64 200}
!18 = !{i64 203}
!19 = !{i64 206}
!20 = !{i64 209}
!21 = !{i64 212}
!22 = !{i64 215}
!23 = !{i64 219}
!24 = !{i64 223}
!25 = !{i64 225}
!26 = !{i64 231}
!27 = !{i64 238}
!28 = !{i64 243}
!29 = !{i64 246}
!30 = !{i64 250}
!31 = !{i64 251}
!32 = !{i64 256}
!33 = !{i64 257}
!34 = !{i64 260}
!35 = !{i64 264}
!36 = !{i64 268}
!37 = !{i64 272}
!38 = !{i64 276}
!39 = !{i64 280}
!40 = !{i64 284}
!41 = !{i64 288}
!42 = !{i64 290}
!43 = !{i64 293}
!44 = !{i64 297}
!45 = !{i64 300}
!46 = !{i64 306}
!47 = !{i64 310}
!48 = !{i64 313}
!49 = !{i64 319}
!50 = !{i64 323}
!51 = !{i64 326}
!52 = !{i64 331}
!53 = !{i64 334}
!54 = !{i64 338}
!55 = !{i64 340}
!56 = !{i64 344}
!57 = !{i64 348}
!58 = !{i64 352}
!59 = !{i64 356}
!60 = !{i64 360}
!61 = !{i64 364}
!62 = !{i64 368}
!63 = !{i64 370}
!64 = !{i64 373}
!65 = !{i64 378}
!66 = !{i64 379}
!67 = !{i64 0}
!68 = !{i64 1}
!69 = !{i64 4}
!70 = !{i64 8}
!71 = !{i64 12}
!72 = !{i64 15}
!73 = !{i64 22}
!74 = !{i64 26}
!75 = !{i64 30}
!76 = !{i64 35}
!77 = !{i64 39}
!78 = !{i64 42}
!79 = !{i64 45}
!80 = !{i64 51}
!81 = !{i64 55}
!82 = !{i64 59}
!83 = !{i64 63}
!84 = !{i64 67}
!85 = !{i64 71}
!86 = !{i64 76}
!87 = !{i64 79}
!88 = !{i64 85}
!89 = !{i64 89}
!90 = !{i64 93}
!91 = !{i64 98}
!92 = !{i64 103}
!93 = !{i64 106}
!94 = !{i64 109}
!95 = !{i64 112}
!96 = !{i64 117}
!97 = !{i64 121}
!98 = !{i64 125}
!99 = !{i64 129}
!100 = !{i64 130}
