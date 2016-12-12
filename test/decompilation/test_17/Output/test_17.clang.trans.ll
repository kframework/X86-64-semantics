; ModuleID = 'Output/test_17.clang.trans.bc'
source_filename = "Output/test_17.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl printdata;"
module asm "  .type printdata,@function"
module asm "printdata:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size printdata,0b-printdata;"
module asm "  .cfi_endproc;"

%0 = type <{ [24 x i8], i64, [16 x i8], i64, [16 x i8], i64, [16 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x60 = internal global %0 <{ [24 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 4), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 8), [16 x i8] zeroinitializer }>, align 64
@data_0xc0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"_\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %3 = add i64 %RBP_val.3, -8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %5 = ptrtoint i64* %4 to i64, !mcsema_real_eip !4
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !4
  store i32 0, i32* %6, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %7 = add i64 %RBP_val.4, -4, !mcsema_real_eip !5
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !5
  %9 = ptrtoint i64* %8 to i64, !mcsema_real_eip !5
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %10, !mcsema_real_eip !5
  br label %block_0x12, !mcsema_real_eip !6

block_0x12:                                       ; preds = %block_0x4c, %block_0x0
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %11 = add i64 %RBP_val.5, -4, !mcsema_real_eip !6
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !6
  %13 = ptrtoint i64* %12 to i64, !mcsema_real_eip !6
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !6
  %15 = load i32, i32* %14, !mcsema_real_eip !6
  %16 = sext i32 %15 to i64, !mcsema_real_eip !6
  store i64 %16, i64* %XAX, !mcsema_real_eip !6
  %RAX_val.6 = load i64, i64* %XAX, !mcsema_real_eip !7
  %17 = sub i64 %RAX_val.6, 10, !mcsema_real_eip !7
  %18 = xor i64 %17, %RAX_val.6, !mcsema_real_eip !7
  %19 = xor i64 %18, 10, !mcsema_real_eip !7
  %20 = and i64 %19, 16, !mcsema_real_eip !7
  %21 = icmp ne i64 %20, 0, !mcsema_real_eip !7
  store i1 %21, i1* %AF, !mcsema_real_eip !7
  %22 = trunc i64 %17 to i8, !mcsema_real_eip !7
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !7
  %24 = trunc i8 %23 to i1, !mcsema_real_eip !7
  %25 = xor i1 %24, true, !mcsema_real_eip !7
  store i1 %25, i1* %PF, !mcsema_real_eip !7
  %26 = icmp eq i64 %17, 0, !mcsema_real_eip !7
  store i1 %26, i1* %ZF, !mcsema_real_eip !7
  %27 = lshr i64 %17, 63, !mcsema_real_eip !7
  %28 = trunc i64 %27 to i1, !mcsema_real_eip !7
  store i1 %28, i1* %SF, !mcsema_real_eip !7
  %29 = icmp ult i64 %RAX_val.6, 10, !mcsema_real_eip !7
  store i1 %29, i1* %CF, !mcsema_real_eip !7
  %30 = xor i64 %RAX_val.6, 10, !mcsema_real_eip !7
  %31 = xor i64 %RAX_val.6, %17, !mcsema_real_eip !7
  %32 = and i64 %30, %31, !mcsema_real_eip !7
  %33 = lshr i64 %32, 63, !mcsema_real_eip !7
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !7
  store i1 %34, i1* %OF, !mcsema_real_eip !7
  %35 = load i1, i1* %CF, !mcsema_real_eip !8
  %36 = icmp eq i1 %35, false, !mcsema_real_eip !8
  br i1 %36, label %block_0x5a, label %block_0x20, !mcsema_real_eip !8

block_0x20:                                       ; preds = %block_0x12
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %37 = add i64 %RBP_val.10, -4, !mcsema_real_eip !9
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !9
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !9
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !9
  %41 = load i32, i32* %40, !mcsema_real_eip !9
  %42 = sext i32 %41 to i64, !mcsema_real_eip !9
  store i64 %42, i64* %XAX, !mcsema_real_eip !9
  %RAX_val.11 = load i64, i64* %XAX, !mcsema_real_eip !10
  %43 = mul i64 %RAX_val.11, 8, !mcsema_real_eip !10
  %44 = add i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), %43, !mcsema_real_eip !10
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !10
  %46 = load i64, i64* %45, !mcsema_real_eip !10
  %47 = sub i64 %46, 0, !mcsema_real_eip !10
  %48 = xor i64 %47, %46, !mcsema_real_eip !10
  %49 = xor i64 %48, 0, !mcsema_real_eip !10
  %50 = and i64 %49, 16, !mcsema_real_eip !10
  %51 = icmp ne i64 %50, 0, !mcsema_real_eip !10
  store i1 %51, i1* %AF, !mcsema_real_eip !10
  %52 = trunc i64 %47 to i8, !mcsema_real_eip !10
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !10
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !10
  %55 = xor i1 %54, true, !mcsema_real_eip !10
  store i1 %55, i1* %PF, !mcsema_real_eip !10
  %56 = icmp eq i64 %47, 0, !mcsema_real_eip !10
  store i1 %56, i1* %ZF, !mcsema_real_eip !10
  %57 = lshr i64 %47, 63, !mcsema_real_eip !10
  %58 = trunc i64 %57 to i1, !mcsema_real_eip !10
  store i1 %58, i1* %SF, !mcsema_real_eip !10
  %59 = icmp ult i64 %46, 0, !mcsema_real_eip !10
  store i1 %59, i1* %CF, !mcsema_real_eip !10
  %60 = xor i64 %46, 0, !mcsema_real_eip !10
  %61 = xor i64 %46, %47, !mcsema_real_eip !10
  %62 = and i64 %60, %61, !mcsema_real_eip !10
  %63 = lshr i64 %62, 63, !mcsema_real_eip !10
  %64 = trunc i64 %63 to i1, !mcsema_real_eip !10
  store i1 %64, i1* %OF, !mcsema_real_eip !10
  %65 = load i1, i1* %ZF, !mcsema_real_eip !11
  %66 = icmp eq i1 %65, true, !mcsema_real_eip !11
  br i1 %66, label %block_0x47, label %block_0x33, !mcsema_real_eip !11

block_0x5a:                                       ; preds = %block_0x12
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !12
  %67 = add i64 %RBP_val.7, -8, !mcsema_real_eip !12
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !12
  %69 = ptrtoint i64* %68 to i64, !mcsema_real_eip !12
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !12
  %71 = load i32, i32* %70, !mcsema_real_eip !12
  %72 = zext i32 %71 to i64, !mcsema_real_eip !12
  store i64 %72, i64* %XAX, !mcsema_real_eip !12
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !13
  %73 = inttoptr i64 %RSP_val.8 to i64*, !mcsema_real_eip !13
  %74 = load i64, i64* %73, !mcsema_real_eip !13
  store i64 %74, i64* %XBP, !mcsema_real_eip !13
  %75 = add i64 %RSP_val.8, 8, !mcsema_real_eip !13
  store i64 %75, i64* %XSP, !mcsema_real_eip !13
  %RSP_val.9 = load i64, i64* %XSP, !mcsema_real_eip !14
  %76 = add i64 %RSP_val.9, 8, !mcsema_real_eip !14
  %77 = inttoptr i64 %RSP_val.9 to i64*, !mcsema_real_eip !14
  %78 = load i64, i64* %77, !mcsema_real_eip !14
  store i64 %78, i64* %XIP, !mcsema_real_eip !14
  store i64 %76, i64* %XSP, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x20
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !15
  %79 = add i64 %RBP_val.12, -4, !mcsema_real_eip !15
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !15
  %81 = ptrtoint i64* %80 to i64, !mcsema_real_eip !15
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !15
  %83 = load i32, i32* %82, !mcsema_real_eip !15
  %84 = sext i32 %83 to i64, !mcsema_real_eip !15
  store i64 %84, i64* %XAX, !mcsema_real_eip !15
  %RAX_val.13 = load i64, i64* %XAX, !mcsema_real_eip !16
  %85 = mul i64 %RAX_val.13, 8, !mcsema_real_eip !16
  %86 = add i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), %85, !mcsema_real_eip !16
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !16
  %88 = load i64, i64* %87, !mcsema_real_eip !16
  store i64 %88, i64* %XAX, !mcsema_real_eip !16
  %RAX_val.14 = load i64, i64* %XAX, !mcsema_real_eip !17
  %89 = add i64 %RAX_val.14, 0, !mcsema_real_eip !17
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !17
  %91 = ptrtoint i64* %90 to i64, !mcsema_real_eip !17
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !17
  %93 = load i32, i32* %92, !mcsema_real_eip !17
  %94 = zext i32 %93 to i64, !mcsema_real_eip !17
  store i64 %94, i64* %XCX, !mcsema_real_eip !17
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !18
  %95 = add i64 %RBP_val.15, -8, !mcsema_real_eip !18
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !18
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !18
  %98 = inttoptr i64 %97 to i32*, !mcsema_real_eip !18
  %99 = load i32, i32* %98, !mcsema_real_eip !18
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.17 = load i32, i32* %ECX.16, !mcsema_real_eip !18
  %100 = add i32 %ECX_val.17, %99, !mcsema_real_eip !18
  %101 = xor i32 %100, %99, !mcsema_real_eip !18
  %102 = xor i32 %101, %ECX_val.17, !mcsema_real_eip !18
  %103 = and i32 %102, 16, !mcsema_real_eip !18
  %104 = icmp ne i32 %103, 0, !mcsema_real_eip !18
  store i1 %104, i1* %AF, !mcsema_real_eip !18
  %105 = lshr i32 %100, 31, !mcsema_real_eip !18
  %106 = trunc i32 %105 to i1, !mcsema_real_eip !18
  store i1 %106, i1* %SF, !mcsema_real_eip !18
  %107 = icmp eq i32 %100, 0, !mcsema_real_eip !18
  store i1 %107, i1* %ZF, !mcsema_real_eip !18
  %108 = xor i32 %99, %ECX_val.17, !mcsema_real_eip !18
  %109 = xor i32 %108, -1, !mcsema_real_eip !18
  %110 = xor i32 %99, %100, !mcsema_real_eip !18
  %111 = and i32 %109, %110, !mcsema_real_eip !18
  %112 = lshr i32 %111, 31, !mcsema_real_eip !18
  %113 = and i32 %112, 1, !mcsema_real_eip !18
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !18
  store i1 %114, i1* %OF, !mcsema_real_eip !18
  %115 = trunc i32 %100 to i8, !mcsema_real_eip !18
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !18
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !18
  %118 = xor i1 %117, true, !mcsema_real_eip !18
  store i1 %118, i1* %PF, !mcsema_real_eip !18
  %119 = icmp ult i32 %100, %99, !mcsema_real_eip !18
  store i1 %119, i1* %CF, !mcsema_real_eip !18
  %120 = zext i32 %100 to i64, !mcsema_real_eip !18
  store i64 %120, i64* %XCX, !mcsema_real_eip !18
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !19
  %121 = add i64 %RBP_val.18, -8, !mcsema_real_eip !19
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !19
  %ECX.19 = bitcast i64* %XCX to i32*, !mcsema_real_eip !19
  %ECX_val.20 = load i32, i32* %ECX.19, !mcsema_real_eip !19
  %123 = ptrtoint i64* %122 to i64, !mcsema_real_eip !19
  %124 = inttoptr i64 %123 to i32*, !mcsema_real_eip !19
  store i32 %ECX_val.20, i32* %124, !mcsema_real_eip !19
  br label %block_0x47, !mcsema_real_eip !20

block_0x47:                                       ; preds = %block_0x33, %block_0x20
  br label %block_0x4c, !mcsema_real_eip !21

block_0x4c:                                       ; preds = %block_0x47
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !20
  %125 = add i64 %RBP_val.21, -4, !mcsema_real_eip !20
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !20
  %127 = ptrtoint i64* %126 to i64, !mcsema_real_eip !20
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !20
  %129 = load i32, i32* %128, !mcsema_real_eip !20
  %130 = zext i32 %129 to i64, !mcsema_real_eip !20
  store i64 %130, i64* %XAX, !mcsema_real_eip !20
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !22
  %131 = add i32 1, %EAX_val.23, !mcsema_real_eip !22
  %132 = xor i32 %131, %EAX_val.23, !mcsema_real_eip !22
  %133 = xor i32 %132, 1, !mcsema_real_eip !22
  %134 = and i32 %133, 16, !mcsema_real_eip !22
  %135 = icmp ne i32 %134, 0, !mcsema_real_eip !22
  store i1 %135, i1* %AF, !mcsema_real_eip !22
  %136 = lshr i32 %131, 31, !mcsema_real_eip !22
  %137 = trunc i32 %136 to i1, !mcsema_real_eip !22
  store i1 %137, i1* %SF, !mcsema_real_eip !22
  %138 = icmp eq i32 %131, 0, !mcsema_real_eip !22
  store i1 %138, i1* %ZF, !mcsema_real_eip !22
  %139 = xor i32 %EAX_val.23, 1, !mcsema_real_eip !22
  %140 = xor i32 %139, -1, !mcsema_real_eip !22
  %141 = xor i32 %EAX_val.23, %131, !mcsema_real_eip !22
  %142 = and i32 %140, %141, !mcsema_real_eip !22
  %143 = lshr i32 %142, 31, !mcsema_real_eip !22
  %144 = and i32 %143, 1, !mcsema_real_eip !22
  %145 = trunc i32 %144 to i1, !mcsema_real_eip !22
  store i1 %145, i1* %OF, !mcsema_real_eip !22
  %146 = trunc i32 %131 to i8, !mcsema_real_eip !22
  %147 = call i8 @llvm.ctpop.i8(i8 %146), !mcsema_real_eip !22
  %148 = trunc i8 %147 to i1, !mcsema_real_eip !22
  %149 = xor i1 %148, true, !mcsema_real_eip !22
  store i1 %149, i1* %PF, !mcsema_real_eip !22
  %150 = icmp ult i32 %131, %EAX_val.23, !mcsema_real_eip !22
  store i1 %150, i1* %CF, !mcsema_real_eip !22
  %151 = zext i32 %131 to i64, !mcsema_real_eip !22
  store i64 %151, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !23
  %152 = add i64 %RBP_val.24, -4, !mcsema_real_eip !23
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !23
  %EAX.25 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.26 = load i32, i32* %EAX.25, !mcsema_real_eip !23
  %154 = ptrtoint i64* %153 to i64, !mcsema_real_eip !23
  %155 = inttoptr i64 %154 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.26, i32* %155, !mcsema_real_eip !23
  br label %block_0x12, !mcsema_real_eip !24
}

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare void @printdata() #2

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
!5 = !{i64 11}
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 26}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 45}
!12 = !{i64 90}
!13 = !{i64 93}
!14 = !{i64 94}
!15 = !{i64 51}
!16 = !{i64 55}
!17 = !{i64 63}
!18 = !{i64 65}
!19 = !{i64 68}
!20 = !{i64 76}
!21 = !{i64 71}
!22 = !{i64 79}
!23 = !{i64 82}
!24 = !{i64 85}
