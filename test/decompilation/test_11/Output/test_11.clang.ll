; ModuleID = 'Output/test_11.clang.bc'
source_filename = "Output/test_11.clang.bc"
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
module asm "  .globl memset;"
module asm "  .globl _memset;"
module asm "  .type _memset,@function"
module asm "_memset:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memset@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memset,0b-_memset;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl doTrans;"
module asm "  .type doTrans,@function"
module asm "doTrans:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doTrans,0b-doTrans;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xc8 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\C8\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %3 = sext i8 48 to i64, !mcsema_real_eip !4
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
  %22 = add i64 %RBP_val.4, -16, !mcsema_real_eip !5
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %23, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %24 = add i64 %RBP_val.6, -16, !mcsema_real_eip !6
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !6
  %26 = load i64, i64* %25, !mcsema_real_eip !6
  store i64 %26, i64* %XDI, !mcsema_real_eip !6
  %RDI_val.7 = load i64, i64* %XDI, !mcsema_real_eip !7
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !7
  %27 = sub i64 %RSP_val.8, 8, !mcsema_real_eip !7
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !7
  store i64 -2415393069852865332, i64* %28, !mcsema_real_eip !7
  store i64 %27, i64* %XSP, !mcsema_real_eip !7
  %29 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.7), !mcsema_real_eip !7
  store i64 %29, i64* %XAX, !mcsema_real_eip !7
  %RAX_val.9 = load i64, i64* %XAX, !mcsema_real_eip !8
  %30 = add i64 1, %RAX_val.9, !mcsema_real_eip !8
  %31 = xor i64 %30, %RAX_val.9, !mcsema_real_eip !8
  %32 = xor i64 %31, 1, !mcsema_real_eip !8
  %33 = and i64 %32, 16, !mcsema_real_eip !8
  %34 = icmp ne i64 %33, 0, !mcsema_real_eip !8
  store i1 %34, i1* %AF, !mcsema_real_eip !8
  %35 = lshr i64 %30, 63, !mcsema_real_eip !8
  %36 = trunc i64 %35 to i1, !mcsema_real_eip !8
  store i1 %36, i1* %SF, !mcsema_real_eip !8
  %37 = icmp eq i64 %30, 0, !mcsema_real_eip !8
  store i1 %37, i1* %ZF, !mcsema_real_eip !8
  %38 = xor i64 %RAX_val.9, 1, !mcsema_real_eip !8
  %39 = xor i64 %38, -1, !mcsema_real_eip !8
  %40 = xor i64 %RAX_val.9, %30, !mcsema_real_eip !8
  %41 = and i64 %39, %40, !mcsema_real_eip !8
  %42 = lshr i64 %41, 63, !mcsema_real_eip !8
  %43 = and i64 %42, 1, !mcsema_real_eip !8
  %44 = trunc i64 %43 to i1, !mcsema_real_eip !8
  store i1 %44, i1* %OF, !mcsema_real_eip !8
  %45 = trunc i64 %30 to i8, !mcsema_real_eip !8
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !8
  %47 = trunc i8 %46 to i1, !mcsema_real_eip !8
  %48 = xor i1 %47, true, !mcsema_real_eip !8
  store i1 %48, i1* %PF, !mcsema_real_eip !8
  %49 = icmp ult i64 %30, %RAX_val.9, !mcsema_real_eip !8
  store i1 %49, i1* %CF, !mcsema_real_eip !8
  store i64 %30, i64* %XAX, !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %50 = add i64 %RBP_val.10, -24, !mcsema_real_eip !9
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !9
  %RAX_val.11 = load i64, i64* %XAX, !mcsema_real_eip !9
  store i64 %RAX_val.11, i64* %51, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %52 = add i64 %RBP_val.12, -24, !mcsema_real_eip !10
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !10
  %54 = load i64, i64* %53, !mcsema_real_eip !10
  store i64 %54, i64* %XDI, !mcsema_real_eip !10
  %RDI_val.13 = load i64, i64* %XDI, !mcsema_real_eip !11
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %55 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %56, !mcsema_real_eip !11
  store i64 %55, i64* %XSP, !mcsema_real_eip !11
  %57 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.13), !mcsema_real_eip !11
  store i64 %57, i64* %XAX, !mcsema_real_eip !11
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !12
  %58 = add i64 %RBP_val.15, -32, !mcsema_real_eip !12
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !12
  %RAX_val.16 = load i64, i64* %XAX, !mcsema_real_eip !12
  store i64 %RAX_val.16, i64* %59, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !13
  %60 = add i64 %RBP_val.17, -32, !mcsema_real_eip !13
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !13
  %62 = load i64, i64* %61, !mcsema_real_eip !13
  %63 = sub i64 %62, 0, !mcsema_real_eip !13
  %64 = xor i64 %63, %62, !mcsema_real_eip !13
  %65 = xor i64 %64, 0, !mcsema_real_eip !13
  %66 = and i64 %65, 16, !mcsema_real_eip !13
  %67 = icmp ne i64 %66, 0, !mcsema_real_eip !13
  store i1 %67, i1* %AF, !mcsema_real_eip !13
  %68 = trunc i64 %63 to i8, !mcsema_real_eip !13
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !13
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !13
  %71 = xor i1 %70, true, !mcsema_real_eip !13
  store i1 %71, i1* %PF, !mcsema_real_eip !13
  %72 = icmp eq i64 %63, 0, !mcsema_real_eip !13
  store i1 %72, i1* %ZF, !mcsema_real_eip !13
  %73 = lshr i64 %63, 63, !mcsema_real_eip !13
  %74 = trunc i64 %73 to i1, !mcsema_real_eip !13
  store i1 %74, i1* %SF, !mcsema_real_eip !13
  %75 = icmp ult i64 %62, 0, !mcsema_real_eip !13
  store i1 %75, i1* %CF, !mcsema_real_eip !13
  %76 = xor i64 %62, 0, !mcsema_real_eip !13
  %77 = xor i64 %62, %63, !mcsema_real_eip !13
  %78 = and i64 %76, %77, !mcsema_real_eip !13
  %79 = lshr i64 %78, 63, !mcsema_real_eip !13
  %80 = trunc i64 %79 to i1, !mcsema_real_eip !13
  store i1 %80, i1* %OF, !mcsema_real_eip !13
  %81 = load i1, i1* %ZF, !mcsema_real_eip !14
  %82 = icmp eq i1 %81, true, !mcsema_real_eip !14
  br i1 %82, label %block_0xb6, label %block_0x35, !mcsema_real_eip !14

block_0x35:                                       ; preds = %block_0x0
  %ESI.18 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.19 = load i32, i32* %ESI.18, !mcsema_real_eip !15
  %ESI.20 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.21 = load i32, i32* %ESI.20, !mcsema_real_eip !15
  %83 = xor i32 %ESI_val.19, %ESI_val.21, !mcsema_real_eip !15
  store i1 false, i1* %CF, !mcsema_real_eip !15
  store i1 false, i1* %OF, !mcsema_real_eip !15
  %84 = lshr i32 %83, 31, !mcsema_real_eip !15
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !15
  store i1 %85, i1* %SF, !mcsema_real_eip !15
  %86 = icmp eq i32 %83, 0, !mcsema_real_eip !15
  store i1 %86, i1* %ZF, !mcsema_real_eip !15
  %87 = trunc i32 %83 to i8, !mcsema_real_eip !15
  %88 = call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !15
  %89 = trunc i8 %88 to i1, !mcsema_real_eip !15
  %90 = xor i1 %89, true, !mcsema_real_eip !15
  store i1 %90, i1* %PF, !mcsema_real_eip !15
  store i1 undef, i1* %AF, !mcsema_real_eip !15
  %91 = zext i32 %83 to i64, !mcsema_real_eip !15
  store i64 %91, i64* %XSI, !mcsema_real_eip !15
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !16
  %92 = add i64 %RBP_val.22, -16, !mcsema_real_eip !16
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !16
  %94 = load i64, i64* %93, !mcsema_real_eip !16
  store i64 %94, i64* %XAX, !mcsema_real_eip !16
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !17
  %95 = add i64 %RBP_val.23, -40, !mcsema_real_eip !17
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !17
  %RAX_val.24 = load i64, i64* %XAX, !mcsema_real_eip !17
  store i64 %RAX_val.24, i64* %96, !mcsema_real_eip !17
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !18
  %97 = add i64 %RBP_val.25, -32, !mcsema_real_eip !18
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !18
  %99 = load i64, i64* %98, !mcsema_real_eip !18
  store i64 %99, i64* %XAX, !mcsema_real_eip !18
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !19
  %100 = add i64 %RBP_val.26, -48, !mcsema_real_eip !19
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !19
  %RAX_val.27 = load i64, i64* %XAX, !mcsema_real_eip !19
  store i64 %RAX_val.27, i64* %101, !mcsema_real_eip !19
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !20
  %102 = add i64 %RBP_val.28, -32, !mcsema_real_eip !20
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !20
  %104 = load i64, i64* %103, !mcsema_real_eip !20
  store i64 %104, i64* %XDI, !mcsema_real_eip !20
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !21
  %105 = add i64 %RBP_val.29, -24, !mcsema_real_eip !21
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !21
  %107 = load i64, i64* %106, !mcsema_real_eip !21
  store i64 %107, i64* %XDX, !mcsema_real_eip !21
  %RDI_val.30 = load i64, i64* %XDI, !mcsema_real_eip !22
  %RSI_val.31 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RDX_val.32 = load i64, i64* %XDX, !mcsema_real_eip !22
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !22
  %108 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !22
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %109, !mcsema_real_eip !22
  store i64 %108, i64* %XSP, !mcsema_real_eip !22
  %110 = call x86_64_sysvcc i64 @_memset(i64 %RDI_val.30, i64 %RSI_val.31, i64 %RDX_val.32), !mcsema_real_eip !22
  store i64 %110, i64* %XAX, !mcsema_real_eip !22
  br label %block_0x54, !mcsema_real_eip !23

block_0x54:                                       ; preds = %block_0x8c, %block_0x35
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !23
  %111 = add i64 %RBP_val.34, -40, !mcsema_real_eip !23
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !23
  %113 = load i64, i64* %112, !mcsema_real_eip !23
  store i64 %113, i64* %XAX, !mcsema_real_eip !23
  %RAX_val.35 = load i64, i64* %XAX, !mcsema_real_eip !24
  %114 = add i64 %RAX_val.35, 0, !mcsema_real_eip !24
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !24
  %116 = ptrtoint i64* %115 to i64, !mcsema_real_eip !24
  %117 = inttoptr i64 %116 to i8*, !mcsema_real_eip !24
  %118 = load i8, i8* %117, !mcsema_real_eip !24
  %119 = sext i8 %118 to i32, !mcsema_real_eip !24
  %120 = zext i32 %119 to i64, !mcsema_real_eip !24
  store i64 %120, i64* %XCX, !mcsema_real_eip !24
  %ECX.36 = bitcast i64* %XCX to i32*, !mcsema_real_eip !25
  %ECX_val.37 = load i32, i32* %ECX.36, !mcsema_real_eip !25
  %121 = sub i32 %ECX_val.37, 0, !mcsema_real_eip !25
  %122 = xor i32 %121, %ECX_val.37, !mcsema_real_eip !25
  %123 = xor i32 %122, 0, !mcsema_real_eip !25
  %124 = and i32 %123, 16, !mcsema_real_eip !25
  %125 = icmp ne i32 %124, 0, !mcsema_real_eip !25
  store i1 %125, i1* %AF, !mcsema_real_eip !25
  %126 = trunc i32 %121 to i8, !mcsema_real_eip !25
  %127 = call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !25
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !25
  %129 = xor i1 %128, true, !mcsema_real_eip !25
  store i1 %129, i1* %PF, !mcsema_real_eip !25
  %130 = icmp eq i32 %121, 0, !mcsema_real_eip !25
  store i1 %130, i1* %ZF, !mcsema_real_eip !25
  %131 = lshr i32 %121, 31, !mcsema_real_eip !25
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !25
  store i1 %132, i1* %SF, !mcsema_real_eip !25
  %133 = icmp ult i32 %ECX_val.37, 0, !mcsema_real_eip !25
  store i1 %133, i1* %CF, !mcsema_real_eip !25
  %134 = xor i32 %ECX_val.37, 0, !mcsema_real_eip !25
  %135 = xor i32 %ECX_val.37, %121, !mcsema_real_eip !25
  %136 = and i32 %134, %135, !mcsema_real_eip !25
  %137 = lshr i32 %136, 31, !mcsema_real_eip !25
  %138 = trunc i32 %137 to i1, !mcsema_real_eip !25
  store i1 %138, i1* %OF, !mcsema_real_eip !25
  %139 = load i1, i1* %ZF, !mcsema_real_eip !26
  %140 = icmp eq i1 %139, true, !mcsema_real_eip !26
  br i1 %140, label %block_0xa9, label %block_0x64, !mcsema_real_eip !26

block_0x64:                                       ; preds = %block_0x54
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !27
  %141 = add i64 %RBP_val.38, -40, !mcsema_real_eip !27
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !27
  %143 = load i64, i64* %142, !mcsema_real_eip !27
  store i64 %143, i64* %XAX, !mcsema_real_eip !27
  %RAX_val.39 = load i64, i64* %XAX, !mcsema_real_eip !28
  %144 = add i64 %RAX_val.39, 0, !mcsema_real_eip !28
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !28
  %146 = ptrtoint i64* %145 to i64, !mcsema_real_eip !28
  %147 = inttoptr i64 %146 to i8*, !mcsema_real_eip !28
  %148 = load i8, i8* %147, !mcsema_real_eip !28
  %149 = sext i8 %148 to i32, !mcsema_real_eip !28
  %150 = zext i32 %149 to i64, !mcsema_real_eip !28
  store i64 %150, i64* %XCX, !mcsema_real_eip !28
  %ECX.40 = bitcast i64* %XCX to i32*, !mcsema_real_eip !29
  %ECX_val.41 = load i32, i32* %ECX.40, !mcsema_real_eip !29
  %151 = sub i32 %ECX_val.41, 47, !mcsema_real_eip !29
  %152 = xor i32 %151, %ECX_val.41, !mcsema_real_eip !29
  %153 = xor i32 %152, 47, !mcsema_real_eip !29
  %154 = and i32 %153, 16, !mcsema_real_eip !29
  %155 = icmp ne i32 %154, 0, !mcsema_real_eip !29
  store i1 %155, i1* %AF, !mcsema_real_eip !29
  %156 = trunc i32 %151 to i8, !mcsema_real_eip !29
  %157 = call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !29
  %158 = trunc i8 %157 to i1, !mcsema_real_eip !29
  %159 = xor i1 %158, true, !mcsema_real_eip !29
  store i1 %159, i1* %PF, !mcsema_real_eip !29
  %160 = icmp eq i32 %151, 0, !mcsema_real_eip !29
  store i1 %160, i1* %ZF, !mcsema_real_eip !29
  %161 = lshr i32 %151, 31, !mcsema_real_eip !29
  %162 = trunc i32 %161 to i1, !mcsema_real_eip !29
  store i1 %162, i1* %SF, !mcsema_real_eip !29
  %163 = icmp ult i32 %ECX_val.41, 47, !mcsema_real_eip !29
  store i1 %163, i1* %CF, !mcsema_real_eip !29
  %164 = xor i32 %ECX_val.41, 47, !mcsema_real_eip !29
  %165 = xor i32 %ECX_val.41, %151, !mcsema_real_eip !29
  %166 = and i32 %164, %165, !mcsema_real_eip !29
  %167 = lshr i32 %166, 31, !mcsema_real_eip !29
  %168 = trunc i32 %167 to i1, !mcsema_real_eip !29
  store i1 %168, i1* %OF, !mcsema_real_eip !29
  %169 = load i1, i1* %ZF, !mcsema_real_eip !30
  %170 = icmp eq i1 %169, false, !mcsema_real_eip !30
  br i1 %170, label %block_0x80, label %block_0x74, !mcsema_real_eip !30

block_0x74:                                       ; preds = %block_0x64
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !31
  %171 = add i64 %RBP_val.42, -48, !mcsema_real_eip !31
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !31
  %173 = load i64, i64* %172, !mcsema_real_eip !31
  store i64 %173, i64* %XAX, !mcsema_real_eip !31
  %RAX_val.43 = load i64, i64* %XAX, !mcsema_real_eip !32
  %174 = add i64 %RAX_val.43, 0, !mcsema_real_eip !32
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !32
  %176 = ptrtoint i64* %175 to i64, !mcsema_real_eip !32
  %177 = inttoptr i64 %176 to i8*, !mcsema_real_eip !32
  store i8 92, i8* %177, !mcsema_real_eip !32
  br label %block_0x8c, !mcsema_real_eip !33

block_0x80:                                       ; preds = %block_0x64
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !34
  %178 = add i64 %RBP_val.44, -40, !mcsema_real_eip !34
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !34
  %180 = load i64, i64* %179, !mcsema_real_eip !34
  store i64 %180, i64* %XAX, !mcsema_real_eip !34
  %RAX_val.45 = load i64, i64* %XAX, !mcsema_real_eip !35
  %181 = add i64 %RAX_val.45, 0, !mcsema_real_eip !35
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !35
  %183 = ptrtoint i64* %182 to i64, !mcsema_real_eip !35
  %184 = inttoptr i64 %183 to i8*, !mcsema_real_eip !35
  %185 = load i8, i8* %184, !mcsema_real_eip !35
  %CL.46 = bitcast i64* %XCX to i8*, !mcsema_real_eip !35
  store i8 %185, i8* %CL.46, !mcsema_real_eip !35
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !36
  %186 = add i64 %RBP_val.47, -48, !mcsema_real_eip !36
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !36
  %188 = load i64, i64* %187, !mcsema_real_eip !36
  store i64 %188, i64* %XAX, !mcsema_real_eip !36
  %RAX_val.48 = load i64, i64* %XAX, !mcsema_real_eip !37
  %189 = add i64 %RAX_val.48, 0, !mcsema_real_eip !37
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !37
  %CL.49 = bitcast i64* %XCX to i8*, !mcsema_real_eip !37
  %CL_val.50 = load i8, i8* %CL.49, !mcsema_real_eip !37
  %191 = ptrtoint i64* %190 to i64, !mcsema_real_eip !37
  %192 = inttoptr i64 %191 to i8*, !mcsema_real_eip !37
  store i8 %CL_val.50, i8* %192, !mcsema_real_eip !37
  br label %block_0x8c, !mcsema_real_eip !38

block_0x8c:                                       ; preds = %block_0x80, %block_0x74
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !38
  %193 = add i64 %RBP_val.51, -40, !mcsema_real_eip !38
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !38
  %195 = load i64, i64* %194, !mcsema_real_eip !38
  store i64 %195, i64* %XAX, !mcsema_real_eip !38
  %RAX_val.52 = load i64, i64* %XAX, !mcsema_real_eip !39
  %196 = add i64 1, %RAX_val.52, !mcsema_real_eip !39
  %197 = xor i64 %196, %RAX_val.52, !mcsema_real_eip !39
  %198 = xor i64 %197, 1, !mcsema_real_eip !39
  %199 = and i64 %198, 16, !mcsema_real_eip !39
  %200 = icmp ne i64 %199, 0, !mcsema_real_eip !39
  store i1 %200, i1* %AF, !mcsema_real_eip !39
  %201 = lshr i64 %196, 63, !mcsema_real_eip !39
  %202 = trunc i64 %201 to i1, !mcsema_real_eip !39
  store i1 %202, i1* %SF, !mcsema_real_eip !39
  %203 = icmp eq i64 %196, 0, !mcsema_real_eip !39
  store i1 %203, i1* %ZF, !mcsema_real_eip !39
  %204 = xor i64 %RAX_val.52, 1, !mcsema_real_eip !39
  %205 = xor i64 %204, -1, !mcsema_real_eip !39
  %206 = xor i64 %RAX_val.52, %196, !mcsema_real_eip !39
  %207 = and i64 %205, %206, !mcsema_real_eip !39
  %208 = lshr i64 %207, 63, !mcsema_real_eip !39
  %209 = and i64 %208, 1, !mcsema_real_eip !39
  %210 = trunc i64 %209 to i1, !mcsema_real_eip !39
  store i1 %210, i1* %OF, !mcsema_real_eip !39
  %211 = trunc i64 %196 to i8, !mcsema_real_eip !39
  %212 = call i8 @llvm.ctpop.i8(i8 %211), !mcsema_real_eip !39
  %213 = trunc i8 %212 to i1, !mcsema_real_eip !39
  %214 = xor i1 %213, true, !mcsema_real_eip !39
  store i1 %214, i1* %PF, !mcsema_real_eip !39
  %215 = icmp ult i64 %196, %RAX_val.52, !mcsema_real_eip !39
  store i1 %215, i1* %CF, !mcsema_real_eip !39
  store i64 %196, i64* %XAX, !mcsema_real_eip !39
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !40
  %216 = add i64 %RBP_val.53, -40, !mcsema_real_eip !40
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !40
  %RAX_val.54 = load i64, i64* %XAX, !mcsema_real_eip !40
  store i64 %RAX_val.54, i64* %217, !mcsema_real_eip !40
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !41
  %218 = add i64 %RBP_val.55, -48, !mcsema_real_eip !41
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !41
  %220 = load i64, i64* %219, !mcsema_real_eip !41
  store i64 %220, i64* %XAX, !mcsema_real_eip !41
  %RAX_val.56 = load i64, i64* %XAX, !mcsema_real_eip !42
  %221 = add i64 1, %RAX_val.56, !mcsema_real_eip !42
  %222 = xor i64 %221, %RAX_val.56, !mcsema_real_eip !42
  %223 = xor i64 %222, 1, !mcsema_real_eip !42
  %224 = and i64 %223, 16, !mcsema_real_eip !42
  %225 = icmp ne i64 %224, 0, !mcsema_real_eip !42
  store i1 %225, i1* %AF, !mcsema_real_eip !42
  %226 = lshr i64 %221, 63, !mcsema_real_eip !42
  %227 = trunc i64 %226 to i1, !mcsema_real_eip !42
  store i1 %227, i1* %SF, !mcsema_real_eip !42
  %228 = icmp eq i64 %221, 0, !mcsema_real_eip !42
  store i1 %228, i1* %ZF, !mcsema_real_eip !42
  %229 = xor i64 %RAX_val.56, 1, !mcsema_real_eip !42
  %230 = xor i64 %229, -1, !mcsema_real_eip !42
  %231 = xor i64 %RAX_val.56, %221, !mcsema_real_eip !42
  %232 = and i64 %230, %231, !mcsema_real_eip !42
  %233 = lshr i64 %232, 63, !mcsema_real_eip !42
  %234 = and i64 %233, 1, !mcsema_real_eip !42
  %235 = trunc i64 %234 to i1, !mcsema_real_eip !42
  store i1 %235, i1* %OF, !mcsema_real_eip !42
  %236 = trunc i64 %221 to i8, !mcsema_real_eip !42
  %237 = call i8 @llvm.ctpop.i8(i8 %236), !mcsema_real_eip !42
  %238 = trunc i8 %237 to i1, !mcsema_real_eip !42
  %239 = xor i1 %238, true, !mcsema_real_eip !42
  store i1 %239, i1* %PF, !mcsema_real_eip !42
  %240 = icmp ult i64 %221, %RAX_val.56, !mcsema_real_eip !42
  store i1 %240, i1* %CF, !mcsema_real_eip !42
  store i64 %221, i64* %XAX, !mcsema_real_eip !42
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !43
  %241 = add i64 %RBP_val.57, -48, !mcsema_real_eip !43
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !43
  %RAX_val.58 = load i64, i64* %XAX, !mcsema_real_eip !43
  store i64 %RAX_val.58, i64* %242, !mcsema_real_eip !43
  br label %block_0x54, !mcsema_real_eip !44

block_0xa9:                                       ; preds = %block_0x54
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !45
  %243 = add i64 %RBP_val.59, -32, !mcsema_real_eip !45
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !45
  %245 = load i64, i64* %244, !mcsema_real_eip !45
  store i64 %245, i64* %XAX, !mcsema_real_eip !45
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !46
  %246 = add i64 %RBP_val.60, -8, !mcsema_real_eip !46
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !46
  %RAX_val.61 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.61, i64* %247, !mcsema_real_eip !46
  br label %block_0xbe, !mcsema_real_eip !47

block_0xb6:                                       ; preds = %block_0x0
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !48
  %248 = add i64 %RBP_val.62, -8, !mcsema_real_eip !48
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !48
  store i64 0, i64* %249, !mcsema_real_eip !48
  br label %block_0xbe, !mcsema_real_eip !49

block_0xbe:                                       ; preds = %block_0xb6, %block_0xa9
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !49
  %250 = add i64 %RBP_val.63, -8, !mcsema_real_eip !49
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !49
  %252 = load i64, i64* %251, !mcsema_real_eip !49
  store i64 %252, i64* %XAX, !mcsema_real_eip !49
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !50
  %253 = add i64 48, %RSP_val.64, !mcsema_real_eip !50
  %254 = xor i64 %253, %RSP_val.64, !mcsema_real_eip !50
  %255 = xor i64 %254, 48, !mcsema_real_eip !50
  %256 = and i64 %255, 16, !mcsema_real_eip !50
  %257 = icmp ne i64 %256, 0, !mcsema_real_eip !50
  store i1 %257, i1* %AF, !mcsema_real_eip !50
  %258 = lshr i64 %253, 63, !mcsema_real_eip !50
  %259 = trunc i64 %258 to i1, !mcsema_real_eip !50
  store i1 %259, i1* %SF, !mcsema_real_eip !50
  %260 = icmp eq i64 %253, 0, !mcsema_real_eip !50
  store i1 %260, i1* %ZF, !mcsema_real_eip !50
  %261 = xor i64 %RSP_val.64, 48, !mcsema_real_eip !50
  %262 = xor i64 %261, -1, !mcsema_real_eip !50
  %263 = xor i64 %RSP_val.64, %253, !mcsema_real_eip !50
  %264 = and i64 %262, %263, !mcsema_real_eip !50
  %265 = lshr i64 %264, 63, !mcsema_real_eip !50
  %266 = and i64 %265, 1, !mcsema_real_eip !50
  %267 = trunc i64 %266 to i1, !mcsema_real_eip !50
  store i1 %267, i1* %OF, !mcsema_real_eip !50
  %268 = trunc i64 %253 to i8, !mcsema_real_eip !50
  %269 = call i8 @llvm.ctpop.i8(i8 %268), !mcsema_real_eip !50
  %270 = trunc i8 %269 to i1, !mcsema_real_eip !50
  %271 = xor i1 %270, true, !mcsema_real_eip !50
  store i1 %271, i1* %PF, !mcsema_real_eip !50
  %272 = icmp ult i64 %253, %RSP_val.64, !mcsema_real_eip !50
  store i1 %272, i1* %CF, !mcsema_real_eip !50
  store i64 %253, i64* %XSP, !mcsema_real_eip !50
  %RSP_val.65 = load i64, i64* %XSP, !mcsema_real_eip !51
  %273 = inttoptr i64 %RSP_val.65 to i64*, !mcsema_real_eip !51
  %274 = load i64, i64* %273, !mcsema_real_eip !51
  store i64 %274, i64* %XBP, !mcsema_real_eip !51
  %275 = add i64 %RSP_val.65, 8, !mcsema_real_eip !51
  store i64 %275, i64* %XSP, !mcsema_real_eip !51
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !52
  %276 = add i64 %RSP_val.66, 8, !mcsema_real_eip !52
  %277 = inttoptr i64 %RSP_val.66 to i64*, !mcsema_real_eip !52
  %278 = load i64, i64* %277, !mcsema_real_eip !52
  store i64 %278, i64* %XIP, !mcsema_real_eip !52
  store i64 %276, i64* %XSP, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg)

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
declare x86_64_sysvcc i64 @_memset(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @doTrans() #2

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
!7 = !{i64 16}
!8 = !{i64 21}
!9 = !{i64 25}
!10 = !{i64 29}
!11 = !{i64 33}
!12 = !{i64 38}
!13 = !{i64 42}
!14 = !{i64 47}
!15 = !{i64 53}
!16 = !{i64 55}
!17 = !{i64 59}
!18 = !{i64 63}
!19 = !{i64 67}
!20 = !{i64 71}
!21 = !{i64 75}
!22 = !{i64 79}
!23 = !{i64 84}
!24 = !{i64 88}
!25 = !{i64 91}
!26 = !{i64 94}
!27 = !{i64 100}
!28 = !{i64 104}
!29 = !{i64 107}
!30 = !{i64 110}
!31 = !{i64 116}
!32 = !{i64 120}
!33 = !{i64 123}
!34 = !{i64 128}
!35 = !{i64 132}
!36 = !{i64 134}
!37 = !{i64 138}
!38 = !{i64 140}
!39 = !{i64 144}
!40 = !{i64 148}
!41 = !{i64 152}
!42 = !{i64 156}
!43 = !{i64 160}
!44 = !{i64 164}
!45 = !{i64 169}
!46 = !{i64 173}
!47 = !{i64 177}
!48 = !{i64 182}
!49 = !{i64 190}
!50 = !{i64 194}
!51 = !{i64 198}
!52 = !{i64 199}
