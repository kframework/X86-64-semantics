; ModuleID = 'Output/test_21.clang.bc'
source_filename = "Output/test_21.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl shiftit;"
module asm "  .type shiftit,@function"
module asm "shiftit:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size shiftit,0b-shiftit;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x38 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\005\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %7 = add i64 %RBP_val.6, -16, !mcsema_real_eip !5
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !5
  %RSI_val.7 = load i64, i64* %XSI, !mcsema_real_eip !5
  store i64 %RSI_val.7, i64* %8, !mcsema_real_eip !5
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !6
  %9 = add i64 %RBP_val.8, -16, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !6
  %11 = load i64, i64* %10, !mcsema_real_eip !6
  store i64 %11, i64* %XSI, !mcsema_real_eip !6
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !7
  %12 = add i64 %RSI_val.9, 0, !mcsema_real_eip !7
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !7
  %14 = load i64, i64* %13, !mcsema_real_eip !7
  store i64 %14, i64* %XSI, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %15 = add i64 %RBP_val.10, -24, !mcsema_real_eip !8
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !8
  %RSI_val.11 = load i64, i64* %XSI, !mcsema_real_eip !8
  store i64 %RSI_val.11, i64* %16, !mcsema_real_eip !8
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !9
  %17 = add i64 %RBP_val.12, -4, !mcsema_real_eip !9
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !9
  %19 = ptrtoint i64* %18 to i64, !mcsema_real_eip !9
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !9
  %21 = load i32, i32* %20, !mcsema_real_eip !9
  %22 = zext i32 %21 to i64, !mcsema_real_eip !9
  store i64 %22, i64* %XDI, !mcsema_real_eip !9
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !10
  %23 = add i64 %RBP_val.13, -24, !mcsema_real_eip !10
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !10
  %25 = load i64, i64* %24, !mcsema_real_eip !10
  store i64 %25, i64* %XSI, !mcsema_real_eip !10
  %EDI.14 = bitcast i64* %XDI to i32*, !mcsema_real_eip !11
  %EDI_val.15 = load i32, i32* %EDI.14, !mcsema_real_eip !11
  %26 = zext i32 %EDI_val.15 to i64, !mcsema_real_eip !11
  store i64 %26, i64* %XDI, !mcsema_real_eip !11
  %EDI.16 = bitcast i64* %XDI to i32*, !mcsema_real_eip !12
  %EDI_val.17 = load i32, i32* %EDI.16, !mcsema_real_eip !12
  %27 = zext i32 %EDI_val.17 to i64, !mcsema_real_eip !12
  store i64 %27, i64* %XCX, !mcsema_real_eip !12
  %RSI_val.18 = load i64, i64* %XSI, !mcsema_real_eip !13
  %CL.19 = bitcast i64* %XCX to i8*, !mcsema_real_eip !13
  %CL_val.20 = load i8, i8* %CL.19, !mcsema_real_eip !13
  %CL_val.20.zext = zext i8 %CL_val.20 to i64, !mcsema_real_eip !13
  %28 = and i64 %CL_val.20.zext, 63, !mcsema_real_eip !13
  %29 = sub i64 %CL_val.20.zext, 1, !mcsema_real_eip !13
  %30 = icmp ne i64 %28, 0, !mcsema_real_eip !13
  %31 = select i1 %30, i64 %29, i64 0, !mcsema_real_eip !13
  %32 = select i1 %30, i64 1, i64 0, !mcsema_real_eip !13
  %33 = lshr i64 %RSI_val.18, %31, !mcsema_real_eip !13
  %34 = and i64 %33, 1, !mcsema_real_eip !13
  %35 = icmp ne i64 %34, 0, !mcsema_real_eip !13
  %36 = load i1, i1* %CF, !mcsema_real_eip !13
  %37 = select i1 %30, i1 %35, i1 %36, !mcsema_real_eip !13
  %38 = lshr i64 %33, %32, !mcsema_real_eip !13
  %39 = icmp eq i64 %28, 1, !mcsema_real_eip !13
  %40 = load i1, i1* %OF, !mcsema_real_eip !13
  %41 = and i64 %RSI_val.18, -9223372036854775808, !mcsema_real_eip !13
  %42 = icmp ne i64 %41, 0, !mcsema_real_eip !13
  %43 = select i1 %39, i1 %42, i1 %40, !mcsema_real_eip !13
  store i1 %43, i1* %OF, !mcsema_real_eip !13
  store i1 %37, i1* %CF, !mcsema_real_eip !13
  %44 = load i1, i1* %ZF, !mcsema_real_eip !13
  %45 = icmp eq i64 %38, 0, !mcsema_real_eip !13
  %46 = select i1 %30, i1 %45, i1 %44, !mcsema_real_eip !13
  store i1 %46, i1* %ZF, !mcsema_real_eip !13
  %47 = load i1, i1* %SF, !mcsema_real_eip !13
  %48 = icmp slt i64 %38, 0, !mcsema_real_eip !13
  %49 = select i1 %30, i1 %48, i1 %47, !mcsema_real_eip !13
  store i1 %49, i1* %SF, !mcsema_real_eip !13
  %50 = load i1, i1* %PF, !mcsema_real_eip !13
  %51 = trunc i64 %38 to i8, !mcsema_real_eip !13
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !13
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !13
  %54 = xor i1 %53, true, !mcsema_real_eip !13
  store i1 %54, i1* %PF, !mcsema_real_eip !13
  %55 = load i1, i1* %PF, !mcsema_real_eip !13
  %56 = select i1 %30, i1 %55, i1 %50, !mcsema_real_eip !13
  store i1 %56, i1* %PF, !mcsema_real_eip !13
  store i64 %38, i64* %XSI, !mcsema_real_eip !13
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !14
  %57 = add i64 %RBP_val.21, -24, !mcsema_real_eip !14
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !14
  %RSI_val.22 = load i64, i64* %XSI, !mcsema_real_eip !14
  store i64 %RSI_val.22, i64* %58, !mcsema_real_eip !14
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !15
  %59 = add i64 %RBP_val.23, -24, !mcsema_real_eip !15
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !15
  %61 = load i64, i64* %60, !mcsema_real_eip !15
  store i64 %61, i64* %XSI, !mcsema_real_eip !15
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !16
  %62 = add i64 %RBP_val.24, -16, !mcsema_real_eip !16
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !16
  %64 = load i64, i64* %63, !mcsema_real_eip !16
  store i64 %64, i64* %XAX, !mcsema_real_eip !16
  %RAX_val.25 = load i64, i64* %XAX, !mcsema_real_eip !17
  %65 = add i64 %RAX_val.25, 0, !mcsema_real_eip !17
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !17
  %RSI_val.26 = load i64, i64* %XSI, !mcsema_real_eip !17
  store i64 %RSI_val.26, i64* %66, !mcsema_real_eip !17
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !18
  %67 = inttoptr i64 %RSP_val.27 to i64*, !mcsema_real_eip !18
  %68 = load i64, i64* %67, !mcsema_real_eip !18
  store i64 %68, i64* %XBP, !mcsema_real_eip !18
  %69 = add i64 %RSP_val.27, 8, !mcsema_real_eip !18
  store i64 %69, i64* %XSP, !mcsema_real_eip !18
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !19
  %70 = add i64 %RSP_val.28, 8, !mcsema_real_eip !19
  %71 = inttoptr i64 %RSP_val.28 to i64*, !mcsema_real_eip !19
  %72 = load i64, i64* %71, !mcsema_real_eip !19
  store i64 %72, i64* %XIP, !mcsema_real_eip !19
  store i64 %70, i64* %XSP, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @shiftit() #3

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
!5 = !{i64 7}
!6 = !{i64 11}
!7 = !{i64 15}
!8 = !{i64 18}
!9 = !{i64 22}
!10 = !{i64 25}
!11 = !{i64 29}
!12 = !{i64 31}
!13 = !{i64 33}
!14 = !{i64 36}
!15 = !{i64 40}
!16 = !{i64 44}
!17 = !{i64 48}
!18 = !{i64 51}
!19 = !{i64 52}
