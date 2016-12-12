; ModuleID = 'Output/test_24.clang.trans.bc'
source_filename = "Output/test_24.clang.bc"
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
module asm "  .globl to_byte;"
module asm "  .globl _to_byte;"
module asm "  .type _to_byte,@function"
module asm "_to_byte:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq to_byte@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _to_byte,0b-_to_byte;"
module asm "  .cfi_endproc;"
module asm "  .globl read_bytes;"
module asm "  .globl _read_bytes;"
module asm "  .type _read_bytes,@function"
module asm "_read_bytes:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq read_bytes@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _read_bytes,0b-_read_bytes;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl keycomp;"
module asm "  .type keycomp,@function"
module asm "keycomp:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size keycomp,0b-keycomp;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x420 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c" \04\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %3 = sub i64 %RSP_val.3, 80, !mcsema_real_eip !4
  %4 = xor i64 %3, %RSP_val.3, !mcsema_real_eip !4
  %5 = xor i64 %4, 80, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %RSP_val.3, 80, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %RSP_val.3, 80, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = and i64 %16, %17, !mcsema_real_eip !4
  %19 = lshr i64 %18, 63, !mcsema_real_eip !4
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !4
  store i1 %20, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %21 = add i64 %RBP_val.4, -16, !mcsema_real_eip !5
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %22, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.6, -16, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %25 = load i64, i64* %24, !mcsema_real_eip !6
  store i64 %25, i64* %XDI, !mcsema_real_eip !6
  %RDI_val.7 = load i64, i64* %XDI, !mcsema_real_eip !7
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !7
  %26 = sub i64 %RSP_val.8, 8, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !7
  store i64 -2415393069852865332, i64* %27, !mcsema_real_eip !7
  store i64 %26, i64* %XSP, !mcsema_real_eip !7
  %28 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.7), !mcsema_real_eip !7
  store i64 %28, i64* %XAX, !mcsema_real_eip !7
  %EAX.9 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.10 = load i32, i32* %EAX.9, !mcsema_real_eip !8
  %29 = zext i32 %EAX_val.10 to i64, !mcsema_real_eip !8
  store i64 %29, i64* %XCX, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !9
  %30 = add i64 %RBP_val.11, -32, !mcsema_real_eip !9
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !9
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.13 = load i32, i32* %ECX.12, !mcsema_real_eip !9
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !9
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.13, i32* %33, !mcsema_real_eip !9
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !10
  %34 = add i64 %RBP_val.14, -32, !mcsema_real_eip !10
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !10
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !10
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !10
  %38 = load i32, i32* %37, !mcsema_real_eip !10
  %39 = sub i32 %38, 37, !mcsema_real_eip !10
  %40 = xor i32 %39, %38, !mcsema_real_eip !10
  %41 = xor i32 %40, 37, !mcsema_real_eip !10
  %42 = and i32 %41, 16, !mcsema_real_eip !10
  %43 = icmp ne i32 %42, 0, !mcsema_real_eip !10
  store i1 %43, i1* %AF, !mcsema_real_eip !10
  %44 = trunc i32 %39 to i8, !mcsema_real_eip !10
  %45 = call i8 @llvm.ctpop.i8(i8 %44), !mcsema_real_eip !10
  %46 = trunc i8 %45 to i1, !mcsema_real_eip !10
  %47 = xor i1 %46, true, !mcsema_real_eip !10
  store i1 %47, i1* %PF, !mcsema_real_eip !10
  %48 = icmp eq i32 %39, 0, !mcsema_real_eip !10
  store i1 %48, i1* %ZF, !mcsema_real_eip !10
  %49 = lshr i32 %39, 31, !mcsema_real_eip !10
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !10
  store i1 %50, i1* %SF, !mcsema_real_eip !10
  %51 = icmp ult i32 %38, 37, !mcsema_real_eip !10
  store i1 %51, i1* %CF, !mcsema_real_eip !10
  %52 = xor i32 %38, 37, !mcsema_real_eip !10
  %53 = xor i32 %38, %39, !mcsema_real_eip !10
  %54 = and i32 %52, %53, !mcsema_real_eip !10
  %55 = lshr i32 %54, 31, !mcsema_real_eip !10
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !10
  store i1 %56, i1* %OF, !mcsema_real_eip !10
  %57 = load i1, i1* %ZF, !mcsema_real_eip !11
  %58 = icmp eq i1 %57, true, !mcsema_real_eip !11
  br i1 %58, label %block_0x2f, label %block_0x24, !mcsema_real_eip !11

block_0x24:                                       ; preds = %block_0x0
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !12
  %59 = add i64 %RBP_val.23, -32, !mcsema_real_eip !12
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !12
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !12
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !12
  %63 = load i32, i32* %62, !mcsema_real_eip !12
  %64 = zext i32 %63 to i64, !mcsema_real_eip !12
  store i64 %64, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !13
  %65 = add i64 %RBP_val.24, -4, !mcsema_real_eip !13
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !13
  %EAX.25 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.26 = load i32, i32* %EAX.25, !mcsema_real_eip !13
  %67 = ptrtoint i64* %66 to i64, !mcsema_real_eip !13
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.26, i32* %68, !mcsema_real_eip !13
  br label %block_0x417, !mcsema_real_eip !14

block_0x2f:                                       ; preds = %block_0x0
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !15
  %69 = add i64 %RBP_val.15, -16, !mcsema_real_eip !15
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !15
  %71 = load i64, i64* %70, !mcsema_real_eip !15
  store i64 %71, i64* %XAX, !mcsema_real_eip !15
  %RAX_val.16 = load i64, i64* %XAX, !mcsema_real_eip !16
  %72 = add i64 4, %RAX_val.16, !mcsema_real_eip !16
  %73 = xor i64 %72, %RAX_val.16, !mcsema_real_eip !16
  %74 = xor i64 %73, 4, !mcsema_real_eip !16
  %75 = and i64 %74, 16, !mcsema_real_eip !16
  %76 = icmp ne i64 %75, 0, !mcsema_real_eip !16
  store i1 %76, i1* %AF, !mcsema_real_eip !16
  %77 = lshr i64 %72, 63, !mcsema_real_eip !16
  %78 = trunc i64 %77 to i1, !mcsema_real_eip !16
  store i1 %78, i1* %SF, !mcsema_real_eip !16
  %79 = icmp eq i64 %72, 0, !mcsema_real_eip !16
  store i1 %79, i1* %ZF, !mcsema_real_eip !16
  %80 = xor i64 %RAX_val.16, 4, !mcsema_real_eip !16
  %81 = xor i64 %80, -1, !mcsema_real_eip !16
  %82 = xor i64 %RAX_val.16, %72, !mcsema_real_eip !16
  %83 = and i64 %81, %82, !mcsema_real_eip !16
  %84 = lshr i64 %83, 63, !mcsema_real_eip !16
  %85 = and i64 %84, 1, !mcsema_real_eip !16
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !16
  store i1 %86, i1* %OF, !mcsema_real_eip !16
  %87 = trunc i64 %72 to i8, !mcsema_real_eip !16
  %88 = call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !16
  %89 = trunc i8 %88 to i1, !mcsema_real_eip !16
  %90 = xor i1 %89, true, !mcsema_real_eip !16
  store i1 %90, i1* %PF, !mcsema_real_eip !16
  %91 = icmp ult i64 %72, %RAX_val.16, !mcsema_real_eip !16
  store i1 %91, i1* %CF, !mcsema_real_eip !16
  store i64 %72, i64* %XAX, !mcsema_real_eip !16
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !17
  %92 = add i64 %RBP_val.17, -16, !mcsema_real_eip !17
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !17
  %RAX_val.18 = load i64, i64* %XAX, !mcsema_real_eip !17
  store i64 %RAX_val.18, i64* %93, !mcsema_real_eip !17
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !18
  %94 = add i64 %RBP_val.19, -16, !mcsema_real_eip !18
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !18
  %96 = load i64, i64* %95, !mcsema_real_eip !18
  store i64 %96, i64* %XAX, !mcsema_real_eip !18
  %RAX_val.20 = load i64, i64* %XAX, !mcsema_real_eip !19
  %97 = add i64 %RAX_val.20, 0, !mcsema_real_eip !19
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !19
  %99 = ptrtoint i64* %98 to i64, !mcsema_real_eip !19
  %100 = inttoptr i64 %99 to i8*, !mcsema_real_eip !19
  %101 = load i8, i8* %100, !mcsema_real_eip !19
  %102 = sext i8 %101 to i32, !mcsema_real_eip !19
  %103 = zext i32 %102 to i64, !mcsema_real_eip !19
  store i64 %103, i64* %XCX, !mcsema_real_eip !19
  %ECX.21 = bitcast i64* %XCX to i32*, !mcsema_real_eip !20
  %ECX_val.22 = load i32, i32* %ECX.21, !mcsema_real_eip !20
  %104 = sub i32 %ECX_val.22, 100, !mcsema_real_eip !20
  %105 = xor i32 %104, %ECX_val.22, !mcsema_real_eip !20
  %106 = xor i32 %105, 100, !mcsema_real_eip !20
  %107 = and i32 %106, 16, !mcsema_real_eip !20
  %108 = icmp ne i32 %107, 0, !mcsema_real_eip !20
  store i1 %108, i1* %AF, !mcsema_real_eip !20
  %109 = trunc i32 %104 to i8, !mcsema_real_eip !20
  %110 = call i8 @llvm.ctpop.i8(i8 %109), !mcsema_real_eip !20
  %111 = trunc i8 %110 to i1, !mcsema_real_eip !20
  %112 = xor i1 %111, true, !mcsema_real_eip !20
  store i1 %112, i1* %PF, !mcsema_real_eip !20
  %113 = icmp eq i32 %104, 0, !mcsema_real_eip !20
  store i1 %113, i1* %ZF, !mcsema_real_eip !20
  %114 = lshr i32 %104, 31, !mcsema_real_eip !20
  %115 = trunc i32 %114 to i1, !mcsema_real_eip !20
  store i1 %115, i1* %SF, !mcsema_real_eip !20
  %116 = icmp ult i32 %ECX_val.22, 100, !mcsema_real_eip !20
  store i1 %116, i1* %CF, !mcsema_real_eip !20
  %117 = xor i32 %ECX_val.22, 100, !mcsema_real_eip !20
  %118 = xor i32 %ECX_val.22, %104, !mcsema_real_eip !20
  %119 = and i32 %117, %118, !mcsema_real_eip !20
  %120 = lshr i32 %119, 31, !mcsema_real_eip !20
  %121 = trunc i32 %120 to i1, !mcsema_real_eip !20
  store i1 %121, i1* %OF, !mcsema_real_eip !20
  %122 = load i1, i1* %ZF, !mcsema_real_eip !21
  %123 = icmp eq i1 %122, true, !mcsema_real_eip !21
  br i1 %123, label %block_0x57, label %block_0x4b, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %block_0x2f
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !22
  %124 = add i64 %RBP_val.33, -4, !mcsema_real_eip !22
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !22
  %126 = ptrtoint i64* %125 to i64, !mcsema_real_eip !22
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !22
  store i32 -2, i32* %127, !mcsema_real_eip !22
  br label %block_0x417, !mcsema_real_eip !23

block_0x57:                                       ; preds = %block_0x2f
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !24
  %128 = add i64 %RBP_val.27, -16, !mcsema_real_eip !24
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !24
  %130 = load i64, i64* %129, !mcsema_real_eip !24
  store i64 %130, i64* %XAX, !mcsema_real_eip !24
  %RAX_val.28 = load i64, i64* %XAX, !mcsema_real_eip !25
  %131 = add i64 %RAX_val.28, 1, !mcsema_real_eip !25
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !25
  %133 = ptrtoint i64* %132 to i64, !mcsema_real_eip !25
  %134 = inttoptr i64 %133 to i8*, !mcsema_real_eip !25
  %135 = load i8, i8* %134, !mcsema_real_eip !25
  %136 = zext i8 %135 to i32, !mcsema_real_eip !25
  %137 = zext i32 %136 to i64, !mcsema_real_eip !25
  store i64 %137, i64* %XDI, !mcsema_real_eip !25
  %RDI_val.29 = load i64, i64* %XDI, !mcsema_real_eip !26
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %138 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !26
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !26
  store i64 -2415393069852865332, i64* %139, !mcsema_real_eip !26
  store i64 %138, i64* %XSP, !mcsema_real_eip !26
  %140 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.29), !mcsema_real_eip !26
  store i64 %140, i64* %XAX, !mcsema_real_eip !26
  %EAX.31 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.32 = load i32, i32* %EAX.31, !mcsema_real_eip !27
  %141 = sub i32 %EAX_val.32, 9, !mcsema_real_eip !27
  %142 = xor i32 %141, %EAX_val.32, !mcsema_real_eip !27
  %143 = xor i32 %142, 9, !mcsema_real_eip !27
  %144 = and i32 %143, 16, !mcsema_real_eip !27
  %145 = icmp ne i32 %144, 0, !mcsema_real_eip !27
  store i1 %145, i1* %AF, !mcsema_real_eip !27
  %146 = trunc i32 %141 to i8, !mcsema_real_eip !27
  %147 = call i8 @llvm.ctpop.i8(i8 %146), !mcsema_real_eip !27
  %148 = trunc i8 %147 to i1, !mcsema_real_eip !27
  %149 = xor i1 %148, true, !mcsema_real_eip !27
  store i1 %149, i1* %PF, !mcsema_real_eip !27
  %150 = icmp eq i32 %141, 0, !mcsema_real_eip !27
  store i1 %150, i1* %ZF, !mcsema_real_eip !27
  %151 = lshr i32 %141, 31, !mcsema_real_eip !27
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !27
  store i1 %152, i1* %SF, !mcsema_real_eip !27
  %153 = icmp ult i32 %EAX_val.32, 9, !mcsema_real_eip !27
  store i1 %153, i1* %CF, !mcsema_real_eip !27
  %154 = xor i32 %EAX_val.32, 9, !mcsema_real_eip !27
  %155 = xor i32 %EAX_val.32, %141, !mcsema_real_eip !27
  %156 = and i32 %154, %155, !mcsema_real_eip !27
  %157 = lshr i32 %156, 31, !mcsema_real_eip !27
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !27
  store i1 %158, i1* %OF, !mcsema_real_eip !27
  %159 = load i1, i1* %ZF, !mcsema_real_eip !28
  %160 = icmp eq i1 %159, true, !mcsema_real_eip !28
  br i1 %160, label %block_0x79, label %block_0x6d, !mcsema_real_eip !28

block_0x417:                                      ; preds = %block_0x411, %block_0x338, %block_0x2ea, %block_0x2c6, %block_0x1cc, %block_0x10e, %block_0xcb, %block_0x98, %block_0x6d, %block_0x4b, %block_0x24
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !29
  %161 = add i64 %RBP_val.34, -4, !mcsema_real_eip !29
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !29
  %163 = ptrtoint i64* %162 to i64, !mcsema_real_eip !29
  %164 = inttoptr i64 %163 to i32*, !mcsema_real_eip !29
  %165 = load i32, i32* %164, !mcsema_real_eip !29
  %166 = zext i32 %165 to i64, !mcsema_real_eip !29
  store i64 %166, i64* %XAX, !mcsema_real_eip !29
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !30
  %167 = add i64 80, %RSP_val.35, !mcsema_real_eip !30
  %168 = xor i64 %167, %RSP_val.35, !mcsema_real_eip !30
  %169 = xor i64 %168, 80, !mcsema_real_eip !30
  %170 = and i64 %169, 16, !mcsema_real_eip !30
  %171 = icmp ne i64 %170, 0, !mcsema_real_eip !30
  store i1 %171, i1* %AF, !mcsema_real_eip !30
  %172 = lshr i64 %167, 63, !mcsema_real_eip !30
  %173 = trunc i64 %172 to i1, !mcsema_real_eip !30
  store i1 %173, i1* %SF, !mcsema_real_eip !30
  %174 = icmp eq i64 %167, 0, !mcsema_real_eip !30
  store i1 %174, i1* %ZF, !mcsema_real_eip !30
  %175 = xor i64 %RSP_val.35, 80, !mcsema_real_eip !30
  %176 = xor i64 %175, -1, !mcsema_real_eip !30
  %177 = xor i64 %RSP_val.35, %167, !mcsema_real_eip !30
  %178 = and i64 %176, %177, !mcsema_real_eip !30
  %179 = lshr i64 %178, 63, !mcsema_real_eip !30
  %180 = and i64 %179, 1, !mcsema_real_eip !30
  %181 = trunc i64 %180 to i1, !mcsema_real_eip !30
  store i1 %181, i1* %OF, !mcsema_real_eip !30
  %182 = trunc i64 %167 to i8, !mcsema_real_eip !30
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !30
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !30
  %185 = xor i1 %184, true, !mcsema_real_eip !30
  store i1 %185, i1* %PF, !mcsema_real_eip !30
  %186 = icmp ult i64 %167, %RSP_val.35, !mcsema_real_eip !30
  store i1 %186, i1* %CF, !mcsema_real_eip !30
  store i64 %167, i64* %XSP, !mcsema_real_eip !30
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !31
  %187 = inttoptr i64 %RSP_val.36 to i64*, !mcsema_real_eip !31
  %188 = load i64, i64* %187, !mcsema_real_eip !31
  store i64 %188, i64* %XBP, !mcsema_real_eip !31
  %189 = add i64 %RSP_val.36, 8, !mcsema_real_eip !31
  store i64 %189, i64* %XSP, !mcsema_real_eip !31
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !32
  %190 = add i64 %RSP_val.37, 8, !mcsema_real_eip !32
  %191 = inttoptr i64 %RSP_val.37 to i64*, !mcsema_real_eip !32
  %192 = load i64, i64* %191, !mcsema_real_eip !32
  store i64 %192, i64* %XIP, !mcsema_real_eip !32
  store i64 %190, i64* %XSP, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32

block_0x6d:                                       ; preds = %block_0x57
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !33
  %193 = add i64 %RBP_val.50, -4, !mcsema_real_eip !33
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !33
  %195 = ptrtoint i64* %194 to i64, !mcsema_real_eip !33
  %196 = inttoptr i64 %195 to i32*, !mcsema_real_eip !33
  store i32 -3, i32* %196, !mcsema_real_eip !33
  br label %block_0x417, !mcsema_real_eip !34

block_0x79:                                       ; preds = %block_0x57
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !35
  %197 = add i64 %RBP_val.38, -16, !mcsema_real_eip !35
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !35
  %199 = load i64, i64* %198, !mcsema_real_eip !35
  store i64 %199, i64* %XAX, !mcsema_real_eip !35
  %RAX_val.39 = load i64, i64* %XAX, !mcsema_real_eip !36
  %200 = add i64 %RAX_val.39, 2, !mcsema_real_eip !36
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !36
  %202 = ptrtoint i64* %201 to i64, !mcsema_real_eip !36
  %203 = inttoptr i64 %202 to i8*, !mcsema_real_eip !36
  %204 = load i8, i8* %203, !mcsema_real_eip !36
  %205 = zext i8 %204 to i32, !mcsema_real_eip !36
  %206 = zext i32 %205 to i64, !mcsema_real_eip !36
  store i64 %206, i64* %XDI, !mcsema_real_eip !36
  %RDI_val.40 = load i64, i64* %XDI, !mcsema_real_eip !37
  %RSP_val.41 = load i64, i64* %XSP, !mcsema_real_eip !37
  %207 = sub i64 %RSP_val.41, 8, !mcsema_real_eip !37
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !37
  store i64 -2415393069852865332, i64* %208, !mcsema_real_eip !37
  store i64 %207, i64* %XSP, !mcsema_real_eip !37
  %209 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.40), !mcsema_real_eip !37
  store i64 %209, i64* %XAX, !mcsema_real_eip !37
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !38
  %210 = add i64 %RBP_val.42, -24, !mcsema_real_eip !38
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !38
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !38
  %212 = ptrtoint i64* %211 to i64, !mcsema_real_eip !38
  %213 = inttoptr i64 %212 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.44, i32* %213, !mcsema_real_eip !38
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !39
  %214 = add i64 %RBP_val.45, -24, !mcsema_real_eip !39
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !39
  %216 = ptrtoint i64* %215 to i64, !mcsema_real_eip !39
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !39
  %218 = load i32, i32* %217, !mcsema_real_eip !39
  %219 = zext i32 %218 to i64, !mcsema_real_eip !39
  store i64 %219, i64* %XAX, !mcsema_real_eip !39
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !40
  %220 = shl i32 %EAX_val.47, 0, !mcsema_real_eip !40
  %221 = and i32 %220, -2147483648, !mcsema_real_eip !40
  %222 = icmp ne i32 %221, 0, !mcsema_real_eip !40
  %223 = load i1, i1* %CF, !mcsema_real_eip !40
  %224 = select i1 true, i1 %222, i1 %223, !mcsema_real_eip !40
  %225 = shl i32 %220, 1, !mcsema_real_eip !40
  %226 = load i1, i1* %OF, !mcsema_real_eip !40
  %227 = and i32 %225, -2147483648, !mcsema_real_eip !40
  %228 = icmp ne i32 %227, 0, !mcsema_real_eip !40
  %229 = xor i1 %228, %224, !mcsema_real_eip !40
  %230 = select i1 true, i1 %229, i1 %226, !mcsema_real_eip !40
  store i1 %230, i1* %OF, !mcsema_real_eip !40
  store i1 %224, i1* %CF, !mcsema_real_eip !40
  %231 = load i1, i1* %ZF, !mcsema_real_eip !40
  %232 = icmp eq i32 %225, 0, !mcsema_real_eip !40
  %233 = select i1 true, i1 %232, i1 %231, !mcsema_real_eip !40
  store i1 %233, i1* %ZF, !mcsema_real_eip !40
  %234 = load i1, i1* %SF, !mcsema_real_eip !40
  %235 = icmp slt i32 %225, 0, !mcsema_real_eip !40
  %236 = select i1 true, i1 %235, i1 %234, !mcsema_real_eip !40
  store i1 %236, i1* %SF, !mcsema_real_eip !40
  %237 = load i1, i1* %PF, !mcsema_real_eip !40
  %238 = trunc i32 %225 to i8, !mcsema_real_eip !40
  %239 = call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !40
  %240 = trunc i8 %239 to i1, !mcsema_real_eip !40
  %241 = xor i1 %240, true, !mcsema_real_eip !40
  store i1 %241, i1* %PF, !mcsema_real_eip !40
  %242 = load i1, i1* %PF, !mcsema_real_eip !40
  %243 = select i1 true, i1 %242, i1 %237, !mcsema_real_eip !40
  store i1 %243, i1* %PF, !mcsema_real_eip !40
  %244 = zext i32 %225 to i64, !mcsema_real_eip !40
  store i64 %244, i64* %XAX, !mcsema_real_eip !40
  %EAX.48 = bitcast i64* %XAX to i32*, !mcsema_real_eip !41
  %EAX_val.49 = load i32, i32* %EAX.48, !mcsema_real_eip !41
  %245 = sub i32 %EAX_val.49, 26, !mcsema_real_eip !41
  %246 = xor i32 %245, %EAX_val.49, !mcsema_real_eip !41
  %247 = xor i32 %246, 26, !mcsema_real_eip !41
  %248 = and i32 %247, 16, !mcsema_real_eip !41
  %249 = icmp ne i32 %248, 0, !mcsema_real_eip !41
  store i1 %249, i1* %AF, !mcsema_real_eip !41
  %250 = trunc i32 %245 to i8, !mcsema_real_eip !41
  %251 = call i8 @llvm.ctpop.i8(i8 %250), !mcsema_real_eip !41
  %252 = trunc i8 %251 to i1, !mcsema_real_eip !41
  %253 = xor i1 %252, true, !mcsema_real_eip !41
  store i1 %253, i1* %PF, !mcsema_real_eip !41
  %254 = icmp eq i32 %245, 0, !mcsema_real_eip !41
  store i1 %254, i1* %ZF, !mcsema_real_eip !41
  %255 = lshr i32 %245, 31, !mcsema_real_eip !41
  %256 = trunc i32 %255 to i1, !mcsema_real_eip !41
  store i1 %256, i1* %SF, !mcsema_real_eip !41
  %257 = icmp ult i32 %EAX_val.49, 26, !mcsema_real_eip !41
  store i1 %257, i1* %CF, !mcsema_real_eip !41
  %258 = xor i32 %EAX_val.49, 26, !mcsema_real_eip !41
  %259 = xor i32 %EAX_val.49, %245, !mcsema_real_eip !41
  %260 = and i32 %258, %259, !mcsema_real_eip !41
  %261 = lshr i32 %260, 31, !mcsema_real_eip !41
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !41
  store i1 %262, i1* %OF, !mcsema_real_eip !41
  %263 = load i1, i1* %ZF, !mcsema_real_eip !42
  %264 = icmp eq i1 %263, true, !mcsema_real_eip !42
  br i1 %264, label %block_0xa4, label %block_0x98, !mcsema_real_eip !42

block_0x98:                                       ; preds = %block_0x79
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !43
  %265 = add i64 %RBP_val.71, -4, !mcsema_real_eip !43
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !43
  %267 = ptrtoint i64* %266 to i64, !mcsema_real_eip !43
  %268 = inttoptr i64 %267 to i32*, !mcsema_real_eip !43
  store i32 -4, i32* %268, !mcsema_real_eip !43
  br label %block_0x417, !mcsema_real_eip !44

block_0xa4:                                       ; preds = %block_0x79
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !45
  %269 = add i64 %RBP_val.51, -16, !mcsema_real_eip !45
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !45
  %271 = load i64, i64* %270, !mcsema_real_eip !45
  store i64 %271, i64* %XAX, !mcsema_real_eip !45
  %RAX_val.52 = load i64, i64* %XAX, !mcsema_real_eip !46
  %272 = add i64 %RAX_val.52, 3, !mcsema_real_eip !46
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !46
  %274 = ptrtoint i64* %273 to i64, !mcsema_real_eip !46
  %275 = inttoptr i64 %274 to i8*, !mcsema_real_eip !46
  %276 = load i8, i8* %275, !mcsema_real_eip !46
  %277 = zext i8 %276 to i32, !mcsema_real_eip !46
  %278 = zext i32 %277 to i64, !mcsema_real_eip !46
  store i64 %278, i64* %XDI, !mcsema_real_eip !46
  %RDI_val.53 = load i64, i64* %XDI, !mcsema_real_eip !47
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !47
  %279 = sub i64 %RSP_val.54, 8, !mcsema_real_eip !47
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !47
  store i64 -2415393069852865332, i64* %280, !mcsema_real_eip !47
  store i64 %279, i64* %XSP, !mcsema_real_eip !47
  %281 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.53), !mcsema_real_eip !47
  store i64 %281, i64* %XAX, !mcsema_real_eip !47
  store i64 2, i64* %XDI, !mcsema_real_eip !48
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !49
  %282 = add i64 %RBP_val.55, -28, !mcsema_real_eip !49
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !49
  %EAX.56 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.57 = load i32, i32* %EAX.56, !mcsema_real_eip !49
  %284 = ptrtoint i64* %283 to i64, !mcsema_real_eip !49
  %285 = inttoptr i64 %284 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.57, i32* %285, !mcsema_real_eip !49
  %RBP_val.58 = load i64, i64* %XBP, !mcsema_real_eip !50
  %286 = add i64 %RBP_val.58, -28, !mcsema_real_eip !50
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !50
  %288 = ptrtoint i64* %287 to i64, !mcsema_real_eip !50
  %289 = inttoptr i64 %288 to i32*, !mcsema_real_eip !50
  %290 = load i32, i32* %289, !mcsema_real_eip !50
  %291 = zext i32 %290 to i64, !mcsema_real_eip !50
  store i64 %291, i64* %XAX, !mcsema_real_eip !50
  %EAX.59 = bitcast i64* %XAX to i32*, !mcsema_real_eip !51
  %EAX_val.60 = load i32, i32* %EAX.59, !mcsema_real_eip !51
  %292 = add i32 1, %EAX_val.60, !mcsema_real_eip !51
  %293 = xor i32 %292, %EAX_val.60, !mcsema_real_eip !51
  %294 = xor i32 %293, 1, !mcsema_real_eip !51
  %295 = and i32 %294, 16, !mcsema_real_eip !51
  %296 = icmp ne i32 %295, 0, !mcsema_real_eip !51
  store i1 %296, i1* %AF, !mcsema_real_eip !51
  %297 = lshr i32 %292, 31, !mcsema_real_eip !51
  %298 = trunc i32 %297 to i1, !mcsema_real_eip !51
  store i1 %298, i1* %SF, !mcsema_real_eip !51
  %299 = icmp eq i32 %292, 0, !mcsema_real_eip !51
  store i1 %299, i1* %ZF, !mcsema_real_eip !51
  %300 = xor i32 %EAX_val.60, 1, !mcsema_real_eip !51
  %301 = xor i32 %300, -1, !mcsema_real_eip !51
  %302 = xor i32 %EAX_val.60, %292, !mcsema_real_eip !51
  %303 = and i32 %301, %302, !mcsema_real_eip !51
  %304 = lshr i32 %303, 31, !mcsema_real_eip !51
  %305 = and i32 %304, 1, !mcsema_real_eip !51
  %306 = trunc i32 %305 to i1, !mcsema_real_eip !51
  store i1 %306, i1* %OF, !mcsema_real_eip !51
  %307 = trunc i32 %292 to i8, !mcsema_real_eip !51
  %308 = call i8 @llvm.ctpop.i8(i8 %307), !mcsema_real_eip !51
  %309 = trunc i8 %308 to i1, !mcsema_real_eip !51
  %310 = xor i1 %309, true, !mcsema_real_eip !51
  store i1 %310, i1* %PF, !mcsema_real_eip !51
  %311 = icmp ult i32 %292, %EAX_val.60, !mcsema_real_eip !51
  store i1 %311, i1* %CF, !mcsema_real_eip !51
  %312 = zext i32 %292 to i64, !mcsema_real_eip !51
  store i64 %312, i64* %XAX, !mcsema_real_eip !51
  %EAX.61 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.62 = load i32, i32* %EAX.61, !mcsema_real_eip !52
  %313 = and i32 %EAX_val.62, -2147483648, !mcsema_real_eip !52
  %314 = icmp eq i32 %313, 0, !mcsema_real_eip !52
  %315 = select i1 %314, i32 0, i32 -1, !mcsema_real_eip !52
  %316 = zext i32 %315 to i64, !mcsema_real_eip !52
  store i64 %316, i64* %XDX, !mcsema_real_eip !52
  %EDI.63 = bitcast i64* %XDI to i32*, !mcsema_real_eip !53
  %EDI_val.64 = load i32, i32* %EDI.63, !mcsema_real_eip !53
  %EAX.65 = bitcast i64* %XAX to i32*, !mcsema_real_eip !53
  %EAX_val.66 = load i32, i32* %EAX.65, !mcsema_real_eip !53
  %EDX.67 = bitcast i64* %XDX to i32*, !mcsema_real_eip !53
  %EDX_val.68 = load i32, i32* %EDX.67, !mcsema_real_eip !53
  %317 = zext i32 %EDX_val.68 to i64, !mcsema_real_eip !53
  %318 = shl i64 %317, 32, !mcsema_real_eip !53
  %319 = sext i32 %EAX_val.66 to i64, !mcsema_real_eip !53
  %320 = or i64 %318, %319, !mcsema_real_eip !53
  %321 = sext i32 %EDI_val.64 to i64, !mcsema_real_eip !53
  %322 = sdiv i64 %320, %321, !mcsema_real_eip !53
  %323 = srem i64 %320, %321, !mcsema_real_eip !53
  %324 = trunc i64 %323 to i32, !mcsema_real_eip !53
  %325 = trunc i64 %322 to i32, !mcsema_real_eip !53
  %326 = zext i32 %324 to i64, !mcsema_real_eip !53
  store i64 %326, i64* %XDX, !mcsema_real_eip !53
  %327 = zext i32 %325 to i64, !mcsema_real_eip !53
  store i64 %327, i64* %XAX, !mcsema_real_eip !53
  %EAX.69 = bitcast i64* %XAX to i32*, !mcsema_real_eip !54
  %EAX_val.70 = load i32, i32* %EAX.69, !mcsema_real_eip !54
  %328 = sub i32 %EAX_val.70, 7, !mcsema_real_eip !54
  %329 = xor i32 %328, %EAX_val.70, !mcsema_real_eip !54
  %330 = xor i32 %329, 7, !mcsema_real_eip !54
  %331 = and i32 %330, 16, !mcsema_real_eip !54
  %332 = icmp ne i32 %331, 0, !mcsema_real_eip !54
  store i1 %332, i1* %AF, !mcsema_real_eip !54
  %333 = trunc i32 %328 to i8, !mcsema_real_eip !54
  %334 = call i8 @llvm.ctpop.i8(i8 %333), !mcsema_real_eip !54
  %335 = trunc i8 %334 to i1, !mcsema_real_eip !54
  %336 = xor i1 %335, true, !mcsema_real_eip !54
  store i1 %336, i1* %PF, !mcsema_real_eip !54
  %337 = icmp eq i32 %328, 0, !mcsema_real_eip !54
  store i1 %337, i1* %ZF, !mcsema_real_eip !54
  %338 = lshr i32 %328, 31, !mcsema_real_eip !54
  %339 = trunc i32 %338 to i1, !mcsema_real_eip !54
  store i1 %339, i1* %SF, !mcsema_real_eip !54
  %340 = icmp ult i32 %EAX_val.70, 7, !mcsema_real_eip !54
  store i1 %340, i1* %CF, !mcsema_real_eip !54
  %341 = xor i32 %EAX_val.70, 7, !mcsema_real_eip !54
  %342 = xor i32 %EAX_val.70, %328, !mcsema_real_eip !54
  %343 = and i32 %341, %342, !mcsema_real_eip !54
  %344 = lshr i32 %343, 31, !mcsema_real_eip !54
  %345 = trunc i32 %344 to i1, !mcsema_real_eip !54
  store i1 %345, i1* %OF, !mcsema_real_eip !54
  %346 = load i1, i1* %ZF, !mcsema_real_eip !55
  %347 = icmp eq i1 %346, true, !mcsema_real_eip !55
  br i1 %347, label %block_0xd7, label %block_0xcb, !mcsema_real_eip !55

block_0xcb:                                       ; preds = %block_0xa4
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !56
  %348 = add i64 %RBP_val.78, -4, !mcsema_real_eip !56
  %349 = inttoptr i64 %348 to i64*, !mcsema_real_eip !56
  %350 = ptrtoint i64* %349 to i64, !mcsema_real_eip !56
  %351 = inttoptr i64 %350 to i32*, !mcsema_real_eip !56
  store i32 -5, i32* %351, !mcsema_real_eip !56
  br label %block_0x417, !mcsema_real_eip !57

block_0xd7:                                       ; preds = %block_0xa4
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !58
  %352 = add i64 %RBP_val.72, -16, !mcsema_real_eip !58
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !58
  %354 = load i64, i64* %353, !mcsema_real_eip !58
  store i64 %354, i64* %XAX, !mcsema_real_eip !58
  %RAX_val.73 = load i64, i64* %XAX, !mcsema_real_eip !59
  %355 = add i64 %RAX_val.73, 4, !mcsema_real_eip !59
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !59
  %357 = ptrtoint i64* %356 to i64, !mcsema_real_eip !59
  %358 = inttoptr i64 %357 to i8*, !mcsema_real_eip !59
  %359 = load i8, i8* %358, !mcsema_real_eip !59
  %360 = sext i8 %359 to i32, !mcsema_real_eip !59
  %361 = zext i32 %360 to i64, !mcsema_real_eip !59
  store i64 %361, i64* %XCX, !mcsema_real_eip !59
  %ECX.74 = bitcast i64* %XCX to i32*, !mcsema_real_eip !60
  %ECX_val.75 = load i32, i32* %ECX.74, !mcsema_real_eip !60
  %362 = and i32 %ECX_val.75, 15, !mcsema_real_eip !60
  %363 = lshr i32 %362, 31, !mcsema_real_eip !60
  %364 = trunc i32 %363 to i1, !mcsema_real_eip !60
  store i1 %364, i1* %SF, !mcsema_real_eip !60
  %365 = icmp eq i32 %362, 0, !mcsema_real_eip !60
  store i1 %365, i1* %ZF, !mcsema_real_eip !60
  %366 = trunc i32 %362 to i8, !mcsema_real_eip !60
  %367 = call i8 @llvm.ctpop.i8(i8 %366), !mcsema_real_eip !60
  %368 = trunc i8 %367 to i1, !mcsema_real_eip !60
  %369 = xor i1 %368, true, !mcsema_real_eip !60
  store i1 %369, i1* %PF, !mcsema_real_eip !60
  store i1 false, i1* %OF, !mcsema_real_eip !60
  store i1 false, i1* %CF, !mcsema_real_eip !60
  store i1 undef, i1* %AF, !mcsema_real_eip !60
  %370 = zext i32 %362 to i64, !mcsema_real_eip !60
  store i64 %370, i64* %XCX, !mcsema_real_eip !60
  %ECX.76 = bitcast i64* %XCX to i32*, !mcsema_real_eip !61
  %ECX_val.77 = load i32, i32* %ECX.76, !mcsema_real_eip !61
  %371 = sub i32 %ECX_val.77, 1, !mcsema_real_eip !61
  %372 = xor i32 %371, %ECX_val.77, !mcsema_real_eip !61
  %373 = xor i32 %372, 1, !mcsema_real_eip !61
  %374 = and i32 %373, 16, !mcsema_real_eip !61
  %375 = icmp ne i32 %374, 0, !mcsema_real_eip !61
  store i1 %375, i1* %AF, !mcsema_real_eip !61
  %376 = trunc i32 %371 to i8, !mcsema_real_eip !61
  %377 = call i8 @llvm.ctpop.i8(i8 %376), !mcsema_real_eip !61
  %378 = trunc i8 %377 to i1, !mcsema_real_eip !61
  %379 = xor i1 %378, true, !mcsema_real_eip !61
  store i1 %379, i1* %PF, !mcsema_real_eip !61
  %380 = icmp eq i32 %371, 0, !mcsema_real_eip !61
  store i1 %380, i1* %ZF, !mcsema_real_eip !61
  %381 = lshr i32 %371, 31, !mcsema_real_eip !61
  %382 = trunc i32 %381 to i1, !mcsema_real_eip !61
  store i1 %382, i1* %SF, !mcsema_real_eip !61
  %383 = icmp ult i32 %ECX_val.77, 1, !mcsema_real_eip !61
  store i1 %383, i1* %CF, !mcsema_real_eip !61
  %384 = xor i32 %ECX_val.77, 1, !mcsema_real_eip !61
  %385 = xor i32 %ECX_val.77, %371, !mcsema_real_eip !61
  %386 = and i32 %384, %385, !mcsema_real_eip !61
  %387 = lshr i32 %386, 31, !mcsema_real_eip !61
  %388 = trunc i32 %387 to i1, !mcsema_real_eip !61
  store i1 %388, i1* %OF, !mcsema_real_eip !61
  %389 = load i1, i1* %ZF, !mcsema_real_eip !62
  %390 = icmp eq i1 %389, false, !mcsema_real_eip !62
  br i1 %390, label %block_0x10e, label %block_0xeb, !mcsema_real_eip !62

block_0xeb:                                       ; preds = %block_0xd7
  %RBP_val.80 = load i64, i64* %XBP, !mcsema_real_eip !63
  %391 = add i64 %RBP_val.80, -16, !mcsema_real_eip !63
  %392 = inttoptr i64 %391 to i64*, !mcsema_real_eip !63
  %393 = load i64, i64* %392, !mcsema_real_eip !63
  store i64 %393, i64* %XAX, !mcsema_real_eip !63
  %RAX_val.81 = load i64, i64* %XAX, !mcsema_real_eip !64
  %394 = add i64 %RAX_val.81, 4, !mcsema_real_eip !64
  %395 = inttoptr i64 %394 to i64*, !mcsema_real_eip !64
  %396 = ptrtoint i64* %395 to i64, !mcsema_real_eip !64
  %397 = inttoptr i64 %396 to i8*, !mcsema_real_eip !64
  %398 = load i8, i8* %397, !mcsema_real_eip !64
  %399 = sext i8 %398 to i32, !mcsema_real_eip !64
  %400 = zext i32 %399 to i64, !mcsema_real_eip !64
  store i64 %400, i64* %XCX, !mcsema_real_eip !64
  %ECX.82 = bitcast i64* %XCX to i32*, !mcsema_real_eip !65
  %ECX_val.83 = load i32, i32* %ECX.82, !mcsema_real_eip !65
  %401 = and i32 %ECX_val.83, 240, !mcsema_real_eip !65
  %402 = lshr i32 %401, 31, !mcsema_real_eip !65
  %403 = trunc i32 %402 to i1, !mcsema_real_eip !65
  store i1 %403, i1* %SF, !mcsema_real_eip !65
  %404 = icmp eq i32 %401, 0, !mcsema_real_eip !65
  store i1 %404, i1* %ZF, !mcsema_real_eip !65
  %405 = trunc i32 %401 to i8, !mcsema_real_eip !65
  %406 = call i8 @llvm.ctpop.i8(i8 %405), !mcsema_real_eip !65
  %407 = trunc i8 %406 to i1, !mcsema_real_eip !65
  %408 = xor i1 %407, true, !mcsema_real_eip !65
  store i1 %408, i1* %PF, !mcsema_real_eip !65
  store i1 false, i1* %OF, !mcsema_real_eip !65
  store i1 false, i1* %CF, !mcsema_real_eip !65
  store i1 undef, i1* %AF, !mcsema_real_eip !65
  %409 = zext i32 %401 to i64, !mcsema_real_eip !65
  store i64 %409, i64* %XCX, !mcsema_real_eip !65
  %ECX.84 = bitcast i64* %XCX to i32*, !mcsema_real_eip !66
  %ECX_val.85 = load i32, i32* %ECX.84, !mcsema_real_eip !66
  %410 = sub i32 %ECX_val.85, 48, !mcsema_real_eip !66
  %411 = xor i32 %410, %ECX_val.85, !mcsema_real_eip !66
  %412 = xor i32 %411, 48, !mcsema_real_eip !66
  %413 = and i32 %412, 16, !mcsema_real_eip !66
  %414 = icmp ne i32 %413, 0, !mcsema_real_eip !66
  store i1 %414, i1* %AF, !mcsema_real_eip !66
  %415 = trunc i32 %410 to i8, !mcsema_real_eip !66
  %416 = call i8 @llvm.ctpop.i8(i8 %415), !mcsema_real_eip !66
  %417 = trunc i8 %416 to i1, !mcsema_real_eip !66
  %418 = xor i1 %417, true, !mcsema_real_eip !66
  store i1 %418, i1* %PF, !mcsema_real_eip !66
  %419 = icmp eq i32 %410, 0, !mcsema_real_eip !66
  store i1 %419, i1* %ZF, !mcsema_real_eip !66
  %420 = lshr i32 %410, 31, !mcsema_real_eip !66
  %421 = trunc i32 %420 to i1, !mcsema_real_eip !66
  store i1 %421, i1* %SF, !mcsema_real_eip !66
  %422 = icmp ult i32 %ECX_val.85, 48, !mcsema_real_eip !66
  store i1 %422, i1* %CF, !mcsema_real_eip !66
  %423 = xor i32 %ECX_val.85, 48, !mcsema_real_eip !66
  %424 = xor i32 %ECX_val.85, %410, !mcsema_real_eip !66
  %425 = and i32 %423, %424, !mcsema_real_eip !66
  %426 = lshr i32 %425, 31, !mcsema_real_eip !66
  %427 = trunc i32 %426 to i1, !mcsema_real_eip !66
  store i1 %427, i1* %OF, !mcsema_real_eip !66
  %428 = load i1, i1* %ZF, !mcsema_real_eip !67
  %429 = icmp eq i1 %428, false, !mcsema_real_eip !67
  br i1 %429, label %block_0x10e, label %block_0x102, !mcsema_real_eip !67

block_0x10e:                                      ; preds = %block_0xeb, %block_0xd7
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !68
  %430 = add i64 %RBP_val.79, -4, !mcsema_real_eip !68
  %431 = inttoptr i64 %430 to i64*, !mcsema_real_eip !68
  %432 = ptrtoint i64* %431 to i64, !mcsema_real_eip !68
  %433 = inttoptr i64 %432 to i32*, !mcsema_real_eip !68
  store i32 -6, i32* %433, !mcsema_real_eip !68
  br label %block_0x417, !mcsema_real_eip !69

block_0x102:                                      ; preds = %block_0xeb
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !70
  %434 = add i64 %RBP_val.86, -20, !mcsema_real_eip !70
  %435 = inttoptr i64 %434 to i64*, !mcsema_real_eip !70
  %436 = ptrtoint i64* %435 to i64, !mcsema_real_eip !70
  %437 = inttoptr i64 %436 to i32*, !mcsema_real_eip !70
  store i32 -4, i32* %437, !mcsema_real_eip !70
  br label %block_0x11a, !mcsema_real_eip !71

block_0x11a:                                      ; preds = %block_0x102
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !72
  %438 = add i64 %RBP_val.87, -16, !mcsema_real_eip !72
  %439 = inttoptr i64 %438 to i64*, !mcsema_real_eip !72
  %440 = load i64, i64* %439, !mcsema_real_eip !72
  store i64 %440, i64* %XAX, !mcsema_real_eip !72
  %RAX_val.88 = load i64, i64* %XAX, !mcsema_real_eip !73
  %441 = add i64 %RAX_val.88, 5, !mcsema_real_eip !73
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !73
  %443 = ptrtoint i64* %442 to i64, !mcsema_real_eip !73
  %444 = inttoptr i64 %443 to i8*, !mcsema_real_eip !73
  %445 = load i8, i8* %444, !mcsema_real_eip !73
  %446 = sext i8 %445 to i32, !mcsema_real_eip !73
  %447 = zext i32 %446 to i64, !mcsema_real_eip !73
  store i64 %447, i64* %XCX, !mcsema_real_eip !73
  %ECX.89 = bitcast i64* %XCX to i32*, !mcsema_real_eip !74
  %ECX_val.90 = load i32, i32* %ECX.89, !mcsema_real_eip !74
  %448 = and i32 %ECX_val.90, 15, !mcsema_real_eip !74
  %449 = lshr i32 %448, 31, !mcsema_real_eip !74
  %450 = trunc i32 %449 to i1, !mcsema_real_eip !74
  store i1 %450, i1* %SF, !mcsema_real_eip !74
  %451 = icmp eq i32 %448, 0, !mcsema_real_eip !74
  store i1 %451, i1* %ZF, !mcsema_real_eip !74
  %452 = trunc i32 %448 to i8, !mcsema_real_eip !74
  %453 = call i8 @llvm.ctpop.i8(i8 %452), !mcsema_real_eip !74
  %454 = trunc i8 %453 to i1, !mcsema_real_eip !74
  %455 = xor i1 %454, true, !mcsema_real_eip !74
  store i1 %455, i1* %PF, !mcsema_real_eip !74
  store i1 false, i1* %OF, !mcsema_real_eip !74
  store i1 false, i1* %CF, !mcsema_real_eip !74
  store i1 undef, i1* %AF, !mcsema_real_eip !74
  %456 = zext i32 %448 to i64, !mcsema_real_eip !74
  store i64 %456, i64* %XCX, !mcsema_real_eip !74
  %CL.91 = bitcast i64* %XCX to i8*, !mcsema_real_eip !75
  %CL_val.92 = load i8, i8* %CL.91, !mcsema_real_eip !75
  %DL.93 = bitcast i64* %XDX to i8*, !mcsema_real_eip !75
  store i8 %CL_val.92, i8* %DL.93, !mcsema_real_eip !75
  %RBP_val.94 = load i64, i64* %XBP, !mcsema_real_eip !76
  %457 = add i64 %RBP_val.94, -33, !mcsema_real_eip !76
  %458 = inttoptr i64 %457 to i64*, !mcsema_real_eip !76
  %DL.95 = bitcast i64* %XDX to i8*, !mcsema_real_eip !76
  %DL_val.96 = load i8, i8* %DL.95, !mcsema_real_eip !76
  %459 = ptrtoint i64* %458 to i64, !mcsema_real_eip !76
  %460 = inttoptr i64 %459 to i8*, !mcsema_real_eip !76
  store i8 %DL_val.96, i8* %460, !mcsema_real_eip !76
  %RBP_val.97 = load i64, i64* %XBP, !mcsema_real_eip !77
  %461 = add i64 %RBP_val.97, -16, !mcsema_real_eip !77
  %462 = inttoptr i64 %461 to i64*, !mcsema_real_eip !77
  %463 = load i64, i64* %462, !mcsema_real_eip !77
  store i64 %463, i64* %XAX, !mcsema_real_eip !77
  %RAX_val.98 = load i64, i64* %XAX, !mcsema_real_eip !78
  %464 = add i64 %RAX_val.98, 5, !mcsema_real_eip !78
  %465 = inttoptr i64 %464 to i64*, !mcsema_real_eip !78
  %466 = ptrtoint i64* %465 to i64, !mcsema_real_eip !78
  %467 = inttoptr i64 %466 to i8*, !mcsema_real_eip !78
  %468 = load i8, i8* %467, !mcsema_real_eip !78
  %469 = sext i8 %468 to i32, !mcsema_real_eip !78
  %470 = zext i32 %469 to i64, !mcsema_real_eip !78
  store i64 %470, i64* %XCX, !mcsema_real_eip !78
  %ECX.99 = bitcast i64* %XCX to i32*, !mcsema_real_eip !79
  %ECX_val.100 = load i32, i32* %ECX.99, !mcsema_real_eip !79
  %471 = and i32 %ECX_val.100, 240, !mcsema_real_eip !79
  %472 = lshr i32 %471, 31, !mcsema_real_eip !79
  %473 = trunc i32 %472 to i1, !mcsema_real_eip !79
  store i1 %473, i1* %SF, !mcsema_real_eip !79
  %474 = icmp eq i32 %471, 0, !mcsema_real_eip !79
  store i1 %474, i1* %ZF, !mcsema_real_eip !79
  %475 = trunc i32 %471 to i8, !mcsema_real_eip !79
  %476 = call i8 @llvm.ctpop.i8(i8 %475), !mcsema_real_eip !79
  %477 = trunc i8 %476 to i1, !mcsema_real_eip !79
  %478 = xor i1 %477, true, !mcsema_real_eip !79
  store i1 %478, i1* %PF, !mcsema_real_eip !79
  store i1 false, i1* %OF, !mcsema_real_eip !79
  store i1 false, i1* %CF, !mcsema_real_eip !79
  store i1 undef, i1* %AF, !mcsema_real_eip !79
  %479 = zext i32 %471 to i64, !mcsema_real_eip !79
  store i64 %479, i64* %XCX, !mcsema_real_eip !79
  %CL.101 = bitcast i64* %XCX to i8*, !mcsema_real_eip !80
  %CL_val.102 = load i8, i8* %CL.101, !mcsema_real_eip !80
  %DL.103 = bitcast i64* %XDX to i8*, !mcsema_real_eip !80
  store i8 %CL_val.102, i8* %DL.103, !mcsema_real_eip !80
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !81
  %480 = add i64 %RBP_val.104, -34, !mcsema_real_eip !81
  %481 = inttoptr i64 %480 to i64*, !mcsema_real_eip !81
  %DL.105 = bitcast i64* %XDX to i8*, !mcsema_real_eip !81
  %DL_val.106 = load i8, i8* %DL.105, !mcsema_real_eip !81
  %482 = ptrtoint i64* %481 to i64, !mcsema_real_eip !81
  %483 = inttoptr i64 %482 to i8*, !mcsema_real_eip !81
  store i8 %DL_val.106, i8* %483, !mcsema_real_eip !81
  %RBP_val.107 = load i64, i64* %XBP, !mcsema_real_eip !82
  %484 = add i64 %RBP_val.107, -33, !mcsema_real_eip !82
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !82
  %486 = ptrtoint i64* %485 to i64, !mcsema_real_eip !82
  %487 = inttoptr i64 %486 to i8*, !mcsema_real_eip !82
  %488 = load i8, i8* %487, !mcsema_real_eip !82
  %489 = zext i8 %488 to i32, !mcsema_real_eip !82
  %490 = zext i32 %489 to i64, !mcsema_real_eip !82
  store i64 %490, i64* %XCX, !mcsema_real_eip !82
  %ECX.108 = bitcast i64* %XCX to i32*, !mcsema_real_eip !83
  %ECX_val.109 = load i32, i32* %ECX.108, !mcsema_real_eip !83
  %491 = sub i32 %ECX_val.109, 3, !mcsema_real_eip !83
  %492 = xor i32 %491, %ECX_val.109, !mcsema_real_eip !83
  %493 = xor i32 %492, 3, !mcsema_real_eip !83
  %494 = and i32 %493, 16, !mcsema_real_eip !83
  %495 = icmp ne i32 %494, 0, !mcsema_real_eip !83
  store i1 %495, i1* %AF, !mcsema_real_eip !83
  %496 = trunc i32 %491 to i8, !mcsema_real_eip !83
  %497 = call i8 @llvm.ctpop.i8(i8 %496), !mcsema_real_eip !83
  %498 = trunc i8 %497 to i1, !mcsema_real_eip !83
  %499 = xor i1 %498, true, !mcsema_real_eip !83
  store i1 %499, i1* %PF, !mcsema_real_eip !83
  %500 = icmp eq i32 %491, 0, !mcsema_real_eip !83
  store i1 %500, i1* %ZF, !mcsema_real_eip !83
  %501 = lshr i32 %491, 31, !mcsema_real_eip !83
  %502 = trunc i32 %501 to i1, !mcsema_real_eip !83
  store i1 %502, i1* %SF, !mcsema_real_eip !83
  %503 = icmp ult i32 %ECX_val.109, 3, !mcsema_real_eip !83
  store i1 %503, i1* %CF, !mcsema_real_eip !83
  %504 = xor i32 %ECX_val.109, 3, !mcsema_real_eip !83
  %505 = xor i32 %ECX_val.109, %491, !mcsema_real_eip !83
  %506 = and i32 %504, %505, !mcsema_real_eip !83
  %507 = lshr i32 %506, 31, !mcsema_real_eip !83
  %508 = trunc i32 %507 to i1, !mcsema_real_eip !83
  store i1 %508, i1* %OF, !mcsema_real_eip !83
  %509 = load i1, i1* %ZF, !mcsema_real_eip !84
  %510 = icmp eq i1 %509, false, !mcsema_real_eip !84
  br i1 %510, label %block_0x165, label %block_0x14a, !mcsema_real_eip !84

block_0x14a:                                      ; preds = %block_0x11a
  %RBP_val.116 = load i64, i64* %XBP, !mcsema_real_eip !85
  %511 = add i64 %RBP_val.116, -34, !mcsema_real_eip !85
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !85
  %513 = ptrtoint i64* %512 to i64, !mcsema_real_eip !85
  %514 = inttoptr i64 %513 to i8*, !mcsema_real_eip !85
  %515 = load i8, i8* %514, !mcsema_real_eip !85
  %516 = zext i8 %515 to i32, !mcsema_real_eip !85
  %517 = zext i32 %516 to i64, !mcsema_real_eip !85
  store i64 %517, i64* %XAX, !mcsema_real_eip !85
  %EAX.117 = bitcast i64* %XAX to i32*, !mcsema_real_eip !86
  %EAX_val.118 = load i32, i32* %EAX.117, !mcsema_real_eip !86
  %518 = sub i32 %EAX_val.118, 96, !mcsema_real_eip !86
  %519 = xor i32 %518, %EAX_val.118, !mcsema_real_eip !86
  %520 = xor i32 %519, 96, !mcsema_real_eip !86
  %521 = and i32 %520, 16, !mcsema_real_eip !86
  %522 = icmp ne i32 %521, 0, !mcsema_real_eip !86
  store i1 %522, i1* %AF, !mcsema_real_eip !86
  %523 = trunc i32 %518 to i8, !mcsema_real_eip !86
  %524 = call i8 @llvm.ctpop.i8(i8 %523), !mcsema_real_eip !86
  %525 = trunc i8 %524 to i1, !mcsema_real_eip !86
  %526 = xor i1 %525, true, !mcsema_real_eip !86
  store i1 %526, i1* %PF, !mcsema_real_eip !86
  %527 = icmp eq i32 %518, 0, !mcsema_real_eip !86
  store i1 %527, i1* %ZF, !mcsema_real_eip !86
  %528 = lshr i32 %518, 31, !mcsema_real_eip !86
  %529 = trunc i32 %528 to i1, !mcsema_real_eip !86
  store i1 %529, i1* %SF, !mcsema_real_eip !86
  %530 = icmp ult i32 %EAX_val.118, 96, !mcsema_real_eip !86
  store i1 %530, i1* %CF, !mcsema_real_eip !86
  %531 = xor i32 %EAX_val.118, 96, !mcsema_real_eip !86
  %532 = xor i32 %EAX_val.118, %518, !mcsema_real_eip !86
  %533 = and i32 %531, %532, !mcsema_real_eip !86
  %534 = lshr i32 %533, 31, !mcsema_real_eip !86
  %535 = trunc i32 %534 to i1, !mcsema_real_eip !86
  store i1 %535, i1* %OF, !mcsema_real_eip !86
  %536 = load i1, i1* %ZF, !mcsema_real_eip !87
  %537 = icmp eq i1 %536, false, !mcsema_real_eip !87
  br i1 %537, label %block_0x165, label %block_0x157, !mcsema_real_eip !87

block_0x165:                                      ; preds = %block_0x14a, %block_0x11a
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !88
  %538 = add i64 %RBP_val.110, -20, !mcsema_real_eip !88
  %539 = inttoptr i64 %538 to i64*, !mcsema_real_eip !88
  %540 = ptrtoint i64* %539 to i64, !mcsema_real_eip !88
  %541 = inttoptr i64 %540 to i32*, !mcsema_real_eip !88
  %542 = load i32, i32* %541, !mcsema_real_eip !88
  %543 = zext i32 %542 to i64, !mcsema_real_eip !88
  store i64 %543, i64* %XAX, !mcsema_real_eip !88
  %EAX.111 = bitcast i64* %XAX to i32*, !mcsema_real_eip !89
  %EAX_val.112 = load i32, i32* %EAX.111, !mcsema_real_eip !89
  %544 = add i32 5, %EAX_val.112, !mcsema_real_eip !89
  %545 = xor i32 %544, %EAX_val.112, !mcsema_real_eip !89
  %546 = xor i32 %545, 5, !mcsema_real_eip !89
  %547 = and i32 %546, 16, !mcsema_real_eip !89
  %548 = icmp ne i32 %547, 0, !mcsema_real_eip !89
  store i1 %548, i1* %AF, !mcsema_real_eip !89
  %549 = lshr i32 %544, 31, !mcsema_real_eip !89
  %550 = trunc i32 %549 to i1, !mcsema_real_eip !89
  store i1 %550, i1* %SF, !mcsema_real_eip !89
  %551 = icmp eq i32 %544, 0, !mcsema_real_eip !89
  store i1 %551, i1* %ZF, !mcsema_real_eip !89
  %552 = xor i32 %EAX_val.112, 5, !mcsema_real_eip !89
  %553 = xor i32 %552, -1, !mcsema_real_eip !89
  %554 = xor i32 %EAX_val.112, %544, !mcsema_real_eip !89
  %555 = and i32 %553, %554, !mcsema_real_eip !89
  %556 = lshr i32 %555, 31, !mcsema_real_eip !89
  %557 = and i32 %556, 1, !mcsema_real_eip !89
  %558 = trunc i32 %557 to i1, !mcsema_real_eip !89
  store i1 %558, i1* %OF, !mcsema_real_eip !89
  %559 = trunc i32 %544 to i8, !mcsema_real_eip !89
  %560 = call i8 @llvm.ctpop.i8(i8 %559), !mcsema_real_eip !89
  %561 = trunc i8 %560 to i1, !mcsema_real_eip !89
  %562 = xor i1 %561, true, !mcsema_real_eip !89
  store i1 %562, i1* %PF, !mcsema_real_eip !89
  %563 = icmp ult i32 %544, %EAX_val.112, !mcsema_real_eip !89
  store i1 %563, i1* %CF, !mcsema_real_eip !89
  %564 = zext i32 %544 to i64, !mcsema_real_eip !89
  store i64 %564, i64* %XAX, !mcsema_real_eip !89
  %RBP_val.113 = load i64, i64* %XBP, !mcsema_real_eip !90
  %565 = add i64 %RBP_val.113, -20, !mcsema_real_eip !90
  %566 = inttoptr i64 %565 to i64*, !mcsema_real_eip !90
  %EAX.114 = bitcast i64* %XAX to i32*, !mcsema_real_eip !90
  %EAX_val.115 = load i32, i32* %EAX.114, !mcsema_real_eip !90
  %567 = ptrtoint i64* %566 to i64, !mcsema_real_eip !90
  %568 = inttoptr i64 %567 to i32*, !mcsema_real_eip !90
  store i32 %EAX_val.115, i32* %568, !mcsema_real_eip !90
  br label %block_0x16e, !mcsema_real_eip !85

block_0x16e:                                      ; preds = %block_0x157, %block_0x165
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !91
  %569 = add i64 %RBP_val.119, -16, !mcsema_real_eip !91
  %570 = inttoptr i64 %569 to i64*, !mcsema_real_eip !91
  %571 = load i64, i64* %570, !mcsema_real_eip !91
  store i64 %571, i64* %XAX, !mcsema_real_eip !91
  %RAX_val.120 = load i64, i64* %XAX, !mcsema_real_eip !92
  %572 = add i64 %RAX_val.120, 6, !mcsema_real_eip !92
  %573 = inttoptr i64 %572 to i64*, !mcsema_real_eip !92
  %574 = ptrtoint i64* %573 to i64, !mcsema_real_eip !92
  %575 = inttoptr i64 %574 to i8*, !mcsema_real_eip !92
  %576 = load i8, i8* %575, !mcsema_real_eip !92
  %577 = zext i8 %576 to i32, !mcsema_real_eip !92
  %578 = zext i32 %577 to i64, !mcsema_real_eip !92
  store i64 %578, i64* %XDI, !mcsema_real_eip !92
  %RDI_val.121 = load i64, i64* %XDI, !mcsema_real_eip !93
  %RSP_val.122 = load i64, i64* %XSP, !mcsema_real_eip !93
  %579 = sub i64 %RSP_val.122, 8, !mcsema_real_eip !93
  %580 = inttoptr i64 %579 to i64*, !mcsema_real_eip !93
  store i64 -2415393069852865332, i64* %580, !mcsema_real_eip !93
  store i64 %579, i64* %XSP, !mcsema_real_eip !93
  %581 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.121), !mcsema_real_eip !93
  store i64 %581, i64* %XAX, !mcsema_real_eip !93
  %AL.123 = bitcast i64* %XAX to i8*, !mcsema_real_eip !94
  %AL_val.124 = load i8, i8* %AL.123, !mcsema_real_eip !94
  %CL.125 = bitcast i64* %XCX to i8*, !mcsema_real_eip !94
  store i8 %AL_val.124, i8* %CL.125, !mcsema_real_eip !94
  %RBP_val.126 = load i64, i64* %XBP, !mcsema_real_eip !95
  %582 = add i64 %RBP_val.126, -35, !mcsema_real_eip !95
  %583 = inttoptr i64 %582 to i64*, !mcsema_real_eip !95
  %CL.127 = bitcast i64* %XCX to i8*, !mcsema_real_eip !95
  %CL_val.128 = load i8, i8* %CL.127, !mcsema_real_eip !95
  %584 = ptrtoint i64* %583 to i64, !mcsema_real_eip !95
  %585 = inttoptr i64 %584 to i8*, !mcsema_real_eip !95
  store i8 %CL_val.128, i8* %585, !mcsema_real_eip !95
  %RBP_val.129 = load i64, i64* %XBP, !mcsema_real_eip !96
  %586 = add i64 %RBP_val.129, -16, !mcsema_real_eip !96
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !96
  %588 = load i64, i64* %587, !mcsema_real_eip !96
  store i64 %588, i64* %XDX, !mcsema_real_eip !96
  %RDX_val.130 = load i64, i64* %XDX, !mcsema_real_eip !97
  %589 = add i64 %RDX_val.130, 7, !mcsema_real_eip !97
  %590 = inttoptr i64 %589 to i64*, !mcsema_real_eip !97
  %591 = ptrtoint i64* %590 to i64, !mcsema_real_eip !97
  %592 = inttoptr i64 %591 to i8*, !mcsema_real_eip !97
  %593 = load i8, i8* %592, !mcsema_real_eip !97
  %594 = zext i8 %593 to i32, !mcsema_real_eip !97
  %595 = zext i32 %594 to i64, !mcsema_real_eip !97
  store i64 %595, i64* %XDI, !mcsema_real_eip !97
  %RDI_val.131 = load i64, i64* %XDI, !mcsema_real_eip !98
  %RSP_val.132 = load i64, i64* %XSP, !mcsema_real_eip !98
  %596 = sub i64 %RSP_val.132, 8, !mcsema_real_eip !98
  %597 = inttoptr i64 %596 to i64*, !mcsema_real_eip !98
  store i64 -2415393069852865332, i64* %597, !mcsema_real_eip !98
  store i64 %596, i64* %XSP, !mcsema_real_eip !98
  %598 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.131), !mcsema_real_eip !98
  store i64 %598, i64* %XAX, !mcsema_real_eip !98
  %RBP_val.133 = load i64, i64* %XBP, !mcsema_real_eip !99
  %599 = add i64 %RBP_val.133, -35, !mcsema_real_eip !99
  %600 = inttoptr i64 %599 to i64*, !mcsema_real_eip !99
  %601 = ptrtoint i64* %600 to i64, !mcsema_real_eip !99
  %602 = inttoptr i64 %601 to i8*, !mcsema_real_eip !99
  %603 = load i8, i8* %602, !mcsema_real_eip !99
  %604 = zext i8 %603 to i32, !mcsema_real_eip !99
  %605 = zext i32 %604 to i64, !mcsema_real_eip !99
  store i64 %605, i64* %XDI, !mcsema_real_eip !99
  %EDI.134 = bitcast i64* %XDI to i32*, !mcsema_real_eip !100
  %EDI_val.135 = load i32, i32* %EDI.134, !mcsema_real_eip !100
  %EAX.136 = bitcast i64* %XAX to i32*, !mcsema_real_eip !100
  %EAX_val.137 = load i32, i32* %EAX.136, !mcsema_real_eip !100
  %606 = or i32 %EDI_val.135, %EAX_val.137, !mcsema_real_eip !100
  store i1 undef, i1* %AF, !mcsema_real_eip !100
  store i1 false, i1* %OF, !mcsema_real_eip !100
  store i1 false, i1* %CF, !mcsema_real_eip !100
  %607 = lshr i32 %606, 31, !mcsema_real_eip !100
  %608 = trunc i32 %607 to i1, !mcsema_real_eip !100
  store i1 %608, i1* %SF, !mcsema_real_eip !100
  %609 = icmp eq i32 %606, 0, !mcsema_real_eip !100
  store i1 %609, i1* %ZF, !mcsema_real_eip !100
  %610 = trunc i32 %606 to i8, !mcsema_real_eip !100
  %611 = call i8 @llvm.ctpop.i8(i8 %610), !mcsema_real_eip !100
  %612 = trunc i8 %611 to i1, !mcsema_real_eip !100
  %613 = xor i1 %612, true, !mcsema_real_eip !100
  store i1 %613, i1* %PF, !mcsema_real_eip !100
  %614 = zext i32 %606 to i64, !mcsema_real_eip !100
  store i64 %614, i64* %XDI, !mcsema_real_eip !100
  %DIL.138 = bitcast i64* %XDI to i8*, !mcsema_real_eip !101
  %DIL_val.139 = load i8, i8* %DIL.138, !mcsema_real_eip !101
  %CL.140 = bitcast i64* %XCX to i8*, !mcsema_real_eip !101
  store i8 %DIL_val.139, i8* %CL.140, !mcsema_real_eip !101
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !102
  %615 = add i64 %RBP_val.141, -35, !mcsema_real_eip !102
  %616 = inttoptr i64 %615 to i64*, !mcsema_real_eip !102
  %CL.142 = bitcast i64* %XCX to i8*, !mcsema_real_eip !102
  %CL_val.143 = load i8, i8* %CL.142, !mcsema_real_eip !102
  %617 = ptrtoint i64* %616 to i64, !mcsema_real_eip !102
  %618 = inttoptr i64 %617 to i8*, !mcsema_real_eip !102
  store i8 %CL_val.143, i8* %618, !mcsema_real_eip !102
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !103
  %619 = add i64 %RBP_val.144, -35, !mcsema_real_eip !103
  %620 = inttoptr i64 %619 to i64*, !mcsema_real_eip !103
  %621 = ptrtoint i64* %620 to i64, !mcsema_real_eip !103
  %622 = inttoptr i64 %621 to i8*, !mcsema_real_eip !103
  %623 = load i8, i8* %622, !mcsema_real_eip !103
  %624 = zext i8 %623 to i32, !mcsema_real_eip !103
  %625 = zext i32 %624 to i64, !mcsema_real_eip !103
  store i64 %625, i64* %XAX, !mcsema_real_eip !103
  %EAX.145 = bitcast i64* %XAX to i32*, !mcsema_real_eip !104
  %EAX_val.146 = load i32, i32* %EAX.145, !mcsema_real_eip !104
  %626 = xor i32 %EAX_val.146, -1, !mcsema_real_eip !104
  store i1 false, i1* %CF, !mcsema_real_eip !104
  store i1 false, i1* %OF, !mcsema_real_eip !104
  %627 = lshr i32 %626, 31, !mcsema_real_eip !104
  %628 = trunc i32 %627 to i1, !mcsema_real_eip !104
  store i1 %628, i1* %SF, !mcsema_real_eip !104
  %629 = icmp eq i32 %626, 0, !mcsema_real_eip !104
  store i1 %629, i1* %ZF, !mcsema_real_eip !104
  %630 = trunc i32 %626 to i8, !mcsema_real_eip !104
  %631 = call i8 @llvm.ctpop.i8(i8 %630), !mcsema_real_eip !104
  %632 = trunc i8 %631 to i1, !mcsema_real_eip !104
  %633 = xor i1 %632, true, !mcsema_real_eip !104
  store i1 %633, i1* %PF, !mcsema_real_eip !104
  store i1 undef, i1* %AF, !mcsema_real_eip !104
  %634 = zext i32 %626 to i64, !mcsema_real_eip !104
  store i64 %634, i64* %XAX, !mcsema_real_eip !104
  %EAX.147 = bitcast i64* %XAX to i32*, !mcsema_real_eip !105
  %EAX_val.148 = load i32, i32* %EAX.147, !mcsema_real_eip !105
  %635 = sub i32 %EAX_val.148, 70, !mcsema_real_eip !105
  %636 = xor i32 %635, %EAX_val.148, !mcsema_real_eip !105
  %637 = xor i32 %636, 70, !mcsema_real_eip !105
  %638 = and i32 %637, 16, !mcsema_real_eip !105
  %639 = icmp ne i32 %638, 0, !mcsema_real_eip !105
  store i1 %639, i1* %AF, !mcsema_real_eip !105
  %640 = trunc i32 %635 to i8, !mcsema_real_eip !105
  %641 = call i8 @llvm.ctpop.i8(i8 %640), !mcsema_real_eip !105
  %642 = trunc i8 %641 to i1, !mcsema_real_eip !105
  %643 = xor i1 %642, true, !mcsema_real_eip !105
  store i1 %643, i1* %PF, !mcsema_real_eip !105
  %644 = icmp eq i32 %635, 0, !mcsema_real_eip !105
  store i1 %644, i1* %ZF, !mcsema_real_eip !105
  %645 = lshr i32 %635, 31, !mcsema_real_eip !105
  %646 = trunc i32 %645 to i1, !mcsema_real_eip !105
  store i1 %646, i1* %SF, !mcsema_real_eip !105
  %647 = icmp ult i32 %EAX_val.148, 70, !mcsema_real_eip !105
  store i1 %647, i1* %CF, !mcsema_real_eip !105
  %648 = xor i32 %EAX_val.148, 70, !mcsema_real_eip !105
  %649 = xor i32 %EAX_val.148, %635, !mcsema_real_eip !105
  %650 = and i32 %648, %649, !mcsema_real_eip !105
  %651 = lshr i32 %650, 31, !mcsema_real_eip !105
  %652 = trunc i32 %651 to i1, !mcsema_real_eip !105
  store i1 %652, i1* %OF, !mcsema_real_eip !105
  %653 = load i1, i1* %ZF, !mcsema_real_eip !106
  %654 = icmp eq i1 %653, false, !mcsema_real_eip !106
  br i1 %654, label %block_0x1b7, label %block_0x1a9, !mcsema_real_eip !106

block_0x157:                                      ; preds = %block_0x14a
  %RBP_val.149 = load i64, i64* %XBP, !mcsema_real_eip !107
  %655 = add i64 %RBP_val.149, -20, !mcsema_real_eip !107
  %656 = inttoptr i64 %655 to i64*, !mcsema_real_eip !107
  %657 = ptrtoint i64* %656 to i64, !mcsema_real_eip !107
  %658 = inttoptr i64 %657 to i32*, !mcsema_real_eip !107
  %659 = load i32, i32* %658, !mcsema_real_eip !107
  %660 = zext i32 %659 to i64, !mcsema_real_eip !107
  store i64 %660, i64* %XAX, !mcsema_real_eip !107
  %EAX.150 = bitcast i64* %XAX to i32*, !mcsema_real_eip !108
  %EAX_val.151 = load i32, i32* %EAX.150, !mcsema_real_eip !108
  %661 = add i32 4, %EAX_val.151, !mcsema_real_eip !108
  %662 = xor i32 %661, %EAX_val.151, !mcsema_real_eip !108
  %663 = xor i32 %662, 4, !mcsema_real_eip !108
  %664 = and i32 %663, 16, !mcsema_real_eip !108
  %665 = icmp ne i32 %664, 0, !mcsema_real_eip !108
  store i1 %665, i1* %AF, !mcsema_real_eip !108
  %666 = lshr i32 %661, 31, !mcsema_real_eip !108
  %667 = trunc i32 %666 to i1, !mcsema_real_eip !108
  store i1 %667, i1* %SF, !mcsema_real_eip !108
  %668 = icmp eq i32 %661, 0, !mcsema_real_eip !108
  store i1 %668, i1* %ZF, !mcsema_real_eip !108
  %669 = xor i32 %EAX_val.151, 4, !mcsema_real_eip !108
  %670 = xor i32 %669, -1, !mcsema_real_eip !108
  %671 = xor i32 %EAX_val.151, %661, !mcsema_real_eip !108
  %672 = and i32 %670, %671, !mcsema_real_eip !108
  %673 = lshr i32 %672, 31, !mcsema_real_eip !108
  %674 = and i32 %673, 1, !mcsema_real_eip !108
  %675 = trunc i32 %674 to i1, !mcsema_real_eip !108
  store i1 %675, i1* %OF, !mcsema_real_eip !108
  %676 = trunc i32 %661 to i8, !mcsema_real_eip !108
  %677 = call i8 @llvm.ctpop.i8(i8 %676), !mcsema_real_eip !108
  %678 = trunc i8 %677 to i1, !mcsema_real_eip !108
  %679 = xor i1 %678, true, !mcsema_real_eip !108
  store i1 %679, i1* %PF, !mcsema_real_eip !108
  %680 = icmp ult i32 %661, %EAX_val.151, !mcsema_real_eip !108
  store i1 %680, i1* %CF, !mcsema_real_eip !108
  %681 = zext i32 %661 to i64, !mcsema_real_eip !108
  store i64 %681, i64* %XAX, !mcsema_real_eip !108
  %RBP_val.152 = load i64, i64* %XBP, !mcsema_real_eip !109
  %682 = add i64 %RBP_val.152, -20, !mcsema_real_eip !109
  %683 = inttoptr i64 %682 to i64*, !mcsema_real_eip !109
  %EAX.153 = bitcast i64* %XAX to i32*, !mcsema_real_eip !109
  %EAX_val.154 = load i32, i32* %EAX.153, !mcsema_real_eip !109
  %684 = ptrtoint i64* %683 to i64, !mcsema_real_eip !109
  %685 = inttoptr i64 %684 to i32*, !mcsema_real_eip !109
  store i32 %EAX_val.154, i32* %685, !mcsema_real_eip !109
  br label %block_0x16e, !mcsema_real_eip !110

block_0x1a9:                                      ; preds = %block_0x16e
  %RBP_val.164 = load i64, i64* %XBP, !mcsema_real_eip !111
  %686 = add i64 %RBP_val.164, -20, !mcsema_real_eip !111
  %687 = inttoptr i64 %686 to i64*, !mcsema_real_eip !111
  %688 = ptrtoint i64* %687 to i64, !mcsema_real_eip !111
  %689 = inttoptr i64 %688 to i32*, !mcsema_real_eip !111
  %690 = load i32, i32* %689, !mcsema_real_eip !111
  %691 = zext i32 %690 to i64, !mcsema_real_eip !111
  store i64 %691, i64* %XAX, !mcsema_real_eip !111
  %EAX.165 = bitcast i64* %XAX to i32*, !mcsema_real_eip !112
  %EAX_val.166 = load i32, i32* %EAX.165, !mcsema_real_eip !112
  %692 = sub i32 %EAX_val.166, 1, !mcsema_real_eip !112
  %693 = xor i32 %692, %EAX_val.166, !mcsema_real_eip !112
  %694 = xor i32 %693, 1, !mcsema_real_eip !112
  %695 = and i32 %694, 16, !mcsema_real_eip !112
  %696 = icmp ne i32 %695, 0, !mcsema_real_eip !112
  store i1 %696, i1* %AF, !mcsema_real_eip !112
  %697 = trunc i32 %692 to i8, !mcsema_real_eip !112
  %698 = call i8 @llvm.ctpop.i8(i8 %697), !mcsema_real_eip !112
  %699 = trunc i8 %698 to i1, !mcsema_real_eip !112
  %700 = xor i1 %699, true, !mcsema_real_eip !112
  store i1 %700, i1* %PF, !mcsema_real_eip !112
  %701 = icmp eq i32 %692, 0, !mcsema_real_eip !112
  store i1 %701, i1* %ZF, !mcsema_real_eip !112
  %702 = lshr i32 %692, 31, !mcsema_real_eip !112
  %703 = trunc i32 %702 to i1, !mcsema_real_eip !112
  store i1 %703, i1* %SF, !mcsema_real_eip !112
  %704 = icmp ult i32 %EAX_val.166, 1, !mcsema_real_eip !112
  store i1 %704, i1* %CF, !mcsema_real_eip !112
  %705 = xor i32 %EAX_val.166, 1, !mcsema_real_eip !112
  %706 = xor i32 %EAX_val.166, %692, !mcsema_real_eip !112
  %707 = and i32 %705, %706, !mcsema_real_eip !112
  %708 = lshr i32 %707, 31, !mcsema_real_eip !112
  %709 = trunc i32 %708 to i1, !mcsema_real_eip !112
  store i1 %709, i1* %OF, !mcsema_real_eip !112
  %710 = zext i32 %692 to i64, !mcsema_real_eip !112
  store i64 %710, i64* %XAX, !mcsema_real_eip !112
  %RBP_val.167 = load i64, i64* %XBP, !mcsema_real_eip !113
  %711 = add i64 %RBP_val.167, -20, !mcsema_real_eip !113
  %712 = inttoptr i64 %711 to i64*, !mcsema_real_eip !113
  %EAX.168 = bitcast i64* %XAX to i32*, !mcsema_real_eip !113
  %EAX_val.169 = load i32, i32* %EAX.168, !mcsema_real_eip !113
  %713 = ptrtoint i64* %712 to i64, !mcsema_real_eip !113
  %714 = inttoptr i64 %713 to i32*, !mcsema_real_eip !113
  store i32 %EAX_val.169, i32* %714, !mcsema_real_eip !113
  br label %block_0x1c2, !mcsema_real_eip !114

block_0x1b7:                                      ; preds = %block_0x16e
  %RBP_val.155 = load i64, i64* %XBP, !mcsema_real_eip !115
  %715 = add i64 %RBP_val.155, -20, !mcsema_real_eip !115
  %716 = inttoptr i64 %715 to i64*, !mcsema_real_eip !115
  %717 = ptrtoint i64* %716 to i64, !mcsema_real_eip !115
  %718 = inttoptr i64 %717 to i32*, !mcsema_real_eip !115
  %719 = load i32, i32* %718, !mcsema_real_eip !115
  %720 = zext i32 %719 to i64, !mcsema_real_eip !115
  store i64 %720, i64* %XCX, !mcsema_real_eip !115
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !116
  %721 = add i64 %RBP_val.156, -20, !mcsema_real_eip !116
  %722 = inttoptr i64 %721 to i64*, !mcsema_real_eip !116
  %723 = ptrtoint i64* %722 to i64, !mcsema_real_eip !116
  %724 = inttoptr i64 %723 to i32*, !mcsema_real_eip !116
  %725 = load i32, i32* %724, !mcsema_real_eip !116
  %726 = zext i32 %725 to i64, !mcsema_real_eip !116
  store i64 %726, i64* %XAX, !mcsema_real_eip !116
  %EAX.157 = bitcast i64* %XAX to i32*, !mcsema_real_eip !117
  %EAX_val.158 = load i32, i32* %EAX.157, !mcsema_real_eip !117
  %CL.159 = bitcast i64* %XCX to i8*, !mcsema_real_eip !117
  %CL_val.160 = load i8, i8* %CL.159, !mcsema_real_eip !117
  %CL_val.160.zext = zext i8 %CL_val.160 to i32, !mcsema_real_eip !117
  %727 = and i32 %CL_val.160.zext, 31, !mcsema_real_eip !117
  %728 = sub i32 %CL_val.160.zext, 1, !mcsema_real_eip !117
  %729 = icmp ne i32 %727, 0, !mcsema_real_eip !117
  %730 = select i1 %729, i32 %728, i32 0, !mcsema_real_eip !117
  %731 = select i1 %729, i32 1, i32 0, !mcsema_real_eip !117
  %732 = shl i32 %EAX_val.158, %730, !mcsema_real_eip !117
  %733 = and i32 %732, -2147483648, !mcsema_real_eip !117
  %734 = icmp ne i32 %733, 0, !mcsema_real_eip !117
  %735 = load i1, i1* %CF, !mcsema_real_eip !117
  %736 = select i1 %729, i1 %734, i1 %735, !mcsema_real_eip !117
  %737 = shl i32 %732, %731, !mcsema_real_eip !117
  %738 = icmp eq i32 %727, 1, !mcsema_real_eip !117
  %739 = load i1, i1* %OF, !mcsema_real_eip !117
  %740 = and i32 %737, -2147483648, !mcsema_real_eip !117
  %741 = icmp ne i32 %740, 0, !mcsema_real_eip !117
  %742 = xor i1 %741, %736, !mcsema_real_eip !117
  %743 = select i1 %738, i1 %742, i1 %739, !mcsema_real_eip !117
  store i1 %743, i1* %OF, !mcsema_real_eip !117
  store i1 %736, i1* %CF, !mcsema_real_eip !117
  %744 = load i1, i1* %ZF, !mcsema_real_eip !117
  %745 = icmp eq i32 %737, 0, !mcsema_real_eip !117
  %746 = select i1 %729, i1 %745, i1 %744, !mcsema_real_eip !117
  store i1 %746, i1* %ZF, !mcsema_real_eip !117
  %747 = load i1, i1* %SF, !mcsema_real_eip !117
  %748 = icmp slt i32 %737, 0, !mcsema_real_eip !117
  %749 = select i1 %729, i1 %748, i1 %747, !mcsema_real_eip !117
  store i1 %749, i1* %SF, !mcsema_real_eip !117
  %750 = load i1, i1* %PF, !mcsema_real_eip !117
  %751 = trunc i32 %737 to i8, !mcsema_real_eip !117
  %752 = call i8 @llvm.ctpop.i8(i8 %751), !mcsema_real_eip !117
  %753 = trunc i8 %752 to i1, !mcsema_real_eip !117
  %754 = xor i1 %753, true, !mcsema_real_eip !117
  store i1 %754, i1* %PF, !mcsema_real_eip !117
  %755 = load i1, i1* %PF, !mcsema_real_eip !117
  %756 = select i1 %729, i1 %755, i1 %750, !mcsema_real_eip !117
  store i1 %756, i1* %PF, !mcsema_real_eip !117
  %757 = zext i32 %737 to i64, !mcsema_real_eip !117
  store i64 %757, i64* %XAX, !mcsema_real_eip !117
  %RBP_val.161 = load i64, i64* %XBP, !mcsema_real_eip !118
  %758 = add i64 %RBP_val.161, -20, !mcsema_real_eip !118
  %759 = inttoptr i64 %758 to i64*, !mcsema_real_eip !118
  %EAX.162 = bitcast i64* %XAX to i32*, !mcsema_real_eip !118
  %EAX_val.163 = load i32, i32* %EAX.162, !mcsema_real_eip !118
  %760 = ptrtoint i64* %759 to i64, !mcsema_real_eip !118
  %761 = inttoptr i64 %760 to i32*, !mcsema_real_eip !118
  store i32 %EAX_val.163, i32* %761, !mcsema_real_eip !118
  br label %block_0x1c2, !mcsema_real_eip !111

block_0x1c2:                                      ; preds = %block_0x1b7, %block_0x1a9
  %RBP_val.170 = load i64, i64* %XBP, !mcsema_real_eip !119
  %762 = add i64 %RBP_val.170, -20, !mcsema_real_eip !119
  %763 = inttoptr i64 %762 to i64*, !mcsema_real_eip !119
  %764 = ptrtoint i64* %763 to i64, !mcsema_real_eip !119
  %765 = inttoptr i64 %764 to i32*, !mcsema_real_eip !119
  %766 = load i32, i32* %765, !mcsema_real_eip !119
  %767 = sub i32 %766, 0, !mcsema_real_eip !119
  %768 = xor i32 %767, %766, !mcsema_real_eip !119
  %769 = xor i32 %768, 0, !mcsema_real_eip !119
  %770 = and i32 %769, 16, !mcsema_real_eip !119
  %771 = icmp ne i32 %770, 0, !mcsema_real_eip !119
  store i1 %771, i1* %AF, !mcsema_real_eip !119
  %772 = trunc i32 %767 to i8, !mcsema_real_eip !119
  %773 = call i8 @llvm.ctpop.i8(i8 %772), !mcsema_real_eip !119
  %774 = trunc i8 %773 to i1, !mcsema_real_eip !119
  %775 = xor i1 %774, true, !mcsema_real_eip !119
  store i1 %775, i1* %PF, !mcsema_real_eip !119
  %776 = icmp eq i32 %767, 0, !mcsema_real_eip !119
  store i1 %776, i1* %ZF, !mcsema_real_eip !119
  %777 = lshr i32 %767, 31, !mcsema_real_eip !119
  %778 = trunc i32 %777 to i1, !mcsema_real_eip !119
  store i1 %778, i1* %SF, !mcsema_real_eip !119
  %779 = icmp ult i32 %766, 0, !mcsema_real_eip !119
  store i1 %779, i1* %CF, !mcsema_real_eip !119
  %780 = xor i32 %766, 0, !mcsema_real_eip !119
  %781 = xor i32 %766, %767, !mcsema_real_eip !119
  %782 = and i32 %780, %781, !mcsema_real_eip !119
  %783 = lshr i32 %782, 31, !mcsema_real_eip !119
  %784 = trunc i32 %783 to i1, !mcsema_real_eip !119
  store i1 %784, i1* %OF, !mcsema_real_eip !119
  %785 = load i1, i1* %ZF, !mcsema_real_eip !120
  %786 = icmp eq i1 %785, true, !mcsema_real_eip !120
  br i1 %786, label %block_0x1d8, label %block_0x1cc, !mcsema_real_eip !120

block_0x1cc:                                      ; preds = %block_0x1c2
  %RBP_val.193 = load i64, i64* %XBP, !mcsema_real_eip !121
  %787 = add i64 %RBP_val.193, -4, !mcsema_real_eip !121
  %788 = inttoptr i64 %787 to i64*, !mcsema_real_eip !121
  %789 = ptrtoint i64* %788 to i64, !mcsema_real_eip !121
  %790 = inttoptr i64 %789 to i32*, !mcsema_real_eip !121
  store i32 -7, i32* %790, !mcsema_real_eip !121
  br label %block_0x417, !mcsema_real_eip !122

block_0x1d8:                                      ; preds = %block_0x1c2
  %EDI.171 = bitcast i64* %XDI to i32*, !mcsema_real_eip !123
  %EDI_val.172 = load i32, i32* %EDI.171, !mcsema_real_eip !123
  %EDI.173 = bitcast i64* %XDI to i32*, !mcsema_real_eip !123
  %EDI_val.174 = load i32, i32* %EDI.173, !mcsema_real_eip !123
  %791 = xor i32 %EDI_val.172, %EDI_val.174, !mcsema_real_eip !123
  store i1 false, i1* %CF, !mcsema_real_eip !123
  store i1 false, i1* %OF, !mcsema_real_eip !123
  %792 = lshr i32 %791, 31, !mcsema_real_eip !123
  %793 = trunc i32 %792 to i1, !mcsema_real_eip !123
  store i1 %793, i1* %SF, !mcsema_real_eip !123
  %794 = icmp eq i32 %791, 0, !mcsema_real_eip !123
  store i1 %794, i1* %ZF, !mcsema_real_eip !123
  %795 = trunc i32 %791 to i8, !mcsema_real_eip !123
  %796 = call i8 @llvm.ctpop.i8(i8 %795), !mcsema_real_eip !123
  %797 = trunc i8 %796 to i1, !mcsema_real_eip !123
  %798 = xor i1 %797, true, !mcsema_real_eip !123
  store i1 %798, i1* %PF, !mcsema_real_eip !123
  store i1 undef, i1* %AF, !mcsema_real_eip !123
  %799 = zext i32 %791 to i64, !mcsema_real_eip !123
  store i64 %799, i64* %XDI, !mcsema_real_eip !123
  store i64 4, i64* %XDX, !mcsema_real_eip !124
  %RBP_val.175 = load i64, i64* %XBP, !mcsema_real_eip !125
  %800 = add i64 %RBP_val.175, -16, !mcsema_real_eip !125
  %801 = inttoptr i64 %800 to i64*, !mcsema_real_eip !125
  %802 = load i64, i64* %801, !mcsema_real_eip !125
  store i64 %802, i64* %XAX, !mcsema_real_eip !125
  %RAX_val.176 = load i64, i64* %XAX, !mcsema_real_eip !126
  %803 = add i64 8, %RAX_val.176, !mcsema_real_eip !126
  %804 = xor i64 %803, %RAX_val.176, !mcsema_real_eip !126
  %805 = xor i64 %804, 8, !mcsema_real_eip !126
  %806 = and i64 %805, 16, !mcsema_real_eip !126
  %807 = icmp ne i64 %806, 0, !mcsema_real_eip !126
  store i1 %807, i1* %AF, !mcsema_real_eip !126
  %808 = lshr i64 %803, 63, !mcsema_real_eip !126
  %809 = trunc i64 %808 to i1, !mcsema_real_eip !126
  store i1 %809, i1* %SF, !mcsema_real_eip !126
  %810 = icmp eq i64 %803, 0, !mcsema_real_eip !126
  store i1 %810, i1* %ZF, !mcsema_real_eip !126
  %811 = xor i64 %RAX_val.176, 8, !mcsema_real_eip !126
  %812 = xor i64 %811, -1, !mcsema_real_eip !126
  %813 = xor i64 %RAX_val.176, %803, !mcsema_real_eip !126
  %814 = and i64 %812, %813, !mcsema_real_eip !126
  %815 = lshr i64 %814, 63, !mcsema_real_eip !126
  %816 = and i64 %815, 1, !mcsema_real_eip !126
  %817 = trunc i64 %816 to i1, !mcsema_real_eip !126
  store i1 %817, i1* %OF, !mcsema_real_eip !126
  %818 = trunc i64 %803 to i8, !mcsema_real_eip !126
  %819 = call i8 @llvm.ctpop.i8(i8 %818), !mcsema_real_eip !126
  %820 = trunc i8 %819 to i1, !mcsema_real_eip !126
  %821 = xor i1 %820, true, !mcsema_real_eip !126
  store i1 %821, i1* %PF, !mcsema_real_eip !126
  %822 = icmp ult i64 %803, %RAX_val.176, !mcsema_real_eip !126
  store i1 %822, i1* %CF, !mcsema_real_eip !126
  store i64 %803, i64* %XAX, !mcsema_real_eip !126
  %RAX_val.177 = load i64, i64* %XAX, !mcsema_real_eip !127
  store i64 %RAX_val.177, i64* %XSI, !mcsema_real_eip !127
  %RDI_val.178 = load i64, i64* %XDI, !mcsema_real_eip !128
  %RSI_val.179 = load i64, i64* %XSI, !mcsema_real_eip !128
  %RDX_val.180 = load i64, i64* %XDX, !mcsema_real_eip !128
  %RSP_val.181 = load i64, i64* %XSP, !mcsema_real_eip !128
  %823 = sub i64 %RSP_val.181, 8, !mcsema_real_eip !128
  %824 = inttoptr i64 %823 to i64*, !mcsema_real_eip !128
  store i64 -2415393069852865332, i64* %824, !mcsema_real_eip !128
  store i64 %823, i64* %XSP, !mcsema_real_eip !128
  %825 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.178, i64 %RSI_val.179, i64 %RDX_val.180), !mcsema_real_eip !128
  store i64 %825, i64* %XAX, !mcsema_real_eip !128
  %AX.182 = bitcast i64* %XAX to i16*, !mcsema_real_eip !129
  %AX_val.183 = load i16, i16* %AX.182, !mcsema_real_eip !129
  %CX.184 = bitcast i64* %XCX to i16*, !mcsema_real_eip !129
  store i16 %AX_val.183, i16* %CX.184, !mcsema_real_eip !129
  %RBP_val.185 = load i64, i64* %XBP, !mcsema_real_eip !130
  %826 = add i64 %RBP_val.185, -38, !mcsema_real_eip !130
  %827 = inttoptr i64 %826 to i64*, !mcsema_real_eip !130
  %CX.186 = bitcast i64* %XCX to i16*, !mcsema_real_eip !130
  %CX_val.187 = load i16, i16* %CX.186, !mcsema_real_eip !130
  %828 = ptrtoint i64* %827 to i64, !mcsema_real_eip !130
  %829 = inttoptr i64 %828 to i16*, !mcsema_real_eip !130
  store i16 %CX_val.187, i16* %829, !mcsema_real_eip !130
  %RBP_val.188 = load i64, i64* %XBP, !mcsema_real_eip !131
  %830 = add i64 %RBP_val.188, -38, !mcsema_real_eip !131
  %831 = inttoptr i64 %830 to i64*, !mcsema_real_eip !131
  %832 = ptrtoint i64* %831 to i64, !mcsema_real_eip !131
  %833 = inttoptr i64 %832 to i16*, !mcsema_real_eip !131
  %834 = load i16, i16* %833, !mcsema_real_eip !131
  %835 = zext i16 %834 to i32, !mcsema_real_eip !131
  %836 = zext i32 %835 to i64, !mcsema_real_eip !131
  store i64 %836, i64* %XAX, !mcsema_real_eip !131
  %EAX.189 = bitcast i64* %XAX to i32*, !mcsema_real_eip !132
  %EAX_val.190 = load i32, i32* %EAX.189, !mcsema_real_eip !132
  %837 = or i32 %EAX_val.190, 21845, !mcsema_real_eip !132
  store i1 undef, i1* %AF, !mcsema_real_eip !132
  store i1 false, i1* %OF, !mcsema_real_eip !132
  store i1 false, i1* %CF, !mcsema_real_eip !132
  %838 = lshr i32 %837, 31, !mcsema_real_eip !132
  %839 = trunc i32 %838 to i1, !mcsema_real_eip !132
  store i1 %839, i1* %SF, !mcsema_real_eip !132
  %840 = icmp eq i32 %837, 0, !mcsema_real_eip !132
  store i1 %840, i1* %ZF, !mcsema_real_eip !132
  %841 = trunc i32 %837 to i8, !mcsema_real_eip !132
  %842 = call i8 @llvm.ctpop.i8(i8 %841), !mcsema_real_eip !132
  %843 = trunc i8 %842 to i1, !mcsema_real_eip !132
  %844 = xor i1 %843, true, !mcsema_real_eip !132
  store i1 %844, i1* %PF, !mcsema_real_eip !132
  %845 = zext i32 %837 to i64, !mcsema_real_eip !132
  store i64 %845, i64* %XAX, !mcsema_real_eip !132
  %EAX.191 = bitcast i64* %XAX to i32*, !mcsema_real_eip !133
  %EAX_val.192 = load i32, i32* %EAX.191, !mcsema_real_eip !133
  %846 = sub i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  %847 = xor i32 %846, %EAX_val.192, !mcsema_real_eip !133
  %848 = xor i32 %847, 56663, !mcsema_real_eip !133
  %849 = and i32 %848, 16, !mcsema_real_eip !133
  %850 = icmp ne i32 %849, 0, !mcsema_real_eip !133
  store i1 %850, i1* %AF, !mcsema_real_eip !133
  %851 = trunc i32 %846 to i8, !mcsema_real_eip !133
  %852 = call i8 @llvm.ctpop.i8(i8 %851), !mcsema_real_eip !133
  %853 = trunc i8 %852 to i1, !mcsema_real_eip !133
  %854 = xor i1 %853, true, !mcsema_real_eip !133
  store i1 %854, i1* %PF, !mcsema_real_eip !133
  %855 = icmp eq i32 %846, 0, !mcsema_real_eip !133
  store i1 %855, i1* %ZF, !mcsema_real_eip !133
  %856 = lshr i32 %846, 31, !mcsema_real_eip !133
  %857 = trunc i32 %856 to i1, !mcsema_real_eip !133
  store i1 %857, i1* %SF, !mcsema_real_eip !133
  %858 = icmp ult i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  store i1 %858, i1* %CF, !mcsema_real_eip !133
  %859 = xor i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  %860 = xor i32 %EAX_val.192, %846, !mcsema_real_eip !133
  %861 = and i32 %859, %860, !mcsema_real_eip !133
  %862 = lshr i32 %861, 31, !mcsema_real_eip !133
  %863 = trunc i32 %862 to i1, !mcsema_real_eip !133
  store i1 %863, i1* %OF, !mcsema_real_eip !133
  %864 = load i1, i1* %ZF, !mcsema_real_eip !134
  %865 = icmp eq i1 %864, false, !mcsema_real_eip !134
  br i1 %865, label %block_0x22a, label %block_0x20a, !mcsema_real_eip !134

block_0x20a:                                      ; preds = %block_0x1d8
  %RBP_val.195 = load i64, i64* %XBP, !mcsema_real_eip !135
  %866 = add i64 %RBP_val.195, -38, !mcsema_real_eip !135
  %867 = inttoptr i64 %866 to i64*, !mcsema_real_eip !135
  %868 = ptrtoint i64* %867 to i64, !mcsema_real_eip !135
  %869 = inttoptr i64 %868 to i16*, !mcsema_real_eip !135
  %870 = load i16, i16* %869, !mcsema_real_eip !135
  %871 = zext i16 %870 to i32, !mcsema_real_eip !135
  %872 = zext i32 %871 to i64, !mcsema_real_eip !135
  store i64 %872, i64* %XAX, !mcsema_real_eip !135
  %EAX.196 = bitcast i64* %XAX to i32*, !mcsema_real_eip !136
  %EAX_val.197 = load i32, i32* %EAX.196, !mcsema_real_eip !136
  %873 = or i32 %EAX_val.197, 43690, !mcsema_real_eip !136
  store i1 undef, i1* %AF, !mcsema_real_eip !136
  store i1 false, i1* %OF, !mcsema_real_eip !136
  store i1 false, i1* %CF, !mcsema_real_eip !136
  %874 = lshr i32 %873, 31, !mcsema_real_eip !136
  %875 = trunc i32 %874 to i1, !mcsema_real_eip !136
  store i1 %875, i1* %SF, !mcsema_real_eip !136
  %876 = icmp eq i32 %873, 0, !mcsema_real_eip !136
  store i1 %876, i1* %ZF, !mcsema_real_eip !136
  %877 = trunc i32 %873 to i8, !mcsema_real_eip !136
  %878 = call i8 @llvm.ctpop.i8(i8 %877), !mcsema_real_eip !136
  %879 = trunc i8 %878 to i1, !mcsema_real_eip !136
  %880 = xor i1 %879, true, !mcsema_real_eip !136
  store i1 %880, i1* %PF, !mcsema_real_eip !136
  %881 = zext i32 %873 to i64, !mcsema_real_eip !136
  store i64 %881, i64* %XAX, !mcsema_real_eip !136
  %EAX.198 = bitcast i64* %XAX to i32*, !mcsema_real_eip !137
  %EAX_val.199 = load i32, i32* %EAX.198, !mcsema_real_eip !137
  %882 = sub i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  %883 = xor i32 %882, %EAX_val.199, !mcsema_real_eip !137
  %884 = xor i32 %883, 65211, !mcsema_real_eip !137
  %885 = and i32 %884, 16, !mcsema_real_eip !137
  %886 = icmp ne i32 %885, 0, !mcsema_real_eip !137
  store i1 %886, i1* %AF, !mcsema_real_eip !137
  %887 = trunc i32 %882 to i8, !mcsema_real_eip !137
  %888 = call i8 @llvm.ctpop.i8(i8 %887), !mcsema_real_eip !137
  %889 = trunc i8 %888 to i1, !mcsema_real_eip !137
  %890 = xor i1 %889, true, !mcsema_real_eip !137
  store i1 %890, i1* %PF, !mcsema_real_eip !137
  %891 = icmp eq i32 %882, 0, !mcsema_real_eip !137
  store i1 %891, i1* %ZF, !mcsema_real_eip !137
  %892 = lshr i32 %882, 31, !mcsema_real_eip !137
  %893 = trunc i32 %892 to i1, !mcsema_real_eip !137
  store i1 %893, i1* %SF, !mcsema_real_eip !137
  %894 = icmp ult i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  store i1 %894, i1* %CF, !mcsema_real_eip !137
  %895 = xor i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  %896 = xor i32 %EAX_val.199, %882, !mcsema_real_eip !137
  %897 = and i32 %895, %896, !mcsema_real_eip !137
  %898 = lshr i32 %897, 31, !mcsema_real_eip !137
  %899 = trunc i32 %898 to i1, !mcsema_real_eip !137
  store i1 %899, i1* %OF, !mcsema_real_eip !137
  %900 = load i1, i1* %ZF, !mcsema_real_eip !138
  %901 = icmp eq i1 %900, false, !mcsema_real_eip !138
  br i1 %901, label %block_0x22a, label %block_0x21e, !mcsema_real_eip !138

block_0x22a:                                      ; preds = %block_0x20a, %block_0x1d8
  %RBP_val.194 = load i64, i64* %XBP, !mcsema_real_eip !139
  %902 = add i64 %RBP_val.194, -20, !mcsema_real_eip !139
  %903 = inttoptr i64 %902 to i64*, !mcsema_real_eip !139
  %904 = ptrtoint i64* %903 to i64, !mcsema_real_eip !139
  %905 = inttoptr i64 %904 to i32*, !mcsema_real_eip !139
  store i32 48059, i32* %905, !mcsema_real_eip !139
  br label %block_0x231, !mcsema_real_eip !135

block_0x231:                                      ; preds = %block_0x21e, %block_0x22a
  %EDI.200 = bitcast i64* %XDI to i32*, !mcsema_real_eip !140
  %EDI_val.201 = load i32, i32* %EDI.200, !mcsema_real_eip !140
  %EDI.202 = bitcast i64* %XDI to i32*, !mcsema_real_eip !140
  %EDI_val.203 = load i32, i32* %EDI.202, !mcsema_real_eip !140
  %906 = xor i32 %EDI_val.201, %EDI_val.203, !mcsema_real_eip !140
  store i1 false, i1* %CF, !mcsema_real_eip !140
  store i1 false, i1* %OF, !mcsema_real_eip !140
  %907 = lshr i32 %906, 31, !mcsema_real_eip !140
  %908 = trunc i32 %907 to i1, !mcsema_real_eip !140
  store i1 %908, i1* %SF, !mcsema_real_eip !140
  %909 = icmp eq i32 %906, 0, !mcsema_real_eip !140
  store i1 %909, i1* %ZF, !mcsema_real_eip !140
  %910 = trunc i32 %906 to i8, !mcsema_real_eip !140
  %911 = call i8 @llvm.ctpop.i8(i8 %910), !mcsema_real_eip !140
  %912 = trunc i8 %911 to i1, !mcsema_real_eip !140
  %913 = xor i1 %912, true, !mcsema_real_eip !140
  store i1 %913, i1* %PF, !mcsema_real_eip !140
  store i1 undef, i1* %AF, !mcsema_real_eip !140
  %914 = zext i32 %906 to i64, !mcsema_real_eip !140
  store i64 %914, i64* %XDI, !mcsema_real_eip !140
  store i64 8, i64* %XDX, !mcsema_real_eip !141
  %RBP_val.204 = load i64, i64* %XBP, !mcsema_real_eip !142
  %915 = add i64 %RBP_val.204, -16, !mcsema_real_eip !142
  %916 = inttoptr i64 %915 to i64*, !mcsema_real_eip !142
  %917 = load i64, i64* %916, !mcsema_real_eip !142
  store i64 %917, i64* %XAX, !mcsema_real_eip !142
  %RAX_val.205 = load i64, i64* %XAX, !mcsema_real_eip !143
  %918 = add i64 12, %RAX_val.205, !mcsema_real_eip !143
  %919 = xor i64 %918, %RAX_val.205, !mcsema_real_eip !143
  %920 = xor i64 %919, 12, !mcsema_real_eip !143
  %921 = and i64 %920, 16, !mcsema_real_eip !143
  %922 = icmp ne i64 %921, 0, !mcsema_real_eip !143
  store i1 %922, i1* %AF, !mcsema_real_eip !143
  %923 = lshr i64 %918, 63, !mcsema_real_eip !143
  %924 = trunc i64 %923 to i1, !mcsema_real_eip !143
  store i1 %924, i1* %SF, !mcsema_real_eip !143
  %925 = icmp eq i64 %918, 0, !mcsema_real_eip !143
  store i1 %925, i1* %ZF, !mcsema_real_eip !143
  %926 = xor i64 %RAX_val.205, 12, !mcsema_real_eip !143
  %927 = xor i64 %926, -1, !mcsema_real_eip !143
  %928 = xor i64 %RAX_val.205, %918, !mcsema_real_eip !143
  %929 = and i64 %927, %928, !mcsema_real_eip !143
  %930 = lshr i64 %929, 63, !mcsema_real_eip !143
  %931 = and i64 %930, 1, !mcsema_real_eip !143
  %932 = trunc i64 %931 to i1, !mcsema_real_eip !143
  store i1 %932, i1* %OF, !mcsema_real_eip !143
  %933 = trunc i64 %918 to i8, !mcsema_real_eip !143
  %934 = call i8 @llvm.ctpop.i8(i8 %933), !mcsema_real_eip !143
  %935 = trunc i8 %934 to i1, !mcsema_real_eip !143
  %936 = xor i1 %935, true, !mcsema_real_eip !143
  store i1 %936, i1* %PF, !mcsema_real_eip !143
  %937 = icmp ult i64 %918, %RAX_val.205, !mcsema_real_eip !143
  store i1 %937, i1* %CF, !mcsema_real_eip !143
  store i64 %918, i64* %XAX, !mcsema_real_eip !143
  %RAX_val.206 = load i64, i64* %XAX, !mcsema_real_eip !144
  store i64 %RAX_val.206, i64* %XSI, !mcsema_real_eip !144
  %RDI_val.207 = load i64, i64* %XDI, !mcsema_real_eip !145
  %RSI_val.208 = load i64, i64* %XSI, !mcsema_real_eip !145
  %RDX_val.209 = load i64, i64* %XDX, !mcsema_real_eip !145
  %RSP_val.210 = load i64, i64* %XSP, !mcsema_real_eip !145
  %938 = sub i64 %RSP_val.210, 8, !mcsema_real_eip !145
  %939 = inttoptr i64 %938 to i64*, !mcsema_real_eip !145
  store i64 -2415393069852865332, i64* %939, !mcsema_real_eip !145
  store i64 %938, i64* %XSP, !mcsema_real_eip !145
  %940 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.207, i64 %RSI_val.208, i64 %RDX_val.209), !mcsema_real_eip !145
  store i64 %940, i64* %XAX, !mcsema_real_eip !145
  %RBP_val.211 = load i64, i64* %XBP, !mcsema_real_eip !146
  %941 = add i64 %RBP_val.211, -44, !mcsema_real_eip !146
  %942 = inttoptr i64 %941 to i64*, !mcsema_real_eip !146
  %EAX.212 = bitcast i64* %XAX to i32*, !mcsema_real_eip !146
  %EAX_val.213 = load i32, i32* %EAX.212, !mcsema_real_eip !146
  %943 = ptrtoint i64* %942 to i64, !mcsema_real_eip !146
  %944 = inttoptr i64 %943 to i32*, !mcsema_real_eip !146
  store i32 %EAX_val.213, i32* %944, !mcsema_real_eip !146
  %RBP_val.214 = load i64, i64* %XBP, !mcsema_real_eip !147
  %945 = add i64 %RBP_val.214, -44, !mcsema_real_eip !147
  %946 = inttoptr i64 %945 to i64*, !mcsema_real_eip !147
  %947 = ptrtoint i64* %946 to i64, !mcsema_real_eip !147
  %948 = inttoptr i64 %947 to i32*, !mcsema_real_eip !147
  %949 = load i32, i32* %948, !mcsema_real_eip !147
  %950 = zext i32 %949 to i64, !mcsema_real_eip !147
  store i64 %950, i64* %XAX, !mcsema_real_eip !147
  %EAX.215 = bitcast i64* %XAX to i32*, !mcsema_real_eip !148
  %EAX_val.216 = load i32, i32* %EAX.215, !mcsema_real_eip !148
  %951 = xor i32 %EAX_val.216, -1534560611, !mcsema_real_eip !148
  store i1 false, i1* %CF, !mcsema_real_eip !148
  store i1 false, i1* %OF, !mcsema_real_eip !148
  %952 = lshr i32 %951, 31, !mcsema_real_eip !148
  %953 = trunc i32 %952 to i1, !mcsema_real_eip !148
  store i1 %953, i1* %SF, !mcsema_real_eip !148
  %954 = icmp eq i32 %951, 0, !mcsema_real_eip !148
  store i1 %954, i1* %ZF, !mcsema_real_eip !148
  %955 = trunc i32 %951 to i8, !mcsema_real_eip !148
  %956 = call i8 @llvm.ctpop.i8(i8 %955), !mcsema_real_eip !148
  %957 = trunc i8 %956 to i1, !mcsema_real_eip !148
  %958 = xor i1 %957, true, !mcsema_real_eip !148
  store i1 %958, i1* %PF, !mcsema_real_eip !148
  store i1 undef, i1* %AF, !mcsema_real_eip !148
  %959 = zext i32 %951 to i64, !mcsema_real_eip !148
  store i64 %959, i64* %XAX, !mcsema_real_eip !148
  %RBP_val.217 = load i64, i64* %XBP, !mcsema_real_eip !149
  %960 = add i64 %RBP_val.217, -48, !mcsema_real_eip !149
  %961 = inttoptr i64 %960 to i64*, !mcsema_real_eip !149
  %EAX.218 = bitcast i64* %XAX to i32*, !mcsema_real_eip !149
  %EAX_val.219 = load i32, i32* %EAX.218, !mcsema_real_eip !149
  %962 = ptrtoint i64* %961 to i64, !mcsema_real_eip !149
  %963 = inttoptr i64 %962 to i32*, !mcsema_real_eip !149
  store i32 %EAX_val.219, i32* %963, !mcsema_real_eip !149
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !150
  %964 = add i64 %RBP_val.220, -48, !mcsema_real_eip !150
  %965 = inttoptr i64 %964 to i64*, !mcsema_real_eip !150
  %966 = ptrtoint i64* %965 to i64, !mcsema_real_eip !150
  %967 = inttoptr i64 %966 to i32*, !mcsema_real_eip !150
  %968 = load i32, i32* %967, !mcsema_real_eip !150
  %969 = zext i32 %968 to i64, !mcsema_real_eip !150
  store i64 %969, i64* %XAX, !mcsema_real_eip !150
  %EAX.221 = bitcast i64* %XAX to i32*, !mcsema_real_eip !151
  %EAX_val.222 = load i32, i32* %EAX.221, !mcsema_real_eip !151
  %970 = lshr i32 %EAX_val.222, 15, !mcsema_real_eip !151
  %971 = and i32 %970, 1, !mcsema_real_eip !151
  %972 = icmp ne i32 %971, 0, !mcsema_real_eip !151
  %973 = load i1, i1* %CF, !mcsema_real_eip !151
  %974 = select i1 true, i1 %972, i1 %973, !mcsema_real_eip !151
  %975 = lshr i32 %970, 1, !mcsema_real_eip !151
  %976 = load i1, i1* %OF, !mcsema_real_eip !151
  %977 = and i32 %EAX_val.222, -2147483648, !mcsema_real_eip !151
  %978 = icmp ne i32 %977, 0, !mcsema_real_eip !151
  %979 = select i1 false, i1 %978, i1 %976, !mcsema_real_eip !151
  store i1 %979, i1* %OF, !mcsema_real_eip !151
  store i1 %974, i1* %CF, !mcsema_real_eip !151
  %980 = load i1, i1* %ZF, !mcsema_real_eip !151
  %981 = icmp eq i32 %975, 0, !mcsema_real_eip !151
  %982 = select i1 true, i1 %981, i1 %980, !mcsema_real_eip !151
  store i1 %982, i1* %ZF, !mcsema_real_eip !151
  %983 = load i1, i1* %SF, !mcsema_real_eip !151
  %984 = icmp slt i32 %975, 0, !mcsema_real_eip !151
  %985 = select i1 true, i1 %984, i1 %983, !mcsema_real_eip !151
  store i1 %985, i1* %SF, !mcsema_real_eip !151
  %986 = load i1, i1* %PF, !mcsema_real_eip !151
  %987 = trunc i32 %975 to i8, !mcsema_real_eip !151
  %988 = call i8 @llvm.ctpop.i8(i8 %987), !mcsema_real_eip !151
  %989 = trunc i8 %988 to i1, !mcsema_real_eip !151
  %990 = xor i1 %989, true, !mcsema_real_eip !151
  store i1 %990, i1* %PF, !mcsema_real_eip !151
  %991 = load i1, i1* %PF, !mcsema_real_eip !151
  %992 = select i1 true, i1 %991, i1 %986, !mcsema_real_eip !151
  store i1 %992, i1* %PF, !mcsema_real_eip !151
  %993 = zext i32 %975 to i64, !mcsema_real_eip !151
  store i64 %993, i64* %XAX, !mcsema_real_eip !151
  %RBP_val.223 = load i64, i64* %XBP, !mcsema_real_eip !152
  %994 = add i64 %RBP_val.223, -52, !mcsema_real_eip !152
  %995 = inttoptr i64 %994 to i64*, !mcsema_real_eip !152
  %EAX.224 = bitcast i64* %XAX to i32*, !mcsema_real_eip !152
  %EAX_val.225 = load i32, i32* %EAX.224, !mcsema_real_eip !152
  %996 = ptrtoint i64* %995 to i64, !mcsema_real_eip !152
  %997 = inttoptr i64 %996 to i32*, !mcsema_real_eip !152
  store i32 %EAX_val.225, i32* %997, !mcsema_real_eip !152
  %RBP_val.226 = load i64, i64* %XBP, !mcsema_real_eip !153
  %998 = add i64 %RBP_val.226, -48, !mcsema_real_eip !153
  %999 = inttoptr i64 %998 to i64*, !mcsema_real_eip !153
  %1000 = ptrtoint i64* %999 to i64, !mcsema_real_eip !153
  %1001 = inttoptr i64 %1000 to i32*, !mcsema_real_eip !153
  %1002 = load i32, i32* %1001, !mcsema_real_eip !153
  %1003 = zext i32 %1002 to i64, !mcsema_real_eip !153
  store i64 %1003, i64* %XAX, !mcsema_real_eip !153
  %EAX.227 = bitcast i64* %XAX to i32*, !mcsema_real_eip !154
  %EAX_val.228 = load i32, i32* %EAX.227, !mcsema_real_eip !154
  %1004 = and i32 %EAX_val.228, 65535, !mcsema_real_eip !154
  %1005 = lshr i32 %1004, 31, !mcsema_real_eip !154
  %1006 = trunc i32 %1005 to i1, !mcsema_real_eip !154
  store i1 %1006, i1* %SF, !mcsema_real_eip !154
  %1007 = icmp eq i32 %1004, 0, !mcsema_real_eip !154
  store i1 %1007, i1* %ZF, !mcsema_real_eip !154
  %1008 = trunc i32 %1004 to i8, !mcsema_real_eip !154
  %1009 = call i8 @llvm.ctpop.i8(i8 %1008), !mcsema_real_eip !154
  %1010 = trunc i8 %1009 to i1, !mcsema_real_eip !154
  %1011 = xor i1 %1010, true, !mcsema_real_eip !154
  store i1 %1011, i1* %PF, !mcsema_real_eip !154
  store i1 false, i1* %OF, !mcsema_real_eip !154
  store i1 false, i1* %CF, !mcsema_real_eip !154
  store i1 undef, i1* %AF, !mcsema_real_eip !154
  %1012 = zext i32 %1004 to i64, !mcsema_real_eip !154
  store i64 %1012, i64* %XAX, !mcsema_real_eip !154
  %RBP_val.229 = load i64, i64* %XBP, !mcsema_real_eip !155
  %1013 = add i64 %RBP_val.229, -56, !mcsema_real_eip !155
  %1014 = inttoptr i64 %1013 to i64*, !mcsema_real_eip !155
  %EAX.230 = bitcast i64* %XAX to i32*, !mcsema_real_eip !155
  %EAX_val.231 = load i32, i32* %EAX.230, !mcsema_real_eip !155
  %1015 = ptrtoint i64* %1014 to i64, !mcsema_real_eip !155
  %1016 = inttoptr i64 %1015 to i32*, !mcsema_real_eip !155
  store i32 %EAX_val.231, i32* %1016, !mcsema_real_eip !155
  %RBP_val.232 = load i64, i64* %XBP, !mcsema_real_eip !156
  %1017 = add i64 %RBP_val.232, -52, !mcsema_real_eip !156
  %1018 = inttoptr i64 %1017 to i64*, !mcsema_real_eip !156
  %1019 = ptrtoint i64* %1018 to i64, !mcsema_real_eip !156
  %1020 = inttoptr i64 %1019 to i32*, !mcsema_real_eip !156
  %1021 = load i32, i32* %1020, !mcsema_real_eip !156
  %1022 = sub i32 %1021, 79, !mcsema_real_eip !156
  %1023 = xor i32 %1022, %1021, !mcsema_real_eip !156
  %1024 = xor i32 %1023, 79, !mcsema_real_eip !156
  %1025 = and i32 %1024, 16, !mcsema_real_eip !156
  %1026 = icmp ne i32 %1025, 0, !mcsema_real_eip !156
  store i1 %1026, i1* %AF, !mcsema_real_eip !156
  %1027 = trunc i32 %1022 to i8, !mcsema_real_eip !156
  %1028 = call i8 @llvm.ctpop.i8(i8 %1027), !mcsema_real_eip !156
  %1029 = trunc i8 %1028 to i1, !mcsema_real_eip !156
  %1030 = xor i1 %1029, true, !mcsema_real_eip !156
  store i1 %1030, i1* %PF, !mcsema_real_eip !156
  %1031 = icmp eq i32 %1022, 0, !mcsema_real_eip !156
  store i1 %1031, i1* %ZF, !mcsema_real_eip !156
  %1032 = lshr i32 %1022, 31, !mcsema_real_eip !156
  %1033 = trunc i32 %1032 to i1, !mcsema_real_eip !156
  store i1 %1033, i1* %SF, !mcsema_real_eip !156
  %1034 = icmp ult i32 %1021, 79, !mcsema_real_eip !156
  store i1 %1034, i1* %CF, !mcsema_real_eip !156
  %1035 = xor i32 %1021, 79, !mcsema_real_eip !156
  %1036 = xor i32 %1021, %1022, !mcsema_real_eip !156
  %1037 = and i32 %1035, %1036, !mcsema_real_eip !156
  %1038 = lshr i32 %1037, 31, !mcsema_real_eip !156
  %1039 = trunc i32 %1038 to i1, !mcsema_real_eip !156
  store i1 %1039, i1* %OF, !mcsema_real_eip !156
  %1040 = load i1, i1* %ZF, !mcsema_real_eip !157
  %1041 = icmp eq i1 %1040, false, !mcsema_real_eip !157
  br i1 %1041, label %block_0x28c, label %block_0x274, !mcsema_real_eip !157

block_0x21e:                                      ; preds = %block_0x20a
  %RBP_val.233 = load i64, i64* %XBP, !mcsema_real_eip !158
  %1042 = add i64 %RBP_val.233, -20, !mcsema_real_eip !158
  %1043 = inttoptr i64 %1042 to i64*, !mcsema_real_eip !158
  %1044 = ptrtoint i64* %1043 to i64, !mcsema_real_eip !158
  %1045 = inttoptr i64 %1044 to i32*, !mcsema_real_eip !158
  store i32 43690, i32* %1045, !mcsema_real_eip !158
  br label %block_0x231, !mcsema_real_eip !159

block_0x274:                                      ; preds = %block_0x231
  %RBP_val.235 = load i64, i64* %XBP, !mcsema_real_eip !160
  %1046 = add i64 %RBP_val.235, -56, !mcsema_real_eip !160
  %1047 = inttoptr i64 %1046 to i64*, !mcsema_real_eip !160
  %1048 = ptrtoint i64* %1047 to i64, !mcsema_real_eip !160
  %1049 = inttoptr i64 %1048 to i32*, !mcsema_real_eip !160
  %1050 = load i32, i32* %1049, !mcsema_real_eip !160
  %1051 = zext i32 %1050 to i64, !mcsema_real_eip !160
  store i64 %1051, i64* %XAX, !mcsema_real_eip !160
  %RBP_val.236 = load i64, i64* %XBP, !mcsema_real_eip !161
  %1052 = add i64 %RBP_val.236, -20, !mcsema_real_eip !161
  %1053 = inttoptr i64 %1052 to i64*, !mcsema_real_eip !161
  %EAX.237 = bitcast i64* %XAX to i32*, !mcsema_real_eip !161
  %EAX_val.238 = load i32, i32* %EAX.237, !mcsema_real_eip !161
  %1054 = ptrtoint i64* %1053 to i64, !mcsema_real_eip !161
  %1055 = inttoptr i64 %1054 to i32*, !mcsema_real_eip !161
  %1056 = load i32, i32* %1055, !mcsema_real_eip !161
  %1057 = sub i32 %EAX_val.238, %1056, !mcsema_real_eip !161
  %1058 = xor i32 %1057, %EAX_val.238, !mcsema_real_eip !161
  %1059 = xor i32 %1058, %1056, !mcsema_real_eip !161
  %1060 = and i32 %1059, 16, !mcsema_real_eip !161
  %1061 = icmp ne i32 %1060, 0, !mcsema_real_eip !161
  store i1 %1061, i1* %AF, !mcsema_real_eip !161
  %1062 = trunc i32 %1057 to i8, !mcsema_real_eip !161
  %1063 = call i8 @llvm.ctpop.i8(i8 %1062), !mcsema_real_eip !161
  %1064 = trunc i8 %1063 to i1, !mcsema_real_eip !161
  %1065 = xor i1 %1064, true, !mcsema_real_eip !161
  store i1 %1065, i1* %PF, !mcsema_real_eip !161
  %1066 = icmp eq i32 %1057, 0, !mcsema_real_eip !161
  store i1 %1066, i1* %ZF, !mcsema_real_eip !161
  %1067 = lshr i32 %1057, 31, !mcsema_real_eip !161
  %1068 = trunc i32 %1067 to i1, !mcsema_real_eip !161
  store i1 %1068, i1* %SF, !mcsema_real_eip !161
  %1069 = icmp ult i32 %EAX_val.238, %1056, !mcsema_real_eip !161
  store i1 %1069, i1* %CF, !mcsema_real_eip !161
  %1070 = xor i32 %EAX_val.238, %1056, !mcsema_real_eip !161
  %1071 = xor i32 %EAX_val.238, %1057, !mcsema_real_eip !161
  %1072 = and i32 %1070, %1071, !mcsema_real_eip !161
  %1073 = lshr i32 %1072, 31, !mcsema_real_eip !161
  %1074 = trunc i32 %1073 to i1, !mcsema_real_eip !161
  store i1 %1074, i1* %OF, !mcsema_real_eip !161
  %1075 = load i1, i1* %ZF, !mcsema_real_eip !162
  %1076 = icmp eq i1 %1075, false, !mcsema_real_eip !162
  br i1 %1076, label %block_0x28c, label %block_0x280, !mcsema_real_eip !162

block_0x28c:                                      ; preds = %block_0x274, %block_0x231
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !163
  %1077 = add i64 %RBP_val.234, -20, !mcsema_real_eip !163
  %1078 = inttoptr i64 %1077 to i64*, !mcsema_real_eip !163
  %1079 = ptrtoint i64* %1078 to i64, !mcsema_real_eip !163
  %1080 = inttoptr i64 %1079 to i32*, !mcsema_real_eip !163
  store i32 48351, i32* %1080, !mcsema_real_eip !163
  br label %block_0x293, !mcsema_real_eip !160

block_0x293:                                      ; preds = %block_0x280, %block_0x28c
  store i64 8, i64* %XDX, !mcsema_real_eip !164
  %RBP_val.239 = load i64, i64* %XBP, !mcsema_real_eip !165
  %1081 = add i64 %RBP_val.239, -20, !mcsema_real_eip !165
  %1082 = inttoptr i64 %1081 to i64*, !mcsema_real_eip !165
  %1083 = ptrtoint i64* %1082 to i64, !mcsema_real_eip !165
  %1084 = inttoptr i64 %1083 to i32*, !mcsema_real_eip !165
  %1085 = load i32, i32* %1084, !mcsema_real_eip !165
  %1086 = zext i32 %1085 to i64, !mcsema_real_eip !165
  store i64 %1086, i64* %XDI, !mcsema_real_eip !165
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !166
  %1087 = add i64 %RBP_val.240, -16, !mcsema_real_eip !166
  %1088 = inttoptr i64 %1087 to i64*, !mcsema_real_eip !166
  %1089 = load i64, i64* %1088, !mcsema_real_eip !166
  store i64 %1089, i64* %XAX, !mcsema_real_eip !166
  %RAX_val.241 = load i64, i64* %XAX, !mcsema_real_eip !167
  %1090 = add i64 20, %RAX_val.241, !mcsema_real_eip !167
  %1091 = xor i64 %1090, %RAX_val.241, !mcsema_real_eip !167
  %1092 = xor i64 %1091, 20, !mcsema_real_eip !167
  %1093 = and i64 %1092, 16, !mcsema_real_eip !167
  %1094 = icmp ne i64 %1093, 0, !mcsema_real_eip !167
  store i1 %1094, i1* %AF, !mcsema_real_eip !167
  %1095 = lshr i64 %1090, 63, !mcsema_real_eip !167
  %1096 = trunc i64 %1095 to i1, !mcsema_real_eip !167
  store i1 %1096, i1* %SF, !mcsema_real_eip !167
  %1097 = icmp eq i64 %1090, 0, !mcsema_real_eip !167
  store i1 %1097, i1* %ZF, !mcsema_real_eip !167
  %1098 = xor i64 %RAX_val.241, 20, !mcsema_real_eip !167
  %1099 = xor i64 %1098, -1, !mcsema_real_eip !167
  %1100 = xor i64 %RAX_val.241, %1090, !mcsema_real_eip !167
  %1101 = and i64 %1099, %1100, !mcsema_real_eip !167
  %1102 = lshr i64 %1101, 63, !mcsema_real_eip !167
  %1103 = and i64 %1102, 1, !mcsema_real_eip !167
  %1104 = trunc i64 %1103 to i1, !mcsema_real_eip !167
  store i1 %1104, i1* %OF, !mcsema_real_eip !167
  %1105 = trunc i64 %1090 to i8, !mcsema_real_eip !167
  %1106 = call i8 @llvm.ctpop.i8(i8 %1105), !mcsema_real_eip !167
  %1107 = trunc i8 %1106 to i1, !mcsema_real_eip !167
  %1108 = xor i1 %1107, true, !mcsema_real_eip !167
  store i1 %1108, i1* %PF, !mcsema_real_eip !167
  %1109 = icmp ult i64 %1090, %RAX_val.241, !mcsema_real_eip !167
  store i1 %1109, i1* %CF, !mcsema_real_eip !167
  store i64 %1090, i64* %XAX, !mcsema_real_eip !167
  %RAX_val.242 = load i64, i64* %XAX, !mcsema_real_eip !168
  store i64 %RAX_val.242, i64* %XSI, !mcsema_real_eip !168
  %RDI_val.243 = load i64, i64* %XDI, !mcsema_real_eip !169
  %RSI_val.244 = load i64, i64* %XSI, !mcsema_real_eip !169
  %RDX_val.245 = load i64, i64* %XDX, !mcsema_real_eip !169
  %RSP_val.246 = load i64, i64* %XSP, !mcsema_real_eip !169
  %1110 = sub i64 %RSP_val.246, 8, !mcsema_real_eip !169
  %1111 = inttoptr i64 %1110 to i64*, !mcsema_real_eip !169
  store i64 -2415393069852865332, i64* %1111, !mcsema_real_eip !169
  store i64 %1110, i64* %XSP, !mcsema_real_eip !169
  %1112 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.243, i64 %RSI_val.244, i64 %RDX_val.245), !mcsema_real_eip !169
  store i64 %1112, i64* %XAX, !mcsema_real_eip !169
  %RBP_val.247 = load i64, i64* %XBP, !mcsema_real_eip !170
  %1113 = add i64 %RBP_val.247, -60, !mcsema_real_eip !170
  %1114 = inttoptr i64 %1113 to i64*, !mcsema_real_eip !170
  %EAX.248 = bitcast i64* %XAX to i32*, !mcsema_real_eip !170
  %EAX_val.249 = load i32, i32* %EAX.248, !mcsema_real_eip !170
  %1115 = ptrtoint i64* %1114 to i64, !mcsema_real_eip !170
  %1116 = inttoptr i64 %1115 to i32*, !mcsema_real_eip !170
  store i32 %EAX_val.249, i32* %1116, !mcsema_real_eip !170
  %RBP_val.250 = load i64, i64* %XBP, !mcsema_real_eip !171
  %1117 = add i64 %RBP_val.250, -60, !mcsema_real_eip !171
  %1118 = inttoptr i64 %1117 to i64*, !mcsema_real_eip !171
  %1119 = ptrtoint i64* %1118 to i64, !mcsema_real_eip !171
  %1120 = inttoptr i64 %1119 to i32*, !mcsema_real_eip !171
  %1121 = load i32, i32* %1120, !mcsema_real_eip !171
  %1122 = zext i32 %1121 to i64, !mcsema_real_eip !171
  store i64 %1122, i64* %XAX, !mcsema_real_eip !171
  %EAX.251 = bitcast i64* %XAX to i32*, !mcsema_real_eip !172
  %EAX_val.252 = load i32, i32* %EAX.251, !mcsema_real_eip !172
  %1123 = sub i32 %EAX_val.252, 3, !mcsema_real_eip !172
  %1124 = xor i32 %1123, %EAX_val.252, !mcsema_real_eip !172
  %1125 = xor i32 %1124, 3, !mcsema_real_eip !172
  %1126 = and i32 %1125, 16, !mcsema_real_eip !172
  %1127 = icmp ne i32 %1126, 0, !mcsema_real_eip !172
  store i1 %1127, i1* %AF, !mcsema_real_eip !172
  %1128 = trunc i32 %1123 to i8, !mcsema_real_eip !172
  %1129 = call i8 @llvm.ctpop.i8(i8 %1128), !mcsema_real_eip !172
  %1130 = trunc i8 %1129 to i1, !mcsema_real_eip !172
  %1131 = xor i1 %1130, true, !mcsema_real_eip !172
  store i1 %1131, i1* %PF, !mcsema_real_eip !172
  %1132 = icmp eq i32 %1123, 0, !mcsema_real_eip !172
  store i1 %1132, i1* %ZF, !mcsema_real_eip !172
  %1133 = lshr i32 %1123, 31, !mcsema_real_eip !172
  %1134 = trunc i32 %1133 to i1, !mcsema_real_eip !172
  store i1 %1134, i1* %SF, !mcsema_real_eip !172
  %1135 = icmp ult i32 %EAX_val.252, 3, !mcsema_real_eip !172
  store i1 %1135, i1* %CF, !mcsema_real_eip !172
  %1136 = xor i32 %EAX_val.252, 3, !mcsema_real_eip !172
  %1137 = xor i32 %EAX_val.252, %1123, !mcsema_real_eip !172
  %1138 = and i32 %1136, %1137, !mcsema_real_eip !172
  %1139 = lshr i32 %1138, 31, !mcsema_real_eip !172
  %1140 = trunc i32 %1139 to i1, !mcsema_real_eip !172
  store i1 %1140, i1* %OF, !mcsema_real_eip !172
  %1141 = zext i32 %1123 to i64, !mcsema_real_eip !172
  store i64 %1141, i64* %XAX, !mcsema_real_eip !172
  %RBP_val.253 = load i64, i64* %XBP, !mcsema_real_eip !173
  %1142 = add i64 %RBP_val.253, -60, !mcsema_real_eip !173
  %1143 = inttoptr i64 %1142 to i64*, !mcsema_real_eip !173
  %EAX.254 = bitcast i64* %XAX to i32*, !mcsema_real_eip !173
  %EAX_val.255 = load i32, i32* %EAX.254, !mcsema_real_eip !173
  %1144 = ptrtoint i64* %1143 to i64, !mcsema_real_eip !173
  %1145 = inttoptr i64 %1144 to i32*, !mcsema_real_eip !173
  store i32 %EAX_val.255, i32* %1145, !mcsema_real_eip !173
  %RBP_val.256 = load i64, i64* %XBP, !mcsema_real_eip !174
  %1146 = add i64 %RBP_val.256, -60, !mcsema_real_eip !174
  %1147 = inttoptr i64 %1146 to i64*, !mcsema_real_eip !174
  %1148 = ptrtoint i64* %1147 to i64, !mcsema_real_eip !174
  %1149 = inttoptr i64 %1148 to i32*, !mcsema_real_eip !174
  %1150 = load i32, i32* %1149, !mcsema_real_eip !174
  %1151 = zext i32 %1150 to i64, !mcsema_real_eip !174
  store i64 %1151, i64* %XAX, !mcsema_real_eip !174
  %EAX.257 = bitcast i64* %XAX to i32*, !mcsema_real_eip !175
  %EAX_val.258 = load i32, i32* %EAX.257, !mcsema_real_eip !175
  %1152 = and i32 %EAX_val.258, 7, !mcsema_real_eip !175
  %1153 = lshr i32 %1152, 31, !mcsema_real_eip !175
  %1154 = trunc i32 %1153 to i1, !mcsema_real_eip !175
  store i1 %1154, i1* %SF, !mcsema_real_eip !175
  %1155 = icmp eq i32 %1152, 0, !mcsema_real_eip !175
  store i1 %1155, i1* %ZF, !mcsema_real_eip !175
  %1156 = trunc i32 %1152 to i8, !mcsema_real_eip !175
  %1157 = call i8 @llvm.ctpop.i8(i8 %1156), !mcsema_real_eip !175
  %1158 = trunc i8 %1157 to i1, !mcsema_real_eip !175
  %1159 = xor i1 %1158, true, !mcsema_real_eip !175
  store i1 %1159, i1* %PF, !mcsema_real_eip !175
  store i1 false, i1* %OF, !mcsema_real_eip !175
  store i1 false, i1* %CF, !mcsema_real_eip !175
  store i1 undef, i1* %AF, !mcsema_real_eip !175
  %1160 = zext i32 %1152 to i64, !mcsema_real_eip !175
  store i64 %1160, i64* %XAX, !mcsema_real_eip !175
  %EAX.259 = bitcast i64* %XAX to i32*, !mcsema_real_eip !176
  %EAX_val.260 = load i32, i32* %EAX.259, !mcsema_real_eip !176
  %1161 = sub i32 %EAX_val.260, 0, !mcsema_real_eip !176
  %1162 = xor i32 %1161, %EAX_val.260, !mcsema_real_eip !176
  %1163 = xor i32 %1162, 0, !mcsema_real_eip !176
  %1164 = and i32 %1163, 16, !mcsema_real_eip !176
  %1165 = icmp ne i32 %1164, 0, !mcsema_real_eip !176
  store i1 %1165, i1* %AF, !mcsema_real_eip !176
  %1166 = trunc i32 %1161 to i8, !mcsema_real_eip !176
  %1167 = call i8 @llvm.ctpop.i8(i8 %1166), !mcsema_real_eip !176
  %1168 = trunc i8 %1167 to i1, !mcsema_real_eip !176
  %1169 = xor i1 %1168, true, !mcsema_real_eip !176
  store i1 %1169, i1* %PF, !mcsema_real_eip !176
  %1170 = icmp eq i32 %1161, 0, !mcsema_real_eip !176
  store i1 %1170, i1* %ZF, !mcsema_real_eip !176
  %1171 = lshr i32 %1161, 31, !mcsema_real_eip !176
  %1172 = trunc i32 %1171 to i1, !mcsema_real_eip !176
  store i1 %1172, i1* %SF, !mcsema_real_eip !176
  %1173 = icmp ult i32 %EAX_val.260, 0, !mcsema_real_eip !176
  store i1 %1173, i1* %CF, !mcsema_real_eip !176
  %1174 = xor i32 %EAX_val.260, 0, !mcsema_real_eip !176
  %1175 = xor i32 %EAX_val.260, %1161, !mcsema_real_eip !176
  %1176 = and i32 %1174, %1175, !mcsema_real_eip !176
  %1177 = lshr i32 %1176, 31, !mcsema_real_eip !176
  %1178 = trunc i32 %1177 to i1, !mcsema_real_eip !176
  store i1 %1178, i1* %OF, !mcsema_real_eip !176
  %1179 = load i1, i1* %ZF, !mcsema_real_eip !177
  %1180 = icmp eq i1 %1179, true, !mcsema_real_eip !177
  br i1 %1180, label %block_0x2d2, label %block_0x2c6, !mcsema_real_eip !177

block_0x280:                                      ; preds = %block_0x274
  %RBP_val.261 = load i64, i64* %XBP, !mcsema_real_eip !178
  %1181 = add i64 %RBP_val.261, -20, !mcsema_real_eip !178
  %1182 = inttoptr i64 %1181 to i64*, !mcsema_real_eip !178
  %1183 = ptrtoint i64* %1182 to i64, !mcsema_real_eip !178
  %1184 = inttoptr i64 %1183 to i32*, !mcsema_real_eip !178
  store i32 0, i32* %1184, !mcsema_real_eip !178
  br label %block_0x293, !mcsema_real_eip !179

block_0x2c6:                                      ; preds = %block_0x293
  %RBP_val.269 = load i64, i64* %XBP, !mcsema_real_eip !180
  %1185 = add i64 %RBP_val.269, -4, !mcsema_real_eip !180
  %1186 = inttoptr i64 %1185 to i64*, !mcsema_real_eip !180
  %1187 = ptrtoint i64* %1186 to i64, !mcsema_real_eip !180
  %1188 = inttoptr i64 %1187 to i32*, !mcsema_real_eip !180
  store i32 -21, i32* %1188, !mcsema_real_eip !180
  br label %block_0x417, !mcsema_real_eip !181

block_0x2d2:                                      ; preds = %block_0x293
  %RBP_val.262 = load i64, i64* %XBP, !mcsema_real_eip !182
  %1189 = add i64 %RBP_val.262, -60, !mcsema_real_eip !182
  %1190 = inttoptr i64 %1189 to i64*, !mcsema_real_eip !182
  %1191 = ptrtoint i64* %1190 to i64, !mcsema_real_eip !182
  %1192 = inttoptr i64 %1191 to i32*, !mcsema_real_eip !182
  %1193 = load i32, i32* %1192, !mcsema_real_eip !182
  %1194 = zext i32 %1193 to i64, !mcsema_real_eip !182
  store i64 %1194, i64* %XAX, !mcsema_real_eip !182
  %EAX.263 = bitcast i64* %XAX to i32*, !mcsema_real_eip !183
  %EAX_val.264 = load i32, i32* %EAX.263, !mcsema_real_eip !183
  %1195 = sub i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  %1196 = xor i32 %1195, %EAX_val.264, !mcsema_real_eip !183
  %1197 = xor i32 %1196, -2147483648, !mcsema_real_eip !183
  %1198 = and i32 %1197, 16, !mcsema_real_eip !183
  %1199 = icmp ne i32 %1198, 0, !mcsema_real_eip !183
  store i1 %1199, i1* %AF, !mcsema_real_eip !183
  %1200 = trunc i32 %1195 to i8, !mcsema_real_eip !183
  %1201 = call i8 @llvm.ctpop.i8(i8 %1200), !mcsema_real_eip !183
  %1202 = trunc i8 %1201 to i1, !mcsema_real_eip !183
  %1203 = xor i1 %1202, true, !mcsema_real_eip !183
  store i1 %1203, i1* %PF, !mcsema_real_eip !183
  %1204 = icmp eq i32 %1195, 0, !mcsema_real_eip !183
  store i1 %1204, i1* %ZF, !mcsema_real_eip !183
  %1205 = lshr i32 %1195, 31, !mcsema_real_eip !183
  %1206 = trunc i32 %1205 to i1, !mcsema_real_eip !183
  store i1 %1206, i1* %SF, !mcsema_real_eip !183
  %1207 = icmp ult i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  store i1 %1207, i1* %CF, !mcsema_real_eip !183
  %1208 = xor i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  %1209 = xor i32 %EAX_val.264, %1195, !mcsema_real_eip !183
  %1210 = and i32 %1208, %1209, !mcsema_real_eip !183
  %1211 = lshr i32 %1210, 31, !mcsema_real_eip !183
  %1212 = trunc i32 %1211 to i1, !mcsema_real_eip !183
  store i1 %1212, i1* %OF, !mcsema_real_eip !183
  %1213 = zext i32 %1195 to i64, !mcsema_real_eip !183
  store i64 %1213, i64* %XAX, !mcsema_real_eip !183
  %RBP_val.265 = load i64, i64* %XBP, !mcsema_real_eip !184
  %1214 = add i64 %RBP_val.265, -60, !mcsema_real_eip !184
  %1215 = inttoptr i64 %1214 to i64*, !mcsema_real_eip !184
  %EAX.266 = bitcast i64* %XAX to i32*, !mcsema_real_eip !184
  %EAX_val.267 = load i32, i32* %EAX.266, !mcsema_real_eip !184
  %1216 = ptrtoint i64* %1215 to i64, !mcsema_real_eip !184
  %1217 = inttoptr i64 %1216 to i32*, !mcsema_real_eip !184
  store i32 %EAX_val.267, i32* %1217, !mcsema_real_eip !184
  %RBP_val.268 = load i64, i64* %XBP, !mcsema_real_eip !185
  %1218 = add i64 %RBP_val.268, -60, !mcsema_real_eip !185
  %1219 = inttoptr i64 %1218 to i64*, !mcsema_real_eip !185
  %1220 = ptrtoint i64* %1219 to i64, !mcsema_real_eip !185
  %1221 = inttoptr i64 %1220 to i32*, !mcsema_real_eip !185
  %1222 = load i32, i32* %1221, !mcsema_real_eip !185
  %1223 = sub i32 %1222, 268435455, !mcsema_real_eip !185
  %1224 = xor i32 %1223, %1222, !mcsema_real_eip !185
  %1225 = xor i32 %1224, 268435455, !mcsema_real_eip !185
  %1226 = and i32 %1225, 16, !mcsema_real_eip !185
  %1227 = icmp ne i32 %1226, 0, !mcsema_real_eip !185
  store i1 %1227, i1* %AF, !mcsema_real_eip !185
  %1228 = trunc i32 %1223 to i8, !mcsema_real_eip !185
  %1229 = call i8 @llvm.ctpop.i8(i8 %1228), !mcsema_real_eip !185
  %1230 = trunc i8 %1229 to i1, !mcsema_real_eip !185
  %1231 = xor i1 %1230, true, !mcsema_real_eip !185
  store i1 %1231, i1* %PF, !mcsema_real_eip !185
  %1232 = icmp eq i32 %1223, 0, !mcsema_real_eip !185
  store i1 %1232, i1* %ZF, !mcsema_real_eip !185
  %1233 = lshr i32 %1223, 31, !mcsema_real_eip !185
  %1234 = trunc i32 %1233 to i1, !mcsema_real_eip !185
  store i1 %1234, i1* %SF, !mcsema_real_eip !185
  %1235 = icmp ult i32 %1222, 268435455, !mcsema_real_eip !185
  store i1 %1235, i1* %CF, !mcsema_real_eip !185
  %1236 = xor i32 %1222, 268435455, !mcsema_real_eip !185
  %1237 = xor i32 %1222, %1223, !mcsema_real_eip !185
  %1238 = and i32 %1236, %1237, !mcsema_real_eip !185
  %1239 = lshr i32 %1238, 31, !mcsema_real_eip !185
  %1240 = trunc i32 %1239 to i1, !mcsema_real_eip !185
  store i1 %1240, i1* %OF, !mcsema_real_eip !185
  %1241 = load i1, i1* %ZF, !mcsema_real_eip !186
  %1242 = icmp eq i1 %1241, true, !mcsema_real_eip !186
  %1243 = load i1, i1* %CF, !mcsema_real_eip !186
  %1244 = icmp eq i1 %1243, true, !mcsema_real_eip !186
  %1245 = or i1 %1244, %1242, !mcsema_real_eip !186
  br i1 %1245, label %block_0x2f6, label %block_0x2ea, !mcsema_real_eip !186

block_0x2ea:                                      ; preds = %block_0x2d2
  %RBP_val.309 = load i64, i64* %XBP, !mcsema_real_eip !187
  %1246 = add i64 %RBP_val.309, -4, !mcsema_real_eip !187
  %1247 = inttoptr i64 %1246 to i64*, !mcsema_real_eip !187
  %1248 = ptrtoint i64* %1247 to i64, !mcsema_real_eip !187
  %1249 = inttoptr i64 %1248 to i32*, !mcsema_real_eip !187
  store i32 -22, i32* %1249, !mcsema_real_eip !187
  br label %block_0x417, !mcsema_real_eip !188

block_0x2f6:                                      ; preds = %block_0x2d2
  store i64 10000, i64* %XAX, !mcsema_real_eip !189
  %RBP_val.270 = load i64, i64* %XBP, !mcsema_real_eip !190
  %1250 = add i64 %RBP_val.270, -60, !mcsema_real_eip !190
  %1251 = inttoptr i64 %1250 to i64*, !mcsema_real_eip !190
  %1252 = ptrtoint i64* %1251 to i64, !mcsema_real_eip !190
  %1253 = inttoptr i64 %1252 to i32*, !mcsema_real_eip !190
  %1254 = load i32, i32* %1253, !mcsema_real_eip !190
  %1255 = zext i32 %1254 to i64, !mcsema_real_eip !190
  store i64 %1255, i64* %XCX, !mcsema_real_eip !190
  %ECX.271 = bitcast i64* %XCX to i32*, !mcsema_real_eip !191
  %ECX_val.272 = load i32, i32* %ECX.271, !mcsema_real_eip !191
  %1256 = xor i32 %ECX_val.272, 13631488, !mcsema_real_eip !191
  store i1 false, i1* %CF, !mcsema_real_eip !191
  store i1 false, i1* %OF, !mcsema_real_eip !191
  %1257 = lshr i32 %1256, 31, !mcsema_real_eip !191
  %1258 = trunc i32 %1257 to i1, !mcsema_real_eip !191
  store i1 %1258, i1* %SF, !mcsema_real_eip !191
  %1259 = icmp eq i32 %1256, 0, !mcsema_real_eip !191
  store i1 %1259, i1* %ZF, !mcsema_real_eip !191
  %1260 = trunc i32 %1256 to i8, !mcsema_real_eip !191
  %1261 = call i8 @llvm.ctpop.i8(i8 %1260), !mcsema_real_eip !191
  %1262 = trunc i8 %1261 to i1, !mcsema_real_eip !191
  %1263 = xor i1 %1262, true, !mcsema_real_eip !191
  store i1 %1263, i1* %PF, !mcsema_real_eip !191
  store i1 undef, i1* %AF, !mcsema_real_eip !191
  %1264 = zext i32 %1256 to i64, !mcsema_real_eip !191
  store i64 %1264, i64* %XCX, !mcsema_real_eip !191
  %RBP_val.273 = load i64, i64* %XBP, !mcsema_real_eip !192
  %1265 = add i64 %RBP_val.273, -60, !mcsema_real_eip !192
  %1266 = inttoptr i64 %1265 to i64*, !mcsema_real_eip !192
  %ECX.274 = bitcast i64* %XCX to i32*, !mcsema_real_eip !192
  %ECX_val.275 = load i32, i32* %ECX.274, !mcsema_real_eip !192
  %1267 = ptrtoint i64* %1266 to i64, !mcsema_real_eip !192
  %1268 = inttoptr i64 %1267 to i32*, !mcsema_real_eip !192
  store i32 %ECX_val.275, i32* %1268, !mcsema_real_eip !192
  %RBP_val.276 = load i64, i64* %XBP, !mcsema_real_eip !193
  %1269 = add i64 %RBP_val.276, -60, !mcsema_real_eip !193
  %1270 = inttoptr i64 %1269 to i64*, !mcsema_real_eip !193
  %1271 = ptrtoint i64* %1270 to i64, !mcsema_real_eip !193
  %1272 = inttoptr i64 %1271 to i32*, !mcsema_real_eip !193
  %1273 = load i32, i32* %1272, !mcsema_real_eip !193
  %1274 = zext i32 %1273 to i64, !mcsema_real_eip !193
  store i64 %1274, i64* %XCX, !mcsema_real_eip !193
  %ECX.277 = bitcast i64* %XCX to i32*, !mcsema_real_eip !194
  %ECX_val.278 = load i32, i32* %ECX.277, !mcsema_real_eip !194
  %1275 = lshr i32 %ECX_val.278, 3, !mcsema_real_eip !194
  %1276 = and i32 %1275, 1, !mcsema_real_eip !194
  %1277 = icmp ne i32 %1276, 0, !mcsema_real_eip !194
  %1278 = load i1, i1* %CF, !mcsema_real_eip !194
  %1279 = select i1 true, i1 %1277, i1 %1278, !mcsema_real_eip !194
  %1280 = lshr i32 %1275, 1, !mcsema_real_eip !194
  %1281 = load i1, i1* %OF, !mcsema_real_eip !194
  %1282 = and i32 %ECX_val.278, -2147483648, !mcsema_real_eip !194
  %1283 = icmp ne i32 %1282, 0, !mcsema_real_eip !194
  %1284 = select i1 false, i1 %1283, i1 %1281, !mcsema_real_eip !194
  store i1 %1284, i1* %OF, !mcsema_real_eip !194
  store i1 %1279, i1* %CF, !mcsema_real_eip !194
  %1285 = load i1, i1* %ZF, !mcsema_real_eip !194
  %1286 = icmp eq i32 %1280, 0, !mcsema_real_eip !194
  %1287 = select i1 true, i1 %1286, i1 %1285, !mcsema_real_eip !194
  store i1 %1287, i1* %ZF, !mcsema_real_eip !194
  %1288 = load i1, i1* %SF, !mcsema_real_eip !194
  %1289 = icmp slt i32 %1280, 0, !mcsema_real_eip !194
  %1290 = select i1 true, i1 %1289, i1 %1288, !mcsema_real_eip !194
  store i1 %1290, i1* %SF, !mcsema_real_eip !194
  %1291 = load i1, i1* %PF, !mcsema_real_eip !194
  %1292 = trunc i32 %1280 to i8, !mcsema_real_eip !194
  %1293 = call i8 @llvm.ctpop.i8(i8 %1292), !mcsema_real_eip !194
  %1294 = trunc i8 %1293 to i1, !mcsema_real_eip !194
  %1295 = xor i1 %1294, true, !mcsema_real_eip !194
  store i1 %1295, i1* %PF, !mcsema_real_eip !194
  %1296 = load i1, i1* %PF, !mcsema_real_eip !194
  %1297 = select i1 true, i1 %1296, i1 %1291, !mcsema_real_eip !194
  store i1 %1297, i1* %PF, !mcsema_real_eip !194
  %1298 = zext i32 %1280 to i64, !mcsema_real_eip !194
  store i64 %1298, i64* %XCX, !mcsema_real_eip !194
  %RBP_val.279 = load i64, i64* %XBP, !mcsema_real_eip !195
  %1299 = add i64 %RBP_val.279, -60, !mcsema_real_eip !195
  %1300 = inttoptr i64 %1299 to i64*, !mcsema_real_eip !195
  %ECX.280 = bitcast i64* %XCX to i32*, !mcsema_real_eip !195
  %ECX_val.281 = load i32, i32* %ECX.280, !mcsema_real_eip !195
  %1301 = ptrtoint i64* %1300 to i64, !mcsema_real_eip !195
  %1302 = inttoptr i64 %1301 to i32*, !mcsema_real_eip !195
  store i32 %ECX_val.281, i32* %1302, !mcsema_real_eip !195
  %RBP_val.282 = load i64, i64* %XBP, !mcsema_real_eip !196
  %1303 = add i64 %RBP_val.282, -60, !mcsema_real_eip !196
  %1304 = inttoptr i64 %1303 to i64*, !mcsema_real_eip !196
  %1305 = ptrtoint i64* %1304 to i64, !mcsema_real_eip !196
  %1306 = inttoptr i64 %1305 to i32*, !mcsema_real_eip !196
  %1307 = load i32, i32* %1306, !mcsema_real_eip !196
  %1308 = zext i32 %1307 to i64, !mcsema_real_eip !196
  store i64 %1308, i64* %XCX, !mcsema_real_eip !196
  %ECX.283 = bitcast i64* %XCX to i32*, !mcsema_real_eip !197
  %ECX_val.284 = load i32, i32* %ECX.283, !mcsema_real_eip !197
  %1309 = sub i32 %ECX_val.284, 226, !mcsema_real_eip !197
  %1310 = xor i32 %1309, %ECX_val.284, !mcsema_real_eip !197
  %1311 = xor i32 %1310, 226, !mcsema_real_eip !197
  %1312 = and i32 %1311, 16, !mcsema_real_eip !197
  %1313 = icmp ne i32 %1312, 0, !mcsema_real_eip !197
  store i1 %1313, i1* %AF, !mcsema_real_eip !197
  %1314 = trunc i32 %1309 to i8, !mcsema_real_eip !197
  %1315 = call i8 @llvm.ctpop.i8(i8 %1314), !mcsema_real_eip !197
  %1316 = trunc i8 %1315 to i1, !mcsema_real_eip !197
  %1317 = xor i1 %1316, true, !mcsema_real_eip !197
  store i1 %1317, i1* %PF, !mcsema_real_eip !197
  %1318 = icmp eq i32 %1309, 0, !mcsema_real_eip !197
  store i1 %1318, i1* %ZF, !mcsema_real_eip !197
  %1319 = lshr i32 %1309, 31, !mcsema_real_eip !197
  %1320 = trunc i32 %1319 to i1, !mcsema_real_eip !197
  store i1 %1320, i1* %SF, !mcsema_real_eip !197
  %1321 = icmp ult i32 %ECX_val.284, 226, !mcsema_real_eip !197
  store i1 %1321, i1* %CF, !mcsema_real_eip !197
  %1322 = xor i32 %ECX_val.284, 226, !mcsema_real_eip !197
  %1323 = xor i32 %ECX_val.284, %1309, !mcsema_real_eip !197
  %1324 = and i32 %1322, %1323, !mcsema_real_eip !197
  %1325 = lshr i32 %1324, 31, !mcsema_real_eip !197
  %1326 = trunc i32 %1325 to i1, !mcsema_real_eip !197
  store i1 %1326, i1* %OF, !mcsema_real_eip !197
  %1327 = zext i32 %1309 to i64, !mcsema_real_eip !197
  store i64 %1327, i64* %XCX, !mcsema_real_eip !197
  %RBP_val.285 = load i64, i64* %XBP, !mcsema_real_eip !198
  %1328 = add i64 %RBP_val.285, -60, !mcsema_real_eip !198
  %1329 = inttoptr i64 %1328 to i64*, !mcsema_real_eip !198
  %ECX.286 = bitcast i64* %XCX to i32*, !mcsema_real_eip !198
  %ECX_val.287 = load i32, i32* %ECX.286, !mcsema_real_eip !198
  %1330 = ptrtoint i64* %1329 to i64, !mcsema_real_eip !198
  %1331 = inttoptr i64 %1330 to i32*, !mcsema_real_eip !198
  store i32 %ECX_val.287, i32* %1331, !mcsema_real_eip !198
  %RBP_val.288 = load i64, i64* %XBP, !mcsema_real_eip !199
  %1332 = add i64 %RBP_val.288, -60, !mcsema_real_eip !199
  %1333 = inttoptr i64 %1332 to i64*, !mcsema_real_eip !199
  %1334 = ptrtoint i64* %1333 to i64, !mcsema_real_eip !199
  %1335 = inttoptr i64 %1334 to i32*, !mcsema_real_eip !199
  %1336 = load i32, i32* %1335, !mcsema_real_eip !199
  %1337 = zext i32 %1336 to i64, !mcsema_real_eip !199
  store i64 %1337, i64* %XCX, !mcsema_real_eip !199
  %RBP_val.289 = load i64, i64* %XBP, !mcsema_real_eip !200
  %1338 = add i64 %RBP_val.289, -68, !mcsema_real_eip !200
  %1339 = inttoptr i64 %1338 to i64*, !mcsema_real_eip !200
  %EAX.290 = bitcast i64* %XAX to i32*, !mcsema_real_eip !200
  %EAX_val.291 = load i32, i32* %EAX.290, !mcsema_real_eip !200
  %1340 = ptrtoint i64* %1339 to i64, !mcsema_real_eip !200
  %1341 = inttoptr i64 %1340 to i32*, !mcsema_real_eip !200
  store i32 %EAX_val.291, i32* %1341, !mcsema_real_eip !200
  %ECX.292 = bitcast i64* %XCX to i32*, !mcsema_real_eip !201
  %ECX_val.293 = load i32, i32* %ECX.292, !mcsema_real_eip !201
  %1342 = zext i32 %ECX_val.293 to i64, !mcsema_real_eip !201
  store i64 %1342, i64* %XAX, !mcsema_real_eip !201
  %EDX.294 = bitcast i64* %XDX to i32*, !mcsema_real_eip !202
  %EDX_val.295 = load i32, i32* %EDX.294, !mcsema_real_eip !202
  %EDX.296 = bitcast i64* %XDX to i32*, !mcsema_real_eip !202
  %EDX_val.297 = load i32, i32* %EDX.296, !mcsema_real_eip !202
  %1343 = xor i32 %EDX_val.295, %EDX_val.297, !mcsema_real_eip !202
  store i1 false, i1* %CF, !mcsema_real_eip !202
  store i1 false, i1* %OF, !mcsema_real_eip !202
  %1344 = lshr i32 %1343, 31, !mcsema_real_eip !202
  %1345 = trunc i32 %1344 to i1, !mcsema_real_eip !202
  store i1 %1345, i1* %SF, !mcsema_real_eip !202
  %1346 = icmp eq i32 %1343, 0, !mcsema_real_eip !202
  store i1 %1346, i1* %ZF, !mcsema_real_eip !202
  %1347 = trunc i32 %1343 to i8, !mcsema_real_eip !202
  %1348 = call i8 @llvm.ctpop.i8(i8 %1347), !mcsema_real_eip !202
  %1349 = trunc i8 %1348 to i1, !mcsema_real_eip !202
  %1350 = xor i1 %1349, true, !mcsema_real_eip !202
  store i1 %1350, i1* %PF, !mcsema_real_eip !202
  store i1 undef, i1* %AF, !mcsema_real_eip !202
  %1351 = zext i32 %1343 to i64, !mcsema_real_eip !202
  store i64 %1351, i64* %XDX, !mcsema_real_eip !202
  %RBP_val.298 = load i64, i64* %XBP, !mcsema_real_eip !203
  %1352 = add i64 %RBP_val.298, -68, !mcsema_real_eip !203
  %1353 = inttoptr i64 %1352 to i64*, !mcsema_real_eip !203
  %1354 = ptrtoint i64* %1353 to i64, !mcsema_real_eip !203
  %1355 = inttoptr i64 %1354 to i32*, !mcsema_real_eip !203
  %1356 = load i32, i32* %1355, !mcsema_real_eip !203
  %1357 = zext i32 %1356 to i64, !mcsema_real_eip !203
  store i64 %1357, i64* %XCX, !mcsema_real_eip !203
  %ECX.299 = bitcast i64* %XCX to i32*, !mcsema_real_eip !204
  %ECX_val.300 = load i32, i32* %ECX.299, !mcsema_real_eip !204
  %EAX.301 = bitcast i64* %XAX to i32*, !mcsema_real_eip !204
  %EAX_val.302 = load i32, i32* %EAX.301, !mcsema_real_eip !204
  %EDX.303 = bitcast i64* %XDX to i32*, !mcsema_real_eip !204
  %EDX_val.304 = load i32, i32* %EDX.303, !mcsema_real_eip !204
  %1358 = zext i32 %EDX_val.304 to i64, !mcsema_real_eip !204
  %1359 = shl i64 %1358, 32, !mcsema_real_eip !204
  %1360 = sext i32 %EAX_val.302 to i64, !mcsema_real_eip !204
  %1361 = or i64 %1359, %1360, !mcsema_real_eip !204
  %1362 = zext i32 %ECX_val.300 to i64, !mcsema_real_eip !204
  %1363 = udiv i64 %1361, %1362, !mcsema_real_eip !204
  %1364 = urem i64 %1361, %1362, !mcsema_real_eip !204
  %1365 = trunc i64 %1364 to i32, !mcsema_real_eip !204
  %1366 = trunc i64 %1363 to i32, !mcsema_real_eip !204
  %1367 = zext i32 %1365 to i64, !mcsema_real_eip !204
  store i64 %1367, i64* %XDX, !mcsema_real_eip !204
  %1368 = zext i32 %1366 to i64, !mcsema_real_eip !204
  store i64 %1368, i64* %XAX, !mcsema_real_eip !204
  %RBP_val.305 = load i64, i64* %XBP, !mcsema_real_eip !205
  %1369 = add i64 %RBP_val.305, -60, !mcsema_real_eip !205
  %1370 = inttoptr i64 %1369 to i64*, !mcsema_real_eip !205
  %EAX.306 = bitcast i64* %XAX to i32*, !mcsema_real_eip !205
  %EAX_val.307 = load i32, i32* %EAX.306, !mcsema_real_eip !205
  %1371 = ptrtoint i64* %1370 to i64, !mcsema_real_eip !205
  %1372 = inttoptr i64 %1371 to i32*, !mcsema_real_eip !205
  store i32 %EAX_val.307, i32* %1372, !mcsema_real_eip !205
  %RBP_val.308 = load i64, i64* %XBP, !mcsema_real_eip !206
  %1373 = add i64 %RBP_val.308, -60, !mcsema_real_eip !206
  %1374 = inttoptr i64 %1373 to i64*, !mcsema_real_eip !206
  %1375 = ptrtoint i64* %1374 to i64, !mcsema_real_eip !206
  %1376 = inttoptr i64 %1375 to i32*, !mcsema_real_eip !206
  %1377 = load i32, i32* %1376, !mcsema_real_eip !206
  %1378 = sub i32 %1377, 3, !mcsema_real_eip !206
  %1379 = xor i32 %1378, %1377, !mcsema_real_eip !206
  %1380 = xor i32 %1379, 3, !mcsema_real_eip !206
  %1381 = and i32 %1380, 16, !mcsema_real_eip !206
  %1382 = icmp ne i32 %1381, 0, !mcsema_real_eip !206
  store i1 %1382, i1* %AF, !mcsema_real_eip !206
  %1383 = trunc i32 %1378 to i8, !mcsema_real_eip !206
  %1384 = call i8 @llvm.ctpop.i8(i8 %1383), !mcsema_real_eip !206
  %1385 = trunc i8 %1384 to i1, !mcsema_real_eip !206
  %1386 = xor i1 %1385, true, !mcsema_real_eip !206
  store i1 %1386, i1* %PF, !mcsema_real_eip !206
  %1387 = icmp eq i32 %1378, 0, !mcsema_real_eip !206
  store i1 %1387, i1* %ZF, !mcsema_real_eip !206
  %1388 = lshr i32 %1378, 31, !mcsema_real_eip !206
  %1389 = trunc i32 %1388 to i1, !mcsema_real_eip !206
  store i1 %1389, i1* %SF, !mcsema_real_eip !206
  %1390 = icmp ult i32 %1377, 3, !mcsema_real_eip !206
  store i1 %1390, i1* %CF, !mcsema_real_eip !206
  %1391 = xor i32 %1377, 3, !mcsema_real_eip !206
  %1392 = xor i32 %1377, %1378, !mcsema_real_eip !206
  %1393 = and i32 %1391, %1392, !mcsema_real_eip !206
  %1394 = lshr i32 %1393, 31, !mcsema_real_eip !206
  %1395 = trunc i32 %1394 to i1, !mcsema_real_eip !206
  store i1 %1395, i1* %OF, !mcsema_real_eip !206
  %1396 = load i1, i1* %ZF, !mcsema_real_eip !207
  %1397 = icmp eq i1 %1396, true, !mcsema_real_eip !207
  br i1 %1397, label %block_0x343, label %block_0x338, !mcsema_real_eip !207

block_0x338:                                      ; preds = %block_0x2f6
  %RBP_val.325 = load i64, i64* %XBP, !mcsema_real_eip !208
  %1398 = add i64 %RBP_val.325, -60, !mcsema_real_eip !208
  %1399 = inttoptr i64 %1398 to i64*, !mcsema_real_eip !208
  %1400 = ptrtoint i64* %1399 to i64, !mcsema_real_eip !208
  %1401 = inttoptr i64 %1400 to i32*, !mcsema_real_eip !208
  %1402 = load i32, i32* %1401, !mcsema_real_eip !208
  %1403 = zext i32 %1402 to i64, !mcsema_real_eip !208
  store i64 %1403, i64* %XAX, !mcsema_real_eip !208
  %RBP_val.326 = load i64, i64* %XBP, !mcsema_real_eip !209
  %1404 = add i64 %RBP_val.326, -4, !mcsema_real_eip !209
  %1405 = inttoptr i64 %1404 to i64*, !mcsema_real_eip !209
  %EAX.327 = bitcast i64* %XAX to i32*, !mcsema_real_eip !209
  %EAX_val.328 = load i32, i32* %EAX.327, !mcsema_real_eip !209
  %1406 = ptrtoint i64* %1405 to i64, !mcsema_real_eip !209
  %1407 = inttoptr i64 %1406 to i32*, !mcsema_real_eip !209
  store i32 %EAX_val.328, i32* %1407, !mcsema_real_eip !209
  br label %block_0x417, !mcsema_real_eip !210

block_0x343:                                      ; preds = %block_0x2f6
  store i64 4, i64* %XDX, !mcsema_real_eip !211
  %RBP_val.310 = load i64, i64* %XBP, !mcsema_real_eip !212
  %1408 = add i64 %RBP_val.310, -20, !mcsema_real_eip !212
  %1409 = inttoptr i64 %1408 to i64*, !mcsema_real_eip !212
  %1410 = ptrtoint i64* %1409 to i64, !mcsema_real_eip !212
  %1411 = inttoptr i64 %1410 to i32*, !mcsema_real_eip !212
  %1412 = load i32, i32* %1411, !mcsema_real_eip !212
  %1413 = zext i32 %1412 to i64, !mcsema_real_eip !212
  store i64 %1413, i64* %XDI, !mcsema_real_eip !212
  %RBP_val.311 = load i64, i64* %XBP, !mcsema_real_eip !213
  %1414 = add i64 %RBP_val.311, -16, !mcsema_real_eip !213
  %1415 = inttoptr i64 %1414 to i64*, !mcsema_real_eip !213
  %1416 = load i64, i64* %1415, !mcsema_real_eip !213
  store i64 %1416, i64* %XAX, !mcsema_real_eip !213
  %RAX_val.312 = load i64, i64* %XAX, !mcsema_real_eip !214
  %1417 = add i64 28, %RAX_val.312, !mcsema_real_eip !214
  %1418 = xor i64 %1417, %RAX_val.312, !mcsema_real_eip !214
  %1419 = xor i64 %1418, 28, !mcsema_real_eip !214
  %1420 = and i64 %1419, 16, !mcsema_real_eip !214
  %1421 = icmp ne i64 %1420, 0, !mcsema_real_eip !214
  store i1 %1421, i1* %AF, !mcsema_real_eip !214
  %1422 = lshr i64 %1417, 63, !mcsema_real_eip !214
  %1423 = trunc i64 %1422 to i1, !mcsema_real_eip !214
  store i1 %1423, i1* %SF, !mcsema_real_eip !214
  %1424 = icmp eq i64 %1417, 0, !mcsema_real_eip !214
  store i1 %1424, i1* %ZF, !mcsema_real_eip !214
  %1425 = xor i64 %RAX_val.312, 28, !mcsema_real_eip !214
  %1426 = xor i64 %1425, -1, !mcsema_real_eip !214
  %1427 = xor i64 %RAX_val.312, %1417, !mcsema_real_eip !214
  %1428 = and i64 %1426, %1427, !mcsema_real_eip !214
  %1429 = lshr i64 %1428, 63, !mcsema_real_eip !214
  %1430 = and i64 %1429, 1, !mcsema_real_eip !214
  %1431 = trunc i64 %1430 to i1, !mcsema_real_eip !214
  store i1 %1431, i1* %OF, !mcsema_real_eip !214
  %1432 = trunc i64 %1417 to i8, !mcsema_real_eip !214
  %1433 = call i8 @llvm.ctpop.i8(i8 %1432), !mcsema_real_eip !214
  %1434 = trunc i8 %1433 to i1, !mcsema_real_eip !214
  %1435 = xor i1 %1434, true, !mcsema_real_eip !214
  store i1 %1435, i1* %PF, !mcsema_real_eip !214
  %1436 = icmp ult i64 %1417, %RAX_val.312, !mcsema_real_eip !214
  store i1 %1436, i1* %CF, !mcsema_real_eip !214
  store i64 %1417, i64* %XAX, !mcsema_real_eip !214
  %RAX_val.313 = load i64, i64* %XAX, !mcsema_real_eip !215
  store i64 %RAX_val.313, i64* %XSI, !mcsema_real_eip !215
  %RDI_val.314 = load i64, i64* %XDI, !mcsema_real_eip !216
  %RSI_val.315 = load i64, i64* %XSI, !mcsema_real_eip !216
  %RDX_val.316 = load i64, i64* %XDX, !mcsema_real_eip !216
  %RSP_val.317 = load i64, i64* %XSP, !mcsema_real_eip !216
  %1437 = sub i64 %RSP_val.317, 8, !mcsema_real_eip !216
  %1438 = inttoptr i64 %1437 to i64*, !mcsema_real_eip !216
  store i64 -2415393069852865332, i64* %1438, !mcsema_real_eip !216
  store i64 %1437, i64* %XSP, !mcsema_real_eip !216
  %1439 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.314, i64 %RSI_val.315, i64 %RDX_val.316), !mcsema_real_eip !216
  store i64 %1439, i64* %XAX, !mcsema_real_eip !216
  %RBP_val.318 = load i64, i64* %XBP, !mcsema_real_eip !217
  %1440 = add i64 %RBP_val.318, -64, !mcsema_real_eip !217
  %1441 = inttoptr i64 %1440 to i64*, !mcsema_real_eip !217
  %EAX.319 = bitcast i64* %XAX to i32*, !mcsema_real_eip !217
  %EAX_val.320 = load i32, i32* %EAX.319, !mcsema_real_eip !217
  %1442 = ptrtoint i64* %1441 to i64, !mcsema_real_eip !217
  %1443 = inttoptr i64 %1442 to i32*, !mcsema_real_eip !217
  store i32 %EAX_val.320, i32* %1443, !mcsema_real_eip !217
  %RBP_val.321 = load i64, i64* %XBP, !mcsema_real_eip !218
  %1444 = add i64 %RBP_val.321, -16, !mcsema_real_eip !218
  %1445 = inttoptr i64 %1444 to i64*, !mcsema_real_eip !218
  %1446 = load i64, i64* %1445, !mcsema_real_eip !218
  store i64 %1446, i64* %XSI, !mcsema_real_eip !218
  %RSI_val.322 = load i64, i64* %XSI, !mcsema_real_eip !219
  %1447 = add i64 %RSI_val.322, 28, !mcsema_real_eip !219
  %1448 = inttoptr i64 %1447 to i64*, !mcsema_real_eip !219
  %1449 = ptrtoint i64* %1448 to i64, !mcsema_real_eip !219
  %1450 = inttoptr i64 %1449 to i8*, !mcsema_real_eip !219
  %1451 = load i8, i8* %1450, !mcsema_real_eip !219
  %1452 = sext i8 %1451 to i32, !mcsema_real_eip !219
  %1453 = zext i32 %1452 to i64, !mcsema_real_eip !219
  store i64 %1453, i64* %XAX, !mcsema_real_eip !219
  %EAX.323 = bitcast i64* %XAX to i32*, !mcsema_real_eip !220
  %EAX_val.324 = load i32, i32* %EAX.323, !mcsema_real_eip !220
  %1454 = sub i32 %EAX_val.324, 100, !mcsema_real_eip !220
  %1455 = xor i32 %1454, %EAX_val.324, !mcsema_real_eip !220
  %1456 = xor i32 %1455, 100, !mcsema_real_eip !220
  %1457 = and i32 %1456, 16, !mcsema_real_eip !220
  %1458 = icmp ne i32 %1457, 0, !mcsema_real_eip !220
  store i1 %1458, i1* %AF, !mcsema_real_eip !220
  %1459 = trunc i32 %1454 to i8, !mcsema_real_eip !220
  %1460 = call i8 @llvm.ctpop.i8(i8 %1459), !mcsema_real_eip !220
  %1461 = trunc i8 %1460 to i1, !mcsema_real_eip !220
  %1462 = xor i1 %1461, true, !mcsema_real_eip !220
  store i1 %1462, i1* %PF, !mcsema_real_eip !220
  %1463 = icmp eq i32 %1454, 0, !mcsema_real_eip !220
  store i1 %1463, i1* %ZF, !mcsema_real_eip !220
  %1464 = lshr i32 %1454, 31, !mcsema_real_eip !220
  %1465 = trunc i32 %1464 to i1, !mcsema_real_eip !220
  store i1 %1465, i1* %SF, !mcsema_real_eip !220
  %1466 = icmp ult i32 %EAX_val.324, 100, !mcsema_real_eip !220
  store i1 %1466, i1* %CF, !mcsema_real_eip !220
  %1467 = xor i32 %EAX_val.324, 100, !mcsema_real_eip !220
  %1468 = xor i32 %EAX_val.324, %1454, !mcsema_real_eip !220
  %1469 = and i32 %1467, %1468, !mcsema_real_eip !220
  %1470 = lshr i32 %1469, 31, !mcsema_real_eip !220
  %1471 = trunc i32 %1470 to i1, !mcsema_real_eip !220
  store i1 %1471, i1* %OF, !mcsema_real_eip !220
  %1472 = load i1, i1* %ZF, !mcsema_real_eip !221
  %1473 = icmp eq i1 %1472, false, !mcsema_real_eip !221
  br i1 %1473, label %block_0x38e, label %block_0x36f, !mcsema_real_eip !221

block_0x36f:                                      ; preds = %block_0x343
  %RBP_val.337 = load i64, i64* %XBP, !mcsema_real_eip !222
  %1474 = add i64 %RBP_val.337, -16, !mcsema_real_eip !222
  %1475 = inttoptr i64 %1474 to i64*, !mcsema_real_eip !222
  %1476 = load i64, i64* %1475, !mcsema_real_eip !222
  store i64 %1476, i64* %XAX, !mcsema_real_eip !222
  %RAX_val.338 = load i64, i64* %XAX, !mcsema_real_eip !223
  %1477 = add i64 %RAX_val.338, 29, !mcsema_real_eip !223
  %1478 = inttoptr i64 %1477 to i64*, !mcsema_real_eip !223
  %1479 = ptrtoint i64* %1478 to i64, !mcsema_real_eip !223
  %1480 = inttoptr i64 %1479 to i8*, !mcsema_real_eip !223
  %1481 = load i8, i8* %1480, !mcsema_real_eip !223
  %1482 = sext i8 %1481 to i32, !mcsema_real_eip !223
  %1483 = zext i32 %1482 to i64, !mcsema_real_eip !223
  store i64 %1483, i64* %XCX, !mcsema_real_eip !223
  %ECX.339 = bitcast i64* %XCX to i32*, !mcsema_real_eip !224
  %ECX_val.340 = load i32, i32* %ECX.339, !mcsema_real_eip !224
  %1484 = sub i32 %ECX_val.340, 100, !mcsema_real_eip !224
  %1485 = xor i32 %1484, %ECX_val.340, !mcsema_real_eip !224
  %1486 = xor i32 %1485, 100, !mcsema_real_eip !224
  %1487 = and i32 %1486, 16, !mcsema_real_eip !224
  %1488 = icmp ne i32 %1487, 0, !mcsema_real_eip !224
  store i1 %1488, i1* %AF, !mcsema_real_eip !224
  %1489 = trunc i32 %1484 to i8, !mcsema_real_eip !224
  %1490 = call i8 @llvm.ctpop.i8(i8 %1489), !mcsema_real_eip !224
  %1491 = trunc i8 %1490 to i1, !mcsema_real_eip !224
  %1492 = xor i1 %1491, true, !mcsema_real_eip !224
  store i1 %1492, i1* %PF, !mcsema_real_eip !224
  %1493 = icmp eq i32 %1484, 0, !mcsema_real_eip !224
  store i1 %1493, i1* %ZF, !mcsema_real_eip !224
  %1494 = lshr i32 %1484, 31, !mcsema_real_eip !224
  %1495 = trunc i32 %1494 to i1, !mcsema_real_eip !224
  store i1 %1495, i1* %SF, !mcsema_real_eip !224
  %1496 = icmp ult i32 %ECX_val.340, 100, !mcsema_real_eip !224
  store i1 %1496, i1* %CF, !mcsema_real_eip !224
  %1497 = xor i32 %ECX_val.340, 100, !mcsema_real_eip !224
  %1498 = xor i32 %ECX_val.340, %1484, !mcsema_real_eip !224
  %1499 = and i32 %1497, %1498, !mcsema_real_eip !224
  %1500 = lshr i32 %1499, 31, !mcsema_real_eip !224
  %1501 = trunc i32 %1500 to i1, !mcsema_real_eip !224
  store i1 %1501, i1* %OF, !mcsema_real_eip !224
  %1502 = load i1, i1* %ZF, !mcsema_real_eip !225
  %1503 = icmp eq i1 %1502, false, !mcsema_real_eip !225
  br i1 %1503, label %block_0x38e, label %block_0x380, !mcsema_real_eip !225

block_0x38e:                                      ; preds = %block_0x36f, %block_0x343
  %RBP_val.329 = load i64, i64* %XBP, !mcsema_real_eip !226
  %1504 = add i64 %RBP_val.329, -16, !mcsema_real_eip !226
  %1505 = inttoptr i64 %1504 to i64*, !mcsema_real_eip !226
  %1506 = load i64, i64* %1505, !mcsema_real_eip !226
  store i64 %1506, i64* %XAX, !mcsema_real_eip !226
  %RAX_val.330 = load i64, i64* %XAX, !mcsema_real_eip !227
  %1507 = add i64 %RAX_val.330, 28, !mcsema_real_eip !227
  %1508 = inttoptr i64 %1507 to i64*, !mcsema_real_eip !227
  %1509 = ptrtoint i64* %1508 to i64, !mcsema_real_eip !227
  %1510 = inttoptr i64 %1509 to i8*, !mcsema_real_eip !227
  %1511 = load i8, i8* %1510, !mcsema_real_eip !227
  %1512 = sext i8 %1511 to i32, !mcsema_real_eip !227
  %1513 = zext i32 %1512 to i64, !mcsema_real_eip !227
  store i64 %1513, i64* %XCX, !mcsema_real_eip !227
  %RBP_val.331 = load i64, i64* %XBP, !mcsema_real_eip !228
  %1514 = add i64 %RBP_val.331, -16, !mcsema_real_eip !228
  %1515 = inttoptr i64 %1514 to i64*, !mcsema_real_eip !228
  %1516 = load i64, i64* %1515, !mcsema_real_eip !228
  store i64 %1516, i64* %XAX, !mcsema_real_eip !228
  %RAX_val.332 = load i64, i64* %XAX, !mcsema_real_eip !229
  %1517 = add i64 %RAX_val.332, 29, !mcsema_real_eip !229
  %1518 = inttoptr i64 %1517 to i64*, !mcsema_real_eip !229
  %1519 = ptrtoint i64* %1518 to i64, !mcsema_real_eip !229
  %1520 = inttoptr i64 %1519 to i8*, !mcsema_real_eip !229
  %1521 = load i8, i8* %1520, !mcsema_real_eip !229
  %1522 = sext i8 %1521 to i32, !mcsema_real_eip !229
  %1523 = zext i32 %1522 to i64, !mcsema_real_eip !229
  store i64 %1523, i64* %XDX, !mcsema_real_eip !229
  %ECX.333 = bitcast i64* %XCX to i32*, !mcsema_real_eip !230
  %ECX_val.334 = load i32, i32* %ECX.333, !mcsema_real_eip !230
  %EDX.335 = bitcast i64* %XDX to i32*, !mcsema_real_eip !230
  %EDX_val.336 = load i32, i32* %EDX.335, !mcsema_real_eip !230
  %1524 = sub i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  %1525 = xor i32 %1524, %ECX_val.334, !mcsema_real_eip !230
  %1526 = xor i32 %1525, %EDX_val.336, !mcsema_real_eip !230
  %1527 = and i32 %1526, 16, !mcsema_real_eip !230
  %1528 = icmp ne i32 %1527, 0, !mcsema_real_eip !230
  store i1 %1528, i1* %AF, !mcsema_real_eip !230
  %1529 = trunc i32 %1524 to i8, !mcsema_real_eip !230
  %1530 = call i8 @llvm.ctpop.i8(i8 %1529), !mcsema_real_eip !230
  %1531 = trunc i8 %1530 to i1, !mcsema_real_eip !230
  %1532 = xor i1 %1531, true, !mcsema_real_eip !230
  store i1 %1532, i1* %PF, !mcsema_real_eip !230
  %1533 = icmp eq i32 %1524, 0, !mcsema_real_eip !230
  store i1 %1533, i1* %ZF, !mcsema_real_eip !230
  %1534 = lshr i32 %1524, 31, !mcsema_real_eip !230
  %1535 = trunc i32 %1534 to i1, !mcsema_real_eip !230
  store i1 %1535, i1* %SF, !mcsema_real_eip !230
  %1536 = icmp ult i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  store i1 %1536, i1* %CF, !mcsema_real_eip !230
  %1537 = xor i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  %1538 = xor i32 %ECX_val.334, %1524, !mcsema_real_eip !230
  %1539 = and i32 %1537, %1538, !mcsema_real_eip !230
  %1540 = lshr i32 %1539, 31, !mcsema_real_eip !230
  %1541 = trunc i32 %1540 to i1, !mcsema_real_eip !230
  store i1 %1541, i1* %OF, !mcsema_real_eip !230
  %1542 = load i1, i1* %ZF, !mcsema_real_eip !231
  %1543 = icmp eq i1 %1542, false, !mcsema_real_eip !231
  br i1 %1543, label %block_0x406, label %block_0x3a6, !mcsema_real_eip !231

block_0x3a6:                                      ; preds = %block_0x38e
  store i64 15, i64* %XAX, !mcsema_real_eip !232
  %RBP_val.345 = load i64, i64* %XBP, !mcsema_real_eip !233
  %1544 = add i64 %RBP_val.345, -16, !mcsema_real_eip !233
  %1545 = inttoptr i64 %1544 to i64*, !mcsema_real_eip !233
  %1546 = load i64, i64* %1545, !mcsema_real_eip !233
  store i64 %1546, i64* %XCX, !mcsema_real_eip !233
  %RCX_val.346 = load i64, i64* %XCX, !mcsema_real_eip !234
  %1547 = add i64 %RCX_val.346, 31, !mcsema_real_eip !234
  %1548 = inttoptr i64 %1547 to i64*, !mcsema_real_eip !234
  %1549 = ptrtoint i64* %1548 to i64, !mcsema_real_eip !234
  %1550 = inttoptr i64 %1549 to i8*, !mcsema_real_eip !234
  %1551 = load i8, i8* %1550, !mcsema_real_eip !234
  %1552 = sext i8 %1551 to i32, !mcsema_real_eip !234
  %1553 = zext i32 %1552 to i64, !mcsema_real_eip !234
  store i64 %1553, i64* %XDX, !mcsema_real_eip !234
  %RBP_val.347 = load i64, i64* %XBP, !mcsema_real_eip !235
  %1554 = add i64 %RBP_val.347, -16, !mcsema_real_eip !235
  %1555 = inttoptr i64 %1554 to i64*, !mcsema_real_eip !235
  %1556 = load i64, i64* %1555, !mcsema_real_eip !235
  store i64 %1556, i64* %XCX, !mcsema_real_eip !235
  %RCX_val.348 = load i64, i64* %XCX, !mcsema_real_eip !236
  %1557 = add i64 %RCX_val.348, 30, !mcsema_real_eip !236
  %1558 = inttoptr i64 %1557 to i64*, !mcsema_real_eip !236
  %1559 = ptrtoint i64* %1558 to i64, !mcsema_real_eip !236
  %1560 = inttoptr i64 %1559 to i8*, !mcsema_real_eip !236
  %1561 = load i8, i8* %1560, !mcsema_real_eip !236
  %1562 = sext i8 %1561 to i32, !mcsema_real_eip !236
  %1563 = zext i32 %1562 to i64, !mcsema_real_eip !236
  store i64 %1563, i64* %XSI, !mcsema_real_eip !236
  %EDX.349 = bitcast i64* %XDX to i32*, !mcsema_real_eip !237
  %EDX_val.350 = load i32, i32* %EDX.349, !mcsema_real_eip !237
  %ESI.351 = bitcast i64* %XSI to i32*, !mcsema_real_eip !237
  %ESI_val.352 = load i32, i32* %ESI.351, !mcsema_real_eip !237
  %1564 = sub i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  %1565 = xor i32 %1564, %EDX_val.350, !mcsema_real_eip !237
  %1566 = xor i32 %1565, %ESI_val.352, !mcsema_real_eip !237
  %1567 = and i32 %1566, 16, !mcsema_real_eip !237
  %1568 = icmp ne i32 %1567, 0, !mcsema_real_eip !237
  store i1 %1568, i1* %AF, !mcsema_real_eip !237
  %1569 = trunc i32 %1564 to i8, !mcsema_real_eip !237
  %1570 = call i8 @llvm.ctpop.i8(i8 %1569), !mcsema_real_eip !237
  %1571 = trunc i8 %1570 to i1, !mcsema_real_eip !237
  %1572 = xor i1 %1571, true, !mcsema_real_eip !237
  store i1 %1572, i1* %PF, !mcsema_real_eip !237
  %1573 = icmp eq i32 %1564, 0, !mcsema_real_eip !237
  store i1 %1573, i1* %ZF, !mcsema_real_eip !237
  %1574 = lshr i32 %1564, 31, !mcsema_real_eip !237
  %1575 = trunc i32 %1574 to i1, !mcsema_real_eip !237
  store i1 %1575, i1* %SF, !mcsema_real_eip !237
  %1576 = icmp ult i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  store i1 %1576, i1* %CF, !mcsema_real_eip !237
  %1577 = xor i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  %1578 = xor i32 %EDX_val.350, %1564, !mcsema_real_eip !237
  %1579 = and i32 %1577, %1578, !mcsema_real_eip !237
  %1580 = lshr i32 %1579, 31, !mcsema_real_eip !237
  %1581 = trunc i32 %1580 to i1, !mcsema_real_eip !237
  store i1 %1581, i1* %OF, !mcsema_real_eip !237
  %1582 = zext i32 %1564 to i64, !mcsema_real_eip !237
  store i64 %1582, i64* %XDX, !mcsema_real_eip !237
  %EAX.353 = bitcast i64* %XAX to i32*, !mcsema_real_eip !238
  %EAX_val.354 = load i32, i32* %EAX.353, !mcsema_real_eip !238
  %EDX.355 = bitcast i64* %XDX to i32*, !mcsema_real_eip !238
  %EDX_val.356 = load i32, i32* %EDX.355, !mcsema_real_eip !238
  %1583 = sub i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  %1584 = xor i32 %1583, %EAX_val.354, !mcsema_real_eip !238
  %1585 = xor i32 %1584, %EDX_val.356, !mcsema_real_eip !238
  %1586 = and i32 %1585, 16, !mcsema_real_eip !238
  %1587 = icmp ne i32 %1586, 0, !mcsema_real_eip !238
  store i1 %1587, i1* %AF, !mcsema_real_eip !238
  %1588 = trunc i32 %1583 to i8, !mcsema_real_eip !238
  %1589 = call i8 @llvm.ctpop.i8(i8 %1588), !mcsema_real_eip !238
  %1590 = trunc i8 %1589 to i1, !mcsema_real_eip !238
  %1591 = xor i1 %1590, true, !mcsema_real_eip !238
  store i1 %1591, i1* %PF, !mcsema_real_eip !238
  %1592 = icmp eq i32 %1583, 0, !mcsema_real_eip !238
  store i1 %1592, i1* %ZF, !mcsema_real_eip !238
  %1593 = lshr i32 %1583, 31, !mcsema_real_eip !238
  %1594 = trunc i32 %1593 to i1, !mcsema_real_eip !238
  store i1 %1594, i1* %SF, !mcsema_real_eip !238
  %1595 = icmp ult i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  store i1 %1595, i1* %CF, !mcsema_real_eip !238
  %1596 = xor i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  %1597 = xor i32 %EAX_val.354, %1583, !mcsema_real_eip !238
  %1598 = and i32 %1596, %1597, !mcsema_real_eip !238
  %1599 = lshr i32 %1598, 31, !mcsema_real_eip !238
  %1600 = trunc i32 %1599 to i1, !mcsema_real_eip !238
  store i1 %1600, i1* %OF, !mcsema_real_eip !238
  %1601 = zext i32 %1583 to i64, !mcsema_real_eip !238
  store i64 %1601, i64* %XAX, !mcsema_real_eip !238
  %RBP_val.357 = load i64, i64* %XBP, !mcsema_real_eip !239
  %1602 = add i64 %RBP_val.357, -20, !mcsema_real_eip !239
  %1603 = inttoptr i64 %1602 to i64*, !mcsema_real_eip !239
  %1604 = ptrtoint i64* %1603 to i64, !mcsema_real_eip !239
  %1605 = inttoptr i64 %1604 to i32*, !mcsema_real_eip !239
  %1606 = load i32, i32* %1605, !mcsema_real_eip !239
  %EAX.358 = bitcast i64* %XAX to i32*, !mcsema_real_eip !239
  %EAX_val.359 = load i32, i32* %EAX.358, !mcsema_real_eip !239
  %1607 = add i32 %EAX_val.359, %1606, !mcsema_real_eip !239
  %1608 = xor i32 %1607, %1606, !mcsema_real_eip !239
  %1609 = xor i32 %1608, %EAX_val.359, !mcsema_real_eip !239
  %1610 = and i32 %1609, 16, !mcsema_real_eip !239
  %1611 = icmp ne i32 %1610, 0, !mcsema_real_eip !239
  store i1 %1611, i1* %AF, !mcsema_real_eip !239
  %1612 = lshr i32 %1607, 31, !mcsema_real_eip !239
  %1613 = trunc i32 %1612 to i1, !mcsema_real_eip !239
  store i1 %1613, i1* %SF, !mcsema_real_eip !239
  %1614 = icmp eq i32 %1607, 0, !mcsema_real_eip !239
  store i1 %1614, i1* %ZF, !mcsema_real_eip !239
  %1615 = xor i32 %1606, %EAX_val.359, !mcsema_real_eip !239
  %1616 = xor i32 %1615, -1, !mcsema_real_eip !239
  %1617 = xor i32 %1606, %1607, !mcsema_real_eip !239
  %1618 = and i32 %1616, %1617, !mcsema_real_eip !239
  %1619 = lshr i32 %1618, 31, !mcsema_real_eip !239
  %1620 = and i32 %1619, 1, !mcsema_real_eip !239
  %1621 = trunc i32 %1620 to i1, !mcsema_real_eip !239
  store i1 %1621, i1* %OF, !mcsema_real_eip !239
  %1622 = trunc i32 %1607 to i8, !mcsema_real_eip !239
  %1623 = call i8 @llvm.ctpop.i8(i8 %1622), !mcsema_real_eip !239
  %1624 = trunc i8 %1623 to i1, !mcsema_real_eip !239
  %1625 = xor i1 %1624, true, !mcsema_real_eip !239
  store i1 %1625, i1* %PF, !mcsema_real_eip !239
  %1626 = icmp ult i32 %1607, %1606, !mcsema_real_eip !239
  store i1 %1626, i1* %CF, !mcsema_real_eip !239
  %1627 = zext i32 %1607 to i64, !mcsema_real_eip !239
  store i64 %1627, i64* %XAX, !mcsema_real_eip !239
  %RBP_val.360 = load i64, i64* %XBP, !mcsema_real_eip !240
  %1628 = add i64 %RBP_val.360, -20, !mcsema_real_eip !240
  %1629 = inttoptr i64 %1628 to i64*, !mcsema_real_eip !240
  %EAX.361 = bitcast i64* %XAX to i32*, !mcsema_real_eip !240
  %EAX_val.362 = load i32, i32* %EAX.361, !mcsema_real_eip !240
  %1630 = ptrtoint i64* %1629 to i64, !mcsema_real_eip !240
  %1631 = inttoptr i64 %1630 to i32*, !mcsema_real_eip !240
  store i32 %EAX_val.362, i32* %1631, !mcsema_real_eip !240
  %RBP_val.363 = load i64, i64* %XBP, !mcsema_real_eip !241
  %1632 = add i64 %RBP_val.363, -16, !mcsema_real_eip !241
  %1633 = inttoptr i64 %1632 to i64*, !mcsema_real_eip !241
  %1634 = load i64, i64* %1633, !mcsema_real_eip !241
  store i64 %1634, i64* %XCX, !mcsema_real_eip !241
  %RCX_val.364 = load i64, i64* %XCX, !mcsema_real_eip !242
  %1635 = add i64 %RCX_val.364, 28, !mcsema_real_eip !242
  %1636 = inttoptr i64 %1635 to i64*, !mcsema_real_eip !242
  %1637 = ptrtoint i64* %1636 to i64, !mcsema_real_eip !242
  %1638 = inttoptr i64 %1637 to i8*, !mcsema_real_eip !242
  %1639 = load i8, i8* %1638, !mcsema_real_eip !242
  %1640 = zext i8 %1639 to i32, !mcsema_real_eip !242
  %1641 = zext i32 %1640 to i64, !mcsema_real_eip !242
  store i64 %1641, i64* %XDI, !mcsema_real_eip !242
  %RDI_val.365 = load i64, i64* %XDI, !mcsema_real_eip !243
  %RSP_val.366 = load i64, i64* %XSP, !mcsema_real_eip !243
  %1642 = sub i64 %RSP_val.366, 8, !mcsema_real_eip !243
  %1643 = inttoptr i64 %1642 to i64*, !mcsema_real_eip !243
  store i64 -2415393069852865332, i64* %1643, !mcsema_real_eip !243
  store i64 %1642, i64* %XSP, !mcsema_real_eip !243
  %1644 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.365), !mcsema_real_eip !243
  store i64 %1644, i64* %XAX, !mcsema_real_eip !243
  %RBP_val.367 = load i64, i64* %XBP, !mcsema_real_eip !244
  %1645 = add i64 %RBP_val.367, -20, !mcsema_real_eip !244
  %1646 = inttoptr i64 %1645 to i64*, !mcsema_real_eip !244
  %1647 = ptrtoint i64* %1646 to i64, !mcsema_real_eip !244
  %1648 = inttoptr i64 %1647 to i32*, !mcsema_real_eip !244
  %1649 = load i32, i32* %1648, !mcsema_real_eip !244
  %1650 = zext i32 %1649 to i64, !mcsema_real_eip !244
  store i64 %1650, i64* %XDX, !mcsema_real_eip !244
  %EDX.368 = bitcast i64* %XDX to i32*, !mcsema_real_eip !245
  %EDX_val.369 = load i32, i32* %EDX.368, !mcsema_real_eip !245
  %EAX.370 = bitcast i64* %XAX to i32*, !mcsema_real_eip !245
  %EAX_val.371 = load i32, i32* %EAX.370, !mcsema_real_eip !245
  %1651 = sub i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  %1652 = xor i32 %1651, %EDX_val.369, !mcsema_real_eip !245
  %1653 = xor i32 %1652, %EAX_val.371, !mcsema_real_eip !245
  %1654 = and i32 %1653, 16, !mcsema_real_eip !245
  %1655 = icmp ne i32 %1654, 0, !mcsema_real_eip !245
  store i1 %1655, i1* %AF, !mcsema_real_eip !245
  %1656 = trunc i32 %1651 to i8, !mcsema_real_eip !245
  %1657 = call i8 @llvm.ctpop.i8(i8 %1656), !mcsema_real_eip !245
  %1658 = trunc i8 %1657 to i1, !mcsema_real_eip !245
  %1659 = xor i1 %1658, true, !mcsema_real_eip !245
  store i1 %1659, i1* %PF, !mcsema_real_eip !245
  %1660 = icmp eq i32 %1651, 0, !mcsema_real_eip !245
  store i1 %1660, i1* %ZF, !mcsema_real_eip !245
  %1661 = lshr i32 %1651, 31, !mcsema_real_eip !245
  %1662 = trunc i32 %1661 to i1, !mcsema_real_eip !245
  store i1 %1662, i1* %SF, !mcsema_real_eip !245
  %1663 = icmp ult i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  store i1 %1663, i1* %CF, !mcsema_real_eip !245
  %1664 = xor i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  %1665 = xor i32 %EDX_val.369, %1651, !mcsema_real_eip !245
  %1666 = and i32 %1664, %1665, !mcsema_real_eip !245
  %1667 = lshr i32 %1666, 31, !mcsema_real_eip !245
  %1668 = trunc i32 %1667 to i1, !mcsema_real_eip !245
  store i1 %1668, i1* %OF, !mcsema_real_eip !245
  %1669 = zext i32 %1651 to i64, !mcsema_real_eip !245
  store i64 %1669, i64* %XDX, !mcsema_real_eip !245
  %RBP_val.372 = load i64, i64* %XBP, !mcsema_real_eip !246
  %1670 = add i64 %RBP_val.372, -20, !mcsema_real_eip !246
  %1671 = inttoptr i64 %1670 to i64*, !mcsema_real_eip !246
  %EDX.373 = bitcast i64* %XDX to i32*, !mcsema_real_eip !246
  %EDX_val.374 = load i32, i32* %EDX.373, !mcsema_real_eip !246
  %1672 = ptrtoint i64* %1671 to i64, !mcsema_real_eip !246
  %1673 = inttoptr i64 %1672 to i32*, !mcsema_real_eip !246
  store i32 %EDX_val.374, i32* %1673, !mcsema_real_eip !246
  %RBP_val.375 = load i64, i64* %XBP, !mcsema_real_eip !247
  %1674 = add i64 %RBP_val.375, -20, !mcsema_real_eip !247
  %1675 = inttoptr i64 %1674 to i64*, !mcsema_real_eip !247
  %1676 = ptrtoint i64* %1675 to i64, !mcsema_real_eip !247
  %1677 = inttoptr i64 %1676 to i32*, !mcsema_real_eip !247
  %1678 = load i32, i32* %1677, !mcsema_real_eip !247
  %1679 = sub i32 %1678, 0, !mcsema_real_eip !247
  %1680 = xor i32 %1679, %1678, !mcsema_real_eip !247
  %1681 = xor i32 %1680, 0, !mcsema_real_eip !247
  %1682 = and i32 %1681, 16, !mcsema_real_eip !247
  %1683 = icmp ne i32 %1682, 0, !mcsema_real_eip !247
  store i1 %1683, i1* %AF, !mcsema_real_eip !247
  %1684 = trunc i32 %1679 to i8, !mcsema_real_eip !247
  %1685 = call i8 @llvm.ctpop.i8(i8 %1684), !mcsema_real_eip !247
  %1686 = trunc i8 %1685 to i1, !mcsema_real_eip !247
  %1687 = xor i1 %1686, true, !mcsema_real_eip !247
  store i1 %1687, i1* %PF, !mcsema_real_eip !247
  %1688 = icmp eq i32 %1679, 0, !mcsema_real_eip !247
  store i1 %1688, i1* %ZF, !mcsema_real_eip !247
  %1689 = lshr i32 %1679, 31, !mcsema_real_eip !247
  %1690 = trunc i32 %1689 to i1, !mcsema_real_eip !247
  store i1 %1690, i1* %SF, !mcsema_real_eip !247
  %1691 = icmp ult i32 %1678, 0, !mcsema_real_eip !247
  store i1 %1691, i1* %CF, !mcsema_real_eip !247
  %1692 = xor i32 %1678, 0, !mcsema_real_eip !247
  %1693 = xor i32 %1678, %1679, !mcsema_real_eip !247
  %1694 = and i32 %1692, %1693, !mcsema_real_eip !247
  %1695 = lshr i32 %1694, 31, !mcsema_real_eip !247
  %1696 = trunc i32 %1695 to i1, !mcsema_real_eip !247
  store i1 %1696, i1* %OF, !mcsema_real_eip !247
  %1697 = load i1, i1* %ZF, !mcsema_real_eip !248
  %1698 = icmp eq i1 %1697, false, !mcsema_real_eip !248
  br i1 %1698, label %block_0x401, label %block_0x3e4, !mcsema_real_eip !248

block_0x406:                                      ; preds = %block_0x38e
  %RBP_val.341 = load i64, i64* %XBP, !mcsema_real_eip !249
  %1699 = add i64 %RBP_val.341, -64, !mcsema_real_eip !249
  %1700 = inttoptr i64 %1699 to i64*, !mcsema_real_eip !249
  %1701 = ptrtoint i64* %1700 to i64, !mcsema_real_eip !249
  %1702 = inttoptr i64 %1701 to i32*, !mcsema_real_eip !249
  %1703 = load i32, i32* %1702, !mcsema_real_eip !249
  %1704 = zext i32 %1703 to i64, !mcsema_real_eip !249
  store i64 %1704, i64* %XAX, !mcsema_real_eip !249
  %RBP_val.342 = load i64, i64* %XBP, !mcsema_real_eip !250
  %1705 = add i64 %RBP_val.342, -20, !mcsema_real_eip !250
  %1706 = inttoptr i64 %1705 to i64*, !mcsema_real_eip !250
  %EAX.343 = bitcast i64* %XAX to i32*, !mcsema_real_eip !250
  %EAX_val.344 = load i32, i32* %EAX.343, !mcsema_real_eip !250
  %1707 = ptrtoint i64* %1706 to i64, !mcsema_real_eip !250
  %1708 = inttoptr i64 %1707 to i32*, !mcsema_real_eip !250
  store i32 %EAX_val.344, i32* %1708, !mcsema_real_eip !250
  br label %block_0x40c, !mcsema_real_eip !232

block_0x380:                                      ; preds = %block_0x36f
  %RBP_val.376 = load i64, i64* %XBP, !mcsema_real_eip !251
  %1709 = add i64 %RBP_val.376, -64, !mcsema_real_eip !251
  %1710 = inttoptr i64 %1709 to i64*, !mcsema_real_eip !251
  %1711 = ptrtoint i64* %1710 to i64, !mcsema_real_eip !251
  %1712 = inttoptr i64 %1711 to i32*, !mcsema_real_eip !251
  %1713 = load i32, i32* %1712, !mcsema_real_eip !251
  %1714 = zext i32 %1713 to i64, !mcsema_real_eip !251
  store i64 %1714, i64* %XAX, !mcsema_real_eip !251
  %RBP_val.377 = load i64, i64* %XBP, !mcsema_real_eip !252
  %1715 = add i64 %RBP_val.377, -20, !mcsema_real_eip !252
  %1716 = inttoptr i64 %1715 to i64*, !mcsema_real_eip !252
  %1717 = ptrtoint i64* %1716 to i64, !mcsema_real_eip !252
  %1718 = inttoptr i64 %1717 to i32*, !mcsema_real_eip !252
  %1719 = load i32, i32* %1718, !mcsema_real_eip !252
  %EAX.378 = bitcast i64* %XAX to i32*, !mcsema_real_eip !252
  %EAX_val.379 = load i32, i32* %EAX.378, !mcsema_real_eip !252
  %1720 = xor i32 %1719, %EAX_val.379, !mcsema_real_eip !252
  store i1 false, i1* %CF, !mcsema_real_eip !252
  store i1 false, i1* %OF, !mcsema_real_eip !252
  %1721 = lshr i32 %1720, 31, !mcsema_real_eip !252
  %1722 = trunc i32 %1721 to i1, !mcsema_real_eip !252
  store i1 %1722, i1* %SF, !mcsema_real_eip !252
  %1723 = icmp eq i32 %1720, 0, !mcsema_real_eip !252
  store i1 %1723, i1* %ZF, !mcsema_real_eip !252
  %1724 = trunc i32 %1720 to i8, !mcsema_real_eip !252
  %1725 = call i8 @llvm.ctpop.i8(i8 %1724), !mcsema_real_eip !252
  %1726 = trunc i8 %1725 to i1, !mcsema_real_eip !252
  %1727 = xor i1 %1726, true, !mcsema_real_eip !252
  store i1 %1727, i1* %PF, !mcsema_real_eip !252
  store i1 undef, i1* %AF, !mcsema_real_eip !252
  %1728 = zext i32 %1720 to i64, !mcsema_real_eip !252
  store i64 %1728, i64* %XAX, !mcsema_real_eip !252
  %RBP_val.380 = load i64, i64* %XBP, !mcsema_real_eip !253
  %1729 = add i64 %RBP_val.380, -20, !mcsema_real_eip !253
  %1730 = inttoptr i64 %1729 to i64*, !mcsema_real_eip !253
  %EAX.381 = bitcast i64* %XAX to i32*, !mcsema_real_eip !253
  %EAX_val.382 = load i32, i32* %EAX.381, !mcsema_real_eip !253
  %1731 = ptrtoint i64* %1730 to i64, !mcsema_real_eip !253
  %1732 = inttoptr i64 %1731 to i32*, !mcsema_real_eip !253
  store i32 %EAX_val.382, i32* %1732, !mcsema_real_eip !253
  br label %block_0x411, !mcsema_real_eip !254

block_0x40c:                                      ; preds = %block_0x401, %block_0x406
  br label %block_0x411, !mcsema_real_eip !255

block_0x3e4:                                      ; preds = %block_0x3a6
  %RBP_val.383 = load i64, i64* %XBP, !mcsema_real_eip !256
  %1733 = add i64 %RBP_val.383, -16, !mcsema_real_eip !256
  %1734 = inttoptr i64 %1733 to i64*, !mcsema_real_eip !256
  %1735 = load i64, i64* %1734, !mcsema_real_eip !256
  store i64 %1735, i64* %XAX, !mcsema_real_eip !256
  %RAX_val.384 = load i64, i64* %XAX, !mcsema_real_eip !257
  %1736 = add i64 %RAX_val.384, 31, !mcsema_real_eip !257
  %1737 = inttoptr i64 %1736 to i64*, !mcsema_real_eip !257
  %1738 = ptrtoint i64* %1737 to i64, !mcsema_real_eip !257
  %1739 = inttoptr i64 %1738 to i8*, !mcsema_real_eip !257
  %1740 = load i8, i8* %1739, !mcsema_real_eip !257
  %1741 = zext i8 %1740 to i32, !mcsema_real_eip !257
  %1742 = zext i32 %1741 to i64, !mcsema_real_eip !257
  store i64 %1742, i64* %XDI, !mcsema_real_eip !257
  %RDI_val.385 = load i64, i64* %XDI, !mcsema_real_eip !258
  %RSP_val.386 = load i64, i64* %XSP, !mcsema_real_eip !258
  %1743 = sub i64 %RSP_val.386, 8, !mcsema_real_eip !258
  %1744 = inttoptr i64 %1743 to i64*, !mcsema_real_eip !258
  store i64 -2415393069852865332, i64* %1744, !mcsema_real_eip !258
  store i64 %1743, i64* %XSP, !mcsema_real_eip !258
  %1745 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.385), !mcsema_real_eip !258
  store i64 %1745, i64* %XAX, !mcsema_real_eip !258
  %EAX.387 = bitcast i64* %XAX to i32*, !mcsema_real_eip !259
  %EAX_val.388 = load i32, i32* %EAX.387, !mcsema_real_eip !259
  %1746 = sub i32 %EAX_val.388, 4, !mcsema_real_eip !259
  %1747 = xor i32 %1746, %EAX_val.388, !mcsema_real_eip !259
  %1748 = xor i32 %1747, 4, !mcsema_real_eip !259
  %1749 = and i32 %1748, 16, !mcsema_real_eip !259
  %1750 = icmp ne i32 %1749, 0, !mcsema_real_eip !259
  store i1 %1750, i1* %AF, !mcsema_real_eip !259
  %1751 = trunc i32 %1746 to i8, !mcsema_real_eip !259
  %1752 = call i8 @llvm.ctpop.i8(i8 %1751), !mcsema_real_eip !259
  %1753 = trunc i8 %1752 to i1, !mcsema_real_eip !259
  %1754 = xor i1 %1753, true, !mcsema_real_eip !259
  store i1 %1754, i1* %PF, !mcsema_real_eip !259
  %1755 = icmp eq i32 %1746, 0, !mcsema_real_eip !259
  store i1 %1755, i1* %ZF, !mcsema_real_eip !259
  %1756 = lshr i32 %1746, 31, !mcsema_real_eip !259
  %1757 = trunc i32 %1756 to i1, !mcsema_real_eip !259
  store i1 %1757, i1* %SF, !mcsema_real_eip !259
  %1758 = icmp ult i32 %EAX_val.388, 4, !mcsema_real_eip !259
  store i1 %1758, i1* %CF, !mcsema_real_eip !259
  %1759 = xor i32 %EAX_val.388, 4, !mcsema_real_eip !259
  %1760 = xor i32 %EAX_val.388, %1746, !mcsema_real_eip !259
  %1761 = and i32 %1759, %1760, !mcsema_real_eip !259
  %1762 = lshr i32 %1761, 31, !mcsema_real_eip !259
  %1763 = trunc i32 %1762 to i1, !mcsema_real_eip !259
  store i1 %1763, i1* %OF, !mcsema_real_eip !259
  %1764 = load i1, i1* %ZF, !mcsema_real_eip !260
  %1765 = icmp eq i1 %1764, true, !mcsema_real_eip !260
  br i1 %1765, label %block_0x401, label %block_0x3fa, !mcsema_real_eip !260

block_0x401:                                      ; preds = %block_0x3fa, %block_0x3e4, %block_0x3a6
  br label %block_0x40c, !mcsema_real_eip !261

block_0x411:                                      ; preds = %block_0x40c, %block_0x380
  %RBP_val.389 = load i64, i64* %XBP, !mcsema_real_eip !262
  %1766 = add i64 %RBP_val.389, -20, !mcsema_real_eip !262
  %1767 = inttoptr i64 %1766 to i64*, !mcsema_real_eip !262
  %1768 = ptrtoint i64* %1767 to i64, !mcsema_real_eip !262
  %1769 = inttoptr i64 %1768 to i32*, !mcsema_real_eip !262
  %1770 = load i32, i32* %1769, !mcsema_real_eip !262
  %1771 = zext i32 %1770 to i64, !mcsema_real_eip !262
  store i64 %1771, i64* %XAX, !mcsema_real_eip !262
  %RBP_val.390 = load i64, i64* %XBP, !mcsema_real_eip !263
  %1772 = add i64 %RBP_val.390, -4, !mcsema_real_eip !263
  %1773 = inttoptr i64 %1772 to i64*, !mcsema_real_eip !263
  %EAX.391 = bitcast i64* %XAX to i32*, !mcsema_real_eip !263
  %EAX_val.392 = load i32, i32* %EAX.391, !mcsema_real_eip !263
  %1774 = ptrtoint i64* %1773 to i64, !mcsema_real_eip !263
  %1775 = inttoptr i64 %1774 to i32*, !mcsema_real_eip !263
  store i32 %EAX_val.392, i32* %1775, !mcsema_real_eip !263
  br label %block_0x417, !mcsema_real_eip !264

block_0x3fa:                                      ; preds = %block_0x3e4
  %RBP_val.393 = load i64, i64* %XBP, !mcsema_real_eip !264
  %1776 = add i64 %RBP_val.393, -20, !mcsema_real_eip !264
  %1777 = inttoptr i64 %1776 to i64*, !mcsema_real_eip !264
  %1778 = ptrtoint i64* %1777 to i64, !mcsema_real_eip !264
  %1779 = inttoptr i64 %1778 to i32*, !mcsema_real_eip !264
  store i32 -32, i32* %1779, !mcsema_real_eip !264
  br label %block_0x401
}

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @to_byte(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_to_byte(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read_bytes(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @keycomp() #2

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
!9 = !{i64 23}
!10 = !{i64 26}
!11 = !{i64 30}
!12 = !{i64 36}
!13 = !{i64 39}
!14 = !{i64 42}
!15 = !{i64 47}
!16 = !{i64 51}
!17 = !{i64 55}
!18 = !{i64 59}
!19 = !{i64 63}
!20 = !{i64 66}
!21 = !{i64 69}
!22 = !{i64 75}
!23 = !{i64 82}
!24 = !{i64 87}
!25 = !{i64 91}
!26 = !{i64 95}
!27 = !{i64 100}
!28 = !{i64 103}
!29 = !{i64 1047}
!30 = !{i64 1050}
!31 = !{i64 1054}
!32 = !{i64 1055}
!33 = !{i64 109}
!34 = !{i64 116}
!35 = !{i64 121}
!36 = !{i64 125}
!37 = !{i64 129}
!38 = !{i64 134}
!39 = !{i64 137}
!40 = !{i64 140}
!41 = !{i64 143}
!42 = !{i64 146}
!43 = !{i64 152}
!44 = !{i64 159}
!45 = !{i64 164}
!46 = !{i64 168}
!47 = !{i64 172}
!48 = !{i64 177}
!49 = !{i64 182}
!50 = !{i64 185}
!51 = !{i64 188}
!52 = !{i64 191}
!53 = !{i64 192}
!54 = !{i64 194}
!55 = !{i64 197}
!56 = !{i64 203}
!57 = !{i64 210}
!58 = !{i64 215}
!59 = !{i64 219}
!60 = !{i64 223}
!61 = !{i64 226}
!62 = !{i64 229}
!63 = !{i64 235}
!64 = !{i64 239}
!65 = !{i64 243}
!66 = !{i64 249}
!67 = !{i64 252}
!68 = !{i64 270}
!69 = !{i64 277}
!70 = !{i64 258}
!71 = !{i64 265}
!72 = !{i64 282}
!73 = !{i64 286}
!74 = !{i64 290}
!75 = !{i64 293}
!76 = !{i64 295}
!77 = !{i64 298}
!78 = !{i64 302}
!79 = !{i64 306}
!80 = !{i64 312}
!81 = !{i64 314}
!82 = !{i64 317}
!83 = !{i64 321}
!84 = !{i64 324}
!85 = !{i64 330}
!86 = !{i64 334}
!87 = !{i64 337}
!88 = !{i64 357}
!89 = !{i64 360}
!90 = !{i64 363}
!91 = !{i64 366}
!92 = !{i64 370}
!93 = !{i64 374}
!94 = !{i64 379}
!95 = !{i64 381}
!96 = !{i64 384}
!97 = !{i64 388}
!98 = !{i64 392}
!99 = !{i64 397}
!100 = !{i64 401}
!101 = !{i64 403}
!102 = !{i64 406}
!103 = !{i64 409}
!104 = !{i64 413}
!105 = !{i64 416}
!106 = !{i64 419}
!107 = !{i64 343}
!108 = !{i64 346}
!109 = !{i64 349}
!110 = !{i64 352}
!111 = !{i64 425}
!112 = !{i64 428}
!113 = !{i64 431}
!114 = !{i64 434}
!115 = !{i64 439}
!116 = !{i64 442}
!117 = !{i64 445}
!118 = !{i64 447}
!119 = !{i64 450}
!120 = !{i64 454}
!121 = !{i64 460}
!122 = !{i64 467}
!123 = !{i64 472}
!124 = !{i64 474}
!125 = !{i64 479}
!126 = !{i64 483}
!127 = !{i64 487}
!128 = !{i64 490}
!129 = !{i64 495}
!130 = !{i64 498}
!131 = !{i64 502}
!132 = !{i64 506}
!133 = !{i64 511}
!134 = !{i64 516}
!135 = !{i64 522}
!136 = !{i64 526}
!137 = !{i64 531}
!138 = !{i64 536}
!139 = !{i64 554}
!140 = !{i64 561}
!141 = !{i64 563}
!142 = !{i64 568}
!143 = !{i64 572}
!144 = !{i64 576}
!145 = !{i64 579}
!146 = !{i64 584}
!147 = !{i64 587}
!148 = !{i64 590}
!149 = !{i64 595}
!150 = !{i64 598}
!151 = !{i64 601}
!152 = !{i64 604}
!153 = !{i64 607}
!154 = !{i64 610}
!155 = !{i64 615}
!156 = !{i64 618}
!157 = !{i64 622}
!158 = !{i64 542}
!159 = !{i64 549}
!160 = !{i64 628}
!161 = !{i64 631}
!162 = !{i64 634}
!163 = !{i64 652}
!164 = !{i64 659}
!165 = !{i64 664}
!166 = !{i64 667}
!167 = !{i64 671}
!168 = !{i64 675}
!169 = !{i64 678}
!170 = !{i64 683}
!171 = !{i64 686}
!172 = !{i64 689}
!173 = !{i64 692}
!174 = !{i64 695}
!175 = !{i64 698}
!176 = !{i64 701}
!177 = !{i64 704}
!178 = !{i64 640}
!179 = !{i64 647}
!180 = !{i64 710}
!181 = !{i64 717}
!182 = !{i64 722}
!183 = !{i64 725}
!184 = !{i64 730}
!185 = !{i64 733}
!186 = !{i64 740}
!187 = !{i64 746}
!188 = !{i64 753}
!189 = !{i64 758}
!190 = !{i64 763}
!191 = !{i64 766}
!192 = !{i64 772}
!193 = !{i64 775}
!194 = !{i64 778}
!195 = !{i64 781}
!196 = !{i64 784}
!197 = !{i64 787}
!198 = !{i64 793}
!199 = !{i64 796}
!200 = !{i64 799}
!201 = !{i64 802}
!202 = !{i64 804}
!203 = !{i64 806}
!204 = !{i64 809}
!205 = !{i64 811}
!206 = !{i64 814}
!207 = !{i64 818}
!208 = !{i64 824}
!209 = !{i64 827}
!210 = !{i64 830}
!211 = !{i64 835}
!212 = !{i64 840}
!213 = !{i64 843}
!214 = !{i64 847}
!215 = !{i64 851}
!216 = !{i64 854}
!217 = !{i64 859}
!218 = !{i64 862}
!219 = !{i64 866}
!220 = !{i64 870}
!221 = !{i64 873}
!222 = !{i64 879}
!223 = !{i64 883}
!224 = !{i64 887}
!225 = !{i64 890}
!226 = !{i64 910}
!227 = !{i64 914}
!228 = !{i64 918}
!229 = !{i64 922}
!230 = !{i64 926}
!231 = !{i64 928}
!232 = !{i64 934}
!233 = !{i64 939}
!234 = !{i64 943}
!235 = !{i64 947}
!236 = !{i64 951}
!237 = !{i64 955}
!238 = !{i64 957}
!239 = !{i64 959}
!240 = !{i64 962}
!241 = !{i64 965}
!242 = !{i64 969}
!243 = !{i64 973}
!244 = !{i64 978}
!245 = !{i64 981}
!246 = !{i64 983}
!247 = !{i64 986}
!248 = !{i64 990}
!249 = !{i64 1030}
!250 = !{i64 1033}
!251 = !{i64 896}
!252 = !{i64 899}
!253 = !{i64 902}
!254 = !{i64 905}
!255 = !{i64 1036}
!256 = !{i64 996}
!257 = !{i64 1000}
!258 = !{i64 1004}
!259 = !{i64 1009}
!260 = !{i64 1012}
!261 = !{i64 1025}
!262 = !{i64 1041}
!263 = !{i64 1044}
!264 = !{i64 1018}
