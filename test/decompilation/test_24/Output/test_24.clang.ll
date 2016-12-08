; ModuleID = 'Output/test_24.clang.bc'
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
  %3 = sext i8 80 to i64, !mcsema_real_eip !4
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
  %EAX.9 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.10 = load i32, i32* %EAX.9, !mcsema_real_eip !8
  %30 = zext i32 %EAX_val.10 to i64, !mcsema_real_eip !8
  store i64 %30, i64* %XCX, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !9
  %31 = add i64 %RBP_val.11, -32, !mcsema_real_eip !9
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !9
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.13 = load i32, i32* %ECX.12, !mcsema_real_eip !9
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !9
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.13, i32* %34, !mcsema_real_eip !9
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !10
  %35 = add i64 %RBP_val.14, -32, !mcsema_real_eip !10
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !10
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !10
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !10
  %39 = load i32, i32* %38, !mcsema_real_eip !10
  %40 = sub i32 %39, 37, !mcsema_real_eip !10
  %41 = xor i32 %40, %39, !mcsema_real_eip !10
  %42 = xor i32 %41, 37, !mcsema_real_eip !10
  %43 = and i32 %42, 16, !mcsema_real_eip !10
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !10
  store i1 %44, i1* %AF, !mcsema_real_eip !10
  %45 = trunc i32 %40 to i8, !mcsema_real_eip !10
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !10
  %47 = trunc i8 %46 to i1, !mcsema_real_eip !10
  %48 = xor i1 %47, true, !mcsema_real_eip !10
  store i1 %48, i1* %PF, !mcsema_real_eip !10
  %49 = icmp eq i32 %40, 0, !mcsema_real_eip !10
  store i1 %49, i1* %ZF, !mcsema_real_eip !10
  %50 = lshr i32 %40, 31, !mcsema_real_eip !10
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !10
  store i1 %51, i1* %SF, !mcsema_real_eip !10
  %52 = icmp ult i32 %39, 37, !mcsema_real_eip !10
  store i1 %52, i1* %CF, !mcsema_real_eip !10
  %53 = xor i32 %39, 37, !mcsema_real_eip !10
  %54 = xor i32 %39, %40, !mcsema_real_eip !10
  %55 = and i32 %53, %54, !mcsema_real_eip !10
  %56 = lshr i32 %55, 31, !mcsema_real_eip !10
  %57 = trunc i32 %56 to i1, !mcsema_real_eip !10
  store i1 %57, i1* %OF, !mcsema_real_eip !10
  %58 = load i1, i1* %ZF, !mcsema_real_eip !11
  %59 = icmp eq i1 %58, true, !mcsema_real_eip !11
  br i1 %59, label %block_0x2f, label %block_0x24, !mcsema_real_eip !11

block_0x24:                                       ; preds = %block_0x0
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !12
  %60 = add i64 %RBP_val.23, -32, !mcsema_real_eip !12
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !12
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !12
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !12
  %64 = load i32, i32* %63, !mcsema_real_eip !12
  %65 = zext i32 %64 to i64, !mcsema_real_eip !12
  store i64 %65, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !13
  %66 = add i64 %RBP_val.24, -4, !mcsema_real_eip !13
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !13
  %EAX.25 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.26 = load i32, i32* %EAX.25, !mcsema_real_eip !13
  %68 = ptrtoint i64* %67 to i64, !mcsema_real_eip !13
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.26, i32* %69, !mcsema_real_eip !13
  br label %block_0x417, !mcsema_real_eip !14

block_0x2f:                                       ; preds = %block_0x0
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !15
  %70 = add i64 %RBP_val.15, -16, !mcsema_real_eip !15
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !15
  %72 = load i64, i64* %71, !mcsema_real_eip !15
  store i64 %72, i64* %XAX, !mcsema_real_eip !15
  %RAX_val.16 = load i64, i64* %XAX, !mcsema_real_eip !16
  %73 = add i64 4, %RAX_val.16, !mcsema_real_eip !16
  %74 = xor i64 %73, %RAX_val.16, !mcsema_real_eip !16
  %75 = xor i64 %74, 4, !mcsema_real_eip !16
  %76 = and i64 %75, 16, !mcsema_real_eip !16
  %77 = icmp ne i64 %76, 0, !mcsema_real_eip !16
  store i1 %77, i1* %AF, !mcsema_real_eip !16
  %78 = lshr i64 %73, 63, !mcsema_real_eip !16
  %79 = trunc i64 %78 to i1, !mcsema_real_eip !16
  store i1 %79, i1* %SF, !mcsema_real_eip !16
  %80 = icmp eq i64 %73, 0, !mcsema_real_eip !16
  store i1 %80, i1* %ZF, !mcsema_real_eip !16
  %81 = xor i64 %RAX_val.16, 4, !mcsema_real_eip !16
  %82 = xor i64 %81, -1, !mcsema_real_eip !16
  %83 = xor i64 %RAX_val.16, %73, !mcsema_real_eip !16
  %84 = and i64 %82, %83, !mcsema_real_eip !16
  %85 = lshr i64 %84, 63, !mcsema_real_eip !16
  %86 = and i64 %85, 1, !mcsema_real_eip !16
  %87 = trunc i64 %86 to i1, !mcsema_real_eip !16
  store i1 %87, i1* %OF, !mcsema_real_eip !16
  %88 = trunc i64 %73 to i8, !mcsema_real_eip !16
  %89 = call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !16
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !16
  %91 = xor i1 %90, true, !mcsema_real_eip !16
  store i1 %91, i1* %PF, !mcsema_real_eip !16
  %92 = icmp ult i64 %73, %RAX_val.16, !mcsema_real_eip !16
  store i1 %92, i1* %CF, !mcsema_real_eip !16
  store i64 %73, i64* %XAX, !mcsema_real_eip !16
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !17
  %93 = add i64 %RBP_val.17, -16, !mcsema_real_eip !17
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !17
  %RAX_val.18 = load i64, i64* %XAX, !mcsema_real_eip !17
  store i64 %RAX_val.18, i64* %94, !mcsema_real_eip !17
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !18
  %95 = add i64 %RBP_val.19, -16, !mcsema_real_eip !18
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !18
  %97 = load i64, i64* %96, !mcsema_real_eip !18
  store i64 %97, i64* %XAX, !mcsema_real_eip !18
  %RAX_val.20 = load i64, i64* %XAX, !mcsema_real_eip !19
  %98 = add i64 %RAX_val.20, 0, !mcsema_real_eip !19
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !19
  %100 = ptrtoint i64* %99 to i64, !mcsema_real_eip !19
  %101 = inttoptr i64 %100 to i8*, !mcsema_real_eip !19
  %102 = load i8, i8* %101, !mcsema_real_eip !19
  %103 = sext i8 %102 to i32, !mcsema_real_eip !19
  %104 = zext i32 %103 to i64, !mcsema_real_eip !19
  store i64 %104, i64* %XCX, !mcsema_real_eip !19
  %ECX.21 = bitcast i64* %XCX to i32*, !mcsema_real_eip !20
  %ECX_val.22 = load i32, i32* %ECX.21, !mcsema_real_eip !20
  %105 = sub i32 %ECX_val.22, 100, !mcsema_real_eip !20
  %106 = xor i32 %105, %ECX_val.22, !mcsema_real_eip !20
  %107 = xor i32 %106, 100, !mcsema_real_eip !20
  %108 = and i32 %107, 16, !mcsema_real_eip !20
  %109 = icmp ne i32 %108, 0, !mcsema_real_eip !20
  store i1 %109, i1* %AF, !mcsema_real_eip !20
  %110 = trunc i32 %105 to i8, !mcsema_real_eip !20
  %111 = call i8 @llvm.ctpop.i8(i8 %110), !mcsema_real_eip !20
  %112 = trunc i8 %111 to i1, !mcsema_real_eip !20
  %113 = xor i1 %112, true, !mcsema_real_eip !20
  store i1 %113, i1* %PF, !mcsema_real_eip !20
  %114 = icmp eq i32 %105, 0, !mcsema_real_eip !20
  store i1 %114, i1* %ZF, !mcsema_real_eip !20
  %115 = lshr i32 %105, 31, !mcsema_real_eip !20
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !20
  store i1 %116, i1* %SF, !mcsema_real_eip !20
  %117 = icmp ult i32 %ECX_val.22, 100, !mcsema_real_eip !20
  store i1 %117, i1* %CF, !mcsema_real_eip !20
  %118 = xor i32 %ECX_val.22, 100, !mcsema_real_eip !20
  %119 = xor i32 %ECX_val.22, %105, !mcsema_real_eip !20
  %120 = and i32 %118, %119, !mcsema_real_eip !20
  %121 = lshr i32 %120, 31, !mcsema_real_eip !20
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !20
  store i1 %122, i1* %OF, !mcsema_real_eip !20
  %123 = load i1, i1* %ZF, !mcsema_real_eip !21
  %124 = icmp eq i1 %123, true, !mcsema_real_eip !21
  br i1 %124, label %block_0x57, label %block_0x4b, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %block_0x2f
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !22
  %125 = add i64 %RBP_val.33, -4, !mcsema_real_eip !22
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !22
  %127 = ptrtoint i64* %126 to i64, !mcsema_real_eip !22
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !22
  store i32 -2, i32* %128, !mcsema_real_eip !22
  br label %block_0x417, !mcsema_real_eip !23

block_0x57:                                       ; preds = %block_0x2f
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !24
  %129 = add i64 %RBP_val.27, -16, !mcsema_real_eip !24
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !24
  %131 = load i64, i64* %130, !mcsema_real_eip !24
  store i64 %131, i64* %XAX, !mcsema_real_eip !24
  %RAX_val.28 = load i64, i64* %XAX, !mcsema_real_eip !25
  %132 = add i64 %RAX_val.28, 1, !mcsema_real_eip !25
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !25
  %134 = ptrtoint i64* %133 to i64, !mcsema_real_eip !25
  %135 = inttoptr i64 %134 to i8*, !mcsema_real_eip !25
  %136 = load i8, i8* %135, !mcsema_real_eip !25
  %137 = zext i8 %136 to i32, !mcsema_real_eip !25
  %138 = zext i32 %137 to i64, !mcsema_real_eip !25
  store i64 %138, i64* %XDI, !mcsema_real_eip !25
  %RDI_val.29 = load i64, i64* %XDI, !mcsema_real_eip !26
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %139 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !26
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !26
  store i64 -2415393069852865332, i64* %140, !mcsema_real_eip !26
  store i64 %139, i64* %XSP, !mcsema_real_eip !26
  %141 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.29), !mcsema_real_eip !26
  store i64 %141, i64* %XAX, !mcsema_real_eip !26
  %EAX.31 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.32 = load i32, i32* %EAX.31, !mcsema_real_eip !27
  %142 = sub i32 %EAX_val.32, 9, !mcsema_real_eip !27
  %143 = xor i32 %142, %EAX_val.32, !mcsema_real_eip !27
  %144 = xor i32 %143, 9, !mcsema_real_eip !27
  %145 = and i32 %144, 16, !mcsema_real_eip !27
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !27
  store i1 %146, i1* %AF, !mcsema_real_eip !27
  %147 = trunc i32 %142 to i8, !mcsema_real_eip !27
  %148 = call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !27
  %149 = trunc i8 %148 to i1, !mcsema_real_eip !27
  %150 = xor i1 %149, true, !mcsema_real_eip !27
  store i1 %150, i1* %PF, !mcsema_real_eip !27
  %151 = icmp eq i32 %142, 0, !mcsema_real_eip !27
  store i1 %151, i1* %ZF, !mcsema_real_eip !27
  %152 = lshr i32 %142, 31, !mcsema_real_eip !27
  %153 = trunc i32 %152 to i1, !mcsema_real_eip !27
  store i1 %153, i1* %SF, !mcsema_real_eip !27
  %154 = icmp ult i32 %EAX_val.32, 9, !mcsema_real_eip !27
  store i1 %154, i1* %CF, !mcsema_real_eip !27
  %155 = xor i32 %EAX_val.32, 9, !mcsema_real_eip !27
  %156 = xor i32 %EAX_val.32, %142, !mcsema_real_eip !27
  %157 = and i32 %155, %156, !mcsema_real_eip !27
  %158 = lshr i32 %157, 31, !mcsema_real_eip !27
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !27
  store i1 %159, i1* %OF, !mcsema_real_eip !27
  %160 = load i1, i1* %ZF, !mcsema_real_eip !28
  %161 = icmp eq i1 %160, true, !mcsema_real_eip !28
  br i1 %161, label %block_0x79, label %block_0x6d, !mcsema_real_eip !28

block_0x417:                                      ; preds = %block_0x411, %block_0x338, %block_0x2ea, %block_0x2c6, %block_0x1cc, %block_0x10e, %block_0xcb, %block_0x98, %block_0x6d, %block_0x4b, %block_0x24
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !29
  %162 = add i64 %RBP_val.34, -4, !mcsema_real_eip !29
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !29
  %164 = ptrtoint i64* %163 to i64, !mcsema_real_eip !29
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !29
  %166 = load i32, i32* %165, !mcsema_real_eip !29
  %167 = zext i32 %166 to i64, !mcsema_real_eip !29
  store i64 %167, i64* %XAX, !mcsema_real_eip !29
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !30
  %168 = add i64 80, %RSP_val.35, !mcsema_real_eip !30
  %169 = xor i64 %168, %RSP_val.35, !mcsema_real_eip !30
  %170 = xor i64 %169, 80, !mcsema_real_eip !30
  %171 = and i64 %170, 16, !mcsema_real_eip !30
  %172 = icmp ne i64 %171, 0, !mcsema_real_eip !30
  store i1 %172, i1* %AF, !mcsema_real_eip !30
  %173 = lshr i64 %168, 63, !mcsema_real_eip !30
  %174 = trunc i64 %173 to i1, !mcsema_real_eip !30
  store i1 %174, i1* %SF, !mcsema_real_eip !30
  %175 = icmp eq i64 %168, 0, !mcsema_real_eip !30
  store i1 %175, i1* %ZF, !mcsema_real_eip !30
  %176 = xor i64 %RSP_val.35, 80, !mcsema_real_eip !30
  %177 = xor i64 %176, -1, !mcsema_real_eip !30
  %178 = xor i64 %RSP_val.35, %168, !mcsema_real_eip !30
  %179 = and i64 %177, %178, !mcsema_real_eip !30
  %180 = lshr i64 %179, 63, !mcsema_real_eip !30
  %181 = and i64 %180, 1, !mcsema_real_eip !30
  %182 = trunc i64 %181 to i1, !mcsema_real_eip !30
  store i1 %182, i1* %OF, !mcsema_real_eip !30
  %183 = trunc i64 %168 to i8, !mcsema_real_eip !30
  %184 = call i8 @llvm.ctpop.i8(i8 %183), !mcsema_real_eip !30
  %185 = trunc i8 %184 to i1, !mcsema_real_eip !30
  %186 = xor i1 %185, true, !mcsema_real_eip !30
  store i1 %186, i1* %PF, !mcsema_real_eip !30
  %187 = icmp ult i64 %168, %RSP_val.35, !mcsema_real_eip !30
  store i1 %187, i1* %CF, !mcsema_real_eip !30
  store i64 %168, i64* %XSP, !mcsema_real_eip !30
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !31
  %188 = inttoptr i64 %RSP_val.36 to i64*, !mcsema_real_eip !31
  %189 = load i64, i64* %188, !mcsema_real_eip !31
  store i64 %189, i64* %XBP, !mcsema_real_eip !31
  %190 = add i64 %RSP_val.36, 8, !mcsema_real_eip !31
  store i64 %190, i64* %XSP, !mcsema_real_eip !31
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !32
  %191 = add i64 %RSP_val.37, 8, !mcsema_real_eip !32
  %192 = inttoptr i64 %RSP_val.37 to i64*, !mcsema_real_eip !32
  %193 = load i64, i64* %192, !mcsema_real_eip !32
  store i64 %193, i64* %XIP, !mcsema_real_eip !32
  store i64 %191, i64* %XSP, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32

block_0x6d:                                       ; preds = %block_0x57
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !33
  %194 = add i64 %RBP_val.50, -4, !mcsema_real_eip !33
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !33
  %196 = ptrtoint i64* %195 to i64, !mcsema_real_eip !33
  %197 = inttoptr i64 %196 to i32*, !mcsema_real_eip !33
  store i32 -3, i32* %197, !mcsema_real_eip !33
  br label %block_0x417, !mcsema_real_eip !34

block_0x79:                                       ; preds = %block_0x57
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !35
  %198 = add i64 %RBP_val.38, -16, !mcsema_real_eip !35
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !35
  %200 = load i64, i64* %199, !mcsema_real_eip !35
  store i64 %200, i64* %XAX, !mcsema_real_eip !35
  %RAX_val.39 = load i64, i64* %XAX, !mcsema_real_eip !36
  %201 = add i64 %RAX_val.39, 2, !mcsema_real_eip !36
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !36
  %203 = ptrtoint i64* %202 to i64, !mcsema_real_eip !36
  %204 = inttoptr i64 %203 to i8*, !mcsema_real_eip !36
  %205 = load i8, i8* %204, !mcsema_real_eip !36
  %206 = zext i8 %205 to i32, !mcsema_real_eip !36
  %207 = zext i32 %206 to i64, !mcsema_real_eip !36
  store i64 %207, i64* %XDI, !mcsema_real_eip !36
  %RDI_val.40 = load i64, i64* %XDI, !mcsema_real_eip !37
  %RSP_val.41 = load i64, i64* %XSP, !mcsema_real_eip !37
  %208 = sub i64 %RSP_val.41, 8, !mcsema_real_eip !37
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !37
  store i64 -2415393069852865332, i64* %209, !mcsema_real_eip !37
  store i64 %208, i64* %XSP, !mcsema_real_eip !37
  %210 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.40), !mcsema_real_eip !37
  store i64 %210, i64* %XAX, !mcsema_real_eip !37
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !38
  %211 = add i64 %RBP_val.42, -24, !mcsema_real_eip !38
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !38
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !38
  %213 = ptrtoint i64* %212 to i64, !mcsema_real_eip !38
  %214 = inttoptr i64 %213 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.44, i32* %214, !mcsema_real_eip !38
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !39
  %215 = add i64 %RBP_val.45, -24, !mcsema_real_eip !39
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !39
  %217 = ptrtoint i64* %216 to i64, !mcsema_real_eip !39
  %218 = inttoptr i64 %217 to i32*, !mcsema_real_eip !39
  %219 = load i32, i32* %218, !mcsema_real_eip !39
  %220 = zext i32 %219 to i64, !mcsema_real_eip !39
  store i64 %220, i64* %XAX, !mcsema_real_eip !39
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !40
  %221 = and i32 1, 31, !mcsema_real_eip !40
  %222 = sub i32 1, 1, !mcsema_real_eip !40
  %223 = icmp ne i32 %221, 0, !mcsema_real_eip !40
  %224 = select i1 %223, i32 %222, i32 0, !mcsema_real_eip !40
  %225 = select i1 %223, i32 1, i32 0, !mcsema_real_eip !40
  %226 = shl i32 %EAX_val.47, %224, !mcsema_real_eip !40
  %227 = and i32 %226, -2147483648, !mcsema_real_eip !40
  %228 = icmp ne i32 %227, 0, !mcsema_real_eip !40
  %229 = load i1, i1* %CF, !mcsema_real_eip !40
  %230 = select i1 %223, i1 %228, i1 %229, !mcsema_real_eip !40
  %231 = shl i32 %226, %225, !mcsema_real_eip !40
  %232 = icmp eq i32 %221, 1, !mcsema_real_eip !40
  %233 = load i1, i1* %OF, !mcsema_real_eip !40
  %234 = and i32 %231, -2147483648, !mcsema_real_eip !40
  %235 = icmp ne i32 %234, 0, !mcsema_real_eip !40
  %236 = xor i1 %235, %230, !mcsema_real_eip !40
  %237 = select i1 %232, i1 %236, i1 %233, !mcsema_real_eip !40
  store i1 %237, i1* %OF, !mcsema_real_eip !40
  store i1 %230, i1* %CF, !mcsema_real_eip !40
  %238 = load i1, i1* %ZF, !mcsema_real_eip !40
  %239 = icmp eq i32 %231, 0, !mcsema_real_eip !40
  %240 = select i1 %223, i1 %239, i1 %238, !mcsema_real_eip !40
  store i1 %240, i1* %ZF, !mcsema_real_eip !40
  %241 = load i1, i1* %SF, !mcsema_real_eip !40
  %242 = icmp slt i32 %231, 0, !mcsema_real_eip !40
  %243 = select i1 %223, i1 %242, i1 %241, !mcsema_real_eip !40
  store i1 %243, i1* %SF, !mcsema_real_eip !40
  %244 = load i1, i1* %PF, !mcsema_real_eip !40
  %245 = trunc i32 %231 to i8, !mcsema_real_eip !40
  %246 = call i8 @llvm.ctpop.i8(i8 %245), !mcsema_real_eip !40
  %247 = trunc i8 %246 to i1, !mcsema_real_eip !40
  %248 = xor i1 %247, true, !mcsema_real_eip !40
  store i1 %248, i1* %PF, !mcsema_real_eip !40
  %249 = load i1, i1* %PF, !mcsema_real_eip !40
  %250 = select i1 %223, i1 %249, i1 %244, !mcsema_real_eip !40
  store i1 %250, i1* %PF, !mcsema_real_eip !40
  %251 = zext i32 %231 to i64, !mcsema_real_eip !40
  store i64 %251, i64* %XAX, !mcsema_real_eip !40
  %EAX.48 = bitcast i64* %XAX to i32*, !mcsema_real_eip !41
  %EAX_val.49 = load i32, i32* %EAX.48, !mcsema_real_eip !41
  %252 = sub i32 %EAX_val.49, 26, !mcsema_real_eip !41
  %253 = xor i32 %252, %EAX_val.49, !mcsema_real_eip !41
  %254 = xor i32 %253, 26, !mcsema_real_eip !41
  %255 = and i32 %254, 16, !mcsema_real_eip !41
  %256 = icmp ne i32 %255, 0, !mcsema_real_eip !41
  store i1 %256, i1* %AF, !mcsema_real_eip !41
  %257 = trunc i32 %252 to i8, !mcsema_real_eip !41
  %258 = call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !41
  %259 = trunc i8 %258 to i1, !mcsema_real_eip !41
  %260 = xor i1 %259, true, !mcsema_real_eip !41
  store i1 %260, i1* %PF, !mcsema_real_eip !41
  %261 = icmp eq i32 %252, 0, !mcsema_real_eip !41
  store i1 %261, i1* %ZF, !mcsema_real_eip !41
  %262 = lshr i32 %252, 31, !mcsema_real_eip !41
  %263 = trunc i32 %262 to i1, !mcsema_real_eip !41
  store i1 %263, i1* %SF, !mcsema_real_eip !41
  %264 = icmp ult i32 %EAX_val.49, 26, !mcsema_real_eip !41
  store i1 %264, i1* %CF, !mcsema_real_eip !41
  %265 = xor i32 %EAX_val.49, 26, !mcsema_real_eip !41
  %266 = xor i32 %EAX_val.49, %252, !mcsema_real_eip !41
  %267 = and i32 %265, %266, !mcsema_real_eip !41
  %268 = lshr i32 %267, 31, !mcsema_real_eip !41
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !41
  store i1 %269, i1* %OF, !mcsema_real_eip !41
  %270 = load i1, i1* %ZF, !mcsema_real_eip !42
  %271 = icmp eq i1 %270, true, !mcsema_real_eip !42
  br i1 %271, label %block_0xa4, label %block_0x98, !mcsema_real_eip !42

block_0x98:                                       ; preds = %block_0x79
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !43
  %272 = add i64 %RBP_val.71, -4, !mcsema_real_eip !43
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !43
  %274 = ptrtoint i64* %273 to i64, !mcsema_real_eip !43
  %275 = inttoptr i64 %274 to i32*, !mcsema_real_eip !43
  store i32 -4, i32* %275, !mcsema_real_eip !43
  br label %block_0x417, !mcsema_real_eip !44

block_0xa4:                                       ; preds = %block_0x79
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !45
  %276 = add i64 %RBP_val.51, -16, !mcsema_real_eip !45
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !45
  %278 = load i64, i64* %277, !mcsema_real_eip !45
  store i64 %278, i64* %XAX, !mcsema_real_eip !45
  %RAX_val.52 = load i64, i64* %XAX, !mcsema_real_eip !46
  %279 = add i64 %RAX_val.52, 3, !mcsema_real_eip !46
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !46
  %281 = ptrtoint i64* %280 to i64, !mcsema_real_eip !46
  %282 = inttoptr i64 %281 to i8*, !mcsema_real_eip !46
  %283 = load i8, i8* %282, !mcsema_real_eip !46
  %284 = zext i8 %283 to i32, !mcsema_real_eip !46
  %285 = zext i32 %284 to i64, !mcsema_real_eip !46
  store i64 %285, i64* %XDI, !mcsema_real_eip !46
  %RDI_val.53 = load i64, i64* %XDI, !mcsema_real_eip !47
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !47
  %286 = sub i64 %RSP_val.54, 8, !mcsema_real_eip !47
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !47
  store i64 -2415393069852865332, i64* %287, !mcsema_real_eip !47
  store i64 %286, i64* %XSP, !mcsema_real_eip !47
  %288 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.53), !mcsema_real_eip !47
  store i64 %288, i64* %XAX, !mcsema_real_eip !47
  %289 = zext i32 2 to i64, !mcsema_real_eip !48
  store i64 %289, i64* %XDI, !mcsema_real_eip !48
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !49
  %290 = add i64 %RBP_val.55, -28, !mcsema_real_eip !49
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !49
  %EAX.56 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.57 = load i32, i32* %EAX.56, !mcsema_real_eip !49
  %292 = ptrtoint i64* %291 to i64, !mcsema_real_eip !49
  %293 = inttoptr i64 %292 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.57, i32* %293, !mcsema_real_eip !49
  %RBP_val.58 = load i64, i64* %XBP, !mcsema_real_eip !50
  %294 = add i64 %RBP_val.58, -28, !mcsema_real_eip !50
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !50
  %296 = ptrtoint i64* %295 to i64, !mcsema_real_eip !50
  %297 = inttoptr i64 %296 to i32*, !mcsema_real_eip !50
  %298 = load i32, i32* %297, !mcsema_real_eip !50
  %299 = zext i32 %298 to i64, !mcsema_real_eip !50
  store i64 %299, i64* %XAX, !mcsema_real_eip !50
  %EAX.59 = bitcast i64* %XAX to i32*, !mcsema_real_eip !51
  %EAX_val.60 = load i32, i32* %EAX.59, !mcsema_real_eip !51
  %300 = add i32 1, %EAX_val.60, !mcsema_real_eip !51
  %301 = xor i32 %300, %EAX_val.60, !mcsema_real_eip !51
  %302 = xor i32 %301, 1, !mcsema_real_eip !51
  %303 = and i32 %302, 16, !mcsema_real_eip !51
  %304 = icmp ne i32 %303, 0, !mcsema_real_eip !51
  store i1 %304, i1* %AF, !mcsema_real_eip !51
  %305 = lshr i32 %300, 31, !mcsema_real_eip !51
  %306 = trunc i32 %305 to i1, !mcsema_real_eip !51
  store i1 %306, i1* %SF, !mcsema_real_eip !51
  %307 = icmp eq i32 %300, 0, !mcsema_real_eip !51
  store i1 %307, i1* %ZF, !mcsema_real_eip !51
  %308 = xor i32 %EAX_val.60, 1, !mcsema_real_eip !51
  %309 = xor i32 %308, -1, !mcsema_real_eip !51
  %310 = xor i32 %EAX_val.60, %300, !mcsema_real_eip !51
  %311 = and i32 %309, %310, !mcsema_real_eip !51
  %312 = lshr i32 %311, 31, !mcsema_real_eip !51
  %313 = and i32 %312, 1, !mcsema_real_eip !51
  %314 = trunc i32 %313 to i1, !mcsema_real_eip !51
  store i1 %314, i1* %OF, !mcsema_real_eip !51
  %315 = trunc i32 %300 to i8, !mcsema_real_eip !51
  %316 = call i8 @llvm.ctpop.i8(i8 %315), !mcsema_real_eip !51
  %317 = trunc i8 %316 to i1, !mcsema_real_eip !51
  %318 = xor i1 %317, true, !mcsema_real_eip !51
  store i1 %318, i1* %PF, !mcsema_real_eip !51
  %319 = icmp ult i32 %300, %EAX_val.60, !mcsema_real_eip !51
  store i1 %319, i1* %CF, !mcsema_real_eip !51
  %320 = zext i32 %300 to i64, !mcsema_real_eip !51
  store i64 %320, i64* %XAX, !mcsema_real_eip !51
  %EAX.61 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.62 = load i32, i32* %EAX.61, !mcsema_real_eip !52
  %321 = and i32 %EAX_val.62, -2147483648, !mcsema_real_eip !52
  %322 = icmp eq i32 %321, 0, !mcsema_real_eip !52
  %323 = select i1 %322, i32 0, i32 -1, !mcsema_real_eip !52
  %324 = zext i32 %323 to i64, !mcsema_real_eip !52
  store i64 %324, i64* %XDX, !mcsema_real_eip !52
  %EDI.63 = bitcast i64* %XDI to i32*, !mcsema_real_eip !53
  %EDI_val.64 = load i32, i32* %EDI.63, !mcsema_real_eip !53
  %EAX.65 = bitcast i64* %XAX to i32*, !mcsema_real_eip !53
  %EAX_val.66 = load i32, i32* %EAX.65, !mcsema_real_eip !53
  %EDX.67 = bitcast i64* %XDX to i32*, !mcsema_real_eip !53
  %EDX_val.68 = load i32, i32* %EDX.67, !mcsema_real_eip !53
  %325 = zext i32 %EDX_val.68 to i64, !mcsema_real_eip !53
  %326 = shl i64 %325, 32, !mcsema_real_eip !53
  %327 = sext i32 %EAX_val.66 to i64, !mcsema_real_eip !53
  %328 = or i64 %326, %327, !mcsema_real_eip !53
  %329 = sext i32 %EDI_val.64 to i64, !mcsema_real_eip !53
  %330 = sdiv i64 %328, %329, !mcsema_real_eip !53
  %331 = srem i64 %328, %329, !mcsema_real_eip !53
  %332 = trunc i64 %331 to i32, !mcsema_real_eip !53
  %333 = trunc i64 %330 to i32, !mcsema_real_eip !53
  %334 = zext i32 %332 to i64, !mcsema_real_eip !53
  store i64 %334, i64* %XDX, !mcsema_real_eip !53
  %335 = zext i32 %333 to i64, !mcsema_real_eip !53
  store i64 %335, i64* %XAX, !mcsema_real_eip !53
  %EAX.69 = bitcast i64* %XAX to i32*, !mcsema_real_eip !54
  %EAX_val.70 = load i32, i32* %EAX.69, !mcsema_real_eip !54
  %336 = sub i32 %EAX_val.70, 7, !mcsema_real_eip !54
  %337 = xor i32 %336, %EAX_val.70, !mcsema_real_eip !54
  %338 = xor i32 %337, 7, !mcsema_real_eip !54
  %339 = and i32 %338, 16, !mcsema_real_eip !54
  %340 = icmp ne i32 %339, 0, !mcsema_real_eip !54
  store i1 %340, i1* %AF, !mcsema_real_eip !54
  %341 = trunc i32 %336 to i8, !mcsema_real_eip !54
  %342 = call i8 @llvm.ctpop.i8(i8 %341), !mcsema_real_eip !54
  %343 = trunc i8 %342 to i1, !mcsema_real_eip !54
  %344 = xor i1 %343, true, !mcsema_real_eip !54
  store i1 %344, i1* %PF, !mcsema_real_eip !54
  %345 = icmp eq i32 %336, 0, !mcsema_real_eip !54
  store i1 %345, i1* %ZF, !mcsema_real_eip !54
  %346 = lshr i32 %336, 31, !mcsema_real_eip !54
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !54
  store i1 %347, i1* %SF, !mcsema_real_eip !54
  %348 = icmp ult i32 %EAX_val.70, 7, !mcsema_real_eip !54
  store i1 %348, i1* %CF, !mcsema_real_eip !54
  %349 = xor i32 %EAX_val.70, 7, !mcsema_real_eip !54
  %350 = xor i32 %EAX_val.70, %336, !mcsema_real_eip !54
  %351 = and i32 %349, %350, !mcsema_real_eip !54
  %352 = lshr i32 %351, 31, !mcsema_real_eip !54
  %353 = trunc i32 %352 to i1, !mcsema_real_eip !54
  store i1 %353, i1* %OF, !mcsema_real_eip !54
  %354 = load i1, i1* %ZF, !mcsema_real_eip !55
  %355 = icmp eq i1 %354, true, !mcsema_real_eip !55
  br i1 %355, label %block_0xd7, label %block_0xcb, !mcsema_real_eip !55

block_0xcb:                                       ; preds = %block_0xa4
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !56
  %356 = add i64 %RBP_val.78, -4, !mcsema_real_eip !56
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !56
  %358 = ptrtoint i64* %357 to i64, !mcsema_real_eip !56
  %359 = inttoptr i64 %358 to i32*, !mcsema_real_eip !56
  store i32 -5, i32* %359, !mcsema_real_eip !56
  br label %block_0x417, !mcsema_real_eip !57

block_0xd7:                                       ; preds = %block_0xa4
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !58
  %360 = add i64 %RBP_val.72, -16, !mcsema_real_eip !58
  %361 = inttoptr i64 %360 to i64*, !mcsema_real_eip !58
  %362 = load i64, i64* %361, !mcsema_real_eip !58
  store i64 %362, i64* %XAX, !mcsema_real_eip !58
  %RAX_val.73 = load i64, i64* %XAX, !mcsema_real_eip !59
  %363 = add i64 %RAX_val.73, 4, !mcsema_real_eip !59
  %364 = inttoptr i64 %363 to i64*, !mcsema_real_eip !59
  %365 = ptrtoint i64* %364 to i64, !mcsema_real_eip !59
  %366 = inttoptr i64 %365 to i8*, !mcsema_real_eip !59
  %367 = load i8, i8* %366, !mcsema_real_eip !59
  %368 = sext i8 %367 to i32, !mcsema_real_eip !59
  %369 = zext i32 %368 to i64, !mcsema_real_eip !59
  store i64 %369, i64* %XCX, !mcsema_real_eip !59
  %ECX.74 = bitcast i64* %XCX to i32*, !mcsema_real_eip !60
  %ECX_val.75 = load i32, i32* %ECX.74, !mcsema_real_eip !60
  %370 = and i32 %ECX_val.75, 15, !mcsema_real_eip !60
  %371 = lshr i32 %370, 31, !mcsema_real_eip !60
  %372 = trunc i32 %371 to i1, !mcsema_real_eip !60
  store i1 %372, i1* %SF, !mcsema_real_eip !60
  %373 = icmp eq i32 %370, 0, !mcsema_real_eip !60
  store i1 %373, i1* %ZF, !mcsema_real_eip !60
  %374 = trunc i32 %370 to i8, !mcsema_real_eip !60
  %375 = call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !60
  %376 = trunc i8 %375 to i1, !mcsema_real_eip !60
  %377 = xor i1 %376, true, !mcsema_real_eip !60
  store i1 %377, i1* %PF, !mcsema_real_eip !60
  store i1 false, i1* %OF, !mcsema_real_eip !60
  store i1 false, i1* %CF, !mcsema_real_eip !60
  store i1 undef, i1* %AF, !mcsema_real_eip !60
  %378 = zext i32 %370 to i64, !mcsema_real_eip !60
  store i64 %378, i64* %XCX, !mcsema_real_eip !60
  %ECX.76 = bitcast i64* %XCX to i32*, !mcsema_real_eip !61
  %ECX_val.77 = load i32, i32* %ECX.76, !mcsema_real_eip !61
  %379 = sub i32 %ECX_val.77, 1, !mcsema_real_eip !61
  %380 = xor i32 %379, %ECX_val.77, !mcsema_real_eip !61
  %381 = xor i32 %380, 1, !mcsema_real_eip !61
  %382 = and i32 %381, 16, !mcsema_real_eip !61
  %383 = icmp ne i32 %382, 0, !mcsema_real_eip !61
  store i1 %383, i1* %AF, !mcsema_real_eip !61
  %384 = trunc i32 %379 to i8, !mcsema_real_eip !61
  %385 = call i8 @llvm.ctpop.i8(i8 %384), !mcsema_real_eip !61
  %386 = trunc i8 %385 to i1, !mcsema_real_eip !61
  %387 = xor i1 %386, true, !mcsema_real_eip !61
  store i1 %387, i1* %PF, !mcsema_real_eip !61
  %388 = icmp eq i32 %379, 0, !mcsema_real_eip !61
  store i1 %388, i1* %ZF, !mcsema_real_eip !61
  %389 = lshr i32 %379, 31, !mcsema_real_eip !61
  %390 = trunc i32 %389 to i1, !mcsema_real_eip !61
  store i1 %390, i1* %SF, !mcsema_real_eip !61
  %391 = icmp ult i32 %ECX_val.77, 1, !mcsema_real_eip !61
  store i1 %391, i1* %CF, !mcsema_real_eip !61
  %392 = xor i32 %ECX_val.77, 1, !mcsema_real_eip !61
  %393 = xor i32 %ECX_val.77, %379, !mcsema_real_eip !61
  %394 = and i32 %392, %393, !mcsema_real_eip !61
  %395 = lshr i32 %394, 31, !mcsema_real_eip !61
  %396 = trunc i32 %395 to i1, !mcsema_real_eip !61
  store i1 %396, i1* %OF, !mcsema_real_eip !61
  %397 = load i1, i1* %ZF, !mcsema_real_eip !62
  %398 = icmp eq i1 %397, false, !mcsema_real_eip !62
  br i1 %398, label %block_0x10e, label %block_0xeb, !mcsema_real_eip !62

block_0xeb:                                       ; preds = %block_0xd7
  %RBP_val.80 = load i64, i64* %XBP, !mcsema_real_eip !63
  %399 = add i64 %RBP_val.80, -16, !mcsema_real_eip !63
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !63
  %401 = load i64, i64* %400, !mcsema_real_eip !63
  store i64 %401, i64* %XAX, !mcsema_real_eip !63
  %RAX_val.81 = load i64, i64* %XAX, !mcsema_real_eip !64
  %402 = add i64 %RAX_val.81, 4, !mcsema_real_eip !64
  %403 = inttoptr i64 %402 to i64*, !mcsema_real_eip !64
  %404 = ptrtoint i64* %403 to i64, !mcsema_real_eip !64
  %405 = inttoptr i64 %404 to i8*, !mcsema_real_eip !64
  %406 = load i8, i8* %405, !mcsema_real_eip !64
  %407 = sext i8 %406 to i32, !mcsema_real_eip !64
  %408 = zext i32 %407 to i64, !mcsema_real_eip !64
  store i64 %408, i64* %XCX, !mcsema_real_eip !64
  %ECX.82 = bitcast i64* %XCX to i32*, !mcsema_real_eip !65
  %ECX_val.83 = load i32, i32* %ECX.82, !mcsema_real_eip !65
  %409 = and i32 %ECX_val.83, 240, !mcsema_real_eip !65
  %410 = lshr i32 %409, 31, !mcsema_real_eip !65
  %411 = trunc i32 %410 to i1, !mcsema_real_eip !65
  store i1 %411, i1* %SF, !mcsema_real_eip !65
  %412 = icmp eq i32 %409, 0, !mcsema_real_eip !65
  store i1 %412, i1* %ZF, !mcsema_real_eip !65
  %413 = trunc i32 %409 to i8, !mcsema_real_eip !65
  %414 = call i8 @llvm.ctpop.i8(i8 %413), !mcsema_real_eip !65
  %415 = trunc i8 %414 to i1, !mcsema_real_eip !65
  %416 = xor i1 %415, true, !mcsema_real_eip !65
  store i1 %416, i1* %PF, !mcsema_real_eip !65
  store i1 false, i1* %OF, !mcsema_real_eip !65
  store i1 false, i1* %CF, !mcsema_real_eip !65
  store i1 undef, i1* %AF, !mcsema_real_eip !65
  %417 = zext i32 %409 to i64, !mcsema_real_eip !65
  store i64 %417, i64* %XCX, !mcsema_real_eip !65
  %ECX.84 = bitcast i64* %XCX to i32*, !mcsema_real_eip !66
  %ECX_val.85 = load i32, i32* %ECX.84, !mcsema_real_eip !66
  %418 = sub i32 %ECX_val.85, 48, !mcsema_real_eip !66
  %419 = xor i32 %418, %ECX_val.85, !mcsema_real_eip !66
  %420 = xor i32 %419, 48, !mcsema_real_eip !66
  %421 = and i32 %420, 16, !mcsema_real_eip !66
  %422 = icmp ne i32 %421, 0, !mcsema_real_eip !66
  store i1 %422, i1* %AF, !mcsema_real_eip !66
  %423 = trunc i32 %418 to i8, !mcsema_real_eip !66
  %424 = call i8 @llvm.ctpop.i8(i8 %423), !mcsema_real_eip !66
  %425 = trunc i8 %424 to i1, !mcsema_real_eip !66
  %426 = xor i1 %425, true, !mcsema_real_eip !66
  store i1 %426, i1* %PF, !mcsema_real_eip !66
  %427 = icmp eq i32 %418, 0, !mcsema_real_eip !66
  store i1 %427, i1* %ZF, !mcsema_real_eip !66
  %428 = lshr i32 %418, 31, !mcsema_real_eip !66
  %429 = trunc i32 %428 to i1, !mcsema_real_eip !66
  store i1 %429, i1* %SF, !mcsema_real_eip !66
  %430 = icmp ult i32 %ECX_val.85, 48, !mcsema_real_eip !66
  store i1 %430, i1* %CF, !mcsema_real_eip !66
  %431 = xor i32 %ECX_val.85, 48, !mcsema_real_eip !66
  %432 = xor i32 %ECX_val.85, %418, !mcsema_real_eip !66
  %433 = and i32 %431, %432, !mcsema_real_eip !66
  %434 = lshr i32 %433, 31, !mcsema_real_eip !66
  %435 = trunc i32 %434 to i1, !mcsema_real_eip !66
  store i1 %435, i1* %OF, !mcsema_real_eip !66
  %436 = load i1, i1* %ZF, !mcsema_real_eip !67
  %437 = icmp eq i1 %436, false, !mcsema_real_eip !67
  br i1 %437, label %block_0x10e, label %block_0x102, !mcsema_real_eip !67

block_0x10e:                                      ; preds = %block_0xeb, %block_0xd7
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !68
  %438 = add i64 %RBP_val.79, -4, !mcsema_real_eip !68
  %439 = inttoptr i64 %438 to i64*, !mcsema_real_eip !68
  %440 = ptrtoint i64* %439 to i64, !mcsema_real_eip !68
  %441 = inttoptr i64 %440 to i32*, !mcsema_real_eip !68
  store i32 -6, i32* %441, !mcsema_real_eip !68
  br label %block_0x417, !mcsema_real_eip !69

block_0x102:                                      ; preds = %block_0xeb
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !70
  %442 = add i64 %RBP_val.86, -20, !mcsema_real_eip !70
  %443 = inttoptr i64 %442 to i64*, !mcsema_real_eip !70
  %444 = ptrtoint i64* %443 to i64, !mcsema_real_eip !70
  %445 = inttoptr i64 %444 to i32*, !mcsema_real_eip !70
  store i32 -4, i32* %445, !mcsema_real_eip !70
  br label %block_0x11a, !mcsema_real_eip !71

block_0x11a:                                      ; preds = %block_0x102
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !72
  %446 = add i64 %RBP_val.87, -16, !mcsema_real_eip !72
  %447 = inttoptr i64 %446 to i64*, !mcsema_real_eip !72
  %448 = load i64, i64* %447, !mcsema_real_eip !72
  store i64 %448, i64* %XAX, !mcsema_real_eip !72
  %RAX_val.88 = load i64, i64* %XAX, !mcsema_real_eip !73
  %449 = add i64 %RAX_val.88, 5, !mcsema_real_eip !73
  %450 = inttoptr i64 %449 to i64*, !mcsema_real_eip !73
  %451 = ptrtoint i64* %450 to i64, !mcsema_real_eip !73
  %452 = inttoptr i64 %451 to i8*, !mcsema_real_eip !73
  %453 = load i8, i8* %452, !mcsema_real_eip !73
  %454 = sext i8 %453 to i32, !mcsema_real_eip !73
  %455 = zext i32 %454 to i64, !mcsema_real_eip !73
  store i64 %455, i64* %XCX, !mcsema_real_eip !73
  %ECX.89 = bitcast i64* %XCX to i32*, !mcsema_real_eip !74
  %ECX_val.90 = load i32, i32* %ECX.89, !mcsema_real_eip !74
  %456 = and i32 %ECX_val.90, 15, !mcsema_real_eip !74
  %457 = lshr i32 %456, 31, !mcsema_real_eip !74
  %458 = trunc i32 %457 to i1, !mcsema_real_eip !74
  store i1 %458, i1* %SF, !mcsema_real_eip !74
  %459 = icmp eq i32 %456, 0, !mcsema_real_eip !74
  store i1 %459, i1* %ZF, !mcsema_real_eip !74
  %460 = trunc i32 %456 to i8, !mcsema_real_eip !74
  %461 = call i8 @llvm.ctpop.i8(i8 %460), !mcsema_real_eip !74
  %462 = trunc i8 %461 to i1, !mcsema_real_eip !74
  %463 = xor i1 %462, true, !mcsema_real_eip !74
  store i1 %463, i1* %PF, !mcsema_real_eip !74
  store i1 false, i1* %OF, !mcsema_real_eip !74
  store i1 false, i1* %CF, !mcsema_real_eip !74
  store i1 undef, i1* %AF, !mcsema_real_eip !74
  %464 = zext i32 %456 to i64, !mcsema_real_eip !74
  store i64 %464, i64* %XCX, !mcsema_real_eip !74
  %CL.91 = bitcast i64* %XCX to i8*, !mcsema_real_eip !75
  %CL_val.92 = load i8, i8* %CL.91, !mcsema_real_eip !75
  %DL.93 = bitcast i64* %XDX to i8*, !mcsema_real_eip !75
  store i8 %CL_val.92, i8* %DL.93, !mcsema_real_eip !75
  %RBP_val.94 = load i64, i64* %XBP, !mcsema_real_eip !76
  %465 = add i64 %RBP_val.94, -33, !mcsema_real_eip !76
  %466 = inttoptr i64 %465 to i64*, !mcsema_real_eip !76
  %DL.95 = bitcast i64* %XDX to i8*, !mcsema_real_eip !76
  %DL_val.96 = load i8, i8* %DL.95, !mcsema_real_eip !76
  %467 = ptrtoint i64* %466 to i64, !mcsema_real_eip !76
  %468 = inttoptr i64 %467 to i8*, !mcsema_real_eip !76
  store i8 %DL_val.96, i8* %468, !mcsema_real_eip !76
  %RBP_val.97 = load i64, i64* %XBP, !mcsema_real_eip !77
  %469 = add i64 %RBP_val.97, -16, !mcsema_real_eip !77
  %470 = inttoptr i64 %469 to i64*, !mcsema_real_eip !77
  %471 = load i64, i64* %470, !mcsema_real_eip !77
  store i64 %471, i64* %XAX, !mcsema_real_eip !77
  %RAX_val.98 = load i64, i64* %XAX, !mcsema_real_eip !78
  %472 = add i64 %RAX_val.98, 5, !mcsema_real_eip !78
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !78
  %474 = ptrtoint i64* %473 to i64, !mcsema_real_eip !78
  %475 = inttoptr i64 %474 to i8*, !mcsema_real_eip !78
  %476 = load i8, i8* %475, !mcsema_real_eip !78
  %477 = sext i8 %476 to i32, !mcsema_real_eip !78
  %478 = zext i32 %477 to i64, !mcsema_real_eip !78
  store i64 %478, i64* %XCX, !mcsema_real_eip !78
  %ECX.99 = bitcast i64* %XCX to i32*, !mcsema_real_eip !79
  %ECX_val.100 = load i32, i32* %ECX.99, !mcsema_real_eip !79
  %479 = and i32 %ECX_val.100, 240, !mcsema_real_eip !79
  %480 = lshr i32 %479, 31, !mcsema_real_eip !79
  %481 = trunc i32 %480 to i1, !mcsema_real_eip !79
  store i1 %481, i1* %SF, !mcsema_real_eip !79
  %482 = icmp eq i32 %479, 0, !mcsema_real_eip !79
  store i1 %482, i1* %ZF, !mcsema_real_eip !79
  %483 = trunc i32 %479 to i8, !mcsema_real_eip !79
  %484 = call i8 @llvm.ctpop.i8(i8 %483), !mcsema_real_eip !79
  %485 = trunc i8 %484 to i1, !mcsema_real_eip !79
  %486 = xor i1 %485, true, !mcsema_real_eip !79
  store i1 %486, i1* %PF, !mcsema_real_eip !79
  store i1 false, i1* %OF, !mcsema_real_eip !79
  store i1 false, i1* %CF, !mcsema_real_eip !79
  store i1 undef, i1* %AF, !mcsema_real_eip !79
  %487 = zext i32 %479 to i64, !mcsema_real_eip !79
  store i64 %487, i64* %XCX, !mcsema_real_eip !79
  %CL.101 = bitcast i64* %XCX to i8*, !mcsema_real_eip !80
  %CL_val.102 = load i8, i8* %CL.101, !mcsema_real_eip !80
  %DL.103 = bitcast i64* %XDX to i8*, !mcsema_real_eip !80
  store i8 %CL_val.102, i8* %DL.103, !mcsema_real_eip !80
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !81
  %488 = add i64 %RBP_val.104, -34, !mcsema_real_eip !81
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !81
  %DL.105 = bitcast i64* %XDX to i8*, !mcsema_real_eip !81
  %DL_val.106 = load i8, i8* %DL.105, !mcsema_real_eip !81
  %490 = ptrtoint i64* %489 to i64, !mcsema_real_eip !81
  %491 = inttoptr i64 %490 to i8*, !mcsema_real_eip !81
  store i8 %DL_val.106, i8* %491, !mcsema_real_eip !81
  %RBP_val.107 = load i64, i64* %XBP, !mcsema_real_eip !82
  %492 = add i64 %RBP_val.107, -33, !mcsema_real_eip !82
  %493 = inttoptr i64 %492 to i64*, !mcsema_real_eip !82
  %494 = ptrtoint i64* %493 to i64, !mcsema_real_eip !82
  %495 = inttoptr i64 %494 to i8*, !mcsema_real_eip !82
  %496 = load i8, i8* %495, !mcsema_real_eip !82
  %497 = zext i8 %496 to i32, !mcsema_real_eip !82
  %498 = zext i32 %497 to i64, !mcsema_real_eip !82
  store i64 %498, i64* %XCX, !mcsema_real_eip !82
  %ECX.108 = bitcast i64* %XCX to i32*, !mcsema_real_eip !83
  %ECX_val.109 = load i32, i32* %ECX.108, !mcsema_real_eip !83
  %499 = sub i32 %ECX_val.109, 3, !mcsema_real_eip !83
  %500 = xor i32 %499, %ECX_val.109, !mcsema_real_eip !83
  %501 = xor i32 %500, 3, !mcsema_real_eip !83
  %502 = and i32 %501, 16, !mcsema_real_eip !83
  %503 = icmp ne i32 %502, 0, !mcsema_real_eip !83
  store i1 %503, i1* %AF, !mcsema_real_eip !83
  %504 = trunc i32 %499 to i8, !mcsema_real_eip !83
  %505 = call i8 @llvm.ctpop.i8(i8 %504), !mcsema_real_eip !83
  %506 = trunc i8 %505 to i1, !mcsema_real_eip !83
  %507 = xor i1 %506, true, !mcsema_real_eip !83
  store i1 %507, i1* %PF, !mcsema_real_eip !83
  %508 = icmp eq i32 %499, 0, !mcsema_real_eip !83
  store i1 %508, i1* %ZF, !mcsema_real_eip !83
  %509 = lshr i32 %499, 31, !mcsema_real_eip !83
  %510 = trunc i32 %509 to i1, !mcsema_real_eip !83
  store i1 %510, i1* %SF, !mcsema_real_eip !83
  %511 = icmp ult i32 %ECX_val.109, 3, !mcsema_real_eip !83
  store i1 %511, i1* %CF, !mcsema_real_eip !83
  %512 = xor i32 %ECX_val.109, 3, !mcsema_real_eip !83
  %513 = xor i32 %ECX_val.109, %499, !mcsema_real_eip !83
  %514 = and i32 %512, %513, !mcsema_real_eip !83
  %515 = lshr i32 %514, 31, !mcsema_real_eip !83
  %516 = trunc i32 %515 to i1, !mcsema_real_eip !83
  store i1 %516, i1* %OF, !mcsema_real_eip !83
  %517 = load i1, i1* %ZF, !mcsema_real_eip !84
  %518 = icmp eq i1 %517, false, !mcsema_real_eip !84
  br i1 %518, label %block_0x165, label %block_0x14a, !mcsema_real_eip !84

block_0x14a:                                      ; preds = %block_0x11a
  %RBP_val.116 = load i64, i64* %XBP, !mcsema_real_eip !85
  %519 = add i64 %RBP_val.116, -34, !mcsema_real_eip !85
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !85
  %521 = ptrtoint i64* %520 to i64, !mcsema_real_eip !85
  %522 = inttoptr i64 %521 to i8*, !mcsema_real_eip !85
  %523 = load i8, i8* %522, !mcsema_real_eip !85
  %524 = zext i8 %523 to i32, !mcsema_real_eip !85
  %525 = zext i32 %524 to i64, !mcsema_real_eip !85
  store i64 %525, i64* %XAX, !mcsema_real_eip !85
  %EAX.117 = bitcast i64* %XAX to i32*, !mcsema_real_eip !86
  %EAX_val.118 = load i32, i32* %EAX.117, !mcsema_real_eip !86
  %526 = sub i32 %EAX_val.118, 96, !mcsema_real_eip !86
  %527 = xor i32 %526, %EAX_val.118, !mcsema_real_eip !86
  %528 = xor i32 %527, 96, !mcsema_real_eip !86
  %529 = and i32 %528, 16, !mcsema_real_eip !86
  %530 = icmp ne i32 %529, 0, !mcsema_real_eip !86
  store i1 %530, i1* %AF, !mcsema_real_eip !86
  %531 = trunc i32 %526 to i8, !mcsema_real_eip !86
  %532 = call i8 @llvm.ctpop.i8(i8 %531), !mcsema_real_eip !86
  %533 = trunc i8 %532 to i1, !mcsema_real_eip !86
  %534 = xor i1 %533, true, !mcsema_real_eip !86
  store i1 %534, i1* %PF, !mcsema_real_eip !86
  %535 = icmp eq i32 %526, 0, !mcsema_real_eip !86
  store i1 %535, i1* %ZF, !mcsema_real_eip !86
  %536 = lshr i32 %526, 31, !mcsema_real_eip !86
  %537 = trunc i32 %536 to i1, !mcsema_real_eip !86
  store i1 %537, i1* %SF, !mcsema_real_eip !86
  %538 = icmp ult i32 %EAX_val.118, 96, !mcsema_real_eip !86
  store i1 %538, i1* %CF, !mcsema_real_eip !86
  %539 = xor i32 %EAX_val.118, 96, !mcsema_real_eip !86
  %540 = xor i32 %EAX_val.118, %526, !mcsema_real_eip !86
  %541 = and i32 %539, %540, !mcsema_real_eip !86
  %542 = lshr i32 %541, 31, !mcsema_real_eip !86
  %543 = trunc i32 %542 to i1, !mcsema_real_eip !86
  store i1 %543, i1* %OF, !mcsema_real_eip !86
  %544 = load i1, i1* %ZF, !mcsema_real_eip !87
  %545 = icmp eq i1 %544, false, !mcsema_real_eip !87
  br i1 %545, label %block_0x165, label %block_0x157, !mcsema_real_eip !87

block_0x165:                                      ; preds = %block_0x14a, %block_0x11a
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !88
  %546 = add i64 %RBP_val.110, -20, !mcsema_real_eip !88
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !88
  %548 = ptrtoint i64* %547 to i64, !mcsema_real_eip !88
  %549 = inttoptr i64 %548 to i32*, !mcsema_real_eip !88
  %550 = load i32, i32* %549, !mcsema_real_eip !88
  %551 = zext i32 %550 to i64, !mcsema_real_eip !88
  store i64 %551, i64* %XAX, !mcsema_real_eip !88
  %EAX.111 = bitcast i64* %XAX to i32*, !mcsema_real_eip !89
  %EAX_val.112 = load i32, i32* %EAX.111, !mcsema_real_eip !89
  %552 = add i32 5, %EAX_val.112, !mcsema_real_eip !89
  %553 = xor i32 %552, %EAX_val.112, !mcsema_real_eip !89
  %554 = xor i32 %553, 5, !mcsema_real_eip !89
  %555 = and i32 %554, 16, !mcsema_real_eip !89
  %556 = icmp ne i32 %555, 0, !mcsema_real_eip !89
  store i1 %556, i1* %AF, !mcsema_real_eip !89
  %557 = lshr i32 %552, 31, !mcsema_real_eip !89
  %558 = trunc i32 %557 to i1, !mcsema_real_eip !89
  store i1 %558, i1* %SF, !mcsema_real_eip !89
  %559 = icmp eq i32 %552, 0, !mcsema_real_eip !89
  store i1 %559, i1* %ZF, !mcsema_real_eip !89
  %560 = xor i32 %EAX_val.112, 5, !mcsema_real_eip !89
  %561 = xor i32 %560, -1, !mcsema_real_eip !89
  %562 = xor i32 %EAX_val.112, %552, !mcsema_real_eip !89
  %563 = and i32 %561, %562, !mcsema_real_eip !89
  %564 = lshr i32 %563, 31, !mcsema_real_eip !89
  %565 = and i32 %564, 1, !mcsema_real_eip !89
  %566 = trunc i32 %565 to i1, !mcsema_real_eip !89
  store i1 %566, i1* %OF, !mcsema_real_eip !89
  %567 = trunc i32 %552 to i8, !mcsema_real_eip !89
  %568 = call i8 @llvm.ctpop.i8(i8 %567), !mcsema_real_eip !89
  %569 = trunc i8 %568 to i1, !mcsema_real_eip !89
  %570 = xor i1 %569, true, !mcsema_real_eip !89
  store i1 %570, i1* %PF, !mcsema_real_eip !89
  %571 = icmp ult i32 %552, %EAX_val.112, !mcsema_real_eip !89
  store i1 %571, i1* %CF, !mcsema_real_eip !89
  %572 = zext i32 %552 to i64, !mcsema_real_eip !89
  store i64 %572, i64* %XAX, !mcsema_real_eip !89
  %RBP_val.113 = load i64, i64* %XBP, !mcsema_real_eip !90
  %573 = add i64 %RBP_val.113, -20, !mcsema_real_eip !90
  %574 = inttoptr i64 %573 to i64*, !mcsema_real_eip !90
  %EAX.114 = bitcast i64* %XAX to i32*, !mcsema_real_eip !90
  %EAX_val.115 = load i32, i32* %EAX.114, !mcsema_real_eip !90
  %575 = ptrtoint i64* %574 to i64, !mcsema_real_eip !90
  %576 = inttoptr i64 %575 to i32*, !mcsema_real_eip !90
  store i32 %EAX_val.115, i32* %576, !mcsema_real_eip !90
  br label %block_0x16e, !mcsema_real_eip !85

block_0x16e:                                      ; preds = %block_0x157, %block_0x165
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !91
  %577 = add i64 %RBP_val.119, -16, !mcsema_real_eip !91
  %578 = inttoptr i64 %577 to i64*, !mcsema_real_eip !91
  %579 = load i64, i64* %578, !mcsema_real_eip !91
  store i64 %579, i64* %XAX, !mcsema_real_eip !91
  %RAX_val.120 = load i64, i64* %XAX, !mcsema_real_eip !92
  %580 = add i64 %RAX_val.120, 6, !mcsema_real_eip !92
  %581 = inttoptr i64 %580 to i64*, !mcsema_real_eip !92
  %582 = ptrtoint i64* %581 to i64, !mcsema_real_eip !92
  %583 = inttoptr i64 %582 to i8*, !mcsema_real_eip !92
  %584 = load i8, i8* %583, !mcsema_real_eip !92
  %585 = zext i8 %584 to i32, !mcsema_real_eip !92
  %586 = zext i32 %585 to i64, !mcsema_real_eip !92
  store i64 %586, i64* %XDI, !mcsema_real_eip !92
  %RDI_val.121 = load i64, i64* %XDI, !mcsema_real_eip !93
  %RSP_val.122 = load i64, i64* %XSP, !mcsema_real_eip !93
  %587 = sub i64 %RSP_val.122, 8, !mcsema_real_eip !93
  %588 = inttoptr i64 %587 to i64*, !mcsema_real_eip !93
  store i64 -2415393069852865332, i64* %588, !mcsema_real_eip !93
  store i64 %587, i64* %XSP, !mcsema_real_eip !93
  %589 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.121), !mcsema_real_eip !93
  store i64 %589, i64* %XAX, !mcsema_real_eip !93
  %AL.123 = bitcast i64* %XAX to i8*, !mcsema_real_eip !94
  %AL_val.124 = load i8, i8* %AL.123, !mcsema_real_eip !94
  %CL.125 = bitcast i64* %XCX to i8*, !mcsema_real_eip !94
  store i8 %AL_val.124, i8* %CL.125, !mcsema_real_eip !94
  %RBP_val.126 = load i64, i64* %XBP, !mcsema_real_eip !95
  %590 = add i64 %RBP_val.126, -35, !mcsema_real_eip !95
  %591 = inttoptr i64 %590 to i64*, !mcsema_real_eip !95
  %CL.127 = bitcast i64* %XCX to i8*, !mcsema_real_eip !95
  %CL_val.128 = load i8, i8* %CL.127, !mcsema_real_eip !95
  %592 = ptrtoint i64* %591 to i64, !mcsema_real_eip !95
  %593 = inttoptr i64 %592 to i8*, !mcsema_real_eip !95
  store i8 %CL_val.128, i8* %593, !mcsema_real_eip !95
  %RBP_val.129 = load i64, i64* %XBP, !mcsema_real_eip !96
  %594 = add i64 %RBP_val.129, -16, !mcsema_real_eip !96
  %595 = inttoptr i64 %594 to i64*, !mcsema_real_eip !96
  %596 = load i64, i64* %595, !mcsema_real_eip !96
  store i64 %596, i64* %XDX, !mcsema_real_eip !96
  %RDX_val.130 = load i64, i64* %XDX, !mcsema_real_eip !97
  %597 = add i64 %RDX_val.130, 7, !mcsema_real_eip !97
  %598 = inttoptr i64 %597 to i64*, !mcsema_real_eip !97
  %599 = ptrtoint i64* %598 to i64, !mcsema_real_eip !97
  %600 = inttoptr i64 %599 to i8*, !mcsema_real_eip !97
  %601 = load i8, i8* %600, !mcsema_real_eip !97
  %602 = zext i8 %601 to i32, !mcsema_real_eip !97
  %603 = zext i32 %602 to i64, !mcsema_real_eip !97
  store i64 %603, i64* %XDI, !mcsema_real_eip !97
  %RDI_val.131 = load i64, i64* %XDI, !mcsema_real_eip !98
  %RSP_val.132 = load i64, i64* %XSP, !mcsema_real_eip !98
  %604 = sub i64 %RSP_val.132, 8, !mcsema_real_eip !98
  %605 = inttoptr i64 %604 to i64*, !mcsema_real_eip !98
  store i64 -2415393069852865332, i64* %605, !mcsema_real_eip !98
  store i64 %604, i64* %XSP, !mcsema_real_eip !98
  %606 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.131), !mcsema_real_eip !98
  store i64 %606, i64* %XAX, !mcsema_real_eip !98
  %RBP_val.133 = load i64, i64* %XBP, !mcsema_real_eip !99
  %607 = add i64 %RBP_val.133, -35, !mcsema_real_eip !99
  %608 = inttoptr i64 %607 to i64*, !mcsema_real_eip !99
  %609 = ptrtoint i64* %608 to i64, !mcsema_real_eip !99
  %610 = inttoptr i64 %609 to i8*, !mcsema_real_eip !99
  %611 = load i8, i8* %610, !mcsema_real_eip !99
  %612 = zext i8 %611 to i32, !mcsema_real_eip !99
  %613 = zext i32 %612 to i64, !mcsema_real_eip !99
  store i64 %613, i64* %XDI, !mcsema_real_eip !99
  %EDI.134 = bitcast i64* %XDI to i32*, !mcsema_real_eip !100
  %EDI_val.135 = load i32, i32* %EDI.134, !mcsema_real_eip !100
  %EAX.136 = bitcast i64* %XAX to i32*, !mcsema_real_eip !100
  %EAX_val.137 = load i32, i32* %EAX.136, !mcsema_real_eip !100
  %614 = or i32 %EDI_val.135, %EAX_val.137, !mcsema_real_eip !100
  store i1 undef, i1* %AF, !mcsema_real_eip !100
  store i1 false, i1* %OF, !mcsema_real_eip !100
  store i1 false, i1* %CF, !mcsema_real_eip !100
  %615 = lshr i32 %614, 31, !mcsema_real_eip !100
  %616 = trunc i32 %615 to i1, !mcsema_real_eip !100
  store i1 %616, i1* %SF, !mcsema_real_eip !100
  %617 = icmp eq i32 %614, 0, !mcsema_real_eip !100
  store i1 %617, i1* %ZF, !mcsema_real_eip !100
  %618 = trunc i32 %614 to i8, !mcsema_real_eip !100
  %619 = call i8 @llvm.ctpop.i8(i8 %618), !mcsema_real_eip !100
  %620 = trunc i8 %619 to i1, !mcsema_real_eip !100
  %621 = xor i1 %620, true, !mcsema_real_eip !100
  store i1 %621, i1* %PF, !mcsema_real_eip !100
  %622 = zext i32 %614 to i64, !mcsema_real_eip !100
  store i64 %622, i64* %XDI, !mcsema_real_eip !100
  %DIL.138 = bitcast i64* %XDI to i8*, !mcsema_real_eip !101
  %DIL_val.139 = load i8, i8* %DIL.138, !mcsema_real_eip !101
  %CL.140 = bitcast i64* %XCX to i8*, !mcsema_real_eip !101
  store i8 %DIL_val.139, i8* %CL.140, !mcsema_real_eip !101
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !102
  %623 = add i64 %RBP_val.141, -35, !mcsema_real_eip !102
  %624 = inttoptr i64 %623 to i64*, !mcsema_real_eip !102
  %CL.142 = bitcast i64* %XCX to i8*, !mcsema_real_eip !102
  %CL_val.143 = load i8, i8* %CL.142, !mcsema_real_eip !102
  %625 = ptrtoint i64* %624 to i64, !mcsema_real_eip !102
  %626 = inttoptr i64 %625 to i8*, !mcsema_real_eip !102
  store i8 %CL_val.143, i8* %626, !mcsema_real_eip !102
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !103
  %627 = add i64 %RBP_val.144, -35, !mcsema_real_eip !103
  %628 = inttoptr i64 %627 to i64*, !mcsema_real_eip !103
  %629 = ptrtoint i64* %628 to i64, !mcsema_real_eip !103
  %630 = inttoptr i64 %629 to i8*, !mcsema_real_eip !103
  %631 = load i8, i8* %630, !mcsema_real_eip !103
  %632 = zext i8 %631 to i32, !mcsema_real_eip !103
  %633 = zext i32 %632 to i64, !mcsema_real_eip !103
  store i64 %633, i64* %XAX, !mcsema_real_eip !103
  %EAX.145 = bitcast i64* %XAX to i32*, !mcsema_real_eip !104
  %EAX_val.146 = load i32, i32* %EAX.145, !mcsema_real_eip !104
  %634 = xor i32 %EAX_val.146, -1, !mcsema_real_eip !104
  store i1 false, i1* %CF, !mcsema_real_eip !104
  store i1 false, i1* %OF, !mcsema_real_eip !104
  %635 = lshr i32 %634, 31, !mcsema_real_eip !104
  %636 = trunc i32 %635 to i1, !mcsema_real_eip !104
  store i1 %636, i1* %SF, !mcsema_real_eip !104
  %637 = icmp eq i32 %634, 0, !mcsema_real_eip !104
  store i1 %637, i1* %ZF, !mcsema_real_eip !104
  %638 = trunc i32 %634 to i8, !mcsema_real_eip !104
  %639 = call i8 @llvm.ctpop.i8(i8 %638), !mcsema_real_eip !104
  %640 = trunc i8 %639 to i1, !mcsema_real_eip !104
  %641 = xor i1 %640, true, !mcsema_real_eip !104
  store i1 %641, i1* %PF, !mcsema_real_eip !104
  store i1 undef, i1* %AF, !mcsema_real_eip !104
  %642 = zext i32 %634 to i64, !mcsema_real_eip !104
  store i64 %642, i64* %XAX, !mcsema_real_eip !104
  %EAX.147 = bitcast i64* %XAX to i32*, !mcsema_real_eip !105
  %EAX_val.148 = load i32, i32* %EAX.147, !mcsema_real_eip !105
  %643 = sub i32 %EAX_val.148, 70, !mcsema_real_eip !105
  %644 = xor i32 %643, %EAX_val.148, !mcsema_real_eip !105
  %645 = xor i32 %644, 70, !mcsema_real_eip !105
  %646 = and i32 %645, 16, !mcsema_real_eip !105
  %647 = icmp ne i32 %646, 0, !mcsema_real_eip !105
  store i1 %647, i1* %AF, !mcsema_real_eip !105
  %648 = trunc i32 %643 to i8, !mcsema_real_eip !105
  %649 = call i8 @llvm.ctpop.i8(i8 %648), !mcsema_real_eip !105
  %650 = trunc i8 %649 to i1, !mcsema_real_eip !105
  %651 = xor i1 %650, true, !mcsema_real_eip !105
  store i1 %651, i1* %PF, !mcsema_real_eip !105
  %652 = icmp eq i32 %643, 0, !mcsema_real_eip !105
  store i1 %652, i1* %ZF, !mcsema_real_eip !105
  %653 = lshr i32 %643, 31, !mcsema_real_eip !105
  %654 = trunc i32 %653 to i1, !mcsema_real_eip !105
  store i1 %654, i1* %SF, !mcsema_real_eip !105
  %655 = icmp ult i32 %EAX_val.148, 70, !mcsema_real_eip !105
  store i1 %655, i1* %CF, !mcsema_real_eip !105
  %656 = xor i32 %EAX_val.148, 70, !mcsema_real_eip !105
  %657 = xor i32 %EAX_val.148, %643, !mcsema_real_eip !105
  %658 = and i32 %656, %657, !mcsema_real_eip !105
  %659 = lshr i32 %658, 31, !mcsema_real_eip !105
  %660 = trunc i32 %659 to i1, !mcsema_real_eip !105
  store i1 %660, i1* %OF, !mcsema_real_eip !105
  %661 = load i1, i1* %ZF, !mcsema_real_eip !106
  %662 = icmp eq i1 %661, false, !mcsema_real_eip !106
  br i1 %662, label %block_0x1b7, label %block_0x1a9, !mcsema_real_eip !106

block_0x157:                                      ; preds = %block_0x14a
  %RBP_val.149 = load i64, i64* %XBP, !mcsema_real_eip !107
  %663 = add i64 %RBP_val.149, -20, !mcsema_real_eip !107
  %664 = inttoptr i64 %663 to i64*, !mcsema_real_eip !107
  %665 = ptrtoint i64* %664 to i64, !mcsema_real_eip !107
  %666 = inttoptr i64 %665 to i32*, !mcsema_real_eip !107
  %667 = load i32, i32* %666, !mcsema_real_eip !107
  %668 = zext i32 %667 to i64, !mcsema_real_eip !107
  store i64 %668, i64* %XAX, !mcsema_real_eip !107
  %EAX.150 = bitcast i64* %XAX to i32*, !mcsema_real_eip !108
  %EAX_val.151 = load i32, i32* %EAX.150, !mcsema_real_eip !108
  %669 = add i32 4, %EAX_val.151, !mcsema_real_eip !108
  %670 = xor i32 %669, %EAX_val.151, !mcsema_real_eip !108
  %671 = xor i32 %670, 4, !mcsema_real_eip !108
  %672 = and i32 %671, 16, !mcsema_real_eip !108
  %673 = icmp ne i32 %672, 0, !mcsema_real_eip !108
  store i1 %673, i1* %AF, !mcsema_real_eip !108
  %674 = lshr i32 %669, 31, !mcsema_real_eip !108
  %675 = trunc i32 %674 to i1, !mcsema_real_eip !108
  store i1 %675, i1* %SF, !mcsema_real_eip !108
  %676 = icmp eq i32 %669, 0, !mcsema_real_eip !108
  store i1 %676, i1* %ZF, !mcsema_real_eip !108
  %677 = xor i32 %EAX_val.151, 4, !mcsema_real_eip !108
  %678 = xor i32 %677, -1, !mcsema_real_eip !108
  %679 = xor i32 %EAX_val.151, %669, !mcsema_real_eip !108
  %680 = and i32 %678, %679, !mcsema_real_eip !108
  %681 = lshr i32 %680, 31, !mcsema_real_eip !108
  %682 = and i32 %681, 1, !mcsema_real_eip !108
  %683 = trunc i32 %682 to i1, !mcsema_real_eip !108
  store i1 %683, i1* %OF, !mcsema_real_eip !108
  %684 = trunc i32 %669 to i8, !mcsema_real_eip !108
  %685 = call i8 @llvm.ctpop.i8(i8 %684), !mcsema_real_eip !108
  %686 = trunc i8 %685 to i1, !mcsema_real_eip !108
  %687 = xor i1 %686, true, !mcsema_real_eip !108
  store i1 %687, i1* %PF, !mcsema_real_eip !108
  %688 = icmp ult i32 %669, %EAX_val.151, !mcsema_real_eip !108
  store i1 %688, i1* %CF, !mcsema_real_eip !108
  %689 = zext i32 %669 to i64, !mcsema_real_eip !108
  store i64 %689, i64* %XAX, !mcsema_real_eip !108
  %RBP_val.152 = load i64, i64* %XBP, !mcsema_real_eip !109
  %690 = add i64 %RBP_val.152, -20, !mcsema_real_eip !109
  %691 = inttoptr i64 %690 to i64*, !mcsema_real_eip !109
  %EAX.153 = bitcast i64* %XAX to i32*, !mcsema_real_eip !109
  %EAX_val.154 = load i32, i32* %EAX.153, !mcsema_real_eip !109
  %692 = ptrtoint i64* %691 to i64, !mcsema_real_eip !109
  %693 = inttoptr i64 %692 to i32*, !mcsema_real_eip !109
  store i32 %EAX_val.154, i32* %693, !mcsema_real_eip !109
  br label %block_0x16e, !mcsema_real_eip !110

block_0x1a9:                                      ; preds = %block_0x16e
  %RBP_val.164 = load i64, i64* %XBP, !mcsema_real_eip !111
  %694 = add i64 %RBP_val.164, -20, !mcsema_real_eip !111
  %695 = inttoptr i64 %694 to i64*, !mcsema_real_eip !111
  %696 = ptrtoint i64* %695 to i64, !mcsema_real_eip !111
  %697 = inttoptr i64 %696 to i32*, !mcsema_real_eip !111
  %698 = load i32, i32* %697, !mcsema_real_eip !111
  %699 = zext i32 %698 to i64, !mcsema_real_eip !111
  store i64 %699, i64* %XAX, !mcsema_real_eip !111
  %EAX.165 = bitcast i64* %XAX to i32*, !mcsema_real_eip !112
  %EAX_val.166 = load i32, i32* %EAX.165, !mcsema_real_eip !112
  %700 = sub i32 %EAX_val.166, 1, !mcsema_real_eip !112
  %701 = xor i32 %700, %EAX_val.166, !mcsema_real_eip !112
  %702 = xor i32 %701, 1, !mcsema_real_eip !112
  %703 = and i32 %702, 16, !mcsema_real_eip !112
  %704 = icmp ne i32 %703, 0, !mcsema_real_eip !112
  store i1 %704, i1* %AF, !mcsema_real_eip !112
  %705 = trunc i32 %700 to i8, !mcsema_real_eip !112
  %706 = call i8 @llvm.ctpop.i8(i8 %705), !mcsema_real_eip !112
  %707 = trunc i8 %706 to i1, !mcsema_real_eip !112
  %708 = xor i1 %707, true, !mcsema_real_eip !112
  store i1 %708, i1* %PF, !mcsema_real_eip !112
  %709 = icmp eq i32 %700, 0, !mcsema_real_eip !112
  store i1 %709, i1* %ZF, !mcsema_real_eip !112
  %710 = lshr i32 %700, 31, !mcsema_real_eip !112
  %711 = trunc i32 %710 to i1, !mcsema_real_eip !112
  store i1 %711, i1* %SF, !mcsema_real_eip !112
  %712 = icmp ult i32 %EAX_val.166, 1, !mcsema_real_eip !112
  store i1 %712, i1* %CF, !mcsema_real_eip !112
  %713 = xor i32 %EAX_val.166, 1, !mcsema_real_eip !112
  %714 = xor i32 %EAX_val.166, %700, !mcsema_real_eip !112
  %715 = and i32 %713, %714, !mcsema_real_eip !112
  %716 = lshr i32 %715, 31, !mcsema_real_eip !112
  %717 = trunc i32 %716 to i1, !mcsema_real_eip !112
  store i1 %717, i1* %OF, !mcsema_real_eip !112
  %718 = zext i32 %700 to i64, !mcsema_real_eip !112
  store i64 %718, i64* %XAX, !mcsema_real_eip !112
  %RBP_val.167 = load i64, i64* %XBP, !mcsema_real_eip !113
  %719 = add i64 %RBP_val.167, -20, !mcsema_real_eip !113
  %720 = inttoptr i64 %719 to i64*, !mcsema_real_eip !113
  %EAX.168 = bitcast i64* %XAX to i32*, !mcsema_real_eip !113
  %EAX_val.169 = load i32, i32* %EAX.168, !mcsema_real_eip !113
  %721 = ptrtoint i64* %720 to i64, !mcsema_real_eip !113
  %722 = inttoptr i64 %721 to i32*, !mcsema_real_eip !113
  store i32 %EAX_val.169, i32* %722, !mcsema_real_eip !113
  br label %block_0x1c2, !mcsema_real_eip !114

block_0x1b7:                                      ; preds = %block_0x16e
  %RBP_val.155 = load i64, i64* %XBP, !mcsema_real_eip !115
  %723 = add i64 %RBP_val.155, -20, !mcsema_real_eip !115
  %724 = inttoptr i64 %723 to i64*, !mcsema_real_eip !115
  %725 = ptrtoint i64* %724 to i64, !mcsema_real_eip !115
  %726 = inttoptr i64 %725 to i32*, !mcsema_real_eip !115
  %727 = load i32, i32* %726, !mcsema_real_eip !115
  %728 = zext i32 %727 to i64, !mcsema_real_eip !115
  store i64 %728, i64* %XCX, !mcsema_real_eip !115
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !116
  %729 = add i64 %RBP_val.156, -20, !mcsema_real_eip !116
  %730 = inttoptr i64 %729 to i64*, !mcsema_real_eip !116
  %731 = ptrtoint i64* %730 to i64, !mcsema_real_eip !116
  %732 = inttoptr i64 %731 to i32*, !mcsema_real_eip !116
  %733 = load i32, i32* %732, !mcsema_real_eip !116
  %734 = zext i32 %733 to i64, !mcsema_real_eip !116
  store i64 %734, i64* %XAX, !mcsema_real_eip !116
  %EAX.157 = bitcast i64* %XAX to i32*, !mcsema_real_eip !117
  %EAX_val.158 = load i32, i32* %EAX.157, !mcsema_real_eip !117
  %CL.159 = bitcast i64* %XCX to i8*, !mcsema_real_eip !117
  %CL_val.160 = load i8, i8* %CL.159, !mcsema_real_eip !117
  %CL_val.160.zext = zext i8 %CL_val.160 to i32, !mcsema_real_eip !117
  %735 = and i32 %CL_val.160.zext, 31, !mcsema_real_eip !117
  %736 = sub i32 %CL_val.160.zext, 1, !mcsema_real_eip !117
  %737 = icmp ne i32 %735, 0, !mcsema_real_eip !117
  %738 = select i1 %737, i32 %736, i32 0, !mcsema_real_eip !117
  %739 = select i1 %737, i32 1, i32 0, !mcsema_real_eip !117
  %740 = shl i32 %EAX_val.158, %738, !mcsema_real_eip !117
  %741 = and i32 %740, -2147483648, !mcsema_real_eip !117
  %742 = icmp ne i32 %741, 0, !mcsema_real_eip !117
  %743 = load i1, i1* %CF, !mcsema_real_eip !117
  %744 = select i1 %737, i1 %742, i1 %743, !mcsema_real_eip !117
  %745 = shl i32 %740, %739, !mcsema_real_eip !117
  %746 = icmp eq i32 %735, 1, !mcsema_real_eip !117
  %747 = load i1, i1* %OF, !mcsema_real_eip !117
  %748 = and i32 %745, -2147483648, !mcsema_real_eip !117
  %749 = icmp ne i32 %748, 0, !mcsema_real_eip !117
  %750 = xor i1 %749, %744, !mcsema_real_eip !117
  %751 = select i1 %746, i1 %750, i1 %747, !mcsema_real_eip !117
  store i1 %751, i1* %OF, !mcsema_real_eip !117
  store i1 %744, i1* %CF, !mcsema_real_eip !117
  %752 = load i1, i1* %ZF, !mcsema_real_eip !117
  %753 = icmp eq i32 %745, 0, !mcsema_real_eip !117
  %754 = select i1 %737, i1 %753, i1 %752, !mcsema_real_eip !117
  store i1 %754, i1* %ZF, !mcsema_real_eip !117
  %755 = load i1, i1* %SF, !mcsema_real_eip !117
  %756 = icmp slt i32 %745, 0, !mcsema_real_eip !117
  %757 = select i1 %737, i1 %756, i1 %755, !mcsema_real_eip !117
  store i1 %757, i1* %SF, !mcsema_real_eip !117
  %758 = load i1, i1* %PF, !mcsema_real_eip !117
  %759 = trunc i32 %745 to i8, !mcsema_real_eip !117
  %760 = call i8 @llvm.ctpop.i8(i8 %759), !mcsema_real_eip !117
  %761 = trunc i8 %760 to i1, !mcsema_real_eip !117
  %762 = xor i1 %761, true, !mcsema_real_eip !117
  store i1 %762, i1* %PF, !mcsema_real_eip !117
  %763 = load i1, i1* %PF, !mcsema_real_eip !117
  %764 = select i1 %737, i1 %763, i1 %758, !mcsema_real_eip !117
  store i1 %764, i1* %PF, !mcsema_real_eip !117
  %765 = zext i32 %745 to i64, !mcsema_real_eip !117
  store i64 %765, i64* %XAX, !mcsema_real_eip !117
  %RBP_val.161 = load i64, i64* %XBP, !mcsema_real_eip !118
  %766 = add i64 %RBP_val.161, -20, !mcsema_real_eip !118
  %767 = inttoptr i64 %766 to i64*, !mcsema_real_eip !118
  %EAX.162 = bitcast i64* %XAX to i32*, !mcsema_real_eip !118
  %EAX_val.163 = load i32, i32* %EAX.162, !mcsema_real_eip !118
  %768 = ptrtoint i64* %767 to i64, !mcsema_real_eip !118
  %769 = inttoptr i64 %768 to i32*, !mcsema_real_eip !118
  store i32 %EAX_val.163, i32* %769, !mcsema_real_eip !118
  br label %block_0x1c2, !mcsema_real_eip !111

block_0x1c2:                                      ; preds = %block_0x1b7, %block_0x1a9
  %RBP_val.170 = load i64, i64* %XBP, !mcsema_real_eip !119
  %770 = add i64 %RBP_val.170, -20, !mcsema_real_eip !119
  %771 = inttoptr i64 %770 to i64*, !mcsema_real_eip !119
  %772 = ptrtoint i64* %771 to i64, !mcsema_real_eip !119
  %773 = inttoptr i64 %772 to i32*, !mcsema_real_eip !119
  %774 = load i32, i32* %773, !mcsema_real_eip !119
  %775 = sub i32 %774, 0, !mcsema_real_eip !119
  %776 = xor i32 %775, %774, !mcsema_real_eip !119
  %777 = xor i32 %776, 0, !mcsema_real_eip !119
  %778 = and i32 %777, 16, !mcsema_real_eip !119
  %779 = icmp ne i32 %778, 0, !mcsema_real_eip !119
  store i1 %779, i1* %AF, !mcsema_real_eip !119
  %780 = trunc i32 %775 to i8, !mcsema_real_eip !119
  %781 = call i8 @llvm.ctpop.i8(i8 %780), !mcsema_real_eip !119
  %782 = trunc i8 %781 to i1, !mcsema_real_eip !119
  %783 = xor i1 %782, true, !mcsema_real_eip !119
  store i1 %783, i1* %PF, !mcsema_real_eip !119
  %784 = icmp eq i32 %775, 0, !mcsema_real_eip !119
  store i1 %784, i1* %ZF, !mcsema_real_eip !119
  %785 = lshr i32 %775, 31, !mcsema_real_eip !119
  %786 = trunc i32 %785 to i1, !mcsema_real_eip !119
  store i1 %786, i1* %SF, !mcsema_real_eip !119
  %787 = icmp ult i32 %774, 0, !mcsema_real_eip !119
  store i1 %787, i1* %CF, !mcsema_real_eip !119
  %788 = xor i32 %774, 0, !mcsema_real_eip !119
  %789 = xor i32 %774, %775, !mcsema_real_eip !119
  %790 = and i32 %788, %789, !mcsema_real_eip !119
  %791 = lshr i32 %790, 31, !mcsema_real_eip !119
  %792 = trunc i32 %791 to i1, !mcsema_real_eip !119
  store i1 %792, i1* %OF, !mcsema_real_eip !119
  %793 = load i1, i1* %ZF, !mcsema_real_eip !120
  %794 = icmp eq i1 %793, true, !mcsema_real_eip !120
  br i1 %794, label %block_0x1d8, label %block_0x1cc, !mcsema_real_eip !120

block_0x1cc:                                      ; preds = %block_0x1c2
  %RBP_val.193 = load i64, i64* %XBP, !mcsema_real_eip !121
  %795 = add i64 %RBP_val.193, -4, !mcsema_real_eip !121
  %796 = inttoptr i64 %795 to i64*, !mcsema_real_eip !121
  %797 = ptrtoint i64* %796 to i64, !mcsema_real_eip !121
  %798 = inttoptr i64 %797 to i32*, !mcsema_real_eip !121
  store i32 -7, i32* %798, !mcsema_real_eip !121
  br label %block_0x417, !mcsema_real_eip !122

block_0x1d8:                                      ; preds = %block_0x1c2
  %EDI.171 = bitcast i64* %XDI to i32*, !mcsema_real_eip !123
  %EDI_val.172 = load i32, i32* %EDI.171, !mcsema_real_eip !123
  %EDI.173 = bitcast i64* %XDI to i32*, !mcsema_real_eip !123
  %EDI_val.174 = load i32, i32* %EDI.173, !mcsema_real_eip !123
  %799 = xor i32 %EDI_val.172, %EDI_val.174, !mcsema_real_eip !123
  store i1 false, i1* %CF, !mcsema_real_eip !123
  store i1 false, i1* %OF, !mcsema_real_eip !123
  %800 = lshr i32 %799, 31, !mcsema_real_eip !123
  %801 = trunc i32 %800 to i1, !mcsema_real_eip !123
  store i1 %801, i1* %SF, !mcsema_real_eip !123
  %802 = icmp eq i32 %799, 0, !mcsema_real_eip !123
  store i1 %802, i1* %ZF, !mcsema_real_eip !123
  %803 = trunc i32 %799 to i8, !mcsema_real_eip !123
  %804 = call i8 @llvm.ctpop.i8(i8 %803), !mcsema_real_eip !123
  %805 = trunc i8 %804 to i1, !mcsema_real_eip !123
  %806 = xor i1 %805, true, !mcsema_real_eip !123
  store i1 %806, i1* %PF, !mcsema_real_eip !123
  store i1 undef, i1* %AF, !mcsema_real_eip !123
  %807 = zext i32 %799 to i64, !mcsema_real_eip !123
  store i64 %807, i64* %XDI, !mcsema_real_eip !123
  %808 = zext i32 4 to i64, !mcsema_real_eip !124
  store i64 %808, i64* %XDX, !mcsema_real_eip !124
  %RBP_val.175 = load i64, i64* %XBP, !mcsema_real_eip !125
  %809 = add i64 %RBP_val.175, -16, !mcsema_real_eip !125
  %810 = inttoptr i64 %809 to i64*, !mcsema_real_eip !125
  %811 = load i64, i64* %810, !mcsema_real_eip !125
  store i64 %811, i64* %XAX, !mcsema_real_eip !125
  %RAX_val.176 = load i64, i64* %XAX, !mcsema_real_eip !126
  %812 = add i64 8, %RAX_val.176, !mcsema_real_eip !126
  %813 = xor i64 %812, %RAX_val.176, !mcsema_real_eip !126
  %814 = xor i64 %813, 8, !mcsema_real_eip !126
  %815 = and i64 %814, 16, !mcsema_real_eip !126
  %816 = icmp ne i64 %815, 0, !mcsema_real_eip !126
  store i1 %816, i1* %AF, !mcsema_real_eip !126
  %817 = lshr i64 %812, 63, !mcsema_real_eip !126
  %818 = trunc i64 %817 to i1, !mcsema_real_eip !126
  store i1 %818, i1* %SF, !mcsema_real_eip !126
  %819 = icmp eq i64 %812, 0, !mcsema_real_eip !126
  store i1 %819, i1* %ZF, !mcsema_real_eip !126
  %820 = xor i64 %RAX_val.176, 8, !mcsema_real_eip !126
  %821 = xor i64 %820, -1, !mcsema_real_eip !126
  %822 = xor i64 %RAX_val.176, %812, !mcsema_real_eip !126
  %823 = and i64 %821, %822, !mcsema_real_eip !126
  %824 = lshr i64 %823, 63, !mcsema_real_eip !126
  %825 = and i64 %824, 1, !mcsema_real_eip !126
  %826 = trunc i64 %825 to i1, !mcsema_real_eip !126
  store i1 %826, i1* %OF, !mcsema_real_eip !126
  %827 = trunc i64 %812 to i8, !mcsema_real_eip !126
  %828 = call i8 @llvm.ctpop.i8(i8 %827), !mcsema_real_eip !126
  %829 = trunc i8 %828 to i1, !mcsema_real_eip !126
  %830 = xor i1 %829, true, !mcsema_real_eip !126
  store i1 %830, i1* %PF, !mcsema_real_eip !126
  %831 = icmp ult i64 %812, %RAX_val.176, !mcsema_real_eip !126
  store i1 %831, i1* %CF, !mcsema_real_eip !126
  store i64 %812, i64* %XAX, !mcsema_real_eip !126
  %RAX_val.177 = load i64, i64* %XAX, !mcsema_real_eip !127
  store i64 %RAX_val.177, i64* %XSI, !mcsema_real_eip !127
  %RDI_val.178 = load i64, i64* %XDI, !mcsema_real_eip !128
  %RSI_val.179 = load i64, i64* %XSI, !mcsema_real_eip !128
  %RDX_val.180 = load i64, i64* %XDX, !mcsema_real_eip !128
  %RSP_val.181 = load i64, i64* %XSP, !mcsema_real_eip !128
  %832 = sub i64 %RSP_val.181, 8, !mcsema_real_eip !128
  %833 = inttoptr i64 %832 to i64*, !mcsema_real_eip !128
  store i64 -2415393069852865332, i64* %833, !mcsema_real_eip !128
  store i64 %832, i64* %XSP, !mcsema_real_eip !128
  %834 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.178, i64 %RSI_val.179, i64 %RDX_val.180), !mcsema_real_eip !128
  store i64 %834, i64* %XAX, !mcsema_real_eip !128
  %AX.182 = bitcast i64* %XAX to i16*, !mcsema_real_eip !129
  %AX_val.183 = load i16, i16* %AX.182, !mcsema_real_eip !129
  %CX.184 = bitcast i64* %XCX to i16*, !mcsema_real_eip !129
  store i16 %AX_val.183, i16* %CX.184, !mcsema_real_eip !129
  %RBP_val.185 = load i64, i64* %XBP, !mcsema_real_eip !130
  %835 = add i64 %RBP_val.185, -38, !mcsema_real_eip !130
  %836 = inttoptr i64 %835 to i64*, !mcsema_real_eip !130
  %CX.186 = bitcast i64* %XCX to i16*, !mcsema_real_eip !130
  %CX_val.187 = load i16, i16* %CX.186, !mcsema_real_eip !130
  %837 = ptrtoint i64* %836 to i64, !mcsema_real_eip !130
  %838 = inttoptr i64 %837 to i16*, !mcsema_real_eip !130
  store i16 %CX_val.187, i16* %838, !mcsema_real_eip !130
  %RBP_val.188 = load i64, i64* %XBP, !mcsema_real_eip !131
  %839 = add i64 %RBP_val.188, -38, !mcsema_real_eip !131
  %840 = inttoptr i64 %839 to i64*, !mcsema_real_eip !131
  %841 = ptrtoint i64* %840 to i64, !mcsema_real_eip !131
  %842 = inttoptr i64 %841 to i16*, !mcsema_real_eip !131
  %843 = load i16, i16* %842, !mcsema_real_eip !131
  %844 = zext i16 %843 to i32, !mcsema_real_eip !131
  %845 = zext i32 %844 to i64, !mcsema_real_eip !131
  store i64 %845, i64* %XAX, !mcsema_real_eip !131
  %EAX.189 = bitcast i64* %XAX to i32*, !mcsema_real_eip !132
  %EAX_val.190 = load i32, i32* %EAX.189, !mcsema_real_eip !132
  %846 = or i32 %EAX_val.190, 21845, !mcsema_real_eip !132
  store i1 undef, i1* %AF, !mcsema_real_eip !132
  store i1 false, i1* %OF, !mcsema_real_eip !132
  store i1 false, i1* %CF, !mcsema_real_eip !132
  %847 = lshr i32 %846, 31, !mcsema_real_eip !132
  %848 = trunc i32 %847 to i1, !mcsema_real_eip !132
  store i1 %848, i1* %SF, !mcsema_real_eip !132
  %849 = icmp eq i32 %846, 0, !mcsema_real_eip !132
  store i1 %849, i1* %ZF, !mcsema_real_eip !132
  %850 = trunc i32 %846 to i8, !mcsema_real_eip !132
  %851 = call i8 @llvm.ctpop.i8(i8 %850), !mcsema_real_eip !132
  %852 = trunc i8 %851 to i1, !mcsema_real_eip !132
  %853 = xor i1 %852, true, !mcsema_real_eip !132
  store i1 %853, i1* %PF, !mcsema_real_eip !132
  %854 = zext i32 %846 to i64, !mcsema_real_eip !132
  store i64 %854, i64* %XAX, !mcsema_real_eip !132
  %EAX.191 = bitcast i64* %XAX to i32*, !mcsema_real_eip !133
  %EAX_val.192 = load i32, i32* %EAX.191, !mcsema_real_eip !133
  %855 = sub i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  %856 = xor i32 %855, %EAX_val.192, !mcsema_real_eip !133
  %857 = xor i32 %856, 56663, !mcsema_real_eip !133
  %858 = and i32 %857, 16, !mcsema_real_eip !133
  %859 = icmp ne i32 %858, 0, !mcsema_real_eip !133
  store i1 %859, i1* %AF, !mcsema_real_eip !133
  %860 = trunc i32 %855 to i8, !mcsema_real_eip !133
  %861 = call i8 @llvm.ctpop.i8(i8 %860), !mcsema_real_eip !133
  %862 = trunc i8 %861 to i1, !mcsema_real_eip !133
  %863 = xor i1 %862, true, !mcsema_real_eip !133
  store i1 %863, i1* %PF, !mcsema_real_eip !133
  %864 = icmp eq i32 %855, 0, !mcsema_real_eip !133
  store i1 %864, i1* %ZF, !mcsema_real_eip !133
  %865 = lshr i32 %855, 31, !mcsema_real_eip !133
  %866 = trunc i32 %865 to i1, !mcsema_real_eip !133
  store i1 %866, i1* %SF, !mcsema_real_eip !133
  %867 = icmp ult i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  store i1 %867, i1* %CF, !mcsema_real_eip !133
  %868 = xor i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  %869 = xor i32 %EAX_val.192, %855, !mcsema_real_eip !133
  %870 = and i32 %868, %869, !mcsema_real_eip !133
  %871 = lshr i32 %870, 31, !mcsema_real_eip !133
  %872 = trunc i32 %871 to i1, !mcsema_real_eip !133
  store i1 %872, i1* %OF, !mcsema_real_eip !133
  %873 = load i1, i1* %ZF, !mcsema_real_eip !134
  %874 = icmp eq i1 %873, false, !mcsema_real_eip !134
  br i1 %874, label %block_0x22a, label %block_0x20a, !mcsema_real_eip !134

block_0x20a:                                      ; preds = %block_0x1d8
  %RBP_val.195 = load i64, i64* %XBP, !mcsema_real_eip !135
  %875 = add i64 %RBP_val.195, -38, !mcsema_real_eip !135
  %876 = inttoptr i64 %875 to i64*, !mcsema_real_eip !135
  %877 = ptrtoint i64* %876 to i64, !mcsema_real_eip !135
  %878 = inttoptr i64 %877 to i16*, !mcsema_real_eip !135
  %879 = load i16, i16* %878, !mcsema_real_eip !135
  %880 = zext i16 %879 to i32, !mcsema_real_eip !135
  %881 = zext i32 %880 to i64, !mcsema_real_eip !135
  store i64 %881, i64* %XAX, !mcsema_real_eip !135
  %EAX.196 = bitcast i64* %XAX to i32*, !mcsema_real_eip !136
  %EAX_val.197 = load i32, i32* %EAX.196, !mcsema_real_eip !136
  %882 = or i32 %EAX_val.197, 43690, !mcsema_real_eip !136
  store i1 undef, i1* %AF, !mcsema_real_eip !136
  store i1 false, i1* %OF, !mcsema_real_eip !136
  store i1 false, i1* %CF, !mcsema_real_eip !136
  %883 = lshr i32 %882, 31, !mcsema_real_eip !136
  %884 = trunc i32 %883 to i1, !mcsema_real_eip !136
  store i1 %884, i1* %SF, !mcsema_real_eip !136
  %885 = icmp eq i32 %882, 0, !mcsema_real_eip !136
  store i1 %885, i1* %ZF, !mcsema_real_eip !136
  %886 = trunc i32 %882 to i8, !mcsema_real_eip !136
  %887 = call i8 @llvm.ctpop.i8(i8 %886), !mcsema_real_eip !136
  %888 = trunc i8 %887 to i1, !mcsema_real_eip !136
  %889 = xor i1 %888, true, !mcsema_real_eip !136
  store i1 %889, i1* %PF, !mcsema_real_eip !136
  %890 = zext i32 %882 to i64, !mcsema_real_eip !136
  store i64 %890, i64* %XAX, !mcsema_real_eip !136
  %EAX.198 = bitcast i64* %XAX to i32*, !mcsema_real_eip !137
  %EAX_val.199 = load i32, i32* %EAX.198, !mcsema_real_eip !137
  %891 = sub i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  %892 = xor i32 %891, %EAX_val.199, !mcsema_real_eip !137
  %893 = xor i32 %892, 65211, !mcsema_real_eip !137
  %894 = and i32 %893, 16, !mcsema_real_eip !137
  %895 = icmp ne i32 %894, 0, !mcsema_real_eip !137
  store i1 %895, i1* %AF, !mcsema_real_eip !137
  %896 = trunc i32 %891 to i8, !mcsema_real_eip !137
  %897 = call i8 @llvm.ctpop.i8(i8 %896), !mcsema_real_eip !137
  %898 = trunc i8 %897 to i1, !mcsema_real_eip !137
  %899 = xor i1 %898, true, !mcsema_real_eip !137
  store i1 %899, i1* %PF, !mcsema_real_eip !137
  %900 = icmp eq i32 %891, 0, !mcsema_real_eip !137
  store i1 %900, i1* %ZF, !mcsema_real_eip !137
  %901 = lshr i32 %891, 31, !mcsema_real_eip !137
  %902 = trunc i32 %901 to i1, !mcsema_real_eip !137
  store i1 %902, i1* %SF, !mcsema_real_eip !137
  %903 = icmp ult i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  store i1 %903, i1* %CF, !mcsema_real_eip !137
  %904 = xor i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  %905 = xor i32 %EAX_val.199, %891, !mcsema_real_eip !137
  %906 = and i32 %904, %905, !mcsema_real_eip !137
  %907 = lshr i32 %906, 31, !mcsema_real_eip !137
  %908 = trunc i32 %907 to i1, !mcsema_real_eip !137
  store i1 %908, i1* %OF, !mcsema_real_eip !137
  %909 = load i1, i1* %ZF, !mcsema_real_eip !138
  %910 = icmp eq i1 %909, false, !mcsema_real_eip !138
  br i1 %910, label %block_0x22a, label %block_0x21e, !mcsema_real_eip !138

block_0x22a:                                      ; preds = %block_0x20a, %block_0x1d8
  %RBP_val.194 = load i64, i64* %XBP, !mcsema_real_eip !139
  %911 = add i64 %RBP_val.194, -20, !mcsema_real_eip !139
  %912 = inttoptr i64 %911 to i64*, !mcsema_real_eip !139
  %913 = ptrtoint i64* %912 to i64, !mcsema_real_eip !139
  %914 = inttoptr i64 %913 to i32*, !mcsema_real_eip !139
  store i32 48059, i32* %914, !mcsema_real_eip !139
  br label %block_0x231, !mcsema_real_eip !135

block_0x231:                                      ; preds = %block_0x21e, %block_0x22a
  %EDI.200 = bitcast i64* %XDI to i32*, !mcsema_real_eip !140
  %EDI_val.201 = load i32, i32* %EDI.200, !mcsema_real_eip !140
  %EDI.202 = bitcast i64* %XDI to i32*, !mcsema_real_eip !140
  %EDI_val.203 = load i32, i32* %EDI.202, !mcsema_real_eip !140
  %915 = xor i32 %EDI_val.201, %EDI_val.203, !mcsema_real_eip !140
  store i1 false, i1* %CF, !mcsema_real_eip !140
  store i1 false, i1* %OF, !mcsema_real_eip !140
  %916 = lshr i32 %915, 31, !mcsema_real_eip !140
  %917 = trunc i32 %916 to i1, !mcsema_real_eip !140
  store i1 %917, i1* %SF, !mcsema_real_eip !140
  %918 = icmp eq i32 %915, 0, !mcsema_real_eip !140
  store i1 %918, i1* %ZF, !mcsema_real_eip !140
  %919 = trunc i32 %915 to i8, !mcsema_real_eip !140
  %920 = call i8 @llvm.ctpop.i8(i8 %919), !mcsema_real_eip !140
  %921 = trunc i8 %920 to i1, !mcsema_real_eip !140
  %922 = xor i1 %921, true, !mcsema_real_eip !140
  store i1 %922, i1* %PF, !mcsema_real_eip !140
  store i1 undef, i1* %AF, !mcsema_real_eip !140
  %923 = zext i32 %915 to i64, !mcsema_real_eip !140
  store i64 %923, i64* %XDI, !mcsema_real_eip !140
  %924 = zext i32 8 to i64, !mcsema_real_eip !141
  store i64 %924, i64* %XDX, !mcsema_real_eip !141
  %RBP_val.204 = load i64, i64* %XBP, !mcsema_real_eip !142
  %925 = add i64 %RBP_val.204, -16, !mcsema_real_eip !142
  %926 = inttoptr i64 %925 to i64*, !mcsema_real_eip !142
  %927 = load i64, i64* %926, !mcsema_real_eip !142
  store i64 %927, i64* %XAX, !mcsema_real_eip !142
  %RAX_val.205 = load i64, i64* %XAX, !mcsema_real_eip !143
  %928 = add i64 12, %RAX_val.205, !mcsema_real_eip !143
  %929 = xor i64 %928, %RAX_val.205, !mcsema_real_eip !143
  %930 = xor i64 %929, 12, !mcsema_real_eip !143
  %931 = and i64 %930, 16, !mcsema_real_eip !143
  %932 = icmp ne i64 %931, 0, !mcsema_real_eip !143
  store i1 %932, i1* %AF, !mcsema_real_eip !143
  %933 = lshr i64 %928, 63, !mcsema_real_eip !143
  %934 = trunc i64 %933 to i1, !mcsema_real_eip !143
  store i1 %934, i1* %SF, !mcsema_real_eip !143
  %935 = icmp eq i64 %928, 0, !mcsema_real_eip !143
  store i1 %935, i1* %ZF, !mcsema_real_eip !143
  %936 = xor i64 %RAX_val.205, 12, !mcsema_real_eip !143
  %937 = xor i64 %936, -1, !mcsema_real_eip !143
  %938 = xor i64 %RAX_val.205, %928, !mcsema_real_eip !143
  %939 = and i64 %937, %938, !mcsema_real_eip !143
  %940 = lshr i64 %939, 63, !mcsema_real_eip !143
  %941 = and i64 %940, 1, !mcsema_real_eip !143
  %942 = trunc i64 %941 to i1, !mcsema_real_eip !143
  store i1 %942, i1* %OF, !mcsema_real_eip !143
  %943 = trunc i64 %928 to i8, !mcsema_real_eip !143
  %944 = call i8 @llvm.ctpop.i8(i8 %943), !mcsema_real_eip !143
  %945 = trunc i8 %944 to i1, !mcsema_real_eip !143
  %946 = xor i1 %945, true, !mcsema_real_eip !143
  store i1 %946, i1* %PF, !mcsema_real_eip !143
  %947 = icmp ult i64 %928, %RAX_val.205, !mcsema_real_eip !143
  store i1 %947, i1* %CF, !mcsema_real_eip !143
  store i64 %928, i64* %XAX, !mcsema_real_eip !143
  %RAX_val.206 = load i64, i64* %XAX, !mcsema_real_eip !144
  store i64 %RAX_val.206, i64* %XSI, !mcsema_real_eip !144
  %RDI_val.207 = load i64, i64* %XDI, !mcsema_real_eip !145
  %RSI_val.208 = load i64, i64* %XSI, !mcsema_real_eip !145
  %RDX_val.209 = load i64, i64* %XDX, !mcsema_real_eip !145
  %RSP_val.210 = load i64, i64* %XSP, !mcsema_real_eip !145
  %948 = sub i64 %RSP_val.210, 8, !mcsema_real_eip !145
  %949 = inttoptr i64 %948 to i64*, !mcsema_real_eip !145
  store i64 -2415393069852865332, i64* %949, !mcsema_real_eip !145
  store i64 %948, i64* %XSP, !mcsema_real_eip !145
  %950 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.207, i64 %RSI_val.208, i64 %RDX_val.209), !mcsema_real_eip !145
  store i64 %950, i64* %XAX, !mcsema_real_eip !145
  %RBP_val.211 = load i64, i64* %XBP, !mcsema_real_eip !146
  %951 = add i64 %RBP_val.211, -44, !mcsema_real_eip !146
  %952 = inttoptr i64 %951 to i64*, !mcsema_real_eip !146
  %EAX.212 = bitcast i64* %XAX to i32*, !mcsema_real_eip !146
  %EAX_val.213 = load i32, i32* %EAX.212, !mcsema_real_eip !146
  %953 = ptrtoint i64* %952 to i64, !mcsema_real_eip !146
  %954 = inttoptr i64 %953 to i32*, !mcsema_real_eip !146
  store i32 %EAX_val.213, i32* %954, !mcsema_real_eip !146
  %RBP_val.214 = load i64, i64* %XBP, !mcsema_real_eip !147
  %955 = add i64 %RBP_val.214, -44, !mcsema_real_eip !147
  %956 = inttoptr i64 %955 to i64*, !mcsema_real_eip !147
  %957 = ptrtoint i64* %956 to i64, !mcsema_real_eip !147
  %958 = inttoptr i64 %957 to i32*, !mcsema_real_eip !147
  %959 = load i32, i32* %958, !mcsema_real_eip !147
  %960 = zext i32 %959 to i64, !mcsema_real_eip !147
  store i64 %960, i64* %XAX, !mcsema_real_eip !147
  %EAX.215 = bitcast i64* %XAX to i32*, !mcsema_real_eip !148
  %EAX_val.216 = load i32, i32* %EAX.215, !mcsema_real_eip !148
  %961 = xor i32 %EAX_val.216, -1534560611, !mcsema_real_eip !148
  store i1 false, i1* %CF, !mcsema_real_eip !148
  store i1 false, i1* %OF, !mcsema_real_eip !148
  %962 = lshr i32 %961, 31, !mcsema_real_eip !148
  %963 = trunc i32 %962 to i1, !mcsema_real_eip !148
  store i1 %963, i1* %SF, !mcsema_real_eip !148
  %964 = icmp eq i32 %961, 0, !mcsema_real_eip !148
  store i1 %964, i1* %ZF, !mcsema_real_eip !148
  %965 = trunc i32 %961 to i8, !mcsema_real_eip !148
  %966 = call i8 @llvm.ctpop.i8(i8 %965), !mcsema_real_eip !148
  %967 = trunc i8 %966 to i1, !mcsema_real_eip !148
  %968 = xor i1 %967, true, !mcsema_real_eip !148
  store i1 %968, i1* %PF, !mcsema_real_eip !148
  store i1 undef, i1* %AF, !mcsema_real_eip !148
  %969 = zext i32 %961 to i64, !mcsema_real_eip !148
  store i64 %969, i64* %XAX, !mcsema_real_eip !148
  %RBP_val.217 = load i64, i64* %XBP, !mcsema_real_eip !149
  %970 = add i64 %RBP_val.217, -48, !mcsema_real_eip !149
  %971 = inttoptr i64 %970 to i64*, !mcsema_real_eip !149
  %EAX.218 = bitcast i64* %XAX to i32*, !mcsema_real_eip !149
  %EAX_val.219 = load i32, i32* %EAX.218, !mcsema_real_eip !149
  %972 = ptrtoint i64* %971 to i64, !mcsema_real_eip !149
  %973 = inttoptr i64 %972 to i32*, !mcsema_real_eip !149
  store i32 %EAX_val.219, i32* %973, !mcsema_real_eip !149
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !150
  %974 = add i64 %RBP_val.220, -48, !mcsema_real_eip !150
  %975 = inttoptr i64 %974 to i64*, !mcsema_real_eip !150
  %976 = ptrtoint i64* %975 to i64, !mcsema_real_eip !150
  %977 = inttoptr i64 %976 to i32*, !mcsema_real_eip !150
  %978 = load i32, i32* %977, !mcsema_real_eip !150
  %979 = zext i32 %978 to i64, !mcsema_real_eip !150
  store i64 %979, i64* %XAX, !mcsema_real_eip !150
  %EAX.221 = bitcast i64* %XAX to i32*, !mcsema_real_eip !151
  %EAX_val.222 = load i32, i32* %EAX.221, !mcsema_real_eip !151
  %980 = and i32 16, 31, !mcsema_real_eip !151
  %981 = sub i32 16, 1, !mcsema_real_eip !151
  %982 = icmp ne i32 %980, 0, !mcsema_real_eip !151
  %983 = select i1 %982, i32 %981, i32 0, !mcsema_real_eip !151
  %984 = select i1 %982, i32 1, i32 0, !mcsema_real_eip !151
  %985 = lshr i32 %EAX_val.222, %983, !mcsema_real_eip !151
  %986 = and i32 %985, 1, !mcsema_real_eip !151
  %987 = icmp ne i32 %986, 0, !mcsema_real_eip !151
  %988 = load i1, i1* %CF, !mcsema_real_eip !151
  %989 = select i1 %982, i1 %987, i1 %988, !mcsema_real_eip !151
  %990 = lshr i32 %985, %984, !mcsema_real_eip !151
  %991 = icmp eq i32 %980, 1, !mcsema_real_eip !151
  %992 = load i1, i1* %OF, !mcsema_real_eip !151
  %993 = and i32 %EAX_val.222, -2147483648, !mcsema_real_eip !151
  %994 = icmp ne i32 %993, 0, !mcsema_real_eip !151
  %995 = select i1 %991, i1 %994, i1 %992, !mcsema_real_eip !151
  store i1 %995, i1* %OF, !mcsema_real_eip !151
  store i1 %989, i1* %CF, !mcsema_real_eip !151
  %996 = load i1, i1* %ZF, !mcsema_real_eip !151
  %997 = icmp eq i32 %990, 0, !mcsema_real_eip !151
  %998 = select i1 %982, i1 %997, i1 %996, !mcsema_real_eip !151
  store i1 %998, i1* %ZF, !mcsema_real_eip !151
  %999 = load i1, i1* %SF, !mcsema_real_eip !151
  %1000 = icmp slt i32 %990, 0, !mcsema_real_eip !151
  %1001 = select i1 %982, i1 %1000, i1 %999, !mcsema_real_eip !151
  store i1 %1001, i1* %SF, !mcsema_real_eip !151
  %1002 = load i1, i1* %PF, !mcsema_real_eip !151
  %1003 = trunc i32 %990 to i8, !mcsema_real_eip !151
  %1004 = call i8 @llvm.ctpop.i8(i8 %1003), !mcsema_real_eip !151
  %1005 = trunc i8 %1004 to i1, !mcsema_real_eip !151
  %1006 = xor i1 %1005, true, !mcsema_real_eip !151
  store i1 %1006, i1* %PF, !mcsema_real_eip !151
  %1007 = load i1, i1* %PF, !mcsema_real_eip !151
  %1008 = select i1 %982, i1 %1007, i1 %1002, !mcsema_real_eip !151
  store i1 %1008, i1* %PF, !mcsema_real_eip !151
  %1009 = zext i32 %990 to i64, !mcsema_real_eip !151
  store i64 %1009, i64* %XAX, !mcsema_real_eip !151
  %RBP_val.223 = load i64, i64* %XBP, !mcsema_real_eip !152
  %1010 = add i64 %RBP_val.223, -52, !mcsema_real_eip !152
  %1011 = inttoptr i64 %1010 to i64*, !mcsema_real_eip !152
  %EAX.224 = bitcast i64* %XAX to i32*, !mcsema_real_eip !152
  %EAX_val.225 = load i32, i32* %EAX.224, !mcsema_real_eip !152
  %1012 = ptrtoint i64* %1011 to i64, !mcsema_real_eip !152
  %1013 = inttoptr i64 %1012 to i32*, !mcsema_real_eip !152
  store i32 %EAX_val.225, i32* %1013, !mcsema_real_eip !152
  %RBP_val.226 = load i64, i64* %XBP, !mcsema_real_eip !153
  %1014 = add i64 %RBP_val.226, -48, !mcsema_real_eip !153
  %1015 = inttoptr i64 %1014 to i64*, !mcsema_real_eip !153
  %1016 = ptrtoint i64* %1015 to i64, !mcsema_real_eip !153
  %1017 = inttoptr i64 %1016 to i32*, !mcsema_real_eip !153
  %1018 = load i32, i32* %1017, !mcsema_real_eip !153
  %1019 = zext i32 %1018 to i64, !mcsema_real_eip !153
  store i64 %1019, i64* %XAX, !mcsema_real_eip !153
  %EAX.227 = bitcast i64* %XAX to i32*, !mcsema_real_eip !154
  %EAX_val.228 = load i32, i32* %EAX.227, !mcsema_real_eip !154
  %1020 = and i32 %EAX_val.228, 65535, !mcsema_real_eip !154
  %1021 = lshr i32 %1020, 31, !mcsema_real_eip !154
  %1022 = trunc i32 %1021 to i1, !mcsema_real_eip !154
  store i1 %1022, i1* %SF, !mcsema_real_eip !154
  %1023 = icmp eq i32 %1020, 0, !mcsema_real_eip !154
  store i1 %1023, i1* %ZF, !mcsema_real_eip !154
  %1024 = trunc i32 %1020 to i8, !mcsema_real_eip !154
  %1025 = call i8 @llvm.ctpop.i8(i8 %1024), !mcsema_real_eip !154
  %1026 = trunc i8 %1025 to i1, !mcsema_real_eip !154
  %1027 = xor i1 %1026, true, !mcsema_real_eip !154
  store i1 %1027, i1* %PF, !mcsema_real_eip !154
  store i1 false, i1* %OF, !mcsema_real_eip !154
  store i1 false, i1* %CF, !mcsema_real_eip !154
  store i1 undef, i1* %AF, !mcsema_real_eip !154
  %1028 = zext i32 %1020 to i64, !mcsema_real_eip !154
  store i64 %1028, i64* %XAX, !mcsema_real_eip !154
  %RBP_val.229 = load i64, i64* %XBP, !mcsema_real_eip !155
  %1029 = add i64 %RBP_val.229, -56, !mcsema_real_eip !155
  %1030 = inttoptr i64 %1029 to i64*, !mcsema_real_eip !155
  %EAX.230 = bitcast i64* %XAX to i32*, !mcsema_real_eip !155
  %EAX_val.231 = load i32, i32* %EAX.230, !mcsema_real_eip !155
  %1031 = ptrtoint i64* %1030 to i64, !mcsema_real_eip !155
  %1032 = inttoptr i64 %1031 to i32*, !mcsema_real_eip !155
  store i32 %EAX_val.231, i32* %1032, !mcsema_real_eip !155
  %RBP_val.232 = load i64, i64* %XBP, !mcsema_real_eip !156
  %1033 = add i64 %RBP_val.232, -52, !mcsema_real_eip !156
  %1034 = inttoptr i64 %1033 to i64*, !mcsema_real_eip !156
  %1035 = ptrtoint i64* %1034 to i64, !mcsema_real_eip !156
  %1036 = inttoptr i64 %1035 to i32*, !mcsema_real_eip !156
  %1037 = load i32, i32* %1036, !mcsema_real_eip !156
  %1038 = sub i32 %1037, 79, !mcsema_real_eip !156
  %1039 = xor i32 %1038, %1037, !mcsema_real_eip !156
  %1040 = xor i32 %1039, 79, !mcsema_real_eip !156
  %1041 = and i32 %1040, 16, !mcsema_real_eip !156
  %1042 = icmp ne i32 %1041, 0, !mcsema_real_eip !156
  store i1 %1042, i1* %AF, !mcsema_real_eip !156
  %1043 = trunc i32 %1038 to i8, !mcsema_real_eip !156
  %1044 = call i8 @llvm.ctpop.i8(i8 %1043), !mcsema_real_eip !156
  %1045 = trunc i8 %1044 to i1, !mcsema_real_eip !156
  %1046 = xor i1 %1045, true, !mcsema_real_eip !156
  store i1 %1046, i1* %PF, !mcsema_real_eip !156
  %1047 = icmp eq i32 %1038, 0, !mcsema_real_eip !156
  store i1 %1047, i1* %ZF, !mcsema_real_eip !156
  %1048 = lshr i32 %1038, 31, !mcsema_real_eip !156
  %1049 = trunc i32 %1048 to i1, !mcsema_real_eip !156
  store i1 %1049, i1* %SF, !mcsema_real_eip !156
  %1050 = icmp ult i32 %1037, 79, !mcsema_real_eip !156
  store i1 %1050, i1* %CF, !mcsema_real_eip !156
  %1051 = xor i32 %1037, 79, !mcsema_real_eip !156
  %1052 = xor i32 %1037, %1038, !mcsema_real_eip !156
  %1053 = and i32 %1051, %1052, !mcsema_real_eip !156
  %1054 = lshr i32 %1053, 31, !mcsema_real_eip !156
  %1055 = trunc i32 %1054 to i1, !mcsema_real_eip !156
  store i1 %1055, i1* %OF, !mcsema_real_eip !156
  %1056 = load i1, i1* %ZF, !mcsema_real_eip !157
  %1057 = icmp eq i1 %1056, false, !mcsema_real_eip !157
  br i1 %1057, label %block_0x28c, label %block_0x274, !mcsema_real_eip !157

block_0x21e:                                      ; preds = %block_0x20a
  %RBP_val.233 = load i64, i64* %XBP, !mcsema_real_eip !158
  %1058 = add i64 %RBP_val.233, -20, !mcsema_real_eip !158
  %1059 = inttoptr i64 %1058 to i64*, !mcsema_real_eip !158
  %1060 = ptrtoint i64* %1059 to i64, !mcsema_real_eip !158
  %1061 = inttoptr i64 %1060 to i32*, !mcsema_real_eip !158
  store i32 43690, i32* %1061, !mcsema_real_eip !158
  br label %block_0x231, !mcsema_real_eip !159

block_0x274:                                      ; preds = %block_0x231
  %RBP_val.235 = load i64, i64* %XBP, !mcsema_real_eip !160
  %1062 = add i64 %RBP_val.235, -56, !mcsema_real_eip !160
  %1063 = inttoptr i64 %1062 to i64*, !mcsema_real_eip !160
  %1064 = ptrtoint i64* %1063 to i64, !mcsema_real_eip !160
  %1065 = inttoptr i64 %1064 to i32*, !mcsema_real_eip !160
  %1066 = load i32, i32* %1065, !mcsema_real_eip !160
  %1067 = zext i32 %1066 to i64, !mcsema_real_eip !160
  store i64 %1067, i64* %XAX, !mcsema_real_eip !160
  %RBP_val.236 = load i64, i64* %XBP, !mcsema_real_eip !161
  %1068 = add i64 %RBP_val.236, -20, !mcsema_real_eip !161
  %1069 = inttoptr i64 %1068 to i64*, !mcsema_real_eip !161
  %EAX.237 = bitcast i64* %XAX to i32*, !mcsema_real_eip !161
  %EAX_val.238 = load i32, i32* %EAX.237, !mcsema_real_eip !161
  %1070 = ptrtoint i64* %1069 to i64, !mcsema_real_eip !161
  %1071 = inttoptr i64 %1070 to i32*, !mcsema_real_eip !161
  %1072 = load i32, i32* %1071, !mcsema_real_eip !161
  %1073 = sub i32 %EAX_val.238, %1072, !mcsema_real_eip !161
  %1074 = xor i32 %1073, %EAX_val.238, !mcsema_real_eip !161
  %1075 = xor i32 %1074, %1072, !mcsema_real_eip !161
  %1076 = and i32 %1075, 16, !mcsema_real_eip !161
  %1077 = icmp ne i32 %1076, 0, !mcsema_real_eip !161
  store i1 %1077, i1* %AF, !mcsema_real_eip !161
  %1078 = trunc i32 %1073 to i8, !mcsema_real_eip !161
  %1079 = call i8 @llvm.ctpop.i8(i8 %1078), !mcsema_real_eip !161
  %1080 = trunc i8 %1079 to i1, !mcsema_real_eip !161
  %1081 = xor i1 %1080, true, !mcsema_real_eip !161
  store i1 %1081, i1* %PF, !mcsema_real_eip !161
  %1082 = icmp eq i32 %1073, 0, !mcsema_real_eip !161
  store i1 %1082, i1* %ZF, !mcsema_real_eip !161
  %1083 = lshr i32 %1073, 31, !mcsema_real_eip !161
  %1084 = trunc i32 %1083 to i1, !mcsema_real_eip !161
  store i1 %1084, i1* %SF, !mcsema_real_eip !161
  %1085 = icmp ult i32 %EAX_val.238, %1072, !mcsema_real_eip !161
  store i1 %1085, i1* %CF, !mcsema_real_eip !161
  %1086 = xor i32 %EAX_val.238, %1072, !mcsema_real_eip !161
  %1087 = xor i32 %EAX_val.238, %1073, !mcsema_real_eip !161
  %1088 = and i32 %1086, %1087, !mcsema_real_eip !161
  %1089 = lshr i32 %1088, 31, !mcsema_real_eip !161
  %1090 = trunc i32 %1089 to i1, !mcsema_real_eip !161
  store i1 %1090, i1* %OF, !mcsema_real_eip !161
  %1091 = load i1, i1* %ZF, !mcsema_real_eip !162
  %1092 = icmp eq i1 %1091, false, !mcsema_real_eip !162
  br i1 %1092, label %block_0x28c, label %block_0x280, !mcsema_real_eip !162

block_0x28c:                                      ; preds = %block_0x274, %block_0x231
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !163
  %1093 = add i64 %RBP_val.234, -20, !mcsema_real_eip !163
  %1094 = inttoptr i64 %1093 to i64*, !mcsema_real_eip !163
  %1095 = ptrtoint i64* %1094 to i64, !mcsema_real_eip !163
  %1096 = inttoptr i64 %1095 to i32*, !mcsema_real_eip !163
  store i32 48351, i32* %1096, !mcsema_real_eip !163
  br label %block_0x293, !mcsema_real_eip !160

block_0x293:                                      ; preds = %block_0x280, %block_0x28c
  %1097 = zext i32 8 to i64, !mcsema_real_eip !164
  store i64 %1097, i64* %XDX, !mcsema_real_eip !164
  %RBP_val.239 = load i64, i64* %XBP, !mcsema_real_eip !165
  %1098 = add i64 %RBP_val.239, -20, !mcsema_real_eip !165
  %1099 = inttoptr i64 %1098 to i64*, !mcsema_real_eip !165
  %1100 = ptrtoint i64* %1099 to i64, !mcsema_real_eip !165
  %1101 = inttoptr i64 %1100 to i32*, !mcsema_real_eip !165
  %1102 = load i32, i32* %1101, !mcsema_real_eip !165
  %1103 = zext i32 %1102 to i64, !mcsema_real_eip !165
  store i64 %1103, i64* %XDI, !mcsema_real_eip !165
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !166
  %1104 = add i64 %RBP_val.240, -16, !mcsema_real_eip !166
  %1105 = inttoptr i64 %1104 to i64*, !mcsema_real_eip !166
  %1106 = load i64, i64* %1105, !mcsema_real_eip !166
  store i64 %1106, i64* %XAX, !mcsema_real_eip !166
  %RAX_val.241 = load i64, i64* %XAX, !mcsema_real_eip !167
  %1107 = add i64 20, %RAX_val.241, !mcsema_real_eip !167
  %1108 = xor i64 %1107, %RAX_val.241, !mcsema_real_eip !167
  %1109 = xor i64 %1108, 20, !mcsema_real_eip !167
  %1110 = and i64 %1109, 16, !mcsema_real_eip !167
  %1111 = icmp ne i64 %1110, 0, !mcsema_real_eip !167
  store i1 %1111, i1* %AF, !mcsema_real_eip !167
  %1112 = lshr i64 %1107, 63, !mcsema_real_eip !167
  %1113 = trunc i64 %1112 to i1, !mcsema_real_eip !167
  store i1 %1113, i1* %SF, !mcsema_real_eip !167
  %1114 = icmp eq i64 %1107, 0, !mcsema_real_eip !167
  store i1 %1114, i1* %ZF, !mcsema_real_eip !167
  %1115 = xor i64 %RAX_val.241, 20, !mcsema_real_eip !167
  %1116 = xor i64 %1115, -1, !mcsema_real_eip !167
  %1117 = xor i64 %RAX_val.241, %1107, !mcsema_real_eip !167
  %1118 = and i64 %1116, %1117, !mcsema_real_eip !167
  %1119 = lshr i64 %1118, 63, !mcsema_real_eip !167
  %1120 = and i64 %1119, 1, !mcsema_real_eip !167
  %1121 = trunc i64 %1120 to i1, !mcsema_real_eip !167
  store i1 %1121, i1* %OF, !mcsema_real_eip !167
  %1122 = trunc i64 %1107 to i8, !mcsema_real_eip !167
  %1123 = call i8 @llvm.ctpop.i8(i8 %1122), !mcsema_real_eip !167
  %1124 = trunc i8 %1123 to i1, !mcsema_real_eip !167
  %1125 = xor i1 %1124, true, !mcsema_real_eip !167
  store i1 %1125, i1* %PF, !mcsema_real_eip !167
  %1126 = icmp ult i64 %1107, %RAX_val.241, !mcsema_real_eip !167
  store i1 %1126, i1* %CF, !mcsema_real_eip !167
  store i64 %1107, i64* %XAX, !mcsema_real_eip !167
  %RAX_val.242 = load i64, i64* %XAX, !mcsema_real_eip !168
  store i64 %RAX_val.242, i64* %XSI, !mcsema_real_eip !168
  %RDI_val.243 = load i64, i64* %XDI, !mcsema_real_eip !169
  %RSI_val.244 = load i64, i64* %XSI, !mcsema_real_eip !169
  %RDX_val.245 = load i64, i64* %XDX, !mcsema_real_eip !169
  %RSP_val.246 = load i64, i64* %XSP, !mcsema_real_eip !169
  %1127 = sub i64 %RSP_val.246, 8, !mcsema_real_eip !169
  %1128 = inttoptr i64 %1127 to i64*, !mcsema_real_eip !169
  store i64 -2415393069852865332, i64* %1128, !mcsema_real_eip !169
  store i64 %1127, i64* %XSP, !mcsema_real_eip !169
  %1129 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.243, i64 %RSI_val.244, i64 %RDX_val.245), !mcsema_real_eip !169
  store i64 %1129, i64* %XAX, !mcsema_real_eip !169
  %RBP_val.247 = load i64, i64* %XBP, !mcsema_real_eip !170
  %1130 = add i64 %RBP_val.247, -60, !mcsema_real_eip !170
  %1131 = inttoptr i64 %1130 to i64*, !mcsema_real_eip !170
  %EAX.248 = bitcast i64* %XAX to i32*, !mcsema_real_eip !170
  %EAX_val.249 = load i32, i32* %EAX.248, !mcsema_real_eip !170
  %1132 = ptrtoint i64* %1131 to i64, !mcsema_real_eip !170
  %1133 = inttoptr i64 %1132 to i32*, !mcsema_real_eip !170
  store i32 %EAX_val.249, i32* %1133, !mcsema_real_eip !170
  %RBP_val.250 = load i64, i64* %XBP, !mcsema_real_eip !171
  %1134 = add i64 %RBP_val.250, -60, !mcsema_real_eip !171
  %1135 = inttoptr i64 %1134 to i64*, !mcsema_real_eip !171
  %1136 = ptrtoint i64* %1135 to i64, !mcsema_real_eip !171
  %1137 = inttoptr i64 %1136 to i32*, !mcsema_real_eip !171
  %1138 = load i32, i32* %1137, !mcsema_real_eip !171
  %1139 = zext i32 %1138 to i64, !mcsema_real_eip !171
  store i64 %1139, i64* %XAX, !mcsema_real_eip !171
  %EAX.251 = bitcast i64* %XAX to i32*, !mcsema_real_eip !172
  %EAX_val.252 = load i32, i32* %EAX.251, !mcsema_real_eip !172
  %1140 = sub i32 %EAX_val.252, 3, !mcsema_real_eip !172
  %1141 = xor i32 %1140, %EAX_val.252, !mcsema_real_eip !172
  %1142 = xor i32 %1141, 3, !mcsema_real_eip !172
  %1143 = and i32 %1142, 16, !mcsema_real_eip !172
  %1144 = icmp ne i32 %1143, 0, !mcsema_real_eip !172
  store i1 %1144, i1* %AF, !mcsema_real_eip !172
  %1145 = trunc i32 %1140 to i8, !mcsema_real_eip !172
  %1146 = call i8 @llvm.ctpop.i8(i8 %1145), !mcsema_real_eip !172
  %1147 = trunc i8 %1146 to i1, !mcsema_real_eip !172
  %1148 = xor i1 %1147, true, !mcsema_real_eip !172
  store i1 %1148, i1* %PF, !mcsema_real_eip !172
  %1149 = icmp eq i32 %1140, 0, !mcsema_real_eip !172
  store i1 %1149, i1* %ZF, !mcsema_real_eip !172
  %1150 = lshr i32 %1140, 31, !mcsema_real_eip !172
  %1151 = trunc i32 %1150 to i1, !mcsema_real_eip !172
  store i1 %1151, i1* %SF, !mcsema_real_eip !172
  %1152 = icmp ult i32 %EAX_val.252, 3, !mcsema_real_eip !172
  store i1 %1152, i1* %CF, !mcsema_real_eip !172
  %1153 = xor i32 %EAX_val.252, 3, !mcsema_real_eip !172
  %1154 = xor i32 %EAX_val.252, %1140, !mcsema_real_eip !172
  %1155 = and i32 %1153, %1154, !mcsema_real_eip !172
  %1156 = lshr i32 %1155, 31, !mcsema_real_eip !172
  %1157 = trunc i32 %1156 to i1, !mcsema_real_eip !172
  store i1 %1157, i1* %OF, !mcsema_real_eip !172
  %1158 = zext i32 %1140 to i64, !mcsema_real_eip !172
  store i64 %1158, i64* %XAX, !mcsema_real_eip !172
  %RBP_val.253 = load i64, i64* %XBP, !mcsema_real_eip !173
  %1159 = add i64 %RBP_val.253, -60, !mcsema_real_eip !173
  %1160 = inttoptr i64 %1159 to i64*, !mcsema_real_eip !173
  %EAX.254 = bitcast i64* %XAX to i32*, !mcsema_real_eip !173
  %EAX_val.255 = load i32, i32* %EAX.254, !mcsema_real_eip !173
  %1161 = ptrtoint i64* %1160 to i64, !mcsema_real_eip !173
  %1162 = inttoptr i64 %1161 to i32*, !mcsema_real_eip !173
  store i32 %EAX_val.255, i32* %1162, !mcsema_real_eip !173
  %RBP_val.256 = load i64, i64* %XBP, !mcsema_real_eip !174
  %1163 = add i64 %RBP_val.256, -60, !mcsema_real_eip !174
  %1164 = inttoptr i64 %1163 to i64*, !mcsema_real_eip !174
  %1165 = ptrtoint i64* %1164 to i64, !mcsema_real_eip !174
  %1166 = inttoptr i64 %1165 to i32*, !mcsema_real_eip !174
  %1167 = load i32, i32* %1166, !mcsema_real_eip !174
  %1168 = zext i32 %1167 to i64, !mcsema_real_eip !174
  store i64 %1168, i64* %XAX, !mcsema_real_eip !174
  %EAX.257 = bitcast i64* %XAX to i32*, !mcsema_real_eip !175
  %EAX_val.258 = load i32, i32* %EAX.257, !mcsema_real_eip !175
  %1169 = and i32 %EAX_val.258, 7, !mcsema_real_eip !175
  %1170 = lshr i32 %1169, 31, !mcsema_real_eip !175
  %1171 = trunc i32 %1170 to i1, !mcsema_real_eip !175
  store i1 %1171, i1* %SF, !mcsema_real_eip !175
  %1172 = icmp eq i32 %1169, 0, !mcsema_real_eip !175
  store i1 %1172, i1* %ZF, !mcsema_real_eip !175
  %1173 = trunc i32 %1169 to i8, !mcsema_real_eip !175
  %1174 = call i8 @llvm.ctpop.i8(i8 %1173), !mcsema_real_eip !175
  %1175 = trunc i8 %1174 to i1, !mcsema_real_eip !175
  %1176 = xor i1 %1175, true, !mcsema_real_eip !175
  store i1 %1176, i1* %PF, !mcsema_real_eip !175
  store i1 false, i1* %OF, !mcsema_real_eip !175
  store i1 false, i1* %CF, !mcsema_real_eip !175
  store i1 undef, i1* %AF, !mcsema_real_eip !175
  %1177 = zext i32 %1169 to i64, !mcsema_real_eip !175
  store i64 %1177, i64* %XAX, !mcsema_real_eip !175
  %EAX.259 = bitcast i64* %XAX to i32*, !mcsema_real_eip !176
  %EAX_val.260 = load i32, i32* %EAX.259, !mcsema_real_eip !176
  %1178 = sub i32 %EAX_val.260, 0, !mcsema_real_eip !176
  %1179 = xor i32 %1178, %EAX_val.260, !mcsema_real_eip !176
  %1180 = xor i32 %1179, 0, !mcsema_real_eip !176
  %1181 = and i32 %1180, 16, !mcsema_real_eip !176
  %1182 = icmp ne i32 %1181, 0, !mcsema_real_eip !176
  store i1 %1182, i1* %AF, !mcsema_real_eip !176
  %1183 = trunc i32 %1178 to i8, !mcsema_real_eip !176
  %1184 = call i8 @llvm.ctpop.i8(i8 %1183), !mcsema_real_eip !176
  %1185 = trunc i8 %1184 to i1, !mcsema_real_eip !176
  %1186 = xor i1 %1185, true, !mcsema_real_eip !176
  store i1 %1186, i1* %PF, !mcsema_real_eip !176
  %1187 = icmp eq i32 %1178, 0, !mcsema_real_eip !176
  store i1 %1187, i1* %ZF, !mcsema_real_eip !176
  %1188 = lshr i32 %1178, 31, !mcsema_real_eip !176
  %1189 = trunc i32 %1188 to i1, !mcsema_real_eip !176
  store i1 %1189, i1* %SF, !mcsema_real_eip !176
  %1190 = icmp ult i32 %EAX_val.260, 0, !mcsema_real_eip !176
  store i1 %1190, i1* %CF, !mcsema_real_eip !176
  %1191 = xor i32 %EAX_val.260, 0, !mcsema_real_eip !176
  %1192 = xor i32 %EAX_val.260, %1178, !mcsema_real_eip !176
  %1193 = and i32 %1191, %1192, !mcsema_real_eip !176
  %1194 = lshr i32 %1193, 31, !mcsema_real_eip !176
  %1195 = trunc i32 %1194 to i1, !mcsema_real_eip !176
  store i1 %1195, i1* %OF, !mcsema_real_eip !176
  %1196 = load i1, i1* %ZF, !mcsema_real_eip !177
  %1197 = icmp eq i1 %1196, true, !mcsema_real_eip !177
  br i1 %1197, label %block_0x2d2, label %block_0x2c6, !mcsema_real_eip !177

block_0x280:                                      ; preds = %block_0x274
  %RBP_val.261 = load i64, i64* %XBP, !mcsema_real_eip !178
  %1198 = add i64 %RBP_val.261, -20, !mcsema_real_eip !178
  %1199 = inttoptr i64 %1198 to i64*, !mcsema_real_eip !178
  %1200 = ptrtoint i64* %1199 to i64, !mcsema_real_eip !178
  %1201 = inttoptr i64 %1200 to i32*, !mcsema_real_eip !178
  store i32 0, i32* %1201, !mcsema_real_eip !178
  br label %block_0x293, !mcsema_real_eip !179

block_0x2c6:                                      ; preds = %block_0x293
  %RBP_val.269 = load i64, i64* %XBP, !mcsema_real_eip !180
  %1202 = add i64 %RBP_val.269, -4, !mcsema_real_eip !180
  %1203 = inttoptr i64 %1202 to i64*, !mcsema_real_eip !180
  %1204 = ptrtoint i64* %1203 to i64, !mcsema_real_eip !180
  %1205 = inttoptr i64 %1204 to i32*, !mcsema_real_eip !180
  store i32 -21, i32* %1205, !mcsema_real_eip !180
  br label %block_0x417, !mcsema_real_eip !181

block_0x2d2:                                      ; preds = %block_0x293
  %RBP_val.262 = load i64, i64* %XBP, !mcsema_real_eip !182
  %1206 = add i64 %RBP_val.262, -60, !mcsema_real_eip !182
  %1207 = inttoptr i64 %1206 to i64*, !mcsema_real_eip !182
  %1208 = ptrtoint i64* %1207 to i64, !mcsema_real_eip !182
  %1209 = inttoptr i64 %1208 to i32*, !mcsema_real_eip !182
  %1210 = load i32, i32* %1209, !mcsema_real_eip !182
  %1211 = zext i32 %1210 to i64, !mcsema_real_eip !182
  store i64 %1211, i64* %XAX, !mcsema_real_eip !182
  %EAX.263 = bitcast i64* %XAX to i32*, !mcsema_real_eip !183
  %EAX_val.264 = load i32, i32* %EAX.263, !mcsema_real_eip !183
  %1212 = sub i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  %1213 = xor i32 %1212, %EAX_val.264, !mcsema_real_eip !183
  %1214 = xor i32 %1213, -2147483648, !mcsema_real_eip !183
  %1215 = and i32 %1214, 16, !mcsema_real_eip !183
  %1216 = icmp ne i32 %1215, 0, !mcsema_real_eip !183
  store i1 %1216, i1* %AF, !mcsema_real_eip !183
  %1217 = trunc i32 %1212 to i8, !mcsema_real_eip !183
  %1218 = call i8 @llvm.ctpop.i8(i8 %1217), !mcsema_real_eip !183
  %1219 = trunc i8 %1218 to i1, !mcsema_real_eip !183
  %1220 = xor i1 %1219, true, !mcsema_real_eip !183
  store i1 %1220, i1* %PF, !mcsema_real_eip !183
  %1221 = icmp eq i32 %1212, 0, !mcsema_real_eip !183
  store i1 %1221, i1* %ZF, !mcsema_real_eip !183
  %1222 = lshr i32 %1212, 31, !mcsema_real_eip !183
  %1223 = trunc i32 %1222 to i1, !mcsema_real_eip !183
  store i1 %1223, i1* %SF, !mcsema_real_eip !183
  %1224 = icmp ult i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  store i1 %1224, i1* %CF, !mcsema_real_eip !183
  %1225 = xor i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  %1226 = xor i32 %EAX_val.264, %1212, !mcsema_real_eip !183
  %1227 = and i32 %1225, %1226, !mcsema_real_eip !183
  %1228 = lshr i32 %1227, 31, !mcsema_real_eip !183
  %1229 = trunc i32 %1228 to i1, !mcsema_real_eip !183
  store i1 %1229, i1* %OF, !mcsema_real_eip !183
  %1230 = zext i32 %1212 to i64, !mcsema_real_eip !183
  store i64 %1230, i64* %XAX, !mcsema_real_eip !183
  %RBP_val.265 = load i64, i64* %XBP, !mcsema_real_eip !184
  %1231 = add i64 %RBP_val.265, -60, !mcsema_real_eip !184
  %1232 = inttoptr i64 %1231 to i64*, !mcsema_real_eip !184
  %EAX.266 = bitcast i64* %XAX to i32*, !mcsema_real_eip !184
  %EAX_val.267 = load i32, i32* %EAX.266, !mcsema_real_eip !184
  %1233 = ptrtoint i64* %1232 to i64, !mcsema_real_eip !184
  %1234 = inttoptr i64 %1233 to i32*, !mcsema_real_eip !184
  store i32 %EAX_val.267, i32* %1234, !mcsema_real_eip !184
  %RBP_val.268 = load i64, i64* %XBP, !mcsema_real_eip !185
  %1235 = add i64 %RBP_val.268, -60, !mcsema_real_eip !185
  %1236 = inttoptr i64 %1235 to i64*, !mcsema_real_eip !185
  %1237 = ptrtoint i64* %1236 to i64, !mcsema_real_eip !185
  %1238 = inttoptr i64 %1237 to i32*, !mcsema_real_eip !185
  %1239 = load i32, i32* %1238, !mcsema_real_eip !185
  %1240 = sub i32 %1239, 268435455, !mcsema_real_eip !185
  %1241 = xor i32 %1240, %1239, !mcsema_real_eip !185
  %1242 = xor i32 %1241, 268435455, !mcsema_real_eip !185
  %1243 = and i32 %1242, 16, !mcsema_real_eip !185
  %1244 = icmp ne i32 %1243, 0, !mcsema_real_eip !185
  store i1 %1244, i1* %AF, !mcsema_real_eip !185
  %1245 = trunc i32 %1240 to i8, !mcsema_real_eip !185
  %1246 = call i8 @llvm.ctpop.i8(i8 %1245), !mcsema_real_eip !185
  %1247 = trunc i8 %1246 to i1, !mcsema_real_eip !185
  %1248 = xor i1 %1247, true, !mcsema_real_eip !185
  store i1 %1248, i1* %PF, !mcsema_real_eip !185
  %1249 = icmp eq i32 %1240, 0, !mcsema_real_eip !185
  store i1 %1249, i1* %ZF, !mcsema_real_eip !185
  %1250 = lshr i32 %1240, 31, !mcsema_real_eip !185
  %1251 = trunc i32 %1250 to i1, !mcsema_real_eip !185
  store i1 %1251, i1* %SF, !mcsema_real_eip !185
  %1252 = icmp ult i32 %1239, 268435455, !mcsema_real_eip !185
  store i1 %1252, i1* %CF, !mcsema_real_eip !185
  %1253 = xor i32 %1239, 268435455, !mcsema_real_eip !185
  %1254 = xor i32 %1239, %1240, !mcsema_real_eip !185
  %1255 = and i32 %1253, %1254, !mcsema_real_eip !185
  %1256 = lshr i32 %1255, 31, !mcsema_real_eip !185
  %1257 = trunc i32 %1256 to i1, !mcsema_real_eip !185
  store i1 %1257, i1* %OF, !mcsema_real_eip !185
  %1258 = load i1, i1* %ZF, !mcsema_real_eip !186
  %1259 = icmp eq i1 %1258, true, !mcsema_real_eip !186
  %1260 = load i1, i1* %CF, !mcsema_real_eip !186
  %1261 = icmp eq i1 %1260, true, !mcsema_real_eip !186
  %1262 = or i1 %1261, %1259, !mcsema_real_eip !186
  br i1 %1262, label %block_0x2f6, label %block_0x2ea, !mcsema_real_eip !186

block_0x2ea:                                      ; preds = %block_0x2d2
  %RBP_val.309 = load i64, i64* %XBP, !mcsema_real_eip !187
  %1263 = add i64 %RBP_val.309, -4, !mcsema_real_eip !187
  %1264 = inttoptr i64 %1263 to i64*, !mcsema_real_eip !187
  %1265 = ptrtoint i64* %1264 to i64, !mcsema_real_eip !187
  %1266 = inttoptr i64 %1265 to i32*, !mcsema_real_eip !187
  store i32 -22, i32* %1266, !mcsema_real_eip !187
  br label %block_0x417, !mcsema_real_eip !188

block_0x2f6:                                      ; preds = %block_0x2d2
  %1267 = zext i32 10000 to i64, !mcsema_real_eip !189
  store i64 %1267, i64* %XAX, !mcsema_real_eip !189
  %RBP_val.270 = load i64, i64* %XBP, !mcsema_real_eip !190
  %1268 = add i64 %RBP_val.270, -60, !mcsema_real_eip !190
  %1269 = inttoptr i64 %1268 to i64*, !mcsema_real_eip !190
  %1270 = ptrtoint i64* %1269 to i64, !mcsema_real_eip !190
  %1271 = inttoptr i64 %1270 to i32*, !mcsema_real_eip !190
  %1272 = load i32, i32* %1271, !mcsema_real_eip !190
  %1273 = zext i32 %1272 to i64, !mcsema_real_eip !190
  store i64 %1273, i64* %XCX, !mcsema_real_eip !190
  %ECX.271 = bitcast i64* %XCX to i32*, !mcsema_real_eip !191
  %ECX_val.272 = load i32, i32* %ECX.271, !mcsema_real_eip !191
  %1274 = xor i32 %ECX_val.272, 13631488, !mcsema_real_eip !191
  store i1 false, i1* %CF, !mcsema_real_eip !191
  store i1 false, i1* %OF, !mcsema_real_eip !191
  %1275 = lshr i32 %1274, 31, !mcsema_real_eip !191
  %1276 = trunc i32 %1275 to i1, !mcsema_real_eip !191
  store i1 %1276, i1* %SF, !mcsema_real_eip !191
  %1277 = icmp eq i32 %1274, 0, !mcsema_real_eip !191
  store i1 %1277, i1* %ZF, !mcsema_real_eip !191
  %1278 = trunc i32 %1274 to i8, !mcsema_real_eip !191
  %1279 = call i8 @llvm.ctpop.i8(i8 %1278), !mcsema_real_eip !191
  %1280 = trunc i8 %1279 to i1, !mcsema_real_eip !191
  %1281 = xor i1 %1280, true, !mcsema_real_eip !191
  store i1 %1281, i1* %PF, !mcsema_real_eip !191
  store i1 undef, i1* %AF, !mcsema_real_eip !191
  %1282 = zext i32 %1274 to i64, !mcsema_real_eip !191
  store i64 %1282, i64* %XCX, !mcsema_real_eip !191
  %RBP_val.273 = load i64, i64* %XBP, !mcsema_real_eip !192
  %1283 = add i64 %RBP_val.273, -60, !mcsema_real_eip !192
  %1284 = inttoptr i64 %1283 to i64*, !mcsema_real_eip !192
  %ECX.274 = bitcast i64* %XCX to i32*, !mcsema_real_eip !192
  %ECX_val.275 = load i32, i32* %ECX.274, !mcsema_real_eip !192
  %1285 = ptrtoint i64* %1284 to i64, !mcsema_real_eip !192
  %1286 = inttoptr i64 %1285 to i32*, !mcsema_real_eip !192
  store i32 %ECX_val.275, i32* %1286, !mcsema_real_eip !192
  %RBP_val.276 = load i64, i64* %XBP, !mcsema_real_eip !193
  %1287 = add i64 %RBP_val.276, -60, !mcsema_real_eip !193
  %1288 = inttoptr i64 %1287 to i64*, !mcsema_real_eip !193
  %1289 = ptrtoint i64* %1288 to i64, !mcsema_real_eip !193
  %1290 = inttoptr i64 %1289 to i32*, !mcsema_real_eip !193
  %1291 = load i32, i32* %1290, !mcsema_real_eip !193
  %1292 = zext i32 %1291 to i64, !mcsema_real_eip !193
  store i64 %1292, i64* %XCX, !mcsema_real_eip !193
  %ECX.277 = bitcast i64* %XCX to i32*, !mcsema_real_eip !194
  %ECX_val.278 = load i32, i32* %ECX.277, !mcsema_real_eip !194
  %1293 = and i32 4, 31, !mcsema_real_eip !194
  %1294 = sub i32 4, 1, !mcsema_real_eip !194
  %1295 = icmp ne i32 %1293, 0, !mcsema_real_eip !194
  %1296 = select i1 %1295, i32 %1294, i32 0, !mcsema_real_eip !194
  %1297 = select i1 %1295, i32 1, i32 0, !mcsema_real_eip !194
  %1298 = lshr i32 %ECX_val.278, %1296, !mcsema_real_eip !194
  %1299 = and i32 %1298, 1, !mcsema_real_eip !194
  %1300 = icmp ne i32 %1299, 0, !mcsema_real_eip !194
  %1301 = load i1, i1* %CF, !mcsema_real_eip !194
  %1302 = select i1 %1295, i1 %1300, i1 %1301, !mcsema_real_eip !194
  %1303 = lshr i32 %1298, %1297, !mcsema_real_eip !194
  %1304 = icmp eq i32 %1293, 1, !mcsema_real_eip !194
  %1305 = load i1, i1* %OF, !mcsema_real_eip !194
  %1306 = and i32 %ECX_val.278, -2147483648, !mcsema_real_eip !194
  %1307 = icmp ne i32 %1306, 0, !mcsema_real_eip !194
  %1308 = select i1 %1304, i1 %1307, i1 %1305, !mcsema_real_eip !194
  store i1 %1308, i1* %OF, !mcsema_real_eip !194
  store i1 %1302, i1* %CF, !mcsema_real_eip !194
  %1309 = load i1, i1* %ZF, !mcsema_real_eip !194
  %1310 = icmp eq i32 %1303, 0, !mcsema_real_eip !194
  %1311 = select i1 %1295, i1 %1310, i1 %1309, !mcsema_real_eip !194
  store i1 %1311, i1* %ZF, !mcsema_real_eip !194
  %1312 = load i1, i1* %SF, !mcsema_real_eip !194
  %1313 = icmp slt i32 %1303, 0, !mcsema_real_eip !194
  %1314 = select i1 %1295, i1 %1313, i1 %1312, !mcsema_real_eip !194
  store i1 %1314, i1* %SF, !mcsema_real_eip !194
  %1315 = load i1, i1* %PF, !mcsema_real_eip !194
  %1316 = trunc i32 %1303 to i8, !mcsema_real_eip !194
  %1317 = call i8 @llvm.ctpop.i8(i8 %1316), !mcsema_real_eip !194
  %1318 = trunc i8 %1317 to i1, !mcsema_real_eip !194
  %1319 = xor i1 %1318, true, !mcsema_real_eip !194
  store i1 %1319, i1* %PF, !mcsema_real_eip !194
  %1320 = load i1, i1* %PF, !mcsema_real_eip !194
  %1321 = select i1 %1295, i1 %1320, i1 %1315, !mcsema_real_eip !194
  store i1 %1321, i1* %PF, !mcsema_real_eip !194
  %1322 = zext i32 %1303 to i64, !mcsema_real_eip !194
  store i64 %1322, i64* %XCX, !mcsema_real_eip !194
  %RBP_val.279 = load i64, i64* %XBP, !mcsema_real_eip !195
  %1323 = add i64 %RBP_val.279, -60, !mcsema_real_eip !195
  %1324 = inttoptr i64 %1323 to i64*, !mcsema_real_eip !195
  %ECX.280 = bitcast i64* %XCX to i32*, !mcsema_real_eip !195
  %ECX_val.281 = load i32, i32* %ECX.280, !mcsema_real_eip !195
  %1325 = ptrtoint i64* %1324 to i64, !mcsema_real_eip !195
  %1326 = inttoptr i64 %1325 to i32*, !mcsema_real_eip !195
  store i32 %ECX_val.281, i32* %1326, !mcsema_real_eip !195
  %RBP_val.282 = load i64, i64* %XBP, !mcsema_real_eip !196
  %1327 = add i64 %RBP_val.282, -60, !mcsema_real_eip !196
  %1328 = inttoptr i64 %1327 to i64*, !mcsema_real_eip !196
  %1329 = ptrtoint i64* %1328 to i64, !mcsema_real_eip !196
  %1330 = inttoptr i64 %1329 to i32*, !mcsema_real_eip !196
  %1331 = load i32, i32* %1330, !mcsema_real_eip !196
  %1332 = zext i32 %1331 to i64, !mcsema_real_eip !196
  store i64 %1332, i64* %XCX, !mcsema_real_eip !196
  %ECX.283 = bitcast i64* %XCX to i32*, !mcsema_real_eip !197
  %ECX_val.284 = load i32, i32* %ECX.283, !mcsema_real_eip !197
  %1333 = sub i32 %ECX_val.284, 226, !mcsema_real_eip !197
  %1334 = xor i32 %1333, %ECX_val.284, !mcsema_real_eip !197
  %1335 = xor i32 %1334, 226, !mcsema_real_eip !197
  %1336 = and i32 %1335, 16, !mcsema_real_eip !197
  %1337 = icmp ne i32 %1336, 0, !mcsema_real_eip !197
  store i1 %1337, i1* %AF, !mcsema_real_eip !197
  %1338 = trunc i32 %1333 to i8, !mcsema_real_eip !197
  %1339 = call i8 @llvm.ctpop.i8(i8 %1338), !mcsema_real_eip !197
  %1340 = trunc i8 %1339 to i1, !mcsema_real_eip !197
  %1341 = xor i1 %1340, true, !mcsema_real_eip !197
  store i1 %1341, i1* %PF, !mcsema_real_eip !197
  %1342 = icmp eq i32 %1333, 0, !mcsema_real_eip !197
  store i1 %1342, i1* %ZF, !mcsema_real_eip !197
  %1343 = lshr i32 %1333, 31, !mcsema_real_eip !197
  %1344 = trunc i32 %1343 to i1, !mcsema_real_eip !197
  store i1 %1344, i1* %SF, !mcsema_real_eip !197
  %1345 = icmp ult i32 %ECX_val.284, 226, !mcsema_real_eip !197
  store i1 %1345, i1* %CF, !mcsema_real_eip !197
  %1346 = xor i32 %ECX_val.284, 226, !mcsema_real_eip !197
  %1347 = xor i32 %ECX_val.284, %1333, !mcsema_real_eip !197
  %1348 = and i32 %1346, %1347, !mcsema_real_eip !197
  %1349 = lshr i32 %1348, 31, !mcsema_real_eip !197
  %1350 = trunc i32 %1349 to i1, !mcsema_real_eip !197
  store i1 %1350, i1* %OF, !mcsema_real_eip !197
  %1351 = zext i32 %1333 to i64, !mcsema_real_eip !197
  store i64 %1351, i64* %XCX, !mcsema_real_eip !197
  %RBP_val.285 = load i64, i64* %XBP, !mcsema_real_eip !198
  %1352 = add i64 %RBP_val.285, -60, !mcsema_real_eip !198
  %1353 = inttoptr i64 %1352 to i64*, !mcsema_real_eip !198
  %ECX.286 = bitcast i64* %XCX to i32*, !mcsema_real_eip !198
  %ECX_val.287 = load i32, i32* %ECX.286, !mcsema_real_eip !198
  %1354 = ptrtoint i64* %1353 to i64, !mcsema_real_eip !198
  %1355 = inttoptr i64 %1354 to i32*, !mcsema_real_eip !198
  store i32 %ECX_val.287, i32* %1355, !mcsema_real_eip !198
  %RBP_val.288 = load i64, i64* %XBP, !mcsema_real_eip !199
  %1356 = add i64 %RBP_val.288, -60, !mcsema_real_eip !199
  %1357 = inttoptr i64 %1356 to i64*, !mcsema_real_eip !199
  %1358 = ptrtoint i64* %1357 to i64, !mcsema_real_eip !199
  %1359 = inttoptr i64 %1358 to i32*, !mcsema_real_eip !199
  %1360 = load i32, i32* %1359, !mcsema_real_eip !199
  %1361 = zext i32 %1360 to i64, !mcsema_real_eip !199
  store i64 %1361, i64* %XCX, !mcsema_real_eip !199
  %RBP_val.289 = load i64, i64* %XBP, !mcsema_real_eip !200
  %1362 = add i64 %RBP_val.289, -68, !mcsema_real_eip !200
  %1363 = inttoptr i64 %1362 to i64*, !mcsema_real_eip !200
  %EAX.290 = bitcast i64* %XAX to i32*, !mcsema_real_eip !200
  %EAX_val.291 = load i32, i32* %EAX.290, !mcsema_real_eip !200
  %1364 = ptrtoint i64* %1363 to i64, !mcsema_real_eip !200
  %1365 = inttoptr i64 %1364 to i32*, !mcsema_real_eip !200
  store i32 %EAX_val.291, i32* %1365, !mcsema_real_eip !200
  %ECX.292 = bitcast i64* %XCX to i32*, !mcsema_real_eip !201
  %ECX_val.293 = load i32, i32* %ECX.292, !mcsema_real_eip !201
  %1366 = zext i32 %ECX_val.293 to i64, !mcsema_real_eip !201
  store i64 %1366, i64* %XAX, !mcsema_real_eip !201
  %EDX.294 = bitcast i64* %XDX to i32*, !mcsema_real_eip !202
  %EDX_val.295 = load i32, i32* %EDX.294, !mcsema_real_eip !202
  %EDX.296 = bitcast i64* %XDX to i32*, !mcsema_real_eip !202
  %EDX_val.297 = load i32, i32* %EDX.296, !mcsema_real_eip !202
  %1367 = xor i32 %EDX_val.295, %EDX_val.297, !mcsema_real_eip !202
  store i1 false, i1* %CF, !mcsema_real_eip !202
  store i1 false, i1* %OF, !mcsema_real_eip !202
  %1368 = lshr i32 %1367, 31, !mcsema_real_eip !202
  %1369 = trunc i32 %1368 to i1, !mcsema_real_eip !202
  store i1 %1369, i1* %SF, !mcsema_real_eip !202
  %1370 = icmp eq i32 %1367, 0, !mcsema_real_eip !202
  store i1 %1370, i1* %ZF, !mcsema_real_eip !202
  %1371 = trunc i32 %1367 to i8, !mcsema_real_eip !202
  %1372 = call i8 @llvm.ctpop.i8(i8 %1371), !mcsema_real_eip !202
  %1373 = trunc i8 %1372 to i1, !mcsema_real_eip !202
  %1374 = xor i1 %1373, true, !mcsema_real_eip !202
  store i1 %1374, i1* %PF, !mcsema_real_eip !202
  store i1 undef, i1* %AF, !mcsema_real_eip !202
  %1375 = zext i32 %1367 to i64, !mcsema_real_eip !202
  store i64 %1375, i64* %XDX, !mcsema_real_eip !202
  %RBP_val.298 = load i64, i64* %XBP, !mcsema_real_eip !203
  %1376 = add i64 %RBP_val.298, -68, !mcsema_real_eip !203
  %1377 = inttoptr i64 %1376 to i64*, !mcsema_real_eip !203
  %1378 = ptrtoint i64* %1377 to i64, !mcsema_real_eip !203
  %1379 = inttoptr i64 %1378 to i32*, !mcsema_real_eip !203
  %1380 = load i32, i32* %1379, !mcsema_real_eip !203
  %1381 = zext i32 %1380 to i64, !mcsema_real_eip !203
  store i64 %1381, i64* %XCX, !mcsema_real_eip !203
  %ECX.299 = bitcast i64* %XCX to i32*, !mcsema_real_eip !204
  %ECX_val.300 = load i32, i32* %ECX.299, !mcsema_real_eip !204
  %EAX.301 = bitcast i64* %XAX to i32*, !mcsema_real_eip !204
  %EAX_val.302 = load i32, i32* %EAX.301, !mcsema_real_eip !204
  %EDX.303 = bitcast i64* %XDX to i32*, !mcsema_real_eip !204
  %EDX_val.304 = load i32, i32* %EDX.303, !mcsema_real_eip !204
  %1382 = zext i32 %EDX_val.304 to i64, !mcsema_real_eip !204
  %1383 = shl i64 %1382, 32, !mcsema_real_eip !204
  %1384 = sext i32 %EAX_val.302 to i64, !mcsema_real_eip !204
  %1385 = or i64 %1383, %1384, !mcsema_real_eip !204
  %1386 = zext i32 %ECX_val.300 to i64, !mcsema_real_eip !204
  %1387 = udiv i64 %1385, %1386, !mcsema_real_eip !204
  %1388 = urem i64 %1385, %1386, !mcsema_real_eip !204
  %1389 = trunc i64 %1388 to i32, !mcsema_real_eip !204
  %1390 = trunc i64 %1387 to i32, !mcsema_real_eip !204
  %1391 = zext i32 %1389 to i64, !mcsema_real_eip !204
  store i64 %1391, i64* %XDX, !mcsema_real_eip !204
  %1392 = zext i32 %1390 to i64, !mcsema_real_eip !204
  store i64 %1392, i64* %XAX, !mcsema_real_eip !204
  %RBP_val.305 = load i64, i64* %XBP, !mcsema_real_eip !205
  %1393 = add i64 %RBP_val.305, -60, !mcsema_real_eip !205
  %1394 = inttoptr i64 %1393 to i64*, !mcsema_real_eip !205
  %EAX.306 = bitcast i64* %XAX to i32*, !mcsema_real_eip !205
  %EAX_val.307 = load i32, i32* %EAX.306, !mcsema_real_eip !205
  %1395 = ptrtoint i64* %1394 to i64, !mcsema_real_eip !205
  %1396 = inttoptr i64 %1395 to i32*, !mcsema_real_eip !205
  store i32 %EAX_val.307, i32* %1396, !mcsema_real_eip !205
  %RBP_val.308 = load i64, i64* %XBP, !mcsema_real_eip !206
  %1397 = add i64 %RBP_val.308, -60, !mcsema_real_eip !206
  %1398 = inttoptr i64 %1397 to i64*, !mcsema_real_eip !206
  %1399 = ptrtoint i64* %1398 to i64, !mcsema_real_eip !206
  %1400 = inttoptr i64 %1399 to i32*, !mcsema_real_eip !206
  %1401 = load i32, i32* %1400, !mcsema_real_eip !206
  %1402 = sub i32 %1401, 3, !mcsema_real_eip !206
  %1403 = xor i32 %1402, %1401, !mcsema_real_eip !206
  %1404 = xor i32 %1403, 3, !mcsema_real_eip !206
  %1405 = and i32 %1404, 16, !mcsema_real_eip !206
  %1406 = icmp ne i32 %1405, 0, !mcsema_real_eip !206
  store i1 %1406, i1* %AF, !mcsema_real_eip !206
  %1407 = trunc i32 %1402 to i8, !mcsema_real_eip !206
  %1408 = call i8 @llvm.ctpop.i8(i8 %1407), !mcsema_real_eip !206
  %1409 = trunc i8 %1408 to i1, !mcsema_real_eip !206
  %1410 = xor i1 %1409, true, !mcsema_real_eip !206
  store i1 %1410, i1* %PF, !mcsema_real_eip !206
  %1411 = icmp eq i32 %1402, 0, !mcsema_real_eip !206
  store i1 %1411, i1* %ZF, !mcsema_real_eip !206
  %1412 = lshr i32 %1402, 31, !mcsema_real_eip !206
  %1413 = trunc i32 %1412 to i1, !mcsema_real_eip !206
  store i1 %1413, i1* %SF, !mcsema_real_eip !206
  %1414 = icmp ult i32 %1401, 3, !mcsema_real_eip !206
  store i1 %1414, i1* %CF, !mcsema_real_eip !206
  %1415 = xor i32 %1401, 3, !mcsema_real_eip !206
  %1416 = xor i32 %1401, %1402, !mcsema_real_eip !206
  %1417 = and i32 %1415, %1416, !mcsema_real_eip !206
  %1418 = lshr i32 %1417, 31, !mcsema_real_eip !206
  %1419 = trunc i32 %1418 to i1, !mcsema_real_eip !206
  store i1 %1419, i1* %OF, !mcsema_real_eip !206
  %1420 = load i1, i1* %ZF, !mcsema_real_eip !207
  %1421 = icmp eq i1 %1420, true, !mcsema_real_eip !207
  br i1 %1421, label %block_0x343, label %block_0x338, !mcsema_real_eip !207

block_0x338:                                      ; preds = %block_0x2f6
  %RBP_val.325 = load i64, i64* %XBP, !mcsema_real_eip !208
  %1422 = add i64 %RBP_val.325, -60, !mcsema_real_eip !208
  %1423 = inttoptr i64 %1422 to i64*, !mcsema_real_eip !208
  %1424 = ptrtoint i64* %1423 to i64, !mcsema_real_eip !208
  %1425 = inttoptr i64 %1424 to i32*, !mcsema_real_eip !208
  %1426 = load i32, i32* %1425, !mcsema_real_eip !208
  %1427 = zext i32 %1426 to i64, !mcsema_real_eip !208
  store i64 %1427, i64* %XAX, !mcsema_real_eip !208
  %RBP_val.326 = load i64, i64* %XBP, !mcsema_real_eip !209
  %1428 = add i64 %RBP_val.326, -4, !mcsema_real_eip !209
  %1429 = inttoptr i64 %1428 to i64*, !mcsema_real_eip !209
  %EAX.327 = bitcast i64* %XAX to i32*, !mcsema_real_eip !209
  %EAX_val.328 = load i32, i32* %EAX.327, !mcsema_real_eip !209
  %1430 = ptrtoint i64* %1429 to i64, !mcsema_real_eip !209
  %1431 = inttoptr i64 %1430 to i32*, !mcsema_real_eip !209
  store i32 %EAX_val.328, i32* %1431, !mcsema_real_eip !209
  br label %block_0x417, !mcsema_real_eip !210

block_0x343:                                      ; preds = %block_0x2f6
  %1432 = zext i32 4 to i64, !mcsema_real_eip !211
  store i64 %1432, i64* %XDX, !mcsema_real_eip !211
  %RBP_val.310 = load i64, i64* %XBP, !mcsema_real_eip !212
  %1433 = add i64 %RBP_val.310, -20, !mcsema_real_eip !212
  %1434 = inttoptr i64 %1433 to i64*, !mcsema_real_eip !212
  %1435 = ptrtoint i64* %1434 to i64, !mcsema_real_eip !212
  %1436 = inttoptr i64 %1435 to i32*, !mcsema_real_eip !212
  %1437 = load i32, i32* %1436, !mcsema_real_eip !212
  %1438 = zext i32 %1437 to i64, !mcsema_real_eip !212
  store i64 %1438, i64* %XDI, !mcsema_real_eip !212
  %RBP_val.311 = load i64, i64* %XBP, !mcsema_real_eip !213
  %1439 = add i64 %RBP_val.311, -16, !mcsema_real_eip !213
  %1440 = inttoptr i64 %1439 to i64*, !mcsema_real_eip !213
  %1441 = load i64, i64* %1440, !mcsema_real_eip !213
  store i64 %1441, i64* %XAX, !mcsema_real_eip !213
  %RAX_val.312 = load i64, i64* %XAX, !mcsema_real_eip !214
  %1442 = add i64 28, %RAX_val.312, !mcsema_real_eip !214
  %1443 = xor i64 %1442, %RAX_val.312, !mcsema_real_eip !214
  %1444 = xor i64 %1443, 28, !mcsema_real_eip !214
  %1445 = and i64 %1444, 16, !mcsema_real_eip !214
  %1446 = icmp ne i64 %1445, 0, !mcsema_real_eip !214
  store i1 %1446, i1* %AF, !mcsema_real_eip !214
  %1447 = lshr i64 %1442, 63, !mcsema_real_eip !214
  %1448 = trunc i64 %1447 to i1, !mcsema_real_eip !214
  store i1 %1448, i1* %SF, !mcsema_real_eip !214
  %1449 = icmp eq i64 %1442, 0, !mcsema_real_eip !214
  store i1 %1449, i1* %ZF, !mcsema_real_eip !214
  %1450 = xor i64 %RAX_val.312, 28, !mcsema_real_eip !214
  %1451 = xor i64 %1450, -1, !mcsema_real_eip !214
  %1452 = xor i64 %RAX_val.312, %1442, !mcsema_real_eip !214
  %1453 = and i64 %1451, %1452, !mcsema_real_eip !214
  %1454 = lshr i64 %1453, 63, !mcsema_real_eip !214
  %1455 = and i64 %1454, 1, !mcsema_real_eip !214
  %1456 = trunc i64 %1455 to i1, !mcsema_real_eip !214
  store i1 %1456, i1* %OF, !mcsema_real_eip !214
  %1457 = trunc i64 %1442 to i8, !mcsema_real_eip !214
  %1458 = call i8 @llvm.ctpop.i8(i8 %1457), !mcsema_real_eip !214
  %1459 = trunc i8 %1458 to i1, !mcsema_real_eip !214
  %1460 = xor i1 %1459, true, !mcsema_real_eip !214
  store i1 %1460, i1* %PF, !mcsema_real_eip !214
  %1461 = icmp ult i64 %1442, %RAX_val.312, !mcsema_real_eip !214
  store i1 %1461, i1* %CF, !mcsema_real_eip !214
  store i64 %1442, i64* %XAX, !mcsema_real_eip !214
  %RAX_val.313 = load i64, i64* %XAX, !mcsema_real_eip !215
  store i64 %RAX_val.313, i64* %XSI, !mcsema_real_eip !215
  %RDI_val.314 = load i64, i64* %XDI, !mcsema_real_eip !216
  %RSI_val.315 = load i64, i64* %XSI, !mcsema_real_eip !216
  %RDX_val.316 = load i64, i64* %XDX, !mcsema_real_eip !216
  %RSP_val.317 = load i64, i64* %XSP, !mcsema_real_eip !216
  %1462 = sub i64 %RSP_val.317, 8, !mcsema_real_eip !216
  %1463 = inttoptr i64 %1462 to i64*, !mcsema_real_eip !216
  store i64 -2415393069852865332, i64* %1463, !mcsema_real_eip !216
  store i64 %1462, i64* %XSP, !mcsema_real_eip !216
  %1464 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.314, i64 %RSI_val.315, i64 %RDX_val.316), !mcsema_real_eip !216
  store i64 %1464, i64* %XAX, !mcsema_real_eip !216
  %RBP_val.318 = load i64, i64* %XBP, !mcsema_real_eip !217
  %1465 = add i64 %RBP_val.318, -64, !mcsema_real_eip !217
  %1466 = inttoptr i64 %1465 to i64*, !mcsema_real_eip !217
  %EAX.319 = bitcast i64* %XAX to i32*, !mcsema_real_eip !217
  %EAX_val.320 = load i32, i32* %EAX.319, !mcsema_real_eip !217
  %1467 = ptrtoint i64* %1466 to i64, !mcsema_real_eip !217
  %1468 = inttoptr i64 %1467 to i32*, !mcsema_real_eip !217
  store i32 %EAX_val.320, i32* %1468, !mcsema_real_eip !217
  %RBP_val.321 = load i64, i64* %XBP, !mcsema_real_eip !218
  %1469 = add i64 %RBP_val.321, -16, !mcsema_real_eip !218
  %1470 = inttoptr i64 %1469 to i64*, !mcsema_real_eip !218
  %1471 = load i64, i64* %1470, !mcsema_real_eip !218
  store i64 %1471, i64* %XSI, !mcsema_real_eip !218
  %RSI_val.322 = load i64, i64* %XSI, !mcsema_real_eip !219
  %1472 = add i64 %RSI_val.322, 28, !mcsema_real_eip !219
  %1473 = inttoptr i64 %1472 to i64*, !mcsema_real_eip !219
  %1474 = ptrtoint i64* %1473 to i64, !mcsema_real_eip !219
  %1475 = inttoptr i64 %1474 to i8*, !mcsema_real_eip !219
  %1476 = load i8, i8* %1475, !mcsema_real_eip !219
  %1477 = sext i8 %1476 to i32, !mcsema_real_eip !219
  %1478 = zext i32 %1477 to i64, !mcsema_real_eip !219
  store i64 %1478, i64* %XAX, !mcsema_real_eip !219
  %EAX.323 = bitcast i64* %XAX to i32*, !mcsema_real_eip !220
  %EAX_val.324 = load i32, i32* %EAX.323, !mcsema_real_eip !220
  %1479 = sub i32 %EAX_val.324, 100, !mcsema_real_eip !220
  %1480 = xor i32 %1479, %EAX_val.324, !mcsema_real_eip !220
  %1481 = xor i32 %1480, 100, !mcsema_real_eip !220
  %1482 = and i32 %1481, 16, !mcsema_real_eip !220
  %1483 = icmp ne i32 %1482, 0, !mcsema_real_eip !220
  store i1 %1483, i1* %AF, !mcsema_real_eip !220
  %1484 = trunc i32 %1479 to i8, !mcsema_real_eip !220
  %1485 = call i8 @llvm.ctpop.i8(i8 %1484), !mcsema_real_eip !220
  %1486 = trunc i8 %1485 to i1, !mcsema_real_eip !220
  %1487 = xor i1 %1486, true, !mcsema_real_eip !220
  store i1 %1487, i1* %PF, !mcsema_real_eip !220
  %1488 = icmp eq i32 %1479, 0, !mcsema_real_eip !220
  store i1 %1488, i1* %ZF, !mcsema_real_eip !220
  %1489 = lshr i32 %1479, 31, !mcsema_real_eip !220
  %1490 = trunc i32 %1489 to i1, !mcsema_real_eip !220
  store i1 %1490, i1* %SF, !mcsema_real_eip !220
  %1491 = icmp ult i32 %EAX_val.324, 100, !mcsema_real_eip !220
  store i1 %1491, i1* %CF, !mcsema_real_eip !220
  %1492 = xor i32 %EAX_val.324, 100, !mcsema_real_eip !220
  %1493 = xor i32 %EAX_val.324, %1479, !mcsema_real_eip !220
  %1494 = and i32 %1492, %1493, !mcsema_real_eip !220
  %1495 = lshr i32 %1494, 31, !mcsema_real_eip !220
  %1496 = trunc i32 %1495 to i1, !mcsema_real_eip !220
  store i1 %1496, i1* %OF, !mcsema_real_eip !220
  %1497 = load i1, i1* %ZF, !mcsema_real_eip !221
  %1498 = icmp eq i1 %1497, false, !mcsema_real_eip !221
  br i1 %1498, label %block_0x38e, label %block_0x36f, !mcsema_real_eip !221

block_0x36f:                                      ; preds = %block_0x343
  %RBP_val.337 = load i64, i64* %XBP, !mcsema_real_eip !222
  %1499 = add i64 %RBP_val.337, -16, !mcsema_real_eip !222
  %1500 = inttoptr i64 %1499 to i64*, !mcsema_real_eip !222
  %1501 = load i64, i64* %1500, !mcsema_real_eip !222
  store i64 %1501, i64* %XAX, !mcsema_real_eip !222
  %RAX_val.338 = load i64, i64* %XAX, !mcsema_real_eip !223
  %1502 = add i64 %RAX_val.338, 29, !mcsema_real_eip !223
  %1503 = inttoptr i64 %1502 to i64*, !mcsema_real_eip !223
  %1504 = ptrtoint i64* %1503 to i64, !mcsema_real_eip !223
  %1505 = inttoptr i64 %1504 to i8*, !mcsema_real_eip !223
  %1506 = load i8, i8* %1505, !mcsema_real_eip !223
  %1507 = sext i8 %1506 to i32, !mcsema_real_eip !223
  %1508 = zext i32 %1507 to i64, !mcsema_real_eip !223
  store i64 %1508, i64* %XCX, !mcsema_real_eip !223
  %ECX.339 = bitcast i64* %XCX to i32*, !mcsema_real_eip !224
  %ECX_val.340 = load i32, i32* %ECX.339, !mcsema_real_eip !224
  %1509 = sub i32 %ECX_val.340, 100, !mcsema_real_eip !224
  %1510 = xor i32 %1509, %ECX_val.340, !mcsema_real_eip !224
  %1511 = xor i32 %1510, 100, !mcsema_real_eip !224
  %1512 = and i32 %1511, 16, !mcsema_real_eip !224
  %1513 = icmp ne i32 %1512, 0, !mcsema_real_eip !224
  store i1 %1513, i1* %AF, !mcsema_real_eip !224
  %1514 = trunc i32 %1509 to i8, !mcsema_real_eip !224
  %1515 = call i8 @llvm.ctpop.i8(i8 %1514), !mcsema_real_eip !224
  %1516 = trunc i8 %1515 to i1, !mcsema_real_eip !224
  %1517 = xor i1 %1516, true, !mcsema_real_eip !224
  store i1 %1517, i1* %PF, !mcsema_real_eip !224
  %1518 = icmp eq i32 %1509, 0, !mcsema_real_eip !224
  store i1 %1518, i1* %ZF, !mcsema_real_eip !224
  %1519 = lshr i32 %1509, 31, !mcsema_real_eip !224
  %1520 = trunc i32 %1519 to i1, !mcsema_real_eip !224
  store i1 %1520, i1* %SF, !mcsema_real_eip !224
  %1521 = icmp ult i32 %ECX_val.340, 100, !mcsema_real_eip !224
  store i1 %1521, i1* %CF, !mcsema_real_eip !224
  %1522 = xor i32 %ECX_val.340, 100, !mcsema_real_eip !224
  %1523 = xor i32 %ECX_val.340, %1509, !mcsema_real_eip !224
  %1524 = and i32 %1522, %1523, !mcsema_real_eip !224
  %1525 = lshr i32 %1524, 31, !mcsema_real_eip !224
  %1526 = trunc i32 %1525 to i1, !mcsema_real_eip !224
  store i1 %1526, i1* %OF, !mcsema_real_eip !224
  %1527 = load i1, i1* %ZF, !mcsema_real_eip !225
  %1528 = icmp eq i1 %1527, false, !mcsema_real_eip !225
  br i1 %1528, label %block_0x38e, label %block_0x380, !mcsema_real_eip !225

block_0x38e:                                      ; preds = %block_0x36f, %block_0x343
  %RBP_val.329 = load i64, i64* %XBP, !mcsema_real_eip !226
  %1529 = add i64 %RBP_val.329, -16, !mcsema_real_eip !226
  %1530 = inttoptr i64 %1529 to i64*, !mcsema_real_eip !226
  %1531 = load i64, i64* %1530, !mcsema_real_eip !226
  store i64 %1531, i64* %XAX, !mcsema_real_eip !226
  %RAX_val.330 = load i64, i64* %XAX, !mcsema_real_eip !227
  %1532 = add i64 %RAX_val.330, 28, !mcsema_real_eip !227
  %1533 = inttoptr i64 %1532 to i64*, !mcsema_real_eip !227
  %1534 = ptrtoint i64* %1533 to i64, !mcsema_real_eip !227
  %1535 = inttoptr i64 %1534 to i8*, !mcsema_real_eip !227
  %1536 = load i8, i8* %1535, !mcsema_real_eip !227
  %1537 = sext i8 %1536 to i32, !mcsema_real_eip !227
  %1538 = zext i32 %1537 to i64, !mcsema_real_eip !227
  store i64 %1538, i64* %XCX, !mcsema_real_eip !227
  %RBP_val.331 = load i64, i64* %XBP, !mcsema_real_eip !228
  %1539 = add i64 %RBP_val.331, -16, !mcsema_real_eip !228
  %1540 = inttoptr i64 %1539 to i64*, !mcsema_real_eip !228
  %1541 = load i64, i64* %1540, !mcsema_real_eip !228
  store i64 %1541, i64* %XAX, !mcsema_real_eip !228
  %RAX_val.332 = load i64, i64* %XAX, !mcsema_real_eip !229
  %1542 = add i64 %RAX_val.332, 29, !mcsema_real_eip !229
  %1543 = inttoptr i64 %1542 to i64*, !mcsema_real_eip !229
  %1544 = ptrtoint i64* %1543 to i64, !mcsema_real_eip !229
  %1545 = inttoptr i64 %1544 to i8*, !mcsema_real_eip !229
  %1546 = load i8, i8* %1545, !mcsema_real_eip !229
  %1547 = sext i8 %1546 to i32, !mcsema_real_eip !229
  %1548 = zext i32 %1547 to i64, !mcsema_real_eip !229
  store i64 %1548, i64* %XDX, !mcsema_real_eip !229
  %ECX.333 = bitcast i64* %XCX to i32*, !mcsema_real_eip !230
  %ECX_val.334 = load i32, i32* %ECX.333, !mcsema_real_eip !230
  %EDX.335 = bitcast i64* %XDX to i32*, !mcsema_real_eip !230
  %EDX_val.336 = load i32, i32* %EDX.335, !mcsema_real_eip !230
  %1549 = sub i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  %1550 = xor i32 %1549, %ECX_val.334, !mcsema_real_eip !230
  %1551 = xor i32 %1550, %EDX_val.336, !mcsema_real_eip !230
  %1552 = and i32 %1551, 16, !mcsema_real_eip !230
  %1553 = icmp ne i32 %1552, 0, !mcsema_real_eip !230
  store i1 %1553, i1* %AF, !mcsema_real_eip !230
  %1554 = trunc i32 %1549 to i8, !mcsema_real_eip !230
  %1555 = call i8 @llvm.ctpop.i8(i8 %1554), !mcsema_real_eip !230
  %1556 = trunc i8 %1555 to i1, !mcsema_real_eip !230
  %1557 = xor i1 %1556, true, !mcsema_real_eip !230
  store i1 %1557, i1* %PF, !mcsema_real_eip !230
  %1558 = icmp eq i32 %1549, 0, !mcsema_real_eip !230
  store i1 %1558, i1* %ZF, !mcsema_real_eip !230
  %1559 = lshr i32 %1549, 31, !mcsema_real_eip !230
  %1560 = trunc i32 %1559 to i1, !mcsema_real_eip !230
  store i1 %1560, i1* %SF, !mcsema_real_eip !230
  %1561 = icmp ult i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  store i1 %1561, i1* %CF, !mcsema_real_eip !230
  %1562 = xor i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  %1563 = xor i32 %ECX_val.334, %1549, !mcsema_real_eip !230
  %1564 = and i32 %1562, %1563, !mcsema_real_eip !230
  %1565 = lshr i32 %1564, 31, !mcsema_real_eip !230
  %1566 = trunc i32 %1565 to i1, !mcsema_real_eip !230
  store i1 %1566, i1* %OF, !mcsema_real_eip !230
  %1567 = load i1, i1* %ZF, !mcsema_real_eip !231
  %1568 = icmp eq i1 %1567, false, !mcsema_real_eip !231
  br i1 %1568, label %block_0x406, label %block_0x3a6, !mcsema_real_eip !231

block_0x3a6:                                      ; preds = %block_0x38e
  %1569 = zext i32 15 to i64, !mcsema_real_eip !232
  store i64 %1569, i64* %XAX, !mcsema_real_eip !232
  %RBP_val.345 = load i64, i64* %XBP, !mcsema_real_eip !233
  %1570 = add i64 %RBP_val.345, -16, !mcsema_real_eip !233
  %1571 = inttoptr i64 %1570 to i64*, !mcsema_real_eip !233
  %1572 = load i64, i64* %1571, !mcsema_real_eip !233
  store i64 %1572, i64* %XCX, !mcsema_real_eip !233
  %RCX_val.346 = load i64, i64* %XCX, !mcsema_real_eip !234
  %1573 = add i64 %RCX_val.346, 31, !mcsema_real_eip !234
  %1574 = inttoptr i64 %1573 to i64*, !mcsema_real_eip !234
  %1575 = ptrtoint i64* %1574 to i64, !mcsema_real_eip !234
  %1576 = inttoptr i64 %1575 to i8*, !mcsema_real_eip !234
  %1577 = load i8, i8* %1576, !mcsema_real_eip !234
  %1578 = sext i8 %1577 to i32, !mcsema_real_eip !234
  %1579 = zext i32 %1578 to i64, !mcsema_real_eip !234
  store i64 %1579, i64* %XDX, !mcsema_real_eip !234
  %RBP_val.347 = load i64, i64* %XBP, !mcsema_real_eip !235
  %1580 = add i64 %RBP_val.347, -16, !mcsema_real_eip !235
  %1581 = inttoptr i64 %1580 to i64*, !mcsema_real_eip !235
  %1582 = load i64, i64* %1581, !mcsema_real_eip !235
  store i64 %1582, i64* %XCX, !mcsema_real_eip !235
  %RCX_val.348 = load i64, i64* %XCX, !mcsema_real_eip !236
  %1583 = add i64 %RCX_val.348, 30, !mcsema_real_eip !236
  %1584 = inttoptr i64 %1583 to i64*, !mcsema_real_eip !236
  %1585 = ptrtoint i64* %1584 to i64, !mcsema_real_eip !236
  %1586 = inttoptr i64 %1585 to i8*, !mcsema_real_eip !236
  %1587 = load i8, i8* %1586, !mcsema_real_eip !236
  %1588 = sext i8 %1587 to i32, !mcsema_real_eip !236
  %1589 = zext i32 %1588 to i64, !mcsema_real_eip !236
  store i64 %1589, i64* %XSI, !mcsema_real_eip !236
  %EDX.349 = bitcast i64* %XDX to i32*, !mcsema_real_eip !237
  %EDX_val.350 = load i32, i32* %EDX.349, !mcsema_real_eip !237
  %ESI.351 = bitcast i64* %XSI to i32*, !mcsema_real_eip !237
  %ESI_val.352 = load i32, i32* %ESI.351, !mcsema_real_eip !237
  %1590 = sub i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  %1591 = xor i32 %1590, %EDX_val.350, !mcsema_real_eip !237
  %1592 = xor i32 %1591, %ESI_val.352, !mcsema_real_eip !237
  %1593 = and i32 %1592, 16, !mcsema_real_eip !237
  %1594 = icmp ne i32 %1593, 0, !mcsema_real_eip !237
  store i1 %1594, i1* %AF, !mcsema_real_eip !237
  %1595 = trunc i32 %1590 to i8, !mcsema_real_eip !237
  %1596 = call i8 @llvm.ctpop.i8(i8 %1595), !mcsema_real_eip !237
  %1597 = trunc i8 %1596 to i1, !mcsema_real_eip !237
  %1598 = xor i1 %1597, true, !mcsema_real_eip !237
  store i1 %1598, i1* %PF, !mcsema_real_eip !237
  %1599 = icmp eq i32 %1590, 0, !mcsema_real_eip !237
  store i1 %1599, i1* %ZF, !mcsema_real_eip !237
  %1600 = lshr i32 %1590, 31, !mcsema_real_eip !237
  %1601 = trunc i32 %1600 to i1, !mcsema_real_eip !237
  store i1 %1601, i1* %SF, !mcsema_real_eip !237
  %1602 = icmp ult i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  store i1 %1602, i1* %CF, !mcsema_real_eip !237
  %1603 = xor i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  %1604 = xor i32 %EDX_val.350, %1590, !mcsema_real_eip !237
  %1605 = and i32 %1603, %1604, !mcsema_real_eip !237
  %1606 = lshr i32 %1605, 31, !mcsema_real_eip !237
  %1607 = trunc i32 %1606 to i1, !mcsema_real_eip !237
  store i1 %1607, i1* %OF, !mcsema_real_eip !237
  %1608 = zext i32 %1590 to i64, !mcsema_real_eip !237
  store i64 %1608, i64* %XDX, !mcsema_real_eip !237
  %EAX.353 = bitcast i64* %XAX to i32*, !mcsema_real_eip !238
  %EAX_val.354 = load i32, i32* %EAX.353, !mcsema_real_eip !238
  %EDX.355 = bitcast i64* %XDX to i32*, !mcsema_real_eip !238
  %EDX_val.356 = load i32, i32* %EDX.355, !mcsema_real_eip !238
  %1609 = sub i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  %1610 = xor i32 %1609, %EAX_val.354, !mcsema_real_eip !238
  %1611 = xor i32 %1610, %EDX_val.356, !mcsema_real_eip !238
  %1612 = and i32 %1611, 16, !mcsema_real_eip !238
  %1613 = icmp ne i32 %1612, 0, !mcsema_real_eip !238
  store i1 %1613, i1* %AF, !mcsema_real_eip !238
  %1614 = trunc i32 %1609 to i8, !mcsema_real_eip !238
  %1615 = call i8 @llvm.ctpop.i8(i8 %1614), !mcsema_real_eip !238
  %1616 = trunc i8 %1615 to i1, !mcsema_real_eip !238
  %1617 = xor i1 %1616, true, !mcsema_real_eip !238
  store i1 %1617, i1* %PF, !mcsema_real_eip !238
  %1618 = icmp eq i32 %1609, 0, !mcsema_real_eip !238
  store i1 %1618, i1* %ZF, !mcsema_real_eip !238
  %1619 = lshr i32 %1609, 31, !mcsema_real_eip !238
  %1620 = trunc i32 %1619 to i1, !mcsema_real_eip !238
  store i1 %1620, i1* %SF, !mcsema_real_eip !238
  %1621 = icmp ult i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  store i1 %1621, i1* %CF, !mcsema_real_eip !238
  %1622 = xor i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  %1623 = xor i32 %EAX_val.354, %1609, !mcsema_real_eip !238
  %1624 = and i32 %1622, %1623, !mcsema_real_eip !238
  %1625 = lshr i32 %1624, 31, !mcsema_real_eip !238
  %1626 = trunc i32 %1625 to i1, !mcsema_real_eip !238
  store i1 %1626, i1* %OF, !mcsema_real_eip !238
  %1627 = zext i32 %1609 to i64, !mcsema_real_eip !238
  store i64 %1627, i64* %XAX, !mcsema_real_eip !238
  %RBP_val.357 = load i64, i64* %XBP, !mcsema_real_eip !239
  %1628 = add i64 %RBP_val.357, -20, !mcsema_real_eip !239
  %1629 = inttoptr i64 %1628 to i64*, !mcsema_real_eip !239
  %1630 = ptrtoint i64* %1629 to i64, !mcsema_real_eip !239
  %1631 = inttoptr i64 %1630 to i32*, !mcsema_real_eip !239
  %1632 = load i32, i32* %1631, !mcsema_real_eip !239
  %EAX.358 = bitcast i64* %XAX to i32*, !mcsema_real_eip !239
  %EAX_val.359 = load i32, i32* %EAX.358, !mcsema_real_eip !239
  %1633 = add i32 %EAX_val.359, %1632, !mcsema_real_eip !239
  %1634 = xor i32 %1633, %1632, !mcsema_real_eip !239
  %1635 = xor i32 %1634, %EAX_val.359, !mcsema_real_eip !239
  %1636 = and i32 %1635, 16, !mcsema_real_eip !239
  %1637 = icmp ne i32 %1636, 0, !mcsema_real_eip !239
  store i1 %1637, i1* %AF, !mcsema_real_eip !239
  %1638 = lshr i32 %1633, 31, !mcsema_real_eip !239
  %1639 = trunc i32 %1638 to i1, !mcsema_real_eip !239
  store i1 %1639, i1* %SF, !mcsema_real_eip !239
  %1640 = icmp eq i32 %1633, 0, !mcsema_real_eip !239
  store i1 %1640, i1* %ZF, !mcsema_real_eip !239
  %1641 = xor i32 %1632, %EAX_val.359, !mcsema_real_eip !239
  %1642 = xor i32 %1641, -1, !mcsema_real_eip !239
  %1643 = xor i32 %1632, %1633, !mcsema_real_eip !239
  %1644 = and i32 %1642, %1643, !mcsema_real_eip !239
  %1645 = lshr i32 %1644, 31, !mcsema_real_eip !239
  %1646 = and i32 %1645, 1, !mcsema_real_eip !239
  %1647 = trunc i32 %1646 to i1, !mcsema_real_eip !239
  store i1 %1647, i1* %OF, !mcsema_real_eip !239
  %1648 = trunc i32 %1633 to i8, !mcsema_real_eip !239
  %1649 = call i8 @llvm.ctpop.i8(i8 %1648), !mcsema_real_eip !239
  %1650 = trunc i8 %1649 to i1, !mcsema_real_eip !239
  %1651 = xor i1 %1650, true, !mcsema_real_eip !239
  store i1 %1651, i1* %PF, !mcsema_real_eip !239
  %1652 = icmp ult i32 %1633, %1632, !mcsema_real_eip !239
  store i1 %1652, i1* %CF, !mcsema_real_eip !239
  %1653 = zext i32 %1633 to i64, !mcsema_real_eip !239
  store i64 %1653, i64* %XAX, !mcsema_real_eip !239
  %RBP_val.360 = load i64, i64* %XBP, !mcsema_real_eip !240
  %1654 = add i64 %RBP_val.360, -20, !mcsema_real_eip !240
  %1655 = inttoptr i64 %1654 to i64*, !mcsema_real_eip !240
  %EAX.361 = bitcast i64* %XAX to i32*, !mcsema_real_eip !240
  %EAX_val.362 = load i32, i32* %EAX.361, !mcsema_real_eip !240
  %1656 = ptrtoint i64* %1655 to i64, !mcsema_real_eip !240
  %1657 = inttoptr i64 %1656 to i32*, !mcsema_real_eip !240
  store i32 %EAX_val.362, i32* %1657, !mcsema_real_eip !240
  %RBP_val.363 = load i64, i64* %XBP, !mcsema_real_eip !241
  %1658 = add i64 %RBP_val.363, -16, !mcsema_real_eip !241
  %1659 = inttoptr i64 %1658 to i64*, !mcsema_real_eip !241
  %1660 = load i64, i64* %1659, !mcsema_real_eip !241
  store i64 %1660, i64* %XCX, !mcsema_real_eip !241
  %RCX_val.364 = load i64, i64* %XCX, !mcsema_real_eip !242
  %1661 = add i64 %RCX_val.364, 28, !mcsema_real_eip !242
  %1662 = inttoptr i64 %1661 to i64*, !mcsema_real_eip !242
  %1663 = ptrtoint i64* %1662 to i64, !mcsema_real_eip !242
  %1664 = inttoptr i64 %1663 to i8*, !mcsema_real_eip !242
  %1665 = load i8, i8* %1664, !mcsema_real_eip !242
  %1666 = zext i8 %1665 to i32, !mcsema_real_eip !242
  %1667 = zext i32 %1666 to i64, !mcsema_real_eip !242
  store i64 %1667, i64* %XDI, !mcsema_real_eip !242
  %RDI_val.365 = load i64, i64* %XDI, !mcsema_real_eip !243
  %RSP_val.366 = load i64, i64* %XSP, !mcsema_real_eip !243
  %1668 = sub i64 %RSP_val.366, 8, !mcsema_real_eip !243
  %1669 = inttoptr i64 %1668 to i64*, !mcsema_real_eip !243
  store i64 -2415393069852865332, i64* %1669, !mcsema_real_eip !243
  store i64 %1668, i64* %XSP, !mcsema_real_eip !243
  %1670 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.365), !mcsema_real_eip !243
  store i64 %1670, i64* %XAX, !mcsema_real_eip !243
  %RBP_val.367 = load i64, i64* %XBP, !mcsema_real_eip !244
  %1671 = add i64 %RBP_val.367, -20, !mcsema_real_eip !244
  %1672 = inttoptr i64 %1671 to i64*, !mcsema_real_eip !244
  %1673 = ptrtoint i64* %1672 to i64, !mcsema_real_eip !244
  %1674 = inttoptr i64 %1673 to i32*, !mcsema_real_eip !244
  %1675 = load i32, i32* %1674, !mcsema_real_eip !244
  %1676 = zext i32 %1675 to i64, !mcsema_real_eip !244
  store i64 %1676, i64* %XDX, !mcsema_real_eip !244
  %EDX.368 = bitcast i64* %XDX to i32*, !mcsema_real_eip !245
  %EDX_val.369 = load i32, i32* %EDX.368, !mcsema_real_eip !245
  %EAX.370 = bitcast i64* %XAX to i32*, !mcsema_real_eip !245
  %EAX_val.371 = load i32, i32* %EAX.370, !mcsema_real_eip !245
  %1677 = sub i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  %1678 = xor i32 %1677, %EDX_val.369, !mcsema_real_eip !245
  %1679 = xor i32 %1678, %EAX_val.371, !mcsema_real_eip !245
  %1680 = and i32 %1679, 16, !mcsema_real_eip !245
  %1681 = icmp ne i32 %1680, 0, !mcsema_real_eip !245
  store i1 %1681, i1* %AF, !mcsema_real_eip !245
  %1682 = trunc i32 %1677 to i8, !mcsema_real_eip !245
  %1683 = call i8 @llvm.ctpop.i8(i8 %1682), !mcsema_real_eip !245
  %1684 = trunc i8 %1683 to i1, !mcsema_real_eip !245
  %1685 = xor i1 %1684, true, !mcsema_real_eip !245
  store i1 %1685, i1* %PF, !mcsema_real_eip !245
  %1686 = icmp eq i32 %1677, 0, !mcsema_real_eip !245
  store i1 %1686, i1* %ZF, !mcsema_real_eip !245
  %1687 = lshr i32 %1677, 31, !mcsema_real_eip !245
  %1688 = trunc i32 %1687 to i1, !mcsema_real_eip !245
  store i1 %1688, i1* %SF, !mcsema_real_eip !245
  %1689 = icmp ult i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  store i1 %1689, i1* %CF, !mcsema_real_eip !245
  %1690 = xor i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  %1691 = xor i32 %EDX_val.369, %1677, !mcsema_real_eip !245
  %1692 = and i32 %1690, %1691, !mcsema_real_eip !245
  %1693 = lshr i32 %1692, 31, !mcsema_real_eip !245
  %1694 = trunc i32 %1693 to i1, !mcsema_real_eip !245
  store i1 %1694, i1* %OF, !mcsema_real_eip !245
  %1695 = zext i32 %1677 to i64, !mcsema_real_eip !245
  store i64 %1695, i64* %XDX, !mcsema_real_eip !245
  %RBP_val.372 = load i64, i64* %XBP, !mcsema_real_eip !246
  %1696 = add i64 %RBP_val.372, -20, !mcsema_real_eip !246
  %1697 = inttoptr i64 %1696 to i64*, !mcsema_real_eip !246
  %EDX.373 = bitcast i64* %XDX to i32*, !mcsema_real_eip !246
  %EDX_val.374 = load i32, i32* %EDX.373, !mcsema_real_eip !246
  %1698 = ptrtoint i64* %1697 to i64, !mcsema_real_eip !246
  %1699 = inttoptr i64 %1698 to i32*, !mcsema_real_eip !246
  store i32 %EDX_val.374, i32* %1699, !mcsema_real_eip !246
  %RBP_val.375 = load i64, i64* %XBP, !mcsema_real_eip !247
  %1700 = add i64 %RBP_val.375, -20, !mcsema_real_eip !247
  %1701 = inttoptr i64 %1700 to i64*, !mcsema_real_eip !247
  %1702 = ptrtoint i64* %1701 to i64, !mcsema_real_eip !247
  %1703 = inttoptr i64 %1702 to i32*, !mcsema_real_eip !247
  %1704 = load i32, i32* %1703, !mcsema_real_eip !247
  %1705 = sub i32 %1704, 0, !mcsema_real_eip !247
  %1706 = xor i32 %1705, %1704, !mcsema_real_eip !247
  %1707 = xor i32 %1706, 0, !mcsema_real_eip !247
  %1708 = and i32 %1707, 16, !mcsema_real_eip !247
  %1709 = icmp ne i32 %1708, 0, !mcsema_real_eip !247
  store i1 %1709, i1* %AF, !mcsema_real_eip !247
  %1710 = trunc i32 %1705 to i8, !mcsema_real_eip !247
  %1711 = call i8 @llvm.ctpop.i8(i8 %1710), !mcsema_real_eip !247
  %1712 = trunc i8 %1711 to i1, !mcsema_real_eip !247
  %1713 = xor i1 %1712, true, !mcsema_real_eip !247
  store i1 %1713, i1* %PF, !mcsema_real_eip !247
  %1714 = icmp eq i32 %1705, 0, !mcsema_real_eip !247
  store i1 %1714, i1* %ZF, !mcsema_real_eip !247
  %1715 = lshr i32 %1705, 31, !mcsema_real_eip !247
  %1716 = trunc i32 %1715 to i1, !mcsema_real_eip !247
  store i1 %1716, i1* %SF, !mcsema_real_eip !247
  %1717 = icmp ult i32 %1704, 0, !mcsema_real_eip !247
  store i1 %1717, i1* %CF, !mcsema_real_eip !247
  %1718 = xor i32 %1704, 0, !mcsema_real_eip !247
  %1719 = xor i32 %1704, %1705, !mcsema_real_eip !247
  %1720 = and i32 %1718, %1719, !mcsema_real_eip !247
  %1721 = lshr i32 %1720, 31, !mcsema_real_eip !247
  %1722 = trunc i32 %1721 to i1, !mcsema_real_eip !247
  store i1 %1722, i1* %OF, !mcsema_real_eip !247
  %1723 = load i1, i1* %ZF, !mcsema_real_eip !248
  %1724 = icmp eq i1 %1723, false, !mcsema_real_eip !248
  br i1 %1724, label %block_0x401, label %block_0x3e4, !mcsema_real_eip !248

block_0x406:                                      ; preds = %block_0x38e
  %RBP_val.341 = load i64, i64* %XBP, !mcsema_real_eip !249
  %1725 = add i64 %RBP_val.341, -64, !mcsema_real_eip !249
  %1726 = inttoptr i64 %1725 to i64*, !mcsema_real_eip !249
  %1727 = ptrtoint i64* %1726 to i64, !mcsema_real_eip !249
  %1728 = inttoptr i64 %1727 to i32*, !mcsema_real_eip !249
  %1729 = load i32, i32* %1728, !mcsema_real_eip !249
  %1730 = zext i32 %1729 to i64, !mcsema_real_eip !249
  store i64 %1730, i64* %XAX, !mcsema_real_eip !249
  %RBP_val.342 = load i64, i64* %XBP, !mcsema_real_eip !250
  %1731 = add i64 %RBP_val.342, -20, !mcsema_real_eip !250
  %1732 = inttoptr i64 %1731 to i64*, !mcsema_real_eip !250
  %EAX.343 = bitcast i64* %XAX to i32*, !mcsema_real_eip !250
  %EAX_val.344 = load i32, i32* %EAX.343, !mcsema_real_eip !250
  %1733 = ptrtoint i64* %1732 to i64, !mcsema_real_eip !250
  %1734 = inttoptr i64 %1733 to i32*, !mcsema_real_eip !250
  store i32 %EAX_val.344, i32* %1734, !mcsema_real_eip !250
  br label %block_0x40c, !mcsema_real_eip !232

block_0x380:                                      ; preds = %block_0x36f
  %RBP_val.376 = load i64, i64* %XBP, !mcsema_real_eip !251
  %1735 = add i64 %RBP_val.376, -64, !mcsema_real_eip !251
  %1736 = inttoptr i64 %1735 to i64*, !mcsema_real_eip !251
  %1737 = ptrtoint i64* %1736 to i64, !mcsema_real_eip !251
  %1738 = inttoptr i64 %1737 to i32*, !mcsema_real_eip !251
  %1739 = load i32, i32* %1738, !mcsema_real_eip !251
  %1740 = zext i32 %1739 to i64, !mcsema_real_eip !251
  store i64 %1740, i64* %XAX, !mcsema_real_eip !251
  %RBP_val.377 = load i64, i64* %XBP, !mcsema_real_eip !252
  %1741 = add i64 %RBP_val.377, -20, !mcsema_real_eip !252
  %1742 = inttoptr i64 %1741 to i64*, !mcsema_real_eip !252
  %1743 = ptrtoint i64* %1742 to i64, !mcsema_real_eip !252
  %1744 = inttoptr i64 %1743 to i32*, !mcsema_real_eip !252
  %1745 = load i32, i32* %1744, !mcsema_real_eip !252
  %EAX.378 = bitcast i64* %XAX to i32*, !mcsema_real_eip !252
  %EAX_val.379 = load i32, i32* %EAX.378, !mcsema_real_eip !252
  %1746 = xor i32 %1745, %EAX_val.379, !mcsema_real_eip !252
  store i1 false, i1* %CF, !mcsema_real_eip !252
  store i1 false, i1* %OF, !mcsema_real_eip !252
  %1747 = lshr i32 %1746, 31, !mcsema_real_eip !252
  %1748 = trunc i32 %1747 to i1, !mcsema_real_eip !252
  store i1 %1748, i1* %SF, !mcsema_real_eip !252
  %1749 = icmp eq i32 %1746, 0, !mcsema_real_eip !252
  store i1 %1749, i1* %ZF, !mcsema_real_eip !252
  %1750 = trunc i32 %1746 to i8, !mcsema_real_eip !252
  %1751 = call i8 @llvm.ctpop.i8(i8 %1750), !mcsema_real_eip !252
  %1752 = trunc i8 %1751 to i1, !mcsema_real_eip !252
  %1753 = xor i1 %1752, true, !mcsema_real_eip !252
  store i1 %1753, i1* %PF, !mcsema_real_eip !252
  store i1 undef, i1* %AF, !mcsema_real_eip !252
  %1754 = zext i32 %1746 to i64, !mcsema_real_eip !252
  store i64 %1754, i64* %XAX, !mcsema_real_eip !252
  %RBP_val.380 = load i64, i64* %XBP, !mcsema_real_eip !253
  %1755 = add i64 %RBP_val.380, -20, !mcsema_real_eip !253
  %1756 = inttoptr i64 %1755 to i64*, !mcsema_real_eip !253
  %EAX.381 = bitcast i64* %XAX to i32*, !mcsema_real_eip !253
  %EAX_val.382 = load i32, i32* %EAX.381, !mcsema_real_eip !253
  %1757 = ptrtoint i64* %1756 to i64, !mcsema_real_eip !253
  %1758 = inttoptr i64 %1757 to i32*, !mcsema_real_eip !253
  store i32 %EAX_val.382, i32* %1758, !mcsema_real_eip !253
  br label %block_0x411, !mcsema_real_eip !254

block_0x40c:                                      ; preds = %block_0x401, %block_0x406
  br label %block_0x411, !mcsema_real_eip !255

block_0x3e4:                                      ; preds = %block_0x3a6
  %RBP_val.383 = load i64, i64* %XBP, !mcsema_real_eip !256
  %1759 = add i64 %RBP_val.383, -16, !mcsema_real_eip !256
  %1760 = inttoptr i64 %1759 to i64*, !mcsema_real_eip !256
  %1761 = load i64, i64* %1760, !mcsema_real_eip !256
  store i64 %1761, i64* %XAX, !mcsema_real_eip !256
  %RAX_val.384 = load i64, i64* %XAX, !mcsema_real_eip !257
  %1762 = add i64 %RAX_val.384, 31, !mcsema_real_eip !257
  %1763 = inttoptr i64 %1762 to i64*, !mcsema_real_eip !257
  %1764 = ptrtoint i64* %1763 to i64, !mcsema_real_eip !257
  %1765 = inttoptr i64 %1764 to i8*, !mcsema_real_eip !257
  %1766 = load i8, i8* %1765, !mcsema_real_eip !257
  %1767 = zext i8 %1766 to i32, !mcsema_real_eip !257
  %1768 = zext i32 %1767 to i64, !mcsema_real_eip !257
  store i64 %1768, i64* %XDI, !mcsema_real_eip !257
  %RDI_val.385 = load i64, i64* %XDI, !mcsema_real_eip !258
  %RSP_val.386 = load i64, i64* %XSP, !mcsema_real_eip !258
  %1769 = sub i64 %RSP_val.386, 8, !mcsema_real_eip !258
  %1770 = inttoptr i64 %1769 to i64*, !mcsema_real_eip !258
  store i64 -2415393069852865332, i64* %1770, !mcsema_real_eip !258
  store i64 %1769, i64* %XSP, !mcsema_real_eip !258
  %1771 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.385), !mcsema_real_eip !258
  store i64 %1771, i64* %XAX, !mcsema_real_eip !258
  %EAX.387 = bitcast i64* %XAX to i32*, !mcsema_real_eip !259
  %EAX_val.388 = load i32, i32* %EAX.387, !mcsema_real_eip !259
  %1772 = sub i32 %EAX_val.388, 4, !mcsema_real_eip !259
  %1773 = xor i32 %1772, %EAX_val.388, !mcsema_real_eip !259
  %1774 = xor i32 %1773, 4, !mcsema_real_eip !259
  %1775 = and i32 %1774, 16, !mcsema_real_eip !259
  %1776 = icmp ne i32 %1775, 0, !mcsema_real_eip !259
  store i1 %1776, i1* %AF, !mcsema_real_eip !259
  %1777 = trunc i32 %1772 to i8, !mcsema_real_eip !259
  %1778 = call i8 @llvm.ctpop.i8(i8 %1777), !mcsema_real_eip !259
  %1779 = trunc i8 %1778 to i1, !mcsema_real_eip !259
  %1780 = xor i1 %1779, true, !mcsema_real_eip !259
  store i1 %1780, i1* %PF, !mcsema_real_eip !259
  %1781 = icmp eq i32 %1772, 0, !mcsema_real_eip !259
  store i1 %1781, i1* %ZF, !mcsema_real_eip !259
  %1782 = lshr i32 %1772, 31, !mcsema_real_eip !259
  %1783 = trunc i32 %1782 to i1, !mcsema_real_eip !259
  store i1 %1783, i1* %SF, !mcsema_real_eip !259
  %1784 = icmp ult i32 %EAX_val.388, 4, !mcsema_real_eip !259
  store i1 %1784, i1* %CF, !mcsema_real_eip !259
  %1785 = xor i32 %EAX_val.388, 4, !mcsema_real_eip !259
  %1786 = xor i32 %EAX_val.388, %1772, !mcsema_real_eip !259
  %1787 = and i32 %1785, %1786, !mcsema_real_eip !259
  %1788 = lshr i32 %1787, 31, !mcsema_real_eip !259
  %1789 = trunc i32 %1788 to i1, !mcsema_real_eip !259
  store i1 %1789, i1* %OF, !mcsema_real_eip !259
  %1790 = load i1, i1* %ZF, !mcsema_real_eip !260
  %1791 = icmp eq i1 %1790, true, !mcsema_real_eip !260
  br i1 %1791, label %block_0x401, label %block_0x3fa, !mcsema_real_eip !260

block_0x401:                                      ; preds = %block_0x3fa, %block_0x3e4, %block_0x3a6
  br label %block_0x40c, !mcsema_real_eip !261

block_0x411:                                      ; preds = %block_0x40c, %block_0x380
  %RBP_val.389 = load i64, i64* %XBP, !mcsema_real_eip !262
  %1792 = add i64 %RBP_val.389, -20, !mcsema_real_eip !262
  %1793 = inttoptr i64 %1792 to i64*, !mcsema_real_eip !262
  %1794 = ptrtoint i64* %1793 to i64, !mcsema_real_eip !262
  %1795 = inttoptr i64 %1794 to i32*, !mcsema_real_eip !262
  %1796 = load i32, i32* %1795, !mcsema_real_eip !262
  %1797 = zext i32 %1796 to i64, !mcsema_real_eip !262
  store i64 %1797, i64* %XAX, !mcsema_real_eip !262
  %RBP_val.390 = load i64, i64* %XBP, !mcsema_real_eip !263
  %1798 = add i64 %RBP_val.390, -4, !mcsema_real_eip !263
  %1799 = inttoptr i64 %1798 to i64*, !mcsema_real_eip !263
  %EAX.391 = bitcast i64* %XAX to i32*, !mcsema_real_eip !263
  %EAX_val.392 = load i32, i32* %EAX.391, !mcsema_real_eip !263
  %1800 = ptrtoint i64* %1799 to i64, !mcsema_real_eip !263
  %1801 = inttoptr i64 %1800 to i32*, !mcsema_real_eip !263
  store i32 %EAX_val.392, i32* %1801, !mcsema_real_eip !263
  br label %block_0x417, !mcsema_real_eip !264

block_0x3fa:                                      ; preds = %block_0x3e4
  %RBP_val.393 = load i64, i64* %XBP, !mcsema_real_eip !264
  %1802 = add i64 %RBP_val.393, -20, !mcsema_real_eip !264
  %1803 = inttoptr i64 %1802 to i64*, !mcsema_real_eip !264
  %1804 = ptrtoint i64* %1803 to i64, !mcsema_real_eip !264
  %1805 = inttoptr i64 %1804 to i32*, !mcsema_real_eip !264
  store i32 -32, i32* %1805, !mcsema_real_eip !264
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
