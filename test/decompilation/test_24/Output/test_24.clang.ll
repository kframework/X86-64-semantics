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
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !12
  %60 = add i64 %RBP_val.15, -32, !mcsema_real_eip !12
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !12
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !12
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !12
  %64 = load i32, i32* %63, !mcsema_real_eip !12
  %65 = zext i32 %64 to i64, !mcsema_real_eip !12
  store i64 %65, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !13
  %66 = add i64 %RBP_val.16, -4, !mcsema_real_eip !13
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !13
  %EAX.17 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.18 = load i32, i32* %EAX.17, !mcsema_real_eip !13
  %68 = ptrtoint i64* %67 to i64, !mcsema_real_eip !13
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.18, i32* %69, !mcsema_real_eip !13
  br label %block_0x417, !mcsema_real_eip !14

block_0x2f:                                       ; preds = %block_0x0
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !15
  %70 = add i64 %RBP_val.19, -16, !mcsema_real_eip !15
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !15
  %72 = load i64, i64* %71, !mcsema_real_eip !15
  store i64 %72, i64* %XAX, !mcsema_real_eip !15
  %RAX_val.20 = load i64, i64* %XAX, !mcsema_real_eip !16
  %73 = add i64 4, %RAX_val.20, !mcsema_real_eip !16
  %74 = xor i64 %73, %RAX_val.20, !mcsema_real_eip !16
  %75 = xor i64 %74, 4, !mcsema_real_eip !16
  %76 = and i64 %75, 16, !mcsema_real_eip !16
  %77 = icmp ne i64 %76, 0, !mcsema_real_eip !16
  store i1 %77, i1* %AF, !mcsema_real_eip !16
  %78 = lshr i64 %73, 63, !mcsema_real_eip !16
  %79 = trunc i64 %78 to i1, !mcsema_real_eip !16
  store i1 %79, i1* %SF, !mcsema_real_eip !16
  %80 = icmp eq i64 %73, 0, !mcsema_real_eip !16
  store i1 %80, i1* %ZF, !mcsema_real_eip !16
  %81 = xor i64 %RAX_val.20, 4, !mcsema_real_eip !16
  %82 = xor i64 %81, -1, !mcsema_real_eip !16
  %83 = xor i64 %RAX_val.20, %73, !mcsema_real_eip !16
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
  %92 = icmp ult i64 %73, %RAX_val.20, !mcsema_real_eip !16
  store i1 %92, i1* %CF, !mcsema_real_eip !16
  store i64 %73, i64* %XAX, !mcsema_real_eip !16
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !17
  %93 = add i64 %RBP_val.21, -16, !mcsema_real_eip !17
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !17
  %RAX_val.22 = load i64, i64* %XAX, !mcsema_real_eip !17
  store i64 %RAX_val.22, i64* %94, !mcsema_real_eip !17
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !18
  %95 = add i64 %RBP_val.23, -16, !mcsema_real_eip !18
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !18
  %97 = load i64, i64* %96, !mcsema_real_eip !18
  store i64 %97, i64* %XAX, !mcsema_real_eip !18
  %RAX_val.24 = load i64, i64* %XAX, !mcsema_real_eip !19
  %98 = add i64 %RAX_val.24, 0, !mcsema_real_eip !19
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !19
  %100 = ptrtoint i64* %99 to i64, !mcsema_real_eip !19
  %101 = inttoptr i64 %100 to i8*, !mcsema_real_eip !19
  %102 = load i8, i8* %101, !mcsema_real_eip !19
  %103 = sext i8 %102 to i32, !mcsema_real_eip !19
  %104 = zext i32 %103 to i64, !mcsema_real_eip !19
  store i64 %104, i64* %XCX, !mcsema_real_eip !19
  %ECX.25 = bitcast i64* %XCX to i32*, !mcsema_real_eip !20
  %ECX_val.26 = load i32, i32* %ECX.25, !mcsema_real_eip !20
  %105 = sub i32 %ECX_val.26, 100, !mcsema_real_eip !20
  %106 = xor i32 %105, %ECX_val.26, !mcsema_real_eip !20
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
  %117 = icmp ult i32 %ECX_val.26, 100, !mcsema_real_eip !20
  store i1 %117, i1* %CF, !mcsema_real_eip !20
  %118 = xor i32 %ECX_val.26, 100, !mcsema_real_eip !20
  %119 = xor i32 %ECX_val.26, %105, !mcsema_real_eip !20
  %120 = and i32 %118, %119, !mcsema_real_eip !20
  %121 = lshr i32 %120, 31, !mcsema_real_eip !20
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !20
  store i1 %122, i1* %OF, !mcsema_real_eip !20
  %123 = load i1, i1* %ZF, !mcsema_real_eip !21
  %124 = icmp eq i1 %123, true, !mcsema_real_eip !21
  br i1 %124, label %block_0x57, label %block_0x4b, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %block_0x2f
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !22
  %125 = add i64 %RBP_val.27, -4, !mcsema_real_eip !22
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !22
  %127 = ptrtoint i64* %126 to i64, !mcsema_real_eip !22
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !22
  store i32 -2, i32* %128, !mcsema_real_eip !22
  br label %block_0x417, !mcsema_real_eip !23

block_0x57:                                       ; preds = %block_0x2f
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !24
  %129 = add i64 %RBP_val.28, -16, !mcsema_real_eip !24
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !24
  %131 = load i64, i64* %130, !mcsema_real_eip !24
  store i64 %131, i64* %XAX, !mcsema_real_eip !24
  %RAX_val.29 = load i64, i64* %XAX, !mcsema_real_eip !25
  %132 = add i64 %RAX_val.29, 1, !mcsema_real_eip !25
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !25
  %134 = ptrtoint i64* %133 to i64, !mcsema_real_eip !25
  %135 = inttoptr i64 %134 to i8*, !mcsema_real_eip !25
  %136 = load i8, i8* %135, !mcsema_real_eip !25
  %137 = zext i8 %136 to i32, !mcsema_real_eip !25
  %138 = zext i32 %137 to i64, !mcsema_real_eip !25
  store i64 %138, i64* %XDI, !mcsema_real_eip !25
  %RDI_val.30 = load i64, i64* %XDI, !mcsema_real_eip !26
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !26
  %139 = sub i64 %RSP_val.31, 8, !mcsema_real_eip !26
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !26
  store i64 -2415393069852865332, i64* %140, !mcsema_real_eip !26
  store i64 %139, i64* %XSP, !mcsema_real_eip !26
  %141 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.30), !mcsema_real_eip !26
  store i64 %141, i64* %XAX, !mcsema_real_eip !26
  %EAX.32 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.33 = load i32, i32* %EAX.32, !mcsema_real_eip !27
  %142 = sub i32 %EAX_val.33, 9, !mcsema_real_eip !27
  %143 = xor i32 %142, %EAX_val.33, !mcsema_real_eip !27
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
  %154 = icmp ult i32 %EAX_val.33, 9, !mcsema_real_eip !27
  store i1 %154, i1* %CF, !mcsema_real_eip !27
  %155 = xor i32 %EAX_val.33, 9, !mcsema_real_eip !27
  %156 = xor i32 %EAX_val.33, %142, !mcsema_real_eip !27
  %157 = and i32 %155, %156, !mcsema_real_eip !27
  %158 = lshr i32 %157, 31, !mcsema_real_eip !27
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !27
  store i1 %159, i1* %OF, !mcsema_real_eip !27
  %160 = load i1, i1* %ZF, !mcsema_real_eip !28
  %161 = icmp eq i1 %160, true, !mcsema_real_eip !28
  br i1 %161, label %block_0x79, label %block_0x6d, !mcsema_real_eip !28

block_0x6d:                                       ; preds = %block_0x57
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !29
  %162 = add i64 %RBP_val.34, -4, !mcsema_real_eip !29
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !29
  %164 = ptrtoint i64* %163 to i64, !mcsema_real_eip !29
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !29
  store i32 -3, i32* %165, !mcsema_real_eip !29
  br label %block_0x417, !mcsema_real_eip !30

block_0x79:                                       ; preds = %block_0x57
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !31
  %166 = add i64 %RBP_val.35, -16, !mcsema_real_eip !31
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !31
  %168 = load i64, i64* %167, !mcsema_real_eip !31
  store i64 %168, i64* %XAX, !mcsema_real_eip !31
  %RAX_val.36 = load i64, i64* %XAX, !mcsema_real_eip !32
  %169 = add i64 %RAX_val.36, 2, !mcsema_real_eip !32
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !32
  %171 = ptrtoint i64* %170 to i64, !mcsema_real_eip !32
  %172 = inttoptr i64 %171 to i8*, !mcsema_real_eip !32
  %173 = load i8, i8* %172, !mcsema_real_eip !32
  %174 = zext i8 %173 to i32, !mcsema_real_eip !32
  %175 = zext i32 %174 to i64, !mcsema_real_eip !32
  store i64 %175, i64* %XDI, !mcsema_real_eip !32
  %RDI_val.37 = load i64, i64* %XDI, !mcsema_real_eip !33
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !33
  %176 = sub i64 %RSP_val.38, 8, !mcsema_real_eip !33
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !33
  store i64 -2415393069852865332, i64* %177, !mcsema_real_eip !33
  store i64 %176, i64* %XSP, !mcsema_real_eip !33
  %178 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.37), !mcsema_real_eip !33
  store i64 %178, i64* %XAX, !mcsema_real_eip !33
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !34
  %179 = add i64 %RBP_val.39, -24, !mcsema_real_eip !34
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !34
  %EAX.40 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.41 = load i32, i32* %EAX.40, !mcsema_real_eip !34
  %181 = ptrtoint i64* %180 to i64, !mcsema_real_eip !34
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !34
  store i32 %EAX_val.41, i32* %182, !mcsema_real_eip !34
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !35
  %183 = add i64 %RBP_val.42, -24, !mcsema_real_eip !35
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !35
  %185 = ptrtoint i64* %184 to i64, !mcsema_real_eip !35
  %186 = inttoptr i64 %185 to i32*, !mcsema_real_eip !35
  %187 = load i32, i32* %186, !mcsema_real_eip !35
  %188 = zext i32 %187 to i64, !mcsema_real_eip !35
  store i64 %188, i64* %XAX, !mcsema_real_eip !35
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !36
  %189 = and i32 1, 31, !mcsema_real_eip !36
  %190 = sub i32 1, 1, !mcsema_real_eip !36
  %191 = icmp ne i32 %189, 0, !mcsema_real_eip !36
  %192 = select i1 %191, i32 %190, i32 0, !mcsema_real_eip !36
  %193 = select i1 %191, i32 1, i32 0, !mcsema_real_eip !36
  %194 = shl i32 %EAX_val.44, %192, !mcsema_real_eip !36
  %195 = and i32 %194, -2147483648, !mcsema_real_eip !36
  %196 = icmp ne i32 %195, 0, !mcsema_real_eip !36
  %197 = load i1, i1* %CF, !mcsema_real_eip !36
  %198 = select i1 %191, i1 %196, i1 %197, !mcsema_real_eip !36
  %199 = shl i32 %194, %193, !mcsema_real_eip !36
  %200 = icmp eq i32 %189, 1, !mcsema_real_eip !36
  %201 = load i1, i1* %OF, !mcsema_real_eip !36
  %202 = and i32 %199, -2147483648, !mcsema_real_eip !36
  %203 = icmp ne i32 %202, 0, !mcsema_real_eip !36
  %204 = xor i1 %203, %198, !mcsema_real_eip !36
  %205 = select i1 %200, i1 %204, i1 %201, !mcsema_real_eip !36
  store i1 %205, i1* %OF, !mcsema_real_eip !36
  store i1 %198, i1* %CF, !mcsema_real_eip !36
  %206 = load i1, i1* %ZF, !mcsema_real_eip !36
  %207 = icmp eq i32 %199, 0, !mcsema_real_eip !36
  %208 = select i1 %191, i1 %207, i1 %206, !mcsema_real_eip !36
  store i1 %208, i1* %ZF, !mcsema_real_eip !36
  %209 = load i1, i1* %SF, !mcsema_real_eip !36
  %210 = icmp slt i32 %199, 0, !mcsema_real_eip !36
  %211 = select i1 %191, i1 %210, i1 %209, !mcsema_real_eip !36
  store i1 %211, i1* %SF, !mcsema_real_eip !36
  %212 = load i1, i1* %PF, !mcsema_real_eip !36
  %213 = trunc i32 %199 to i8, !mcsema_real_eip !36
  %214 = call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !36
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !36
  %216 = xor i1 %215, true, !mcsema_real_eip !36
  store i1 %216, i1* %PF, !mcsema_real_eip !36
  %217 = load i1, i1* %PF, !mcsema_real_eip !36
  %218 = select i1 %191, i1 %217, i1 %212, !mcsema_real_eip !36
  store i1 %218, i1* %PF, !mcsema_real_eip !36
  %219 = zext i32 %199 to i64, !mcsema_real_eip !36
  store i64 %219, i64* %XAX, !mcsema_real_eip !36
  %EAX.45 = bitcast i64* %XAX to i32*, !mcsema_real_eip !37
  %EAX_val.46 = load i32, i32* %EAX.45, !mcsema_real_eip !37
  %220 = sub i32 %EAX_val.46, 26, !mcsema_real_eip !37
  %221 = xor i32 %220, %EAX_val.46, !mcsema_real_eip !37
  %222 = xor i32 %221, 26, !mcsema_real_eip !37
  %223 = and i32 %222, 16, !mcsema_real_eip !37
  %224 = icmp ne i32 %223, 0, !mcsema_real_eip !37
  store i1 %224, i1* %AF, !mcsema_real_eip !37
  %225 = trunc i32 %220 to i8, !mcsema_real_eip !37
  %226 = call i8 @llvm.ctpop.i8(i8 %225), !mcsema_real_eip !37
  %227 = trunc i8 %226 to i1, !mcsema_real_eip !37
  %228 = xor i1 %227, true, !mcsema_real_eip !37
  store i1 %228, i1* %PF, !mcsema_real_eip !37
  %229 = icmp eq i32 %220, 0, !mcsema_real_eip !37
  store i1 %229, i1* %ZF, !mcsema_real_eip !37
  %230 = lshr i32 %220, 31, !mcsema_real_eip !37
  %231 = trunc i32 %230 to i1, !mcsema_real_eip !37
  store i1 %231, i1* %SF, !mcsema_real_eip !37
  %232 = icmp ult i32 %EAX_val.46, 26, !mcsema_real_eip !37
  store i1 %232, i1* %CF, !mcsema_real_eip !37
  %233 = xor i32 %EAX_val.46, 26, !mcsema_real_eip !37
  %234 = xor i32 %EAX_val.46, %220, !mcsema_real_eip !37
  %235 = and i32 %233, %234, !mcsema_real_eip !37
  %236 = lshr i32 %235, 31, !mcsema_real_eip !37
  %237 = trunc i32 %236 to i1, !mcsema_real_eip !37
  store i1 %237, i1* %OF, !mcsema_real_eip !37
  %238 = load i1, i1* %ZF, !mcsema_real_eip !38
  %239 = icmp eq i1 %238, true, !mcsema_real_eip !38
  br i1 %239, label %block_0xa4, label %block_0x98, !mcsema_real_eip !38

block_0x98:                                       ; preds = %block_0x79
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !39
  %240 = add i64 %RBP_val.47, -4, !mcsema_real_eip !39
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !39
  %242 = ptrtoint i64* %241 to i64, !mcsema_real_eip !39
  %243 = inttoptr i64 %242 to i32*, !mcsema_real_eip !39
  store i32 -4, i32* %243, !mcsema_real_eip !39
  br label %block_0x417, !mcsema_real_eip !40

block_0xa4:                                       ; preds = %block_0x79
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !41
  %244 = add i64 %RBP_val.48, -16, !mcsema_real_eip !41
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !41
  %246 = load i64, i64* %245, !mcsema_real_eip !41
  store i64 %246, i64* %XAX, !mcsema_real_eip !41
  %RAX_val.49 = load i64, i64* %XAX, !mcsema_real_eip !42
  %247 = add i64 %RAX_val.49, 3, !mcsema_real_eip !42
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !42
  %249 = ptrtoint i64* %248 to i64, !mcsema_real_eip !42
  %250 = inttoptr i64 %249 to i8*, !mcsema_real_eip !42
  %251 = load i8, i8* %250, !mcsema_real_eip !42
  %252 = zext i8 %251 to i32, !mcsema_real_eip !42
  %253 = zext i32 %252 to i64, !mcsema_real_eip !42
  store i64 %253, i64* %XDI, !mcsema_real_eip !42
  %RDI_val.50 = load i64, i64* %XDI, !mcsema_real_eip !43
  %RSP_val.51 = load i64, i64* %XSP, !mcsema_real_eip !43
  %254 = sub i64 %RSP_val.51, 8, !mcsema_real_eip !43
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !43
  store i64 -2415393069852865332, i64* %255, !mcsema_real_eip !43
  store i64 %254, i64* %XSP, !mcsema_real_eip !43
  %256 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.50), !mcsema_real_eip !43
  store i64 %256, i64* %XAX, !mcsema_real_eip !43
  %257 = zext i32 2 to i64, !mcsema_real_eip !44
  store i64 %257, i64* %XDI, !mcsema_real_eip !44
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !45
  %258 = add i64 %RBP_val.52, -28, !mcsema_real_eip !45
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !45
  %EAX.53 = bitcast i64* %XAX to i32*, !mcsema_real_eip !45
  %EAX_val.54 = load i32, i32* %EAX.53, !mcsema_real_eip !45
  %260 = ptrtoint i64* %259 to i64, !mcsema_real_eip !45
  %261 = inttoptr i64 %260 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.54, i32* %261, !mcsema_real_eip !45
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !46
  %262 = add i64 %RBP_val.55, -28, !mcsema_real_eip !46
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !46
  %264 = ptrtoint i64* %263 to i64, !mcsema_real_eip !46
  %265 = inttoptr i64 %264 to i32*, !mcsema_real_eip !46
  %266 = load i32, i32* %265, !mcsema_real_eip !46
  %267 = zext i32 %266 to i64, !mcsema_real_eip !46
  store i64 %267, i64* %XAX, !mcsema_real_eip !46
  %EAX.56 = bitcast i64* %XAX to i32*, !mcsema_real_eip !47
  %EAX_val.57 = load i32, i32* %EAX.56, !mcsema_real_eip !47
  %268 = add i32 1, %EAX_val.57, !mcsema_real_eip !47
  %269 = xor i32 %268, %EAX_val.57, !mcsema_real_eip !47
  %270 = xor i32 %269, 1, !mcsema_real_eip !47
  %271 = and i32 %270, 16, !mcsema_real_eip !47
  %272 = icmp ne i32 %271, 0, !mcsema_real_eip !47
  store i1 %272, i1* %AF, !mcsema_real_eip !47
  %273 = lshr i32 %268, 31, !mcsema_real_eip !47
  %274 = trunc i32 %273 to i1, !mcsema_real_eip !47
  store i1 %274, i1* %SF, !mcsema_real_eip !47
  %275 = icmp eq i32 %268, 0, !mcsema_real_eip !47
  store i1 %275, i1* %ZF, !mcsema_real_eip !47
  %276 = xor i32 %EAX_val.57, 1, !mcsema_real_eip !47
  %277 = xor i32 %276, -1, !mcsema_real_eip !47
  %278 = xor i32 %EAX_val.57, %268, !mcsema_real_eip !47
  %279 = and i32 %277, %278, !mcsema_real_eip !47
  %280 = lshr i32 %279, 31, !mcsema_real_eip !47
  %281 = and i32 %280, 1, !mcsema_real_eip !47
  %282 = trunc i32 %281 to i1, !mcsema_real_eip !47
  store i1 %282, i1* %OF, !mcsema_real_eip !47
  %283 = trunc i32 %268 to i8, !mcsema_real_eip !47
  %284 = call i8 @llvm.ctpop.i8(i8 %283), !mcsema_real_eip !47
  %285 = trunc i8 %284 to i1, !mcsema_real_eip !47
  %286 = xor i1 %285, true, !mcsema_real_eip !47
  store i1 %286, i1* %PF, !mcsema_real_eip !47
  %287 = icmp ult i32 %268, %EAX_val.57, !mcsema_real_eip !47
  store i1 %287, i1* %CF, !mcsema_real_eip !47
  %288 = zext i32 %268 to i64, !mcsema_real_eip !47
  store i64 %288, i64* %XAX, !mcsema_real_eip !47
  %EAX.58 = bitcast i64* %XAX to i32*, !mcsema_real_eip !48
  %EAX_val.59 = load i32, i32* %EAX.58, !mcsema_real_eip !48
  %289 = and i32 %EAX_val.59, -2147483648, !mcsema_real_eip !48
  %290 = icmp eq i32 %289, 0, !mcsema_real_eip !48
  %291 = select i1 %290, i32 0, i32 -1, !mcsema_real_eip !48
  %292 = zext i32 %291 to i64, !mcsema_real_eip !48
  store i64 %292, i64* %XDX, !mcsema_real_eip !48
  %EDI.60 = bitcast i64* %XDI to i32*, !mcsema_real_eip !49
  %EDI_val.61 = load i32, i32* %EDI.60, !mcsema_real_eip !49
  %EAX.62 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.63 = load i32, i32* %EAX.62, !mcsema_real_eip !49
  %EDX.64 = bitcast i64* %XDX to i32*, !mcsema_real_eip !49
  %EDX_val.65 = load i32, i32* %EDX.64, !mcsema_real_eip !49
  %293 = zext i32 %EDX_val.65 to i64, !mcsema_real_eip !49
  %294 = shl i64 %293, 32, !mcsema_real_eip !49
  %295 = sext i32 %EAX_val.63 to i64, !mcsema_real_eip !49
  %296 = or i64 %294, %295, !mcsema_real_eip !49
  %297 = sext i32 %EDI_val.61 to i64, !mcsema_real_eip !49
  %298 = sdiv i64 %296, %297, !mcsema_real_eip !49
  %299 = srem i64 %296, %297, !mcsema_real_eip !49
  %300 = trunc i64 %299 to i32, !mcsema_real_eip !49
  %301 = trunc i64 %298 to i32, !mcsema_real_eip !49
  %302 = zext i32 %300 to i64, !mcsema_real_eip !49
  store i64 %302, i64* %XDX, !mcsema_real_eip !49
  %303 = zext i32 %301 to i64, !mcsema_real_eip !49
  store i64 %303, i64* %XAX, !mcsema_real_eip !49
  %EAX.66 = bitcast i64* %XAX to i32*, !mcsema_real_eip !50
  %EAX_val.67 = load i32, i32* %EAX.66, !mcsema_real_eip !50
  %304 = sub i32 %EAX_val.67, 7, !mcsema_real_eip !50
  %305 = xor i32 %304, %EAX_val.67, !mcsema_real_eip !50
  %306 = xor i32 %305, 7, !mcsema_real_eip !50
  %307 = and i32 %306, 16, !mcsema_real_eip !50
  %308 = icmp ne i32 %307, 0, !mcsema_real_eip !50
  store i1 %308, i1* %AF, !mcsema_real_eip !50
  %309 = trunc i32 %304 to i8, !mcsema_real_eip !50
  %310 = call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !50
  %311 = trunc i8 %310 to i1, !mcsema_real_eip !50
  %312 = xor i1 %311, true, !mcsema_real_eip !50
  store i1 %312, i1* %PF, !mcsema_real_eip !50
  %313 = icmp eq i32 %304, 0, !mcsema_real_eip !50
  store i1 %313, i1* %ZF, !mcsema_real_eip !50
  %314 = lshr i32 %304, 31, !mcsema_real_eip !50
  %315 = trunc i32 %314 to i1, !mcsema_real_eip !50
  store i1 %315, i1* %SF, !mcsema_real_eip !50
  %316 = icmp ult i32 %EAX_val.67, 7, !mcsema_real_eip !50
  store i1 %316, i1* %CF, !mcsema_real_eip !50
  %317 = xor i32 %EAX_val.67, 7, !mcsema_real_eip !50
  %318 = xor i32 %EAX_val.67, %304, !mcsema_real_eip !50
  %319 = and i32 %317, %318, !mcsema_real_eip !50
  %320 = lshr i32 %319, 31, !mcsema_real_eip !50
  %321 = trunc i32 %320 to i1, !mcsema_real_eip !50
  store i1 %321, i1* %OF, !mcsema_real_eip !50
  %322 = load i1, i1* %ZF, !mcsema_real_eip !51
  %323 = icmp eq i1 %322, true, !mcsema_real_eip !51
  br i1 %323, label %block_0xd7, label %block_0xcb, !mcsema_real_eip !51

block_0xcb:                                       ; preds = %block_0xa4
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !52
  %324 = add i64 %RBP_val.68, -4, !mcsema_real_eip !52
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !52
  %326 = ptrtoint i64* %325 to i64, !mcsema_real_eip !52
  %327 = inttoptr i64 %326 to i32*, !mcsema_real_eip !52
  store i32 -5, i32* %327, !mcsema_real_eip !52
  br label %block_0x417, !mcsema_real_eip !53

block_0xd7:                                       ; preds = %block_0xa4
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !54
  %328 = add i64 %RBP_val.69, -16, !mcsema_real_eip !54
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !54
  %330 = load i64, i64* %329, !mcsema_real_eip !54
  store i64 %330, i64* %XAX, !mcsema_real_eip !54
  %RAX_val.70 = load i64, i64* %XAX, !mcsema_real_eip !55
  %331 = add i64 %RAX_val.70, 4, !mcsema_real_eip !55
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !55
  %333 = ptrtoint i64* %332 to i64, !mcsema_real_eip !55
  %334 = inttoptr i64 %333 to i8*, !mcsema_real_eip !55
  %335 = load i8, i8* %334, !mcsema_real_eip !55
  %336 = sext i8 %335 to i32, !mcsema_real_eip !55
  %337 = zext i32 %336 to i64, !mcsema_real_eip !55
  store i64 %337, i64* %XCX, !mcsema_real_eip !55
  %ECX.71 = bitcast i64* %XCX to i32*, !mcsema_real_eip !56
  %ECX_val.72 = load i32, i32* %ECX.71, !mcsema_real_eip !56
  %338 = and i32 %ECX_val.72, 15, !mcsema_real_eip !56
  %339 = lshr i32 %338, 31, !mcsema_real_eip !56
  %340 = trunc i32 %339 to i1, !mcsema_real_eip !56
  store i1 %340, i1* %SF, !mcsema_real_eip !56
  %341 = icmp eq i32 %338, 0, !mcsema_real_eip !56
  store i1 %341, i1* %ZF, !mcsema_real_eip !56
  %342 = trunc i32 %338 to i8, !mcsema_real_eip !56
  %343 = call i8 @llvm.ctpop.i8(i8 %342), !mcsema_real_eip !56
  %344 = trunc i8 %343 to i1, !mcsema_real_eip !56
  %345 = xor i1 %344, true, !mcsema_real_eip !56
  store i1 %345, i1* %PF, !mcsema_real_eip !56
  store i1 false, i1* %OF, !mcsema_real_eip !56
  store i1 false, i1* %CF, !mcsema_real_eip !56
  store i1 undef, i1* %AF, !mcsema_real_eip !56
  %346 = zext i32 %338 to i64, !mcsema_real_eip !56
  store i64 %346, i64* %XCX, !mcsema_real_eip !56
  %ECX.73 = bitcast i64* %XCX to i32*, !mcsema_real_eip !57
  %ECX_val.74 = load i32, i32* %ECX.73, !mcsema_real_eip !57
  %347 = sub i32 %ECX_val.74, 1, !mcsema_real_eip !57
  %348 = xor i32 %347, %ECX_val.74, !mcsema_real_eip !57
  %349 = xor i32 %348, 1, !mcsema_real_eip !57
  %350 = and i32 %349, 16, !mcsema_real_eip !57
  %351 = icmp ne i32 %350, 0, !mcsema_real_eip !57
  store i1 %351, i1* %AF, !mcsema_real_eip !57
  %352 = trunc i32 %347 to i8, !mcsema_real_eip !57
  %353 = call i8 @llvm.ctpop.i8(i8 %352), !mcsema_real_eip !57
  %354 = trunc i8 %353 to i1, !mcsema_real_eip !57
  %355 = xor i1 %354, true, !mcsema_real_eip !57
  store i1 %355, i1* %PF, !mcsema_real_eip !57
  %356 = icmp eq i32 %347, 0, !mcsema_real_eip !57
  store i1 %356, i1* %ZF, !mcsema_real_eip !57
  %357 = lshr i32 %347, 31, !mcsema_real_eip !57
  %358 = trunc i32 %357 to i1, !mcsema_real_eip !57
  store i1 %358, i1* %SF, !mcsema_real_eip !57
  %359 = icmp ult i32 %ECX_val.74, 1, !mcsema_real_eip !57
  store i1 %359, i1* %CF, !mcsema_real_eip !57
  %360 = xor i32 %ECX_val.74, 1, !mcsema_real_eip !57
  %361 = xor i32 %ECX_val.74, %347, !mcsema_real_eip !57
  %362 = and i32 %360, %361, !mcsema_real_eip !57
  %363 = lshr i32 %362, 31, !mcsema_real_eip !57
  %364 = trunc i32 %363 to i1, !mcsema_real_eip !57
  store i1 %364, i1* %OF, !mcsema_real_eip !57
  %365 = load i1, i1* %ZF, !mcsema_real_eip !58
  %366 = icmp eq i1 %365, false, !mcsema_real_eip !58
  br i1 %366, label %block_0x10e, label %block_0xeb, !mcsema_real_eip !58

block_0xeb:                                       ; preds = %block_0xd7
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !59
  %367 = add i64 %RBP_val.75, -16, !mcsema_real_eip !59
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !59
  %369 = load i64, i64* %368, !mcsema_real_eip !59
  store i64 %369, i64* %XAX, !mcsema_real_eip !59
  %RAX_val.76 = load i64, i64* %XAX, !mcsema_real_eip !60
  %370 = add i64 %RAX_val.76, 4, !mcsema_real_eip !60
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !60
  %372 = ptrtoint i64* %371 to i64, !mcsema_real_eip !60
  %373 = inttoptr i64 %372 to i8*, !mcsema_real_eip !60
  %374 = load i8, i8* %373, !mcsema_real_eip !60
  %375 = sext i8 %374 to i32, !mcsema_real_eip !60
  %376 = zext i32 %375 to i64, !mcsema_real_eip !60
  store i64 %376, i64* %XCX, !mcsema_real_eip !60
  %ECX.77 = bitcast i64* %XCX to i32*, !mcsema_real_eip !61
  %ECX_val.78 = load i32, i32* %ECX.77, !mcsema_real_eip !61
  %377 = and i32 %ECX_val.78, 240, !mcsema_real_eip !61
  %378 = lshr i32 %377, 31, !mcsema_real_eip !61
  %379 = trunc i32 %378 to i1, !mcsema_real_eip !61
  store i1 %379, i1* %SF, !mcsema_real_eip !61
  %380 = icmp eq i32 %377, 0, !mcsema_real_eip !61
  store i1 %380, i1* %ZF, !mcsema_real_eip !61
  %381 = trunc i32 %377 to i8, !mcsema_real_eip !61
  %382 = call i8 @llvm.ctpop.i8(i8 %381), !mcsema_real_eip !61
  %383 = trunc i8 %382 to i1, !mcsema_real_eip !61
  %384 = xor i1 %383, true, !mcsema_real_eip !61
  store i1 %384, i1* %PF, !mcsema_real_eip !61
  store i1 false, i1* %OF, !mcsema_real_eip !61
  store i1 false, i1* %CF, !mcsema_real_eip !61
  store i1 undef, i1* %AF, !mcsema_real_eip !61
  %385 = zext i32 %377 to i64, !mcsema_real_eip !61
  store i64 %385, i64* %XCX, !mcsema_real_eip !61
  %ECX.79 = bitcast i64* %XCX to i32*, !mcsema_real_eip !62
  %ECX_val.80 = load i32, i32* %ECX.79, !mcsema_real_eip !62
  %386 = sub i32 %ECX_val.80, 48, !mcsema_real_eip !62
  %387 = xor i32 %386, %ECX_val.80, !mcsema_real_eip !62
  %388 = xor i32 %387, 48, !mcsema_real_eip !62
  %389 = and i32 %388, 16, !mcsema_real_eip !62
  %390 = icmp ne i32 %389, 0, !mcsema_real_eip !62
  store i1 %390, i1* %AF, !mcsema_real_eip !62
  %391 = trunc i32 %386 to i8, !mcsema_real_eip !62
  %392 = call i8 @llvm.ctpop.i8(i8 %391), !mcsema_real_eip !62
  %393 = trunc i8 %392 to i1, !mcsema_real_eip !62
  %394 = xor i1 %393, true, !mcsema_real_eip !62
  store i1 %394, i1* %PF, !mcsema_real_eip !62
  %395 = icmp eq i32 %386, 0, !mcsema_real_eip !62
  store i1 %395, i1* %ZF, !mcsema_real_eip !62
  %396 = lshr i32 %386, 31, !mcsema_real_eip !62
  %397 = trunc i32 %396 to i1, !mcsema_real_eip !62
  store i1 %397, i1* %SF, !mcsema_real_eip !62
  %398 = icmp ult i32 %ECX_val.80, 48, !mcsema_real_eip !62
  store i1 %398, i1* %CF, !mcsema_real_eip !62
  %399 = xor i32 %ECX_val.80, 48, !mcsema_real_eip !62
  %400 = xor i32 %ECX_val.80, %386, !mcsema_real_eip !62
  %401 = and i32 %399, %400, !mcsema_real_eip !62
  %402 = lshr i32 %401, 31, !mcsema_real_eip !62
  %403 = trunc i32 %402 to i1, !mcsema_real_eip !62
  store i1 %403, i1* %OF, !mcsema_real_eip !62
  %404 = load i1, i1* %ZF, !mcsema_real_eip !63
  %405 = icmp eq i1 %404, false, !mcsema_real_eip !63
  br i1 %405, label %block_0x10e, label %block_0x102, !mcsema_real_eip !63

block_0x102:                                      ; preds = %block_0xeb
  %RBP_val.81 = load i64, i64* %XBP, !mcsema_real_eip !64
  %406 = add i64 %RBP_val.81, -20, !mcsema_real_eip !64
  %407 = inttoptr i64 %406 to i64*, !mcsema_real_eip !64
  %408 = ptrtoint i64* %407 to i64, !mcsema_real_eip !64
  %409 = inttoptr i64 %408 to i32*, !mcsema_real_eip !64
  store i32 -4, i32* %409, !mcsema_real_eip !64
  br label %block_0x11a, !mcsema_real_eip !65

block_0x10e:                                      ; preds = %block_0xeb, %block_0xd7
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !66
  %410 = add i64 %RBP_val.82, -4, !mcsema_real_eip !66
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !66
  %412 = ptrtoint i64* %411 to i64, !mcsema_real_eip !66
  %413 = inttoptr i64 %412 to i32*, !mcsema_real_eip !66
  store i32 -6, i32* %413, !mcsema_real_eip !66
  br label %block_0x417, !mcsema_real_eip !67

block_0x11a:                                      ; preds = %block_0x102
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !68
  %414 = add i64 %RBP_val.83, -16, !mcsema_real_eip !68
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !68
  %416 = load i64, i64* %415, !mcsema_real_eip !68
  store i64 %416, i64* %XAX, !mcsema_real_eip !68
  %RAX_val.84 = load i64, i64* %XAX, !mcsema_real_eip !69
  %417 = add i64 %RAX_val.84, 5, !mcsema_real_eip !69
  %418 = inttoptr i64 %417 to i64*, !mcsema_real_eip !69
  %419 = ptrtoint i64* %418 to i64, !mcsema_real_eip !69
  %420 = inttoptr i64 %419 to i8*, !mcsema_real_eip !69
  %421 = load i8, i8* %420, !mcsema_real_eip !69
  %422 = sext i8 %421 to i32, !mcsema_real_eip !69
  %423 = zext i32 %422 to i64, !mcsema_real_eip !69
  store i64 %423, i64* %XCX, !mcsema_real_eip !69
  %ECX.85 = bitcast i64* %XCX to i32*, !mcsema_real_eip !70
  %ECX_val.86 = load i32, i32* %ECX.85, !mcsema_real_eip !70
  %424 = and i32 %ECX_val.86, 15, !mcsema_real_eip !70
  %425 = lshr i32 %424, 31, !mcsema_real_eip !70
  %426 = trunc i32 %425 to i1, !mcsema_real_eip !70
  store i1 %426, i1* %SF, !mcsema_real_eip !70
  %427 = icmp eq i32 %424, 0, !mcsema_real_eip !70
  store i1 %427, i1* %ZF, !mcsema_real_eip !70
  %428 = trunc i32 %424 to i8, !mcsema_real_eip !70
  %429 = call i8 @llvm.ctpop.i8(i8 %428), !mcsema_real_eip !70
  %430 = trunc i8 %429 to i1, !mcsema_real_eip !70
  %431 = xor i1 %430, true, !mcsema_real_eip !70
  store i1 %431, i1* %PF, !mcsema_real_eip !70
  store i1 false, i1* %OF, !mcsema_real_eip !70
  store i1 false, i1* %CF, !mcsema_real_eip !70
  store i1 undef, i1* %AF, !mcsema_real_eip !70
  %432 = zext i32 %424 to i64, !mcsema_real_eip !70
  store i64 %432, i64* %XCX, !mcsema_real_eip !70
  %CL.87 = bitcast i64* %XCX to i8*, !mcsema_real_eip !71
  %CL_val.88 = load i8, i8* %CL.87, !mcsema_real_eip !71
  %DL.89 = bitcast i64* %XDX to i8*, !mcsema_real_eip !71
  store i8 %CL_val.88, i8* %DL.89, !mcsema_real_eip !71
  %RBP_val.90 = load i64, i64* %XBP, !mcsema_real_eip !72
  %433 = add i64 %RBP_val.90, -33, !mcsema_real_eip !72
  %434 = inttoptr i64 %433 to i64*, !mcsema_real_eip !72
  %DL.91 = bitcast i64* %XDX to i8*, !mcsema_real_eip !72
  %DL_val.92 = load i8, i8* %DL.91, !mcsema_real_eip !72
  %435 = ptrtoint i64* %434 to i64, !mcsema_real_eip !72
  %436 = inttoptr i64 %435 to i8*, !mcsema_real_eip !72
  store i8 %DL_val.92, i8* %436, !mcsema_real_eip !72
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !73
  %437 = add i64 %RBP_val.93, -16, !mcsema_real_eip !73
  %438 = inttoptr i64 %437 to i64*, !mcsema_real_eip !73
  %439 = load i64, i64* %438, !mcsema_real_eip !73
  store i64 %439, i64* %XAX, !mcsema_real_eip !73
  %RAX_val.94 = load i64, i64* %XAX, !mcsema_real_eip !74
  %440 = add i64 %RAX_val.94, 5, !mcsema_real_eip !74
  %441 = inttoptr i64 %440 to i64*, !mcsema_real_eip !74
  %442 = ptrtoint i64* %441 to i64, !mcsema_real_eip !74
  %443 = inttoptr i64 %442 to i8*, !mcsema_real_eip !74
  %444 = load i8, i8* %443, !mcsema_real_eip !74
  %445 = sext i8 %444 to i32, !mcsema_real_eip !74
  %446 = zext i32 %445 to i64, !mcsema_real_eip !74
  store i64 %446, i64* %XCX, !mcsema_real_eip !74
  %ECX.95 = bitcast i64* %XCX to i32*, !mcsema_real_eip !75
  %ECX_val.96 = load i32, i32* %ECX.95, !mcsema_real_eip !75
  %447 = and i32 %ECX_val.96, 240, !mcsema_real_eip !75
  %448 = lshr i32 %447, 31, !mcsema_real_eip !75
  %449 = trunc i32 %448 to i1, !mcsema_real_eip !75
  store i1 %449, i1* %SF, !mcsema_real_eip !75
  %450 = icmp eq i32 %447, 0, !mcsema_real_eip !75
  store i1 %450, i1* %ZF, !mcsema_real_eip !75
  %451 = trunc i32 %447 to i8, !mcsema_real_eip !75
  %452 = call i8 @llvm.ctpop.i8(i8 %451), !mcsema_real_eip !75
  %453 = trunc i8 %452 to i1, !mcsema_real_eip !75
  %454 = xor i1 %453, true, !mcsema_real_eip !75
  store i1 %454, i1* %PF, !mcsema_real_eip !75
  store i1 false, i1* %OF, !mcsema_real_eip !75
  store i1 false, i1* %CF, !mcsema_real_eip !75
  store i1 undef, i1* %AF, !mcsema_real_eip !75
  %455 = zext i32 %447 to i64, !mcsema_real_eip !75
  store i64 %455, i64* %XCX, !mcsema_real_eip !75
  %CL.97 = bitcast i64* %XCX to i8*, !mcsema_real_eip !76
  %CL_val.98 = load i8, i8* %CL.97, !mcsema_real_eip !76
  %DL.99 = bitcast i64* %XDX to i8*, !mcsema_real_eip !76
  store i8 %CL_val.98, i8* %DL.99, !mcsema_real_eip !76
  %RBP_val.100 = load i64, i64* %XBP, !mcsema_real_eip !77
  %456 = add i64 %RBP_val.100, -34, !mcsema_real_eip !77
  %457 = inttoptr i64 %456 to i64*, !mcsema_real_eip !77
  %DL.101 = bitcast i64* %XDX to i8*, !mcsema_real_eip !77
  %DL_val.102 = load i8, i8* %DL.101, !mcsema_real_eip !77
  %458 = ptrtoint i64* %457 to i64, !mcsema_real_eip !77
  %459 = inttoptr i64 %458 to i8*, !mcsema_real_eip !77
  store i8 %DL_val.102, i8* %459, !mcsema_real_eip !77
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !78
  %460 = add i64 %RBP_val.103, -33, !mcsema_real_eip !78
  %461 = inttoptr i64 %460 to i64*, !mcsema_real_eip !78
  %462 = ptrtoint i64* %461 to i64, !mcsema_real_eip !78
  %463 = inttoptr i64 %462 to i8*, !mcsema_real_eip !78
  %464 = load i8, i8* %463, !mcsema_real_eip !78
  %465 = zext i8 %464 to i32, !mcsema_real_eip !78
  %466 = zext i32 %465 to i64, !mcsema_real_eip !78
  store i64 %466, i64* %XCX, !mcsema_real_eip !78
  %ECX.104 = bitcast i64* %XCX to i32*, !mcsema_real_eip !79
  %ECX_val.105 = load i32, i32* %ECX.104, !mcsema_real_eip !79
  %467 = sub i32 %ECX_val.105, 3, !mcsema_real_eip !79
  %468 = xor i32 %467, %ECX_val.105, !mcsema_real_eip !79
  %469 = xor i32 %468, 3, !mcsema_real_eip !79
  %470 = and i32 %469, 16, !mcsema_real_eip !79
  %471 = icmp ne i32 %470, 0, !mcsema_real_eip !79
  store i1 %471, i1* %AF, !mcsema_real_eip !79
  %472 = trunc i32 %467 to i8, !mcsema_real_eip !79
  %473 = call i8 @llvm.ctpop.i8(i8 %472), !mcsema_real_eip !79
  %474 = trunc i8 %473 to i1, !mcsema_real_eip !79
  %475 = xor i1 %474, true, !mcsema_real_eip !79
  store i1 %475, i1* %PF, !mcsema_real_eip !79
  %476 = icmp eq i32 %467, 0, !mcsema_real_eip !79
  store i1 %476, i1* %ZF, !mcsema_real_eip !79
  %477 = lshr i32 %467, 31, !mcsema_real_eip !79
  %478 = trunc i32 %477 to i1, !mcsema_real_eip !79
  store i1 %478, i1* %SF, !mcsema_real_eip !79
  %479 = icmp ult i32 %ECX_val.105, 3, !mcsema_real_eip !79
  store i1 %479, i1* %CF, !mcsema_real_eip !79
  %480 = xor i32 %ECX_val.105, 3, !mcsema_real_eip !79
  %481 = xor i32 %ECX_val.105, %467, !mcsema_real_eip !79
  %482 = and i32 %480, %481, !mcsema_real_eip !79
  %483 = lshr i32 %482, 31, !mcsema_real_eip !79
  %484 = trunc i32 %483 to i1, !mcsema_real_eip !79
  store i1 %484, i1* %OF, !mcsema_real_eip !79
  %485 = load i1, i1* %ZF, !mcsema_real_eip !80
  %486 = icmp eq i1 %485, false, !mcsema_real_eip !80
  br i1 %486, label %block_0x165, label %block_0x14a, !mcsema_real_eip !80

block_0x14a:                                      ; preds = %block_0x11a
  %RBP_val.106 = load i64, i64* %XBP, !mcsema_real_eip !81
  %487 = add i64 %RBP_val.106, -34, !mcsema_real_eip !81
  %488 = inttoptr i64 %487 to i64*, !mcsema_real_eip !81
  %489 = ptrtoint i64* %488 to i64, !mcsema_real_eip !81
  %490 = inttoptr i64 %489 to i8*, !mcsema_real_eip !81
  %491 = load i8, i8* %490, !mcsema_real_eip !81
  %492 = zext i8 %491 to i32, !mcsema_real_eip !81
  %493 = zext i32 %492 to i64, !mcsema_real_eip !81
  store i64 %493, i64* %XAX, !mcsema_real_eip !81
  %EAX.107 = bitcast i64* %XAX to i32*, !mcsema_real_eip !82
  %EAX_val.108 = load i32, i32* %EAX.107, !mcsema_real_eip !82
  %494 = sub i32 %EAX_val.108, 96, !mcsema_real_eip !82
  %495 = xor i32 %494, %EAX_val.108, !mcsema_real_eip !82
  %496 = xor i32 %495, 96, !mcsema_real_eip !82
  %497 = and i32 %496, 16, !mcsema_real_eip !82
  %498 = icmp ne i32 %497, 0, !mcsema_real_eip !82
  store i1 %498, i1* %AF, !mcsema_real_eip !82
  %499 = trunc i32 %494 to i8, !mcsema_real_eip !82
  %500 = call i8 @llvm.ctpop.i8(i8 %499), !mcsema_real_eip !82
  %501 = trunc i8 %500 to i1, !mcsema_real_eip !82
  %502 = xor i1 %501, true, !mcsema_real_eip !82
  store i1 %502, i1* %PF, !mcsema_real_eip !82
  %503 = icmp eq i32 %494, 0, !mcsema_real_eip !82
  store i1 %503, i1* %ZF, !mcsema_real_eip !82
  %504 = lshr i32 %494, 31, !mcsema_real_eip !82
  %505 = trunc i32 %504 to i1, !mcsema_real_eip !82
  store i1 %505, i1* %SF, !mcsema_real_eip !82
  %506 = icmp ult i32 %EAX_val.108, 96, !mcsema_real_eip !82
  store i1 %506, i1* %CF, !mcsema_real_eip !82
  %507 = xor i32 %EAX_val.108, 96, !mcsema_real_eip !82
  %508 = xor i32 %EAX_val.108, %494, !mcsema_real_eip !82
  %509 = and i32 %507, %508, !mcsema_real_eip !82
  %510 = lshr i32 %509, 31, !mcsema_real_eip !82
  %511 = trunc i32 %510 to i1, !mcsema_real_eip !82
  store i1 %511, i1* %OF, !mcsema_real_eip !82
  %512 = load i1, i1* %ZF, !mcsema_real_eip !83
  %513 = icmp eq i1 %512, false, !mcsema_real_eip !83
  br i1 %513, label %block_0x165, label %block_0x157, !mcsema_real_eip !83

block_0x157:                                      ; preds = %block_0x14a
  %RBP_val.109 = load i64, i64* %XBP, !mcsema_real_eip !84
  %514 = add i64 %RBP_val.109, -20, !mcsema_real_eip !84
  %515 = inttoptr i64 %514 to i64*, !mcsema_real_eip !84
  %516 = ptrtoint i64* %515 to i64, !mcsema_real_eip !84
  %517 = inttoptr i64 %516 to i32*, !mcsema_real_eip !84
  %518 = load i32, i32* %517, !mcsema_real_eip !84
  %519 = zext i32 %518 to i64, !mcsema_real_eip !84
  store i64 %519, i64* %XAX, !mcsema_real_eip !84
  %EAX.110 = bitcast i64* %XAX to i32*, !mcsema_real_eip !85
  %EAX_val.111 = load i32, i32* %EAX.110, !mcsema_real_eip !85
  %520 = add i32 4, %EAX_val.111, !mcsema_real_eip !85
  %521 = xor i32 %520, %EAX_val.111, !mcsema_real_eip !85
  %522 = xor i32 %521, 4, !mcsema_real_eip !85
  %523 = and i32 %522, 16, !mcsema_real_eip !85
  %524 = icmp ne i32 %523, 0, !mcsema_real_eip !85
  store i1 %524, i1* %AF, !mcsema_real_eip !85
  %525 = lshr i32 %520, 31, !mcsema_real_eip !85
  %526 = trunc i32 %525 to i1, !mcsema_real_eip !85
  store i1 %526, i1* %SF, !mcsema_real_eip !85
  %527 = icmp eq i32 %520, 0, !mcsema_real_eip !85
  store i1 %527, i1* %ZF, !mcsema_real_eip !85
  %528 = xor i32 %EAX_val.111, 4, !mcsema_real_eip !85
  %529 = xor i32 %528, -1, !mcsema_real_eip !85
  %530 = xor i32 %EAX_val.111, %520, !mcsema_real_eip !85
  %531 = and i32 %529, %530, !mcsema_real_eip !85
  %532 = lshr i32 %531, 31, !mcsema_real_eip !85
  %533 = and i32 %532, 1, !mcsema_real_eip !85
  %534 = trunc i32 %533 to i1, !mcsema_real_eip !85
  store i1 %534, i1* %OF, !mcsema_real_eip !85
  %535 = trunc i32 %520 to i8, !mcsema_real_eip !85
  %536 = call i8 @llvm.ctpop.i8(i8 %535), !mcsema_real_eip !85
  %537 = trunc i8 %536 to i1, !mcsema_real_eip !85
  %538 = xor i1 %537, true, !mcsema_real_eip !85
  store i1 %538, i1* %PF, !mcsema_real_eip !85
  %539 = icmp ult i32 %520, %EAX_val.111, !mcsema_real_eip !85
  store i1 %539, i1* %CF, !mcsema_real_eip !85
  %540 = zext i32 %520 to i64, !mcsema_real_eip !85
  store i64 %540, i64* %XAX, !mcsema_real_eip !85
  %RBP_val.112 = load i64, i64* %XBP, !mcsema_real_eip !86
  %541 = add i64 %RBP_val.112, -20, !mcsema_real_eip !86
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !86
  %EAX.113 = bitcast i64* %XAX to i32*, !mcsema_real_eip !86
  %EAX_val.114 = load i32, i32* %EAX.113, !mcsema_real_eip !86
  %543 = ptrtoint i64* %542 to i64, !mcsema_real_eip !86
  %544 = inttoptr i64 %543 to i32*, !mcsema_real_eip !86
  store i32 %EAX_val.114, i32* %544, !mcsema_real_eip !86
  br label %block_0x16e, !mcsema_real_eip !87

block_0x165:                                      ; preds = %block_0x14a, %block_0x11a
  %RBP_val.115 = load i64, i64* %XBP, !mcsema_real_eip !88
  %545 = add i64 %RBP_val.115, -20, !mcsema_real_eip !88
  %546 = inttoptr i64 %545 to i64*, !mcsema_real_eip !88
  %547 = ptrtoint i64* %546 to i64, !mcsema_real_eip !88
  %548 = inttoptr i64 %547 to i32*, !mcsema_real_eip !88
  %549 = load i32, i32* %548, !mcsema_real_eip !88
  %550 = zext i32 %549 to i64, !mcsema_real_eip !88
  store i64 %550, i64* %XAX, !mcsema_real_eip !88
  %EAX.116 = bitcast i64* %XAX to i32*, !mcsema_real_eip !89
  %EAX_val.117 = load i32, i32* %EAX.116, !mcsema_real_eip !89
  %551 = add i32 5, %EAX_val.117, !mcsema_real_eip !89
  %552 = xor i32 %551, %EAX_val.117, !mcsema_real_eip !89
  %553 = xor i32 %552, 5, !mcsema_real_eip !89
  %554 = and i32 %553, 16, !mcsema_real_eip !89
  %555 = icmp ne i32 %554, 0, !mcsema_real_eip !89
  store i1 %555, i1* %AF, !mcsema_real_eip !89
  %556 = lshr i32 %551, 31, !mcsema_real_eip !89
  %557 = trunc i32 %556 to i1, !mcsema_real_eip !89
  store i1 %557, i1* %SF, !mcsema_real_eip !89
  %558 = icmp eq i32 %551, 0, !mcsema_real_eip !89
  store i1 %558, i1* %ZF, !mcsema_real_eip !89
  %559 = xor i32 %EAX_val.117, 5, !mcsema_real_eip !89
  %560 = xor i32 %559, -1, !mcsema_real_eip !89
  %561 = xor i32 %EAX_val.117, %551, !mcsema_real_eip !89
  %562 = and i32 %560, %561, !mcsema_real_eip !89
  %563 = lshr i32 %562, 31, !mcsema_real_eip !89
  %564 = and i32 %563, 1, !mcsema_real_eip !89
  %565 = trunc i32 %564 to i1, !mcsema_real_eip !89
  store i1 %565, i1* %OF, !mcsema_real_eip !89
  %566 = trunc i32 %551 to i8, !mcsema_real_eip !89
  %567 = call i8 @llvm.ctpop.i8(i8 %566), !mcsema_real_eip !89
  %568 = trunc i8 %567 to i1, !mcsema_real_eip !89
  %569 = xor i1 %568, true, !mcsema_real_eip !89
  store i1 %569, i1* %PF, !mcsema_real_eip !89
  %570 = icmp ult i32 %551, %EAX_val.117, !mcsema_real_eip !89
  store i1 %570, i1* %CF, !mcsema_real_eip !89
  %571 = zext i32 %551 to i64, !mcsema_real_eip !89
  store i64 %571, i64* %XAX, !mcsema_real_eip !89
  %RBP_val.118 = load i64, i64* %XBP, !mcsema_real_eip !90
  %572 = add i64 %RBP_val.118, -20, !mcsema_real_eip !90
  %573 = inttoptr i64 %572 to i64*, !mcsema_real_eip !90
  %EAX.119 = bitcast i64* %XAX to i32*, !mcsema_real_eip !90
  %EAX_val.120 = load i32, i32* %EAX.119, !mcsema_real_eip !90
  %574 = ptrtoint i64* %573 to i64, !mcsema_real_eip !90
  %575 = inttoptr i64 %574 to i32*, !mcsema_real_eip !90
  store i32 %EAX_val.120, i32* %575, !mcsema_real_eip !90
  br label %block_0x16e, !mcsema_real_eip !91

block_0x16e:                                      ; preds = %block_0x165, %block_0x157
  %RBP_val.121 = load i64, i64* %XBP, !mcsema_real_eip !91
  %576 = add i64 %RBP_val.121, -16, !mcsema_real_eip !91
  %577 = inttoptr i64 %576 to i64*, !mcsema_real_eip !91
  %578 = load i64, i64* %577, !mcsema_real_eip !91
  store i64 %578, i64* %XAX, !mcsema_real_eip !91
  %RAX_val.122 = load i64, i64* %XAX, !mcsema_real_eip !92
  %579 = add i64 %RAX_val.122, 6, !mcsema_real_eip !92
  %580 = inttoptr i64 %579 to i64*, !mcsema_real_eip !92
  %581 = ptrtoint i64* %580 to i64, !mcsema_real_eip !92
  %582 = inttoptr i64 %581 to i8*, !mcsema_real_eip !92
  %583 = load i8, i8* %582, !mcsema_real_eip !92
  %584 = zext i8 %583 to i32, !mcsema_real_eip !92
  %585 = zext i32 %584 to i64, !mcsema_real_eip !92
  store i64 %585, i64* %XDI, !mcsema_real_eip !92
  %RDI_val.123 = load i64, i64* %XDI, !mcsema_real_eip !93
  %RSP_val.124 = load i64, i64* %XSP, !mcsema_real_eip !93
  %586 = sub i64 %RSP_val.124, 8, !mcsema_real_eip !93
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !93
  store i64 -2415393069852865332, i64* %587, !mcsema_real_eip !93
  store i64 %586, i64* %XSP, !mcsema_real_eip !93
  %588 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.123), !mcsema_real_eip !93
  store i64 %588, i64* %XAX, !mcsema_real_eip !93
  %AL.125 = bitcast i64* %XAX to i8*, !mcsema_real_eip !94
  %AL_val.126 = load i8, i8* %AL.125, !mcsema_real_eip !94
  %CL.127 = bitcast i64* %XCX to i8*, !mcsema_real_eip !94
  store i8 %AL_val.126, i8* %CL.127, !mcsema_real_eip !94
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !95
  %589 = add i64 %RBP_val.128, -35, !mcsema_real_eip !95
  %590 = inttoptr i64 %589 to i64*, !mcsema_real_eip !95
  %CL.129 = bitcast i64* %XCX to i8*, !mcsema_real_eip !95
  %CL_val.130 = load i8, i8* %CL.129, !mcsema_real_eip !95
  %591 = ptrtoint i64* %590 to i64, !mcsema_real_eip !95
  %592 = inttoptr i64 %591 to i8*, !mcsema_real_eip !95
  store i8 %CL_val.130, i8* %592, !mcsema_real_eip !95
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !96
  %593 = add i64 %RBP_val.131, -16, !mcsema_real_eip !96
  %594 = inttoptr i64 %593 to i64*, !mcsema_real_eip !96
  %595 = load i64, i64* %594, !mcsema_real_eip !96
  store i64 %595, i64* %XDX, !mcsema_real_eip !96
  %RDX_val.132 = load i64, i64* %XDX, !mcsema_real_eip !97
  %596 = add i64 %RDX_val.132, 7, !mcsema_real_eip !97
  %597 = inttoptr i64 %596 to i64*, !mcsema_real_eip !97
  %598 = ptrtoint i64* %597 to i64, !mcsema_real_eip !97
  %599 = inttoptr i64 %598 to i8*, !mcsema_real_eip !97
  %600 = load i8, i8* %599, !mcsema_real_eip !97
  %601 = zext i8 %600 to i32, !mcsema_real_eip !97
  %602 = zext i32 %601 to i64, !mcsema_real_eip !97
  store i64 %602, i64* %XDI, !mcsema_real_eip !97
  %RDI_val.133 = load i64, i64* %XDI, !mcsema_real_eip !98
  %RSP_val.134 = load i64, i64* %XSP, !mcsema_real_eip !98
  %603 = sub i64 %RSP_val.134, 8, !mcsema_real_eip !98
  %604 = inttoptr i64 %603 to i64*, !mcsema_real_eip !98
  store i64 -2415393069852865332, i64* %604, !mcsema_real_eip !98
  store i64 %603, i64* %XSP, !mcsema_real_eip !98
  %605 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.133), !mcsema_real_eip !98
  store i64 %605, i64* %XAX, !mcsema_real_eip !98
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !99
  %606 = add i64 %RBP_val.135, -35, !mcsema_real_eip !99
  %607 = inttoptr i64 %606 to i64*, !mcsema_real_eip !99
  %608 = ptrtoint i64* %607 to i64, !mcsema_real_eip !99
  %609 = inttoptr i64 %608 to i8*, !mcsema_real_eip !99
  %610 = load i8, i8* %609, !mcsema_real_eip !99
  %611 = zext i8 %610 to i32, !mcsema_real_eip !99
  %612 = zext i32 %611 to i64, !mcsema_real_eip !99
  store i64 %612, i64* %XDI, !mcsema_real_eip !99
  %EDI.136 = bitcast i64* %XDI to i32*, !mcsema_real_eip !100
  %EDI_val.137 = load i32, i32* %EDI.136, !mcsema_real_eip !100
  %EAX.138 = bitcast i64* %XAX to i32*, !mcsema_real_eip !100
  %EAX_val.139 = load i32, i32* %EAX.138, !mcsema_real_eip !100
  %613 = or i32 %EDI_val.137, %EAX_val.139, !mcsema_real_eip !100
  store i1 undef, i1* %AF, !mcsema_real_eip !100
  store i1 false, i1* %OF, !mcsema_real_eip !100
  store i1 false, i1* %CF, !mcsema_real_eip !100
  %614 = lshr i32 %613, 31, !mcsema_real_eip !100
  %615 = trunc i32 %614 to i1, !mcsema_real_eip !100
  store i1 %615, i1* %SF, !mcsema_real_eip !100
  %616 = icmp eq i32 %613, 0, !mcsema_real_eip !100
  store i1 %616, i1* %ZF, !mcsema_real_eip !100
  %617 = trunc i32 %613 to i8, !mcsema_real_eip !100
  %618 = call i8 @llvm.ctpop.i8(i8 %617), !mcsema_real_eip !100
  %619 = trunc i8 %618 to i1, !mcsema_real_eip !100
  %620 = xor i1 %619, true, !mcsema_real_eip !100
  store i1 %620, i1* %PF, !mcsema_real_eip !100
  %621 = zext i32 %613 to i64, !mcsema_real_eip !100
  store i64 %621, i64* %XDI, !mcsema_real_eip !100
  %DIL.140 = bitcast i64* %XDI to i8*, !mcsema_real_eip !101
  %DIL_val.141 = load i8, i8* %DIL.140, !mcsema_real_eip !101
  %CL.142 = bitcast i64* %XCX to i8*, !mcsema_real_eip !101
  store i8 %DIL_val.141, i8* %CL.142, !mcsema_real_eip !101
  %RBP_val.143 = load i64, i64* %XBP, !mcsema_real_eip !102
  %622 = add i64 %RBP_val.143, -35, !mcsema_real_eip !102
  %623 = inttoptr i64 %622 to i64*, !mcsema_real_eip !102
  %CL.144 = bitcast i64* %XCX to i8*, !mcsema_real_eip !102
  %CL_val.145 = load i8, i8* %CL.144, !mcsema_real_eip !102
  %624 = ptrtoint i64* %623 to i64, !mcsema_real_eip !102
  %625 = inttoptr i64 %624 to i8*, !mcsema_real_eip !102
  store i8 %CL_val.145, i8* %625, !mcsema_real_eip !102
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !103
  %626 = add i64 %RBP_val.146, -35, !mcsema_real_eip !103
  %627 = inttoptr i64 %626 to i64*, !mcsema_real_eip !103
  %628 = ptrtoint i64* %627 to i64, !mcsema_real_eip !103
  %629 = inttoptr i64 %628 to i8*, !mcsema_real_eip !103
  %630 = load i8, i8* %629, !mcsema_real_eip !103
  %631 = zext i8 %630 to i32, !mcsema_real_eip !103
  %632 = zext i32 %631 to i64, !mcsema_real_eip !103
  store i64 %632, i64* %XAX, !mcsema_real_eip !103
  %EAX.147 = bitcast i64* %XAX to i32*, !mcsema_real_eip !104
  %EAX_val.148 = load i32, i32* %EAX.147, !mcsema_real_eip !104
  %633 = xor i32 %EAX_val.148, -1, !mcsema_real_eip !104
  store i1 false, i1* %CF, !mcsema_real_eip !104
  store i1 false, i1* %OF, !mcsema_real_eip !104
  %634 = lshr i32 %633, 31, !mcsema_real_eip !104
  %635 = trunc i32 %634 to i1, !mcsema_real_eip !104
  store i1 %635, i1* %SF, !mcsema_real_eip !104
  %636 = icmp eq i32 %633, 0, !mcsema_real_eip !104
  store i1 %636, i1* %ZF, !mcsema_real_eip !104
  %637 = trunc i32 %633 to i8, !mcsema_real_eip !104
  %638 = call i8 @llvm.ctpop.i8(i8 %637), !mcsema_real_eip !104
  %639 = trunc i8 %638 to i1, !mcsema_real_eip !104
  %640 = xor i1 %639, true, !mcsema_real_eip !104
  store i1 %640, i1* %PF, !mcsema_real_eip !104
  store i1 undef, i1* %AF, !mcsema_real_eip !104
  %641 = zext i32 %633 to i64, !mcsema_real_eip !104
  store i64 %641, i64* %XAX, !mcsema_real_eip !104
  %EAX.149 = bitcast i64* %XAX to i32*, !mcsema_real_eip !105
  %EAX_val.150 = load i32, i32* %EAX.149, !mcsema_real_eip !105
  %642 = sub i32 %EAX_val.150, 70, !mcsema_real_eip !105
  %643 = xor i32 %642, %EAX_val.150, !mcsema_real_eip !105
  %644 = xor i32 %643, 70, !mcsema_real_eip !105
  %645 = and i32 %644, 16, !mcsema_real_eip !105
  %646 = icmp ne i32 %645, 0, !mcsema_real_eip !105
  store i1 %646, i1* %AF, !mcsema_real_eip !105
  %647 = trunc i32 %642 to i8, !mcsema_real_eip !105
  %648 = call i8 @llvm.ctpop.i8(i8 %647), !mcsema_real_eip !105
  %649 = trunc i8 %648 to i1, !mcsema_real_eip !105
  %650 = xor i1 %649, true, !mcsema_real_eip !105
  store i1 %650, i1* %PF, !mcsema_real_eip !105
  %651 = icmp eq i32 %642, 0, !mcsema_real_eip !105
  store i1 %651, i1* %ZF, !mcsema_real_eip !105
  %652 = lshr i32 %642, 31, !mcsema_real_eip !105
  %653 = trunc i32 %652 to i1, !mcsema_real_eip !105
  store i1 %653, i1* %SF, !mcsema_real_eip !105
  %654 = icmp ult i32 %EAX_val.150, 70, !mcsema_real_eip !105
  store i1 %654, i1* %CF, !mcsema_real_eip !105
  %655 = xor i32 %EAX_val.150, 70, !mcsema_real_eip !105
  %656 = xor i32 %EAX_val.150, %642, !mcsema_real_eip !105
  %657 = and i32 %655, %656, !mcsema_real_eip !105
  %658 = lshr i32 %657, 31, !mcsema_real_eip !105
  %659 = trunc i32 %658 to i1, !mcsema_real_eip !105
  store i1 %659, i1* %OF, !mcsema_real_eip !105
  %660 = load i1, i1* %ZF, !mcsema_real_eip !106
  %661 = icmp eq i1 %660, false, !mcsema_real_eip !106
  br i1 %661, label %block_0x1b7, label %block_0x1a9, !mcsema_real_eip !106

block_0x1a9:                                      ; preds = %block_0x16e
  %RBP_val.151 = load i64, i64* %XBP, !mcsema_real_eip !107
  %662 = add i64 %RBP_val.151, -20, !mcsema_real_eip !107
  %663 = inttoptr i64 %662 to i64*, !mcsema_real_eip !107
  %664 = ptrtoint i64* %663 to i64, !mcsema_real_eip !107
  %665 = inttoptr i64 %664 to i32*, !mcsema_real_eip !107
  %666 = load i32, i32* %665, !mcsema_real_eip !107
  %667 = zext i32 %666 to i64, !mcsema_real_eip !107
  store i64 %667, i64* %XAX, !mcsema_real_eip !107
  %EAX.152 = bitcast i64* %XAX to i32*, !mcsema_real_eip !108
  %EAX_val.153 = load i32, i32* %EAX.152, !mcsema_real_eip !108
  %668 = sub i32 %EAX_val.153, 1, !mcsema_real_eip !108
  %669 = xor i32 %668, %EAX_val.153, !mcsema_real_eip !108
  %670 = xor i32 %669, 1, !mcsema_real_eip !108
  %671 = and i32 %670, 16, !mcsema_real_eip !108
  %672 = icmp ne i32 %671, 0, !mcsema_real_eip !108
  store i1 %672, i1* %AF, !mcsema_real_eip !108
  %673 = trunc i32 %668 to i8, !mcsema_real_eip !108
  %674 = call i8 @llvm.ctpop.i8(i8 %673), !mcsema_real_eip !108
  %675 = trunc i8 %674 to i1, !mcsema_real_eip !108
  %676 = xor i1 %675, true, !mcsema_real_eip !108
  store i1 %676, i1* %PF, !mcsema_real_eip !108
  %677 = icmp eq i32 %668, 0, !mcsema_real_eip !108
  store i1 %677, i1* %ZF, !mcsema_real_eip !108
  %678 = lshr i32 %668, 31, !mcsema_real_eip !108
  %679 = trunc i32 %678 to i1, !mcsema_real_eip !108
  store i1 %679, i1* %SF, !mcsema_real_eip !108
  %680 = icmp ult i32 %EAX_val.153, 1, !mcsema_real_eip !108
  store i1 %680, i1* %CF, !mcsema_real_eip !108
  %681 = xor i32 %EAX_val.153, 1, !mcsema_real_eip !108
  %682 = xor i32 %EAX_val.153, %668, !mcsema_real_eip !108
  %683 = and i32 %681, %682, !mcsema_real_eip !108
  %684 = lshr i32 %683, 31, !mcsema_real_eip !108
  %685 = trunc i32 %684 to i1, !mcsema_real_eip !108
  store i1 %685, i1* %OF, !mcsema_real_eip !108
  %686 = zext i32 %668 to i64, !mcsema_real_eip !108
  store i64 %686, i64* %XAX, !mcsema_real_eip !108
  %RBP_val.154 = load i64, i64* %XBP, !mcsema_real_eip !109
  %687 = add i64 %RBP_val.154, -20, !mcsema_real_eip !109
  %688 = inttoptr i64 %687 to i64*, !mcsema_real_eip !109
  %EAX.155 = bitcast i64* %XAX to i32*, !mcsema_real_eip !109
  %EAX_val.156 = load i32, i32* %EAX.155, !mcsema_real_eip !109
  %689 = ptrtoint i64* %688 to i64, !mcsema_real_eip !109
  %690 = inttoptr i64 %689 to i32*, !mcsema_real_eip !109
  store i32 %EAX_val.156, i32* %690, !mcsema_real_eip !109
  br label %block_0x1c2, !mcsema_real_eip !110

block_0x1b7:                                      ; preds = %block_0x16e
  %RBP_val.157 = load i64, i64* %XBP, !mcsema_real_eip !111
  %691 = add i64 %RBP_val.157, -20, !mcsema_real_eip !111
  %692 = inttoptr i64 %691 to i64*, !mcsema_real_eip !111
  %693 = ptrtoint i64* %692 to i64, !mcsema_real_eip !111
  %694 = inttoptr i64 %693 to i32*, !mcsema_real_eip !111
  %695 = load i32, i32* %694, !mcsema_real_eip !111
  %696 = zext i32 %695 to i64, !mcsema_real_eip !111
  store i64 %696, i64* %XCX, !mcsema_real_eip !111
  %RBP_val.158 = load i64, i64* %XBP, !mcsema_real_eip !112
  %697 = add i64 %RBP_val.158, -20, !mcsema_real_eip !112
  %698 = inttoptr i64 %697 to i64*, !mcsema_real_eip !112
  %699 = ptrtoint i64* %698 to i64, !mcsema_real_eip !112
  %700 = inttoptr i64 %699 to i32*, !mcsema_real_eip !112
  %701 = load i32, i32* %700, !mcsema_real_eip !112
  %702 = zext i32 %701 to i64, !mcsema_real_eip !112
  store i64 %702, i64* %XAX, !mcsema_real_eip !112
  %EAX.159 = bitcast i64* %XAX to i32*, !mcsema_real_eip !113
  %EAX_val.160 = load i32, i32* %EAX.159, !mcsema_real_eip !113
  %CL.161 = bitcast i64* %XCX to i8*, !mcsema_real_eip !113
  %CL_val.162 = load i8, i8* %CL.161, !mcsema_real_eip !113
  %CL_val.162.zext = zext i8 %CL_val.162 to i32, !mcsema_real_eip !113
  %703 = and i32 %CL_val.162.zext, 31, !mcsema_real_eip !113
  %704 = sub i32 %CL_val.162.zext, 1, !mcsema_real_eip !113
  %705 = icmp ne i32 %703, 0, !mcsema_real_eip !113
  %706 = select i1 %705, i32 %704, i32 0, !mcsema_real_eip !113
  %707 = select i1 %705, i32 1, i32 0, !mcsema_real_eip !113
  %708 = shl i32 %EAX_val.160, %706, !mcsema_real_eip !113
  %709 = and i32 %708, -2147483648, !mcsema_real_eip !113
  %710 = icmp ne i32 %709, 0, !mcsema_real_eip !113
  %711 = load i1, i1* %CF, !mcsema_real_eip !113
  %712 = select i1 %705, i1 %710, i1 %711, !mcsema_real_eip !113
  %713 = shl i32 %708, %707, !mcsema_real_eip !113
  %714 = icmp eq i32 %703, 1, !mcsema_real_eip !113
  %715 = load i1, i1* %OF, !mcsema_real_eip !113
  %716 = and i32 %713, -2147483648, !mcsema_real_eip !113
  %717 = icmp ne i32 %716, 0, !mcsema_real_eip !113
  %718 = xor i1 %717, %712, !mcsema_real_eip !113
  %719 = select i1 %714, i1 %718, i1 %715, !mcsema_real_eip !113
  store i1 %719, i1* %OF, !mcsema_real_eip !113
  store i1 %712, i1* %CF, !mcsema_real_eip !113
  %720 = load i1, i1* %ZF, !mcsema_real_eip !113
  %721 = icmp eq i32 %713, 0, !mcsema_real_eip !113
  %722 = select i1 %705, i1 %721, i1 %720, !mcsema_real_eip !113
  store i1 %722, i1* %ZF, !mcsema_real_eip !113
  %723 = load i1, i1* %SF, !mcsema_real_eip !113
  %724 = icmp slt i32 %713, 0, !mcsema_real_eip !113
  %725 = select i1 %705, i1 %724, i1 %723, !mcsema_real_eip !113
  store i1 %725, i1* %SF, !mcsema_real_eip !113
  %726 = load i1, i1* %PF, !mcsema_real_eip !113
  %727 = trunc i32 %713 to i8, !mcsema_real_eip !113
  %728 = call i8 @llvm.ctpop.i8(i8 %727), !mcsema_real_eip !113
  %729 = trunc i8 %728 to i1, !mcsema_real_eip !113
  %730 = xor i1 %729, true, !mcsema_real_eip !113
  store i1 %730, i1* %PF, !mcsema_real_eip !113
  %731 = load i1, i1* %PF, !mcsema_real_eip !113
  %732 = select i1 %705, i1 %731, i1 %726, !mcsema_real_eip !113
  store i1 %732, i1* %PF, !mcsema_real_eip !113
  %733 = zext i32 %713 to i64, !mcsema_real_eip !113
  store i64 %733, i64* %XAX, !mcsema_real_eip !113
  %RBP_val.163 = load i64, i64* %XBP, !mcsema_real_eip !114
  %734 = add i64 %RBP_val.163, -20, !mcsema_real_eip !114
  %735 = inttoptr i64 %734 to i64*, !mcsema_real_eip !114
  %EAX.164 = bitcast i64* %XAX to i32*, !mcsema_real_eip !114
  %EAX_val.165 = load i32, i32* %EAX.164, !mcsema_real_eip !114
  %736 = ptrtoint i64* %735 to i64, !mcsema_real_eip !114
  %737 = inttoptr i64 %736 to i32*, !mcsema_real_eip !114
  store i32 %EAX_val.165, i32* %737, !mcsema_real_eip !114
  br label %block_0x1c2, !mcsema_real_eip !115

block_0x1c2:                                      ; preds = %block_0x1b7, %block_0x1a9
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !115
  %738 = add i64 %RBP_val.166, -20, !mcsema_real_eip !115
  %739 = inttoptr i64 %738 to i64*, !mcsema_real_eip !115
  %740 = ptrtoint i64* %739 to i64, !mcsema_real_eip !115
  %741 = inttoptr i64 %740 to i32*, !mcsema_real_eip !115
  %742 = load i32, i32* %741, !mcsema_real_eip !115
  %743 = sub i32 %742, 0, !mcsema_real_eip !115
  %744 = xor i32 %743, %742, !mcsema_real_eip !115
  %745 = xor i32 %744, 0, !mcsema_real_eip !115
  %746 = and i32 %745, 16, !mcsema_real_eip !115
  %747 = icmp ne i32 %746, 0, !mcsema_real_eip !115
  store i1 %747, i1* %AF, !mcsema_real_eip !115
  %748 = trunc i32 %743 to i8, !mcsema_real_eip !115
  %749 = call i8 @llvm.ctpop.i8(i8 %748), !mcsema_real_eip !115
  %750 = trunc i8 %749 to i1, !mcsema_real_eip !115
  %751 = xor i1 %750, true, !mcsema_real_eip !115
  store i1 %751, i1* %PF, !mcsema_real_eip !115
  %752 = icmp eq i32 %743, 0, !mcsema_real_eip !115
  store i1 %752, i1* %ZF, !mcsema_real_eip !115
  %753 = lshr i32 %743, 31, !mcsema_real_eip !115
  %754 = trunc i32 %753 to i1, !mcsema_real_eip !115
  store i1 %754, i1* %SF, !mcsema_real_eip !115
  %755 = icmp ult i32 %742, 0, !mcsema_real_eip !115
  store i1 %755, i1* %CF, !mcsema_real_eip !115
  %756 = xor i32 %742, 0, !mcsema_real_eip !115
  %757 = xor i32 %742, %743, !mcsema_real_eip !115
  %758 = and i32 %756, %757, !mcsema_real_eip !115
  %759 = lshr i32 %758, 31, !mcsema_real_eip !115
  %760 = trunc i32 %759 to i1, !mcsema_real_eip !115
  store i1 %760, i1* %OF, !mcsema_real_eip !115
  %761 = load i1, i1* %ZF, !mcsema_real_eip !116
  %762 = icmp eq i1 %761, true, !mcsema_real_eip !116
  br i1 %762, label %block_0x1d8, label %block_0x1cc, !mcsema_real_eip !116

block_0x1cc:                                      ; preds = %block_0x1c2
  %RBP_val.167 = load i64, i64* %XBP, !mcsema_real_eip !117
  %763 = add i64 %RBP_val.167, -4, !mcsema_real_eip !117
  %764 = inttoptr i64 %763 to i64*, !mcsema_real_eip !117
  %765 = ptrtoint i64* %764 to i64, !mcsema_real_eip !117
  %766 = inttoptr i64 %765 to i32*, !mcsema_real_eip !117
  store i32 -7, i32* %766, !mcsema_real_eip !117
  br label %block_0x417, !mcsema_real_eip !118

block_0x1d8:                                      ; preds = %block_0x1c2
  %EDI.168 = bitcast i64* %XDI to i32*, !mcsema_real_eip !119
  %EDI_val.169 = load i32, i32* %EDI.168, !mcsema_real_eip !119
  %EDI.170 = bitcast i64* %XDI to i32*, !mcsema_real_eip !119
  %EDI_val.171 = load i32, i32* %EDI.170, !mcsema_real_eip !119
  %767 = xor i32 %EDI_val.169, %EDI_val.171, !mcsema_real_eip !119
  store i1 false, i1* %CF, !mcsema_real_eip !119
  store i1 false, i1* %OF, !mcsema_real_eip !119
  %768 = lshr i32 %767, 31, !mcsema_real_eip !119
  %769 = trunc i32 %768 to i1, !mcsema_real_eip !119
  store i1 %769, i1* %SF, !mcsema_real_eip !119
  %770 = icmp eq i32 %767, 0, !mcsema_real_eip !119
  store i1 %770, i1* %ZF, !mcsema_real_eip !119
  %771 = trunc i32 %767 to i8, !mcsema_real_eip !119
  %772 = call i8 @llvm.ctpop.i8(i8 %771), !mcsema_real_eip !119
  %773 = trunc i8 %772 to i1, !mcsema_real_eip !119
  %774 = xor i1 %773, true, !mcsema_real_eip !119
  store i1 %774, i1* %PF, !mcsema_real_eip !119
  store i1 undef, i1* %AF, !mcsema_real_eip !119
  %775 = zext i32 %767 to i64, !mcsema_real_eip !119
  store i64 %775, i64* %XDI, !mcsema_real_eip !119
  %776 = zext i32 4 to i64, !mcsema_real_eip !120
  store i64 %776, i64* %XDX, !mcsema_real_eip !120
  %RBP_val.172 = load i64, i64* %XBP, !mcsema_real_eip !121
  %777 = add i64 %RBP_val.172, -16, !mcsema_real_eip !121
  %778 = inttoptr i64 %777 to i64*, !mcsema_real_eip !121
  %779 = load i64, i64* %778, !mcsema_real_eip !121
  store i64 %779, i64* %XAX, !mcsema_real_eip !121
  %RAX_val.173 = load i64, i64* %XAX, !mcsema_real_eip !122
  %780 = add i64 8, %RAX_val.173, !mcsema_real_eip !122
  %781 = xor i64 %780, %RAX_val.173, !mcsema_real_eip !122
  %782 = xor i64 %781, 8, !mcsema_real_eip !122
  %783 = and i64 %782, 16, !mcsema_real_eip !122
  %784 = icmp ne i64 %783, 0, !mcsema_real_eip !122
  store i1 %784, i1* %AF, !mcsema_real_eip !122
  %785 = lshr i64 %780, 63, !mcsema_real_eip !122
  %786 = trunc i64 %785 to i1, !mcsema_real_eip !122
  store i1 %786, i1* %SF, !mcsema_real_eip !122
  %787 = icmp eq i64 %780, 0, !mcsema_real_eip !122
  store i1 %787, i1* %ZF, !mcsema_real_eip !122
  %788 = xor i64 %RAX_val.173, 8, !mcsema_real_eip !122
  %789 = xor i64 %788, -1, !mcsema_real_eip !122
  %790 = xor i64 %RAX_val.173, %780, !mcsema_real_eip !122
  %791 = and i64 %789, %790, !mcsema_real_eip !122
  %792 = lshr i64 %791, 63, !mcsema_real_eip !122
  %793 = and i64 %792, 1, !mcsema_real_eip !122
  %794 = trunc i64 %793 to i1, !mcsema_real_eip !122
  store i1 %794, i1* %OF, !mcsema_real_eip !122
  %795 = trunc i64 %780 to i8, !mcsema_real_eip !122
  %796 = call i8 @llvm.ctpop.i8(i8 %795), !mcsema_real_eip !122
  %797 = trunc i8 %796 to i1, !mcsema_real_eip !122
  %798 = xor i1 %797, true, !mcsema_real_eip !122
  store i1 %798, i1* %PF, !mcsema_real_eip !122
  %799 = icmp ult i64 %780, %RAX_val.173, !mcsema_real_eip !122
  store i1 %799, i1* %CF, !mcsema_real_eip !122
  store i64 %780, i64* %XAX, !mcsema_real_eip !122
  %RAX_val.174 = load i64, i64* %XAX, !mcsema_real_eip !123
  store i64 %RAX_val.174, i64* %XSI, !mcsema_real_eip !123
  %RDI_val.175 = load i64, i64* %XDI, !mcsema_real_eip !124
  %RSI_val.176 = load i64, i64* %XSI, !mcsema_real_eip !124
  %RDX_val.177 = load i64, i64* %XDX, !mcsema_real_eip !124
  %RSP_val.178 = load i64, i64* %XSP, !mcsema_real_eip !124
  %800 = sub i64 %RSP_val.178, 8, !mcsema_real_eip !124
  %801 = inttoptr i64 %800 to i64*, !mcsema_real_eip !124
  store i64 -2415393069852865332, i64* %801, !mcsema_real_eip !124
  store i64 %800, i64* %XSP, !mcsema_real_eip !124
  %802 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.175, i64 %RSI_val.176, i64 %RDX_val.177), !mcsema_real_eip !124
  store i64 %802, i64* %XAX, !mcsema_real_eip !124
  %AX.179 = bitcast i64* %XAX to i16*, !mcsema_real_eip !125
  %AX_val.180 = load i16, i16* %AX.179, !mcsema_real_eip !125
  %CX.181 = bitcast i64* %XCX to i16*, !mcsema_real_eip !125
  store i16 %AX_val.180, i16* %CX.181, !mcsema_real_eip !125
  %RBP_val.182 = load i64, i64* %XBP, !mcsema_real_eip !126
  %803 = add i64 %RBP_val.182, -38, !mcsema_real_eip !126
  %804 = inttoptr i64 %803 to i64*, !mcsema_real_eip !126
  %CX.183 = bitcast i64* %XCX to i16*, !mcsema_real_eip !126
  %CX_val.184 = load i16, i16* %CX.183, !mcsema_real_eip !126
  %805 = ptrtoint i64* %804 to i64, !mcsema_real_eip !126
  %806 = inttoptr i64 %805 to i16*, !mcsema_real_eip !126
  store i16 %CX_val.184, i16* %806, !mcsema_real_eip !126
  %RBP_val.185 = load i64, i64* %XBP, !mcsema_real_eip !127
  %807 = add i64 %RBP_val.185, -38, !mcsema_real_eip !127
  %808 = inttoptr i64 %807 to i64*, !mcsema_real_eip !127
  %809 = ptrtoint i64* %808 to i64, !mcsema_real_eip !127
  %810 = inttoptr i64 %809 to i16*, !mcsema_real_eip !127
  %811 = load i16, i16* %810, !mcsema_real_eip !127
  %812 = zext i16 %811 to i32, !mcsema_real_eip !127
  %813 = zext i32 %812 to i64, !mcsema_real_eip !127
  store i64 %813, i64* %XAX, !mcsema_real_eip !127
  %EAX.186 = bitcast i64* %XAX to i32*, !mcsema_real_eip !128
  %EAX_val.187 = load i32, i32* %EAX.186, !mcsema_real_eip !128
  %814 = or i32 %EAX_val.187, 21845, !mcsema_real_eip !128
  store i1 undef, i1* %AF, !mcsema_real_eip !128
  store i1 false, i1* %OF, !mcsema_real_eip !128
  store i1 false, i1* %CF, !mcsema_real_eip !128
  %815 = lshr i32 %814, 31, !mcsema_real_eip !128
  %816 = trunc i32 %815 to i1, !mcsema_real_eip !128
  store i1 %816, i1* %SF, !mcsema_real_eip !128
  %817 = icmp eq i32 %814, 0, !mcsema_real_eip !128
  store i1 %817, i1* %ZF, !mcsema_real_eip !128
  %818 = trunc i32 %814 to i8, !mcsema_real_eip !128
  %819 = call i8 @llvm.ctpop.i8(i8 %818), !mcsema_real_eip !128
  %820 = trunc i8 %819 to i1, !mcsema_real_eip !128
  %821 = xor i1 %820, true, !mcsema_real_eip !128
  store i1 %821, i1* %PF, !mcsema_real_eip !128
  %822 = zext i32 %814 to i64, !mcsema_real_eip !128
  store i64 %822, i64* %XAX, !mcsema_real_eip !128
  %EAX.188 = bitcast i64* %XAX to i32*, !mcsema_real_eip !129
  %EAX_val.189 = load i32, i32* %EAX.188, !mcsema_real_eip !129
  %823 = sub i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  %824 = xor i32 %823, %EAX_val.189, !mcsema_real_eip !129
  %825 = xor i32 %824, 56663, !mcsema_real_eip !129
  %826 = and i32 %825, 16, !mcsema_real_eip !129
  %827 = icmp ne i32 %826, 0, !mcsema_real_eip !129
  store i1 %827, i1* %AF, !mcsema_real_eip !129
  %828 = trunc i32 %823 to i8, !mcsema_real_eip !129
  %829 = call i8 @llvm.ctpop.i8(i8 %828), !mcsema_real_eip !129
  %830 = trunc i8 %829 to i1, !mcsema_real_eip !129
  %831 = xor i1 %830, true, !mcsema_real_eip !129
  store i1 %831, i1* %PF, !mcsema_real_eip !129
  %832 = icmp eq i32 %823, 0, !mcsema_real_eip !129
  store i1 %832, i1* %ZF, !mcsema_real_eip !129
  %833 = lshr i32 %823, 31, !mcsema_real_eip !129
  %834 = trunc i32 %833 to i1, !mcsema_real_eip !129
  store i1 %834, i1* %SF, !mcsema_real_eip !129
  %835 = icmp ult i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  store i1 %835, i1* %CF, !mcsema_real_eip !129
  %836 = xor i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  %837 = xor i32 %EAX_val.189, %823, !mcsema_real_eip !129
  %838 = and i32 %836, %837, !mcsema_real_eip !129
  %839 = lshr i32 %838, 31, !mcsema_real_eip !129
  %840 = trunc i32 %839 to i1, !mcsema_real_eip !129
  store i1 %840, i1* %OF, !mcsema_real_eip !129
  %841 = load i1, i1* %ZF, !mcsema_real_eip !130
  %842 = icmp eq i1 %841, false, !mcsema_real_eip !130
  br i1 %842, label %block_0x22a, label %block_0x20a, !mcsema_real_eip !130

block_0x20a:                                      ; preds = %block_0x1d8
  %RBP_val.190 = load i64, i64* %XBP, !mcsema_real_eip !131
  %843 = add i64 %RBP_val.190, -38, !mcsema_real_eip !131
  %844 = inttoptr i64 %843 to i64*, !mcsema_real_eip !131
  %845 = ptrtoint i64* %844 to i64, !mcsema_real_eip !131
  %846 = inttoptr i64 %845 to i16*, !mcsema_real_eip !131
  %847 = load i16, i16* %846, !mcsema_real_eip !131
  %848 = zext i16 %847 to i32, !mcsema_real_eip !131
  %849 = zext i32 %848 to i64, !mcsema_real_eip !131
  store i64 %849, i64* %XAX, !mcsema_real_eip !131
  %EAX.191 = bitcast i64* %XAX to i32*, !mcsema_real_eip !132
  %EAX_val.192 = load i32, i32* %EAX.191, !mcsema_real_eip !132
  %850 = or i32 %EAX_val.192, 43690, !mcsema_real_eip !132
  store i1 undef, i1* %AF, !mcsema_real_eip !132
  store i1 false, i1* %OF, !mcsema_real_eip !132
  store i1 false, i1* %CF, !mcsema_real_eip !132
  %851 = lshr i32 %850, 31, !mcsema_real_eip !132
  %852 = trunc i32 %851 to i1, !mcsema_real_eip !132
  store i1 %852, i1* %SF, !mcsema_real_eip !132
  %853 = icmp eq i32 %850, 0, !mcsema_real_eip !132
  store i1 %853, i1* %ZF, !mcsema_real_eip !132
  %854 = trunc i32 %850 to i8, !mcsema_real_eip !132
  %855 = call i8 @llvm.ctpop.i8(i8 %854), !mcsema_real_eip !132
  %856 = trunc i8 %855 to i1, !mcsema_real_eip !132
  %857 = xor i1 %856, true, !mcsema_real_eip !132
  store i1 %857, i1* %PF, !mcsema_real_eip !132
  %858 = zext i32 %850 to i64, !mcsema_real_eip !132
  store i64 %858, i64* %XAX, !mcsema_real_eip !132
  %EAX.193 = bitcast i64* %XAX to i32*, !mcsema_real_eip !133
  %EAX_val.194 = load i32, i32* %EAX.193, !mcsema_real_eip !133
  %859 = sub i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  %860 = xor i32 %859, %EAX_val.194, !mcsema_real_eip !133
  %861 = xor i32 %860, 65211, !mcsema_real_eip !133
  %862 = and i32 %861, 16, !mcsema_real_eip !133
  %863 = icmp ne i32 %862, 0, !mcsema_real_eip !133
  store i1 %863, i1* %AF, !mcsema_real_eip !133
  %864 = trunc i32 %859 to i8, !mcsema_real_eip !133
  %865 = call i8 @llvm.ctpop.i8(i8 %864), !mcsema_real_eip !133
  %866 = trunc i8 %865 to i1, !mcsema_real_eip !133
  %867 = xor i1 %866, true, !mcsema_real_eip !133
  store i1 %867, i1* %PF, !mcsema_real_eip !133
  %868 = icmp eq i32 %859, 0, !mcsema_real_eip !133
  store i1 %868, i1* %ZF, !mcsema_real_eip !133
  %869 = lshr i32 %859, 31, !mcsema_real_eip !133
  %870 = trunc i32 %869 to i1, !mcsema_real_eip !133
  store i1 %870, i1* %SF, !mcsema_real_eip !133
  %871 = icmp ult i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  store i1 %871, i1* %CF, !mcsema_real_eip !133
  %872 = xor i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  %873 = xor i32 %EAX_val.194, %859, !mcsema_real_eip !133
  %874 = and i32 %872, %873, !mcsema_real_eip !133
  %875 = lshr i32 %874, 31, !mcsema_real_eip !133
  %876 = trunc i32 %875 to i1, !mcsema_real_eip !133
  store i1 %876, i1* %OF, !mcsema_real_eip !133
  %877 = load i1, i1* %ZF, !mcsema_real_eip !134
  %878 = icmp eq i1 %877, false, !mcsema_real_eip !134
  br i1 %878, label %block_0x22a, label %block_0x21e, !mcsema_real_eip !134

block_0x21e:                                      ; preds = %block_0x20a
  %RBP_val.195 = load i64, i64* %XBP, !mcsema_real_eip !135
  %879 = add i64 %RBP_val.195, -20, !mcsema_real_eip !135
  %880 = inttoptr i64 %879 to i64*, !mcsema_real_eip !135
  %881 = ptrtoint i64* %880 to i64, !mcsema_real_eip !135
  %882 = inttoptr i64 %881 to i32*, !mcsema_real_eip !135
  store i32 43690, i32* %882, !mcsema_real_eip !135
  br label %block_0x231, !mcsema_real_eip !136

block_0x22a:                                      ; preds = %block_0x20a, %block_0x1d8
  %RBP_val.196 = load i64, i64* %XBP, !mcsema_real_eip !137
  %883 = add i64 %RBP_val.196, -20, !mcsema_real_eip !137
  %884 = inttoptr i64 %883 to i64*, !mcsema_real_eip !137
  %885 = ptrtoint i64* %884 to i64, !mcsema_real_eip !137
  %886 = inttoptr i64 %885 to i32*, !mcsema_real_eip !137
  store i32 48059, i32* %886, !mcsema_real_eip !137
  br label %block_0x231, !mcsema_real_eip !138

block_0x231:                                      ; preds = %block_0x22a, %block_0x21e
  %EDI.197 = bitcast i64* %XDI to i32*, !mcsema_real_eip !138
  %EDI_val.198 = load i32, i32* %EDI.197, !mcsema_real_eip !138
  %EDI.199 = bitcast i64* %XDI to i32*, !mcsema_real_eip !138
  %EDI_val.200 = load i32, i32* %EDI.199, !mcsema_real_eip !138
  %887 = xor i32 %EDI_val.198, %EDI_val.200, !mcsema_real_eip !138
  store i1 false, i1* %CF, !mcsema_real_eip !138
  store i1 false, i1* %OF, !mcsema_real_eip !138
  %888 = lshr i32 %887, 31, !mcsema_real_eip !138
  %889 = trunc i32 %888 to i1, !mcsema_real_eip !138
  store i1 %889, i1* %SF, !mcsema_real_eip !138
  %890 = icmp eq i32 %887, 0, !mcsema_real_eip !138
  store i1 %890, i1* %ZF, !mcsema_real_eip !138
  %891 = trunc i32 %887 to i8, !mcsema_real_eip !138
  %892 = call i8 @llvm.ctpop.i8(i8 %891), !mcsema_real_eip !138
  %893 = trunc i8 %892 to i1, !mcsema_real_eip !138
  %894 = xor i1 %893, true, !mcsema_real_eip !138
  store i1 %894, i1* %PF, !mcsema_real_eip !138
  store i1 undef, i1* %AF, !mcsema_real_eip !138
  %895 = zext i32 %887 to i64, !mcsema_real_eip !138
  store i64 %895, i64* %XDI, !mcsema_real_eip !138
  %896 = zext i32 8 to i64, !mcsema_real_eip !139
  store i64 %896, i64* %XDX, !mcsema_real_eip !139
  %RBP_val.201 = load i64, i64* %XBP, !mcsema_real_eip !140
  %897 = add i64 %RBP_val.201, -16, !mcsema_real_eip !140
  %898 = inttoptr i64 %897 to i64*, !mcsema_real_eip !140
  %899 = load i64, i64* %898, !mcsema_real_eip !140
  store i64 %899, i64* %XAX, !mcsema_real_eip !140
  %RAX_val.202 = load i64, i64* %XAX, !mcsema_real_eip !141
  %900 = add i64 12, %RAX_val.202, !mcsema_real_eip !141
  %901 = xor i64 %900, %RAX_val.202, !mcsema_real_eip !141
  %902 = xor i64 %901, 12, !mcsema_real_eip !141
  %903 = and i64 %902, 16, !mcsema_real_eip !141
  %904 = icmp ne i64 %903, 0, !mcsema_real_eip !141
  store i1 %904, i1* %AF, !mcsema_real_eip !141
  %905 = lshr i64 %900, 63, !mcsema_real_eip !141
  %906 = trunc i64 %905 to i1, !mcsema_real_eip !141
  store i1 %906, i1* %SF, !mcsema_real_eip !141
  %907 = icmp eq i64 %900, 0, !mcsema_real_eip !141
  store i1 %907, i1* %ZF, !mcsema_real_eip !141
  %908 = xor i64 %RAX_val.202, 12, !mcsema_real_eip !141
  %909 = xor i64 %908, -1, !mcsema_real_eip !141
  %910 = xor i64 %RAX_val.202, %900, !mcsema_real_eip !141
  %911 = and i64 %909, %910, !mcsema_real_eip !141
  %912 = lshr i64 %911, 63, !mcsema_real_eip !141
  %913 = and i64 %912, 1, !mcsema_real_eip !141
  %914 = trunc i64 %913 to i1, !mcsema_real_eip !141
  store i1 %914, i1* %OF, !mcsema_real_eip !141
  %915 = trunc i64 %900 to i8, !mcsema_real_eip !141
  %916 = call i8 @llvm.ctpop.i8(i8 %915), !mcsema_real_eip !141
  %917 = trunc i8 %916 to i1, !mcsema_real_eip !141
  %918 = xor i1 %917, true, !mcsema_real_eip !141
  store i1 %918, i1* %PF, !mcsema_real_eip !141
  %919 = icmp ult i64 %900, %RAX_val.202, !mcsema_real_eip !141
  store i1 %919, i1* %CF, !mcsema_real_eip !141
  store i64 %900, i64* %XAX, !mcsema_real_eip !141
  %RAX_val.203 = load i64, i64* %XAX, !mcsema_real_eip !142
  store i64 %RAX_val.203, i64* %XSI, !mcsema_real_eip !142
  %RDI_val.204 = load i64, i64* %XDI, !mcsema_real_eip !143
  %RSI_val.205 = load i64, i64* %XSI, !mcsema_real_eip !143
  %RDX_val.206 = load i64, i64* %XDX, !mcsema_real_eip !143
  %RSP_val.207 = load i64, i64* %XSP, !mcsema_real_eip !143
  %920 = sub i64 %RSP_val.207, 8, !mcsema_real_eip !143
  %921 = inttoptr i64 %920 to i64*, !mcsema_real_eip !143
  store i64 -2415393069852865332, i64* %921, !mcsema_real_eip !143
  store i64 %920, i64* %XSP, !mcsema_real_eip !143
  %922 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.204, i64 %RSI_val.205, i64 %RDX_val.206), !mcsema_real_eip !143
  store i64 %922, i64* %XAX, !mcsema_real_eip !143
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !144
  %923 = add i64 %RBP_val.208, -44, !mcsema_real_eip !144
  %924 = inttoptr i64 %923 to i64*, !mcsema_real_eip !144
  %EAX.209 = bitcast i64* %XAX to i32*, !mcsema_real_eip !144
  %EAX_val.210 = load i32, i32* %EAX.209, !mcsema_real_eip !144
  %925 = ptrtoint i64* %924 to i64, !mcsema_real_eip !144
  %926 = inttoptr i64 %925 to i32*, !mcsema_real_eip !144
  store i32 %EAX_val.210, i32* %926, !mcsema_real_eip !144
  %RBP_val.211 = load i64, i64* %XBP, !mcsema_real_eip !145
  %927 = add i64 %RBP_val.211, -44, !mcsema_real_eip !145
  %928 = inttoptr i64 %927 to i64*, !mcsema_real_eip !145
  %929 = ptrtoint i64* %928 to i64, !mcsema_real_eip !145
  %930 = inttoptr i64 %929 to i32*, !mcsema_real_eip !145
  %931 = load i32, i32* %930, !mcsema_real_eip !145
  %932 = zext i32 %931 to i64, !mcsema_real_eip !145
  store i64 %932, i64* %XAX, !mcsema_real_eip !145
  %EAX.212 = bitcast i64* %XAX to i32*, !mcsema_real_eip !146
  %EAX_val.213 = load i32, i32* %EAX.212, !mcsema_real_eip !146
  %933 = xor i32 %EAX_val.213, -1534560611, !mcsema_real_eip !146
  store i1 false, i1* %CF, !mcsema_real_eip !146
  store i1 false, i1* %OF, !mcsema_real_eip !146
  %934 = lshr i32 %933, 31, !mcsema_real_eip !146
  %935 = trunc i32 %934 to i1, !mcsema_real_eip !146
  store i1 %935, i1* %SF, !mcsema_real_eip !146
  %936 = icmp eq i32 %933, 0, !mcsema_real_eip !146
  store i1 %936, i1* %ZF, !mcsema_real_eip !146
  %937 = trunc i32 %933 to i8, !mcsema_real_eip !146
  %938 = call i8 @llvm.ctpop.i8(i8 %937), !mcsema_real_eip !146
  %939 = trunc i8 %938 to i1, !mcsema_real_eip !146
  %940 = xor i1 %939, true, !mcsema_real_eip !146
  store i1 %940, i1* %PF, !mcsema_real_eip !146
  store i1 undef, i1* %AF, !mcsema_real_eip !146
  %941 = zext i32 %933 to i64, !mcsema_real_eip !146
  store i64 %941, i64* %XAX, !mcsema_real_eip !146
  %RBP_val.214 = load i64, i64* %XBP, !mcsema_real_eip !147
  %942 = add i64 %RBP_val.214, -48, !mcsema_real_eip !147
  %943 = inttoptr i64 %942 to i64*, !mcsema_real_eip !147
  %EAX.215 = bitcast i64* %XAX to i32*, !mcsema_real_eip !147
  %EAX_val.216 = load i32, i32* %EAX.215, !mcsema_real_eip !147
  %944 = ptrtoint i64* %943 to i64, !mcsema_real_eip !147
  %945 = inttoptr i64 %944 to i32*, !mcsema_real_eip !147
  store i32 %EAX_val.216, i32* %945, !mcsema_real_eip !147
  %RBP_val.217 = load i64, i64* %XBP, !mcsema_real_eip !148
  %946 = add i64 %RBP_val.217, -48, !mcsema_real_eip !148
  %947 = inttoptr i64 %946 to i64*, !mcsema_real_eip !148
  %948 = ptrtoint i64* %947 to i64, !mcsema_real_eip !148
  %949 = inttoptr i64 %948 to i32*, !mcsema_real_eip !148
  %950 = load i32, i32* %949, !mcsema_real_eip !148
  %951 = zext i32 %950 to i64, !mcsema_real_eip !148
  store i64 %951, i64* %XAX, !mcsema_real_eip !148
  %EAX.218 = bitcast i64* %XAX to i32*, !mcsema_real_eip !149
  %EAX_val.219 = load i32, i32* %EAX.218, !mcsema_real_eip !149
  %952 = and i32 16, 31, !mcsema_real_eip !149
  %953 = sub i32 16, 1, !mcsema_real_eip !149
  %954 = icmp ne i32 %952, 0, !mcsema_real_eip !149
  %955 = select i1 %954, i32 %953, i32 0, !mcsema_real_eip !149
  %956 = select i1 %954, i32 1, i32 0, !mcsema_real_eip !149
  %957 = lshr i32 %EAX_val.219, %955, !mcsema_real_eip !149
  %958 = and i32 %957, 1, !mcsema_real_eip !149
  %959 = icmp ne i32 %958, 0, !mcsema_real_eip !149
  %960 = load i1, i1* %CF, !mcsema_real_eip !149
  %961 = select i1 %954, i1 %959, i1 %960, !mcsema_real_eip !149
  %962 = lshr i32 %957, %956, !mcsema_real_eip !149
  %963 = icmp eq i32 %952, 1, !mcsema_real_eip !149
  %964 = load i1, i1* %OF, !mcsema_real_eip !149
  %965 = and i32 %EAX_val.219, -2147483648, !mcsema_real_eip !149
  %966 = icmp ne i32 %965, 0, !mcsema_real_eip !149
  %967 = select i1 %963, i1 %966, i1 %964, !mcsema_real_eip !149
  store i1 %967, i1* %OF, !mcsema_real_eip !149
  store i1 %961, i1* %CF, !mcsema_real_eip !149
  %968 = load i1, i1* %ZF, !mcsema_real_eip !149
  %969 = icmp eq i32 %962, 0, !mcsema_real_eip !149
  %970 = select i1 %954, i1 %969, i1 %968, !mcsema_real_eip !149
  store i1 %970, i1* %ZF, !mcsema_real_eip !149
  %971 = load i1, i1* %SF, !mcsema_real_eip !149
  %972 = icmp slt i32 %962, 0, !mcsema_real_eip !149
  %973 = select i1 %954, i1 %972, i1 %971, !mcsema_real_eip !149
  store i1 %973, i1* %SF, !mcsema_real_eip !149
  %974 = load i1, i1* %PF, !mcsema_real_eip !149
  %975 = trunc i32 %962 to i8, !mcsema_real_eip !149
  %976 = call i8 @llvm.ctpop.i8(i8 %975), !mcsema_real_eip !149
  %977 = trunc i8 %976 to i1, !mcsema_real_eip !149
  %978 = xor i1 %977, true, !mcsema_real_eip !149
  store i1 %978, i1* %PF, !mcsema_real_eip !149
  %979 = load i1, i1* %PF, !mcsema_real_eip !149
  %980 = select i1 %954, i1 %979, i1 %974, !mcsema_real_eip !149
  store i1 %980, i1* %PF, !mcsema_real_eip !149
  %981 = zext i32 %962 to i64, !mcsema_real_eip !149
  store i64 %981, i64* %XAX, !mcsema_real_eip !149
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !150
  %982 = add i64 %RBP_val.220, -52, !mcsema_real_eip !150
  %983 = inttoptr i64 %982 to i64*, !mcsema_real_eip !150
  %EAX.221 = bitcast i64* %XAX to i32*, !mcsema_real_eip !150
  %EAX_val.222 = load i32, i32* %EAX.221, !mcsema_real_eip !150
  %984 = ptrtoint i64* %983 to i64, !mcsema_real_eip !150
  %985 = inttoptr i64 %984 to i32*, !mcsema_real_eip !150
  store i32 %EAX_val.222, i32* %985, !mcsema_real_eip !150
  %RBP_val.223 = load i64, i64* %XBP, !mcsema_real_eip !151
  %986 = add i64 %RBP_val.223, -48, !mcsema_real_eip !151
  %987 = inttoptr i64 %986 to i64*, !mcsema_real_eip !151
  %988 = ptrtoint i64* %987 to i64, !mcsema_real_eip !151
  %989 = inttoptr i64 %988 to i32*, !mcsema_real_eip !151
  %990 = load i32, i32* %989, !mcsema_real_eip !151
  %991 = zext i32 %990 to i64, !mcsema_real_eip !151
  store i64 %991, i64* %XAX, !mcsema_real_eip !151
  %EAX.224 = bitcast i64* %XAX to i32*, !mcsema_real_eip !152
  %EAX_val.225 = load i32, i32* %EAX.224, !mcsema_real_eip !152
  %992 = and i32 %EAX_val.225, 65535, !mcsema_real_eip !152
  %993 = lshr i32 %992, 31, !mcsema_real_eip !152
  %994 = trunc i32 %993 to i1, !mcsema_real_eip !152
  store i1 %994, i1* %SF, !mcsema_real_eip !152
  %995 = icmp eq i32 %992, 0, !mcsema_real_eip !152
  store i1 %995, i1* %ZF, !mcsema_real_eip !152
  %996 = trunc i32 %992 to i8, !mcsema_real_eip !152
  %997 = call i8 @llvm.ctpop.i8(i8 %996), !mcsema_real_eip !152
  %998 = trunc i8 %997 to i1, !mcsema_real_eip !152
  %999 = xor i1 %998, true, !mcsema_real_eip !152
  store i1 %999, i1* %PF, !mcsema_real_eip !152
  store i1 false, i1* %OF, !mcsema_real_eip !152
  store i1 false, i1* %CF, !mcsema_real_eip !152
  store i1 undef, i1* %AF, !mcsema_real_eip !152
  %1000 = zext i32 %992 to i64, !mcsema_real_eip !152
  store i64 %1000, i64* %XAX, !mcsema_real_eip !152
  %RBP_val.226 = load i64, i64* %XBP, !mcsema_real_eip !153
  %1001 = add i64 %RBP_val.226, -56, !mcsema_real_eip !153
  %1002 = inttoptr i64 %1001 to i64*, !mcsema_real_eip !153
  %EAX.227 = bitcast i64* %XAX to i32*, !mcsema_real_eip !153
  %EAX_val.228 = load i32, i32* %EAX.227, !mcsema_real_eip !153
  %1003 = ptrtoint i64* %1002 to i64, !mcsema_real_eip !153
  %1004 = inttoptr i64 %1003 to i32*, !mcsema_real_eip !153
  store i32 %EAX_val.228, i32* %1004, !mcsema_real_eip !153
  %RBP_val.229 = load i64, i64* %XBP, !mcsema_real_eip !154
  %1005 = add i64 %RBP_val.229, -52, !mcsema_real_eip !154
  %1006 = inttoptr i64 %1005 to i64*, !mcsema_real_eip !154
  %1007 = ptrtoint i64* %1006 to i64, !mcsema_real_eip !154
  %1008 = inttoptr i64 %1007 to i32*, !mcsema_real_eip !154
  %1009 = load i32, i32* %1008, !mcsema_real_eip !154
  %1010 = sub i32 %1009, 79, !mcsema_real_eip !154
  %1011 = xor i32 %1010, %1009, !mcsema_real_eip !154
  %1012 = xor i32 %1011, 79, !mcsema_real_eip !154
  %1013 = and i32 %1012, 16, !mcsema_real_eip !154
  %1014 = icmp ne i32 %1013, 0, !mcsema_real_eip !154
  store i1 %1014, i1* %AF, !mcsema_real_eip !154
  %1015 = trunc i32 %1010 to i8, !mcsema_real_eip !154
  %1016 = call i8 @llvm.ctpop.i8(i8 %1015), !mcsema_real_eip !154
  %1017 = trunc i8 %1016 to i1, !mcsema_real_eip !154
  %1018 = xor i1 %1017, true, !mcsema_real_eip !154
  store i1 %1018, i1* %PF, !mcsema_real_eip !154
  %1019 = icmp eq i32 %1010, 0, !mcsema_real_eip !154
  store i1 %1019, i1* %ZF, !mcsema_real_eip !154
  %1020 = lshr i32 %1010, 31, !mcsema_real_eip !154
  %1021 = trunc i32 %1020 to i1, !mcsema_real_eip !154
  store i1 %1021, i1* %SF, !mcsema_real_eip !154
  %1022 = icmp ult i32 %1009, 79, !mcsema_real_eip !154
  store i1 %1022, i1* %CF, !mcsema_real_eip !154
  %1023 = xor i32 %1009, 79, !mcsema_real_eip !154
  %1024 = xor i32 %1009, %1010, !mcsema_real_eip !154
  %1025 = and i32 %1023, %1024, !mcsema_real_eip !154
  %1026 = lshr i32 %1025, 31, !mcsema_real_eip !154
  %1027 = trunc i32 %1026 to i1, !mcsema_real_eip !154
  store i1 %1027, i1* %OF, !mcsema_real_eip !154
  %1028 = load i1, i1* %ZF, !mcsema_real_eip !155
  %1029 = icmp eq i1 %1028, false, !mcsema_real_eip !155
  br i1 %1029, label %block_0x28c, label %block_0x274, !mcsema_real_eip !155

block_0x274:                                      ; preds = %block_0x231
  %RBP_val.230 = load i64, i64* %XBP, !mcsema_real_eip !156
  %1030 = add i64 %RBP_val.230, -56, !mcsema_real_eip !156
  %1031 = inttoptr i64 %1030 to i64*, !mcsema_real_eip !156
  %1032 = ptrtoint i64* %1031 to i64, !mcsema_real_eip !156
  %1033 = inttoptr i64 %1032 to i32*, !mcsema_real_eip !156
  %1034 = load i32, i32* %1033, !mcsema_real_eip !156
  %1035 = zext i32 %1034 to i64, !mcsema_real_eip !156
  store i64 %1035, i64* %XAX, !mcsema_real_eip !156
  %RBP_val.231 = load i64, i64* %XBP, !mcsema_real_eip !157
  %1036 = add i64 %RBP_val.231, -20, !mcsema_real_eip !157
  %1037 = inttoptr i64 %1036 to i64*, !mcsema_real_eip !157
  %EAX.232 = bitcast i64* %XAX to i32*, !mcsema_real_eip !157
  %EAX_val.233 = load i32, i32* %EAX.232, !mcsema_real_eip !157
  %1038 = ptrtoint i64* %1037 to i64, !mcsema_real_eip !157
  %1039 = inttoptr i64 %1038 to i32*, !mcsema_real_eip !157
  %1040 = load i32, i32* %1039, !mcsema_real_eip !157
  %1041 = sub i32 %EAX_val.233, %1040, !mcsema_real_eip !157
  %1042 = xor i32 %1041, %EAX_val.233, !mcsema_real_eip !157
  %1043 = xor i32 %1042, %1040, !mcsema_real_eip !157
  %1044 = and i32 %1043, 16, !mcsema_real_eip !157
  %1045 = icmp ne i32 %1044, 0, !mcsema_real_eip !157
  store i1 %1045, i1* %AF, !mcsema_real_eip !157
  %1046 = trunc i32 %1041 to i8, !mcsema_real_eip !157
  %1047 = call i8 @llvm.ctpop.i8(i8 %1046), !mcsema_real_eip !157
  %1048 = trunc i8 %1047 to i1, !mcsema_real_eip !157
  %1049 = xor i1 %1048, true, !mcsema_real_eip !157
  store i1 %1049, i1* %PF, !mcsema_real_eip !157
  %1050 = icmp eq i32 %1041, 0, !mcsema_real_eip !157
  store i1 %1050, i1* %ZF, !mcsema_real_eip !157
  %1051 = lshr i32 %1041, 31, !mcsema_real_eip !157
  %1052 = trunc i32 %1051 to i1, !mcsema_real_eip !157
  store i1 %1052, i1* %SF, !mcsema_real_eip !157
  %1053 = icmp ult i32 %EAX_val.233, %1040, !mcsema_real_eip !157
  store i1 %1053, i1* %CF, !mcsema_real_eip !157
  %1054 = xor i32 %EAX_val.233, %1040, !mcsema_real_eip !157
  %1055 = xor i32 %EAX_val.233, %1041, !mcsema_real_eip !157
  %1056 = and i32 %1054, %1055, !mcsema_real_eip !157
  %1057 = lshr i32 %1056, 31, !mcsema_real_eip !157
  %1058 = trunc i32 %1057 to i1, !mcsema_real_eip !157
  store i1 %1058, i1* %OF, !mcsema_real_eip !157
  %1059 = load i1, i1* %ZF, !mcsema_real_eip !158
  %1060 = icmp eq i1 %1059, false, !mcsema_real_eip !158
  br i1 %1060, label %block_0x28c, label %block_0x280, !mcsema_real_eip !158

block_0x280:                                      ; preds = %block_0x274
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !159
  %1061 = add i64 %RBP_val.234, -20, !mcsema_real_eip !159
  %1062 = inttoptr i64 %1061 to i64*, !mcsema_real_eip !159
  %1063 = ptrtoint i64* %1062 to i64, !mcsema_real_eip !159
  %1064 = inttoptr i64 %1063 to i32*, !mcsema_real_eip !159
  store i32 0, i32* %1064, !mcsema_real_eip !159
  br label %block_0x293, !mcsema_real_eip !160

block_0x28c:                                      ; preds = %block_0x274, %block_0x231
  %RBP_val.235 = load i64, i64* %XBP, !mcsema_real_eip !161
  %1065 = add i64 %RBP_val.235, -20, !mcsema_real_eip !161
  %1066 = inttoptr i64 %1065 to i64*, !mcsema_real_eip !161
  %1067 = ptrtoint i64* %1066 to i64, !mcsema_real_eip !161
  %1068 = inttoptr i64 %1067 to i32*, !mcsema_real_eip !161
  store i32 48351, i32* %1068, !mcsema_real_eip !161
  br label %block_0x293, !mcsema_real_eip !162

block_0x293:                                      ; preds = %block_0x28c, %block_0x280
  %1069 = zext i32 8 to i64, !mcsema_real_eip !162
  store i64 %1069, i64* %XDX, !mcsema_real_eip !162
  %RBP_val.236 = load i64, i64* %XBP, !mcsema_real_eip !163
  %1070 = add i64 %RBP_val.236, -20, !mcsema_real_eip !163
  %1071 = inttoptr i64 %1070 to i64*, !mcsema_real_eip !163
  %1072 = ptrtoint i64* %1071 to i64, !mcsema_real_eip !163
  %1073 = inttoptr i64 %1072 to i32*, !mcsema_real_eip !163
  %1074 = load i32, i32* %1073, !mcsema_real_eip !163
  %1075 = zext i32 %1074 to i64, !mcsema_real_eip !163
  store i64 %1075, i64* %XDI, !mcsema_real_eip !163
  %RBP_val.237 = load i64, i64* %XBP, !mcsema_real_eip !164
  %1076 = add i64 %RBP_val.237, -16, !mcsema_real_eip !164
  %1077 = inttoptr i64 %1076 to i64*, !mcsema_real_eip !164
  %1078 = load i64, i64* %1077, !mcsema_real_eip !164
  store i64 %1078, i64* %XAX, !mcsema_real_eip !164
  %RAX_val.238 = load i64, i64* %XAX, !mcsema_real_eip !165
  %1079 = add i64 20, %RAX_val.238, !mcsema_real_eip !165
  %1080 = xor i64 %1079, %RAX_val.238, !mcsema_real_eip !165
  %1081 = xor i64 %1080, 20, !mcsema_real_eip !165
  %1082 = and i64 %1081, 16, !mcsema_real_eip !165
  %1083 = icmp ne i64 %1082, 0, !mcsema_real_eip !165
  store i1 %1083, i1* %AF, !mcsema_real_eip !165
  %1084 = lshr i64 %1079, 63, !mcsema_real_eip !165
  %1085 = trunc i64 %1084 to i1, !mcsema_real_eip !165
  store i1 %1085, i1* %SF, !mcsema_real_eip !165
  %1086 = icmp eq i64 %1079, 0, !mcsema_real_eip !165
  store i1 %1086, i1* %ZF, !mcsema_real_eip !165
  %1087 = xor i64 %RAX_val.238, 20, !mcsema_real_eip !165
  %1088 = xor i64 %1087, -1, !mcsema_real_eip !165
  %1089 = xor i64 %RAX_val.238, %1079, !mcsema_real_eip !165
  %1090 = and i64 %1088, %1089, !mcsema_real_eip !165
  %1091 = lshr i64 %1090, 63, !mcsema_real_eip !165
  %1092 = and i64 %1091, 1, !mcsema_real_eip !165
  %1093 = trunc i64 %1092 to i1, !mcsema_real_eip !165
  store i1 %1093, i1* %OF, !mcsema_real_eip !165
  %1094 = trunc i64 %1079 to i8, !mcsema_real_eip !165
  %1095 = call i8 @llvm.ctpop.i8(i8 %1094), !mcsema_real_eip !165
  %1096 = trunc i8 %1095 to i1, !mcsema_real_eip !165
  %1097 = xor i1 %1096, true, !mcsema_real_eip !165
  store i1 %1097, i1* %PF, !mcsema_real_eip !165
  %1098 = icmp ult i64 %1079, %RAX_val.238, !mcsema_real_eip !165
  store i1 %1098, i1* %CF, !mcsema_real_eip !165
  store i64 %1079, i64* %XAX, !mcsema_real_eip !165
  %RAX_val.239 = load i64, i64* %XAX, !mcsema_real_eip !166
  store i64 %RAX_val.239, i64* %XSI, !mcsema_real_eip !166
  %RDI_val.240 = load i64, i64* %XDI, !mcsema_real_eip !167
  %RSI_val.241 = load i64, i64* %XSI, !mcsema_real_eip !167
  %RDX_val.242 = load i64, i64* %XDX, !mcsema_real_eip !167
  %RSP_val.243 = load i64, i64* %XSP, !mcsema_real_eip !167
  %1099 = sub i64 %RSP_val.243, 8, !mcsema_real_eip !167
  %1100 = inttoptr i64 %1099 to i64*, !mcsema_real_eip !167
  store i64 -2415393069852865332, i64* %1100, !mcsema_real_eip !167
  store i64 %1099, i64* %XSP, !mcsema_real_eip !167
  %1101 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.240, i64 %RSI_val.241, i64 %RDX_val.242), !mcsema_real_eip !167
  store i64 %1101, i64* %XAX, !mcsema_real_eip !167
  %RBP_val.244 = load i64, i64* %XBP, !mcsema_real_eip !168
  %1102 = add i64 %RBP_val.244, -60, !mcsema_real_eip !168
  %1103 = inttoptr i64 %1102 to i64*, !mcsema_real_eip !168
  %EAX.245 = bitcast i64* %XAX to i32*, !mcsema_real_eip !168
  %EAX_val.246 = load i32, i32* %EAX.245, !mcsema_real_eip !168
  %1104 = ptrtoint i64* %1103 to i64, !mcsema_real_eip !168
  %1105 = inttoptr i64 %1104 to i32*, !mcsema_real_eip !168
  store i32 %EAX_val.246, i32* %1105, !mcsema_real_eip !168
  %RBP_val.247 = load i64, i64* %XBP, !mcsema_real_eip !169
  %1106 = add i64 %RBP_val.247, -60, !mcsema_real_eip !169
  %1107 = inttoptr i64 %1106 to i64*, !mcsema_real_eip !169
  %1108 = ptrtoint i64* %1107 to i64, !mcsema_real_eip !169
  %1109 = inttoptr i64 %1108 to i32*, !mcsema_real_eip !169
  %1110 = load i32, i32* %1109, !mcsema_real_eip !169
  %1111 = zext i32 %1110 to i64, !mcsema_real_eip !169
  store i64 %1111, i64* %XAX, !mcsema_real_eip !169
  %EAX.248 = bitcast i64* %XAX to i32*, !mcsema_real_eip !170
  %EAX_val.249 = load i32, i32* %EAX.248, !mcsema_real_eip !170
  %1112 = sub i32 %EAX_val.249, 3, !mcsema_real_eip !170
  %1113 = xor i32 %1112, %EAX_val.249, !mcsema_real_eip !170
  %1114 = xor i32 %1113, 3, !mcsema_real_eip !170
  %1115 = and i32 %1114, 16, !mcsema_real_eip !170
  %1116 = icmp ne i32 %1115, 0, !mcsema_real_eip !170
  store i1 %1116, i1* %AF, !mcsema_real_eip !170
  %1117 = trunc i32 %1112 to i8, !mcsema_real_eip !170
  %1118 = call i8 @llvm.ctpop.i8(i8 %1117), !mcsema_real_eip !170
  %1119 = trunc i8 %1118 to i1, !mcsema_real_eip !170
  %1120 = xor i1 %1119, true, !mcsema_real_eip !170
  store i1 %1120, i1* %PF, !mcsema_real_eip !170
  %1121 = icmp eq i32 %1112, 0, !mcsema_real_eip !170
  store i1 %1121, i1* %ZF, !mcsema_real_eip !170
  %1122 = lshr i32 %1112, 31, !mcsema_real_eip !170
  %1123 = trunc i32 %1122 to i1, !mcsema_real_eip !170
  store i1 %1123, i1* %SF, !mcsema_real_eip !170
  %1124 = icmp ult i32 %EAX_val.249, 3, !mcsema_real_eip !170
  store i1 %1124, i1* %CF, !mcsema_real_eip !170
  %1125 = xor i32 %EAX_val.249, 3, !mcsema_real_eip !170
  %1126 = xor i32 %EAX_val.249, %1112, !mcsema_real_eip !170
  %1127 = and i32 %1125, %1126, !mcsema_real_eip !170
  %1128 = lshr i32 %1127, 31, !mcsema_real_eip !170
  %1129 = trunc i32 %1128 to i1, !mcsema_real_eip !170
  store i1 %1129, i1* %OF, !mcsema_real_eip !170
  %1130 = zext i32 %1112 to i64, !mcsema_real_eip !170
  store i64 %1130, i64* %XAX, !mcsema_real_eip !170
  %RBP_val.250 = load i64, i64* %XBP, !mcsema_real_eip !171
  %1131 = add i64 %RBP_val.250, -60, !mcsema_real_eip !171
  %1132 = inttoptr i64 %1131 to i64*, !mcsema_real_eip !171
  %EAX.251 = bitcast i64* %XAX to i32*, !mcsema_real_eip !171
  %EAX_val.252 = load i32, i32* %EAX.251, !mcsema_real_eip !171
  %1133 = ptrtoint i64* %1132 to i64, !mcsema_real_eip !171
  %1134 = inttoptr i64 %1133 to i32*, !mcsema_real_eip !171
  store i32 %EAX_val.252, i32* %1134, !mcsema_real_eip !171
  %RBP_val.253 = load i64, i64* %XBP, !mcsema_real_eip !172
  %1135 = add i64 %RBP_val.253, -60, !mcsema_real_eip !172
  %1136 = inttoptr i64 %1135 to i64*, !mcsema_real_eip !172
  %1137 = ptrtoint i64* %1136 to i64, !mcsema_real_eip !172
  %1138 = inttoptr i64 %1137 to i32*, !mcsema_real_eip !172
  %1139 = load i32, i32* %1138, !mcsema_real_eip !172
  %1140 = zext i32 %1139 to i64, !mcsema_real_eip !172
  store i64 %1140, i64* %XAX, !mcsema_real_eip !172
  %EAX.254 = bitcast i64* %XAX to i32*, !mcsema_real_eip !173
  %EAX_val.255 = load i32, i32* %EAX.254, !mcsema_real_eip !173
  %1141 = and i32 %EAX_val.255, 7, !mcsema_real_eip !173
  %1142 = lshr i32 %1141, 31, !mcsema_real_eip !173
  %1143 = trunc i32 %1142 to i1, !mcsema_real_eip !173
  store i1 %1143, i1* %SF, !mcsema_real_eip !173
  %1144 = icmp eq i32 %1141, 0, !mcsema_real_eip !173
  store i1 %1144, i1* %ZF, !mcsema_real_eip !173
  %1145 = trunc i32 %1141 to i8, !mcsema_real_eip !173
  %1146 = call i8 @llvm.ctpop.i8(i8 %1145), !mcsema_real_eip !173
  %1147 = trunc i8 %1146 to i1, !mcsema_real_eip !173
  %1148 = xor i1 %1147, true, !mcsema_real_eip !173
  store i1 %1148, i1* %PF, !mcsema_real_eip !173
  store i1 false, i1* %OF, !mcsema_real_eip !173
  store i1 false, i1* %CF, !mcsema_real_eip !173
  store i1 undef, i1* %AF, !mcsema_real_eip !173
  %1149 = zext i32 %1141 to i64, !mcsema_real_eip !173
  store i64 %1149, i64* %XAX, !mcsema_real_eip !173
  %EAX.256 = bitcast i64* %XAX to i32*, !mcsema_real_eip !174
  %EAX_val.257 = load i32, i32* %EAX.256, !mcsema_real_eip !174
  %1150 = sub i32 %EAX_val.257, 0, !mcsema_real_eip !174
  %1151 = xor i32 %1150, %EAX_val.257, !mcsema_real_eip !174
  %1152 = xor i32 %1151, 0, !mcsema_real_eip !174
  %1153 = and i32 %1152, 16, !mcsema_real_eip !174
  %1154 = icmp ne i32 %1153, 0, !mcsema_real_eip !174
  store i1 %1154, i1* %AF, !mcsema_real_eip !174
  %1155 = trunc i32 %1150 to i8, !mcsema_real_eip !174
  %1156 = call i8 @llvm.ctpop.i8(i8 %1155), !mcsema_real_eip !174
  %1157 = trunc i8 %1156 to i1, !mcsema_real_eip !174
  %1158 = xor i1 %1157, true, !mcsema_real_eip !174
  store i1 %1158, i1* %PF, !mcsema_real_eip !174
  %1159 = icmp eq i32 %1150, 0, !mcsema_real_eip !174
  store i1 %1159, i1* %ZF, !mcsema_real_eip !174
  %1160 = lshr i32 %1150, 31, !mcsema_real_eip !174
  %1161 = trunc i32 %1160 to i1, !mcsema_real_eip !174
  store i1 %1161, i1* %SF, !mcsema_real_eip !174
  %1162 = icmp ult i32 %EAX_val.257, 0, !mcsema_real_eip !174
  store i1 %1162, i1* %CF, !mcsema_real_eip !174
  %1163 = xor i32 %EAX_val.257, 0, !mcsema_real_eip !174
  %1164 = xor i32 %EAX_val.257, %1150, !mcsema_real_eip !174
  %1165 = and i32 %1163, %1164, !mcsema_real_eip !174
  %1166 = lshr i32 %1165, 31, !mcsema_real_eip !174
  %1167 = trunc i32 %1166 to i1, !mcsema_real_eip !174
  store i1 %1167, i1* %OF, !mcsema_real_eip !174
  %1168 = load i1, i1* %ZF, !mcsema_real_eip !175
  %1169 = icmp eq i1 %1168, true, !mcsema_real_eip !175
  br i1 %1169, label %block_0x2d2, label %block_0x2c6, !mcsema_real_eip !175

block_0x2c6:                                      ; preds = %block_0x293
  %RBP_val.258 = load i64, i64* %XBP, !mcsema_real_eip !176
  %1170 = add i64 %RBP_val.258, -4, !mcsema_real_eip !176
  %1171 = inttoptr i64 %1170 to i64*, !mcsema_real_eip !176
  %1172 = ptrtoint i64* %1171 to i64, !mcsema_real_eip !176
  %1173 = inttoptr i64 %1172 to i32*, !mcsema_real_eip !176
  store i32 -21, i32* %1173, !mcsema_real_eip !176
  br label %block_0x417, !mcsema_real_eip !177

block_0x2d2:                                      ; preds = %block_0x293
  %RBP_val.259 = load i64, i64* %XBP, !mcsema_real_eip !178
  %1174 = add i64 %RBP_val.259, -60, !mcsema_real_eip !178
  %1175 = inttoptr i64 %1174 to i64*, !mcsema_real_eip !178
  %1176 = ptrtoint i64* %1175 to i64, !mcsema_real_eip !178
  %1177 = inttoptr i64 %1176 to i32*, !mcsema_real_eip !178
  %1178 = load i32, i32* %1177, !mcsema_real_eip !178
  %1179 = zext i32 %1178 to i64, !mcsema_real_eip !178
  store i64 %1179, i64* %XAX, !mcsema_real_eip !178
  %EAX.260 = bitcast i64* %XAX to i32*, !mcsema_real_eip !179
  %EAX_val.261 = load i32, i32* %EAX.260, !mcsema_real_eip !179
  %1180 = sub i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  %1181 = xor i32 %1180, %EAX_val.261, !mcsema_real_eip !179
  %1182 = xor i32 %1181, -2147483648, !mcsema_real_eip !179
  %1183 = and i32 %1182, 16, !mcsema_real_eip !179
  %1184 = icmp ne i32 %1183, 0, !mcsema_real_eip !179
  store i1 %1184, i1* %AF, !mcsema_real_eip !179
  %1185 = trunc i32 %1180 to i8, !mcsema_real_eip !179
  %1186 = call i8 @llvm.ctpop.i8(i8 %1185), !mcsema_real_eip !179
  %1187 = trunc i8 %1186 to i1, !mcsema_real_eip !179
  %1188 = xor i1 %1187, true, !mcsema_real_eip !179
  store i1 %1188, i1* %PF, !mcsema_real_eip !179
  %1189 = icmp eq i32 %1180, 0, !mcsema_real_eip !179
  store i1 %1189, i1* %ZF, !mcsema_real_eip !179
  %1190 = lshr i32 %1180, 31, !mcsema_real_eip !179
  %1191 = trunc i32 %1190 to i1, !mcsema_real_eip !179
  store i1 %1191, i1* %SF, !mcsema_real_eip !179
  %1192 = icmp ult i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  store i1 %1192, i1* %CF, !mcsema_real_eip !179
  %1193 = xor i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  %1194 = xor i32 %EAX_val.261, %1180, !mcsema_real_eip !179
  %1195 = and i32 %1193, %1194, !mcsema_real_eip !179
  %1196 = lshr i32 %1195, 31, !mcsema_real_eip !179
  %1197 = trunc i32 %1196 to i1, !mcsema_real_eip !179
  store i1 %1197, i1* %OF, !mcsema_real_eip !179
  %1198 = zext i32 %1180 to i64, !mcsema_real_eip !179
  store i64 %1198, i64* %XAX, !mcsema_real_eip !179
  %RBP_val.262 = load i64, i64* %XBP, !mcsema_real_eip !180
  %1199 = add i64 %RBP_val.262, -60, !mcsema_real_eip !180
  %1200 = inttoptr i64 %1199 to i64*, !mcsema_real_eip !180
  %EAX.263 = bitcast i64* %XAX to i32*, !mcsema_real_eip !180
  %EAX_val.264 = load i32, i32* %EAX.263, !mcsema_real_eip !180
  %1201 = ptrtoint i64* %1200 to i64, !mcsema_real_eip !180
  %1202 = inttoptr i64 %1201 to i32*, !mcsema_real_eip !180
  store i32 %EAX_val.264, i32* %1202, !mcsema_real_eip !180
  %RBP_val.265 = load i64, i64* %XBP, !mcsema_real_eip !181
  %1203 = add i64 %RBP_val.265, -60, !mcsema_real_eip !181
  %1204 = inttoptr i64 %1203 to i64*, !mcsema_real_eip !181
  %1205 = ptrtoint i64* %1204 to i64, !mcsema_real_eip !181
  %1206 = inttoptr i64 %1205 to i32*, !mcsema_real_eip !181
  %1207 = load i32, i32* %1206, !mcsema_real_eip !181
  %1208 = sub i32 %1207, 268435455, !mcsema_real_eip !181
  %1209 = xor i32 %1208, %1207, !mcsema_real_eip !181
  %1210 = xor i32 %1209, 268435455, !mcsema_real_eip !181
  %1211 = and i32 %1210, 16, !mcsema_real_eip !181
  %1212 = icmp ne i32 %1211, 0, !mcsema_real_eip !181
  store i1 %1212, i1* %AF, !mcsema_real_eip !181
  %1213 = trunc i32 %1208 to i8, !mcsema_real_eip !181
  %1214 = call i8 @llvm.ctpop.i8(i8 %1213), !mcsema_real_eip !181
  %1215 = trunc i8 %1214 to i1, !mcsema_real_eip !181
  %1216 = xor i1 %1215, true, !mcsema_real_eip !181
  store i1 %1216, i1* %PF, !mcsema_real_eip !181
  %1217 = icmp eq i32 %1208, 0, !mcsema_real_eip !181
  store i1 %1217, i1* %ZF, !mcsema_real_eip !181
  %1218 = lshr i32 %1208, 31, !mcsema_real_eip !181
  %1219 = trunc i32 %1218 to i1, !mcsema_real_eip !181
  store i1 %1219, i1* %SF, !mcsema_real_eip !181
  %1220 = icmp ult i32 %1207, 268435455, !mcsema_real_eip !181
  store i1 %1220, i1* %CF, !mcsema_real_eip !181
  %1221 = xor i32 %1207, 268435455, !mcsema_real_eip !181
  %1222 = xor i32 %1207, %1208, !mcsema_real_eip !181
  %1223 = and i32 %1221, %1222, !mcsema_real_eip !181
  %1224 = lshr i32 %1223, 31, !mcsema_real_eip !181
  %1225 = trunc i32 %1224 to i1, !mcsema_real_eip !181
  store i1 %1225, i1* %OF, !mcsema_real_eip !181
  %1226 = load i1, i1* %ZF, !mcsema_real_eip !182
  %1227 = icmp eq i1 %1226, true, !mcsema_real_eip !182
  %1228 = load i1, i1* %CF, !mcsema_real_eip !182
  %1229 = icmp eq i1 %1228, true, !mcsema_real_eip !182
  %1230 = or i1 %1229, %1227, !mcsema_real_eip !182
  br i1 %1230, label %block_0x2f6, label %block_0x2ea, !mcsema_real_eip !182

block_0x2ea:                                      ; preds = %block_0x2d2
  %RBP_val.266 = load i64, i64* %XBP, !mcsema_real_eip !183
  %1231 = add i64 %RBP_val.266, -4, !mcsema_real_eip !183
  %1232 = inttoptr i64 %1231 to i64*, !mcsema_real_eip !183
  %1233 = ptrtoint i64* %1232 to i64, !mcsema_real_eip !183
  %1234 = inttoptr i64 %1233 to i32*, !mcsema_real_eip !183
  store i32 -22, i32* %1234, !mcsema_real_eip !183
  br label %block_0x417, !mcsema_real_eip !184

block_0x2f6:                                      ; preds = %block_0x2d2
  %1235 = zext i32 10000 to i64, !mcsema_real_eip !185
  store i64 %1235, i64* %XAX, !mcsema_real_eip !185
  %RBP_val.267 = load i64, i64* %XBP, !mcsema_real_eip !186
  %1236 = add i64 %RBP_val.267, -60, !mcsema_real_eip !186
  %1237 = inttoptr i64 %1236 to i64*, !mcsema_real_eip !186
  %1238 = ptrtoint i64* %1237 to i64, !mcsema_real_eip !186
  %1239 = inttoptr i64 %1238 to i32*, !mcsema_real_eip !186
  %1240 = load i32, i32* %1239, !mcsema_real_eip !186
  %1241 = zext i32 %1240 to i64, !mcsema_real_eip !186
  store i64 %1241, i64* %XCX, !mcsema_real_eip !186
  %ECX.268 = bitcast i64* %XCX to i32*, !mcsema_real_eip !187
  %ECX_val.269 = load i32, i32* %ECX.268, !mcsema_real_eip !187
  %1242 = xor i32 %ECX_val.269, 13631488, !mcsema_real_eip !187
  store i1 false, i1* %CF, !mcsema_real_eip !187
  store i1 false, i1* %OF, !mcsema_real_eip !187
  %1243 = lshr i32 %1242, 31, !mcsema_real_eip !187
  %1244 = trunc i32 %1243 to i1, !mcsema_real_eip !187
  store i1 %1244, i1* %SF, !mcsema_real_eip !187
  %1245 = icmp eq i32 %1242, 0, !mcsema_real_eip !187
  store i1 %1245, i1* %ZF, !mcsema_real_eip !187
  %1246 = trunc i32 %1242 to i8, !mcsema_real_eip !187
  %1247 = call i8 @llvm.ctpop.i8(i8 %1246), !mcsema_real_eip !187
  %1248 = trunc i8 %1247 to i1, !mcsema_real_eip !187
  %1249 = xor i1 %1248, true, !mcsema_real_eip !187
  store i1 %1249, i1* %PF, !mcsema_real_eip !187
  store i1 undef, i1* %AF, !mcsema_real_eip !187
  %1250 = zext i32 %1242 to i64, !mcsema_real_eip !187
  store i64 %1250, i64* %XCX, !mcsema_real_eip !187
  %RBP_val.270 = load i64, i64* %XBP, !mcsema_real_eip !188
  %1251 = add i64 %RBP_val.270, -60, !mcsema_real_eip !188
  %1252 = inttoptr i64 %1251 to i64*, !mcsema_real_eip !188
  %ECX.271 = bitcast i64* %XCX to i32*, !mcsema_real_eip !188
  %ECX_val.272 = load i32, i32* %ECX.271, !mcsema_real_eip !188
  %1253 = ptrtoint i64* %1252 to i64, !mcsema_real_eip !188
  %1254 = inttoptr i64 %1253 to i32*, !mcsema_real_eip !188
  store i32 %ECX_val.272, i32* %1254, !mcsema_real_eip !188
  %RBP_val.273 = load i64, i64* %XBP, !mcsema_real_eip !189
  %1255 = add i64 %RBP_val.273, -60, !mcsema_real_eip !189
  %1256 = inttoptr i64 %1255 to i64*, !mcsema_real_eip !189
  %1257 = ptrtoint i64* %1256 to i64, !mcsema_real_eip !189
  %1258 = inttoptr i64 %1257 to i32*, !mcsema_real_eip !189
  %1259 = load i32, i32* %1258, !mcsema_real_eip !189
  %1260 = zext i32 %1259 to i64, !mcsema_real_eip !189
  store i64 %1260, i64* %XCX, !mcsema_real_eip !189
  %ECX.274 = bitcast i64* %XCX to i32*, !mcsema_real_eip !190
  %ECX_val.275 = load i32, i32* %ECX.274, !mcsema_real_eip !190
  %1261 = and i32 4, 31, !mcsema_real_eip !190
  %1262 = sub i32 4, 1, !mcsema_real_eip !190
  %1263 = icmp ne i32 %1261, 0, !mcsema_real_eip !190
  %1264 = select i1 %1263, i32 %1262, i32 0, !mcsema_real_eip !190
  %1265 = select i1 %1263, i32 1, i32 0, !mcsema_real_eip !190
  %1266 = lshr i32 %ECX_val.275, %1264, !mcsema_real_eip !190
  %1267 = and i32 %1266, 1, !mcsema_real_eip !190
  %1268 = icmp ne i32 %1267, 0, !mcsema_real_eip !190
  %1269 = load i1, i1* %CF, !mcsema_real_eip !190
  %1270 = select i1 %1263, i1 %1268, i1 %1269, !mcsema_real_eip !190
  %1271 = lshr i32 %1266, %1265, !mcsema_real_eip !190
  %1272 = icmp eq i32 %1261, 1, !mcsema_real_eip !190
  %1273 = load i1, i1* %OF, !mcsema_real_eip !190
  %1274 = and i32 %ECX_val.275, -2147483648, !mcsema_real_eip !190
  %1275 = icmp ne i32 %1274, 0, !mcsema_real_eip !190
  %1276 = select i1 %1272, i1 %1275, i1 %1273, !mcsema_real_eip !190
  store i1 %1276, i1* %OF, !mcsema_real_eip !190
  store i1 %1270, i1* %CF, !mcsema_real_eip !190
  %1277 = load i1, i1* %ZF, !mcsema_real_eip !190
  %1278 = icmp eq i32 %1271, 0, !mcsema_real_eip !190
  %1279 = select i1 %1263, i1 %1278, i1 %1277, !mcsema_real_eip !190
  store i1 %1279, i1* %ZF, !mcsema_real_eip !190
  %1280 = load i1, i1* %SF, !mcsema_real_eip !190
  %1281 = icmp slt i32 %1271, 0, !mcsema_real_eip !190
  %1282 = select i1 %1263, i1 %1281, i1 %1280, !mcsema_real_eip !190
  store i1 %1282, i1* %SF, !mcsema_real_eip !190
  %1283 = load i1, i1* %PF, !mcsema_real_eip !190
  %1284 = trunc i32 %1271 to i8, !mcsema_real_eip !190
  %1285 = call i8 @llvm.ctpop.i8(i8 %1284), !mcsema_real_eip !190
  %1286 = trunc i8 %1285 to i1, !mcsema_real_eip !190
  %1287 = xor i1 %1286, true, !mcsema_real_eip !190
  store i1 %1287, i1* %PF, !mcsema_real_eip !190
  %1288 = load i1, i1* %PF, !mcsema_real_eip !190
  %1289 = select i1 %1263, i1 %1288, i1 %1283, !mcsema_real_eip !190
  store i1 %1289, i1* %PF, !mcsema_real_eip !190
  %1290 = zext i32 %1271 to i64, !mcsema_real_eip !190
  store i64 %1290, i64* %XCX, !mcsema_real_eip !190
  %RBP_val.276 = load i64, i64* %XBP, !mcsema_real_eip !191
  %1291 = add i64 %RBP_val.276, -60, !mcsema_real_eip !191
  %1292 = inttoptr i64 %1291 to i64*, !mcsema_real_eip !191
  %ECX.277 = bitcast i64* %XCX to i32*, !mcsema_real_eip !191
  %ECX_val.278 = load i32, i32* %ECX.277, !mcsema_real_eip !191
  %1293 = ptrtoint i64* %1292 to i64, !mcsema_real_eip !191
  %1294 = inttoptr i64 %1293 to i32*, !mcsema_real_eip !191
  store i32 %ECX_val.278, i32* %1294, !mcsema_real_eip !191
  %RBP_val.279 = load i64, i64* %XBP, !mcsema_real_eip !192
  %1295 = add i64 %RBP_val.279, -60, !mcsema_real_eip !192
  %1296 = inttoptr i64 %1295 to i64*, !mcsema_real_eip !192
  %1297 = ptrtoint i64* %1296 to i64, !mcsema_real_eip !192
  %1298 = inttoptr i64 %1297 to i32*, !mcsema_real_eip !192
  %1299 = load i32, i32* %1298, !mcsema_real_eip !192
  %1300 = zext i32 %1299 to i64, !mcsema_real_eip !192
  store i64 %1300, i64* %XCX, !mcsema_real_eip !192
  %ECX.280 = bitcast i64* %XCX to i32*, !mcsema_real_eip !193
  %ECX_val.281 = load i32, i32* %ECX.280, !mcsema_real_eip !193
  %1301 = sub i32 %ECX_val.281, 226, !mcsema_real_eip !193
  %1302 = xor i32 %1301, %ECX_val.281, !mcsema_real_eip !193
  %1303 = xor i32 %1302, 226, !mcsema_real_eip !193
  %1304 = and i32 %1303, 16, !mcsema_real_eip !193
  %1305 = icmp ne i32 %1304, 0, !mcsema_real_eip !193
  store i1 %1305, i1* %AF, !mcsema_real_eip !193
  %1306 = trunc i32 %1301 to i8, !mcsema_real_eip !193
  %1307 = call i8 @llvm.ctpop.i8(i8 %1306), !mcsema_real_eip !193
  %1308 = trunc i8 %1307 to i1, !mcsema_real_eip !193
  %1309 = xor i1 %1308, true, !mcsema_real_eip !193
  store i1 %1309, i1* %PF, !mcsema_real_eip !193
  %1310 = icmp eq i32 %1301, 0, !mcsema_real_eip !193
  store i1 %1310, i1* %ZF, !mcsema_real_eip !193
  %1311 = lshr i32 %1301, 31, !mcsema_real_eip !193
  %1312 = trunc i32 %1311 to i1, !mcsema_real_eip !193
  store i1 %1312, i1* %SF, !mcsema_real_eip !193
  %1313 = icmp ult i32 %ECX_val.281, 226, !mcsema_real_eip !193
  store i1 %1313, i1* %CF, !mcsema_real_eip !193
  %1314 = xor i32 %ECX_val.281, 226, !mcsema_real_eip !193
  %1315 = xor i32 %ECX_val.281, %1301, !mcsema_real_eip !193
  %1316 = and i32 %1314, %1315, !mcsema_real_eip !193
  %1317 = lshr i32 %1316, 31, !mcsema_real_eip !193
  %1318 = trunc i32 %1317 to i1, !mcsema_real_eip !193
  store i1 %1318, i1* %OF, !mcsema_real_eip !193
  %1319 = zext i32 %1301 to i64, !mcsema_real_eip !193
  store i64 %1319, i64* %XCX, !mcsema_real_eip !193
  %RBP_val.282 = load i64, i64* %XBP, !mcsema_real_eip !194
  %1320 = add i64 %RBP_val.282, -60, !mcsema_real_eip !194
  %1321 = inttoptr i64 %1320 to i64*, !mcsema_real_eip !194
  %ECX.283 = bitcast i64* %XCX to i32*, !mcsema_real_eip !194
  %ECX_val.284 = load i32, i32* %ECX.283, !mcsema_real_eip !194
  %1322 = ptrtoint i64* %1321 to i64, !mcsema_real_eip !194
  %1323 = inttoptr i64 %1322 to i32*, !mcsema_real_eip !194
  store i32 %ECX_val.284, i32* %1323, !mcsema_real_eip !194
  %RBP_val.285 = load i64, i64* %XBP, !mcsema_real_eip !195
  %1324 = add i64 %RBP_val.285, -60, !mcsema_real_eip !195
  %1325 = inttoptr i64 %1324 to i64*, !mcsema_real_eip !195
  %1326 = ptrtoint i64* %1325 to i64, !mcsema_real_eip !195
  %1327 = inttoptr i64 %1326 to i32*, !mcsema_real_eip !195
  %1328 = load i32, i32* %1327, !mcsema_real_eip !195
  %1329 = zext i32 %1328 to i64, !mcsema_real_eip !195
  store i64 %1329, i64* %XCX, !mcsema_real_eip !195
  %RBP_val.286 = load i64, i64* %XBP, !mcsema_real_eip !196
  %1330 = add i64 %RBP_val.286, -68, !mcsema_real_eip !196
  %1331 = inttoptr i64 %1330 to i64*, !mcsema_real_eip !196
  %EAX.287 = bitcast i64* %XAX to i32*, !mcsema_real_eip !196
  %EAX_val.288 = load i32, i32* %EAX.287, !mcsema_real_eip !196
  %1332 = ptrtoint i64* %1331 to i64, !mcsema_real_eip !196
  %1333 = inttoptr i64 %1332 to i32*, !mcsema_real_eip !196
  store i32 %EAX_val.288, i32* %1333, !mcsema_real_eip !196
  %ECX.289 = bitcast i64* %XCX to i32*, !mcsema_real_eip !197
  %ECX_val.290 = load i32, i32* %ECX.289, !mcsema_real_eip !197
  %1334 = zext i32 %ECX_val.290 to i64, !mcsema_real_eip !197
  store i64 %1334, i64* %XAX, !mcsema_real_eip !197
  %EDX.291 = bitcast i64* %XDX to i32*, !mcsema_real_eip !198
  %EDX_val.292 = load i32, i32* %EDX.291, !mcsema_real_eip !198
  %EDX.293 = bitcast i64* %XDX to i32*, !mcsema_real_eip !198
  %EDX_val.294 = load i32, i32* %EDX.293, !mcsema_real_eip !198
  %1335 = xor i32 %EDX_val.292, %EDX_val.294, !mcsema_real_eip !198
  store i1 false, i1* %CF, !mcsema_real_eip !198
  store i1 false, i1* %OF, !mcsema_real_eip !198
  %1336 = lshr i32 %1335, 31, !mcsema_real_eip !198
  %1337 = trunc i32 %1336 to i1, !mcsema_real_eip !198
  store i1 %1337, i1* %SF, !mcsema_real_eip !198
  %1338 = icmp eq i32 %1335, 0, !mcsema_real_eip !198
  store i1 %1338, i1* %ZF, !mcsema_real_eip !198
  %1339 = trunc i32 %1335 to i8, !mcsema_real_eip !198
  %1340 = call i8 @llvm.ctpop.i8(i8 %1339), !mcsema_real_eip !198
  %1341 = trunc i8 %1340 to i1, !mcsema_real_eip !198
  %1342 = xor i1 %1341, true, !mcsema_real_eip !198
  store i1 %1342, i1* %PF, !mcsema_real_eip !198
  store i1 undef, i1* %AF, !mcsema_real_eip !198
  %1343 = zext i32 %1335 to i64, !mcsema_real_eip !198
  store i64 %1343, i64* %XDX, !mcsema_real_eip !198
  %RBP_val.295 = load i64, i64* %XBP, !mcsema_real_eip !199
  %1344 = add i64 %RBP_val.295, -68, !mcsema_real_eip !199
  %1345 = inttoptr i64 %1344 to i64*, !mcsema_real_eip !199
  %1346 = ptrtoint i64* %1345 to i64, !mcsema_real_eip !199
  %1347 = inttoptr i64 %1346 to i32*, !mcsema_real_eip !199
  %1348 = load i32, i32* %1347, !mcsema_real_eip !199
  %1349 = zext i32 %1348 to i64, !mcsema_real_eip !199
  store i64 %1349, i64* %XCX, !mcsema_real_eip !199
  %ECX.296 = bitcast i64* %XCX to i32*, !mcsema_real_eip !200
  %ECX_val.297 = load i32, i32* %ECX.296, !mcsema_real_eip !200
  %EAX.298 = bitcast i64* %XAX to i32*, !mcsema_real_eip !200
  %EAX_val.299 = load i32, i32* %EAX.298, !mcsema_real_eip !200
  %EDX.300 = bitcast i64* %XDX to i32*, !mcsema_real_eip !200
  %EDX_val.301 = load i32, i32* %EDX.300, !mcsema_real_eip !200
  %1350 = zext i32 %EDX_val.301 to i64, !mcsema_real_eip !200
  %1351 = shl i64 %1350, 32, !mcsema_real_eip !200
  %1352 = sext i32 %EAX_val.299 to i64, !mcsema_real_eip !200
  %1353 = or i64 %1351, %1352, !mcsema_real_eip !200
  %1354 = zext i32 %ECX_val.297 to i64, !mcsema_real_eip !200
  %1355 = udiv i64 %1353, %1354, !mcsema_real_eip !200
  %1356 = urem i64 %1353, %1354, !mcsema_real_eip !200
  %1357 = trunc i64 %1356 to i32, !mcsema_real_eip !200
  %1358 = trunc i64 %1355 to i32, !mcsema_real_eip !200
  %1359 = zext i32 %1357 to i64, !mcsema_real_eip !200
  store i64 %1359, i64* %XDX, !mcsema_real_eip !200
  %1360 = zext i32 %1358 to i64, !mcsema_real_eip !200
  store i64 %1360, i64* %XAX, !mcsema_real_eip !200
  %RBP_val.302 = load i64, i64* %XBP, !mcsema_real_eip !201
  %1361 = add i64 %RBP_val.302, -60, !mcsema_real_eip !201
  %1362 = inttoptr i64 %1361 to i64*, !mcsema_real_eip !201
  %EAX.303 = bitcast i64* %XAX to i32*, !mcsema_real_eip !201
  %EAX_val.304 = load i32, i32* %EAX.303, !mcsema_real_eip !201
  %1363 = ptrtoint i64* %1362 to i64, !mcsema_real_eip !201
  %1364 = inttoptr i64 %1363 to i32*, !mcsema_real_eip !201
  store i32 %EAX_val.304, i32* %1364, !mcsema_real_eip !201
  %RBP_val.305 = load i64, i64* %XBP, !mcsema_real_eip !202
  %1365 = add i64 %RBP_val.305, -60, !mcsema_real_eip !202
  %1366 = inttoptr i64 %1365 to i64*, !mcsema_real_eip !202
  %1367 = ptrtoint i64* %1366 to i64, !mcsema_real_eip !202
  %1368 = inttoptr i64 %1367 to i32*, !mcsema_real_eip !202
  %1369 = load i32, i32* %1368, !mcsema_real_eip !202
  %1370 = sub i32 %1369, 3, !mcsema_real_eip !202
  %1371 = xor i32 %1370, %1369, !mcsema_real_eip !202
  %1372 = xor i32 %1371, 3, !mcsema_real_eip !202
  %1373 = and i32 %1372, 16, !mcsema_real_eip !202
  %1374 = icmp ne i32 %1373, 0, !mcsema_real_eip !202
  store i1 %1374, i1* %AF, !mcsema_real_eip !202
  %1375 = trunc i32 %1370 to i8, !mcsema_real_eip !202
  %1376 = call i8 @llvm.ctpop.i8(i8 %1375), !mcsema_real_eip !202
  %1377 = trunc i8 %1376 to i1, !mcsema_real_eip !202
  %1378 = xor i1 %1377, true, !mcsema_real_eip !202
  store i1 %1378, i1* %PF, !mcsema_real_eip !202
  %1379 = icmp eq i32 %1370, 0, !mcsema_real_eip !202
  store i1 %1379, i1* %ZF, !mcsema_real_eip !202
  %1380 = lshr i32 %1370, 31, !mcsema_real_eip !202
  %1381 = trunc i32 %1380 to i1, !mcsema_real_eip !202
  store i1 %1381, i1* %SF, !mcsema_real_eip !202
  %1382 = icmp ult i32 %1369, 3, !mcsema_real_eip !202
  store i1 %1382, i1* %CF, !mcsema_real_eip !202
  %1383 = xor i32 %1369, 3, !mcsema_real_eip !202
  %1384 = xor i32 %1369, %1370, !mcsema_real_eip !202
  %1385 = and i32 %1383, %1384, !mcsema_real_eip !202
  %1386 = lshr i32 %1385, 31, !mcsema_real_eip !202
  %1387 = trunc i32 %1386 to i1, !mcsema_real_eip !202
  store i1 %1387, i1* %OF, !mcsema_real_eip !202
  %1388 = load i1, i1* %ZF, !mcsema_real_eip !203
  %1389 = icmp eq i1 %1388, true, !mcsema_real_eip !203
  br i1 %1389, label %block_0x343, label %block_0x338, !mcsema_real_eip !203

block_0x338:                                      ; preds = %block_0x2f6
  %RBP_val.306 = load i64, i64* %XBP, !mcsema_real_eip !204
  %1390 = add i64 %RBP_val.306, -60, !mcsema_real_eip !204
  %1391 = inttoptr i64 %1390 to i64*, !mcsema_real_eip !204
  %1392 = ptrtoint i64* %1391 to i64, !mcsema_real_eip !204
  %1393 = inttoptr i64 %1392 to i32*, !mcsema_real_eip !204
  %1394 = load i32, i32* %1393, !mcsema_real_eip !204
  %1395 = zext i32 %1394 to i64, !mcsema_real_eip !204
  store i64 %1395, i64* %XAX, !mcsema_real_eip !204
  %RBP_val.307 = load i64, i64* %XBP, !mcsema_real_eip !205
  %1396 = add i64 %RBP_val.307, -4, !mcsema_real_eip !205
  %1397 = inttoptr i64 %1396 to i64*, !mcsema_real_eip !205
  %EAX.308 = bitcast i64* %XAX to i32*, !mcsema_real_eip !205
  %EAX_val.309 = load i32, i32* %EAX.308, !mcsema_real_eip !205
  %1398 = ptrtoint i64* %1397 to i64, !mcsema_real_eip !205
  %1399 = inttoptr i64 %1398 to i32*, !mcsema_real_eip !205
  store i32 %EAX_val.309, i32* %1399, !mcsema_real_eip !205
  br label %block_0x417, !mcsema_real_eip !206

block_0x343:                                      ; preds = %block_0x2f6
  %1400 = zext i32 4 to i64, !mcsema_real_eip !207
  store i64 %1400, i64* %XDX, !mcsema_real_eip !207
  %RBP_val.310 = load i64, i64* %XBP, !mcsema_real_eip !208
  %1401 = add i64 %RBP_val.310, -20, !mcsema_real_eip !208
  %1402 = inttoptr i64 %1401 to i64*, !mcsema_real_eip !208
  %1403 = ptrtoint i64* %1402 to i64, !mcsema_real_eip !208
  %1404 = inttoptr i64 %1403 to i32*, !mcsema_real_eip !208
  %1405 = load i32, i32* %1404, !mcsema_real_eip !208
  %1406 = zext i32 %1405 to i64, !mcsema_real_eip !208
  store i64 %1406, i64* %XDI, !mcsema_real_eip !208
  %RBP_val.311 = load i64, i64* %XBP, !mcsema_real_eip !209
  %1407 = add i64 %RBP_val.311, -16, !mcsema_real_eip !209
  %1408 = inttoptr i64 %1407 to i64*, !mcsema_real_eip !209
  %1409 = load i64, i64* %1408, !mcsema_real_eip !209
  store i64 %1409, i64* %XAX, !mcsema_real_eip !209
  %RAX_val.312 = load i64, i64* %XAX, !mcsema_real_eip !210
  %1410 = add i64 28, %RAX_val.312, !mcsema_real_eip !210
  %1411 = xor i64 %1410, %RAX_val.312, !mcsema_real_eip !210
  %1412 = xor i64 %1411, 28, !mcsema_real_eip !210
  %1413 = and i64 %1412, 16, !mcsema_real_eip !210
  %1414 = icmp ne i64 %1413, 0, !mcsema_real_eip !210
  store i1 %1414, i1* %AF, !mcsema_real_eip !210
  %1415 = lshr i64 %1410, 63, !mcsema_real_eip !210
  %1416 = trunc i64 %1415 to i1, !mcsema_real_eip !210
  store i1 %1416, i1* %SF, !mcsema_real_eip !210
  %1417 = icmp eq i64 %1410, 0, !mcsema_real_eip !210
  store i1 %1417, i1* %ZF, !mcsema_real_eip !210
  %1418 = xor i64 %RAX_val.312, 28, !mcsema_real_eip !210
  %1419 = xor i64 %1418, -1, !mcsema_real_eip !210
  %1420 = xor i64 %RAX_val.312, %1410, !mcsema_real_eip !210
  %1421 = and i64 %1419, %1420, !mcsema_real_eip !210
  %1422 = lshr i64 %1421, 63, !mcsema_real_eip !210
  %1423 = and i64 %1422, 1, !mcsema_real_eip !210
  %1424 = trunc i64 %1423 to i1, !mcsema_real_eip !210
  store i1 %1424, i1* %OF, !mcsema_real_eip !210
  %1425 = trunc i64 %1410 to i8, !mcsema_real_eip !210
  %1426 = call i8 @llvm.ctpop.i8(i8 %1425), !mcsema_real_eip !210
  %1427 = trunc i8 %1426 to i1, !mcsema_real_eip !210
  %1428 = xor i1 %1427, true, !mcsema_real_eip !210
  store i1 %1428, i1* %PF, !mcsema_real_eip !210
  %1429 = icmp ult i64 %1410, %RAX_val.312, !mcsema_real_eip !210
  store i1 %1429, i1* %CF, !mcsema_real_eip !210
  store i64 %1410, i64* %XAX, !mcsema_real_eip !210
  %RAX_val.313 = load i64, i64* %XAX, !mcsema_real_eip !211
  store i64 %RAX_val.313, i64* %XSI, !mcsema_real_eip !211
  %RDI_val.314 = load i64, i64* %XDI, !mcsema_real_eip !212
  %RSI_val.315 = load i64, i64* %XSI, !mcsema_real_eip !212
  %RDX_val.316 = load i64, i64* %XDX, !mcsema_real_eip !212
  %RSP_val.317 = load i64, i64* %XSP, !mcsema_real_eip !212
  %1430 = sub i64 %RSP_val.317, 8, !mcsema_real_eip !212
  %1431 = inttoptr i64 %1430 to i64*, !mcsema_real_eip !212
  store i64 -2415393069852865332, i64* %1431, !mcsema_real_eip !212
  store i64 %1430, i64* %XSP, !mcsema_real_eip !212
  %1432 = call x86_64_sysvcc i64 @_read_bytes(i64 %RDI_val.314, i64 %RSI_val.315, i64 %RDX_val.316), !mcsema_real_eip !212
  store i64 %1432, i64* %XAX, !mcsema_real_eip !212
  %RBP_val.318 = load i64, i64* %XBP, !mcsema_real_eip !213
  %1433 = add i64 %RBP_val.318, -64, !mcsema_real_eip !213
  %1434 = inttoptr i64 %1433 to i64*, !mcsema_real_eip !213
  %EAX.319 = bitcast i64* %XAX to i32*, !mcsema_real_eip !213
  %EAX_val.320 = load i32, i32* %EAX.319, !mcsema_real_eip !213
  %1435 = ptrtoint i64* %1434 to i64, !mcsema_real_eip !213
  %1436 = inttoptr i64 %1435 to i32*, !mcsema_real_eip !213
  store i32 %EAX_val.320, i32* %1436, !mcsema_real_eip !213
  %RBP_val.321 = load i64, i64* %XBP, !mcsema_real_eip !214
  %1437 = add i64 %RBP_val.321, -16, !mcsema_real_eip !214
  %1438 = inttoptr i64 %1437 to i64*, !mcsema_real_eip !214
  %1439 = load i64, i64* %1438, !mcsema_real_eip !214
  store i64 %1439, i64* %XSI, !mcsema_real_eip !214
  %RSI_val.322 = load i64, i64* %XSI, !mcsema_real_eip !215
  %1440 = add i64 %RSI_val.322, 28, !mcsema_real_eip !215
  %1441 = inttoptr i64 %1440 to i64*, !mcsema_real_eip !215
  %1442 = ptrtoint i64* %1441 to i64, !mcsema_real_eip !215
  %1443 = inttoptr i64 %1442 to i8*, !mcsema_real_eip !215
  %1444 = load i8, i8* %1443, !mcsema_real_eip !215
  %1445 = sext i8 %1444 to i32, !mcsema_real_eip !215
  %1446 = zext i32 %1445 to i64, !mcsema_real_eip !215
  store i64 %1446, i64* %XAX, !mcsema_real_eip !215
  %EAX.323 = bitcast i64* %XAX to i32*, !mcsema_real_eip !216
  %EAX_val.324 = load i32, i32* %EAX.323, !mcsema_real_eip !216
  %1447 = sub i32 %EAX_val.324, 100, !mcsema_real_eip !216
  %1448 = xor i32 %1447, %EAX_val.324, !mcsema_real_eip !216
  %1449 = xor i32 %1448, 100, !mcsema_real_eip !216
  %1450 = and i32 %1449, 16, !mcsema_real_eip !216
  %1451 = icmp ne i32 %1450, 0, !mcsema_real_eip !216
  store i1 %1451, i1* %AF, !mcsema_real_eip !216
  %1452 = trunc i32 %1447 to i8, !mcsema_real_eip !216
  %1453 = call i8 @llvm.ctpop.i8(i8 %1452), !mcsema_real_eip !216
  %1454 = trunc i8 %1453 to i1, !mcsema_real_eip !216
  %1455 = xor i1 %1454, true, !mcsema_real_eip !216
  store i1 %1455, i1* %PF, !mcsema_real_eip !216
  %1456 = icmp eq i32 %1447, 0, !mcsema_real_eip !216
  store i1 %1456, i1* %ZF, !mcsema_real_eip !216
  %1457 = lshr i32 %1447, 31, !mcsema_real_eip !216
  %1458 = trunc i32 %1457 to i1, !mcsema_real_eip !216
  store i1 %1458, i1* %SF, !mcsema_real_eip !216
  %1459 = icmp ult i32 %EAX_val.324, 100, !mcsema_real_eip !216
  store i1 %1459, i1* %CF, !mcsema_real_eip !216
  %1460 = xor i32 %EAX_val.324, 100, !mcsema_real_eip !216
  %1461 = xor i32 %EAX_val.324, %1447, !mcsema_real_eip !216
  %1462 = and i32 %1460, %1461, !mcsema_real_eip !216
  %1463 = lshr i32 %1462, 31, !mcsema_real_eip !216
  %1464 = trunc i32 %1463 to i1, !mcsema_real_eip !216
  store i1 %1464, i1* %OF, !mcsema_real_eip !216
  %1465 = load i1, i1* %ZF, !mcsema_real_eip !217
  %1466 = icmp eq i1 %1465, false, !mcsema_real_eip !217
  br i1 %1466, label %block_0x38e, label %block_0x36f, !mcsema_real_eip !217

block_0x36f:                                      ; preds = %block_0x343
  %RBP_val.325 = load i64, i64* %XBP, !mcsema_real_eip !218
  %1467 = add i64 %RBP_val.325, -16, !mcsema_real_eip !218
  %1468 = inttoptr i64 %1467 to i64*, !mcsema_real_eip !218
  %1469 = load i64, i64* %1468, !mcsema_real_eip !218
  store i64 %1469, i64* %XAX, !mcsema_real_eip !218
  %RAX_val.326 = load i64, i64* %XAX, !mcsema_real_eip !219
  %1470 = add i64 %RAX_val.326, 29, !mcsema_real_eip !219
  %1471 = inttoptr i64 %1470 to i64*, !mcsema_real_eip !219
  %1472 = ptrtoint i64* %1471 to i64, !mcsema_real_eip !219
  %1473 = inttoptr i64 %1472 to i8*, !mcsema_real_eip !219
  %1474 = load i8, i8* %1473, !mcsema_real_eip !219
  %1475 = sext i8 %1474 to i32, !mcsema_real_eip !219
  %1476 = zext i32 %1475 to i64, !mcsema_real_eip !219
  store i64 %1476, i64* %XCX, !mcsema_real_eip !219
  %ECX.327 = bitcast i64* %XCX to i32*, !mcsema_real_eip !220
  %ECX_val.328 = load i32, i32* %ECX.327, !mcsema_real_eip !220
  %1477 = sub i32 %ECX_val.328, 100, !mcsema_real_eip !220
  %1478 = xor i32 %1477, %ECX_val.328, !mcsema_real_eip !220
  %1479 = xor i32 %1478, 100, !mcsema_real_eip !220
  %1480 = and i32 %1479, 16, !mcsema_real_eip !220
  %1481 = icmp ne i32 %1480, 0, !mcsema_real_eip !220
  store i1 %1481, i1* %AF, !mcsema_real_eip !220
  %1482 = trunc i32 %1477 to i8, !mcsema_real_eip !220
  %1483 = call i8 @llvm.ctpop.i8(i8 %1482), !mcsema_real_eip !220
  %1484 = trunc i8 %1483 to i1, !mcsema_real_eip !220
  %1485 = xor i1 %1484, true, !mcsema_real_eip !220
  store i1 %1485, i1* %PF, !mcsema_real_eip !220
  %1486 = icmp eq i32 %1477, 0, !mcsema_real_eip !220
  store i1 %1486, i1* %ZF, !mcsema_real_eip !220
  %1487 = lshr i32 %1477, 31, !mcsema_real_eip !220
  %1488 = trunc i32 %1487 to i1, !mcsema_real_eip !220
  store i1 %1488, i1* %SF, !mcsema_real_eip !220
  %1489 = icmp ult i32 %ECX_val.328, 100, !mcsema_real_eip !220
  store i1 %1489, i1* %CF, !mcsema_real_eip !220
  %1490 = xor i32 %ECX_val.328, 100, !mcsema_real_eip !220
  %1491 = xor i32 %ECX_val.328, %1477, !mcsema_real_eip !220
  %1492 = and i32 %1490, %1491, !mcsema_real_eip !220
  %1493 = lshr i32 %1492, 31, !mcsema_real_eip !220
  %1494 = trunc i32 %1493 to i1, !mcsema_real_eip !220
  store i1 %1494, i1* %OF, !mcsema_real_eip !220
  %1495 = load i1, i1* %ZF, !mcsema_real_eip !221
  %1496 = icmp eq i1 %1495, false, !mcsema_real_eip !221
  br i1 %1496, label %block_0x38e, label %block_0x380, !mcsema_real_eip !221

block_0x380:                                      ; preds = %block_0x36f
  %RBP_val.329 = load i64, i64* %XBP, !mcsema_real_eip !222
  %1497 = add i64 %RBP_val.329, -64, !mcsema_real_eip !222
  %1498 = inttoptr i64 %1497 to i64*, !mcsema_real_eip !222
  %1499 = ptrtoint i64* %1498 to i64, !mcsema_real_eip !222
  %1500 = inttoptr i64 %1499 to i32*, !mcsema_real_eip !222
  %1501 = load i32, i32* %1500, !mcsema_real_eip !222
  %1502 = zext i32 %1501 to i64, !mcsema_real_eip !222
  store i64 %1502, i64* %XAX, !mcsema_real_eip !222
  %RBP_val.330 = load i64, i64* %XBP, !mcsema_real_eip !223
  %1503 = add i64 %RBP_val.330, -20, !mcsema_real_eip !223
  %1504 = inttoptr i64 %1503 to i64*, !mcsema_real_eip !223
  %1505 = ptrtoint i64* %1504 to i64, !mcsema_real_eip !223
  %1506 = inttoptr i64 %1505 to i32*, !mcsema_real_eip !223
  %1507 = load i32, i32* %1506, !mcsema_real_eip !223
  %EAX.331 = bitcast i64* %XAX to i32*, !mcsema_real_eip !223
  %EAX_val.332 = load i32, i32* %EAX.331, !mcsema_real_eip !223
  %1508 = xor i32 %1507, %EAX_val.332, !mcsema_real_eip !223
  store i1 false, i1* %CF, !mcsema_real_eip !223
  store i1 false, i1* %OF, !mcsema_real_eip !223
  %1509 = lshr i32 %1508, 31, !mcsema_real_eip !223
  %1510 = trunc i32 %1509 to i1, !mcsema_real_eip !223
  store i1 %1510, i1* %SF, !mcsema_real_eip !223
  %1511 = icmp eq i32 %1508, 0, !mcsema_real_eip !223
  store i1 %1511, i1* %ZF, !mcsema_real_eip !223
  %1512 = trunc i32 %1508 to i8, !mcsema_real_eip !223
  %1513 = call i8 @llvm.ctpop.i8(i8 %1512), !mcsema_real_eip !223
  %1514 = trunc i8 %1513 to i1, !mcsema_real_eip !223
  %1515 = xor i1 %1514, true, !mcsema_real_eip !223
  store i1 %1515, i1* %PF, !mcsema_real_eip !223
  store i1 undef, i1* %AF, !mcsema_real_eip !223
  %1516 = zext i32 %1508 to i64, !mcsema_real_eip !223
  store i64 %1516, i64* %XAX, !mcsema_real_eip !223
  %RBP_val.333 = load i64, i64* %XBP, !mcsema_real_eip !224
  %1517 = add i64 %RBP_val.333, -20, !mcsema_real_eip !224
  %1518 = inttoptr i64 %1517 to i64*, !mcsema_real_eip !224
  %EAX.334 = bitcast i64* %XAX to i32*, !mcsema_real_eip !224
  %EAX_val.335 = load i32, i32* %EAX.334, !mcsema_real_eip !224
  %1519 = ptrtoint i64* %1518 to i64, !mcsema_real_eip !224
  %1520 = inttoptr i64 %1519 to i32*, !mcsema_real_eip !224
  store i32 %EAX_val.335, i32* %1520, !mcsema_real_eip !224
  br label %block_0x411, !mcsema_real_eip !225

block_0x38e:                                      ; preds = %block_0x36f, %block_0x343
  %RBP_val.336 = load i64, i64* %XBP, !mcsema_real_eip !226
  %1521 = add i64 %RBP_val.336, -16, !mcsema_real_eip !226
  %1522 = inttoptr i64 %1521 to i64*, !mcsema_real_eip !226
  %1523 = load i64, i64* %1522, !mcsema_real_eip !226
  store i64 %1523, i64* %XAX, !mcsema_real_eip !226
  %RAX_val.337 = load i64, i64* %XAX, !mcsema_real_eip !227
  %1524 = add i64 %RAX_val.337, 28, !mcsema_real_eip !227
  %1525 = inttoptr i64 %1524 to i64*, !mcsema_real_eip !227
  %1526 = ptrtoint i64* %1525 to i64, !mcsema_real_eip !227
  %1527 = inttoptr i64 %1526 to i8*, !mcsema_real_eip !227
  %1528 = load i8, i8* %1527, !mcsema_real_eip !227
  %1529 = sext i8 %1528 to i32, !mcsema_real_eip !227
  %1530 = zext i32 %1529 to i64, !mcsema_real_eip !227
  store i64 %1530, i64* %XCX, !mcsema_real_eip !227
  %RBP_val.338 = load i64, i64* %XBP, !mcsema_real_eip !228
  %1531 = add i64 %RBP_val.338, -16, !mcsema_real_eip !228
  %1532 = inttoptr i64 %1531 to i64*, !mcsema_real_eip !228
  %1533 = load i64, i64* %1532, !mcsema_real_eip !228
  store i64 %1533, i64* %XAX, !mcsema_real_eip !228
  %RAX_val.339 = load i64, i64* %XAX, !mcsema_real_eip !229
  %1534 = add i64 %RAX_val.339, 29, !mcsema_real_eip !229
  %1535 = inttoptr i64 %1534 to i64*, !mcsema_real_eip !229
  %1536 = ptrtoint i64* %1535 to i64, !mcsema_real_eip !229
  %1537 = inttoptr i64 %1536 to i8*, !mcsema_real_eip !229
  %1538 = load i8, i8* %1537, !mcsema_real_eip !229
  %1539 = sext i8 %1538 to i32, !mcsema_real_eip !229
  %1540 = zext i32 %1539 to i64, !mcsema_real_eip !229
  store i64 %1540, i64* %XDX, !mcsema_real_eip !229
  %ECX.340 = bitcast i64* %XCX to i32*, !mcsema_real_eip !230
  %ECX_val.341 = load i32, i32* %ECX.340, !mcsema_real_eip !230
  %EDX.342 = bitcast i64* %XDX to i32*, !mcsema_real_eip !230
  %EDX_val.343 = load i32, i32* %EDX.342, !mcsema_real_eip !230
  %1541 = sub i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  %1542 = xor i32 %1541, %ECX_val.341, !mcsema_real_eip !230
  %1543 = xor i32 %1542, %EDX_val.343, !mcsema_real_eip !230
  %1544 = and i32 %1543, 16, !mcsema_real_eip !230
  %1545 = icmp ne i32 %1544, 0, !mcsema_real_eip !230
  store i1 %1545, i1* %AF, !mcsema_real_eip !230
  %1546 = trunc i32 %1541 to i8, !mcsema_real_eip !230
  %1547 = call i8 @llvm.ctpop.i8(i8 %1546), !mcsema_real_eip !230
  %1548 = trunc i8 %1547 to i1, !mcsema_real_eip !230
  %1549 = xor i1 %1548, true, !mcsema_real_eip !230
  store i1 %1549, i1* %PF, !mcsema_real_eip !230
  %1550 = icmp eq i32 %1541, 0, !mcsema_real_eip !230
  store i1 %1550, i1* %ZF, !mcsema_real_eip !230
  %1551 = lshr i32 %1541, 31, !mcsema_real_eip !230
  %1552 = trunc i32 %1551 to i1, !mcsema_real_eip !230
  store i1 %1552, i1* %SF, !mcsema_real_eip !230
  %1553 = icmp ult i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  store i1 %1553, i1* %CF, !mcsema_real_eip !230
  %1554 = xor i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  %1555 = xor i32 %ECX_val.341, %1541, !mcsema_real_eip !230
  %1556 = and i32 %1554, %1555, !mcsema_real_eip !230
  %1557 = lshr i32 %1556, 31, !mcsema_real_eip !230
  %1558 = trunc i32 %1557 to i1, !mcsema_real_eip !230
  store i1 %1558, i1* %OF, !mcsema_real_eip !230
  %1559 = load i1, i1* %ZF, !mcsema_real_eip !231
  %1560 = icmp eq i1 %1559, false, !mcsema_real_eip !231
  br i1 %1560, label %block_0x406, label %block_0x3a6, !mcsema_real_eip !231

block_0x3a6:                                      ; preds = %block_0x38e
  %1561 = zext i32 15 to i64, !mcsema_real_eip !232
  store i64 %1561, i64* %XAX, !mcsema_real_eip !232
  %RBP_val.344 = load i64, i64* %XBP, !mcsema_real_eip !233
  %1562 = add i64 %RBP_val.344, -16, !mcsema_real_eip !233
  %1563 = inttoptr i64 %1562 to i64*, !mcsema_real_eip !233
  %1564 = load i64, i64* %1563, !mcsema_real_eip !233
  store i64 %1564, i64* %XCX, !mcsema_real_eip !233
  %RCX_val.345 = load i64, i64* %XCX, !mcsema_real_eip !234
  %1565 = add i64 %RCX_val.345, 31, !mcsema_real_eip !234
  %1566 = inttoptr i64 %1565 to i64*, !mcsema_real_eip !234
  %1567 = ptrtoint i64* %1566 to i64, !mcsema_real_eip !234
  %1568 = inttoptr i64 %1567 to i8*, !mcsema_real_eip !234
  %1569 = load i8, i8* %1568, !mcsema_real_eip !234
  %1570 = sext i8 %1569 to i32, !mcsema_real_eip !234
  %1571 = zext i32 %1570 to i64, !mcsema_real_eip !234
  store i64 %1571, i64* %XDX, !mcsema_real_eip !234
  %RBP_val.346 = load i64, i64* %XBP, !mcsema_real_eip !235
  %1572 = add i64 %RBP_val.346, -16, !mcsema_real_eip !235
  %1573 = inttoptr i64 %1572 to i64*, !mcsema_real_eip !235
  %1574 = load i64, i64* %1573, !mcsema_real_eip !235
  store i64 %1574, i64* %XCX, !mcsema_real_eip !235
  %RCX_val.347 = load i64, i64* %XCX, !mcsema_real_eip !236
  %1575 = add i64 %RCX_val.347, 30, !mcsema_real_eip !236
  %1576 = inttoptr i64 %1575 to i64*, !mcsema_real_eip !236
  %1577 = ptrtoint i64* %1576 to i64, !mcsema_real_eip !236
  %1578 = inttoptr i64 %1577 to i8*, !mcsema_real_eip !236
  %1579 = load i8, i8* %1578, !mcsema_real_eip !236
  %1580 = sext i8 %1579 to i32, !mcsema_real_eip !236
  %1581 = zext i32 %1580 to i64, !mcsema_real_eip !236
  store i64 %1581, i64* %XSI, !mcsema_real_eip !236
  %EDX.348 = bitcast i64* %XDX to i32*, !mcsema_real_eip !237
  %EDX_val.349 = load i32, i32* %EDX.348, !mcsema_real_eip !237
  %ESI.350 = bitcast i64* %XSI to i32*, !mcsema_real_eip !237
  %ESI_val.351 = load i32, i32* %ESI.350, !mcsema_real_eip !237
  %1582 = sub i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  %1583 = xor i32 %1582, %EDX_val.349, !mcsema_real_eip !237
  %1584 = xor i32 %1583, %ESI_val.351, !mcsema_real_eip !237
  %1585 = and i32 %1584, 16, !mcsema_real_eip !237
  %1586 = icmp ne i32 %1585, 0, !mcsema_real_eip !237
  store i1 %1586, i1* %AF, !mcsema_real_eip !237
  %1587 = trunc i32 %1582 to i8, !mcsema_real_eip !237
  %1588 = call i8 @llvm.ctpop.i8(i8 %1587), !mcsema_real_eip !237
  %1589 = trunc i8 %1588 to i1, !mcsema_real_eip !237
  %1590 = xor i1 %1589, true, !mcsema_real_eip !237
  store i1 %1590, i1* %PF, !mcsema_real_eip !237
  %1591 = icmp eq i32 %1582, 0, !mcsema_real_eip !237
  store i1 %1591, i1* %ZF, !mcsema_real_eip !237
  %1592 = lshr i32 %1582, 31, !mcsema_real_eip !237
  %1593 = trunc i32 %1592 to i1, !mcsema_real_eip !237
  store i1 %1593, i1* %SF, !mcsema_real_eip !237
  %1594 = icmp ult i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  store i1 %1594, i1* %CF, !mcsema_real_eip !237
  %1595 = xor i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  %1596 = xor i32 %EDX_val.349, %1582, !mcsema_real_eip !237
  %1597 = and i32 %1595, %1596, !mcsema_real_eip !237
  %1598 = lshr i32 %1597, 31, !mcsema_real_eip !237
  %1599 = trunc i32 %1598 to i1, !mcsema_real_eip !237
  store i1 %1599, i1* %OF, !mcsema_real_eip !237
  %1600 = zext i32 %1582 to i64, !mcsema_real_eip !237
  store i64 %1600, i64* %XDX, !mcsema_real_eip !237
  %EAX.352 = bitcast i64* %XAX to i32*, !mcsema_real_eip !238
  %EAX_val.353 = load i32, i32* %EAX.352, !mcsema_real_eip !238
  %EDX.354 = bitcast i64* %XDX to i32*, !mcsema_real_eip !238
  %EDX_val.355 = load i32, i32* %EDX.354, !mcsema_real_eip !238
  %1601 = sub i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  %1602 = xor i32 %1601, %EAX_val.353, !mcsema_real_eip !238
  %1603 = xor i32 %1602, %EDX_val.355, !mcsema_real_eip !238
  %1604 = and i32 %1603, 16, !mcsema_real_eip !238
  %1605 = icmp ne i32 %1604, 0, !mcsema_real_eip !238
  store i1 %1605, i1* %AF, !mcsema_real_eip !238
  %1606 = trunc i32 %1601 to i8, !mcsema_real_eip !238
  %1607 = call i8 @llvm.ctpop.i8(i8 %1606), !mcsema_real_eip !238
  %1608 = trunc i8 %1607 to i1, !mcsema_real_eip !238
  %1609 = xor i1 %1608, true, !mcsema_real_eip !238
  store i1 %1609, i1* %PF, !mcsema_real_eip !238
  %1610 = icmp eq i32 %1601, 0, !mcsema_real_eip !238
  store i1 %1610, i1* %ZF, !mcsema_real_eip !238
  %1611 = lshr i32 %1601, 31, !mcsema_real_eip !238
  %1612 = trunc i32 %1611 to i1, !mcsema_real_eip !238
  store i1 %1612, i1* %SF, !mcsema_real_eip !238
  %1613 = icmp ult i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  store i1 %1613, i1* %CF, !mcsema_real_eip !238
  %1614 = xor i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  %1615 = xor i32 %EAX_val.353, %1601, !mcsema_real_eip !238
  %1616 = and i32 %1614, %1615, !mcsema_real_eip !238
  %1617 = lshr i32 %1616, 31, !mcsema_real_eip !238
  %1618 = trunc i32 %1617 to i1, !mcsema_real_eip !238
  store i1 %1618, i1* %OF, !mcsema_real_eip !238
  %1619 = zext i32 %1601 to i64, !mcsema_real_eip !238
  store i64 %1619, i64* %XAX, !mcsema_real_eip !238
  %RBP_val.356 = load i64, i64* %XBP, !mcsema_real_eip !239
  %1620 = add i64 %RBP_val.356, -20, !mcsema_real_eip !239
  %1621 = inttoptr i64 %1620 to i64*, !mcsema_real_eip !239
  %1622 = ptrtoint i64* %1621 to i64, !mcsema_real_eip !239
  %1623 = inttoptr i64 %1622 to i32*, !mcsema_real_eip !239
  %1624 = load i32, i32* %1623, !mcsema_real_eip !239
  %EAX.357 = bitcast i64* %XAX to i32*, !mcsema_real_eip !239
  %EAX_val.358 = load i32, i32* %EAX.357, !mcsema_real_eip !239
  %1625 = add i32 %EAX_val.358, %1624, !mcsema_real_eip !239
  %1626 = xor i32 %1625, %1624, !mcsema_real_eip !239
  %1627 = xor i32 %1626, %EAX_val.358, !mcsema_real_eip !239
  %1628 = and i32 %1627, 16, !mcsema_real_eip !239
  %1629 = icmp ne i32 %1628, 0, !mcsema_real_eip !239
  store i1 %1629, i1* %AF, !mcsema_real_eip !239
  %1630 = lshr i32 %1625, 31, !mcsema_real_eip !239
  %1631 = trunc i32 %1630 to i1, !mcsema_real_eip !239
  store i1 %1631, i1* %SF, !mcsema_real_eip !239
  %1632 = icmp eq i32 %1625, 0, !mcsema_real_eip !239
  store i1 %1632, i1* %ZF, !mcsema_real_eip !239
  %1633 = xor i32 %1624, %EAX_val.358, !mcsema_real_eip !239
  %1634 = xor i32 %1633, -1, !mcsema_real_eip !239
  %1635 = xor i32 %1624, %1625, !mcsema_real_eip !239
  %1636 = and i32 %1634, %1635, !mcsema_real_eip !239
  %1637 = lshr i32 %1636, 31, !mcsema_real_eip !239
  %1638 = and i32 %1637, 1, !mcsema_real_eip !239
  %1639 = trunc i32 %1638 to i1, !mcsema_real_eip !239
  store i1 %1639, i1* %OF, !mcsema_real_eip !239
  %1640 = trunc i32 %1625 to i8, !mcsema_real_eip !239
  %1641 = call i8 @llvm.ctpop.i8(i8 %1640), !mcsema_real_eip !239
  %1642 = trunc i8 %1641 to i1, !mcsema_real_eip !239
  %1643 = xor i1 %1642, true, !mcsema_real_eip !239
  store i1 %1643, i1* %PF, !mcsema_real_eip !239
  %1644 = icmp ult i32 %1625, %1624, !mcsema_real_eip !239
  store i1 %1644, i1* %CF, !mcsema_real_eip !239
  %1645 = zext i32 %1625 to i64, !mcsema_real_eip !239
  store i64 %1645, i64* %XAX, !mcsema_real_eip !239
  %RBP_val.359 = load i64, i64* %XBP, !mcsema_real_eip !240
  %1646 = add i64 %RBP_val.359, -20, !mcsema_real_eip !240
  %1647 = inttoptr i64 %1646 to i64*, !mcsema_real_eip !240
  %EAX.360 = bitcast i64* %XAX to i32*, !mcsema_real_eip !240
  %EAX_val.361 = load i32, i32* %EAX.360, !mcsema_real_eip !240
  %1648 = ptrtoint i64* %1647 to i64, !mcsema_real_eip !240
  %1649 = inttoptr i64 %1648 to i32*, !mcsema_real_eip !240
  store i32 %EAX_val.361, i32* %1649, !mcsema_real_eip !240
  %RBP_val.362 = load i64, i64* %XBP, !mcsema_real_eip !241
  %1650 = add i64 %RBP_val.362, -16, !mcsema_real_eip !241
  %1651 = inttoptr i64 %1650 to i64*, !mcsema_real_eip !241
  %1652 = load i64, i64* %1651, !mcsema_real_eip !241
  store i64 %1652, i64* %XCX, !mcsema_real_eip !241
  %RCX_val.363 = load i64, i64* %XCX, !mcsema_real_eip !242
  %1653 = add i64 %RCX_val.363, 28, !mcsema_real_eip !242
  %1654 = inttoptr i64 %1653 to i64*, !mcsema_real_eip !242
  %1655 = ptrtoint i64* %1654 to i64, !mcsema_real_eip !242
  %1656 = inttoptr i64 %1655 to i8*, !mcsema_real_eip !242
  %1657 = load i8, i8* %1656, !mcsema_real_eip !242
  %1658 = zext i8 %1657 to i32, !mcsema_real_eip !242
  %1659 = zext i32 %1658 to i64, !mcsema_real_eip !242
  store i64 %1659, i64* %XDI, !mcsema_real_eip !242
  %RDI_val.364 = load i64, i64* %XDI, !mcsema_real_eip !243
  %RSP_val.365 = load i64, i64* %XSP, !mcsema_real_eip !243
  %1660 = sub i64 %RSP_val.365, 8, !mcsema_real_eip !243
  %1661 = inttoptr i64 %1660 to i64*, !mcsema_real_eip !243
  store i64 -2415393069852865332, i64* %1661, !mcsema_real_eip !243
  store i64 %1660, i64* %XSP, !mcsema_real_eip !243
  %1662 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.364), !mcsema_real_eip !243
  store i64 %1662, i64* %XAX, !mcsema_real_eip !243
  %RBP_val.366 = load i64, i64* %XBP, !mcsema_real_eip !244
  %1663 = add i64 %RBP_val.366, -20, !mcsema_real_eip !244
  %1664 = inttoptr i64 %1663 to i64*, !mcsema_real_eip !244
  %1665 = ptrtoint i64* %1664 to i64, !mcsema_real_eip !244
  %1666 = inttoptr i64 %1665 to i32*, !mcsema_real_eip !244
  %1667 = load i32, i32* %1666, !mcsema_real_eip !244
  %1668 = zext i32 %1667 to i64, !mcsema_real_eip !244
  store i64 %1668, i64* %XDX, !mcsema_real_eip !244
  %EDX.367 = bitcast i64* %XDX to i32*, !mcsema_real_eip !245
  %EDX_val.368 = load i32, i32* %EDX.367, !mcsema_real_eip !245
  %EAX.369 = bitcast i64* %XAX to i32*, !mcsema_real_eip !245
  %EAX_val.370 = load i32, i32* %EAX.369, !mcsema_real_eip !245
  %1669 = sub i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  %1670 = xor i32 %1669, %EDX_val.368, !mcsema_real_eip !245
  %1671 = xor i32 %1670, %EAX_val.370, !mcsema_real_eip !245
  %1672 = and i32 %1671, 16, !mcsema_real_eip !245
  %1673 = icmp ne i32 %1672, 0, !mcsema_real_eip !245
  store i1 %1673, i1* %AF, !mcsema_real_eip !245
  %1674 = trunc i32 %1669 to i8, !mcsema_real_eip !245
  %1675 = call i8 @llvm.ctpop.i8(i8 %1674), !mcsema_real_eip !245
  %1676 = trunc i8 %1675 to i1, !mcsema_real_eip !245
  %1677 = xor i1 %1676, true, !mcsema_real_eip !245
  store i1 %1677, i1* %PF, !mcsema_real_eip !245
  %1678 = icmp eq i32 %1669, 0, !mcsema_real_eip !245
  store i1 %1678, i1* %ZF, !mcsema_real_eip !245
  %1679 = lshr i32 %1669, 31, !mcsema_real_eip !245
  %1680 = trunc i32 %1679 to i1, !mcsema_real_eip !245
  store i1 %1680, i1* %SF, !mcsema_real_eip !245
  %1681 = icmp ult i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  store i1 %1681, i1* %CF, !mcsema_real_eip !245
  %1682 = xor i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  %1683 = xor i32 %EDX_val.368, %1669, !mcsema_real_eip !245
  %1684 = and i32 %1682, %1683, !mcsema_real_eip !245
  %1685 = lshr i32 %1684, 31, !mcsema_real_eip !245
  %1686 = trunc i32 %1685 to i1, !mcsema_real_eip !245
  store i1 %1686, i1* %OF, !mcsema_real_eip !245
  %1687 = zext i32 %1669 to i64, !mcsema_real_eip !245
  store i64 %1687, i64* %XDX, !mcsema_real_eip !245
  %RBP_val.371 = load i64, i64* %XBP, !mcsema_real_eip !246
  %1688 = add i64 %RBP_val.371, -20, !mcsema_real_eip !246
  %1689 = inttoptr i64 %1688 to i64*, !mcsema_real_eip !246
  %EDX.372 = bitcast i64* %XDX to i32*, !mcsema_real_eip !246
  %EDX_val.373 = load i32, i32* %EDX.372, !mcsema_real_eip !246
  %1690 = ptrtoint i64* %1689 to i64, !mcsema_real_eip !246
  %1691 = inttoptr i64 %1690 to i32*, !mcsema_real_eip !246
  store i32 %EDX_val.373, i32* %1691, !mcsema_real_eip !246
  %RBP_val.374 = load i64, i64* %XBP, !mcsema_real_eip !247
  %1692 = add i64 %RBP_val.374, -20, !mcsema_real_eip !247
  %1693 = inttoptr i64 %1692 to i64*, !mcsema_real_eip !247
  %1694 = ptrtoint i64* %1693 to i64, !mcsema_real_eip !247
  %1695 = inttoptr i64 %1694 to i32*, !mcsema_real_eip !247
  %1696 = load i32, i32* %1695, !mcsema_real_eip !247
  %1697 = sub i32 %1696, 0, !mcsema_real_eip !247
  %1698 = xor i32 %1697, %1696, !mcsema_real_eip !247
  %1699 = xor i32 %1698, 0, !mcsema_real_eip !247
  %1700 = and i32 %1699, 16, !mcsema_real_eip !247
  %1701 = icmp ne i32 %1700, 0, !mcsema_real_eip !247
  store i1 %1701, i1* %AF, !mcsema_real_eip !247
  %1702 = trunc i32 %1697 to i8, !mcsema_real_eip !247
  %1703 = call i8 @llvm.ctpop.i8(i8 %1702), !mcsema_real_eip !247
  %1704 = trunc i8 %1703 to i1, !mcsema_real_eip !247
  %1705 = xor i1 %1704, true, !mcsema_real_eip !247
  store i1 %1705, i1* %PF, !mcsema_real_eip !247
  %1706 = icmp eq i32 %1697, 0, !mcsema_real_eip !247
  store i1 %1706, i1* %ZF, !mcsema_real_eip !247
  %1707 = lshr i32 %1697, 31, !mcsema_real_eip !247
  %1708 = trunc i32 %1707 to i1, !mcsema_real_eip !247
  store i1 %1708, i1* %SF, !mcsema_real_eip !247
  %1709 = icmp ult i32 %1696, 0, !mcsema_real_eip !247
  store i1 %1709, i1* %CF, !mcsema_real_eip !247
  %1710 = xor i32 %1696, 0, !mcsema_real_eip !247
  %1711 = xor i32 %1696, %1697, !mcsema_real_eip !247
  %1712 = and i32 %1710, %1711, !mcsema_real_eip !247
  %1713 = lshr i32 %1712, 31, !mcsema_real_eip !247
  %1714 = trunc i32 %1713 to i1, !mcsema_real_eip !247
  store i1 %1714, i1* %OF, !mcsema_real_eip !247
  %1715 = load i1, i1* %ZF, !mcsema_real_eip !248
  %1716 = icmp eq i1 %1715, false, !mcsema_real_eip !248
  br i1 %1716, label %block_0x401, label %block_0x3e4, !mcsema_real_eip !248

block_0x3e4:                                      ; preds = %block_0x3a6
  %RBP_val.375 = load i64, i64* %XBP, !mcsema_real_eip !249
  %1717 = add i64 %RBP_val.375, -16, !mcsema_real_eip !249
  %1718 = inttoptr i64 %1717 to i64*, !mcsema_real_eip !249
  %1719 = load i64, i64* %1718, !mcsema_real_eip !249
  store i64 %1719, i64* %XAX, !mcsema_real_eip !249
  %RAX_val.376 = load i64, i64* %XAX, !mcsema_real_eip !250
  %1720 = add i64 %RAX_val.376, 31, !mcsema_real_eip !250
  %1721 = inttoptr i64 %1720 to i64*, !mcsema_real_eip !250
  %1722 = ptrtoint i64* %1721 to i64, !mcsema_real_eip !250
  %1723 = inttoptr i64 %1722 to i8*, !mcsema_real_eip !250
  %1724 = load i8, i8* %1723, !mcsema_real_eip !250
  %1725 = zext i8 %1724 to i32, !mcsema_real_eip !250
  %1726 = zext i32 %1725 to i64, !mcsema_real_eip !250
  store i64 %1726, i64* %XDI, !mcsema_real_eip !250
  %RDI_val.377 = load i64, i64* %XDI, !mcsema_real_eip !251
  %RSP_val.378 = load i64, i64* %XSP, !mcsema_real_eip !251
  %1727 = sub i64 %RSP_val.378, 8, !mcsema_real_eip !251
  %1728 = inttoptr i64 %1727 to i64*, !mcsema_real_eip !251
  store i64 -2415393069852865332, i64* %1728, !mcsema_real_eip !251
  store i64 %1727, i64* %XSP, !mcsema_real_eip !251
  %1729 = call x86_64_sysvcc i64 @_to_byte(i64 %RDI_val.377), !mcsema_real_eip !251
  store i64 %1729, i64* %XAX, !mcsema_real_eip !251
  %EAX.379 = bitcast i64* %XAX to i32*, !mcsema_real_eip !252
  %EAX_val.380 = load i32, i32* %EAX.379, !mcsema_real_eip !252
  %1730 = sub i32 %EAX_val.380, 4, !mcsema_real_eip !252
  %1731 = xor i32 %1730, %EAX_val.380, !mcsema_real_eip !252
  %1732 = xor i32 %1731, 4, !mcsema_real_eip !252
  %1733 = and i32 %1732, 16, !mcsema_real_eip !252
  %1734 = icmp ne i32 %1733, 0, !mcsema_real_eip !252
  store i1 %1734, i1* %AF, !mcsema_real_eip !252
  %1735 = trunc i32 %1730 to i8, !mcsema_real_eip !252
  %1736 = call i8 @llvm.ctpop.i8(i8 %1735), !mcsema_real_eip !252
  %1737 = trunc i8 %1736 to i1, !mcsema_real_eip !252
  %1738 = xor i1 %1737, true, !mcsema_real_eip !252
  store i1 %1738, i1* %PF, !mcsema_real_eip !252
  %1739 = icmp eq i32 %1730, 0, !mcsema_real_eip !252
  store i1 %1739, i1* %ZF, !mcsema_real_eip !252
  %1740 = lshr i32 %1730, 31, !mcsema_real_eip !252
  %1741 = trunc i32 %1740 to i1, !mcsema_real_eip !252
  store i1 %1741, i1* %SF, !mcsema_real_eip !252
  %1742 = icmp ult i32 %EAX_val.380, 4, !mcsema_real_eip !252
  store i1 %1742, i1* %CF, !mcsema_real_eip !252
  %1743 = xor i32 %EAX_val.380, 4, !mcsema_real_eip !252
  %1744 = xor i32 %EAX_val.380, %1730, !mcsema_real_eip !252
  %1745 = and i32 %1743, %1744, !mcsema_real_eip !252
  %1746 = lshr i32 %1745, 31, !mcsema_real_eip !252
  %1747 = trunc i32 %1746 to i1, !mcsema_real_eip !252
  store i1 %1747, i1* %OF, !mcsema_real_eip !252
  %1748 = load i1, i1* %ZF, !mcsema_real_eip !253
  %1749 = icmp eq i1 %1748, true, !mcsema_real_eip !253
  br i1 %1749, label %block_0x401, label %block_0x3fa, !mcsema_real_eip !253

block_0x3fa:                                      ; preds = %block_0x3e4
  %RBP_val.381 = load i64, i64* %XBP, !mcsema_real_eip !254
  %1750 = add i64 %RBP_val.381, -20, !mcsema_real_eip !254
  %1751 = inttoptr i64 %1750 to i64*, !mcsema_real_eip !254
  %1752 = ptrtoint i64* %1751 to i64, !mcsema_real_eip !254
  %1753 = inttoptr i64 %1752 to i32*, !mcsema_real_eip !254
  store i32 -32, i32* %1753, !mcsema_real_eip !254
  br label %block_0x401, !mcsema_real_eip !255

block_0x401:                                      ; preds = %block_0x3fa, %block_0x3e4, %block_0x3a6
  br label %block_0x40c, !mcsema_real_eip !255

block_0x406:                                      ; preds = %block_0x38e
  %RBP_val.382 = load i64, i64* %XBP, !mcsema_real_eip !256
  %1754 = add i64 %RBP_val.382, -64, !mcsema_real_eip !256
  %1755 = inttoptr i64 %1754 to i64*, !mcsema_real_eip !256
  %1756 = ptrtoint i64* %1755 to i64, !mcsema_real_eip !256
  %1757 = inttoptr i64 %1756 to i32*, !mcsema_real_eip !256
  %1758 = load i32, i32* %1757, !mcsema_real_eip !256
  %1759 = zext i32 %1758 to i64, !mcsema_real_eip !256
  store i64 %1759, i64* %XAX, !mcsema_real_eip !256
  %RBP_val.383 = load i64, i64* %XBP, !mcsema_real_eip !257
  %1760 = add i64 %RBP_val.383, -20, !mcsema_real_eip !257
  %1761 = inttoptr i64 %1760 to i64*, !mcsema_real_eip !257
  %EAX.384 = bitcast i64* %XAX to i32*, !mcsema_real_eip !257
  %EAX_val.385 = load i32, i32* %EAX.384, !mcsema_real_eip !257
  %1762 = ptrtoint i64* %1761 to i64, !mcsema_real_eip !257
  %1763 = inttoptr i64 %1762 to i32*, !mcsema_real_eip !257
  store i32 %EAX_val.385, i32* %1763, !mcsema_real_eip !257
  br label %block_0x40c, !mcsema_real_eip !258

block_0x40c:                                      ; preds = %block_0x406, %block_0x401
  br label %block_0x411, !mcsema_real_eip !258

block_0x411:                                      ; preds = %block_0x40c, %block_0x380
  %RBP_val.386 = load i64, i64* %XBP, !mcsema_real_eip !259
  %1764 = add i64 %RBP_val.386, -20, !mcsema_real_eip !259
  %1765 = inttoptr i64 %1764 to i64*, !mcsema_real_eip !259
  %1766 = ptrtoint i64* %1765 to i64, !mcsema_real_eip !259
  %1767 = inttoptr i64 %1766 to i32*, !mcsema_real_eip !259
  %1768 = load i32, i32* %1767, !mcsema_real_eip !259
  %1769 = zext i32 %1768 to i64, !mcsema_real_eip !259
  store i64 %1769, i64* %XAX, !mcsema_real_eip !259
  %RBP_val.387 = load i64, i64* %XBP, !mcsema_real_eip !260
  %1770 = add i64 %RBP_val.387, -4, !mcsema_real_eip !260
  %1771 = inttoptr i64 %1770 to i64*, !mcsema_real_eip !260
  %EAX.388 = bitcast i64* %XAX to i32*, !mcsema_real_eip !260
  %EAX_val.389 = load i32, i32* %EAX.388, !mcsema_real_eip !260
  %1772 = ptrtoint i64* %1771 to i64, !mcsema_real_eip !260
  %1773 = inttoptr i64 %1772 to i32*, !mcsema_real_eip !260
  store i32 %EAX_val.389, i32* %1773, !mcsema_real_eip !260
  br label %block_0x417, !mcsema_real_eip !261

block_0x417:                                      ; preds = %block_0x411, %block_0x338, %block_0x2ea, %block_0x2c6, %block_0x1cc, %block_0x10e, %block_0xcb, %block_0x98, %block_0x6d, %block_0x4b, %block_0x24
  %RBP_val.390 = load i64, i64* %XBP, !mcsema_real_eip !261
  %1774 = add i64 %RBP_val.390, -4, !mcsema_real_eip !261
  %1775 = inttoptr i64 %1774 to i64*, !mcsema_real_eip !261
  %1776 = ptrtoint i64* %1775 to i64, !mcsema_real_eip !261
  %1777 = inttoptr i64 %1776 to i32*, !mcsema_real_eip !261
  %1778 = load i32, i32* %1777, !mcsema_real_eip !261
  %1779 = zext i32 %1778 to i64, !mcsema_real_eip !261
  store i64 %1779, i64* %XAX, !mcsema_real_eip !261
  %RSP_val.391 = load i64, i64* %XSP, !mcsema_real_eip !262
  %1780 = add i64 80, %RSP_val.391, !mcsema_real_eip !262
  %1781 = xor i64 %1780, %RSP_val.391, !mcsema_real_eip !262
  %1782 = xor i64 %1781, 80, !mcsema_real_eip !262
  %1783 = and i64 %1782, 16, !mcsema_real_eip !262
  %1784 = icmp ne i64 %1783, 0, !mcsema_real_eip !262
  store i1 %1784, i1* %AF, !mcsema_real_eip !262
  %1785 = lshr i64 %1780, 63, !mcsema_real_eip !262
  %1786 = trunc i64 %1785 to i1, !mcsema_real_eip !262
  store i1 %1786, i1* %SF, !mcsema_real_eip !262
  %1787 = icmp eq i64 %1780, 0, !mcsema_real_eip !262
  store i1 %1787, i1* %ZF, !mcsema_real_eip !262
  %1788 = xor i64 %RSP_val.391, 80, !mcsema_real_eip !262
  %1789 = xor i64 %1788, -1, !mcsema_real_eip !262
  %1790 = xor i64 %RSP_val.391, %1780, !mcsema_real_eip !262
  %1791 = and i64 %1789, %1790, !mcsema_real_eip !262
  %1792 = lshr i64 %1791, 63, !mcsema_real_eip !262
  %1793 = and i64 %1792, 1, !mcsema_real_eip !262
  %1794 = trunc i64 %1793 to i1, !mcsema_real_eip !262
  store i1 %1794, i1* %OF, !mcsema_real_eip !262
  %1795 = trunc i64 %1780 to i8, !mcsema_real_eip !262
  %1796 = call i8 @llvm.ctpop.i8(i8 %1795), !mcsema_real_eip !262
  %1797 = trunc i8 %1796 to i1, !mcsema_real_eip !262
  %1798 = xor i1 %1797, true, !mcsema_real_eip !262
  store i1 %1798, i1* %PF, !mcsema_real_eip !262
  %1799 = icmp ult i64 %1780, %RSP_val.391, !mcsema_real_eip !262
  store i1 %1799, i1* %CF, !mcsema_real_eip !262
  store i64 %1780, i64* %XSP, !mcsema_real_eip !262
  %RSP_val.392 = load i64, i64* %XSP, !mcsema_real_eip !263
  %1800 = inttoptr i64 %RSP_val.392 to i64*, !mcsema_real_eip !263
  %1801 = load i64, i64* %1800, !mcsema_real_eip !263
  store i64 %1801, i64* %XBP, !mcsema_real_eip !263
  %1802 = add i64 %RSP_val.392, 8, !mcsema_real_eip !263
  store i64 %1802, i64* %XSP, !mcsema_real_eip !263
  %RSP_val.393 = load i64, i64* %XSP, !mcsema_real_eip !264
  %1803 = add i64 %RSP_val.393, 8, !mcsema_real_eip !264
  %1804 = inttoptr i64 %RSP_val.393 to i64*, !mcsema_real_eip !264
  %1805 = load i64, i64* %1804, !mcsema_real_eip !264
  store i64 %1805, i64* %XIP, !mcsema_real_eip !264
  store i64 %1803, i64* %XSP, !mcsema_real_eip !264
  ret void, !mcsema_real_eip !264
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
!29 = !{i64 109}
!30 = !{i64 116}
!31 = !{i64 121}
!32 = !{i64 125}
!33 = !{i64 129}
!34 = !{i64 134}
!35 = !{i64 137}
!36 = !{i64 140}
!37 = !{i64 143}
!38 = !{i64 146}
!39 = !{i64 152}
!40 = !{i64 159}
!41 = !{i64 164}
!42 = !{i64 168}
!43 = !{i64 172}
!44 = !{i64 177}
!45 = !{i64 182}
!46 = !{i64 185}
!47 = !{i64 188}
!48 = !{i64 191}
!49 = !{i64 192}
!50 = !{i64 194}
!51 = !{i64 197}
!52 = !{i64 203}
!53 = !{i64 210}
!54 = !{i64 215}
!55 = !{i64 219}
!56 = !{i64 223}
!57 = !{i64 226}
!58 = !{i64 229}
!59 = !{i64 235}
!60 = !{i64 239}
!61 = !{i64 243}
!62 = !{i64 249}
!63 = !{i64 252}
!64 = !{i64 258}
!65 = !{i64 265}
!66 = !{i64 270}
!67 = !{i64 277}
!68 = !{i64 282}
!69 = !{i64 286}
!70 = !{i64 290}
!71 = !{i64 293}
!72 = !{i64 295}
!73 = !{i64 298}
!74 = !{i64 302}
!75 = !{i64 306}
!76 = !{i64 312}
!77 = !{i64 314}
!78 = !{i64 317}
!79 = !{i64 321}
!80 = !{i64 324}
!81 = !{i64 330}
!82 = !{i64 334}
!83 = !{i64 337}
!84 = !{i64 343}
!85 = !{i64 346}
!86 = !{i64 349}
!87 = !{i64 352}
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
!107 = !{i64 425}
!108 = !{i64 428}
!109 = !{i64 431}
!110 = !{i64 434}
!111 = !{i64 439}
!112 = !{i64 442}
!113 = !{i64 445}
!114 = !{i64 447}
!115 = !{i64 450}
!116 = !{i64 454}
!117 = !{i64 460}
!118 = !{i64 467}
!119 = !{i64 472}
!120 = !{i64 474}
!121 = !{i64 479}
!122 = !{i64 483}
!123 = !{i64 487}
!124 = !{i64 490}
!125 = !{i64 495}
!126 = !{i64 498}
!127 = !{i64 502}
!128 = !{i64 506}
!129 = !{i64 511}
!130 = !{i64 516}
!131 = !{i64 522}
!132 = !{i64 526}
!133 = !{i64 531}
!134 = !{i64 536}
!135 = !{i64 542}
!136 = !{i64 549}
!137 = !{i64 554}
!138 = !{i64 561}
!139 = !{i64 563}
!140 = !{i64 568}
!141 = !{i64 572}
!142 = !{i64 576}
!143 = !{i64 579}
!144 = !{i64 584}
!145 = !{i64 587}
!146 = !{i64 590}
!147 = !{i64 595}
!148 = !{i64 598}
!149 = !{i64 601}
!150 = !{i64 604}
!151 = !{i64 607}
!152 = !{i64 610}
!153 = !{i64 615}
!154 = !{i64 618}
!155 = !{i64 622}
!156 = !{i64 628}
!157 = !{i64 631}
!158 = !{i64 634}
!159 = !{i64 640}
!160 = !{i64 647}
!161 = !{i64 652}
!162 = !{i64 659}
!163 = !{i64 664}
!164 = !{i64 667}
!165 = !{i64 671}
!166 = !{i64 675}
!167 = !{i64 678}
!168 = !{i64 683}
!169 = !{i64 686}
!170 = !{i64 689}
!171 = !{i64 692}
!172 = !{i64 695}
!173 = !{i64 698}
!174 = !{i64 701}
!175 = !{i64 704}
!176 = !{i64 710}
!177 = !{i64 717}
!178 = !{i64 722}
!179 = !{i64 725}
!180 = !{i64 730}
!181 = !{i64 733}
!182 = !{i64 740}
!183 = !{i64 746}
!184 = !{i64 753}
!185 = !{i64 758}
!186 = !{i64 763}
!187 = !{i64 766}
!188 = !{i64 772}
!189 = !{i64 775}
!190 = !{i64 778}
!191 = !{i64 781}
!192 = !{i64 784}
!193 = !{i64 787}
!194 = !{i64 793}
!195 = !{i64 796}
!196 = !{i64 799}
!197 = !{i64 802}
!198 = !{i64 804}
!199 = !{i64 806}
!200 = !{i64 809}
!201 = !{i64 811}
!202 = !{i64 814}
!203 = !{i64 818}
!204 = !{i64 824}
!205 = !{i64 827}
!206 = !{i64 830}
!207 = !{i64 835}
!208 = !{i64 840}
!209 = !{i64 843}
!210 = !{i64 847}
!211 = !{i64 851}
!212 = !{i64 854}
!213 = !{i64 859}
!214 = !{i64 862}
!215 = !{i64 866}
!216 = !{i64 870}
!217 = !{i64 873}
!218 = !{i64 879}
!219 = !{i64 883}
!220 = !{i64 887}
!221 = !{i64 890}
!222 = !{i64 896}
!223 = !{i64 899}
!224 = !{i64 902}
!225 = !{i64 905}
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
!249 = !{i64 996}
!250 = !{i64 1000}
!251 = !{i64 1004}
!252 = !{i64 1009}
!253 = !{i64 1012}
!254 = !{i64 1018}
!255 = !{i64 1025}
!256 = !{i64 1030}
!257 = !{i64 1033}
!258 = !{i64 1036}
!259 = !{i64 1041}
!260 = !{i64 1044}
!261 = !{i64 1047}
!262 = !{i64 1050}
!263 = !{i64 1054}
!264 = !{i64 1055}
