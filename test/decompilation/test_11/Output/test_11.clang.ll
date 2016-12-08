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
  %ESI.19 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.20 = load i32, i32* %ESI.19, !mcsema_real_eip !15
  %ESI.21 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.22 = load i32, i32* %ESI.21, !mcsema_real_eip !15
  %83 = xor i32 %ESI_val.20, %ESI_val.22, !mcsema_real_eip !15
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
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !16
  %92 = add i64 %RBP_val.23, -16, !mcsema_real_eip !16
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !16
  %94 = load i64, i64* %93, !mcsema_real_eip !16
  store i64 %94, i64* %XAX, !mcsema_real_eip !16
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !17
  %95 = add i64 %RBP_val.24, -40, !mcsema_real_eip !17
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !17
  %RAX_val.25 = load i64, i64* %XAX, !mcsema_real_eip !17
  store i64 %RAX_val.25, i64* %96, !mcsema_real_eip !17
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !18
  %97 = add i64 %RBP_val.26, -32, !mcsema_real_eip !18
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !18
  %99 = load i64, i64* %98, !mcsema_real_eip !18
  store i64 %99, i64* %XAX, !mcsema_real_eip !18
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !19
  %100 = add i64 %RBP_val.27, -48, !mcsema_real_eip !19
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !19
  %RAX_val.28 = load i64, i64* %XAX, !mcsema_real_eip !19
  store i64 %RAX_val.28, i64* %101, !mcsema_real_eip !19
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !20
  %102 = add i64 %RBP_val.29, -32, !mcsema_real_eip !20
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !20
  %104 = load i64, i64* %103, !mcsema_real_eip !20
  store i64 %104, i64* %XDI, !mcsema_real_eip !20
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !21
  %105 = add i64 %RBP_val.30, -24, !mcsema_real_eip !21
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !21
  %107 = load i64, i64* %106, !mcsema_real_eip !21
  store i64 %107, i64* %XDX, !mcsema_real_eip !21
  %RDI_val.31 = load i64, i64* %XDI, !mcsema_real_eip !22
  %RSI_val.32 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RDX_val.33 = load i64, i64* %XDX, !mcsema_real_eip !22
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !22
  %108 = sub i64 %RSP_val.34, 8, !mcsema_real_eip !22
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %109, !mcsema_real_eip !22
  store i64 %108, i64* %XSP, !mcsema_real_eip !22
  %110 = call x86_64_sysvcc i64 @_memset(i64 %RDI_val.31, i64 %RSI_val.32, i64 %RDX_val.33), !mcsema_real_eip !22
  store i64 %110, i64* %XAX, !mcsema_real_eip !22
  br label %block_0x54, !mcsema_real_eip !23

block_0xb6:                                       ; preds = %block_0x0
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !24
  %111 = add i64 %RBP_val.18, -8, !mcsema_real_eip !24
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !24
  store i64 0, i64* %112, !mcsema_real_eip !24
  br label %block_0xbe, !mcsema_real_eip !15

block_0xbe:                                       ; preds = %block_0xa9, %block_0xb6
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !23
  %113 = add i64 %RBP_val.35, -8, !mcsema_real_eip !23
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !23
  %115 = load i64, i64* %114, !mcsema_real_eip !23
  store i64 %115, i64* %XAX, !mcsema_real_eip !23
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !25
  %116 = add i64 48, %RSP_val.36, !mcsema_real_eip !25
  %117 = xor i64 %116, %RSP_val.36, !mcsema_real_eip !25
  %118 = xor i64 %117, 48, !mcsema_real_eip !25
  %119 = and i64 %118, 16, !mcsema_real_eip !25
  %120 = icmp ne i64 %119, 0, !mcsema_real_eip !25
  store i1 %120, i1* %AF, !mcsema_real_eip !25
  %121 = lshr i64 %116, 63, !mcsema_real_eip !25
  %122 = trunc i64 %121 to i1, !mcsema_real_eip !25
  store i1 %122, i1* %SF, !mcsema_real_eip !25
  %123 = icmp eq i64 %116, 0, !mcsema_real_eip !25
  store i1 %123, i1* %ZF, !mcsema_real_eip !25
  %124 = xor i64 %RSP_val.36, 48, !mcsema_real_eip !25
  %125 = xor i64 %124, -1, !mcsema_real_eip !25
  %126 = xor i64 %RSP_val.36, %116, !mcsema_real_eip !25
  %127 = and i64 %125, %126, !mcsema_real_eip !25
  %128 = lshr i64 %127, 63, !mcsema_real_eip !25
  %129 = and i64 %128, 1, !mcsema_real_eip !25
  %130 = trunc i64 %129 to i1, !mcsema_real_eip !25
  store i1 %130, i1* %OF, !mcsema_real_eip !25
  %131 = trunc i64 %116 to i8, !mcsema_real_eip !25
  %132 = call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !25
  %133 = trunc i8 %132 to i1, !mcsema_real_eip !25
  %134 = xor i1 %133, true, !mcsema_real_eip !25
  store i1 %134, i1* %PF, !mcsema_real_eip !25
  %135 = icmp ult i64 %116, %RSP_val.36, !mcsema_real_eip !25
  store i1 %135, i1* %CF, !mcsema_real_eip !25
  store i64 %116, i64* %XSP, !mcsema_real_eip !25
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !26
  %136 = inttoptr i64 %RSP_val.37 to i64*, !mcsema_real_eip !26
  %137 = load i64, i64* %136, !mcsema_real_eip !26
  store i64 %137, i64* %XBP, !mcsema_real_eip !26
  %138 = add i64 %RSP_val.37, 8, !mcsema_real_eip !26
  store i64 %138, i64* %XSP, !mcsema_real_eip !26
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !27
  %139 = add i64 %RSP_val.38, 8, !mcsema_real_eip !27
  %140 = inttoptr i64 %RSP_val.38 to i64*, !mcsema_real_eip !27
  %141 = load i64, i64* %140, !mcsema_real_eip !27
  store i64 %141, i64* %XIP, !mcsema_real_eip !27
  store i64 %139, i64* %XSP, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x54:                                       ; preds = %block_0x8c, %block_0x35
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !28
  %142 = add i64 %RBP_val.39, -40, !mcsema_real_eip !28
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !28
  %144 = load i64, i64* %143, !mcsema_real_eip !28
  store i64 %144, i64* %XAX, !mcsema_real_eip !28
  %RAX_val.40 = load i64, i64* %XAX, !mcsema_real_eip !29
  %145 = add i64 %RAX_val.40, 0, !mcsema_real_eip !29
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !29
  %147 = ptrtoint i64* %146 to i64, !mcsema_real_eip !29
  %148 = inttoptr i64 %147 to i8*, !mcsema_real_eip !29
  %149 = load i8, i8* %148, !mcsema_real_eip !29
  %150 = sext i8 %149 to i32, !mcsema_real_eip !29
  %151 = zext i32 %150 to i64, !mcsema_real_eip !29
  store i64 %151, i64* %XCX, !mcsema_real_eip !29
  %ECX.41 = bitcast i64* %XCX to i32*, !mcsema_real_eip !30
  %ECX_val.42 = load i32, i32* %ECX.41, !mcsema_real_eip !30
  %152 = sub i32 %ECX_val.42, 0, !mcsema_real_eip !30
  %153 = xor i32 %152, %ECX_val.42, !mcsema_real_eip !30
  %154 = xor i32 %153, 0, !mcsema_real_eip !30
  %155 = and i32 %154, 16, !mcsema_real_eip !30
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !30
  store i1 %156, i1* %AF, !mcsema_real_eip !30
  %157 = trunc i32 %152 to i8, !mcsema_real_eip !30
  %158 = call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !30
  %159 = trunc i8 %158 to i1, !mcsema_real_eip !30
  %160 = xor i1 %159, true, !mcsema_real_eip !30
  store i1 %160, i1* %PF, !mcsema_real_eip !30
  %161 = icmp eq i32 %152, 0, !mcsema_real_eip !30
  store i1 %161, i1* %ZF, !mcsema_real_eip !30
  %162 = lshr i32 %152, 31, !mcsema_real_eip !30
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !30
  store i1 %163, i1* %SF, !mcsema_real_eip !30
  %164 = icmp ult i32 %ECX_val.42, 0, !mcsema_real_eip !30
  store i1 %164, i1* %CF, !mcsema_real_eip !30
  %165 = xor i32 %ECX_val.42, 0, !mcsema_real_eip !30
  %166 = xor i32 %ECX_val.42, %152, !mcsema_real_eip !30
  %167 = and i32 %165, %166, !mcsema_real_eip !30
  %168 = lshr i32 %167, 31, !mcsema_real_eip !30
  %169 = trunc i32 %168 to i1, !mcsema_real_eip !30
  store i1 %169, i1* %OF, !mcsema_real_eip !30
  %170 = load i1, i1* %ZF, !mcsema_real_eip !31
  %171 = icmp eq i1 %170, true, !mcsema_real_eip !31
  br i1 %171, label %block_0xa9, label %block_0x64, !mcsema_real_eip !31

block_0x64:                                       ; preds = %block_0x54
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !32
  %172 = add i64 %RBP_val.46, -40, !mcsema_real_eip !32
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !32
  %174 = load i64, i64* %173, !mcsema_real_eip !32
  store i64 %174, i64* %XAX, !mcsema_real_eip !32
  %RAX_val.47 = load i64, i64* %XAX, !mcsema_real_eip !33
  %175 = add i64 %RAX_val.47, 0, !mcsema_real_eip !33
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !33
  %177 = ptrtoint i64* %176 to i64, !mcsema_real_eip !33
  %178 = inttoptr i64 %177 to i8*, !mcsema_real_eip !33
  %179 = load i8, i8* %178, !mcsema_real_eip !33
  %180 = sext i8 %179 to i32, !mcsema_real_eip !33
  %181 = zext i32 %180 to i64, !mcsema_real_eip !33
  store i64 %181, i64* %XCX, !mcsema_real_eip !33
  %ECX.48 = bitcast i64* %XCX to i32*, !mcsema_real_eip !34
  %ECX_val.49 = load i32, i32* %ECX.48, !mcsema_real_eip !34
  %182 = sub i32 %ECX_val.49, 47, !mcsema_real_eip !34
  %183 = xor i32 %182, %ECX_val.49, !mcsema_real_eip !34
  %184 = xor i32 %183, 47, !mcsema_real_eip !34
  %185 = and i32 %184, 16, !mcsema_real_eip !34
  %186 = icmp ne i32 %185, 0, !mcsema_real_eip !34
  store i1 %186, i1* %AF, !mcsema_real_eip !34
  %187 = trunc i32 %182 to i8, !mcsema_real_eip !34
  %188 = call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !34
  %189 = trunc i8 %188 to i1, !mcsema_real_eip !34
  %190 = xor i1 %189, true, !mcsema_real_eip !34
  store i1 %190, i1* %PF, !mcsema_real_eip !34
  %191 = icmp eq i32 %182, 0, !mcsema_real_eip !34
  store i1 %191, i1* %ZF, !mcsema_real_eip !34
  %192 = lshr i32 %182, 31, !mcsema_real_eip !34
  %193 = trunc i32 %192 to i1, !mcsema_real_eip !34
  store i1 %193, i1* %SF, !mcsema_real_eip !34
  %194 = icmp ult i32 %ECX_val.49, 47, !mcsema_real_eip !34
  store i1 %194, i1* %CF, !mcsema_real_eip !34
  %195 = xor i32 %ECX_val.49, 47, !mcsema_real_eip !34
  %196 = xor i32 %ECX_val.49, %182, !mcsema_real_eip !34
  %197 = and i32 %195, %196, !mcsema_real_eip !34
  %198 = lshr i32 %197, 31, !mcsema_real_eip !34
  %199 = trunc i32 %198 to i1, !mcsema_real_eip !34
  store i1 %199, i1* %OF, !mcsema_real_eip !34
  %200 = load i1, i1* %ZF, !mcsema_real_eip !35
  %201 = icmp eq i1 %200, false, !mcsema_real_eip !35
  br i1 %201, label %block_0x80, label %block_0x74, !mcsema_real_eip !35

block_0xa9:                                       ; preds = %block_0x54
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !36
  %202 = add i64 %RBP_val.43, -32, !mcsema_real_eip !36
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !36
  %204 = load i64, i64* %203, !mcsema_real_eip !36
  store i64 %204, i64* %XAX, !mcsema_real_eip !36
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !37
  %205 = add i64 %RBP_val.44, -8, !mcsema_real_eip !37
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !37
  %RAX_val.45 = load i64, i64* %XAX, !mcsema_real_eip !37
  store i64 %RAX_val.45, i64* %206, !mcsema_real_eip !37
  br label %block_0xbe, !mcsema_real_eip !38

block_0x74:                                       ; preds = %block_0x64
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !39
  %207 = add i64 %RBP_val.57, -48, !mcsema_real_eip !39
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !39
  %209 = load i64, i64* %208, !mcsema_real_eip !39
  store i64 %209, i64* %XAX, !mcsema_real_eip !39
  %RAX_val.58 = load i64, i64* %XAX, !mcsema_real_eip !40
  %210 = add i64 %RAX_val.58, 0, !mcsema_real_eip !40
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !40
  %212 = ptrtoint i64* %211 to i64, !mcsema_real_eip !40
  %213 = inttoptr i64 %212 to i8*, !mcsema_real_eip !40
  store i8 92, i8* %213, !mcsema_real_eip !40
  br label %block_0x8c, !mcsema_real_eip !41

block_0x80:                                       ; preds = %block_0x64
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !42
  %214 = add i64 %RBP_val.50, -40, !mcsema_real_eip !42
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !42
  %216 = load i64, i64* %215, !mcsema_real_eip !42
  store i64 %216, i64* %XAX, !mcsema_real_eip !42
  %RAX_val.51 = load i64, i64* %XAX, !mcsema_real_eip !43
  %217 = add i64 %RAX_val.51, 0, !mcsema_real_eip !43
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !43
  %219 = ptrtoint i64* %218 to i64, !mcsema_real_eip !43
  %220 = inttoptr i64 %219 to i8*, !mcsema_real_eip !43
  %221 = load i8, i8* %220, !mcsema_real_eip !43
  %CL.52 = bitcast i64* %XCX to i8*, !mcsema_real_eip !43
  store i8 %221, i8* %CL.52, !mcsema_real_eip !43
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !44
  %222 = add i64 %RBP_val.53, -48, !mcsema_real_eip !44
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !44
  %224 = load i64, i64* %223, !mcsema_real_eip !44
  store i64 %224, i64* %XAX, !mcsema_real_eip !44
  %RAX_val.54 = load i64, i64* %XAX, !mcsema_real_eip !45
  %225 = add i64 %RAX_val.54, 0, !mcsema_real_eip !45
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !45
  %CL.55 = bitcast i64* %XCX to i8*, !mcsema_real_eip !45
  %CL_val.56 = load i8, i8* %CL.55, !mcsema_real_eip !45
  %227 = ptrtoint i64* %226 to i64, !mcsema_real_eip !45
  %228 = inttoptr i64 %227 to i8*, !mcsema_real_eip !45
  store i8 %CL_val.56, i8* %228, !mcsema_real_eip !45
  br label %block_0x8c, !mcsema_real_eip !39

block_0x8c:                                       ; preds = %block_0x80, %block_0x74
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !46
  %229 = add i64 %RBP_val.59, -40, !mcsema_real_eip !46
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !46
  %231 = load i64, i64* %230, !mcsema_real_eip !46
  store i64 %231, i64* %XAX, !mcsema_real_eip !46
  %RAX_val.60 = load i64, i64* %XAX, !mcsema_real_eip !47
  %232 = add i64 1, %RAX_val.60, !mcsema_real_eip !47
  %233 = xor i64 %232, %RAX_val.60, !mcsema_real_eip !47
  %234 = xor i64 %233, 1, !mcsema_real_eip !47
  %235 = and i64 %234, 16, !mcsema_real_eip !47
  %236 = icmp ne i64 %235, 0, !mcsema_real_eip !47
  store i1 %236, i1* %AF, !mcsema_real_eip !47
  %237 = lshr i64 %232, 63, !mcsema_real_eip !47
  %238 = trunc i64 %237 to i1, !mcsema_real_eip !47
  store i1 %238, i1* %SF, !mcsema_real_eip !47
  %239 = icmp eq i64 %232, 0, !mcsema_real_eip !47
  store i1 %239, i1* %ZF, !mcsema_real_eip !47
  %240 = xor i64 %RAX_val.60, 1, !mcsema_real_eip !47
  %241 = xor i64 %240, -1, !mcsema_real_eip !47
  %242 = xor i64 %RAX_val.60, %232, !mcsema_real_eip !47
  %243 = and i64 %241, %242, !mcsema_real_eip !47
  %244 = lshr i64 %243, 63, !mcsema_real_eip !47
  %245 = and i64 %244, 1, !mcsema_real_eip !47
  %246 = trunc i64 %245 to i1, !mcsema_real_eip !47
  store i1 %246, i1* %OF, !mcsema_real_eip !47
  %247 = trunc i64 %232 to i8, !mcsema_real_eip !47
  %248 = call i8 @llvm.ctpop.i8(i8 %247), !mcsema_real_eip !47
  %249 = trunc i8 %248 to i1, !mcsema_real_eip !47
  %250 = xor i1 %249, true, !mcsema_real_eip !47
  store i1 %250, i1* %PF, !mcsema_real_eip !47
  %251 = icmp ult i64 %232, %RAX_val.60, !mcsema_real_eip !47
  store i1 %251, i1* %CF, !mcsema_real_eip !47
  store i64 %232, i64* %XAX, !mcsema_real_eip !47
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !48
  %252 = add i64 %RBP_val.61, -40, !mcsema_real_eip !48
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !48
  %RAX_val.62 = load i64, i64* %XAX, !mcsema_real_eip !48
  store i64 %RAX_val.62, i64* %253, !mcsema_real_eip !48
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !49
  %254 = add i64 %RBP_val.63, -48, !mcsema_real_eip !49
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !49
  %256 = load i64, i64* %255, !mcsema_real_eip !49
  store i64 %256, i64* %XAX, !mcsema_real_eip !49
  %RAX_val.64 = load i64, i64* %XAX, !mcsema_real_eip !50
  %257 = add i64 1, %RAX_val.64, !mcsema_real_eip !50
  %258 = xor i64 %257, %RAX_val.64, !mcsema_real_eip !50
  %259 = xor i64 %258, 1, !mcsema_real_eip !50
  %260 = and i64 %259, 16, !mcsema_real_eip !50
  %261 = icmp ne i64 %260, 0, !mcsema_real_eip !50
  store i1 %261, i1* %AF, !mcsema_real_eip !50
  %262 = lshr i64 %257, 63, !mcsema_real_eip !50
  %263 = trunc i64 %262 to i1, !mcsema_real_eip !50
  store i1 %263, i1* %SF, !mcsema_real_eip !50
  %264 = icmp eq i64 %257, 0, !mcsema_real_eip !50
  store i1 %264, i1* %ZF, !mcsema_real_eip !50
  %265 = xor i64 %RAX_val.64, 1, !mcsema_real_eip !50
  %266 = xor i64 %265, -1, !mcsema_real_eip !50
  %267 = xor i64 %RAX_val.64, %257, !mcsema_real_eip !50
  %268 = and i64 %266, %267, !mcsema_real_eip !50
  %269 = lshr i64 %268, 63, !mcsema_real_eip !50
  %270 = and i64 %269, 1, !mcsema_real_eip !50
  %271 = trunc i64 %270 to i1, !mcsema_real_eip !50
  store i1 %271, i1* %OF, !mcsema_real_eip !50
  %272 = trunc i64 %257 to i8, !mcsema_real_eip !50
  %273 = call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !50
  %274 = trunc i8 %273 to i1, !mcsema_real_eip !50
  %275 = xor i1 %274, true, !mcsema_real_eip !50
  store i1 %275, i1* %PF, !mcsema_real_eip !50
  %276 = icmp ult i64 %257, %RAX_val.64, !mcsema_real_eip !50
  store i1 %276, i1* %CF, !mcsema_real_eip !50
  store i64 %257, i64* %XAX, !mcsema_real_eip !50
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !51
  %277 = add i64 %RBP_val.65, -48, !mcsema_real_eip !51
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !51
  %RAX_val.66 = load i64, i64* %XAX, !mcsema_real_eip !51
  store i64 %RAX_val.66, i64* %278, !mcsema_real_eip !51
  br label %block_0x54, !mcsema_real_eip !52
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
!23 = !{i64 190}
!24 = !{i64 182}
!25 = !{i64 194}
!26 = !{i64 198}
!27 = !{i64 199}
!28 = !{i64 84}
!29 = !{i64 88}
!30 = !{i64 91}
!31 = !{i64 94}
!32 = !{i64 100}
!33 = !{i64 104}
!34 = !{i64 107}
!35 = !{i64 110}
!36 = !{i64 169}
!37 = !{i64 173}
!38 = !{i64 177}
!39 = !{i64 116}
!40 = !{i64 120}
!41 = !{i64 123}
!42 = !{i64 128}
!43 = !{i64 132}
!44 = !{i64 134}
!45 = !{i64 138}
!46 = !{i64 140}
!47 = !{i64 144}
!48 = !{i64 148}
!49 = !{i64 152}
!50 = !{i64 156}
!51 = !{i64 160}
!52 = !{i64 164}
