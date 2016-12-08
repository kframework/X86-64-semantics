; ModuleID = 'Output/test_3.clang.bc'
source_filename = "Output/test_3.clang.bc"
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
module asm "  .globl memcpy;"
module asm "  .globl _memcpy;"
module asm "  .type _memcpy,@function"
module asm "_memcpy:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memcpy@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memcpy,0b-_memcpy;"
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
module asm "  .globl sub_50;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_50(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [40 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xc0 = internal constant %0 <{ [40 x i8] c"\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64
@data_0xe8 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xf0 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"I\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"j\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_50(%RegState*) #1 {
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
  br label %block_0x50, !mcsema_real_eip !2

block_0x50:                                       ; preds = %entry
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
  %22 = zext i32 10 to i64, !mcsema_real_eip !5
  store i64 %22, i64* %XSI, !mcsema_real_eip !5
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.4, -48, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !6
  store i64 %25, i64* %XAX, !mcsema_real_eip !6
  %26 = getelementptr %0, %0* @data_0xc0, i64 0, i32 0, !mcsema_real_eip !7
  %27 = ptrtoint [40 x i8]* %26 to i64, !mcsema_real_eip !7
  %28 = add i64 %27, 0, !mcsema_real_eip !7
  store i64 %28, i64* %XCX, !mcsema_real_eip !7
  %29 = zext i32 40 to i64, !mcsema_real_eip !8
  store i64 %29, i64* %XDX, !mcsema_real_eip !8
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !9
  %30 = add i64 %RBP_val.5, -4, !mcsema_real_eip !9
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !9
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !9
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !9
  store i32 0, i32* %33, !mcsema_real_eip !9
  %RAX_val.6 = load i64, i64* %XAX, !mcsema_real_eip !10
  store i64 %RAX_val.6, i64* %XDI, !mcsema_real_eip !10
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !11
  %34 = add i64 %RBP_val.7, -56, !mcsema_real_eip !11
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !11
  %ESI.8 = bitcast i64* %XSI to i32*, !mcsema_real_eip !11
  %ESI_val.9 = load i32, i32* %ESI.8, !mcsema_real_eip !11
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !11
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !11
  store i32 %ESI_val.9, i32* %37, !mcsema_real_eip !11
  %RCX_val.10 = load i64, i64* %XCX, !mcsema_real_eip !12
  store i64 %RCX_val.10, i64* %XSI, !mcsema_real_eip !12
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !13
  %38 = add i64 %RBP_val.11, -64, !mcsema_real_eip !13
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !13
  %RAX_val.12 = load i64, i64* %XAX, !mcsema_real_eip !13
  store i64 %RAX_val.12, i64* %39, !mcsema_real_eip !13
  %RDI_val.13 = load i64, i64* %XDI, !mcsema_real_eip !14
  %RSI_val.14 = load i64, i64* %XSI, !mcsema_real_eip !14
  %RDX_val.15 = load i64, i64* %XDX, !mcsema_real_eip !14
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !14
  %40 = sub i64 %RSP_val.16, 8, !mcsema_real_eip !14
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !14
  store i64 -2415393069852865332, i64* %41, !mcsema_real_eip !14
  store i64 %40, i64* %XSP, !mcsema_real_eip !14
  %42 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.13, i64 %RSI_val.14, i64 %RDX_val.15), !mcsema_real_eip !14
  store i64 %42, i64* %XAX, !mcsema_real_eip !14
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !15
  %43 = add i64 %RBP_val.17, -64, !mcsema_real_eip !15
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !15
  %45 = load i64, i64* %44, !mcsema_real_eip !15
  store i64 %45, i64* %XDI, !mcsema_real_eip !15
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !16
  %46 = add i64 %RBP_val.18, -56, !mcsema_real_eip !16
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !16
  %48 = ptrtoint i64* %47 to i64, !mcsema_real_eip !16
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !16
  %50 = load i32, i32* %49, !mcsema_real_eip !16
  %51 = zext i32 %50 to i64, !mcsema_real_eip !16
  store i64 %51, i64* %XSI, !mcsema_real_eip !16
  %RSP_val.19 = load i64, i64* %XSP, !mcsema_real_eip !17
  %52 = sub i64 %RSP_val.19, 8, !mcsema_real_eip !17
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !17
  store i64 -4981261766360305936, i64* %53, !mcsema_real_eip !17
  store i64 %52, i64* %XSP, !mcsema_real_eip !17
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !17
  %54 = getelementptr %1, %1* @data_0xe8, i64 0, i32 0, !mcsema_real_eip !18
  %55 = ptrtoint [4 x i8]* %54 to i64, !mcsema_real_eip !18
  %56 = add i64 %55, 0, !mcsema_real_eip !18
  store i64 %56, i64* %XDI, !mcsema_real_eip !18
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !19
  %57 = add i64 %RBP_val.20, -52, !mcsema_real_eip !19
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !19
  %EAX.21 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.22 = load i32, i32* %EAX.21, !mcsema_real_eip !19
  %59 = ptrtoint i64* %58 to i64, !mcsema_real_eip !19
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.22, i32* %60, !mcsema_real_eip !19
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !20
  %61 = add i64 %RBP_val.23, -52, !mcsema_real_eip !20
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !20
  %63 = ptrtoint i64* %62 to i64, !mcsema_real_eip !20
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !20
  %65 = load i32, i32* %64, !mcsema_real_eip !20
  %66 = zext i32 %65 to i64, !mcsema_real_eip !20
  store i64 %66, i64* %XSI, !mcsema_real_eip !20
  %AL.24 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.24, !mcsema_real_eip !21
  %RDI_val.25 = load i64, i64* %XDI, !mcsema_real_eip !22
  %RSI_val.26 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RDX_val.27 = load i64, i64* %XDX, !mcsema_real_eip !22
  %RCX_val.28 = load i64, i64* %XCX, !mcsema_real_eip !22
  %R8_val.29 = load i64, i64* %R8, !mcsema_real_eip !22
  %R9_val.30 = load i64, i64* %R9, !mcsema_real_eip !22
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !22
  %67 = inttoptr i64 %RSP_val.31 to i64*, !mcsema_real_eip !22
  %68 = load i64, i64* %67, !mcsema_real_eip !22
  %69 = add i64 %RSP_val.31, 8, !mcsema_real_eip !22
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !22
  %71 = load i64, i64* %70, !mcsema_real_eip !22
  %72 = add i64 %69, 8, !mcsema_real_eip !22
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !22
  %74 = load i64, i64* %73, !mcsema_real_eip !22
  %75 = add i64 %72, 8, !mcsema_real_eip !22
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !22
  %77 = load i64, i64* %76, !mcsema_real_eip !22
  %78 = add i64 %75, 8, !mcsema_real_eip !22
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !22
  %80 = load i64, i64* %79, !mcsema_real_eip !22
  %81 = add i64 %78, 8, !mcsema_real_eip !22
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !22
  %83 = load i64, i64* %82, !mcsema_real_eip !22
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !22
  %84 = sub i64 %RSP_val.32, 8, !mcsema_real_eip !22
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %85, !mcsema_real_eip !22
  store i64 %84, i64* %XSP, !mcsema_real_eip !22
  %86 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.25, i64 %RSI_val.26, i64 %RDX_val.27, i64 %RCX_val.28, i64 %R8_val.29, i64 %R9_val.30, i64 %68, i64 %71, i64 %74, i64 %77, i64 %80, i64 %83), !mcsema_real_eip !22
  store i64 %86, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !23
  %87 = add i64 %RBP_val.33, -52, !mcsema_real_eip !23
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !23
  %89 = ptrtoint i64* %88 to i64, !mcsema_real_eip !23
  %90 = inttoptr i64 %89 to i32*, !mcsema_real_eip !23
  %91 = load i32, i32* %90, !mcsema_real_eip !23
  %92 = zext i32 %91 to i64, !mcsema_real_eip !23
  store i64 %92, i64* %XSI, !mcsema_real_eip !23
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !24
  %93 = add i64 %RBP_val.34, -68, !mcsema_real_eip !24
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !24
  %EAX.35 = bitcast i64* %XAX to i32*, !mcsema_real_eip !24
  %EAX_val.36 = load i32, i32* %EAX.35, !mcsema_real_eip !24
  %95 = ptrtoint i64* %94 to i64, !mcsema_real_eip !24
  %96 = inttoptr i64 %95 to i32*, !mcsema_real_eip !24
  store i32 %EAX_val.36, i32* %96, !mcsema_real_eip !24
  %ESI.37 = bitcast i64* %XSI to i32*, !mcsema_real_eip !25
  %ESI_val.38 = load i32, i32* %ESI.37, !mcsema_real_eip !25
  %97 = zext i32 %ESI_val.38 to i64, !mcsema_real_eip !25
  store i64 %97, i64* %XAX, !mcsema_real_eip !25
  %RSP_val.39 = load i64, i64* %XSP, !mcsema_real_eip !26
  %98 = add i64 80, %RSP_val.39, !mcsema_real_eip !26
  %99 = xor i64 %98, %RSP_val.39, !mcsema_real_eip !26
  %100 = xor i64 %99, 80, !mcsema_real_eip !26
  %101 = and i64 %100, 16, !mcsema_real_eip !26
  %102 = icmp ne i64 %101, 0, !mcsema_real_eip !26
  store i1 %102, i1* %AF, !mcsema_real_eip !26
  %103 = lshr i64 %98, 63, !mcsema_real_eip !26
  %104 = trunc i64 %103 to i1, !mcsema_real_eip !26
  store i1 %104, i1* %SF, !mcsema_real_eip !26
  %105 = icmp eq i64 %98, 0, !mcsema_real_eip !26
  store i1 %105, i1* %ZF, !mcsema_real_eip !26
  %106 = xor i64 %RSP_val.39, 80, !mcsema_real_eip !26
  %107 = xor i64 %106, -1, !mcsema_real_eip !26
  %108 = xor i64 %RSP_val.39, %98, !mcsema_real_eip !26
  %109 = and i64 %107, %108, !mcsema_real_eip !26
  %110 = lshr i64 %109, 63, !mcsema_real_eip !26
  %111 = and i64 %110, 1, !mcsema_real_eip !26
  %112 = trunc i64 %111 to i1, !mcsema_real_eip !26
  store i1 %112, i1* %OF, !mcsema_real_eip !26
  %113 = trunc i64 %98 to i8, !mcsema_real_eip !26
  %114 = call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !26
  %115 = trunc i8 %114 to i1, !mcsema_real_eip !26
  %116 = xor i1 %115, true, !mcsema_real_eip !26
  store i1 %116, i1* %PF, !mcsema_real_eip !26
  %117 = icmp ult i64 %98, %RSP_val.39, !mcsema_real_eip !26
  store i1 %117, i1* %CF, !mcsema_real_eip !26
  store i64 %98, i64* %XSP, !mcsema_real_eip !26
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !27
  %118 = inttoptr i64 %RSP_val.40 to i64*, !mcsema_real_eip !27
  %119 = load i64, i64* %118, !mcsema_real_eip !27
  store i64 %119, i64* %XBP, !mcsema_real_eip !27
  %120 = add i64 %RSP_val.40, 8, !mcsema_real_eip !27
  store i64 %120, i64* %XSP, !mcsema_real_eip !27
  %RSP_val.41 = load i64, i64* %XSP, !mcsema_real_eip !28
  %121 = add i64 %RSP_val.41, 8, !mcsema_real_eip !28
  %122 = inttoptr i64 %RSP_val.41 to i64*, !mcsema_real_eip !28
  %123 = load i64, i64* %122, !mcsema_real_eip !28
  store i64 %123, i64* %XIP, !mcsema_real_eip !28
  store i64 %121, i64* %XSP, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !29
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !29
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !29
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !29
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !29
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !29
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !29
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !29
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !29
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !29
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !29
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !29
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !29
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !29
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !29
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !29
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !29
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !29
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !29
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !29
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !29
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !29
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !29
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !29
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !29
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !29
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !29
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !29
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !29
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !29
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !29
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !29
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !29
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !29
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !29
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !29
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !29
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !29
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !29
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !29
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !29
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !29
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !29
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !29
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !29
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !29
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !29
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !29
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !29
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !29
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !29
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !29
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !29
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !29
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !29
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !29
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !29
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !29
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !29
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !29
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !29
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !29
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !29
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !29
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !29
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !29
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !29
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !29
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !29
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !29
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !29
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !29
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !29
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !29
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !29
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !29
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !29
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !29
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !29
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !29
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !29
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !29
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !29
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !29
  br label %block_0x0, !mcsema_real_eip !29

block_0x0:                                        ; preds = %entry
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !29
  %RSP_val.43 = load i64, i64* %XSP, !mcsema_real_eip !29
  %1 = sub i64 %RSP_val.43, 8, !mcsema_real_eip !29
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !29
  store i64 %RBP_val.42, i64* %2, !mcsema_real_eip !29
  store i64 %1, i64* %XSP, !mcsema_real_eip !29
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !30
  store i64 %RSP_val.44, i64* %XBP, !mcsema_real_eip !30
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !31
  %3 = add i64 %RBP_val.45, -8, !mcsema_real_eip !31
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !31
  %RDI_val.46 = load i64, i64* %XDI, !mcsema_real_eip !31
  store i64 %RDI_val.46, i64* %4, !mcsema_real_eip !31
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !32
  %5 = add i64 %RBP_val.47, -12, !mcsema_real_eip !32
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !32
  %ESI.48 = bitcast i64* %XSI to i32*, !mcsema_real_eip !32
  %ESI_val.49 = load i32, i32* %ESI.48, !mcsema_real_eip !32
  %7 = ptrtoint i64* %6 to i64, !mcsema_real_eip !32
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !32
  store i32 %ESI_val.49, i32* %8, !mcsema_real_eip !32
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !33
  %9 = add i64 %RBP_val.50, -16, !mcsema_real_eip !33
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !33
  %11 = ptrtoint i64* %10 to i64, !mcsema_real_eip !33
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !33
  store i32 0, i32* %12, !mcsema_real_eip !33
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !34
  %13 = add i64 %RBP_val.51, -20, !mcsema_real_eip !34
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !34
  %15 = ptrtoint i64* %14 to i64, !mcsema_real_eip !34
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !34
  store i32 0, i32* %16, !mcsema_real_eip !34
  br label %block_0x19, !mcsema_real_eip !35

block_0x19:                                       ; preds = %block_0x25, %block_0x0
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !35
  %17 = add i64 %RBP_val.52, -20, !mcsema_real_eip !35
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !35
  %19 = ptrtoint i64* %18 to i64, !mcsema_real_eip !35
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !35
  %21 = load i32, i32* %20, !mcsema_real_eip !35
  %22 = zext i32 %21 to i64, !mcsema_real_eip !35
  store i64 %22, i64* %XAX, !mcsema_real_eip !35
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !36
  %23 = add i64 %RBP_val.53, -12, !mcsema_real_eip !36
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !36
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.55 = load i32, i32* %EAX.54, !mcsema_real_eip !36
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !36
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !36
  %27 = load i32, i32* %26, !mcsema_real_eip !36
  %28 = sub i32 %EAX_val.55, %27, !mcsema_real_eip !36
  %29 = xor i32 %28, %EAX_val.55, !mcsema_real_eip !36
  %30 = xor i32 %29, %27, !mcsema_real_eip !36
  %31 = and i32 %30, 16, !mcsema_real_eip !36
  %32 = icmp ne i32 %31, 0, !mcsema_real_eip !36
  store i1 %32, i1* %AF, !mcsema_real_eip !36
  %33 = trunc i32 %28 to i8, !mcsema_real_eip !36
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !36
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !36
  %36 = xor i1 %35, true, !mcsema_real_eip !36
  store i1 %36, i1* %PF, !mcsema_real_eip !36
  %37 = icmp eq i32 %28, 0, !mcsema_real_eip !36
  store i1 %37, i1* %ZF, !mcsema_real_eip !36
  %38 = lshr i32 %28, 31, !mcsema_real_eip !36
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !36
  store i1 %39, i1* %SF, !mcsema_real_eip !36
  %40 = icmp ult i32 %EAX_val.55, %27, !mcsema_real_eip !36
  store i1 %40, i1* %CF, !mcsema_real_eip !36
  %41 = xor i32 %EAX_val.55, %27, !mcsema_real_eip !36
  %42 = xor i32 %EAX_val.55, %28, !mcsema_real_eip !36
  %43 = and i32 %41, %42, !mcsema_real_eip !36
  %44 = lshr i32 %43, 31, !mcsema_real_eip !36
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !36
  store i1 %45, i1* %OF, !mcsema_real_eip !36
  %46 = load i1, i1* %OF, !mcsema_real_eip !37
  %47 = load i1, i1* %SF, !mcsema_real_eip !37
  %48 = icmp eq i1 %47, %46, !mcsema_real_eip !37
  br i1 %48, label %block_0x44, label %block_0x25, !mcsema_real_eip !37

block_0x25:                                       ; preds = %block_0x19
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !38
  %49 = add i64 %RBP_val.59, -8, !mcsema_real_eip !38
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !38
  %51 = load i64, i64* %50, !mcsema_real_eip !38
  store i64 %51, i64* %XAX, !mcsema_real_eip !38
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !39
  %52 = add i64 %RBP_val.60, -20, !mcsema_real_eip !39
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !39
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !39
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !39
  %56 = load i32, i32* %55, !mcsema_real_eip !39
  %57 = sext i32 %56 to i64, !mcsema_real_eip !39
  store i64 %57, i64* %XCX, !mcsema_real_eip !39
  %RAX_val.61 = load i64, i64* %XAX, !mcsema_real_eip !40
  %58 = add i64 %RAX_val.61, 0, !mcsema_real_eip !40
  %RCX_val.62 = load i64, i64* %XCX, !mcsema_real_eip !40
  %59 = mul i64 %RCX_val.62, 4, !mcsema_real_eip !40
  %60 = add i64 %58, %59, !mcsema_real_eip !40
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !40
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !40
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !40
  %64 = load i32, i32* %63, !mcsema_real_eip !40
  %65 = zext i32 %64 to i64, !mcsema_real_eip !40
  store i64 %65, i64* %XDX, !mcsema_real_eip !40
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !41
  %66 = add i64 %RBP_val.63, -16, !mcsema_real_eip !41
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !41
  %68 = ptrtoint i64* %67 to i64, !mcsema_real_eip !41
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !41
  %70 = load i32, i32* %69, !mcsema_real_eip !41
  %EDX.64 = bitcast i64* %XDX to i32*, !mcsema_real_eip !41
  %EDX_val.65 = load i32, i32* %EDX.64, !mcsema_real_eip !41
  %71 = add i32 %EDX_val.65, %70, !mcsema_real_eip !41
  %72 = xor i32 %71, %70, !mcsema_real_eip !41
  %73 = xor i32 %72, %EDX_val.65, !mcsema_real_eip !41
  %74 = and i32 %73, 16, !mcsema_real_eip !41
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !41
  store i1 %75, i1* %AF, !mcsema_real_eip !41
  %76 = lshr i32 %71, 31, !mcsema_real_eip !41
  %77 = trunc i32 %76 to i1, !mcsema_real_eip !41
  store i1 %77, i1* %SF, !mcsema_real_eip !41
  %78 = icmp eq i32 %71, 0, !mcsema_real_eip !41
  store i1 %78, i1* %ZF, !mcsema_real_eip !41
  %79 = xor i32 %70, %EDX_val.65, !mcsema_real_eip !41
  %80 = xor i32 %79, -1, !mcsema_real_eip !41
  %81 = xor i32 %70, %71, !mcsema_real_eip !41
  %82 = and i32 %80, %81, !mcsema_real_eip !41
  %83 = lshr i32 %82, 31, !mcsema_real_eip !41
  %84 = and i32 %83, 1, !mcsema_real_eip !41
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !41
  store i1 %85, i1* %OF, !mcsema_real_eip !41
  %86 = trunc i32 %71 to i8, !mcsema_real_eip !41
  %87 = call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !41
  %88 = trunc i8 %87 to i1, !mcsema_real_eip !41
  %89 = xor i1 %88, true, !mcsema_real_eip !41
  store i1 %89, i1* %PF, !mcsema_real_eip !41
  %90 = icmp ult i32 %71, %70, !mcsema_real_eip !41
  store i1 %90, i1* %CF, !mcsema_real_eip !41
  %91 = zext i32 %71 to i64, !mcsema_real_eip !41
  store i64 %91, i64* %XDX, !mcsema_real_eip !41
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !42
  %92 = add i64 %RBP_val.66, -16, !mcsema_real_eip !42
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !42
  %EDX.67 = bitcast i64* %XDX to i32*, !mcsema_real_eip !42
  %EDX_val.68 = load i32, i32* %EDX.67, !mcsema_real_eip !42
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !42
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !42
  store i32 %EDX_val.68, i32* %95, !mcsema_real_eip !42
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !43
  %96 = add i64 %RBP_val.69, -20, !mcsema_real_eip !43
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !43
  %98 = ptrtoint i64* %97 to i64, !mcsema_real_eip !43
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !43
  %100 = load i32, i32* %99, !mcsema_real_eip !43
  %101 = zext i32 %100 to i64, !mcsema_real_eip !43
  store i64 %101, i64* %XAX, !mcsema_real_eip !43
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !44
  %102 = add i32 1, %EAX_val.71, !mcsema_real_eip !44
  %103 = xor i32 %102, %EAX_val.71, !mcsema_real_eip !44
  %104 = xor i32 %103, 1, !mcsema_real_eip !44
  %105 = and i32 %104, 16, !mcsema_real_eip !44
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !44
  store i1 %106, i1* %AF, !mcsema_real_eip !44
  %107 = lshr i32 %102, 31, !mcsema_real_eip !44
  %108 = trunc i32 %107 to i1, !mcsema_real_eip !44
  store i1 %108, i1* %SF, !mcsema_real_eip !44
  %109 = icmp eq i32 %102, 0, !mcsema_real_eip !44
  store i1 %109, i1* %ZF, !mcsema_real_eip !44
  %110 = xor i32 %EAX_val.71, 1, !mcsema_real_eip !44
  %111 = xor i32 %110, -1, !mcsema_real_eip !44
  %112 = xor i32 %EAX_val.71, %102, !mcsema_real_eip !44
  %113 = and i32 %111, %112, !mcsema_real_eip !44
  %114 = lshr i32 %113, 31, !mcsema_real_eip !44
  %115 = and i32 %114, 1, !mcsema_real_eip !44
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !44
  store i1 %116, i1* %OF, !mcsema_real_eip !44
  %117 = trunc i32 %102 to i8, !mcsema_real_eip !44
  %118 = call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !44
  %119 = trunc i8 %118 to i1, !mcsema_real_eip !44
  %120 = xor i1 %119, true, !mcsema_real_eip !44
  store i1 %120, i1* %PF, !mcsema_real_eip !44
  %121 = icmp ult i32 %102, %EAX_val.71, !mcsema_real_eip !44
  store i1 %121, i1* %CF, !mcsema_real_eip !44
  %122 = zext i32 %102 to i64, !mcsema_real_eip !44
  store i64 %122, i64* %XAX, !mcsema_real_eip !44
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !45
  %123 = add i64 %RBP_val.72, -20, !mcsema_real_eip !45
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !45
  %EAX.73 = bitcast i64* %XAX to i32*, !mcsema_real_eip !45
  %EAX_val.74 = load i32, i32* %EAX.73, !mcsema_real_eip !45
  %125 = ptrtoint i64* %124 to i64, !mcsema_real_eip !45
  %126 = inttoptr i64 %125 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.74, i32* %126, !mcsema_real_eip !45
  br label %block_0x19, !mcsema_real_eip !46

block_0x44:                                       ; preds = %block_0x19
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !47
  %127 = add i64 %RBP_val.56, -16, !mcsema_real_eip !47
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !47
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !47
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !47
  %131 = load i32, i32* %130, !mcsema_real_eip !47
  %132 = zext i32 %131 to i64, !mcsema_real_eip !47
  store i64 %132, i64* %XAX, !mcsema_real_eip !47
  %RSP_val.57 = load i64, i64* %XSP, !mcsema_real_eip !48
  %133 = inttoptr i64 %RSP_val.57 to i64*, !mcsema_real_eip !48
  %134 = load i64, i64* %133, !mcsema_real_eip !48
  store i64 %134, i64* %XBP, !mcsema_real_eip !48
  %135 = add i64 %RSP_val.57, 8, !mcsema_real_eip !48
  store i64 %135, i64* %XSP, !mcsema_real_eip !48
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !49
  %136 = add i64 %RSP_val.58, 8, !mcsema_real_eip !49
  %137 = inttoptr i64 %RSP_val.58 to i64*, !mcsema_real_eip !49
  %138 = load i64, i64* %137, !mcsema_real_eip !49
  store i64 %138, i64* %XIP, !mcsema_real_eip !49
  store i64 %136, i64* %XSP, !mcsema_real_eip !49
  ret void, !mcsema_real_eip !49
}

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) #2

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
!2 = !{i64 80}
!3 = !{i64 81}
!4 = !{i64 84}
!5 = !{i64 88}
!6 = !{i64 93}
!7 = !{i64 97}
!8 = !{i64 107}
!9 = !{i64 112}
!10 = !{i64 119}
!11 = !{i64 122}
!12 = !{i64 125}
!13 = !{i64 128}
!14 = !{i64 132}
!15 = !{i64 137}
!16 = !{i64 141}
!17 = !{i64 144}
!18 = !{i64 149}
!19 = !{i64 159}
!20 = !{i64 162}
!21 = !{i64 165}
!22 = !{i64 167}
!23 = !{i64 172}
!24 = !{i64 175}
!25 = !{i64 178}
!26 = !{i64 180}
!27 = !{i64 184}
!28 = !{i64 185}
!29 = !{i64 0}
!30 = !{i64 1}
!31 = !{i64 4}
!32 = !{i64 8}
!33 = !{i64 11}
!34 = !{i64 18}
!35 = !{i64 25}
!36 = !{i64 28}
!37 = !{i64 31}
!38 = !{i64 37}
!39 = !{i64 41}
!40 = !{i64 45}
!41 = !{i64 48}
!42 = !{i64 51}
!43 = !{i64 54}
!44 = !{i64 57}
!45 = !{i64 60}
!46 = !{i64 63}
!47 = !{i64 68}
!48 = !{i64 71}
!49 = !{i64 72}
