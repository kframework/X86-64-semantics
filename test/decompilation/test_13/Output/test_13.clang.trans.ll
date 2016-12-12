; ModuleID = 'Output/test_13.clang.trans.bc'
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
  %21 = add i64 %RBP_val.4, -8, !mcsema_real_eip !5
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %22, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.6, -12, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.8 = load i32, i32* %ESI.7, !mcsema_real_eip !6
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !6
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.8, i32* %26, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !7
  %27 = add i64 %RBP_val.9, -16, !mcsema_real_eip !7
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !7
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !7
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %30, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %31 = add i64 %RBP_val.10, -12, !mcsema_real_eip !8
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !8
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !8
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !8
  %35 = load i32, i32* %34, !mcsema_real_eip !8
  %36 = sext i32 %35 to i64, !mcsema_real_eip !8
  store i64 %36, i64* %XDI, !mcsema_real_eip !8
  %RDI_val.11 = load i64, i64* %XDI, !mcsema_real_eip !9
  %37 = shl i64 %RDI_val.11, 2, !mcsema_real_eip !9
  %38 = and i64 %37, -9223372036854775808, !mcsema_real_eip !9
  %39 = icmp ne i64 %38, 0, !mcsema_real_eip !9
  %40 = load i1, i1* %CF, !mcsema_real_eip !9
  %41 = select i1 true, i1 %39, i1 %40, !mcsema_real_eip !9
  %42 = shl i64 %37, 1, !mcsema_real_eip !9
  %43 = load i1, i1* %OF, !mcsema_real_eip !9
  %44 = and i64 %42, -9223372036854775808, !mcsema_real_eip !9
  %45 = icmp ne i64 %44, 0, !mcsema_real_eip !9
  %46 = xor i1 %45, %41, !mcsema_real_eip !9
  %47 = select i1 false, i1 %46, i1 %43, !mcsema_real_eip !9
  store i1 %47, i1* %OF, !mcsema_real_eip !9
  store i1 %41, i1* %CF, !mcsema_real_eip !9
  %48 = load i1, i1* %ZF, !mcsema_real_eip !9
  %49 = icmp eq i64 %42, 0, !mcsema_real_eip !9
  %50 = select i1 true, i1 %49, i1 %48, !mcsema_real_eip !9
  store i1 %50, i1* %ZF, !mcsema_real_eip !9
  %51 = load i1, i1* %SF, !mcsema_real_eip !9
  %52 = icmp slt i64 %42, 0, !mcsema_real_eip !9
  %53 = select i1 true, i1 %52, i1 %51, !mcsema_real_eip !9
  store i1 %53, i1* %SF, !mcsema_real_eip !9
  %54 = load i1, i1* %PF, !mcsema_real_eip !9
  %55 = trunc i64 %42 to i8, !mcsema_real_eip !9
  %56 = call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !9
  %57 = trunc i8 %56 to i1, !mcsema_real_eip !9
  %58 = xor i1 %57, true, !mcsema_real_eip !9
  store i1 %58, i1* %PF, !mcsema_real_eip !9
  %59 = load i1, i1* %PF, !mcsema_real_eip !9
  %60 = select i1 true, i1 %59, i1 %54, !mcsema_real_eip !9
  store i1 %60, i1* %PF, !mcsema_real_eip !9
  store i64 %42, i64* %XDI, !mcsema_real_eip !9
  %RDI_val.12 = load i64, i64* %XDI, !mcsema_real_eip !10
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !10
  %61 = sub i64 %RSP_val.13, 8, !mcsema_real_eip !10
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !10
  store i64 -2415393069852865332, i64* %62, !mcsema_real_eip !10
  store i64 %61, i64* %XSP, !mcsema_real_eip !10
  %63 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.12), !mcsema_real_eip !10
  store i64 %63, i64* %XAX, !mcsema_real_eip !10
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !11
  %64 = add i64 %RBP_val.14, -24, !mcsema_real_eip !11
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !11
  %RAX_val.15 = load i64, i64* %XAX, !mcsema_real_eip !11
  store i64 %RAX_val.15, i64* %65, !mcsema_real_eip !11
  br label %block_0x27, !mcsema_real_eip !12

block_0x27:                                       ; preds = %block_0x67, %block_0x0
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !12
  %66 = add i64 %RBP_val.16, -16, !mcsema_real_eip !12
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !12
  %68 = ptrtoint i64* %67 to i64, !mcsema_real_eip !12
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !12
  %70 = load i32, i32* %69, !mcsema_real_eip !12
  %71 = zext i32 %70 to i64, !mcsema_real_eip !12
  store i64 %71, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !13
  %72 = add i64 %RBP_val.17, -12, !mcsema_real_eip !13
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !13
  %EAX.18 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.19 = load i32, i32* %EAX.18, !mcsema_real_eip !13
  %74 = ptrtoint i64* %73 to i64, !mcsema_real_eip !13
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !13
  %76 = load i32, i32* %75, !mcsema_real_eip !13
  %77 = sub i32 %EAX_val.19, %76, !mcsema_real_eip !13
  %78 = xor i32 %77, %EAX_val.19, !mcsema_real_eip !13
  %79 = xor i32 %78, %76, !mcsema_real_eip !13
  %80 = and i32 %79, 16, !mcsema_real_eip !13
  %81 = icmp ne i32 %80, 0, !mcsema_real_eip !13
  store i1 %81, i1* %AF, !mcsema_real_eip !13
  %82 = trunc i32 %77 to i8, !mcsema_real_eip !13
  %83 = call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !13
  %84 = trunc i8 %83 to i1, !mcsema_real_eip !13
  %85 = xor i1 %84, true, !mcsema_real_eip !13
  store i1 %85, i1* %PF, !mcsema_real_eip !13
  %86 = icmp eq i32 %77, 0, !mcsema_real_eip !13
  store i1 %86, i1* %ZF, !mcsema_real_eip !13
  %87 = lshr i32 %77, 31, !mcsema_real_eip !13
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !13
  store i1 %88, i1* %SF, !mcsema_real_eip !13
  %89 = icmp ult i32 %EAX_val.19, %76, !mcsema_real_eip !13
  store i1 %89, i1* %CF, !mcsema_real_eip !13
  %90 = xor i32 %EAX_val.19, %76, !mcsema_real_eip !13
  %91 = xor i32 %EAX_val.19, %77, !mcsema_real_eip !13
  %92 = and i32 %90, %91, !mcsema_real_eip !13
  %93 = lshr i32 %92, 31, !mcsema_real_eip !13
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !13
  store i1 %94, i1* %OF, !mcsema_real_eip !13
  %95 = load i1, i1* %OF, !mcsema_real_eip !14
  %96 = load i1, i1* %SF, !mcsema_real_eip !14
  %97 = icmp eq i1 %96, %95, !mcsema_real_eip !14
  br i1 %97, label %block_0x75, label %block_0x33, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x27
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !15
  %98 = add i64 %RBP_val.25, -8, !mcsema_real_eip !15
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !15
  %100 = load i64, i64* %99, !mcsema_real_eip !15
  store i64 %100, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !16
  %101 = add i64 %RBP_val.26, -16, !mcsema_real_eip !16
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !16
  %103 = ptrtoint i64* %102 to i64, !mcsema_real_eip !16
  %104 = inttoptr i64 %103 to i32*, !mcsema_real_eip !16
  %105 = load i32, i32* %104, !mcsema_real_eip !16
  %106 = sext i32 %105 to i64, !mcsema_real_eip !16
  store i64 %106, i64* %XCX, !mcsema_real_eip !16
  %RAX_val.27 = load i64, i64* %XAX, !mcsema_real_eip !17
  %107 = add i64 %RAX_val.27, 0, !mcsema_real_eip !17
  %RCX_val.28 = load i64, i64* %XCX, !mcsema_real_eip !17
  %108 = mul i64 %RCX_val.28, 8, !mcsema_real_eip !17
  %109 = add i64 %107, %108, !mcsema_real_eip !17
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !17
  %111 = load i64, i64* %110, !mcsema_real_eip !17
  store i64 %111, i64* %XAX, !mcsema_real_eip !17
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !18
  %112 = add i64 %RBP_val.29, -32, !mcsema_real_eip !18
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !18
  %RAX_val.30 = load i64, i64* %XAX, !mcsema_real_eip !18
  store i64 %RAX_val.30, i64* %113, !mcsema_real_eip !18
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !19
  %114 = add i64 %RBP_val.31, -32, !mcsema_real_eip !19
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !19
  %116 = load i64, i64* %115, !mcsema_real_eip !19
  store i64 %116, i64* %XDI, !mcsema_real_eip !19
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !20
  %117 = sub i64 %RSP_val.32, 8, !mcsema_real_eip !20
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !20
  store i64 -4981261766360305936, i64* %118, !mcsema_real_eip !20
  store i64 %117, i64* %XSP, !mcsema_real_eip !20
  call x86_64_sysvcc void @checkFn(%RegState* %0), !mcsema_real_eip !20
  %EAX.33 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  %EAX_val.34 = load i32, i32* %EAX.33, !mcsema_real_eip !21
  %119 = sub i32 %EAX_val.34, 0, !mcsema_real_eip !21
  %120 = xor i32 %119, %EAX_val.34, !mcsema_real_eip !21
  %121 = xor i32 %120, 0, !mcsema_real_eip !21
  %122 = and i32 %121, 16, !mcsema_real_eip !21
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !21
  store i1 %123, i1* %AF, !mcsema_real_eip !21
  %124 = trunc i32 %119 to i8, !mcsema_real_eip !21
  %125 = call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !21
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !21
  %127 = xor i1 %126, true, !mcsema_real_eip !21
  store i1 %127, i1* %PF, !mcsema_real_eip !21
  %128 = icmp eq i32 %119, 0, !mcsema_real_eip !21
  store i1 %128, i1* %ZF, !mcsema_real_eip !21
  %129 = lshr i32 %119, 31, !mcsema_real_eip !21
  %130 = trunc i32 %129 to i1, !mcsema_real_eip !21
  store i1 %130, i1* %SF, !mcsema_real_eip !21
  %131 = icmp ult i32 %EAX_val.34, 0, !mcsema_real_eip !21
  store i1 %131, i1* %CF, !mcsema_real_eip !21
  %132 = xor i32 %EAX_val.34, 0, !mcsema_real_eip !21
  %133 = xor i32 %EAX_val.34, %119, !mcsema_real_eip !21
  %134 = and i32 %132, %133, !mcsema_real_eip !21
  %135 = lshr i32 %134, 31, !mcsema_real_eip !21
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !21
  store i1 %136, i1* %OF, !mcsema_real_eip !21
  %137 = load i1, i1* %ZF, !mcsema_real_eip !22
  %138 = icmp eq i1 %137, false, !mcsema_real_eip !22
  br i1 %138, label %block_0x62, label %block_0x55, !mcsema_real_eip !22

block_0x75:                                       ; preds = %block_0x27
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !23
  %139 = add i64 %RBP_val.20, -24, !mcsema_real_eip !23
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !23
  %141 = load i64, i64* %140, !mcsema_real_eip !23
  store i64 %141, i64* %XAX, !mcsema_real_eip !23
  %RAX_val.21 = load i64, i64* %XAX, !mcsema_real_eip !24
  %142 = add i64 %RAX_val.21, 1, !mcsema_real_eip !24
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !24
  %144 = ptrtoint i64* %143 to i64, !mcsema_real_eip !24
  %145 = inttoptr i64 %144 to i8*, !mcsema_real_eip !24
  store i8 2, i8* %145, !mcsema_real_eip !24
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !25
  %146 = add i64 32, %RSP_val.22, !mcsema_real_eip !25
  %147 = xor i64 %146, %RSP_val.22, !mcsema_real_eip !25
  %148 = xor i64 %147, 32, !mcsema_real_eip !25
  %149 = and i64 %148, 16, !mcsema_real_eip !25
  %150 = icmp ne i64 %149, 0, !mcsema_real_eip !25
  store i1 %150, i1* %AF, !mcsema_real_eip !25
  %151 = lshr i64 %146, 63, !mcsema_real_eip !25
  %152 = trunc i64 %151 to i1, !mcsema_real_eip !25
  store i1 %152, i1* %SF, !mcsema_real_eip !25
  %153 = icmp eq i64 %146, 0, !mcsema_real_eip !25
  store i1 %153, i1* %ZF, !mcsema_real_eip !25
  %154 = xor i64 %RSP_val.22, 32, !mcsema_real_eip !25
  %155 = xor i64 %154, -1, !mcsema_real_eip !25
  %156 = xor i64 %RSP_val.22, %146, !mcsema_real_eip !25
  %157 = and i64 %155, %156, !mcsema_real_eip !25
  %158 = lshr i64 %157, 63, !mcsema_real_eip !25
  %159 = and i64 %158, 1, !mcsema_real_eip !25
  %160 = trunc i64 %159 to i1, !mcsema_real_eip !25
  store i1 %160, i1* %OF, !mcsema_real_eip !25
  %161 = trunc i64 %146 to i8, !mcsema_real_eip !25
  %162 = call i8 @llvm.ctpop.i8(i8 %161), !mcsema_real_eip !25
  %163 = trunc i8 %162 to i1, !mcsema_real_eip !25
  %164 = xor i1 %163, true, !mcsema_real_eip !25
  store i1 %164, i1* %PF, !mcsema_real_eip !25
  %165 = icmp ult i64 %146, %RSP_val.22, !mcsema_real_eip !25
  store i1 %165, i1* %CF, !mcsema_real_eip !25
  store i64 %146, i64* %XSP, !mcsema_real_eip !25
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !26
  %166 = inttoptr i64 %RSP_val.23 to i64*, !mcsema_real_eip !26
  %167 = load i64, i64* %166, !mcsema_real_eip !26
  store i64 %167, i64* %XBP, !mcsema_real_eip !26
  %168 = add i64 %RSP_val.23, 8, !mcsema_real_eip !26
  store i64 %168, i64* %XSP, !mcsema_real_eip !26
  %RSP_val.24 = load i64, i64* %XSP, !mcsema_real_eip !27
  %169 = add i64 %RSP_val.24, 8, !mcsema_real_eip !27
  %170 = inttoptr i64 %RSP_val.24 to i64*, !mcsema_real_eip !27
  %171 = load i64, i64* %170, !mcsema_real_eip !27
  store i64 %171, i64* %XIP, !mcsema_real_eip !27
  store i64 %169, i64* %XSP, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x55:                                       ; preds = %block_0x33
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !28
  %172 = add i64 %RBP_val.35, -32, !mcsema_real_eip !28
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !28
  %174 = load i64, i64* %173, !mcsema_real_eip !28
  store i64 %174, i64* %XDI, !mcsema_real_eip !28
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !29
  %175 = add i64 %RBP_val.36, -32, !mcsema_real_eip !29
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !29
  %177 = load i64, i64* %176, !mcsema_real_eip !29
  store i64 %177, i64* %XSI, !mcsema_real_eip !29
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !30
  %178 = sub i64 %RSP_val.37, 8, !mcsema_real_eip !30
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !30
  store i64 -4981261766360305936, i64* %179, !mcsema_real_eip !30
  store i64 %178, i64* %XSP, !mcsema_real_eip !30
  call x86_64_sysvcc void @doStuff(%RegState* %0), !mcsema_real_eip !30
  br label %block_0x62, !mcsema_real_eip !31

block_0x62:                                       ; preds = %block_0x55, %block_0x33
  br label %block_0x67, !mcsema_real_eip !32

block_0x67:                                       ; preds = %block_0x62
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !31
  %180 = add i64 %RBP_val.38, -16, !mcsema_real_eip !31
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !31
  %182 = ptrtoint i64* %181 to i64, !mcsema_real_eip !31
  %183 = inttoptr i64 %182 to i32*, !mcsema_real_eip !31
  %184 = load i32, i32* %183, !mcsema_real_eip !31
  %185 = zext i32 %184 to i64, !mcsema_real_eip !31
  store i64 %185, i64* %XAX, !mcsema_real_eip !31
  %EAX.39 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.40 = load i32, i32* %EAX.39, !mcsema_real_eip !33
  %186 = add i32 1, %EAX_val.40, !mcsema_real_eip !33
  %187 = xor i32 %186, %EAX_val.40, !mcsema_real_eip !33
  %188 = xor i32 %187, 1, !mcsema_real_eip !33
  %189 = and i32 %188, 16, !mcsema_real_eip !33
  %190 = icmp ne i32 %189, 0, !mcsema_real_eip !33
  store i1 %190, i1* %AF, !mcsema_real_eip !33
  %191 = lshr i32 %186, 31, !mcsema_real_eip !33
  %192 = trunc i32 %191 to i1, !mcsema_real_eip !33
  store i1 %192, i1* %SF, !mcsema_real_eip !33
  %193 = icmp eq i32 %186, 0, !mcsema_real_eip !33
  store i1 %193, i1* %ZF, !mcsema_real_eip !33
  %194 = xor i32 %EAX_val.40, 1, !mcsema_real_eip !33
  %195 = xor i32 %194, -1, !mcsema_real_eip !33
  %196 = xor i32 %EAX_val.40, %186, !mcsema_real_eip !33
  %197 = and i32 %195, %196, !mcsema_real_eip !33
  %198 = lshr i32 %197, 31, !mcsema_real_eip !33
  %199 = and i32 %198, 1, !mcsema_real_eip !33
  %200 = trunc i32 %199 to i1, !mcsema_real_eip !33
  store i1 %200, i1* %OF, !mcsema_real_eip !33
  %201 = trunc i32 %186 to i8, !mcsema_real_eip !33
  %202 = call i8 @llvm.ctpop.i8(i8 %201), !mcsema_real_eip !33
  %203 = trunc i8 %202 to i1, !mcsema_real_eip !33
  %204 = xor i1 %203, true, !mcsema_real_eip !33
  store i1 %204, i1* %PF, !mcsema_real_eip !33
  %205 = icmp ult i32 %186, %EAX_val.40, !mcsema_real_eip !33
  store i1 %205, i1* %CF, !mcsema_real_eip !33
  %206 = zext i32 %186 to i64, !mcsema_real_eip !33
  store i64 %206, i64* %XAX, !mcsema_real_eip !33
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !34
  %207 = add i64 %RBP_val.41, -16, !mcsema_real_eip !34
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !34
  %EAX.42 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.43 = load i32, i32* %EAX.42, !mcsema_real_eip !34
  %209 = ptrtoint i64* %208 to i64, !mcsema_real_eip !34
  %210 = inttoptr i64 %209 to i32*, !mcsema_real_eip !34
  store i32 %EAX_val.43, i32* %210, !mcsema_real_eip !34
  br label %block_0x27, !mcsema_real_eip !35
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @doStuff(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !36
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !36
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !36
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !36
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !36
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !36
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !36
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !36
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !36
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !36
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !36
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !36
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !36
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !36
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !36
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !36
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !36
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !36
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !36
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !36
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !36
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !36
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !36
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !36
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !36
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !36
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !36
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !36
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !36
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !36
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !36
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !36
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !36
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !36
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !36
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !36
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !36
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !36
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !36
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !36
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !36
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !36
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !36
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !36
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !36
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !36
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !36
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !36
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !36
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !36
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !36
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !36
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !36
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !36
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !36
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !36
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !36
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !36
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !36
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !36
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !36
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !36
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !36
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !36
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !36
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !36
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !36
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !36
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !36
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !36
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !36
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !36
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !36
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !36
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !36
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !36
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !36
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !36
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !36
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !36
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !36
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !36
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !36
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !36
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !36
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !36
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !36
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !36
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !36
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !36
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !36
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !36
  br label %block_0x100, !mcsema_real_eip !36

block_0x100:                                      ; preds = %entry
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !36
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !36
  %1 = sub i64 %RSP_val.45, 8, !mcsema_real_eip !36
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !36
  store i64 %RBP_val.44, i64* %2, !mcsema_real_eip !36
  store i64 %1, i64* %XSP, !mcsema_real_eip !36
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !37
  store i64 %RSP_val.46, i64* %XBP, !mcsema_real_eip !37
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !38
  %3 = add i64 %RBP_val.47, -8, !mcsema_real_eip !38
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !38
  %RDI_val.48 = load i64, i64* %XDI, !mcsema_real_eip !38
  store i64 %RDI_val.48, i64* %4, !mcsema_real_eip !38
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !39
  %5 = add i64 %RBP_val.49, -16, !mcsema_real_eip !39
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !39
  %RSI_val.50 = load i64, i64* %XSI, !mcsema_real_eip !39
  store i64 %RSI_val.50, i64* %6, !mcsema_real_eip !39
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !40
  %7 = add i64 %RBP_val.51, -8, !mcsema_real_eip !40
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !40
  %9 = load i64, i64* %8, !mcsema_real_eip !40
  store i64 %9, i64* %XSI, !mcsema_real_eip !40
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !41
  %10 = add i64 %RBP_val.52, -24, !mcsema_real_eip !41
  %11 = inttoptr i64 %10 to i64*, !mcsema_real_eip !41
  %RSI_val.53 = load i64, i64* %XSI, !mcsema_real_eip !41
  store i64 %RSI_val.53, i64* %11, !mcsema_real_eip !41
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !42
  %12 = add i64 %RBP_val.54, -16, !mcsema_real_eip !42
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !42
  %14 = load i64, i64* %13, !mcsema_real_eip !42
  store i64 %14, i64* %XSI, !mcsema_real_eip !42
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !43
  %15 = add i64 %RBP_val.55, -32, !mcsema_real_eip !43
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !43
  %RSI_val.56 = load i64, i64* %XSI, !mcsema_real_eip !43
  store i64 %RSI_val.56, i64* %16, !mcsema_real_eip !43
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !44
  %17 = add i64 %RBP_val.57, -24, !mcsema_real_eip !44
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !44
  %19 = load i64, i64* %18, !mcsema_real_eip !44
  store i64 %19, i64* %XSI, !mcsema_real_eip !44
  %RSI_val.58 = load i64, i64* %XSI, !mcsema_real_eip !45
  %20 = add i64 %RSI_val.58, 0, !mcsema_real_eip !45
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !45
  %22 = ptrtoint i64* %21 to i64, !mcsema_real_eip !45
  %23 = inttoptr i64 %22 to i8*, !mcsema_real_eip !45
  %24 = load i8, i8* %23, !mcsema_real_eip !45
  %AL.59 = bitcast i64* %XAX to i8*, !mcsema_real_eip !45
  store i8 %24, i8* %AL.59, !mcsema_real_eip !45
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !46
  %25 = add i64 %RBP_val.60, -33, !mcsema_real_eip !46
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !46
  %AL.61 = bitcast i64* %XAX to i8*, !mcsema_real_eip !46
  %AL_val.62 = load i8, i8* %AL.61, !mcsema_real_eip !46
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !46
  %28 = inttoptr i64 %27 to i8*, !mcsema_real_eip !46
  store i8 %AL_val.62, i8* %28, !mcsema_real_eip !46
  br label %block_0x125, !mcsema_real_eip !47

block_0x125:                                      ; preds = %block_0x154, %block_0x100
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !47
  %29 = add i64 %RBP_val.63, -33, !mcsema_real_eip !47
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !47
  %31 = ptrtoint i64* %30 to i64, !mcsema_real_eip !47
  %32 = inttoptr i64 %31 to i8*, !mcsema_real_eip !47
  %33 = load i8, i8* %32, !mcsema_real_eip !47
  %34 = sext i8 %33 to i32, !mcsema_real_eip !47
  %35 = zext i32 %34 to i64, !mcsema_real_eip !47
  store i64 %35, i64* %XAX, !mcsema_real_eip !47
  %EAX.64 = bitcast i64* %XAX to i32*, !mcsema_real_eip !48
  %EAX_val.65 = load i32, i32* %EAX.64, !mcsema_real_eip !48
  %36 = sub i32 %EAX_val.65, 0, !mcsema_real_eip !48
  %37 = xor i32 %36, %EAX_val.65, !mcsema_real_eip !48
  %38 = xor i32 %37, 0, !mcsema_real_eip !48
  %39 = and i32 %38, 16, !mcsema_real_eip !48
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !48
  store i1 %40, i1* %AF, !mcsema_real_eip !48
  %41 = trunc i32 %36 to i8, !mcsema_real_eip !48
  %42 = call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !48
  %43 = trunc i8 %42 to i1, !mcsema_real_eip !48
  %44 = xor i1 %43, true, !mcsema_real_eip !48
  store i1 %44, i1* %PF, !mcsema_real_eip !48
  %45 = icmp eq i32 %36, 0, !mcsema_real_eip !48
  store i1 %45, i1* %ZF, !mcsema_real_eip !48
  %46 = lshr i32 %36, 31, !mcsema_real_eip !48
  %47 = trunc i32 %46 to i1, !mcsema_real_eip !48
  store i1 %47, i1* %SF, !mcsema_real_eip !48
  %48 = icmp ult i32 %EAX_val.65, 0, !mcsema_real_eip !48
  store i1 %48, i1* %CF, !mcsema_real_eip !48
  %49 = xor i32 %EAX_val.65, 0, !mcsema_real_eip !48
  %50 = xor i32 %EAX_val.65, %36, !mcsema_real_eip !48
  %51 = and i32 %49, %50, !mcsema_real_eip !48
  %52 = lshr i32 %51, 31, !mcsema_real_eip !48
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !48
  store i1 %53, i1* %OF, !mcsema_real_eip !48
  %54 = load i1, i1* %ZF, !mcsema_real_eip !49
  %55 = icmp eq i1 %54, true, !mcsema_real_eip !49
  br i1 %55, label %block_0x17a, label %block_0x132, !mcsema_real_eip !49

block_0x132:                                      ; preds = %block_0x125
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !50
  %56 = add i64 %RBP_val.68, -33, !mcsema_real_eip !50
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !50
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !50
  %59 = inttoptr i64 %58 to i8*, !mcsema_real_eip !50
  %60 = load i8, i8* %59, !mcsema_real_eip !50
  %61 = sext i8 %60 to i32, !mcsema_real_eip !50
  %62 = zext i32 %61 to i64, !mcsema_real_eip !50
  store i64 %62, i64* %XAX, !mcsema_real_eip !50
  %EAX.69 = bitcast i64* %XAX to i32*, !mcsema_real_eip !51
  %EAX_val.70 = load i32, i32* %EAX.69, !mcsema_real_eip !51
  %63 = sub i32 %EAX_val.70, 47, !mcsema_real_eip !51
  %64 = xor i32 %63, %EAX_val.70, !mcsema_real_eip !51
  %65 = xor i32 %64, 47, !mcsema_real_eip !51
  %66 = and i32 %65, 16, !mcsema_real_eip !51
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !51
  store i1 %67, i1* %AF, !mcsema_real_eip !51
  %68 = trunc i32 %63 to i8, !mcsema_real_eip !51
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !51
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !51
  %71 = xor i1 %70, true, !mcsema_real_eip !51
  store i1 %71, i1* %PF, !mcsema_real_eip !51
  %72 = icmp eq i32 %63, 0, !mcsema_real_eip !51
  store i1 %72, i1* %ZF, !mcsema_real_eip !51
  %73 = lshr i32 %63, 31, !mcsema_real_eip !51
  %74 = trunc i32 %73 to i1, !mcsema_real_eip !51
  store i1 %74, i1* %SF, !mcsema_real_eip !51
  %75 = icmp ult i32 %EAX_val.70, 47, !mcsema_real_eip !51
  store i1 %75, i1* %CF, !mcsema_real_eip !51
  %76 = xor i32 %EAX_val.70, 47, !mcsema_real_eip !51
  %77 = xor i32 %EAX_val.70, %63, !mcsema_real_eip !51
  %78 = and i32 %76, %77, !mcsema_real_eip !51
  %79 = lshr i32 %78, 31, !mcsema_real_eip !51
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !51
  store i1 %80, i1* %OF, !mcsema_real_eip !51
  %81 = load i1, i1* %ZF, !mcsema_real_eip !52
  %82 = icmp eq i1 %81, false, !mcsema_real_eip !52
  br i1 %82, label %block_0x14b, label %block_0x13f, !mcsema_real_eip !52

block_0x17a:                                      ; preds = %block_0x125
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !53
  %83 = inttoptr i64 %RSP_val.66 to i64*, !mcsema_real_eip !53
  %84 = load i64, i64* %83, !mcsema_real_eip !53
  store i64 %84, i64* %XBP, !mcsema_real_eip !53
  %85 = add i64 %RSP_val.66, 8, !mcsema_real_eip !53
  store i64 %85, i64* %XSP, !mcsema_real_eip !53
  %RSP_val.67 = load i64, i64* %XSP, !mcsema_real_eip !54
  %86 = add i64 %RSP_val.67, 8, !mcsema_real_eip !54
  %87 = inttoptr i64 %RSP_val.67 to i64*, !mcsema_real_eip !54
  %88 = load i64, i64* %87, !mcsema_real_eip !54
  store i64 %88, i64* %XIP, !mcsema_real_eip !54
  store i64 %86, i64* %XSP, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54

block_0x13f:                                      ; preds = %block_0x132
  %RBP_val.77 = load i64, i64* %XBP, !mcsema_real_eip !55
  %89 = add i64 %RBP_val.77, -32, !mcsema_real_eip !55
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !55
  %91 = load i64, i64* %90, !mcsema_real_eip !55
  store i64 %91, i64* %XAX, !mcsema_real_eip !55
  %RAX_val.78 = load i64, i64* %XAX, !mcsema_real_eip !56
  %92 = add i64 %RAX_val.78, 0, !mcsema_real_eip !56
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !56
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !56
  %95 = inttoptr i64 %94 to i8*, !mcsema_real_eip !56
  store i8 92, i8* %95, !mcsema_real_eip !56
  br label %block_0x154, !mcsema_real_eip !57

block_0x14b:                                      ; preds = %block_0x132
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !58
  %96 = add i64 %RBP_val.71, -33, !mcsema_real_eip !58
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !58
  %98 = ptrtoint i64* %97 to i64, !mcsema_real_eip !58
  %99 = inttoptr i64 %98 to i8*, !mcsema_real_eip !58
  %100 = load i8, i8* %99, !mcsema_real_eip !58
  %AL.72 = bitcast i64* %XAX to i8*, !mcsema_real_eip !58
  store i8 %100, i8* %AL.72, !mcsema_real_eip !58
  %RBP_val.73 = load i64, i64* %XBP, !mcsema_real_eip !59
  %101 = add i64 %RBP_val.73, -32, !mcsema_real_eip !59
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !59
  %103 = load i64, i64* %102, !mcsema_real_eip !59
  store i64 %103, i64* %XCX, !mcsema_real_eip !59
  %RCX_val.74 = load i64, i64* %XCX, !mcsema_real_eip !60
  %104 = add i64 %RCX_val.74, 0, !mcsema_real_eip !60
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !60
  %AL.75 = bitcast i64* %XAX to i8*, !mcsema_real_eip !60
  %AL_val.76 = load i8, i8* %AL.75, !mcsema_real_eip !60
  %106 = ptrtoint i64* %105 to i64, !mcsema_real_eip !60
  %107 = inttoptr i64 %106 to i8*, !mcsema_real_eip !60
  store i8 %AL_val.76, i8* %107, !mcsema_real_eip !60
  br label %block_0x154, !mcsema_real_eip !55

block_0x154:                                      ; preds = %block_0x14b, %block_0x13f
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !61
  %108 = add i64 %RBP_val.79, -24, !mcsema_real_eip !61
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !61
  %110 = load i64, i64* %109, !mcsema_real_eip !61
  store i64 %110, i64* %XAX, !mcsema_real_eip !61
  %RAX_val.80 = load i64, i64* %XAX, !mcsema_real_eip !62
  %111 = add i64 1, %RAX_val.80, !mcsema_real_eip !62
  %112 = xor i64 %111, %RAX_val.80, !mcsema_real_eip !62
  %113 = xor i64 %112, 1, !mcsema_real_eip !62
  %114 = and i64 %113, 16, !mcsema_real_eip !62
  %115 = icmp ne i64 %114, 0, !mcsema_real_eip !62
  store i1 %115, i1* %AF, !mcsema_real_eip !62
  %116 = lshr i64 %111, 63, !mcsema_real_eip !62
  %117 = trunc i64 %116 to i1, !mcsema_real_eip !62
  store i1 %117, i1* %SF, !mcsema_real_eip !62
  %118 = icmp eq i64 %111, 0, !mcsema_real_eip !62
  store i1 %118, i1* %ZF, !mcsema_real_eip !62
  %119 = xor i64 %RAX_val.80, 1, !mcsema_real_eip !62
  %120 = xor i64 %119, -1, !mcsema_real_eip !62
  %121 = xor i64 %RAX_val.80, %111, !mcsema_real_eip !62
  %122 = and i64 %120, %121, !mcsema_real_eip !62
  %123 = lshr i64 %122, 63, !mcsema_real_eip !62
  %124 = and i64 %123, 1, !mcsema_real_eip !62
  %125 = trunc i64 %124 to i1, !mcsema_real_eip !62
  store i1 %125, i1* %OF, !mcsema_real_eip !62
  %126 = trunc i64 %111 to i8, !mcsema_real_eip !62
  %127 = call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !62
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !62
  %129 = xor i1 %128, true, !mcsema_real_eip !62
  store i1 %129, i1* %PF, !mcsema_real_eip !62
  %130 = icmp ult i64 %111, %RAX_val.80, !mcsema_real_eip !62
  store i1 %130, i1* %CF, !mcsema_real_eip !62
  store i64 %111, i64* %XAX, !mcsema_real_eip !62
  %RBP_val.81 = load i64, i64* %XBP, !mcsema_real_eip !63
  %131 = add i64 %RBP_val.81, -24, !mcsema_real_eip !63
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !63
  %RAX_val.82 = load i64, i64* %XAX, !mcsema_real_eip !63
  store i64 %RAX_val.82, i64* %132, !mcsema_real_eip !63
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !64
  %133 = add i64 %RBP_val.83, -32, !mcsema_real_eip !64
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !64
  %135 = load i64, i64* %134, !mcsema_real_eip !64
  store i64 %135, i64* %XAX, !mcsema_real_eip !64
  %RAX_val.84 = load i64, i64* %XAX, !mcsema_real_eip !65
  %136 = add i64 1, %RAX_val.84, !mcsema_real_eip !65
  %137 = xor i64 %136, %RAX_val.84, !mcsema_real_eip !65
  %138 = xor i64 %137, 1, !mcsema_real_eip !65
  %139 = and i64 %138, 16, !mcsema_real_eip !65
  %140 = icmp ne i64 %139, 0, !mcsema_real_eip !65
  store i1 %140, i1* %AF, !mcsema_real_eip !65
  %141 = lshr i64 %136, 63, !mcsema_real_eip !65
  %142 = trunc i64 %141 to i1, !mcsema_real_eip !65
  store i1 %142, i1* %SF, !mcsema_real_eip !65
  %143 = icmp eq i64 %136, 0, !mcsema_real_eip !65
  store i1 %143, i1* %ZF, !mcsema_real_eip !65
  %144 = xor i64 %RAX_val.84, 1, !mcsema_real_eip !65
  %145 = xor i64 %144, -1, !mcsema_real_eip !65
  %146 = xor i64 %RAX_val.84, %136, !mcsema_real_eip !65
  %147 = and i64 %145, %146, !mcsema_real_eip !65
  %148 = lshr i64 %147, 63, !mcsema_real_eip !65
  %149 = and i64 %148, 1, !mcsema_real_eip !65
  %150 = trunc i64 %149 to i1, !mcsema_real_eip !65
  store i1 %150, i1* %OF, !mcsema_real_eip !65
  %151 = trunc i64 %136 to i8, !mcsema_real_eip !65
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !65
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !65
  %154 = xor i1 %153, true, !mcsema_real_eip !65
  store i1 %154, i1* %PF, !mcsema_real_eip !65
  %155 = icmp ult i64 %136, %RAX_val.84, !mcsema_real_eip !65
  store i1 %155, i1* %CF, !mcsema_real_eip !65
  store i64 %136, i64* %XAX, !mcsema_real_eip !65
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !66
  %156 = add i64 %RBP_val.85, -32, !mcsema_real_eip !66
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !66
  %RAX_val.86 = load i64, i64* %XAX, !mcsema_real_eip !66
  store i64 %RAX_val.86, i64* %157, !mcsema_real_eip !66
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !67
  %158 = add i64 %RBP_val.87, -24, !mcsema_real_eip !67
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !67
  %160 = load i64, i64* %159, !mcsema_real_eip !67
  store i64 %160, i64* %XAX, !mcsema_real_eip !67
  %RAX_val.88 = load i64, i64* %XAX, !mcsema_real_eip !68
  %161 = add i64 %RAX_val.88, 0, !mcsema_real_eip !68
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !68
  %163 = ptrtoint i64* %162 to i64, !mcsema_real_eip !68
  %164 = inttoptr i64 %163 to i8*, !mcsema_real_eip !68
  %165 = load i8, i8* %164, !mcsema_real_eip !68
  %CL.89 = bitcast i64* %XCX to i8*, !mcsema_real_eip !68
  store i8 %165, i8* %CL.89, !mcsema_real_eip !68
  %RBP_val.90 = load i64, i64* %XBP, !mcsema_real_eip !69
  %166 = add i64 %RBP_val.90, -33, !mcsema_real_eip !69
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !69
  %CL.91 = bitcast i64* %XCX to i8*, !mcsema_real_eip !69
  %CL_val.92 = load i8, i8* %CL.91, !mcsema_real_eip !69
  %168 = ptrtoint i64* %167 to i64, !mcsema_real_eip !69
  %169 = inttoptr i64 %168 to i8*, !mcsema_real_eip !69
  store i8 %CL_val.92, i8* %169, !mcsema_real_eip !69
  br label %block_0x125, !mcsema_real_eip !70
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @checkFn(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !71
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !71
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !71
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !71
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !71
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !71
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !71
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !71
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !71
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !71
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !71
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !71
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !71
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !71
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !71
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !71
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !71
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !71
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !71
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !71
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !71
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !71
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !71
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !71
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !71
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !71
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !71
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !71
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !71
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !71
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !71
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !71
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !71
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !71
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !71
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !71
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !71
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !71
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !71
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !71
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !71
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !71
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !71
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !71
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !71
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !71
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !71
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !71
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !71
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !71
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !71
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !71
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !71
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !71
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !71
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !71
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !71
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !71
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !71
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !71
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !71
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !71
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !71
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !71
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !71
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !71
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !71
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !71
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !71
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !71
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !71
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !71
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !71
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !71
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !71
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !71
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !71
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !71
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !71
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !71
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !71
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !71
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !71
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !71
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !71
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !71
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !71
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !71
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !71
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !71
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !71
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !71
  br label %block_0x90, !mcsema_real_eip !71

block_0x90:                                       ; preds = %entry
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !71
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !71
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !71
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !71
  store i64 %RBP_val.93, i64* %2, !mcsema_real_eip !71
  store i64 %1, i64* %XSP, !mcsema_real_eip !71
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !72
  store i64 %RSP_val.95, i64* %XBP, !mcsema_real_eip !72
  %RSP_val.96 = load i64, i64* %XSP, !mcsema_real_eip !73
  %3 = sub i64 %RSP_val.96, 32, !mcsema_real_eip !73
  %4 = xor i64 %3, %RSP_val.96, !mcsema_real_eip !73
  %5 = xor i64 %4, 32, !mcsema_real_eip !73
  %6 = and i64 %5, 16, !mcsema_real_eip !73
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !73
  store i1 %7, i1* %AF, !mcsema_real_eip !73
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !73
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !73
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !73
  %11 = xor i1 %10, true, !mcsema_real_eip !73
  store i1 %11, i1* %PF, !mcsema_real_eip !73
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !73
  store i1 %12, i1* %ZF, !mcsema_real_eip !73
  %13 = lshr i64 %3, 63, !mcsema_real_eip !73
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !73
  store i1 %14, i1* %SF, !mcsema_real_eip !73
  %15 = icmp ult i64 %RSP_val.96, 32, !mcsema_real_eip !73
  store i1 %15, i1* %CF, !mcsema_real_eip !73
  %16 = xor i64 %RSP_val.96, 32, !mcsema_real_eip !73
  %17 = xor i64 %RSP_val.96, %3, !mcsema_real_eip !73
  %18 = and i64 %16, %17, !mcsema_real_eip !73
  %19 = lshr i64 %18, 63, !mcsema_real_eip !73
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !73
  store i1 %20, i1* %OF, !mcsema_real_eip !73
  store i64 %3, i64* %XSP, !mcsema_real_eip !73
  %RBP_val.97 = load i64, i64* %XBP, !mcsema_real_eip !74
  %21 = add i64 %RBP_val.97, -8, !mcsema_real_eip !74
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !74
  %RDI_val.98 = load i64, i64* %XDI, !mcsema_real_eip !74
  store i64 %RDI_val.98, i64* %22, !mcsema_real_eip !74
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !75
  %23 = add i64 %RBP_val.99, -12, !mcsema_real_eip !75
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !75
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !75
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !75
  store i32 1, i32* %26, !mcsema_real_eip !75
  %RBP_val.100 = load i64, i64* %XBP, !mcsema_real_eip !76
  %27 = add i64 %RBP_val.100, -8, !mcsema_real_eip !76
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !76
  %29 = load i64, i64* %28, !mcsema_real_eip !76
  store i64 %29, i64* %XDI, !mcsema_real_eip !76
  %RDI_val.101 = load i64, i64* %XDI, !mcsema_real_eip !77
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !77
  %30 = sub i64 %RSP_val.102, 8, !mcsema_real_eip !77
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !77
  store i64 -2415393069852865332, i64* %31, !mcsema_real_eip !77
  store i64 %30, i64* %XSP, !mcsema_real_eip !77
  %32 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.101), !mcsema_real_eip !77
  store i64 %32, i64* %XAX, !mcsema_real_eip !77
  %EAX.103 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.104 = load i32, i32* %EAX.103, !mcsema_real_eip !78
  %33 = zext i32 %EAX_val.104 to i64, !mcsema_real_eip !78
  store i64 %33, i64* %XCX, !mcsema_real_eip !78
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !79
  %34 = add i64 %RBP_val.105, -16, !mcsema_real_eip !79
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !79
  %ECX.106 = bitcast i64* %XCX to i32*, !mcsema_real_eip !79
  %ECX_val.107 = load i32, i32* %ECX.106, !mcsema_real_eip !79
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !79
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !79
  store i32 %ECX_val.107, i32* %37, !mcsema_real_eip !79
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !80
  %38 = add i64 %RBP_val.108, -16, !mcsema_real_eip !80
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !80
  %40 = ptrtoint i64* %39 to i64, !mcsema_real_eip !80
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !80
  %42 = load i32, i32* %41, !mcsema_real_eip !80
  %43 = sub i32 %42, 1, !mcsema_real_eip !80
  %44 = xor i32 %43, %42, !mcsema_real_eip !80
  %45 = xor i32 %44, 1, !mcsema_real_eip !80
  %46 = and i32 %45, 16, !mcsema_real_eip !80
  %47 = icmp ne i32 %46, 0, !mcsema_real_eip !80
  store i1 %47, i1* %AF, !mcsema_real_eip !80
  %48 = trunc i32 %43 to i8, !mcsema_real_eip !80
  %49 = call i8 @llvm.ctpop.i8(i8 %48), !mcsema_real_eip !80
  %50 = trunc i8 %49 to i1, !mcsema_real_eip !80
  %51 = xor i1 %50, true, !mcsema_real_eip !80
  store i1 %51, i1* %PF, !mcsema_real_eip !80
  %52 = icmp eq i32 %43, 0, !mcsema_real_eip !80
  store i1 %52, i1* %ZF, !mcsema_real_eip !80
  %53 = lshr i32 %43, 31, !mcsema_real_eip !80
  %54 = trunc i32 %53 to i1, !mcsema_real_eip !80
  store i1 %54, i1* %SF, !mcsema_real_eip !80
  %55 = icmp ult i32 %42, 1, !mcsema_real_eip !80
  store i1 %55, i1* %CF, !mcsema_real_eip !80
  %56 = xor i32 %42, 1, !mcsema_real_eip !80
  %57 = xor i32 %42, %43, !mcsema_real_eip !80
  %58 = and i32 %56, %57, !mcsema_real_eip !80
  %59 = lshr i32 %58, 31, !mcsema_real_eip !80
  %60 = trunc i32 %59 to i1, !mcsema_real_eip !80
  store i1 %60, i1* %OF, !mcsema_real_eip !80
  %61 = load i1, i1* %OF, !mcsema_real_eip !81
  %62 = load i1, i1* %SF, !mcsema_real_eip !81
  %63 = icmp eq i1 %62, %61, !mcsema_real_eip !81
  %64 = icmp eq i1 %63, false, !mcsema_real_eip !81
  %65 = load i1, i1* %ZF, !mcsema_real_eip !81
  %66 = icmp eq i1 %65, true, !mcsema_real_eip !81
  %67 = or i1 %66, %64, !mcsema_real_eip !81
  br i1 %67, label %block_0xf3, label %block_0xbb, !mcsema_real_eip !81

block_0xbb:                                       ; preds = %block_0x90
  %RBP_val.113 = load i64, i64* %XBP, !mcsema_real_eip !82
  %68 = add i64 %RBP_val.113, -8, !mcsema_real_eip !82
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !82
  %70 = load i64, i64* %69, !mcsema_real_eip !82
  store i64 %70, i64* %XAX, !mcsema_real_eip !82
  %RAX_val.114 = load i64, i64* %XAX, !mcsema_real_eip !83
  %71 = add i64 %RAX_val.114, 0, !mcsema_real_eip !83
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !83
  %73 = ptrtoint i64* %72 to i64, !mcsema_real_eip !83
  %74 = inttoptr i64 %73 to i8*, !mcsema_real_eip !83
  %75 = load i8, i8* %74, !mcsema_real_eip !83
  %CL.115 = bitcast i64* %XCX to i8*, !mcsema_real_eip !83
  store i8 %75, i8* %CL.115, !mcsema_real_eip !83
  %RBP_val.116 = load i64, i64* %XBP, !mcsema_real_eip !84
  %76 = add i64 %RBP_val.116, -17, !mcsema_real_eip !84
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !84
  %CL.117 = bitcast i64* %XCX to i8*, !mcsema_real_eip !84
  %CL_val.118 = load i8, i8* %CL.117, !mcsema_real_eip !84
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !84
  %79 = inttoptr i64 %78 to i8*, !mcsema_real_eip !84
  store i8 %CL_val.118, i8* %79, !mcsema_real_eip !84
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !85
  %80 = add i64 %RBP_val.119, -8, !mcsema_real_eip !85
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !85
  %82 = load i64, i64* %81, !mcsema_real_eip !85
  store i64 %82, i64* %XAX, !mcsema_real_eip !85
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !86
  %83 = add i64 %RBP_val.120, -16, !mcsema_real_eip !86
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !86
  %85 = ptrtoint i64* %84 to i64, !mcsema_real_eip !86
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !86
  %87 = load i32, i32* %86, !mcsema_real_eip !86
  %88 = zext i32 %87 to i64, !mcsema_real_eip !86
  store i64 %88, i64* %XDX, !mcsema_real_eip !86
  %EDX.121 = bitcast i64* %XDX to i32*, !mcsema_real_eip !87
  %EDX_val.122 = load i32, i32* %EDX.121, !mcsema_real_eip !87
  %89 = sub i32 %EDX_val.122, 1, !mcsema_real_eip !87
  %90 = xor i32 %89, %EDX_val.122, !mcsema_real_eip !87
  %91 = xor i32 %90, 1, !mcsema_real_eip !87
  %92 = and i32 %91, 16, !mcsema_real_eip !87
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !87
  store i1 %93, i1* %AF, !mcsema_real_eip !87
  %94 = trunc i32 %89 to i8, !mcsema_real_eip !87
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !87
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !87
  %97 = xor i1 %96, true, !mcsema_real_eip !87
  store i1 %97, i1* %PF, !mcsema_real_eip !87
  %98 = icmp eq i32 %89, 0, !mcsema_real_eip !87
  store i1 %98, i1* %ZF, !mcsema_real_eip !87
  %99 = lshr i32 %89, 31, !mcsema_real_eip !87
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !87
  store i1 %100, i1* %SF, !mcsema_real_eip !87
  %101 = icmp ult i32 %EDX_val.122, 1, !mcsema_real_eip !87
  store i1 %101, i1* %CF, !mcsema_real_eip !87
  %102 = xor i32 %EDX_val.122, 1, !mcsema_real_eip !87
  %103 = xor i32 %EDX_val.122, %89, !mcsema_real_eip !87
  %104 = and i32 %102, %103, !mcsema_real_eip !87
  %105 = lshr i32 %104, 31, !mcsema_real_eip !87
  %106 = trunc i32 %105 to i1, !mcsema_real_eip !87
  store i1 %106, i1* %OF, !mcsema_real_eip !87
  %107 = zext i32 %89 to i64, !mcsema_real_eip !87
  store i64 %107, i64* %XDX, !mcsema_real_eip !87
  %EDX.123 = bitcast i64* %XDX to i32*, !mcsema_real_eip !88
  %EDX_val.124 = load i32, i32* %EDX.123, !mcsema_real_eip !88
  %108 = sext i32 %EDX_val.124 to i64, !mcsema_real_eip !88
  store i64 %108, i64* %XSI, !mcsema_real_eip !88
  %RAX_val.125 = load i64, i64* %XAX, !mcsema_real_eip !89
  %109 = add i64 %RAX_val.125, 0, !mcsema_real_eip !89
  %RSI_val.126 = load i64, i64* %XSI, !mcsema_real_eip !89
  %110 = add i64 %109, %RSI_val.126, !mcsema_real_eip !89
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !89
  %112 = ptrtoint i64* %111 to i64, !mcsema_real_eip !89
  %113 = inttoptr i64 %112 to i8*, !mcsema_real_eip !89
  %114 = load i8, i8* %113, !mcsema_real_eip !89
  %CL.127 = bitcast i64* %XCX to i8*, !mcsema_real_eip !89
  store i8 %114, i8* %CL.127, !mcsema_real_eip !89
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !90
  %115 = add i64 %RBP_val.128, -18, !mcsema_real_eip !90
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !90
  %CL.129 = bitcast i64* %XCX to i8*, !mcsema_real_eip !90
  %CL_val.130 = load i8, i8* %CL.129, !mcsema_real_eip !90
  %117 = ptrtoint i64* %116 to i64, !mcsema_real_eip !90
  %118 = inttoptr i64 %117 to i8*, !mcsema_real_eip !90
  store i8 %CL_val.130, i8* %118, !mcsema_real_eip !90
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !91
  %119 = add i64 %RBP_val.131, -17, !mcsema_real_eip !91
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !91
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !91
  %122 = inttoptr i64 %121 to i8*, !mcsema_real_eip !91
  %123 = load i8, i8* %122, !mcsema_real_eip !91
  %124 = sext i8 %123 to i32, !mcsema_real_eip !91
  %125 = zext i32 %124 to i64, !mcsema_real_eip !91
  store i64 %125, i64* %XDX, !mcsema_real_eip !91
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !92
  %126 = add i64 %RBP_val.132, -18, !mcsema_real_eip !92
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !92
  %128 = ptrtoint i64* %127 to i64, !mcsema_real_eip !92
  %129 = inttoptr i64 %128 to i8*, !mcsema_real_eip !92
  %130 = load i8, i8* %129, !mcsema_real_eip !92
  %131 = sext i8 %130 to i32, !mcsema_real_eip !92
  %132 = zext i32 %131 to i64, !mcsema_real_eip !92
  store i64 %132, i64* %XDI, !mcsema_real_eip !92
  %EDX.133 = bitcast i64* %XDX to i32*, !mcsema_real_eip !93
  %EDX_val.134 = load i32, i32* %EDX.133, !mcsema_real_eip !93
  %EDI.135 = bitcast i64* %XDI to i32*, !mcsema_real_eip !93
  %EDI_val.136 = load i32, i32* %EDI.135, !mcsema_real_eip !93
  %133 = sub i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  %134 = xor i32 %133, %EDX_val.134, !mcsema_real_eip !93
  %135 = xor i32 %134, %EDI_val.136, !mcsema_real_eip !93
  %136 = and i32 %135, 16, !mcsema_real_eip !93
  %137 = icmp ne i32 %136, 0, !mcsema_real_eip !93
  store i1 %137, i1* %AF, !mcsema_real_eip !93
  %138 = trunc i32 %133 to i8, !mcsema_real_eip !93
  %139 = call i8 @llvm.ctpop.i8(i8 %138), !mcsema_real_eip !93
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !93
  %141 = xor i1 %140, true, !mcsema_real_eip !93
  store i1 %141, i1* %PF, !mcsema_real_eip !93
  %142 = icmp eq i32 %133, 0, !mcsema_real_eip !93
  store i1 %142, i1* %ZF, !mcsema_real_eip !93
  %143 = lshr i32 %133, 31, !mcsema_real_eip !93
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !93
  store i1 %144, i1* %SF, !mcsema_real_eip !93
  %145 = icmp ult i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  store i1 %145, i1* %CF, !mcsema_real_eip !93
  %146 = xor i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  %147 = xor i32 %EDX_val.134, %133, !mcsema_real_eip !93
  %148 = and i32 %146, %147, !mcsema_real_eip !93
  %149 = lshr i32 %148, 31, !mcsema_real_eip !93
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !93
  store i1 %150, i1* %OF, !mcsema_real_eip !93
  %151 = load i1, i1* %ZF, !mcsema_real_eip !94
  %152 = icmp eq i1 %151, false, !mcsema_real_eip !94
  br i1 %152, label %block_0xee, label %block_0xe7, !mcsema_real_eip !94

block_0xf3:                                       ; preds = %block_0xee, %block_0x90
  %RBP_val.109 = load i64, i64* %XBP, !mcsema_real_eip !95
  %153 = add i64 %RBP_val.109, -12, !mcsema_real_eip !95
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !95
  %155 = ptrtoint i64* %154 to i64, !mcsema_real_eip !95
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !95
  %157 = load i32, i32* %156, !mcsema_real_eip !95
  %158 = zext i32 %157 to i64, !mcsema_real_eip !95
  store i64 %158, i64* %XAX, !mcsema_real_eip !95
  %RSP_val.110 = load i64, i64* %XSP, !mcsema_real_eip !96
  %159 = add i64 32, %RSP_val.110, !mcsema_real_eip !96
  %160 = xor i64 %159, %RSP_val.110, !mcsema_real_eip !96
  %161 = xor i64 %160, 32, !mcsema_real_eip !96
  %162 = and i64 %161, 16, !mcsema_real_eip !96
  %163 = icmp ne i64 %162, 0, !mcsema_real_eip !96
  store i1 %163, i1* %AF, !mcsema_real_eip !96
  %164 = lshr i64 %159, 63, !mcsema_real_eip !96
  %165 = trunc i64 %164 to i1, !mcsema_real_eip !96
  store i1 %165, i1* %SF, !mcsema_real_eip !96
  %166 = icmp eq i64 %159, 0, !mcsema_real_eip !96
  store i1 %166, i1* %ZF, !mcsema_real_eip !96
  %167 = xor i64 %RSP_val.110, 32, !mcsema_real_eip !96
  %168 = xor i64 %167, -1, !mcsema_real_eip !96
  %169 = xor i64 %RSP_val.110, %159, !mcsema_real_eip !96
  %170 = and i64 %168, %169, !mcsema_real_eip !96
  %171 = lshr i64 %170, 63, !mcsema_real_eip !96
  %172 = and i64 %171, 1, !mcsema_real_eip !96
  %173 = trunc i64 %172 to i1, !mcsema_real_eip !96
  store i1 %173, i1* %OF, !mcsema_real_eip !96
  %174 = trunc i64 %159 to i8, !mcsema_real_eip !96
  %175 = call i8 @llvm.ctpop.i8(i8 %174), !mcsema_real_eip !96
  %176 = trunc i8 %175 to i1, !mcsema_real_eip !96
  %177 = xor i1 %176, true, !mcsema_real_eip !96
  store i1 %177, i1* %PF, !mcsema_real_eip !96
  %178 = icmp ult i64 %159, %RSP_val.110, !mcsema_real_eip !96
  store i1 %178, i1* %CF, !mcsema_real_eip !96
  store i64 %159, i64* %XSP, !mcsema_real_eip !96
  %RSP_val.111 = load i64, i64* %XSP, !mcsema_real_eip !97
  %179 = inttoptr i64 %RSP_val.111 to i64*, !mcsema_real_eip !97
  %180 = load i64, i64* %179, !mcsema_real_eip !97
  store i64 %180, i64* %XBP, !mcsema_real_eip !97
  %181 = add i64 %RSP_val.111, 8, !mcsema_real_eip !97
  store i64 %181, i64* %XSP, !mcsema_real_eip !97
  %RSP_val.112 = load i64, i64* %XSP, !mcsema_real_eip !98
  %182 = add i64 %RSP_val.112, 8, !mcsema_real_eip !98
  %183 = inttoptr i64 %RSP_val.112 to i64*, !mcsema_real_eip !98
  %184 = load i64, i64* %183, !mcsema_real_eip !98
  store i64 %184, i64* %XIP, !mcsema_real_eip !98
  store i64 %182, i64* %XSP, !mcsema_real_eip !98
  ret void, !mcsema_real_eip !98

block_0xe7:                                       ; preds = %block_0xbb
  %RBP_val.137 = load i64, i64* %XBP, !mcsema_real_eip !99
  %185 = add i64 %RBP_val.137, -12, !mcsema_real_eip !99
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !99
  %187 = ptrtoint i64* %186 to i64, !mcsema_real_eip !99
  %188 = inttoptr i64 %187 to i32*, !mcsema_real_eip !99
  store i32 0, i32* %188, !mcsema_real_eip !99
  br label %block_0xee

block_0xee:                                       ; preds = %block_0xe7, %block_0xbb
  br label %block_0xf3, !mcsema_real_eip !100
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare void @doWork() #2

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
!7 = !{i64 15}
!8 = !{i64 22}
!9 = !{i64 26}
!10 = !{i64 30}
!11 = !{i64 35}
!12 = !{i64 39}
!13 = !{i64 42}
!14 = !{i64 45}
!15 = !{i64 51}
!16 = !{i64 55}
!17 = !{i64 59}
!18 = !{i64 63}
!19 = !{i64 67}
!20 = !{i64 71}
!21 = !{i64 76}
!22 = !{i64 79}
!23 = !{i64 117}
!24 = !{i64 121}
!25 = !{i64 125}
!26 = !{i64 129}
!27 = !{i64 130}
!28 = !{i64 85}
!29 = !{i64 89}
!30 = !{i64 93}
!31 = !{i64 103}
!32 = !{i64 98}
!33 = !{i64 106}
!34 = !{i64 109}
!35 = !{i64 112}
!36 = !{i64 256}
!37 = !{i64 257}
!38 = !{i64 260}
!39 = !{i64 264}
!40 = !{i64 268}
!41 = !{i64 272}
!42 = !{i64 276}
!43 = !{i64 280}
!44 = !{i64 284}
!45 = !{i64 288}
!46 = !{i64 290}
!47 = !{i64 293}
!48 = !{i64 297}
!49 = !{i64 300}
!50 = !{i64 306}
!51 = !{i64 310}
!52 = !{i64 313}
!53 = !{i64 378}
!54 = !{i64 379}
!55 = !{i64 319}
!56 = !{i64 323}
!57 = !{i64 326}
!58 = !{i64 331}
!59 = !{i64 334}
!60 = !{i64 338}
!61 = !{i64 340}
!62 = !{i64 344}
!63 = !{i64 348}
!64 = !{i64 352}
!65 = !{i64 356}
!66 = !{i64 360}
!67 = !{i64 364}
!68 = !{i64 368}
!69 = !{i64 370}
!70 = !{i64 373}
!71 = !{i64 144}
!72 = !{i64 145}
!73 = !{i64 148}
!74 = !{i64 152}
!75 = !{i64 156}
!76 = !{i64 163}
!77 = !{i64 167}
!78 = !{i64 172}
!79 = !{i64 174}
!80 = !{i64 177}
!81 = !{i64 181}
!82 = !{i64 187}
!83 = !{i64 191}
!84 = !{i64 193}
!85 = !{i64 196}
!86 = !{i64 200}
!87 = !{i64 203}
!88 = !{i64 206}
!89 = !{i64 209}
!90 = !{i64 212}
!91 = !{i64 215}
!92 = !{i64 219}
!93 = !{i64 223}
!94 = !{i64 225}
!95 = !{i64 243}
!96 = !{i64 246}
!97 = !{i64 250}
!98 = !{i64 251}
!99 = !{i64 231}
!100 = !{i64 238}
