; ModuleID = 'Output/test_1.clang.bc'
source_filename = "Output/test_1.clang.bc"
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
module asm "  .globl sub_70;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_70(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb3 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xb8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"c\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %RBP_val.3 = load i64, i64* %XBP, !mcsema_real_eip !4
  %3 = add i64 %RBP_val.3, -4, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, !mcsema_real_eip !4
  %5 = ptrtoint i64* %4 to i64, !mcsema_real_eip !4
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %6, !mcsema_real_eip !4
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !5
  %7 = add i64 %RBP_val.6, -8, !mcsema_real_eip !5
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !5
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.8 = load i32, i32* %ESI.7, !mcsema_real_eip !5
  %9 = ptrtoint i64* %8 to i64, !mcsema_real_eip !5
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !5
  store i32 %ESI_val.8, i32* %10, !mcsema_real_eip !5
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !6
  %11 = add i64 %RBP_val.9, -4, !mcsema_real_eip !6
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !6
  %13 = ptrtoint i64* %12 to i64, !mcsema_real_eip !6
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !6
  %15 = load i32, i32* %14, !mcsema_real_eip !6
  %16 = zext i32 %15 to i64, !mcsema_real_eip !6
  store i64 %16, i64* %XSI, !mcsema_real_eip !6
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !7
  %17 = add i64 %RBP_val.10, -8, !mcsema_real_eip !7
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !7
  %19 = ptrtoint i64* %18 to i64, !mcsema_real_eip !7
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !7
  %21 = load i32, i32* %20, !mcsema_real_eip !7
  %ESI.11 = bitcast i64* %XSI to i32*, !mcsema_real_eip !7
  %ESI_val.12 = load i32, i32* %ESI.11, !mcsema_real_eip !7
  %22 = add i32 %ESI_val.12, %21, !mcsema_real_eip !7
  %23 = xor i32 %22, %21, !mcsema_real_eip !7
  %24 = xor i32 %23, %ESI_val.12, !mcsema_real_eip !7
  %25 = and i32 %24, 16, !mcsema_real_eip !7
  %26 = icmp ne i32 %25, 0, !mcsema_real_eip !7
  store i1 %26, i1* %AF, !mcsema_real_eip !7
  %27 = lshr i32 %22, 31, !mcsema_real_eip !7
  %28 = trunc i32 %27 to i1, !mcsema_real_eip !7
  store i1 %28, i1* %SF, !mcsema_real_eip !7
  %29 = icmp eq i32 %22, 0, !mcsema_real_eip !7
  store i1 %29, i1* %ZF, !mcsema_real_eip !7
  %30 = xor i32 %21, %ESI_val.12, !mcsema_real_eip !7
  %31 = xor i32 %30, -1, !mcsema_real_eip !7
  %32 = xor i32 %21, %22, !mcsema_real_eip !7
  %33 = and i32 %31, %32, !mcsema_real_eip !7
  %34 = lshr i32 %33, 31, !mcsema_real_eip !7
  %35 = and i32 %34, 1, !mcsema_real_eip !7
  %36 = trunc i32 %35 to i1, !mcsema_real_eip !7
  store i1 %36, i1* %OF, !mcsema_real_eip !7
  %37 = trunc i32 %22 to i8, !mcsema_real_eip !7
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !7
  %39 = trunc i8 %38 to i1, !mcsema_real_eip !7
  %40 = xor i1 %39, true, !mcsema_real_eip !7
  store i1 %40, i1* %PF, !mcsema_real_eip !7
  %41 = icmp ult i32 %22, %21, !mcsema_real_eip !7
  store i1 %41, i1* %CF, !mcsema_real_eip !7
  %42 = zext i32 %22 to i64, !mcsema_real_eip !7
  store i64 %42, i64* %XSI, !mcsema_real_eip !7
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !8
  %43 = add i64 %RBP_val.13, -12, !mcsema_real_eip !8
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !8
  %ESI.14 = bitcast i64* %XSI to i32*, !mcsema_real_eip !8
  %ESI_val.15 = load i32, i32* %ESI.14, !mcsema_real_eip !8
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !8
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !8
  store i32 %ESI_val.15, i32* %46, !mcsema_real_eip !8
  br label %block_0x13, !mcsema_real_eip !9

block_0x13:                                       ; preds = %block_0x50, %block_0x0
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !9
  %47 = add i64 %RBP_val.16, -4, !mcsema_real_eip !9
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !9
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !9
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !9
  %51 = load i32, i32* %50, !mcsema_real_eip !9
  %52 = sub i32 %51, 0, !mcsema_real_eip !9
  %53 = xor i32 %52, %51, !mcsema_real_eip !9
  %54 = xor i32 %53, 0, !mcsema_real_eip !9
  %55 = and i32 %54, 16, !mcsema_real_eip !9
  %56 = icmp ne i32 %55, 0, !mcsema_real_eip !9
  store i1 %56, i1* %AF, !mcsema_real_eip !9
  %57 = trunc i32 %52 to i8, !mcsema_real_eip !9
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !9
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !9
  %60 = xor i1 %59, true, !mcsema_real_eip !9
  store i1 %60, i1* %PF, !mcsema_real_eip !9
  %61 = icmp eq i32 %52, 0, !mcsema_real_eip !9
  store i1 %61, i1* %ZF, !mcsema_real_eip !9
  %62 = lshr i32 %52, 31, !mcsema_real_eip !9
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !9
  store i1 %63, i1* %SF, !mcsema_real_eip !9
  %64 = icmp ult i32 %51, 0, !mcsema_real_eip !9
  store i1 %64, i1* %CF, !mcsema_real_eip !9
  %65 = xor i32 %51, 0, !mcsema_real_eip !9
  %66 = xor i32 %51, %52, !mcsema_real_eip !9
  %67 = and i32 %65, %66, !mcsema_real_eip !9
  %68 = lshr i32 %67, 31, !mcsema_real_eip !9
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !9
  store i1 %69, i1* %OF, !mcsema_real_eip !9
  %70 = load i1, i1* %OF, !mcsema_real_eip !10
  %71 = load i1, i1* %SF, !mcsema_real_eip !10
  %72 = icmp eq i1 %71, %70, !mcsema_real_eip !10
  %73 = icmp eq i1 %72, false, !mcsema_real_eip !10
  br i1 %73, label %block_0x5e, label %block_0x1d, !mcsema_real_eip !10

block_0x1d:                                       ; preds = %block_0x13
  %74 = zext i32 2 to i64, !mcsema_real_eip !11
  store i64 %74, i64* %XAX, !mcsema_real_eip !11
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !12
  %75 = add i64 %RBP_val.17, -4, !mcsema_real_eip !12
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !12
  %77 = ptrtoint i64* %76 to i64, !mcsema_real_eip !12
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !12
  %79 = load i32, i32* %78, !mcsema_real_eip !12
  %80 = zext i32 %79 to i64, !mcsema_real_eip !12
  store i64 %80, i64* %XCX, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %81 = add i64 %RBP_val.18, -20, !mcsema_real_eip !13
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !13
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !13
  %83 = ptrtoint i64* %82 to i64, !mcsema_real_eip !13
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %84, !mcsema_real_eip !13
  %ECX.21 = bitcast i64* %XCX to i32*, !mcsema_real_eip !14
  %ECX_val.22 = load i32, i32* %ECX.21, !mcsema_real_eip !14
  %85 = zext i32 %ECX_val.22 to i64, !mcsema_real_eip !14
  store i64 %85, i64* %XAX, !mcsema_real_eip !14
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !15
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !15
  %86 = and i32 %EAX_val.24, -2147483648, !mcsema_real_eip !15
  %87 = icmp eq i32 %86, 0, !mcsema_real_eip !15
  %88 = select i1 %87, i32 0, i32 -1, !mcsema_real_eip !15
  %89 = zext i32 %88 to i64, !mcsema_real_eip !15
  store i64 %89, i64* %XDX, !mcsema_real_eip !15
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !16
  %90 = add i64 %RBP_val.25, -20, !mcsema_real_eip !16
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !16
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !16
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !16
  %94 = load i32, i32* %93, !mcsema_real_eip !16
  %95 = zext i32 %94 to i64, !mcsema_real_eip !16
  store i64 %95, i64* %XCX, !mcsema_real_eip !16
  %ECX.26 = bitcast i64* %XCX to i32*, !mcsema_real_eip !17
  %ECX_val.27 = load i32, i32* %ECX.26, !mcsema_real_eip !17
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !17
  %EDX.30 = bitcast i64* %XDX to i32*, !mcsema_real_eip !17
  %EDX_val.31 = load i32, i32* %EDX.30, !mcsema_real_eip !17
  %96 = zext i32 %EDX_val.31 to i64, !mcsema_real_eip !17
  %97 = shl i64 %96, 32, !mcsema_real_eip !17
  %98 = sext i32 %EAX_val.29 to i64, !mcsema_real_eip !17
  %99 = or i64 %97, %98, !mcsema_real_eip !17
  %100 = sext i32 %ECX_val.27 to i64, !mcsema_real_eip !17
  %101 = sdiv i64 %99, %100, !mcsema_real_eip !17
  %102 = srem i64 %99, %100, !mcsema_real_eip !17
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !17
  %104 = trunc i64 %101 to i32, !mcsema_real_eip !17
  %105 = zext i32 %103 to i64, !mcsema_real_eip !17
  store i64 %105, i64* %XDX, !mcsema_real_eip !17
  %106 = zext i32 %104 to i64, !mcsema_real_eip !17
  store i64 %106, i64* %XAX, !mcsema_real_eip !17
  %EDX.32 = bitcast i64* %XDX to i32*, !mcsema_real_eip !18
  %EDX_val.33 = load i32, i32* %EDX.32, !mcsema_real_eip !18
  %107 = sub i32 %EDX_val.33, 0, !mcsema_real_eip !18
  %108 = xor i32 %107, %EDX_val.33, !mcsema_real_eip !18
  %109 = xor i32 %108, 0, !mcsema_real_eip !18
  %110 = and i32 %109, 16, !mcsema_real_eip !18
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !18
  store i1 %111, i1* %AF, !mcsema_real_eip !18
  %112 = trunc i32 %107 to i8, !mcsema_real_eip !18
  %113 = call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !18
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !18
  %115 = xor i1 %114, true, !mcsema_real_eip !18
  store i1 %115, i1* %PF, !mcsema_real_eip !18
  %116 = icmp eq i32 %107, 0, !mcsema_real_eip !18
  store i1 %116, i1* %ZF, !mcsema_real_eip !18
  %117 = lshr i32 %107, 31, !mcsema_real_eip !18
  %118 = trunc i32 %117 to i1, !mcsema_real_eip !18
  store i1 %118, i1* %SF, !mcsema_real_eip !18
  %119 = icmp ult i32 %EDX_val.33, 0, !mcsema_real_eip !18
  store i1 %119, i1* %CF, !mcsema_real_eip !18
  %120 = xor i32 %EDX_val.33, 0, !mcsema_real_eip !18
  %121 = xor i32 %EDX_val.33, %107, !mcsema_real_eip !18
  %122 = and i32 %120, %121, !mcsema_real_eip !18
  %123 = lshr i32 %122, 31, !mcsema_real_eip !18
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !18
  store i1 %124, i1* %OF, !mcsema_real_eip !18
  %125 = load i1, i1* %ZF, !mcsema_real_eip !19
  %126 = icmp eq i1 %125, false, !mcsema_real_eip !19
  br i1 %126, label %block_0x47, label %block_0x39, !mcsema_real_eip !19

block_0x39:                                       ; preds = %block_0x1d
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !20
  %127 = add i64 %RBP_val.34, -12, !mcsema_real_eip !20
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !20
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !20
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !20
  %131 = load i32, i32* %130, !mcsema_real_eip !20
  %132 = zext i32 %131 to i64, !mcsema_real_eip !20
  store i64 %132, i64* %XAX, !mcsema_real_eip !20
  %EAX.35 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  %EAX_val.36 = load i32, i32* %EAX.35, !mcsema_real_eip !21
  %133 = add i32 10, %EAX_val.36, !mcsema_real_eip !21
  %134 = xor i32 %133, %EAX_val.36, !mcsema_real_eip !21
  %135 = xor i32 %134, 10, !mcsema_real_eip !21
  %136 = and i32 %135, 16, !mcsema_real_eip !21
  %137 = icmp ne i32 %136, 0, !mcsema_real_eip !21
  store i1 %137, i1* %AF, !mcsema_real_eip !21
  %138 = lshr i32 %133, 31, !mcsema_real_eip !21
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !21
  store i1 %139, i1* %SF, !mcsema_real_eip !21
  %140 = icmp eq i32 %133, 0, !mcsema_real_eip !21
  store i1 %140, i1* %ZF, !mcsema_real_eip !21
  %141 = xor i32 %EAX_val.36, 10, !mcsema_real_eip !21
  %142 = xor i32 %141, -1, !mcsema_real_eip !21
  %143 = xor i32 %EAX_val.36, %133, !mcsema_real_eip !21
  %144 = and i32 %142, %143, !mcsema_real_eip !21
  %145 = lshr i32 %144, 31, !mcsema_real_eip !21
  %146 = and i32 %145, 1, !mcsema_real_eip !21
  %147 = trunc i32 %146 to i1, !mcsema_real_eip !21
  store i1 %147, i1* %OF, !mcsema_real_eip !21
  %148 = trunc i32 %133 to i8, !mcsema_real_eip !21
  %149 = call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !21
  %150 = trunc i8 %149 to i1, !mcsema_real_eip !21
  %151 = xor i1 %150, true, !mcsema_real_eip !21
  store i1 %151, i1* %PF, !mcsema_real_eip !21
  %152 = icmp ult i32 %133, %EAX_val.36, !mcsema_real_eip !21
  store i1 %152, i1* %CF, !mcsema_real_eip !21
  %153 = zext i32 %133 to i64, !mcsema_real_eip !21
  store i64 %153, i64* %XAX, !mcsema_real_eip !21
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !22
  %154 = add i64 %RBP_val.37, -16, !mcsema_real_eip !22
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !22
  %EAX.38 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.39 = load i32, i32* %EAX.38, !mcsema_real_eip !22
  %156 = ptrtoint i64* %155 to i64, !mcsema_real_eip !22
  %157 = inttoptr i64 %156 to i32*, !mcsema_real_eip !22
  store i32 %EAX_val.39, i32* %157, !mcsema_real_eip !22
  br label %block_0x50, !mcsema_real_eip !23

block_0x47:                                       ; preds = %block_0x1d
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !24
  %158 = add i64 %RBP_val.40, -12, !mcsema_real_eip !24
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !24
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !24
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !24
  %162 = load i32, i32* %161, !mcsema_real_eip !24
  %163 = zext i32 %162 to i64, !mcsema_real_eip !24
  store i64 %163, i64* %XAX, !mcsema_real_eip !24
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !25
  %164 = sub i32 %EAX_val.42, 10, !mcsema_real_eip !25
  %165 = xor i32 %164, %EAX_val.42, !mcsema_real_eip !25
  %166 = xor i32 %165, 10, !mcsema_real_eip !25
  %167 = and i32 %166, 16, !mcsema_real_eip !25
  %168 = icmp ne i32 %167, 0, !mcsema_real_eip !25
  store i1 %168, i1* %AF, !mcsema_real_eip !25
  %169 = trunc i32 %164 to i8, !mcsema_real_eip !25
  %170 = call i8 @llvm.ctpop.i8(i8 %169), !mcsema_real_eip !25
  %171 = trunc i8 %170 to i1, !mcsema_real_eip !25
  %172 = xor i1 %171, true, !mcsema_real_eip !25
  store i1 %172, i1* %PF, !mcsema_real_eip !25
  %173 = icmp eq i32 %164, 0, !mcsema_real_eip !25
  store i1 %173, i1* %ZF, !mcsema_real_eip !25
  %174 = lshr i32 %164, 31, !mcsema_real_eip !25
  %175 = trunc i32 %174 to i1, !mcsema_real_eip !25
  store i1 %175, i1* %SF, !mcsema_real_eip !25
  %176 = icmp ult i32 %EAX_val.42, 10, !mcsema_real_eip !25
  store i1 %176, i1* %CF, !mcsema_real_eip !25
  %177 = xor i32 %EAX_val.42, 10, !mcsema_real_eip !25
  %178 = xor i32 %EAX_val.42, %164, !mcsema_real_eip !25
  %179 = and i32 %177, %178, !mcsema_real_eip !25
  %180 = lshr i32 %179, 31, !mcsema_real_eip !25
  %181 = trunc i32 %180 to i1, !mcsema_real_eip !25
  store i1 %181, i1* %OF, !mcsema_real_eip !25
  %182 = zext i32 %164 to i64, !mcsema_real_eip !25
  store i64 %182, i64* %XAX, !mcsema_real_eip !25
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !26
  %183 = add i64 %RBP_val.43, -12, !mcsema_real_eip !26
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !26
  %EAX.44 = bitcast i64* %XAX to i32*, !mcsema_real_eip !26
  %EAX_val.45 = load i32, i32* %EAX.44, !mcsema_real_eip !26
  %185 = ptrtoint i64* %184 to i64, !mcsema_real_eip !26
  %186 = inttoptr i64 %185 to i32*, !mcsema_real_eip !26
  store i32 %EAX_val.45, i32* %186, !mcsema_real_eip !26
  br label %block_0x50, !mcsema_real_eip !27

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !27
  %187 = add i64 %RBP_val.46, -4, !mcsema_real_eip !27
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !27
  %189 = ptrtoint i64* %188 to i64, !mcsema_real_eip !27
  %190 = inttoptr i64 %189 to i32*, !mcsema_real_eip !27
  %191 = load i32, i32* %190, !mcsema_real_eip !27
  %192 = zext i32 %191 to i64, !mcsema_real_eip !27
  store i64 %192, i64* %XAX, !mcsema_real_eip !27
  %EAX.47 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.48 = load i32, i32* %EAX.47, !mcsema_real_eip !28
  %193 = add i32 -1, %EAX_val.48, !mcsema_real_eip !28
  %194 = xor i32 %193, %EAX_val.48, !mcsema_real_eip !28
  %195 = xor i32 %194, -1, !mcsema_real_eip !28
  %196 = and i32 %195, 16, !mcsema_real_eip !28
  %197 = icmp ne i32 %196, 0, !mcsema_real_eip !28
  store i1 %197, i1* %AF, !mcsema_real_eip !28
  %198 = lshr i32 %193, 31, !mcsema_real_eip !28
  %199 = trunc i32 %198 to i1, !mcsema_real_eip !28
  store i1 %199, i1* %SF, !mcsema_real_eip !28
  %200 = icmp eq i32 %193, 0, !mcsema_real_eip !28
  store i1 %200, i1* %ZF, !mcsema_real_eip !28
  %201 = xor i32 %EAX_val.48, -1, !mcsema_real_eip !28
  %202 = xor i32 %201, -1, !mcsema_real_eip !28
  %203 = xor i32 %EAX_val.48, %193, !mcsema_real_eip !28
  %204 = and i32 %202, %203, !mcsema_real_eip !28
  %205 = lshr i32 %204, 31, !mcsema_real_eip !28
  %206 = and i32 %205, 1, !mcsema_real_eip !28
  %207 = trunc i32 %206 to i1, !mcsema_real_eip !28
  store i1 %207, i1* %OF, !mcsema_real_eip !28
  %208 = trunc i32 %193 to i8, !mcsema_real_eip !28
  %209 = call i8 @llvm.ctpop.i8(i8 %208), !mcsema_real_eip !28
  %210 = trunc i8 %209 to i1, !mcsema_real_eip !28
  %211 = xor i1 %210, true, !mcsema_real_eip !28
  store i1 %211, i1* %PF, !mcsema_real_eip !28
  %212 = icmp ult i32 %193, %EAX_val.48, !mcsema_real_eip !28
  store i1 %212, i1* %CF, !mcsema_real_eip !28
  %213 = zext i32 %193 to i64, !mcsema_real_eip !28
  store i64 %213, i64* %XAX, !mcsema_real_eip !28
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !29
  %214 = add i64 %RBP_val.49, -4, !mcsema_real_eip !29
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !29
  %EAX.50 = bitcast i64* %XAX to i32*, !mcsema_real_eip !29
  %EAX_val.51 = load i32, i32* %EAX.50, !mcsema_real_eip !29
  %216 = ptrtoint i64* %215 to i64, !mcsema_real_eip !29
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !29
  store i32 %EAX_val.51, i32* %217, !mcsema_real_eip !29
  br label %block_0x13, !mcsema_real_eip !30

block_0x5e:                                       ; preds = %block_0x13
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !31
  %218 = add i64 %RBP_val.52, -16, !mcsema_real_eip !31
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !31
  %220 = ptrtoint i64* %219 to i64, !mcsema_real_eip !31
  %221 = inttoptr i64 %220 to i32*, !mcsema_real_eip !31
  %222 = load i32, i32* %221, !mcsema_real_eip !31
  %223 = zext i32 %222 to i64, !mcsema_real_eip !31
  store i64 %223, i64* %XAX, !mcsema_real_eip !31
  %RSP_val.53 = load i64, i64* %XSP, !mcsema_real_eip !32
  %224 = inttoptr i64 %RSP_val.53 to i64*, !mcsema_real_eip !32
  %225 = load i64, i64* %224, !mcsema_real_eip !32
  store i64 %225, i64* %XBP, !mcsema_real_eip !32
  %226 = add i64 %RSP_val.53, 8, !mcsema_real_eip !32
  store i64 %226, i64* %XSP, !mcsema_real_eip !32
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !33
  %227 = add i64 %RSP_val.54, 8, !mcsema_real_eip !33
  %228 = inttoptr i64 %RSP_val.54 to i64*, !mcsema_real_eip !33
  %229 = load i64, i64* %228, !mcsema_real_eip !33
  store i64 %229, i64* %XIP, !mcsema_real_eip !33
  store i64 %227, i64* %XSP, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !34
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !34
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !34
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !34
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !34
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !34
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !34
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !34
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !34
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !34
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !34
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !34
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !34
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !34
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !34
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !34
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !34
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !34
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !34
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !34
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !34
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !34
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !34
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !34
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !34
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !34
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !34
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !34
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !34
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !34
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !34
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !34
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !34
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !34
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !34
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !34
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !34
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !34
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !34
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !34
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !34
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !34
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !34
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !34
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !34
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !34
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !34
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !34
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !34
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !34
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !34
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !34
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !34
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !34
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !34
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !34
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !34
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !34
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !34
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !34
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !34
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !34
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !34
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !34
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !34
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !34
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !34
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !34
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !34
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !34
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !34
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !34
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !34
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !34
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !34
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !34
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !34
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !34
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !34
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !34
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !34
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !34
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !34
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !34
  br label %block_0x70, !mcsema_real_eip !34

block_0x70:                                       ; preds = %entry
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !34
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !34
  %1 = sub i64 %RSP_val.56, 8, !mcsema_real_eip !34
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !34
  store i64 %RBP_val.55, i64* %2, !mcsema_real_eip !34
  store i64 %1, i64* %XSP, !mcsema_real_eip !34
  %RSP_val.57 = load i64, i64* %XSP, !mcsema_real_eip !35
  store i64 %RSP_val.57, i64* %XBP, !mcsema_real_eip !35
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !36
  %3 = sext i8 16 to i64, !mcsema_real_eip !36
  %4 = sub i64 %RSP_val.58, %3, !mcsema_real_eip !36
  %5 = xor i64 %4, %RSP_val.58, !mcsema_real_eip !36
  %6 = xor i64 %5, %3, !mcsema_real_eip !36
  %7 = and i64 %6, 16, !mcsema_real_eip !36
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !36
  store i1 %8, i1* %AF, !mcsema_real_eip !36
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !36
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !36
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !36
  %12 = xor i1 %11, true, !mcsema_real_eip !36
  store i1 %12, i1* %PF, !mcsema_real_eip !36
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !36
  store i1 %13, i1* %ZF, !mcsema_real_eip !36
  %14 = lshr i64 %4, 63, !mcsema_real_eip !36
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !36
  store i1 %15, i1* %SF, !mcsema_real_eip !36
  %16 = icmp ult i64 %RSP_val.58, %3, !mcsema_real_eip !36
  store i1 %16, i1* %CF, !mcsema_real_eip !36
  %17 = xor i64 %RSP_val.58, %3, !mcsema_real_eip !36
  %18 = xor i64 %RSP_val.58, %4, !mcsema_real_eip !36
  %19 = and i64 %17, %18, !mcsema_real_eip !36
  %20 = lshr i64 %19, 63, !mcsema_real_eip !36
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !36
  store i1 %21, i1* %OF, !mcsema_real_eip !36
  store i64 %4, i64* %XSP, !mcsema_real_eip !36
  %22 = zext i32 10 to i64, !mcsema_real_eip !37
  store i64 %22, i64* %XDI, !mcsema_real_eip !37
  %23 = zext i32 20 to i64, !mcsema_real_eip !38
  store i64 %23, i64* %XSI, !mcsema_real_eip !38
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !39
  %24 = add i64 %RBP_val.59, -4, !mcsema_real_eip !39
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !39
  %26 = ptrtoint i64* %25 to i64, !mcsema_real_eip !39
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !39
  store i32 0, i32* %27, !mcsema_real_eip !39
  %RSP_val.60 = load i64, i64* %XSP, !mcsema_real_eip !40
  %28 = sub i64 %RSP_val.60, 8, !mcsema_real_eip !40
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !40
  store i64 -4981261766360305936, i64* %29, !mcsema_real_eip !40
  store i64 %28, i64* %XSP, !mcsema_real_eip !40
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !40
  %30 = getelementptr %0, %0* @data_0xb3, i64 0, i32 0, !mcsema_real_eip !41
  %31 = ptrtoint [4 x i8]* %30 to i64, !mcsema_real_eip !41
  %32 = add i64 %31, 0, !mcsema_real_eip !41
  store i64 %32, i64* %XDI, !mcsema_real_eip !41
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !42
  %33 = add i64 %RBP_val.61, -8, !mcsema_real_eip !42
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !42
  %EAX.62 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.63 = load i32, i32* %EAX.62, !mcsema_real_eip !42
  %35 = ptrtoint i64* %34 to i64, !mcsema_real_eip !42
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !42
  store i32 %EAX_val.63, i32* %36, !mcsema_real_eip !42
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !43
  %37 = add i64 %RBP_val.64, -8, !mcsema_real_eip !43
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !43
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !43
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !43
  %41 = load i32, i32* %40, !mcsema_real_eip !43
  %42 = zext i32 %41 to i64, !mcsema_real_eip !43
  store i64 %42, i64* %XSI, !mcsema_real_eip !43
  %AL.65 = bitcast i64* %XAX to i8*, !mcsema_real_eip !44
  store i8 0, i8* %AL.65, !mcsema_real_eip !44
  %RDI_val.66 = load i64, i64* %XDI, !mcsema_real_eip !45
  %RSI_val.67 = load i64, i64* %XSI, !mcsema_real_eip !45
  %RDX_val.68 = load i64, i64* %XDX, !mcsema_real_eip !45
  %RCX_val.69 = load i64, i64* %XCX, !mcsema_real_eip !45
  %R8_val.70 = load i64, i64* %R8, !mcsema_real_eip !45
  %R9_val.71 = load i64, i64* %R9, !mcsema_real_eip !45
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !45
  %43 = inttoptr i64 %RSP_val.72 to i64*, !mcsema_real_eip !45
  %44 = load i64, i64* %43, !mcsema_real_eip !45
  %45 = add i64 %RSP_val.72, 8, !mcsema_real_eip !45
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !45
  %47 = load i64, i64* %46, !mcsema_real_eip !45
  %48 = add i64 %45, 8, !mcsema_real_eip !45
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !45
  %50 = load i64, i64* %49, !mcsema_real_eip !45
  %51 = add i64 %48, 8, !mcsema_real_eip !45
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !45
  %53 = load i64, i64* %52, !mcsema_real_eip !45
  %54 = add i64 %51, 8, !mcsema_real_eip !45
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !45
  %56 = load i64, i64* %55, !mcsema_real_eip !45
  %57 = add i64 %54, 8, !mcsema_real_eip !45
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !45
  %59 = load i64, i64* %58, !mcsema_real_eip !45
  %RSP_val.73 = load i64, i64* %XSP, !mcsema_real_eip !45
  %60 = sub i64 %RSP_val.73, 8, !mcsema_real_eip !45
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !45
  store i64 -2415393069852865332, i64* %61, !mcsema_real_eip !45
  store i64 %60, i64* %XSP, !mcsema_real_eip !45
  %62 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.66, i64 %RSI_val.67, i64 %RDX_val.68, i64 %RCX_val.69, i64 %R8_val.70, i64 %R9_val.71, i64 %44, i64 %47, i64 %50, i64 %53, i64 %56, i64 %59), !mcsema_real_eip !45
  store i64 %62, i64* %XAX, !mcsema_real_eip !45
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !46
  %63 = add i64 %RBP_val.74, -8, !mcsema_real_eip !46
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !46
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !46
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !46
  %67 = load i32, i32* %66, !mcsema_real_eip !46
  %68 = zext i32 %67 to i64, !mcsema_real_eip !46
  store i64 %68, i64* %XSI, !mcsema_real_eip !46
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !47
  %69 = add i64 %RBP_val.75, -12, !mcsema_real_eip !47
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !47
  %EAX.76 = bitcast i64* %XAX to i32*, !mcsema_real_eip !47
  %EAX_val.77 = load i32, i32* %EAX.76, !mcsema_real_eip !47
  %71 = ptrtoint i64* %70 to i64, !mcsema_real_eip !47
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !47
  store i32 %EAX_val.77, i32* %72, !mcsema_real_eip !47
  %ESI.78 = bitcast i64* %XSI to i32*, !mcsema_real_eip !48
  %ESI_val.79 = load i32, i32* %ESI.78, !mcsema_real_eip !48
  %73 = zext i32 %ESI_val.79 to i64, !mcsema_real_eip !48
  store i64 %73, i64* %XAX, !mcsema_real_eip !48
  %RSP_val.80 = load i64, i64* %XSP, !mcsema_real_eip !49
  %74 = add i64 16, %RSP_val.80, !mcsema_real_eip !49
  %75 = xor i64 %74, %RSP_val.80, !mcsema_real_eip !49
  %76 = xor i64 %75, 16, !mcsema_real_eip !49
  %77 = and i64 %76, 16, !mcsema_real_eip !49
  %78 = icmp ne i64 %77, 0, !mcsema_real_eip !49
  store i1 %78, i1* %AF, !mcsema_real_eip !49
  %79 = lshr i64 %74, 63, !mcsema_real_eip !49
  %80 = trunc i64 %79 to i1, !mcsema_real_eip !49
  store i1 %80, i1* %SF, !mcsema_real_eip !49
  %81 = icmp eq i64 %74, 0, !mcsema_real_eip !49
  store i1 %81, i1* %ZF, !mcsema_real_eip !49
  %82 = xor i64 %RSP_val.80, 16, !mcsema_real_eip !49
  %83 = xor i64 %82, -1, !mcsema_real_eip !49
  %84 = xor i64 %RSP_val.80, %74, !mcsema_real_eip !49
  %85 = and i64 %83, %84, !mcsema_real_eip !49
  %86 = lshr i64 %85, 63, !mcsema_real_eip !49
  %87 = and i64 %86, 1, !mcsema_real_eip !49
  %88 = trunc i64 %87 to i1, !mcsema_real_eip !49
  store i1 %88, i1* %OF, !mcsema_real_eip !49
  %89 = trunc i64 %74 to i8, !mcsema_real_eip !49
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !49
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !49
  %92 = xor i1 %91, true, !mcsema_real_eip !49
  store i1 %92, i1* %PF, !mcsema_real_eip !49
  %93 = icmp ult i64 %74, %RSP_val.80, !mcsema_real_eip !49
  store i1 %93, i1* %CF, !mcsema_real_eip !49
  store i64 %74, i64* %XSP, !mcsema_real_eip !49
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !50
  %94 = inttoptr i64 %RSP_val.81 to i64*, !mcsema_real_eip !50
  %95 = load i64, i64* %94, !mcsema_real_eip !50
  store i64 %95, i64* %XBP, !mcsema_real_eip !50
  %96 = add i64 %RSP_val.81, 8, !mcsema_real_eip !50
  store i64 %96, i64* %XSP, !mcsema_real_eip !50
  %RSP_val.82 = load i64, i64* %XSP, !mcsema_real_eip !51
  %97 = add i64 %RSP_val.82, 8, !mcsema_real_eip !51
  %98 = inttoptr i64 %RSP_val.82 to i64*, !mcsema_real_eip !51
  %99 = load i64, i64* %98, !mcsema_real_eip !51
  store i64 %99, i64* %XIP, !mcsema_real_eip !51
  store i64 %97, i64* %XSP, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

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
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 7}
!6 = !{i64 10}
!7 = !{i64 13}
!8 = !{i64 16}
!9 = !{i64 19}
!10 = !{i64 23}
!11 = !{i64 29}
!12 = !{i64 34}
!13 = !{i64 37}
!14 = !{i64 40}
!15 = !{i64 42}
!16 = !{i64 43}
!17 = !{i64 46}
!18 = !{i64 48}
!19 = !{i64 51}
!20 = !{i64 57}
!21 = !{i64 60}
!22 = !{i64 63}
!23 = !{i64 66}
!24 = !{i64 71}
!25 = !{i64 74}
!26 = !{i64 77}
!27 = !{i64 80}
!28 = !{i64 83}
!29 = !{i64 86}
!30 = !{i64 89}
!31 = !{i64 94}
!32 = !{i64 97}
!33 = !{i64 98}
!34 = !{i64 112}
!35 = !{i64 113}
!36 = !{i64 116}
!37 = !{i64 120}
!38 = !{i64 125}
!39 = !{i64 130}
!40 = !{i64 137}
!41 = !{i64 142}
!42 = !{i64 152}
!43 = !{i64 155}
!44 = !{i64 158}
!45 = !{i64 160}
!46 = !{i64 165}
!47 = !{i64 168}
!48 = !{i64 171}
!49 = !{i64 173}
!50 = !{i64 177}
!51 = !{i64 178}
