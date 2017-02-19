; ModuleID = 'Output/test_2_1.clang.bc'
source_filename = "Output/test_2_1.clang.bc"
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
module asm "  .globl sub_60;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_60(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xd8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"S\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"r\00\00\00\00A\0E\10\86\02C\0D\06E\83\03" }>, align 64

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
  %22 = add i64 %RBP_val.4, 24, !mcsema_real_eip !5
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !5
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !5
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !5
  %26 = load i32, i32* %25, !mcsema_real_eip !5
  %27 = zext i32 %26 to i64, !mcsema_real_eip !5
  store i64 %27, i64* %XAX, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %28 = add i64 %RBP_val.5, 16, !mcsema_real_eip !6
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !6
  %30 = ptrtoint i64* %29 to i64, !mcsema_real_eip !6
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !6
  %32 = load i32, i32* %31, !mcsema_real_eip !6
  %33 = zext i32 %32 to i64, !mcsema_real_eip !6
  store i64 %33, i64* %R10, !mcsema_real_eip !6
  %34 = getelementptr %0, %0* @data_0xd2, i64 0, i32 0, !mcsema_real_eip !7
  %35 = ptrtoint [4 x i8]* %34 to i64, !mcsema_real_eip !7
  %36 = add i64 %35, 0, !mcsema_real_eip !7
  store i64 %36, i64* %R11, !mcsema_real_eip !7
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !8
  %37 = add i64 %RBP_val.6, -4, !mcsema_real_eip !8
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !8
  %EDI.7 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.8 = load i32, i32* %EDI.7, !mcsema_real_eip !8
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !8
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.8, i32* %40, !mcsema_real_eip !8
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !9
  %41 = add i64 %RBP_val.9, -8, !mcsema_real_eip !9
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !9
  %ESI.10 = bitcast i64* %XSI to i32*, !mcsema_real_eip !9
  %ESI_val.11 = load i32, i32* %ESI.10, !mcsema_real_eip !9
  %43 = ptrtoint i64* %42 to i64, !mcsema_real_eip !9
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !9
  store i32 %ESI_val.11, i32* %44, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %45 = add i64 %RBP_val.12, -12, !mcsema_real_eip !10
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !10
  %EDX.13 = bitcast i64* %XDX to i32*, !mcsema_real_eip !10
  %EDX_val.14 = load i32, i32* %EDX.13, !mcsema_real_eip !10
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !10
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !10
  store i32 %EDX_val.14, i32* %48, !mcsema_real_eip !10
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %49 = add i64 %RBP_val.15, -16, !mcsema_real_eip !11
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !11
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  %ECX_val.17 = load i32, i32* %ECX.16, !mcsema_real_eip !11
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !11
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !11
  store i32 %ECX_val.17, i32* %52, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !12
  %53 = add i64 %RBP_val.18, -20, !mcsema_real_eip !12
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !12
  %R8D.19 = bitcast i64* %R8 to i32*, !mcsema_real_eip !12
  %R8D_val.20 = load i32, i32* %R8D.19, !mcsema_real_eip !12
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !12
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !12
  store i32 %R8D_val.20, i32* %56, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %57 = add i64 %RBP_val.21, -24, !mcsema_real_eip !13
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !13
  %R9D.22 = bitcast i64* %R9 to i32*, !mcsema_real_eip !13
  %R9D_val.23 = load i32, i32* %R9D.22, !mcsema_real_eip !13
  %59 = ptrtoint i64* %58 to i64, !mcsema_real_eip !13
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !13
  store i32 %R9D_val.23, i32* %60, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !14
  %61 = add i64 %RBP_val.24, -28, !mcsema_real_eip !14
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !14
  %R10D.25 = bitcast i64* %R10 to i32*, !mcsema_real_eip !14
  %R10D_val.26 = load i32, i32* %R10D.25, !mcsema_real_eip !14
  %63 = ptrtoint i64* %62 to i64, !mcsema_real_eip !14
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !14
  store i32 %R10D_val.26, i32* %64, !mcsema_real_eip !14
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !15
  %65 = add i64 %RBP_val.27, -32, !mcsema_real_eip !15
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !15
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !15
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !15
  %67 = ptrtoint i64* %66 to i64, !mcsema_real_eip !15
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.29, i32* %68, !mcsema_real_eip !15
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !16
  %69 = add i64 %RBP_val.30, -28, !mcsema_real_eip !16
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !16
  %71 = ptrtoint i64* %70 to i64, !mcsema_real_eip !16
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !16
  %73 = load i32, i32* %72, !mcsema_real_eip !16
  %74 = zext i32 %73 to i64, !mcsema_real_eip !16
  store i64 %74, i64* %XAX, !mcsema_real_eip !16
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !17
  %75 = add i64 %RBP_val.31, -32, !mcsema_real_eip !17
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !17
  %77 = ptrtoint i64* %76 to i64, !mcsema_real_eip !17
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !17
  %79 = load i32, i32* %78, !mcsema_real_eip !17
  %EAX.32 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.33 = load i32, i32* %EAX.32, !mcsema_real_eip !17
  %80 = add i32 %EAX_val.33, %79, !mcsema_real_eip !17
  %81 = xor i32 %80, %79, !mcsema_real_eip !17
  %82 = xor i32 %81, %EAX_val.33, !mcsema_real_eip !17
  %83 = and i32 %82, 16, !mcsema_real_eip !17
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !17
  store i1 %84, i1* %AF, !mcsema_real_eip !17
  %85 = lshr i32 %80, 31, !mcsema_real_eip !17
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !17
  store i1 %86, i1* %SF, !mcsema_real_eip !17
  %87 = icmp eq i32 %80, 0, !mcsema_real_eip !17
  store i1 %87, i1* %ZF, !mcsema_real_eip !17
  %88 = xor i32 %79, %EAX_val.33, !mcsema_real_eip !17
  %89 = xor i32 %88, -1, !mcsema_real_eip !17
  %90 = xor i32 %79, %80, !mcsema_real_eip !17
  %91 = and i32 %89, %90, !mcsema_real_eip !17
  %92 = lshr i32 %91, 31, !mcsema_real_eip !17
  %93 = and i32 %92, 1, !mcsema_real_eip !17
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !17
  store i1 %94, i1* %OF, !mcsema_real_eip !17
  %95 = trunc i32 %80 to i8, !mcsema_real_eip !17
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !17
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !17
  %98 = xor i1 %97, true, !mcsema_real_eip !17
  store i1 %98, i1* %PF, !mcsema_real_eip !17
  %99 = icmp ult i32 %80, %79, !mcsema_real_eip !17
  store i1 %99, i1* %CF, !mcsema_real_eip !17
  %100 = zext i32 %80 to i64, !mcsema_real_eip !17
  store i64 %100, i64* %XAX, !mcsema_real_eip !17
  %R11_val.34 = load i64, i64* %R11, !mcsema_real_eip !18
  store i64 %R11_val.34, i64* %XDI, !mcsema_real_eip !18
  %EAX.35 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.36 = load i32, i32* %EAX.35, !mcsema_real_eip !19
  %101 = zext i32 %EAX_val.36 to i64, !mcsema_real_eip !19
  store i64 %101, i64* %XSI, !mcsema_real_eip !19
  %AL.37 = bitcast i64* %XAX to i8*, !mcsema_real_eip !20
  store i8 0, i8* %AL.37, !mcsema_real_eip !20
  %RDI_val.38 = load i64, i64* %XDI, !mcsema_real_eip !21
  %RSI_val.39 = load i64, i64* %XSI, !mcsema_real_eip !21
  %RDX_val.40 = load i64, i64* %XDX, !mcsema_real_eip !21
  %RCX_val.41 = load i64, i64* %XCX, !mcsema_real_eip !21
  %R8_val.42 = load i64, i64* %R8, !mcsema_real_eip !21
  %R9_val.43 = load i64, i64* %R9, !mcsema_real_eip !21
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !21
  %102 = inttoptr i64 %RSP_val.44 to i64*, !mcsema_real_eip !21
  %103 = load i64, i64* %102, !mcsema_real_eip !21
  %104 = add i64 %RSP_val.44, 8, !mcsema_real_eip !21
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !21
  %106 = load i64, i64* %105, !mcsema_real_eip !21
  %107 = add i64 %104, 8, !mcsema_real_eip !21
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !21
  %109 = load i64, i64* %108, !mcsema_real_eip !21
  %110 = add i64 %107, 8, !mcsema_real_eip !21
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !21
  %112 = load i64, i64* %111, !mcsema_real_eip !21
  %113 = add i64 %110, 8, !mcsema_real_eip !21
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !21
  %115 = load i64, i64* %114, !mcsema_real_eip !21
  %116 = add i64 %113, 8, !mcsema_real_eip !21
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !21
  %118 = load i64, i64* %117, !mcsema_real_eip !21
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !21
  %119 = sub i64 %RSP_val.45, 8, !mcsema_real_eip !21
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !21
  store i64 -2415393069852865332, i64* %120, !mcsema_real_eip !21
  store i64 %119, i64* %XSP, !mcsema_real_eip !21
  %121 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.38, i64 %RSI_val.39, i64 %RDX_val.40, i64 %RCX_val.41, i64 %R8_val.42, i64 %R9_val.43, i64 %103, i64 %106, i64 %109, i64 %112, i64 %115, i64 %118), !mcsema_real_eip !21
  store i64 %121, i64* %XAX, !mcsema_real_eip !21
  %ECX.46 = bitcast i64* %XCX to i32*, !mcsema_real_eip !22
  %ECX_val.47 = load i32, i32* %ECX.46, !mcsema_real_eip !22
  %ECX.48 = bitcast i64* %XCX to i32*, !mcsema_real_eip !22
  %ECX_val.49 = load i32, i32* %ECX.48, !mcsema_real_eip !22
  %122 = xor i32 %ECX_val.47, %ECX_val.49, !mcsema_real_eip !22
  store i1 false, i1* %CF, !mcsema_real_eip !22
  store i1 false, i1* %OF, !mcsema_real_eip !22
  %123 = lshr i32 %122, 31, !mcsema_real_eip !22
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !22
  store i1 %124, i1* %SF, !mcsema_real_eip !22
  %125 = icmp eq i32 %122, 0, !mcsema_real_eip !22
  store i1 %125, i1* %ZF, !mcsema_real_eip !22
  %126 = trunc i32 %122 to i8, !mcsema_real_eip !22
  %127 = call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !22
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !22
  %129 = xor i1 %128, true, !mcsema_real_eip !22
  store i1 %129, i1* %PF, !mcsema_real_eip !22
  store i1 undef, i1* %AF, !mcsema_real_eip !22
  %130 = zext i32 %122 to i64, !mcsema_real_eip !22
  store i64 %130, i64* %XCX, !mcsema_real_eip !22
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !23
  %131 = add i64 %RBP_val.50, -36, !mcsema_real_eip !23
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !23
  %EAX.51 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.52 = load i32, i32* %EAX.51, !mcsema_real_eip !23
  %133 = ptrtoint i64* %132 to i64, !mcsema_real_eip !23
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.52, i32* %134, !mcsema_real_eip !23
  %ECX.53 = bitcast i64* %XCX to i32*, !mcsema_real_eip !24
  %ECX_val.54 = load i32, i32* %ECX.53, !mcsema_real_eip !24
  %135 = zext i32 %ECX_val.54 to i64, !mcsema_real_eip !24
  store i64 %135, i64* %XAX, !mcsema_real_eip !24
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !25
  %136 = add i64 48, %RSP_val.55, !mcsema_real_eip !25
  %137 = xor i64 %136, %RSP_val.55, !mcsema_real_eip !25
  %138 = xor i64 %137, 48, !mcsema_real_eip !25
  %139 = and i64 %138, 16, !mcsema_real_eip !25
  %140 = icmp ne i64 %139, 0, !mcsema_real_eip !25
  store i1 %140, i1* %AF, !mcsema_real_eip !25
  %141 = lshr i64 %136, 63, !mcsema_real_eip !25
  %142 = trunc i64 %141 to i1, !mcsema_real_eip !25
  store i1 %142, i1* %SF, !mcsema_real_eip !25
  %143 = icmp eq i64 %136, 0, !mcsema_real_eip !25
  store i1 %143, i1* %ZF, !mcsema_real_eip !25
  %144 = xor i64 %RSP_val.55, 48, !mcsema_real_eip !25
  %145 = xor i64 %144, -1, !mcsema_real_eip !25
  %146 = xor i64 %RSP_val.55, %136, !mcsema_real_eip !25
  %147 = and i64 %145, %146, !mcsema_real_eip !25
  %148 = lshr i64 %147, 63, !mcsema_real_eip !25
  %149 = and i64 %148, 1, !mcsema_real_eip !25
  %150 = trunc i64 %149 to i1, !mcsema_real_eip !25
  store i1 %150, i1* %OF, !mcsema_real_eip !25
  %151 = trunc i64 %136 to i8, !mcsema_real_eip !25
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !25
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !25
  %154 = xor i1 %153, true, !mcsema_real_eip !25
  store i1 %154, i1* %PF, !mcsema_real_eip !25
  %155 = icmp ult i64 %136, %RSP_val.55, !mcsema_real_eip !25
  store i1 %155, i1* %CF, !mcsema_real_eip !25
  store i64 %136, i64* %XSP, !mcsema_real_eip !25
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !26
  %156 = inttoptr i64 %RSP_val.56 to i64*, !mcsema_real_eip !26
  %157 = load i64, i64* %156, !mcsema_real_eip !26
  store i64 %157, i64* %XBP, !mcsema_real_eip !26
  %158 = add i64 %RSP_val.56, 8, !mcsema_real_eip !26
  store i64 %158, i64* %XSP, !mcsema_real_eip !26
  %RSP_val.57 = load i64, i64* %XSP, !mcsema_real_eip !27
  %159 = add i64 %RSP_val.57, 8, !mcsema_real_eip !27
  %160 = inttoptr i64 %RSP_val.57 to i64*, !mcsema_real_eip !27
  %161 = load i64, i64* %160, !mcsema_real_eip !27
  store i64 %161, i64* %XIP, !mcsema_real_eip !27
  store i64 %159, i64* %XSP, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !28
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !28
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !28
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !28
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !28
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !28
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !28
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !28
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !28
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !28
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !28
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !28
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !28
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !28
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !28
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !28
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !28
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !28
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !28
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !28
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !28
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !28
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !28
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !28
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !28
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !28
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !28
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !28
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !28
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !28
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !28
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !28
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !28
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !28
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !28
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !28
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !28
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !28
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !28
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !28
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !28
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !28
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !28
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !28
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !28
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !28
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !28
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !28
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !28
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !28
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !28
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !28
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !28
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !28
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !28
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !28
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !28
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !28
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !28
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !28
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !28
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !28
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !28
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !28
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !28
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !28
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !28
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !28
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !28
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !28
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !28
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !28
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !28
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !28
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !28
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !28
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !28
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !28
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !28
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !28
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !28
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !28
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !28
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !28
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !28
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !28
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !28
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !28
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !28
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !28
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !28
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !28
  br label %block_0x60, !mcsema_real_eip !28

block_0x60:                                       ; preds = %entry
  %RBP_val.58 = load i64, i64* %XBP, !mcsema_real_eip !28
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !28
  %1 = sub i64 %RSP_val.59, 8, !mcsema_real_eip !28
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !28
  store i64 %RBP_val.58, i64* %2, !mcsema_real_eip !28
  store i64 %1, i64* %XSP, !mcsema_real_eip !28
  %RSP_val.60 = load i64, i64* %XSP, !mcsema_real_eip !29
  store i64 %RSP_val.60, i64* %XBP, !mcsema_real_eip !29
  %RBX_val.61 = load i64, i64* %XBX, !mcsema_real_eip !30
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !30
  %3 = sub i64 %RSP_val.62, 8, !mcsema_real_eip !30
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !30
  store i64 %RBX_val.61, i64* %4, !mcsema_real_eip !30
  store i64 %3, i64* %XSP, !mcsema_real_eip !30
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !31
  %5 = sext i8 40 to i64, !mcsema_real_eip !31
  %6 = sub i64 %RSP_val.63, %5, !mcsema_real_eip !31
  %7 = xor i64 %6, %RSP_val.63, !mcsema_real_eip !31
  %8 = xor i64 %7, %5, !mcsema_real_eip !31
  %9 = and i64 %8, 16, !mcsema_real_eip !31
  %10 = icmp ne i64 %9, 0, !mcsema_real_eip !31
  store i1 %10, i1* %AF, !mcsema_real_eip !31
  %11 = trunc i64 %6 to i8, !mcsema_real_eip !31
  %12 = call i8 @llvm.ctpop.i8(i8 %11), !mcsema_real_eip !31
  %13 = trunc i8 %12 to i1, !mcsema_real_eip !31
  %14 = xor i1 %13, true, !mcsema_real_eip !31
  store i1 %14, i1* %PF, !mcsema_real_eip !31
  %15 = icmp eq i64 %6, 0, !mcsema_real_eip !31
  store i1 %15, i1* %ZF, !mcsema_real_eip !31
  %16 = lshr i64 %6, 63, !mcsema_real_eip !31
  %17 = trunc i64 %16 to i1, !mcsema_real_eip !31
  store i1 %17, i1* %SF, !mcsema_real_eip !31
  %18 = icmp ult i64 %RSP_val.63, %5, !mcsema_real_eip !31
  store i1 %18, i1* %CF, !mcsema_real_eip !31
  %19 = xor i64 %RSP_val.63, %5, !mcsema_real_eip !31
  %20 = xor i64 %RSP_val.63, %6, !mcsema_real_eip !31
  %21 = and i64 %19, %20, !mcsema_real_eip !31
  %22 = lshr i64 %21, 63, !mcsema_real_eip !31
  %23 = trunc i64 %22 to i1, !mcsema_real_eip !31
  store i1 %23, i1* %OF, !mcsema_real_eip !31
  store i64 %6, i64* %XSP, !mcsema_real_eip !31
  %24 = zext i32 100 to i64, !mcsema_real_eip !32
  store i64 %24, i64* %XAX, !mcsema_real_eip !32
  %25 = zext i32 200 to i64, !mcsema_real_eip !33
  store i64 %25, i64* %XCX, !mcsema_real_eip !33
  %26 = zext i32 300 to i64, !mcsema_real_eip !34
  store i64 %26, i64* %XDX, !mcsema_real_eip !34
  %27 = zext i32 400 to i64, !mcsema_real_eip !35
  store i64 %27, i64* %R8, !mcsema_real_eip !35
  %28 = zext i32 500 to i64, !mcsema_real_eip !36
  store i64 %28, i64* %R9, !mcsema_real_eip !36
  %29 = zext i32 600 to i64, !mcsema_real_eip !37
  store i64 %29, i64* %R10, !mcsema_real_eip !37
  %30 = zext i32 10 to i64, !mcsema_real_eip !38
  store i64 %30, i64* %R11, !mcsema_real_eip !38
  %31 = zext i32 20 to i64, !mcsema_real_eip !39
  store i64 %31, i64* %XBX, !mcsema_real_eip !39
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !40
  %32 = add i64 %RBP_val.64, -12, !mcsema_real_eip !40
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !40
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !40
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !40
  store i32 0, i32* %35, !mcsema_real_eip !40
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !41
  %36 = add i64 %RBP_val.65, -16, !mcsema_real_eip !41
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !41
  %EDI.66 = bitcast i64* %XDI to i32*, !mcsema_real_eip !41
  %EDI_val.67 = load i32, i32* %EDI.66, !mcsema_real_eip !41
  %38 = ptrtoint i64* %37 to i64, !mcsema_real_eip !41
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !41
  store i32 %EDI_val.67, i32* %39, !mcsema_real_eip !41
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !42
  %40 = add i64 %RBP_val.68, -24, !mcsema_real_eip !42
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !42
  %RSI_val.69 = load i64, i64* %XSI, !mcsema_real_eip !42
  store i64 %RSI_val.69, i64* %41, !mcsema_real_eip !42
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !43
  %42 = zext i32 %EAX_val.71 to i64, !mcsema_real_eip !43
  store i64 %42, i64* %XDI, !mcsema_real_eip !43
  %ECX.72 = bitcast i64* %XCX to i32*, !mcsema_real_eip !44
  %ECX_val.73 = load i32, i32* %ECX.72, !mcsema_real_eip !44
  %43 = zext i32 %ECX_val.73 to i64, !mcsema_real_eip !44
  store i64 %43, i64* %XSI, !mcsema_real_eip !44
  %R8D.74 = bitcast i64* %R8 to i32*, !mcsema_real_eip !45
  %R8D_val.75 = load i32, i32* %R8D.74, !mcsema_real_eip !45
  %44 = zext i32 %R8D_val.75 to i64, !mcsema_real_eip !45
  store i64 %44, i64* %XCX, !mcsema_real_eip !45
  %R9D.76 = bitcast i64* %R9 to i32*, !mcsema_real_eip !46
  %R9D_val.77 = load i32, i32* %R9D.76, !mcsema_real_eip !46
  %45 = zext i32 %R9D_val.77 to i64, !mcsema_real_eip !46
  store i64 %45, i64* %R8, !mcsema_real_eip !46
  %R10D.78 = bitcast i64* %R10 to i32*, !mcsema_real_eip !47
  %R10D_val.79 = load i32, i32* %R10D.78, !mcsema_real_eip !47
  %46 = zext i32 %R10D_val.79 to i64, !mcsema_real_eip !47
  store i64 %46, i64* %R9, !mcsema_real_eip !47
  %RSP_val.80 = load i64, i64* %XSP, !mcsema_real_eip !48
  %47 = add i64 %RSP_val.80, 0, !mcsema_real_eip !48
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !48
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !48
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !48
  store i32 10, i32* %50, !mcsema_real_eip !48
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !49
  %51 = add i64 %RSP_val.81, 8, !mcsema_real_eip !49
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !49
  %53 = ptrtoint i64* %52 to i64, !mcsema_real_eip !49
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !49
  store i32 20, i32* %54, !mcsema_real_eip !49
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !50
  %55 = add i64 %RBP_val.82, -28, !mcsema_real_eip !50
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !50
  %EBX.83 = bitcast i64* %XBX to i32*, !mcsema_real_eip !50
  %EBX_val.84 = load i32, i32* %EBX.83, !mcsema_real_eip !50
  %57 = ptrtoint i64* %56 to i64, !mcsema_real_eip !50
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !50
  store i32 %EBX_val.84, i32* %58, !mcsema_real_eip !50
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !51
  %59 = add i64 %RBP_val.85, -32, !mcsema_real_eip !51
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !51
  %R11D.86 = bitcast i64* %R11 to i32*, !mcsema_real_eip !51
  %R11D_val.87 = load i32, i32* %R11D.86, !mcsema_real_eip !51
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !51
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !51
  store i32 %R11D_val.87, i32* %62, !mcsema_real_eip !51
  %RSP_val.88 = load i64, i64* %XSP, !mcsema_real_eip !52
  %63 = sub i64 %RSP_val.88, 8, !mcsema_real_eip !52
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !52
  store i64 -4981261766360305936, i64* %64, !mcsema_real_eip !52
  store i64 %63, i64* %XSP, !mcsema_real_eip !52
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !52
  %RSP_val.89 = load i64, i64* %XSP, !mcsema_real_eip !53
  %65 = add i64 40, %RSP_val.89, !mcsema_real_eip !53
  %66 = xor i64 %65, %RSP_val.89, !mcsema_real_eip !53
  %67 = xor i64 %66, 40, !mcsema_real_eip !53
  %68 = and i64 %67, 16, !mcsema_real_eip !53
  %69 = icmp ne i64 %68, 0, !mcsema_real_eip !53
  store i1 %69, i1* %AF, !mcsema_real_eip !53
  %70 = lshr i64 %65, 63, !mcsema_real_eip !53
  %71 = trunc i64 %70 to i1, !mcsema_real_eip !53
  store i1 %71, i1* %SF, !mcsema_real_eip !53
  %72 = icmp eq i64 %65, 0, !mcsema_real_eip !53
  store i1 %72, i1* %ZF, !mcsema_real_eip !53
  %73 = xor i64 %RSP_val.89, 40, !mcsema_real_eip !53
  %74 = xor i64 %73, -1, !mcsema_real_eip !53
  %75 = xor i64 %RSP_val.89, %65, !mcsema_real_eip !53
  %76 = and i64 %74, %75, !mcsema_real_eip !53
  %77 = lshr i64 %76, 63, !mcsema_real_eip !53
  %78 = and i64 %77, 1, !mcsema_real_eip !53
  %79 = trunc i64 %78 to i1, !mcsema_real_eip !53
  store i1 %79, i1* %OF, !mcsema_real_eip !53
  %80 = trunc i64 %65 to i8, !mcsema_real_eip !53
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !53
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !53
  %83 = xor i1 %82, true, !mcsema_real_eip !53
  store i1 %83, i1* %PF, !mcsema_real_eip !53
  %84 = icmp ult i64 %65, %RSP_val.89, !mcsema_real_eip !53
  store i1 %84, i1* %CF, !mcsema_real_eip !53
  store i64 %65, i64* %XSP, !mcsema_real_eip !53
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !54
  %85 = inttoptr i64 %RSP_val.90 to i64*, !mcsema_real_eip !54
  %86 = load i64, i64* %85, !mcsema_real_eip !54
  store i64 %86, i64* %XBX, !mcsema_real_eip !54
  %87 = add i64 %RSP_val.90, 8, !mcsema_real_eip !54
  store i64 %87, i64* %XSP, !mcsema_real_eip !54
  %RSP_val.91 = load i64, i64* %XSP, !mcsema_real_eip !55
  %88 = inttoptr i64 %RSP_val.91 to i64*, !mcsema_real_eip !55
  %89 = load i64, i64* %88, !mcsema_real_eip !55
  store i64 %89, i64* %XBP, !mcsema_real_eip !55
  %90 = add i64 %RSP_val.91, 8, !mcsema_real_eip !55
  store i64 %90, i64* %XSP, !mcsema_real_eip !55
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !56
  %91 = add i64 %RSP_val.92, 8, !mcsema_real_eip !56
  %92 = inttoptr i64 %RSP_val.92 to i64*, !mcsema_real_eip !56
  %93 = load i64, i64* %92, !mcsema_real_eip !56
  store i64 %93, i64* %XIP, !mcsema_real_eip !56
  store i64 %91, i64* %XSP, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56
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
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 15}
!8 = !{i64 25}
!9 = !{i64 28}
!10 = !{i64 31}
!11 = !{i64 34}
!12 = !{i64 37}
!13 = !{i64 41}
!14 = !{i64 45}
!15 = !{i64 49}
!16 = !{i64 52}
!17 = !{i64 55}
!18 = !{i64 58}
!19 = !{i64 61}
!20 = !{i64 63}
!21 = !{i64 65}
!22 = !{i64 70}
!23 = !{i64 72}
!24 = !{i64 75}
!25 = !{i64 77}
!26 = !{i64 81}
!27 = !{i64 82}
!28 = !{i64 96}
!29 = !{i64 97}
!30 = !{i64 100}
!31 = !{i64 101}
!32 = !{i64 105}
!33 = !{i64 110}
!34 = !{i64 115}
!35 = !{i64 120}
!36 = !{i64 126}
!37 = !{i64 132}
!38 = !{i64 138}
!39 = !{i64 144}
!40 = !{i64 149}
!41 = !{i64 156}
!42 = !{i64 159}
!43 = !{i64 163}
!44 = !{i64 165}
!45 = !{i64 167}
!46 = !{i64 170}
!47 = !{i64 173}
!48 = !{i64 176}
!49 = !{i64 183}
!50 = !{i64 191}
!51 = !{i64 194}
!52 = !{i64 198}
!53 = !{i64 203}
!54 = !{i64 207}
!55 = !{i64 208}
!56 = !{i64 209}
