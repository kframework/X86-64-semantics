; ModuleID = 'Output/test_5.clang.trans.bc'
source_filename = "Output/test_5.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl foo;"
module asm "  .type foo,@function"
module asm "foo:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size foo,0b-foo;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x50 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00I\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %RDI_val.4 = load i64, i64* %XDI, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %4, !mcsema_real_eip !4
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, -12, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %ESI.6 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.7 = load i32, i32* %ESI.6, !mcsema_real_eip !5
  %7 = ptrtoint i64* %6 to i64, !mcsema_real_eip !5
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !5
  store i32 %ESI_val.7, i32* %8, !mcsema_real_eip !5
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !6
  %9 = add i64 %RBP_val.8, -16, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !6
  %11 = ptrtoint i64* %10 to i64, !mcsema_real_eip !6
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %12, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !7
  %13 = add i64 %RBP_val.9, -20, !mcsema_real_eip !7
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !7
  %15 = ptrtoint i64* %14 to i64, !mcsema_real_eip !7
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %16, !mcsema_real_eip !7
  br label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %block_0x25, %block_0x0
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %17 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !8
  %19 = ptrtoint i64* %18 to i64, !mcsema_real_eip !8
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !8
  %21 = load i32, i32* %20, !mcsema_real_eip !8
  %22 = zext i32 %21 to i64, !mcsema_real_eip !8
  store i64 %22, i64* %XAX, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !9
  %23 = add i64 %RBP_val.11, -12, !mcsema_real_eip !9
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !9
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !9
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !9
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !9
  %27 = load i32, i32* %26, !mcsema_real_eip !9
  %28 = sub i32 %EAX_val.13, %27, !mcsema_real_eip !9
  %29 = xor i32 %28, %EAX_val.13, !mcsema_real_eip !9
  %30 = xor i32 %29, %27, !mcsema_real_eip !9
  %31 = and i32 %30, 16, !mcsema_real_eip !9
  %32 = icmp ne i32 %31, 0, !mcsema_real_eip !9
  store i1 %32, i1* %AF, !mcsema_real_eip !9
  %33 = trunc i32 %28 to i8, !mcsema_real_eip !9
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !9
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !9
  %36 = xor i1 %35, true, !mcsema_real_eip !9
  store i1 %36, i1* %PF, !mcsema_real_eip !9
  %37 = icmp eq i32 %28, 0, !mcsema_real_eip !9
  store i1 %37, i1* %ZF, !mcsema_real_eip !9
  %38 = lshr i32 %28, 31, !mcsema_real_eip !9
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !9
  store i1 %39, i1* %SF, !mcsema_real_eip !9
  %40 = icmp ult i32 %EAX_val.13, %27, !mcsema_real_eip !9
  store i1 %40, i1* %CF, !mcsema_real_eip !9
  %41 = xor i32 %EAX_val.13, %27, !mcsema_real_eip !9
  %42 = xor i32 %EAX_val.13, %28, !mcsema_real_eip !9
  %43 = and i32 %41, %42, !mcsema_real_eip !9
  %44 = lshr i32 %43, 31, !mcsema_real_eip !9
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !9
  store i1 %45, i1* %OF, !mcsema_real_eip !9
  %46 = load i1, i1* %OF, !mcsema_real_eip !10
  %47 = load i1, i1* %SF, !mcsema_real_eip !10
  %48 = icmp eq i1 %47, %46, !mcsema_real_eip !10
  br i1 %48, label %block_0x44, label %block_0x25, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x19
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !11
  %49 = add i64 %RBP_val.17, -8, !mcsema_real_eip !11
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !11
  %51 = load i64, i64* %50, !mcsema_real_eip !11
  store i64 %51, i64* %XAX, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !12
  %52 = add i64 %RBP_val.18, -20, !mcsema_real_eip !12
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !12
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !12
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !12
  %56 = load i32, i32* %55, !mcsema_real_eip !12
  %57 = sext i32 %56 to i64, !mcsema_real_eip !12
  store i64 %57, i64* %XCX, !mcsema_real_eip !12
  %RAX_val.19 = load i64, i64* %XAX, !mcsema_real_eip !13
  %58 = add i64 %RAX_val.19, 0, !mcsema_real_eip !13
  %RCX_val.20 = load i64, i64* %XCX, !mcsema_real_eip !13
  %59 = mul i64 %RCX_val.20, 4, !mcsema_real_eip !13
  %60 = add i64 %58, %59, !mcsema_real_eip !13
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !13
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !13
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !13
  %64 = load i32, i32* %63, !mcsema_real_eip !13
  %65 = zext i32 %64 to i64, !mcsema_real_eip !13
  store i64 %65, i64* %XDX, !mcsema_real_eip !13
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !14
  %66 = add i64 %RBP_val.21, -16, !mcsema_real_eip !14
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !14
  %68 = ptrtoint i64* %67 to i64, !mcsema_real_eip !14
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !14
  %70 = load i32, i32* %69, !mcsema_real_eip !14
  %EDX.22 = bitcast i64* %XDX to i32*, !mcsema_real_eip !14
  %EDX_val.23 = load i32, i32* %EDX.22, !mcsema_real_eip !14
  %71 = add i32 %EDX_val.23, %70, !mcsema_real_eip !14
  %72 = xor i32 %71, %70, !mcsema_real_eip !14
  %73 = xor i32 %72, %EDX_val.23, !mcsema_real_eip !14
  %74 = and i32 %73, 16, !mcsema_real_eip !14
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !14
  store i1 %75, i1* %AF, !mcsema_real_eip !14
  %76 = lshr i32 %71, 31, !mcsema_real_eip !14
  %77 = trunc i32 %76 to i1, !mcsema_real_eip !14
  store i1 %77, i1* %SF, !mcsema_real_eip !14
  %78 = icmp eq i32 %71, 0, !mcsema_real_eip !14
  store i1 %78, i1* %ZF, !mcsema_real_eip !14
  %79 = xor i32 %70, %EDX_val.23, !mcsema_real_eip !14
  %80 = xor i32 %79, -1, !mcsema_real_eip !14
  %81 = xor i32 %70, %71, !mcsema_real_eip !14
  %82 = and i32 %80, %81, !mcsema_real_eip !14
  %83 = lshr i32 %82, 31, !mcsema_real_eip !14
  %84 = and i32 %83, 1, !mcsema_real_eip !14
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !14
  store i1 %85, i1* %OF, !mcsema_real_eip !14
  %86 = trunc i32 %71 to i8, !mcsema_real_eip !14
  %87 = call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !14
  %88 = trunc i8 %87 to i1, !mcsema_real_eip !14
  %89 = xor i1 %88, true, !mcsema_real_eip !14
  store i1 %89, i1* %PF, !mcsema_real_eip !14
  %90 = icmp ult i32 %71, %70, !mcsema_real_eip !14
  store i1 %90, i1* %CF, !mcsema_real_eip !14
  %91 = zext i32 %71 to i64, !mcsema_real_eip !14
  store i64 %91, i64* %XDX, !mcsema_real_eip !14
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !15
  %92 = add i64 %RBP_val.24, -16, !mcsema_real_eip !15
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !15
  %EDX.25 = bitcast i64* %XDX to i32*, !mcsema_real_eip !15
  %EDX_val.26 = load i32, i32* %EDX.25, !mcsema_real_eip !15
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !15
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !15
  store i32 %EDX_val.26, i32* %95, !mcsema_real_eip !15
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !16
  %96 = add i64 %RBP_val.27, -20, !mcsema_real_eip !16
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !16
  %98 = ptrtoint i64* %97 to i64, !mcsema_real_eip !16
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !16
  %100 = load i32, i32* %99, !mcsema_real_eip !16
  %101 = zext i32 %100 to i64, !mcsema_real_eip !16
  store i64 %101, i64* %XAX, !mcsema_real_eip !16
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !17
  %102 = add i32 1, %EAX_val.29, !mcsema_real_eip !17
  %103 = xor i32 %102, %EAX_val.29, !mcsema_real_eip !17
  %104 = xor i32 %103, 1, !mcsema_real_eip !17
  %105 = and i32 %104, 16, !mcsema_real_eip !17
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !17
  store i1 %106, i1* %AF, !mcsema_real_eip !17
  %107 = lshr i32 %102, 31, !mcsema_real_eip !17
  %108 = trunc i32 %107 to i1, !mcsema_real_eip !17
  store i1 %108, i1* %SF, !mcsema_real_eip !17
  %109 = icmp eq i32 %102, 0, !mcsema_real_eip !17
  store i1 %109, i1* %ZF, !mcsema_real_eip !17
  %110 = xor i32 %EAX_val.29, 1, !mcsema_real_eip !17
  %111 = xor i32 %110, -1, !mcsema_real_eip !17
  %112 = xor i32 %EAX_val.29, %102, !mcsema_real_eip !17
  %113 = and i32 %111, %112, !mcsema_real_eip !17
  %114 = lshr i32 %113, 31, !mcsema_real_eip !17
  %115 = and i32 %114, 1, !mcsema_real_eip !17
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !17
  store i1 %116, i1* %OF, !mcsema_real_eip !17
  %117 = trunc i32 %102 to i8, !mcsema_real_eip !17
  %118 = call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !17
  %119 = trunc i8 %118 to i1, !mcsema_real_eip !17
  %120 = xor i1 %119, true, !mcsema_real_eip !17
  store i1 %120, i1* %PF, !mcsema_real_eip !17
  %121 = icmp ult i32 %102, %EAX_val.29, !mcsema_real_eip !17
  store i1 %121, i1* %CF, !mcsema_real_eip !17
  %122 = zext i32 %102 to i64, !mcsema_real_eip !17
  store i64 %122, i64* %XAX, !mcsema_real_eip !17
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !18
  %123 = add i64 %RBP_val.30, -20, !mcsema_real_eip !18
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !18
  %EAX.31 = bitcast i64* %XAX to i32*, !mcsema_real_eip !18
  %EAX_val.32 = load i32, i32* %EAX.31, !mcsema_real_eip !18
  %125 = ptrtoint i64* %124 to i64, !mcsema_real_eip !18
  %126 = inttoptr i64 %125 to i32*, !mcsema_real_eip !18
  store i32 %EAX_val.32, i32* %126, !mcsema_real_eip !18
  br label %block_0x19, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x19
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !20
  %127 = add i64 %RBP_val.14, -16, !mcsema_real_eip !20
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !20
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !20
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !20
  %131 = load i32, i32* %130, !mcsema_real_eip !20
  %132 = zext i32 %131 to i64, !mcsema_real_eip !20
  store i64 %132, i64* %XAX, !mcsema_real_eip !20
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !21
  %133 = inttoptr i64 %RSP_val.15 to i64*, !mcsema_real_eip !21
  %134 = load i64, i64* %133, !mcsema_real_eip !21
  store i64 %134, i64* %XBP, !mcsema_real_eip !21
  %135 = add i64 %RSP_val.15, 8, !mcsema_real_eip !21
  store i64 %135, i64* %XSP, !mcsema_real_eip !21
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !22
  %136 = add i64 %RSP_val.16, 8, !mcsema_real_eip !22
  %137 = inttoptr i64 %RSP_val.16 to i64*, !mcsema_real_eip !22
  %138 = load i64, i64* %137, !mcsema_real_eip !22
  store i64 %138, i64* %XIP, !mcsema_real_eip !22
  store i64 %136, i64* %XSP, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @foo() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 18}
!8 = !{i64 25}
!9 = !{i64 28}
!10 = !{i64 31}
!11 = !{i64 37}
!12 = !{i64 41}
!13 = !{i64 45}
!14 = !{i64 48}
!15 = !{i64 51}
!16 = !{i64 54}
!17 = !{i64 57}
!18 = !{i64 60}
!19 = !{i64 63}
!20 = !{i64 68}
!21 = !{i64 71}
!22 = !{i64 72}
