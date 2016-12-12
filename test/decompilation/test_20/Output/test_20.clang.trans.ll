; ModuleID = 'Output/test_20.clang.trans.bc'
source_filename = "Output/test_20.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl switches;"
module asm "  .type switches,@function"
module asm "switches:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size switches,0b-switches;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x2d0 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00\CD\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %9 = ptrtoint i64* %8 to i64, !mcsema_real_eip !5
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %10, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %11 = add i64 %RBP_val.7, -4, !mcsema_real_eip !6
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !6
  %13 = ptrtoint i64* %12 to i64, !mcsema_real_eip !6
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !6
  %15 = load i32, i32* %14, !mcsema_real_eip !6
  %16 = zext i32 %15 to i64, !mcsema_real_eip !6
  store i64 %16, i64* %XDI, !mcsema_real_eip !6
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !7
  %EDI_val.9 = load i32, i32* %EDI.8, !mcsema_real_eip !7
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !7
  %EDI_val.11 = load i32, i32* %EDI.10, !mcsema_real_eip !7
  %17 = and i32 %EDI_val.11, %EDI_val.9, !mcsema_real_eip !7
  %18 = icmp eq i32 %17, 0, !mcsema_real_eip !7
  store i1 %18, i1* %ZF, !mcsema_real_eip !7
  %19 = lshr i32 %17, 31, !mcsema_real_eip !7
  %20 = trunc i32 %19 to i1, !mcsema_real_eip !7
  store i1 %20, i1* %SF, !mcsema_real_eip !7
  %21 = trunc i32 %17 to i8, !mcsema_real_eip !7
  %22 = call i8 @llvm.ctpop.i8(i8 %21), !mcsema_real_eip !7
  %23 = trunc i8 %22 to i1, !mcsema_real_eip !7
  %24 = xor i1 %23, true, !mcsema_real_eip !7
  store i1 %24, i1* %PF, !mcsema_real_eip !7
  %25 = load i1, i1* %PF, !mcsema_real_eip !7
  %26 = xor i1 false, %25, !mcsema_real_eip !7
  %27 = and i1 true, %26, !mcsema_real_eip !7
  store i1 %27, i1* %PF, !mcsema_real_eip !7
  store i1 false, i1* %CF, !mcsema_real_eip !7
  store i1 false, i1* %OF, !mcsema_real_eip !7
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !8
  %28 = add i64 %RBP_val.12, -12, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  %EDI.13 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.14 = load i32, i32* %EDI.13, !mcsema_real_eip !8
  %30 = ptrtoint i64* %29 to i64, !mcsema_real_eip !8
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.14, i32* %31, !mcsema_real_eip !8
  %32 = load i1, i1* %ZF, !mcsema_real_eip !9
  %33 = icmp eq i1 %32, true, !mcsema_real_eip !9
  br i1 %33, label %block_0x19f, label %block_0x1c, !mcsema_real_eip !9

block_0x1c:                                       ; preds = %block_0x0
  br label %block_0x21, !mcsema_real_eip !10

block_0x19f:                                      ; preds = %block_0x0
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %34 = add i64 %RBP_val.15, -8, !mcsema_real_eip !11
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !11
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !11
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !11
  %38 = load i32, i32* %37, !mcsema_real_eip !11
  %39 = zext i32 %38 to i64, !mcsema_real_eip !11
  store i64 %39, i64* %XAX, !mcsema_real_eip !11
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !12
  %40 = add i32 0, %EAX_val.17, !mcsema_real_eip !12
  %41 = xor i32 %40, %EAX_val.17, !mcsema_real_eip !12
  %42 = xor i32 %41, 0, !mcsema_real_eip !12
  %43 = and i32 %42, 16, !mcsema_real_eip !12
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !12
  store i1 %44, i1* %AF, !mcsema_real_eip !12
  %45 = lshr i32 %40, 31, !mcsema_real_eip !12
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !12
  store i1 %46, i1* %SF, !mcsema_real_eip !12
  %47 = icmp eq i32 %40, 0, !mcsema_real_eip !12
  store i1 %47, i1* %ZF, !mcsema_real_eip !12
  %48 = xor i32 %EAX_val.17, 0, !mcsema_real_eip !12
  %49 = xor i32 %48, -1, !mcsema_real_eip !12
  %50 = xor i32 %EAX_val.17, %40, !mcsema_real_eip !12
  %51 = and i32 %49, %50, !mcsema_real_eip !12
  %52 = lshr i32 %51, 31, !mcsema_real_eip !12
  %53 = and i32 %52, 1, !mcsema_real_eip !12
  %54 = trunc i32 %53 to i1, !mcsema_real_eip !12
  store i1 %54, i1* %OF, !mcsema_real_eip !12
  %55 = trunc i32 %40 to i8, !mcsema_real_eip !12
  %56 = call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !12
  %57 = trunc i8 %56 to i1, !mcsema_real_eip !12
  %58 = xor i1 %57, true, !mcsema_real_eip !12
  store i1 %58, i1* %PF, !mcsema_real_eip !12
  %59 = icmp ult i32 %40, %EAX_val.17, !mcsema_real_eip !12
  store i1 %59, i1* %CF, !mcsema_real_eip !12
  %60 = zext i32 %40 to i64, !mcsema_real_eip !12
  store i64 %60, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %61 = add i64 %RBP_val.18, -8, !mcsema_real_eip !13
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !13
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !13
  %63 = ptrtoint i64* %62 to i64, !mcsema_real_eip !13
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %64, !mcsema_real_eip !13
  br label %block_0x2c8, !mcsema_real_eip !14

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !15
  %65 = add i64 %RBP_val.21, -8, !mcsema_real_eip !15
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !15
  %67 = ptrtoint i64* %66 to i64, !mcsema_real_eip !15
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !15
  %69 = load i32, i32* %68, !mcsema_real_eip !15
  %70 = zext i32 %69 to i64, !mcsema_real_eip !15
  store i64 %70, i64* %XAX, !mcsema_real_eip !15
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !16
  %71 = inttoptr i64 %RSP_val.22 to i64*, !mcsema_real_eip !16
  %72 = load i64, i64* %71, !mcsema_real_eip !16
  store i64 %72, i64* %XBP, !mcsema_real_eip !16
  %73 = add i64 %RSP_val.22, 8, !mcsema_real_eip !16
  store i64 %73, i64* %XSP, !mcsema_real_eip !16
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !17
  %74 = add i64 %RSP_val.23, 8, !mcsema_real_eip !17
  %75 = inttoptr i64 %RSP_val.23 to i64*, !mcsema_real_eip !17
  %76 = load i64, i64* %75, !mcsema_real_eip !17
  store i64 %76, i64* %XIP, !mcsema_real_eip !17
  store i64 %74, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17

block_0x21:                                       ; preds = %block_0x1c
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !18
  %77 = add i64 %RBP_val.24, -12, !mcsema_real_eip !18
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !18
  %79 = ptrtoint i64* %78 to i64, !mcsema_real_eip !18
  %80 = inttoptr i64 %79 to i32*, !mcsema_real_eip !18
  %81 = load i32, i32* %80, !mcsema_real_eip !18
  %82 = zext i32 %81 to i64, !mcsema_real_eip !18
  store i64 %82, i64* %XAX, !mcsema_real_eip !18
  %EAX.25 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.26 = load i32, i32* %EAX.25, !mcsema_real_eip !19
  %83 = sub i32 %EAX_val.26, 1, !mcsema_real_eip !19
  %84 = xor i32 %83, %EAX_val.26, !mcsema_real_eip !19
  %85 = xor i32 %84, 1, !mcsema_real_eip !19
  %86 = and i32 %85, 16, !mcsema_real_eip !19
  %87 = icmp ne i32 %86, 0, !mcsema_real_eip !19
  store i1 %87, i1* %AF, !mcsema_real_eip !19
  %88 = trunc i32 %83 to i8, !mcsema_real_eip !19
  %89 = call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !19
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !19
  %91 = xor i1 %90, true, !mcsema_real_eip !19
  store i1 %91, i1* %PF, !mcsema_real_eip !19
  %92 = icmp eq i32 %83, 0, !mcsema_real_eip !19
  store i1 %92, i1* %ZF, !mcsema_real_eip !19
  %93 = lshr i32 %83, 31, !mcsema_real_eip !19
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !19
  store i1 %94, i1* %SF, !mcsema_real_eip !19
  %95 = icmp ult i32 %EAX_val.26, 1, !mcsema_real_eip !19
  store i1 %95, i1* %CF, !mcsema_real_eip !19
  %96 = xor i32 %EAX_val.26, 1, !mcsema_real_eip !19
  %97 = xor i32 %EAX_val.26, %83, !mcsema_real_eip !19
  %98 = and i32 %96, %97, !mcsema_real_eip !19
  %99 = lshr i32 %98, 31, !mcsema_real_eip !19
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !19
  store i1 %100, i1* %OF, !mcsema_real_eip !19
  %101 = zext i32 %83 to i64, !mcsema_real_eip !19
  store i64 %101, i64* %XAX, !mcsema_real_eip !19
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !20
  %102 = add i64 %RBP_val.27, -16, !mcsema_real_eip !20
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !20
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !20
  %104 = ptrtoint i64* %103 to i64, !mcsema_real_eip !20
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.29, i32* %105, !mcsema_real_eip !20
  %106 = load i1, i1* %ZF, !mcsema_real_eip !21
  %107 = icmp eq i1 %106, true, !mcsema_real_eip !21
  br i1 %107, label %block_0x1ad, label %block_0x30, !mcsema_real_eip !21

block_0x30:                                       ; preds = %block_0x21
  br label %block_0x35, !mcsema_real_eip !22

block_0x1ad:                                      ; preds = %block_0x21
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !23
  %108 = add i64 %RBP_val.30, -8, !mcsema_real_eip !23
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !23
  %110 = ptrtoint i64* %109 to i64, !mcsema_real_eip !23
  %111 = inttoptr i64 %110 to i32*, !mcsema_real_eip !23
  %112 = load i32, i32* %111, !mcsema_real_eip !23
  %113 = zext i32 %112 to i64, !mcsema_real_eip !23
  store i64 %113, i64* %XAX, !mcsema_real_eip !23
  %EAX.31 = bitcast i64* %XAX to i32*, !mcsema_real_eip !24
  %EAX_val.32 = load i32, i32* %EAX.31, !mcsema_real_eip !24
  %114 = add i32 1, %EAX_val.32, !mcsema_real_eip !24
  %115 = xor i32 %114, %EAX_val.32, !mcsema_real_eip !24
  %116 = xor i32 %115, 1, !mcsema_real_eip !24
  %117 = and i32 %116, 16, !mcsema_real_eip !24
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !24
  store i1 %118, i1* %AF, !mcsema_real_eip !24
  %119 = lshr i32 %114, 31, !mcsema_real_eip !24
  %120 = trunc i32 %119 to i1, !mcsema_real_eip !24
  store i1 %120, i1* %SF, !mcsema_real_eip !24
  %121 = icmp eq i32 %114, 0, !mcsema_real_eip !24
  store i1 %121, i1* %ZF, !mcsema_real_eip !24
  %122 = xor i32 %EAX_val.32, 1, !mcsema_real_eip !24
  %123 = xor i32 %122, -1, !mcsema_real_eip !24
  %124 = xor i32 %EAX_val.32, %114, !mcsema_real_eip !24
  %125 = and i32 %123, %124, !mcsema_real_eip !24
  %126 = lshr i32 %125, 31, !mcsema_real_eip !24
  %127 = and i32 %126, 1, !mcsema_real_eip !24
  %128 = trunc i32 %127 to i1, !mcsema_real_eip !24
  store i1 %128, i1* %OF, !mcsema_real_eip !24
  %129 = trunc i32 %114 to i8, !mcsema_real_eip !24
  %130 = call i8 @llvm.ctpop.i8(i8 %129), !mcsema_real_eip !24
  %131 = trunc i8 %130 to i1, !mcsema_real_eip !24
  %132 = xor i1 %131, true, !mcsema_real_eip !24
  store i1 %132, i1* %PF, !mcsema_real_eip !24
  %133 = icmp ult i32 %114, %EAX_val.32, !mcsema_real_eip !24
  store i1 %133, i1* %CF, !mcsema_real_eip !24
  %134 = zext i32 %114 to i64, !mcsema_real_eip !24
  store i64 %134, i64* %XAX, !mcsema_real_eip !24
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !25
  %135 = add i64 %RBP_val.33, -8, !mcsema_real_eip !25
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !25
  %EAX.34 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.35 = load i32, i32* %EAX.34, !mcsema_real_eip !25
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !25
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !25
  store i32 %EAX_val.35, i32* %138, !mcsema_real_eip !25
  br label %block_0x2c8, !mcsema_real_eip !26

block_0x35:                                       ; preds = %block_0x30
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !27
  %139 = add i64 %RBP_val.36, -12, !mcsema_real_eip !27
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !27
  %141 = ptrtoint i64* %140 to i64, !mcsema_real_eip !27
  %142 = inttoptr i64 %141 to i32*, !mcsema_real_eip !27
  %143 = load i32, i32* %142, !mcsema_real_eip !27
  %144 = zext i32 %143 to i64, !mcsema_real_eip !27
  store i64 %144, i64* %XAX, !mcsema_real_eip !27
  %EAX.37 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.38 = load i32, i32* %EAX.37, !mcsema_real_eip !28
  %145 = sub i32 %EAX_val.38, 2, !mcsema_real_eip !28
  %146 = xor i32 %145, %EAX_val.38, !mcsema_real_eip !28
  %147 = xor i32 %146, 2, !mcsema_real_eip !28
  %148 = and i32 %147, 16, !mcsema_real_eip !28
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !28
  store i1 %149, i1* %AF, !mcsema_real_eip !28
  %150 = trunc i32 %145 to i8, !mcsema_real_eip !28
  %151 = call i8 @llvm.ctpop.i8(i8 %150), !mcsema_real_eip !28
  %152 = trunc i8 %151 to i1, !mcsema_real_eip !28
  %153 = xor i1 %152, true, !mcsema_real_eip !28
  store i1 %153, i1* %PF, !mcsema_real_eip !28
  %154 = icmp eq i32 %145, 0, !mcsema_real_eip !28
  store i1 %154, i1* %ZF, !mcsema_real_eip !28
  %155 = lshr i32 %145, 31, !mcsema_real_eip !28
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !28
  store i1 %156, i1* %SF, !mcsema_real_eip !28
  %157 = icmp ult i32 %EAX_val.38, 2, !mcsema_real_eip !28
  store i1 %157, i1* %CF, !mcsema_real_eip !28
  %158 = xor i32 %EAX_val.38, 2, !mcsema_real_eip !28
  %159 = xor i32 %EAX_val.38, %145, !mcsema_real_eip !28
  %160 = and i32 %158, %159, !mcsema_real_eip !28
  %161 = lshr i32 %160, 31, !mcsema_real_eip !28
  %162 = trunc i32 %161 to i1, !mcsema_real_eip !28
  store i1 %162, i1* %OF, !mcsema_real_eip !28
  %163 = zext i32 %145 to i64, !mcsema_real_eip !28
  store i64 %163, i64* %XAX, !mcsema_real_eip !28
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !29
  %164 = add i64 %RBP_val.39, -20, !mcsema_real_eip !29
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !29
  %EAX.40 = bitcast i64* %XAX to i32*, !mcsema_real_eip !29
  %EAX_val.41 = load i32, i32* %EAX.40, !mcsema_real_eip !29
  %166 = ptrtoint i64* %165 to i64, !mcsema_real_eip !29
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !29
  store i32 %EAX_val.41, i32* %167, !mcsema_real_eip !29
  %168 = load i1, i1* %ZF, !mcsema_real_eip !30
  %169 = icmp eq i1 %168, true, !mcsema_real_eip !30
  br i1 %169, label %block_0x1bb, label %block_0x44, !mcsema_real_eip !30

block_0x44:                                       ; preds = %block_0x35
  br label %block_0x49, !mcsema_real_eip !31

block_0x1bb:                                      ; preds = %block_0x35
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !32
  %170 = add i64 %RBP_val.42, -8, !mcsema_real_eip !32
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !32
  %172 = ptrtoint i64* %171 to i64, !mcsema_real_eip !32
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !32
  %174 = load i32, i32* %173, !mcsema_real_eip !32
  %175 = zext i32 %174 to i64, !mcsema_real_eip !32
  store i64 %175, i64* %XAX, !mcsema_real_eip !32
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !33
  %176 = add i32 2, %EAX_val.44, !mcsema_real_eip !33
  %177 = xor i32 %176, %EAX_val.44, !mcsema_real_eip !33
  %178 = xor i32 %177, 2, !mcsema_real_eip !33
  %179 = and i32 %178, 16, !mcsema_real_eip !33
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !33
  store i1 %180, i1* %AF, !mcsema_real_eip !33
  %181 = lshr i32 %176, 31, !mcsema_real_eip !33
  %182 = trunc i32 %181 to i1, !mcsema_real_eip !33
  store i1 %182, i1* %SF, !mcsema_real_eip !33
  %183 = icmp eq i32 %176, 0, !mcsema_real_eip !33
  store i1 %183, i1* %ZF, !mcsema_real_eip !33
  %184 = xor i32 %EAX_val.44, 2, !mcsema_real_eip !33
  %185 = xor i32 %184, -1, !mcsema_real_eip !33
  %186 = xor i32 %EAX_val.44, %176, !mcsema_real_eip !33
  %187 = and i32 %185, %186, !mcsema_real_eip !33
  %188 = lshr i32 %187, 31, !mcsema_real_eip !33
  %189 = and i32 %188, 1, !mcsema_real_eip !33
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !33
  store i1 %190, i1* %OF, !mcsema_real_eip !33
  %191 = trunc i32 %176 to i8, !mcsema_real_eip !33
  %192 = call i8 @llvm.ctpop.i8(i8 %191), !mcsema_real_eip !33
  %193 = trunc i8 %192 to i1, !mcsema_real_eip !33
  %194 = xor i1 %193, true, !mcsema_real_eip !33
  store i1 %194, i1* %PF, !mcsema_real_eip !33
  %195 = icmp ult i32 %176, %EAX_val.44, !mcsema_real_eip !33
  store i1 %195, i1* %CF, !mcsema_real_eip !33
  %196 = zext i32 %176 to i64, !mcsema_real_eip !33
  store i64 %196, i64* %XAX, !mcsema_real_eip !33
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !34
  %197 = add i64 %RBP_val.45, -8, !mcsema_real_eip !34
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !34
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !34
  %199 = ptrtoint i64* %198 to i64, !mcsema_real_eip !34
  %200 = inttoptr i64 %199 to i32*, !mcsema_real_eip !34
  store i32 %EAX_val.47, i32* %200, !mcsema_real_eip !34
  br label %block_0x2c8, !mcsema_real_eip !35

block_0x49:                                       ; preds = %block_0x44
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !36
  %201 = add i64 %RBP_val.48, -12, !mcsema_real_eip !36
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !36
  %203 = ptrtoint i64* %202 to i64, !mcsema_real_eip !36
  %204 = inttoptr i64 %203 to i32*, !mcsema_real_eip !36
  %205 = load i32, i32* %204, !mcsema_real_eip !36
  %206 = zext i32 %205 to i64, !mcsema_real_eip !36
  store i64 %206, i64* %XAX, !mcsema_real_eip !36
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !37
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !37
  %207 = sub i32 %EAX_val.50, 4, !mcsema_real_eip !37
  %208 = xor i32 %207, %EAX_val.50, !mcsema_real_eip !37
  %209 = xor i32 %208, 4, !mcsema_real_eip !37
  %210 = and i32 %209, 16, !mcsema_real_eip !37
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !37
  store i1 %211, i1* %AF, !mcsema_real_eip !37
  %212 = trunc i32 %207 to i8, !mcsema_real_eip !37
  %213 = call i8 @llvm.ctpop.i8(i8 %212), !mcsema_real_eip !37
  %214 = trunc i8 %213 to i1, !mcsema_real_eip !37
  %215 = xor i1 %214, true, !mcsema_real_eip !37
  store i1 %215, i1* %PF, !mcsema_real_eip !37
  %216 = icmp eq i32 %207, 0, !mcsema_real_eip !37
  store i1 %216, i1* %ZF, !mcsema_real_eip !37
  %217 = lshr i32 %207, 31, !mcsema_real_eip !37
  %218 = trunc i32 %217 to i1, !mcsema_real_eip !37
  store i1 %218, i1* %SF, !mcsema_real_eip !37
  %219 = icmp ult i32 %EAX_val.50, 4, !mcsema_real_eip !37
  store i1 %219, i1* %CF, !mcsema_real_eip !37
  %220 = xor i32 %EAX_val.50, 4, !mcsema_real_eip !37
  %221 = xor i32 %EAX_val.50, %207, !mcsema_real_eip !37
  %222 = and i32 %220, %221, !mcsema_real_eip !37
  %223 = lshr i32 %222, 31, !mcsema_real_eip !37
  %224 = trunc i32 %223 to i1, !mcsema_real_eip !37
  store i1 %224, i1* %OF, !mcsema_real_eip !37
  %225 = zext i32 %207 to i64, !mcsema_real_eip !37
  store i64 %225, i64* %XAX, !mcsema_real_eip !37
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !38
  %226 = add i64 %RBP_val.51, -24, !mcsema_real_eip !38
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !38
  %EAX.52 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.53 = load i32, i32* %EAX.52, !mcsema_real_eip !38
  %228 = ptrtoint i64* %227 to i64, !mcsema_real_eip !38
  %229 = inttoptr i64 %228 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.53, i32* %229, !mcsema_real_eip !38
  %230 = load i1, i1* %ZF, !mcsema_real_eip !39
  %231 = icmp eq i1 %230, true, !mcsema_real_eip !39
  br i1 %231, label %block_0x1c9, label %block_0x58, !mcsema_real_eip !39

block_0x58:                                       ; preds = %block_0x49
  br label %block_0x5d, !mcsema_real_eip !40

block_0x1c9:                                      ; preds = %block_0x49
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !41
  %232 = add i64 %RBP_val.54, -8, !mcsema_real_eip !41
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !41
  %234 = ptrtoint i64* %233 to i64, !mcsema_real_eip !41
  %235 = inttoptr i64 %234 to i32*, !mcsema_real_eip !41
  %236 = load i32, i32* %235, !mcsema_real_eip !41
  %237 = zext i32 %236 to i64, !mcsema_real_eip !41
  store i64 %237, i64* %XAX, !mcsema_real_eip !41
  %EAX.55 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.56 = load i32, i32* %EAX.55, !mcsema_real_eip !42
  %238 = add i32 4, %EAX_val.56, !mcsema_real_eip !42
  %239 = xor i32 %238, %EAX_val.56, !mcsema_real_eip !42
  %240 = xor i32 %239, 4, !mcsema_real_eip !42
  %241 = and i32 %240, 16, !mcsema_real_eip !42
  %242 = icmp ne i32 %241, 0, !mcsema_real_eip !42
  store i1 %242, i1* %AF, !mcsema_real_eip !42
  %243 = lshr i32 %238, 31, !mcsema_real_eip !42
  %244 = trunc i32 %243 to i1, !mcsema_real_eip !42
  store i1 %244, i1* %SF, !mcsema_real_eip !42
  %245 = icmp eq i32 %238, 0, !mcsema_real_eip !42
  store i1 %245, i1* %ZF, !mcsema_real_eip !42
  %246 = xor i32 %EAX_val.56, 4, !mcsema_real_eip !42
  %247 = xor i32 %246, -1, !mcsema_real_eip !42
  %248 = xor i32 %EAX_val.56, %238, !mcsema_real_eip !42
  %249 = and i32 %247, %248, !mcsema_real_eip !42
  %250 = lshr i32 %249, 31, !mcsema_real_eip !42
  %251 = and i32 %250, 1, !mcsema_real_eip !42
  %252 = trunc i32 %251 to i1, !mcsema_real_eip !42
  store i1 %252, i1* %OF, !mcsema_real_eip !42
  %253 = trunc i32 %238 to i8, !mcsema_real_eip !42
  %254 = call i8 @llvm.ctpop.i8(i8 %253), !mcsema_real_eip !42
  %255 = trunc i8 %254 to i1, !mcsema_real_eip !42
  %256 = xor i1 %255, true, !mcsema_real_eip !42
  store i1 %256, i1* %PF, !mcsema_real_eip !42
  %257 = icmp ult i32 %238, %EAX_val.56, !mcsema_real_eip !42
  store i1 %257, i1* %CF, !mcsema_real_eip !42
  %258 = zext i32 %238 to i64, !mcsema_real_eip !42
  store i64 %258, i64* %XAX, !mcsema_real_eip !42
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !43
  %259 = add i64 %RBP_val.57, -8, !mcsema_real_eip !43
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !43
  %EAX.58 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.59 = load i32, i32* %EAX.58, !mcsema_real_eip !43
  %261 = ptrtoint i64* %260 to i64, !mcsema_real_eip !43
  %262 = inttoptr i64 %261 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.59, i32* %262, !mcsema_real_eip !43
  br label %block_0x2c8, !mcsema_real_eip !44

block_0x5d:                                       ; preds = %block_0x58
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !45
  %263 = add i64 %RBP_val.60, -12, !mcsema_real_eip !45
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !45
  %265 = ptrtoint i64* %264 to i64, !mcsema_real_eip !45
  %266 = inttoptr i64 %265 to i32*, !mcsema_real_eip !45
  %267 = load i32, i32* %266, !mcsema_real_eip !45
  %268 = zext i32 %267 to i64, !mcsema_real_eip !45
  store i64 %268, i64* %XAX, !mcsema_real_eip !45
  %EAX.61 = bitcast i64* %XAX to i32*, !mcsema_real_eip !46
  %EAX_val.62 = load i32, i32* %EAX.61, !mcsema_real_eip !46
  %269 = sub i32 %EAX_val.62, 6, !mcsema_real_eip !46
  %270 = xor i32 %269, %EAX_val.62, !mcsema_real_eip !46
  %271 = xor i32 %270, 6, !mcsema_real_eip !46
  %272 = and i32 %271, 16, !mcsema_real_eip !46
  %273 = icmp ne i32 %272, 0, !mcsema_real_eip !46
  store i1 %273, i1* %AF, !mcsema_real_eip !46
  %274 = trunc i32 %269 to i8, !mcsema_real_eip !46
  %275 = call i8 @llvm.ctpop.i8(i8 %274), !mcsema_real_eip !46
  %276 = trunc i8 %275 to i1, !mcsema_real_eip !46
  %277 = xor i1 %276, true, !mcsema_real_eip !46
  store i1 %277, i1* %PF, !mcsema_real_eip !46
  %278 = icmp eq i32 %269, 0, !mcsema_real_eip !46
  store i1 %278, i1* %ZF, !mcsema_real_eip !46
  %279 = lshr i32 %269, 31, !mcsema_real_eip !46
  %280 = trunc i32 %279 to i1, !mcsema_real_eip !46
  store i1 %280, i1* %SF, !mcsema_real_eip !46
  %281 = icmp ult i32 %EAX_val.62, 6, !mcsema_real_eip !46
  store i1 %281, i1* %CF, !mcsema_real_eip !46
  %282 = xor i32 %EAX_val.62, 6, !mcsema_real_eip !46
  %283 = xor i32 %EAX_val.62, %269, !mcsema_real_eip !46
  %284 = and i32 %282, %283, !mcsema_real_eip !46
  %285 = lshr i32 %284, 31, !mcsema_real_eip !46
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !46
  store i1 %286, i1* %OF, !mcsema_real_eip !46
  %287 = zext i32 %269 to i64, !mcsema_real_eip !46
  store i64 %287, i64* %XAX, !mcsema_real_eip !46
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !47
  %288 = add i64 %RBP_val.63, -28, !mcsema_real_eip !47
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !47
  %EAX.64 = bitcast i64* %XAX to i32*, !mcsema_real_eip !47
  %EAX_val.65 = load i32, i32* %EAX.64, !mcsema_real_eip !47
  %290 = ptrtoint i64* %289 to i64, !mcsema_real_eip !47
  %291 = inttoptr i64 %290 to i32*, !mcsema_real_eip !47
  store i32 %EAX_val.65, i32* %291, !mcsema_real_eip !47
  %292 = load i1, i1* %ZF, !mcsema_real_eip !48
  %293 = icmp eq i1 %292, true, !mcsema_real_eip !48
  br i1 %293, label %block_0x1d7, label %block_0x6c, !mcsema_real_eip !48

block_0x6c:                                       ; preds = %block_0x5d
  br label %block_0x71, !mcsema_real_eip !49

block_0x1d7:                                      ; preds = %block_0x5d
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !50
  %294 = add i64 %RBP_val.66, -8, !mcsema_real_eip !50
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !50
  %296 = ptrtoint i64* %295 to i64, !mcsema_real_eip !50
  %297 = inttoptr i64 %296 to i32*, !mcsema_real_eip !50
  %298 = load i32, i32* %297, !mcsema_real_eip !50
  %299 = zext i32 %298 to i64, !mcsema_real_eip !50
  store i64 %299, i64* %XAX, !mcsema_real_eip !50
  %EAX.67 = bitcast i64* %XAX to i32*, !mcsema_real_eip !51
  %EAX_val.68 = load i32, i32* %EAX.67, !mcsema_real_eip !51
  %300 = add i32 6, %EAX_val.68, !mcsema_real_eip !51
  %301 = xor i32 %300, %EAX_val.68, !mcsema_real_eip !51
  %302 = xor i32 %301, 6, !mcsema_real_eip !51
  %303 = and i32 %302, 16, !mcsema_real_eip !51
  %304 = icmp ne i32 %303, 0, !mcsema_real_eip !51
  store i1 %304, i1* %AF, !mcsema_real_eip !51
  %305 = lshr i32 %300, 31, !mcsema_real_eip !51
  %306 = trunc i32 %305 to i1, !mcsema_real_eip !51
  store i1 %306, i1* %SF, !mcsema_real_eip !51
  %307 = icmp eq i32 %300, 0, !mcsema_real_eip !51
  store i1 %307, i1* %ZF, !mcsema_real_eip !51
  %308 = xor i32 %EAX_val.68, 6, !mcsema_real_eip !51
  %309 = xor i32 %308, -1, !mcsema_real_eip !51
  %310 = xor i32 %EAX_val.68, %300, !mcsema_real_eip !51
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
  %319 = icmp ult i32 %300, %EAX_val.68, !mcsema_real_eip !51
  store i1 %319, i1* %CF, !mcsema_real_eip !51
  %320 = zext i32 %300 to i64, !mcsema_real_eip !51
  store i64 %320, i64* %XAX, !mcsema_real_eip !51
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !52
  %321 = add i64 %RBP_val.69, -8, !mcsema_real_eip !52
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !52
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !52
  %323 = ptrtoint i64* %322 to i64, !mcsema_real_eip !52
  %324 = inttoptr i64 %323 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.71, i32* %324, !mcsema_real_eip !52
  br label %block_0x2c8, !mcsema_real_eip !53

block_0x71:                                       ; preds = %block_0x6c
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !54
  %325 = add i64 %RBP_val.72, -12, !mcsema_real_eip !54
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !54
  %327 = ptrtoint i64* %326 to i64, !mcsema_real_eip !54
  %328 = inttoptr i64 %327 to i32*, !mcsema_real_eip !54
  %329 = load i32, i32* %328, !mcsema_real_eip !54
  %330 = zext i32 %329 to i64, !mcsema_real_eip !54
  store i64 %330, i64* %XAX, !mcsema_real_eip !54
  %EAX.73 = bitcast i64* %XAX to i32*, !mcsema_real_eip !55
  %EAX_val.74 = load i32, i32* %EAX.73, !mcsema_real_eip !55
  %331 = sub i32 %EAX_val.74, 12, !mcsema_real_eip !55
  %332 = xor i32 %331, %EAX_val.74, !mcsema_real_eip !55
  %333 = xor i32 %332, 12, !mcsema_real_eip !55
  %334 = and i32 %333, 16, !mcsema_real_eip !55
  %335 = icmp ne i32 %334, 0, !mcsema_real_eip !55
  store i1 %335, i1* %AF, !mcsema_real_eip !55
  %336 = trunc i32 %331 to i8, !mcsema_real_eip !55
  %337 = call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !55
  %338 = trunc i8 %337 to i1, !mcsema_real_eip !55
  %339 = xor i1 %338, true, !mcsema_real_eip !55
  store i1 %339, i1* %PF, !mcsema_real_eip !55
  %340 = icmp eq i32 %331, 0, !mcsema_real_eip !55
  store i1 %340, i1* %ZF, !mcsema_real_eip !55
  %341 = lshr i32 %331, 31, !mcsema_real_eip !55
  %342 = trunc i32 %341 to i1, !mcsema_real_eip !55
  store i1 %342, i1* %SF, !mcsema_real_eip !55
  %343 = icmp ult i32 %EAX_val.74, 12, !mcsema_real_eip !55
  store i1 %343, i1* %CF, !mcsema_real_eip !55
  %344 = xor i32 %EAX_val.74, 12, !mcsema_real_eip !55
  %345 = xor i32 %EAX_val.74, %331, !mcsema_real_eip !55
  %346 = and i32 %344, %345, !mcsema_real_eip !55
  %347 = lshr i32 %346, 31, !mcsema_real_eip !55
  %348 = trunc i32 %347 to i1, !mcsema_real_eip !55
  store i1 %348, i1* %OF, !mcsema_real_eip !55
  %349 = zext i32 %331 to i64, !mcsema_real_eip !55
  store i64 %349, i64* %XAX, !mcsema_real_eip !55
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !56
  %350 = add i64 %RBP_val.75, -32, !mcsema_real_eip !56
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !56
  %EAX.76 = bitcast i64* %XAX to i32*, !mcsema_real_eip !56
  %EAX_val.77 = load i32, i32* %EAX.76, !mcsema_real_eip !56
  %352 = ptrtoint i64* %351 to i64, !mcsema_real_eip !56
  %353 = inttoptr i64 %352 to i32*, !mcsema_real_eip !56
  store i32 %EAX_val.77, i32* %353, !mcsema_real_eip !56
  %354 = load i1, i1* %ZF, !mcsema_real_eip !57
  %355 = icmp eq i1 %354, true, !mcsema_real_eip !57
  br i1 %355, label %block_0x1e5, label %block_0x80, !mcsema_real_eip !57

block_0x80:                                       ; preds = %block_0x71
  br label %block_0x85, !mcsema_real_eip !58

block_0x1e5:                                      ; preds = %block_0x71
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !59
  %356 = add i64 %RBP_val.78, -8, !mcsema_real_eip !59
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !59
  %358 = ptrtoint i64* %357 to i64, !mcsema_real_eip !59
  %359 = inttoptr i64 %358 to i32*, !mcsema_real_eip !59
  %360 = load i32, i32* %359, !mcsema_real_eip !59
  %361 = zext i32 %360 to i64, !mcsema_real_eip !59
  store i64 %361, i64* %XAX, !mcsema_real_eip !59
  %EAX.79 = bitcast i64* %XAX to i32*, !mcsema_real_eip !60
  %EAX_val.80 = load i32, i32* %EAX.79, !mcsema_real_eip !60
  %362 = add i32 12, %EAX_val.80, !mcsema_real_eip !60
  %363 = xor i32 %362, %EAX_val.80, !mcsema_real_eip !60
  %364 = xor i32 %363, 12, !mcsema_real_eip !60
  %365 = and i32 %364, 16, !mcsema_real_eip !60
  %366 = icmp ne i32 %365, 0, !mcsema_real_eip !60
  store i1 %366, i1* %AF, !mcsema_real_eip !60
  %367 = lshr i32 %362, 31, !mcsema_real_eip !60
  %368 = trunc i32 %367 to i1, !mcsema_real_eip !60
  store i1 %368, i1* %SF, !mcsema_real_eip !60
  %369 = icmp eq i32 %362, 0, !mcsema_real_eip !60
  store i1 %369, i1* %ZF, !mcsema_real_eip !60
  %370 = xor i32 %EAX_val.80, 12, !mcsema_real_eip !60
  %371 = xor i32 %370, -1, !mcsema_real_eip !60
  %372 = xor i32 %EAX_val.80, %362, !mcsema_real_eip !60
  %373 = and i32 %371, %372, !mcsema_real_eip !60
  %374 = lshr i32 %373, 31, !mcsema_real_eip !60
  %375 = and i32 %374, 1, !mcsema_real_eip !60
  %376 = trunc i32 %375 to i1, !mcsema_real_eip !60
  store i1 %376, i1* %OF, !mcsema_real_eip !60
  %377 = trunc i32 %362 to i8, !mcsema_real_eip !60
  %378 = call i8 @llvm.ctpop.i8(i8 %377), !mcsema_real_eip !60
  %379 = trunc i8 %378 to i1, !mcsema_real_eip !60
  %380 = xor i1 %379, true, !mcsema_real_eip !60
  store i1 %380, i1* %PF, !mcsema_real_eip !60
  %381 = icmp ult i32 %362, %EAX_val.80, !mcsema_real_eip !60
  store i1 %381, i1* %CF, !mcsema_real_eip !60
  %382 = zext i32 %362 to i64, !mcsema_real_eip !60
  store i64 %382, i64* %XAX, !mcsema_real_eip !60
  %RBP_val.81 = load i64, i64* %XBP, !mcsema_real_eip !61
  %383 = add i64 %RBP_val.81, -8, !mcsema_real_eip !61
  %384 = inttoptr i64 %383 to i64*, !mcsema_real_eip !61
  %EAX.82 = bitcast i64* %XAX to i32*, !mcsema_real_eip !61
  %EAX_val.83 = load i32, i32* %EAX.82, !mcsema_real_eip !61
  %385 = ptrtoint i64* %384 to i64, !mcsema_real_eip !61
  %386 = inttoptr i64 %385 to i32*, !mcsema_real_eip !61
  store i32 %EAX_val.83, i32* %386, !mcsema_real_eip !61
  br label %block_0x2c8, !mcsema_real_eip !62

block_0x85:                                       ; preds = %block_0x80
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !63
  %387 = add i64 %RBP_val.84, -12, !mcsema_real_eip !63
  %388 = inttoptr i64 %387 to i64*, !mcsema_real_eip !63
  %389 = ptrtoint i64* %388 to i64, !mcsema_real_eip !63
  %390 = inttoptr i64 %389 to i32*, !mcsema_real_eip !63
  %391 = load i32, i32* %390, !mcsema_real_eip !63
  %392 = zext i32 %391 to i64, !mcsema_real_eip !63
  store i64 %392, i64* %XAX, !mcsema_real_eip !63
  %EAX.85 = bitcast i64* %XAX to i32*, !mcsema_real_eip !64
  %EAX_val.86 = load i32, i32* %EAX.85, !mcsema_real_eip !64
  %393 = sub i32 %EAX_val.86, 13, !mcsema_real_eip !64
  %394 = xor i32 %393, %EAX_val.86, !mcsema_real_eip !64
  %395 = xor i32 %394, 13, !mcsema_real_eip !64
  %396 = and i32 %395, 16, !mcsema_real_eip !64
  %397 = icmp ne i32 %396, 0, !mcsema_real_eip !64
  store i1 %397, i1* %AF, !mcsema_real_eip !64
  %398 = trunc i32 %393 to i8, !mcsema_real_eip !64
  %399 = call i8 @llvm.ctpop.i8(i8 %398), !mcsema_real_eip !64
  %400 = trunc i8 %399 to i1, !mcsema_real_eip !64
  %401 = xor i1 %400, true, !mcsema_real_eip !64
  store i1 %401, i1* %PF, !mcsema_real_eip !64
  %402 = icmp eq i32 %393, 0, !mcsema_real_eip !64
  store i1 %402, i1* %ZF, !mcsema_real_eip !64
  %403 = lshr i32 %393, 31, !mcsema_real_eip !64
  %404 = trunc i32 %403 to i1, !mcsema_real_eip !64
  store i1 %404, i1* %SF, !mcsema_real_eip !64
  %405 = icmp ult i32 %EAX_val.86, 13, !mcsema_real_eip !64
  store i1 %405, i1* %CF, !mcsema_real_eip !64
  %406 = xor i32 %EAX_val.86, 13, !mcsema_real_eip !64
  %407 = xor i32 %EAX_val.86, %393, !mcsema_real_eip !64
  %408 = and i32 %406, %407, !mcsema_real_eip !64
  %409 = lshr i32 %408, 31, !mcsema_real_eip !64
  %410 = trunc i32 %409 to i1, !mcsema_real_eip !64
  store i1 %410, i1* %OF, !mcsema_real_eip !64
  %411 = zext i32 %393 to i64, !mcsema_real_eip !64
  store i64 %411, i64* %XAX, !mcsema_real_eip !64
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !65
  %412 = add i64 %RBP_val.87, -36, !mcsema_real_eip !65
  %413 = inttoptr i64 %412 to i64*, !mcsema_real_eip !65
  %EAX.88 = bitcast i64* %XAX to i32*, !mcsema_real_eip !65
  %EAX_val.89 = load i32, i32* %EAX.88, !mcsema_real_eip !65
  %414 = ptrtoint i64* %413 to i64, !mcsema_real_eip !65
  %415 = inttoptr i64 %414 to i32*, !mcsema_real_eip !65
  store i32 %EAX_val.89, i32* %415, !mcsema_real_eip !65
  %416 = load i1, i1* %ZF, !mcsema_real_eip !66
  %417 = icmp eq i1 %416, true, !mcsema_real_eip !66
  br i1 %417, label %block_0x1f3, label %block_0x94, !mcsema_real_eip !66

block_0x94:                                       ; preds = %block_0x85
  br label %block_0x99, !mcsema_real_eip !67

block_0x1f3:                                      ; preds = %block_0x85
  %RBP_val.90 = load i64, i64* %XBP, !mcsema_real_eip !68
  %418 = add i64 %RBP_val.90, -8, !mcsema_real_eip !68
  %419 = inttoptr i64 %418 to i64*, !mcsema_real_eip !68
  %420 = ptrtoint i64* %419 to i64, !mcsema_real_eip !68
  %421 = inttoptr i64 %420 to i32*, !mcsema_real_eip !68
  %422 = load i32, i32* %421, !mcsema_real_eip !68
  %423 = zext i32 %422 to i64, !mcsema_real_eip !68
  store i64 %423, i64* %XAX, !mcsema_real_eip !68
  %EAX.91 = bitcast i64* %XAX to i32*, !mcsema_real_eip !69
  %EAX_val.92 = load i32, i32* %EAX.91, !mcsema_real_eip !69
  %424 = add i32 13, %EAX_val.92, !mcsema_real_eip !69
  %425 = xor i32 %424, %EAX_val.92, !mcsema_real_eip !69
  %426 = xor i32 %425, 13, !mcsema_real_eip !69
  %427 = and i32 %426, 16, !mcsema_real_eip !69
  %428 = icmp ne i32 %427, 0, !mcsema_real_eip !69
  store i1 %428, i1* %AF, !mcsema_real_eip !69
  %429 = lshr i32 %424, 31, !mcsema_real_eip !69
  %430 = trunc i32 %429 to i1, !mcsema_real_eip !69
  store i1 %430, i1* %SF, !mcsema_real_eip !69
  %431 = icmp eq i32 %424, 0, !mcsema_real_eip !69
  store i1 %431, i1* %ZF, !mcsema_real_eip !69
  %432 = xor i32 %EAX_val.92, 13, !mcsema_real_eip !69
  %433 = xor i32 %432, -1, !mcsema_real_eip !69
  %434 = xor i32 %EAX_val.92, %424, !mcsema_real_eip !69
  %435 = and i32 %433, %434, !mcsema_real_eip !69
  %436 = lshr i32 %435, 31, !mcsema_real_eip !69
  %437 = and i32 %436, 1, !mcsema_real_eip !69
  %438 = trunc i32 %437 to i1, !mcsema_real_eip !69
  store i1 %438, i1* %OF, !mcsema_real_eip !69
  %439 = trunc i32 %424 to i8, !mcsema_real_eip !69
  %440 = call i8 @llvm.ctpop.i8(i8 %439), !mcsema_real_eip !69
  %441 = trunc i8 %440 to i1, !mcsema_real_eip !69
  %442 = xor i1 %441, true, !mcsema_real_eip !69
  store i1 %442, i1* %PF, !mcsema_real_eip !69
  %443 = icmp ult i32 %424, %EAX_val.92, !mcsema_real_eip !69
  store i1 %443, i1* %CF, !mcsema_real_eip !69
  %444 = zext i32 %424 to i64, !mcsema_real_eip !69
  store i64 %444, i64* %XAX, !mcsema_real_eip !69
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !70
  %445 = add i64 %RBP_val.93, -8, !mcsema_real_eip !70
  %446 = inttoptr i64 %445 to i64*, !mcsema_real_eip !70
  %EAX.94 = bitcast i64* %XAX to i32*, !mcsema_real_eip !70
  %EAX_val.95 = load i32, i32* %EAX.94, !mcsema_real_eip !70
  %447 = ptrtoint i64* %446 to i64, !mcsema_real_eip !70
  %448 = inttoptr i64 %447 to i32*, !mcsema_real_eip !70
  store i32 %EAX_val.95, i32* %448, !mcsema_real_eip !70
  br label %block_0x2c8, !mcsema_real_eip !71

block_0x99:                                       ; preds = %block_0x94
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !72
  %449 = add i64 %RBP_val.96, -12, !mcsema_real_eip !72
  %450 = inttoptr i64 %449 to i64*, !mcsema_real_eip !72
  %451 = ptrtoint i64* %450 to i64, !mcsema_real_eip !72
  %452 = inttoptr i64 %451 to i32*, !mcsema_real_eip !72
  %453 = load i32, i32* %452, !mcsema_real_eip !72
  %454 = zext i32 %453 to i64, !mcsema_real_eip !72
  store i64 %454, i64* %XAX, !mcsema_real_eip !72
  %EAX.97 = bitcast i64* %XAX to i32*, !mcsema_real_eip !73
  %EAX_val.98 = load i32, i32* %EAX.97, !mcsema_real_eip !73
  %455 = sub i32 %EAX_val.98, 19, !mcsema_real_eip !73
  %456 = xor i32 %455, %EAX_val.98, !mcsema_real_eip !73
  %457 = xor i32 %456, 19, !mcsema_real_eip !73
  %458 = and i32 %457, 16, !mcsema_real_eip !73
  %459 = icmp ne i32 %458, 0, !mcsema_real_eip !73
  store i1 %459, i1* %AF, !mcsema_real_eip !73
  %460 = trunc i32 %455 to i8, !mcsema_real_eip !73
  %461 = call i8 @llvm.ctpop.i8(i8 %460), !mcsema_real_eip !73
  %462 = trunc i8 %461 to i1, !mcsema_real_eip !73
  %463 = xor i1 %462, true, !mcsema_real_eip !73
  store i1 %463, i1* %PF, !mcsema_real_eip !73
  %464 = icmp eq i32 %455, 0, !mcsema_real_eip !73
  store i1 %464, i1* %ZF, !mcsema_real_eip !73
  %465 = lshr i32 %455, 31, !mcsema_real_eip !73
  %466 = trunc i32 %465 to i1, !mcsema_real_eip !73
  store i1 %466, i1* %SF, !mcsema_real_eip !73
  %467 = icmp ult i32 %EAX_val.98, 19, !mcsema_real_eip !73
  store i1 %467, i1* %CF, !mcsema_real_eip !73
  %468 = xor i32 %EAX_val.98, 19, !mcsema_real_eip !73
  %469 = xor i32 %EAX_val.98, %455, !mcsema_real_eip !73
  %470 = and i32 %468, %469, !mcsema_real_eip !73
  %471 = lshr i32 %470, 31, !mcsema_real_eip !73
  %472 = trunc i32 %471 to i1, !mcsema_real_eip !73
  store i1 %472, i1* %OF, !mcsema_real_eip !73
  %473 = zext i32 %455 to i64, !mcsema_real_eip !73
  store i64 %473, i64* %XAX, !mcsema_real_eip !73
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !74
  %474 = add i64 %RBP_val.99, -40, !mcsema_real_eip !74
  %475 = inttoptr i64 %474 to i64*, !mcsema_real_eip !74
  %EAX.100 = bitcast i64* %XAX to i32*, !mcsema_real_eip !74
  %EAX_val.101 = load i32, i32* %EAX.100, !mcsema_real_eip !74
  %476 = ptrtoint i64* %475 to i64, !mcsema_real_eip !74
  %477 = inttoptr i64 %476 to i32*, !mcsema_real_eip !74
  store i32 %EAX_val.101, i32* %477, !mcsema_real_eip !74
  %478 = load i1, i1* %ZF, !mcsema_real_eip !75
  %479 = icmp eq i1 %478, true, !mcsema_real_eip !75
  br i1 %479, label %block_0x201, label %block_0xa8, !mcsema_real_eip !75

block_0xa8:                                       ; preds = %block_0x99
  br label %block_0xad, !mcsema_real_eip !76

block_0x201:                                      ; preds = %block_0x99
  %RBP_val.102 = load i64, i64* %XBP, !mcsema_real_eip !77
  %480 = add i64 %RBP_val.102, -8, !mcsema_real_eip !77
  %481 = inttoptr i64 %480 to i64*, !mcsema_real_eip !77
  %482 = ptrtoint i64* %481 to i64, !mcsema_real_eip !77
  %483 = inttoptr i64 %482 to i32*, !mcsema_real_eip !77
  %484 = load i32, i32* %483, !mcsema_real_eip !77
  %485 = zext i32 %484 to i64, !mcsema_real_eip !77
  store i64 %485, i64* %XAX, !mcsema_real_eip !77
  %EAX.103 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.104 = load i32, i32* %EAX.103, !mcsema_real_eip !78
  %486 = add i32 19, %EAX_val.104, !mcsema_real_eip !78
  %487 = xor i32 %486, %EAX_val.104, !mcsema_real_eip !78
  %488 = xor i32 %487, 19, !mcsema_real_eip !78
  %489 = and i32 %488, 16, !mcsema_real_eip !78
  %490 = icmp ne i32 %489, 0, !mcsema_real_eip !78
  store i1 %490, i1* %AF, !mcsema_real_eip !78
  %491 = lshr i32 %486, 31, !mcsema_real_eip !78
  %492 = trunc i32 %491 to i1, !mcsema_real_eip !78
  store i1 %492, i1* %SF, !mcsema_real_eip !78
  %493 = icmp eq i32 %486, 0, !mcsema_real_eip !78
  store i1 %493, i1* %ZF, !mcsema_real_eip !78
  %494 = xor i32 %EAX_val.104, 19, !mcsema_real_eip !78
  %495 = xor i32 %494, -1, !mcsema_real_eip !78
  %496 = xor i32 %EAX_val.104, %486, !mcsema_real_eip !78
  %497 = and i32 %495, %496, !mcsema_real_eip !78
  %498 = lshr i32 %497, 31, !mcsema_real_eip !78
  %499 = and i32 %498, 1, !mcsema_real_eip !78
  %500 = trunc i32 %499 to i1, !mcsema_real_eip !78
  store i1 %500, i1* %OF, !mcsema_real_eip !78
  %501 = trunc i32 %486 to i8, !mcsema_real_eip !78
  %502 = call i8 @llvm.ctpop.i8(i8 %501), !mcsema_real_eip !78
  %503 = trunc i8 %502 to i1, !mcsema_real_eip !78
  %504 = xor i1 %503, true, !mcsema_real_eip !78
  store i1 %504, i1* %PF, !mcsema_real_eip !78
  %505 = icmp ult i32 %486, %EAX_val.104, !mcsema_real_eip !78
  store i1 %505, i1* %CF, !mcsema_real_eip !78
  %506 = zext i32 %486 to i64, !mcsema_real_eip !78
  store i64 %506, i64* %XAX, !mcsema_real_eip !78
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !79
  %507 = add i64 %RBP_val.105, -8, !mcsema_real_eip !79
  %508 = inttoptr i64 %507 to i64*, !mcsema_real_eip !79
  %EAX.106 = bitcast i64* %XAX to i32*, !mcsema_real_eip !79
  %EAX_val.107 = load i32, i32* %EAX.106, !mcsema_real_eip !79
  %509 = ptrtoint i64* %508 to i64, !mcsema_real_eip !79
  %510 = inttoptr i64 %509 to i32*, !mcsema_real_eip !79
  store i32 %EAX_val.107, i32* %510, !mcsema_real_eip !79
  br label %block_0x2c8, !mcsema_real_eip !80

block_0xad:                                       ; preds = %block_0xa8
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !81
  %511 = add i64 %RBP_val.108, -12, !mcsema_real_eip !81
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !81
  %513 = ptrtoint i64* %512 to i64, !mcsema_real_eip !81
  %514 = inttoptr i64 %513 to i32*, !mcsema_real_eip !81
  %515 = load i32, i32* %514, !mcsema_real_eip !81
  %516 = zext i32 %515 to i64, !mcsema_real_eip !81
  store i64 %516, i64* %XAX, !mcsema_real_eip !81
  %EAX.109 = bitcast i64* %XAX to i32*, !mcsema_real_eip !82
  %EAX_val.110 = load i32, i32* %EAX.109, !mcsema_real_eip !82
  %517 = sub i32 %EAX_val.110, 255, !mcsema_real_eip !82
  %518 = xor i32 %517, %EAX_val.110, !mcsema_real_eip !82
  %519 = xor i32 %518, 255, !mcsema_real_eip !82
  %520 = and i32 %519, 16, !mcsema_real_eip !82
  %521 = icmp ne i32 %520, 0, !mcsema_real_eip !82
  store i1 %521, i1* %AF, !mcsema_real_eip !82
  %522 = trunc i32 %517 to i8, !mcsema_real_eip !82
  %523 = call i8 @llvm.ctpop.i8(i8 %522), !mcsema_real_eip !82
  %524 = trunc i8 %523 to i1, !mcsema_real_eip !82
  %525 = xor i1 %524, true, !mcsema_real_eip !82
  store i1 %525, i1* %PF, !mcsema_real_eip !82
  %526 = icmp eq i32 %517, 0, !mcsema_real_eip !82
  store i1 %526, i1* %ZF, !mcsema_real_eip !82
  %527 = lshr i32 %517, 31, !mcsema_real_eip !82
  %528 = trunc i32 %527 to i1, !mcsema_real_eip !82
  store i1 %528, i1* %SF, !mcsema_real_eip !82
  %529 = icmp ult i32 %EAX_val.110, 255, !mcsema_real_eip !82
  store i1 %529, i1* %CF, !mcsema_real_eip !82
  %530 = xor i32 %EAX_val.110, 255, !mcsema_real_eip !82
  %531 = xor i32 %EAX_val.110, %517, !mcsema_real_eip !82
  %532 = and i32 %530, %531, !mcsema_real_eip !82
  %533 = lshr i32 %532, 31, !mcsema_real_eip !82
  %534 = trunc i32 %533 to i1, !mcsema_real_eip !82
  store i1 %534, i1* %OF, !mcsema_real_eip !82
  %535 = zext i32 %517 to i64, !mcsema_real_eip !82
  store i64 %535, i64* %XAX, !mcsema_real_eip !82
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !83
  %536 = add i64 %RBP_val.111, -44, !mcsema_real_eip !83
  %537 = inttoptr i64 %536 to i64*, !mcsema_real_eip !83
  %EAX.112 = bitcast i64* %XAX to i32*, !mcsema_real_eip !83
  %EAX_val.113 = load i32, i32* %EAX.112, !mcsema_real_eip !83
  %538 = ptrtoint i64* %537 to i64, !mcsema_real_eip !83
  %539 = inttoptr i64 %538 to i32*, !mcsema_real_eip !83
  store i32 %EAX_val.113, i32* %539, !mcsema_real_eip !83
  %540 = load i1, i1* %ZF, !mcsema_real_eip !84
  %541 = icmp eq i1 %540, true, !mcsema_real_eip !84
  br i1 %541, label %block_0x20f, label %block_0xbe, !mcsema_real_eip !84

block_0xbe:                                       ; preds = %block_0xad
  br label %block_0xc3, !mcsema_real_eip !85

block_0x20f:                                      ; preds = %block_0xad
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !86
  %542 = add i64 %RBP_val.114, -8, !mcsema_real_eip !86
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !86
  %544 = ptrtoint i64* %543 to i64, !mcsema_real_eip !86
  %545 = inttoptr i64 %544 to i32*, !mcsema_real_eip !86
  %546 = load i32, i32* %545, !mcsema_real_eip !86
  %547 = zext i32 %546 to i64, !mcsema_real_eip !86
  store i64 %547, i64* %XAX, !mcsema_real_eip !86
  %EAX.115 = bitcast i64* %XAX to i32*, !mcsema_real_eip !87
  %EAX_val.116 = load i32, i32* %EAX.115, !mcsema_real_eip !87
  %548 = add i32 255, %EAX_val.116, !mcsema_real_eip !87
  %549 = xor i32 %548, %EAX_val.116, !mcsema_real_eip !87
  %550 = xor i32 %549, 255, !mcsema_real_eip !87
  %551 = and i32 %550, 16, !mcsema_real_eip !87
  %552 = icmp ne i32 %551, 0, !mcsema_real_eip !87
  store i1 %552, i1* %AF, !mcsema_real_eip !87
  %553 = lshr i32 %548, 31, !mcsema_real_eip !87
  %554 = trunc i32 %553 to i1, !mcsema_real_eip !87
  store i1 %554, i1* %SF, !mcsema_real_eip !87
  %555 = icmp eq i32 %548, 0, !mcsema_real_eip !87
  store i1 %555, i1* %ZF, !mcsema_real_eip !87
  %556 = xor i32 %EAX_val.116, 255, !mcsema_real_eip !87
  %557 = xor i32 %556, -1, !mcsema_real_eip !87
  %558 = xor i32 %EAX_val.116, %548, !mcsema_real_eip !87
  %559 = and i32 %557, %558, !mcsema_real_eip !87
  %560 = lshr i32 %559, 31, !mcsema_real_eip !87
  %561 = and i32 %560, 1, !mcsema_real_eip !87
  %562 = trunc i32 %561 to i1, !mcsema_real_eip !87
  store i1 %562, i1* %OF, !mcsema_real_eip !87
  %563 = trunc i32 %548 to i8, !mcsema_real_eip !87
  %564 = call i8 @llvm.ctpop.i8(i8 %563), !mcsema_real_eip !87
  %565 = trunc i8 %564 to i1, !mcsema_real_eip !87
  %566 = xor i1 %565, true, !mcsema_real_eip !87
  store i1 %566, i1* %PF, !mcsema_real_eip !87
  %567 = icmp ult i32 %548, %EAX_val.116, !mcsema_real_eip !87
  store i1 %567, i1* %CF, !mcsema_real_eip !87
  %568 = zext i32 %548 to i64, !mcsema_real_eip !87
  store i64 %568, i64* %XAX, !mcsema_real_eip !87
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !88
  %569 = add i64 %RBP_val.117, -8, !mcsema_real_eip !88
  %570 = inttoptr i64 %569 to i64*, !mcsema_real_eip !88
  %EAX.118 = bitcast i64* %XAX to i32*, !mcsema_real_eip !88
  %EAX_val.119 = load i32, i32* %EAX.118, !mcsema_real_eip !88
  %571 = ptrtoint i64* %570 to i64, !mcsema_real_eip !88
  %572 = inttoptr i64 %571 to i32*, !mcsema_real_eip !88
  store i32 %EAX_val.119, i32* %572, !mcsema_real_eip !88
  br label %block_0x2c8, !mcsema_real_eip !89

block_0xc3:                                       ; preds = %block_0xbe
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !90
  %573 = add i64 %RBP_val.120, -12, !mcsema_real_eip !90
  %574 = inttoptr i64 %573 to i64*, !mcsema_real_eip !90
  %575 = ptrtoint i64* %574 to i64, !mcsema_real_eip !90
  %576 = inttoptr i64 %575 to i32*, !mcsema_real_eip !90
  %577 = load i32, i32* %576, !mcsema_real_eip !90
  %578 = zext i32 %577 to i64, !mcsema_real_eip !90
  store i64 %578, i64* %XAX, !mcsema_real_eip !90
  %EAX.121 = bitcast i64* %XAX to i32*, !mcsema_real_eip !91
  %EAX_val.122 = load i32, i32* %EAX.121, !mcsema_real_eip !91
  %579 = sub i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  %580 = xor i32 %579, %EAX_val.122, !mcsema_real_eip !91
  %581 = xor i32 %580, 74633, !mcsema_real_eip !91
  %582 = and i32 %581, 16, !mcsema_real_eip !91
  %583 = icmp ne i32 %582, 0, !mcsema_real_eip !91
  store i1 %583, i1* %AF, !mcsema_real_eip !91
  %584 = trunc i32 %579 to i8, !mcsema_real_eip !91
  %585 = call i8 @llvm.ctpop.i8(i8 %584), !mcsema_real_eip !91
  %586 = trunc i8 %585 to i1, !mcsema_real_eip !91
  %587 = xor i1 %586, true, !mcsema_real_eip !91
  store i1 %587, i1* %PF, !mcsema_real_eip !91
  %588 = icmp eq i32 %579, 0, !mcsema_real_eip !91
  store i1 %588, i1* %ZF, !mcsema_real_eip !91
  %589 = lshr i32 %579, 31, !mcsema_real_eip !91
  %590 = trunc i32 %589 to i1, !mcsema_real_eip !91
  store i1 %590, i1* %SF, !mcsema_real_eip !91
  %591 = icmp ult i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  store i1 %591, i1* %CF, !mcsema_real_eip !91
  %592 = xor i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  %593 = xor i32 %EAX_val.122, %579, !mcsema_real_eip !91
  %594 = and i32 %592, %593, !mcsema_real_eip !91
  %595 = lshr i32 %594, 31, !mcsema_real_eip !91
  %596 = trunc i32 %595 to i1, !mcsema_real_eip !91
  store i1 %596, i1* %OF, !mcsema_real_eip !91
  %597 = zext i32 %579 to i64, !mcsema_real_eip !91
  store i64 %597, i64* %XAX, !mcsema_real_eip !91
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !92
  %598 = add i64 %RBP_val.123, -48, !mcsema_real_eip !92
  %599 = inttoptr i64 %598 to i64*, !mcsema_real_eip !92
  %EAX.124 = bitcast i64* %XAX to i32*, !mcsema_real_eip !92
  %EAX_val.125 = load i32, i32* %EAX.124, !mcsema_real_eip !92
  %600 = ptrtoint i64* %599 to i64, !mcsema_real_eip !92
  %601 = inttoptr i64 %600 to i32*, !mcsema_real_eip !92
  store i32 %EAX_val.125, i32* %601, !mcsema_real_eip !92
  %602 = load i1, i1* %ZF, !mcsema_real_eip !93
  %603 = icmp eq i1 %602, true, !mcsema_real_eip !93
  br i1 %603, label %block_0x21f, label %block_0xd4, !mcsema_real_eip !93

block_0xd4:                                       ; preds = %block_0xc3
  br label %block_0xd9, !mcsema_real_eip !94

block_0x21f:                                      ; preds = %block_0xc3
  %RBP_val.126 = load i64, i64* %XBP, !mcsema_real_eip !95
  %604 = add i64 %RBP_val.126, -8, !mcsema_real_eip !95
  %605 = inttoptr i64 %604 to i64*, !mcsema_real_eip !95
  %606 = ptrtoint i64* %605 to i64, !mcsema_real_eip !95
  %607 = inttoptr i64 %606 to i32*, !mcsema_real_eip !95
  %608 = load i32, i32* %607, !mcsema_real_eip !95
  %609 = zext i32 %608 to i64, !mcsema_real_eip !95
  store i64 %609, i64* %XAX, !mcsema_real_eip !95
  %EAX.127 = bitcast i64* %XAX to i32*, !mcsema_real_eip !96
  %EAX_val.128 = load i32, i32* %EAX.127, !mcsema_real_eip !96
  %610 = add i32 74633, %EAX_val.128, !mcsema_real_eip !96
  %611 = xor i32 %610, %EAX_val.128, !mcsema_real_eip !96
  %612 = xor i32 %611, 74633, !mcsema_real_eip !96
  %613 = and i32 %612, 16, !mcsema_real_eip !96
  %614 = icmp ne i32 %613, 0, !mcsema_real_eip !96
  store i1 %614, i1* %AF, !mcsema_real_eip !96
  %615 = lshr i32 %610, 31, !mcsema_real_eip !96
  %616 = trunc i32 %615 to i1, !mcsema_real_eip !96
  store i1 %616, i1* %SF, !mcsema_real_eip !96
  %617 = icmp eq i32 %610, 0, !mcsema_real_eip !96
  store i1 %617, i1* %ZF, !mcsema_real_eip !96
  %618 = xor i32 %EAX_val.128, 74633, !mcsema_real_eip !96
  %619 = xor i32 %618, -1, !mcsema_real_eip !96
  %620 = xor i32 %EAX_val.128, %610, !mcsema_real_eip !96
  %621 = and i32 %619, %620, !mcsema_real_eip !96
  %622 = lshr i32 %621, 31, !mcsema_real_eip !96
  %623 = and i32 %622, 1, !mcsema_real_eip !96
  %624 = trunc i32 %623 to i1, !mcsema_real_eip !96
  store i1 %624, i1* %OF, !mcsema_real_eip !96
  %625 = trunc i32 %610 to i8, !mcsema_real_eip !96
  %626 = call i8 @llvm.ctpop.i8(i8 %625), !mcsema_real_eip !96
  %627 = trunc i8 %626 to i1, !mcsema_real_eip !96
  %628 = xor i1 %627, true, !mcsema_real_eip !96
  store i1 %628, i1* %PF, !mcsema_real_eip !96
  %629 = icmp ult i32 %610, %EAX_val.128, !mcsema_real_eip !96
  store i1 %629, i1* %CF, !mcsema_real_eip !96
  %630 = zext i32 %610 to i64, !mcsema_real_eip !96
  store i64 %630, i64* %XAX, !mcsema_real_eip !96
  %RBP_val.129 = load i64, i64* %XBP, !mcsema_real_eip !97
  %631 = add i64 %RBP_val.129, -8, !mcsema_real_eip !97
  %632 = inttoptr i64 %631 to i64*, !mcsema_real_eip !97
  %EAX.130 = bitcast i64* %XAX to i32*, !mcsema_real_eip !97
  %EAX_val.131 = load i32, i32* %EAX.130, !mcsema_real_eip !97
  %633 = ptrtoint i64* %632 to i64, !mcsema_real_eip !97
  %634 = inttoptr i64 %633 to i32*, !mcsema_real_eip !97
  store i32 %EAX_val.131, i32* %634, !mcsema_real_eip !97
  br label %block_0x2c8, !mcsema_real_eip !98

block_0xd9:                                       ; preds = %block_0xd4
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !99
  %635 = add i64 %RBP_val.132, -12, !mcsema_real_eip !99
  %636 = inttoptr i64 %635 to i64*, !mcsema_real_eip !99
  %637 = ptrtoint i64* %636 to i64, !mcsema_real_eip !99
  %638 = inttoptr i64 %637 to i32*, !mcsema_real_eip !99
  %639 = load i32, i32* %638, !mcsema_real_eip !99
  %640 = zext i32 %639 to i64, !mcsema_real_eip !99
  store i64 %640, i64* %XAX, !mcsema_real_eip !99
  %EAX.133 = bitcast i64* %XAX to i32*, !mcsema_real_eip !100
  %EAX_val.134 = load i32, i32* %EAX.133, !mcsema_real_eip !100
  %641 = sub i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  %642 = xor i32 %641, %EAX_val.134, !mcsema_real_eip !100
  %643 = xor i32 %642, 74634, !mcsema_real_eip !100
  %644 = and i32 %643, 16, !mcsema_real_eip !100
  %645 = icmp ne i32 %644, 0, !mcsema_real_eip !100
  store i1 %645, i1* %AF, !mcsema_real_eip !100
  %646 = trunc i32 %641 to i8, !mcsema_real_eip !100
  %647 = call i8 @llvm.ctpop.i8(i8 %646), !mcsema_real_eip !100
  %648 = trunc i8 %647 to i1, !mcsema_real_eip !100
  %649 = xor i1 %648, true, !mcsema_real_eip !100
  store i1 %649, i1* %PF, !mcsema_real_eip !100
  %650 = icmp eq i32 %641, 0, !mcsema_real_eip !100
  store i1 %650, i1* %ZF, !mcsema_real_eip !100
  %651 = lshr i32 %641, 31, !mcsema_real_eip !100
  %652 = trunc i32 %651 to i1, !mcsema_real_eip !100
  store i1 %652, i1* %SF, !mcsema_real_eip !100
  %653 = icmp ult i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  store i1 %653, i1* %CF, !mcsema_real_eip !100
  %654 = xor i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  %655 = xor i32 %EAX_val.134, %641, !mcsema_real_eip !100
  %656 = and i32 %654, %655, !mcsema_real_eip !100
  %657 = lshr i32 %656, 31, !mcsema_real_eip !100
  %658 = trunc i32 %657 to i1, !mcsema_real_eip !100
  store i1 %658, i1* %OF, !mcsema_real_eip !100
  %659 = zext i32 %641 to i64, !mcsema_real_eip !100
  store i64 %659, i64* %XAX, !mcsema_real_eip !100
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !101
  %660 = add i64 %RBP_val.135, -52, !mcsema_real_eip !101
  %661 = inttoptr i64 %660 to i64*, !mcsema_real_eip !101
  %EAX.136 = bitcast i64* %XAX to i32*, !mcsema_real_eip !101
  %EAX_val.137 = load i32, i32* %EAX.136, !mcsema_real_eip !101
  %662 = ptrtoint i64* %661 to i64, !mcsema_real_eip !101
  %663 = inttoptr i64 %662 to i32*, !mcsema_real_eip !101
  store i32 %EAX_val.137, i32* %663, !mcsema_real_eip !101
  %664 = load i1, i1* %ZF, !mcsema_real_eip !102
  %665 = icmp eq i1 %664, true, !mcsema_real_eip !102
  br i1 %665, label %block_0x22f, label %block_0xea, !mcsema_real_eip !102

block_0xea:                                       ; preds = %block_0xd9
  br label %block_0xef, !mcsema_real_eip !103

block_0x22f:                                      ; preds = %block_0xd9
  %RBP_val.138 = load i64, i64* %XBP, !mcsema_real_eip !104
  %666 = add i64 %RBP_val.138, -8, !mcsema_real_eip !104
  %667 = inttoptr i64 %666 to i64*, !mcsema_real_eip !104
  %668 = ptrtoint i64* %667 to i64, !mcsema_real_eip !104
  %669 = inttoptr i64 %668 to i32*, !mcsema_real_eip !104
  %670 = load i32, i32* %669, !mcsema_real_eip !104
  %671 = zext i32 %670 to i64, !mcsema_real_eip !104
  store i64 %671, i64* %XAX, !mcsema_real_eip !104
  %EAX.139 = bitcast i64* %XAX to i32*, !mcsema_real_eip !105
  %EAX_val.140 = load i32, i32* %EAX.139, !mcsema_real_eip !105
  %672 = add i32 74634, %EAX_val.140, !mcsema_real_eip !105
  %673 = xor i32 %672, %EAX_val.140, !mcsema_real_eip !105
  %674 = xor i32 %673, 74634, !mcsema_real_eip !105
  %675 = and i32 %674, 16, !mcsema_real_eip !105
  %676 = icmp ne i32 %675, 0, !mcsema_real_eip !105
  store i1 %676, i1* %AF, !mcsema_real_eip !105
  %677 = lshr i32 %672, 31, !mcsema_real_eip !105
  %678 = trunc i32 %677 to i1, !mcsema_real_eip !105
  store i1 %678, i1* %SF, !mcsema_real_eip !105
  %679 = icmp eq i32 %672, 0, !mcsema_real_eip !105
  store i1 %679, i1* %ZF, !mcsema_real_eip !105
  %680 = xor i32 %EAX_val.140, 74634, !mcsema_real_eip !105
  %681 = xor i32 %680, -1, !mcsema_real_eip !105
  %682 = xor i32 %EAX_val.140, %672, !mcsema_real_eip !105
  %683 = and i32 %681, %682, !mcsema_real_eip !105
  %684 = lshr i32 %683, 31, !mcsema_real_eip !105
  %685 = and i32 %684, 1, !mcsema_real_eip !105
  %686 = trunc i32 %685 to i1, !mcsema_real_eip !105
  store i1 %686, i1* %OF, !mcsema_real_eip !105
  %687 = trunc i32 %672 to i8, !mcsema_real_eip !105
  %688 = call i8 @llvm.ctpop.i8(i8 %687), !mcsema_real_eip !105
  %689 = trunc i8 %688 to i1, !mcsema_real_eip !105
  %690 = xor i1 %689, true, !mcsema_real_eip !105
  store i1 %690, i1* %PF, !mcsema_real_eip !105
  %691 = icmp ult i32 %672, %EAX_val.140, !mcsema_real_eip !105
  store i1 %691, i1* %CF, !mcsema_real_eip !105
  %692 = zext i32 %672 to i64, !mcsema_real_eip !105
  store i64 %692, i64* %XAX, !mcsema_real_eip !105
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !106
  %693 = add i64 %RBP_val.141, -8, !mcsema_real_eip !106
  %694 = inttoptr i64 %693 to i64*, !mcsema_real_eip !106
  %EAX.142 = bitcast i64* %XAX to i32*, !mcsema_real_eip !106
  %EAX_val.143 = load i32, i32* %EAX.142, !mcsema_real_eip !106
  %695 = ptrtoint i64* %694 to i64, !mcsema_real_eip !106
  %696 = inttoptr i64 %695 to i32*, !mcsema_real_eip !106
  store i32 %EAX_val.143, i32* %696, !mcsema_real_eip !106
  br label %block_0x2c8, !mcsema_real_eip !107

block_0xef:                                       ; preds = %block_0xea
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !108
  %697 = add i64 %RBP_val.144, -12, !mcsema_real_eip !108
  %698 = inttoptr i64 %697 to i64*, !mcsema_real_eip !108
  %699 = ptrtoint i64* %698 to i64, !mcsema_real_eip !108
  %700 = inttoptr i64 %699 to i32*, !mcsema_real_eip !108
  %701 = load i32, i32* %700, !mcsema_real_eip !108
  %702 = zext i32 %701 to i64, !mcsema_real_eip !108
  store i64 %702, i64* %XAX, !mcsema_real_eip !108
  %EAX.145 = bitcast i64* %XAX to i32*, !mcsema_real_eip !109
  %EAX_val.146 = load i32, i32* %EAX.145, !mcsema_real_eip !109
  %703 = sub i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  %704 = xor i32 %703, %EAX_val.146, !mcsema_real_eip !109
  %705 = xor i32 %704, 74635, !mcsema_real_eip !109
  %706 = and i32 %705, 16, !mcsema_real_eip !109
  %707 = icmp ne i32 %706, 0, !mcsema_real_eip !109
  store i1 %707, i1* %AF, !mcsema_real_eip !109
  %708 = trunc i32 %703 to i8, !mcsema_real_eip !109
  %709 = call i8 @llvm.ctpop.i8(i8 %708), !mcsema_real_eip !109
  %710 = trunc i8 %709 to i1, !mcsema_real_eip !109
  %711 = xor i1 %710, true, !mcsema_real_eip !109
  store i1 %711, i1* %PF, !mcsema_real_eip !109
  %712 = icmp eq i32 %703, 0, !mcsema_real_eip !109
  store i1 %712, i1* %ZF, !mcsema_real_eip !109
  %713 = lshr i32 %703, 31, !mcsema_real_eip !109
  %714 = trunc i32 %713 to i1, !mcsema_real_eip !109
  store i1 %714, i1* %SF, !mcsema_real_eip !109
  %715 = icmp ult i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  store i1 %715, i1* %CF, !mcsema_real_eip !109
  %716 = xor i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  %717 = xor i32 %EAX_val.146, %703, !mcsema_real_eip !109
  %718 = and i32 %716, %717, !mcsema_real_eip !109
  %719 = lshr i32 %718, 31, !mcsema_real_eip !109
  %720 = trunc i32 %719 to i1, !mcsema_real_eip !109
  store i1 %720, i1* %OF, !mcsema_real_eip !109
  %721 = zext i32 %703 to i64, !mcsema_real_eip !109
  store i64 %721, i64* %XAX, !mcsema_real_eip !109
  %RBP_val.147 = load i64, i64* %XBP, !mcsema_real_eip !110
  %722 = add i64 %RBP_val.147, -56, !mcsema_real_eip !110
  %723 = inttoptr i64 %722 to i64*, !mcsema_real_eip !110
  %EAX.148 = bitcast i64* %XAX to i32*, !mcsema_real_eip !110
  %EAX_val.149 = load i32, i32* %EAX.148, !mcsema_real_eip !110
  %724 = ptrtoint i64* %723 to i64, !mcsema_real_eip !110
  %725 = inttoptr i64 %724 to i32*, !mcsema_real_eip !110
  store i32 %EAX_val.149, i32* %725, !mcsema_real_eip !110
  %726 = load i1, i1* %ZF, !mcsema_real_eip !111
  %727 = icmp eq i1 %726, true, !mcsema_real_eip !111
  br i1 %727, label %block_0x23f, label %block_0x100, !mcsema_real_eip !111

block_0x100:                                      ; preds = %block_0xef
  br label %block_0x105, !mcsema_real_eip !112

block_0x23f:                                      ; preds = %block_0xef
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !113
  %728 = add i64 %RBP_val.150, -8, !mcsema_real_eip !113
  %729 = inttoptr i64 %728 to i64*, !mcsema_real_eip !113
  %730 = ptrtoint i64* %729 to i64, !mcsema_real_eip !113
  %731 = inttoptr i64 %730 to i32*, !mcsema_real_eip !113
  %732 = load i32, i32* %731, !mcsema_real_eip !113
  %733 = zext i32 %732 to i64, !mcsema_real_eip !113
  store i64 %733, i64* %XAX, !mcsema_real_eip !113
  %EAX.151 = bitcast i64* %XAX to i32*, !mcsema_real_eip !114
  %EAX_val.152 = load i32, i32* %EAX.151, !mcsema_real_eip !114
  %734 = add i32 74635, %EAX_val.152, !mcsema_real_eip !114
  %735 = xor i32 %734, %EAX_val.152, !mcsema_real_eip !114
  %736 = xor i32 %735, 74635, !mcsema_real_eip !114
  %737 = and i32 %736, 16, !mcsema_real_eip !114
  %738 = icmp ne i32 %737, 0, !mcsema_real_eip !114
  store i1 %738, i1* %AF, !mcsema_real_eip !114
  %739 = lshr i32 %734, 31, !mcsema_real_eip !114
  %740 = trunc i32 %739 to i1, !mcsema_real_eip !114
  store i1 %740, i1* %SF, !mcsema_real_eip !114
  %741 = icmp eq i32 %734, 0, !mcsema_real_eip !114
  store i1 %741, i1* %ZF, !mcsema_real_eip !114
  %742 = xor i32 %EAX_val.152, 74635, !mcsema_real_eip !114
  %743 = xor i32 %742, -1, !mcsema_real_eip !114
  %744 = xor i32 %EAX_val.152, %734, !mcsema_real_eip !114
  %745 = and i32 %743, %744, !mcsema_real_eip !114
  %746 = lshr i32 %745, 31, !mcsema_real_eip !114
  %747 = and i32 %746, 1, !mcsema_real_eip !114
  %748 = trunc i32 %747 to i1, !mcsema_real_eip !114
  store i1 %748, i1* %OF, !mcsema_real_eip !114
  %749 = trunc i32 %734 to i8, !mcsema_real_eip !114
  %750 = call i8 @llvm.ctpop.i8(i8 %749), !mcsema_real_eip !114
  %751 = trunc i8 %750 to i1, !mcsema_real_eip !114
  %752 = xor i1 %751, true, !mcsema_real_eip !114
  store i1 %752, i1* %PF, !mcsema_real_eip !114
  %753 = icmp ult i32 %734, %EAX_val.152, !mcsema_real_eip !114
  store i1 %753, i1* %CF, !mcsema_real_eip !114
  %754 = zext i32 %734 to i64, !mcsema_real_eip !114
  store i64 %754, i64* %XAX, !mcsema_real_eip !114
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !115
  %755 = add i64 %RBP_val.153, -8, !mcsema_real_eip !115
  %756 = inttoptr i64 %755 to i64*, !mcsema_real_eip !115
  %EAX.154 = bitcast i64* %XAX to i32*, !mcsema_real_eip !115
  %EAX_val.155 = load i32, i32* %EAX.154, !mcsema_real_eip !115
  %757 = ptrtoint i64* %756 to i64, !mcsema_real_eip !115
  %758 = inttoptr i64 %757 to i32*, !mcsema_real_eip !115
  store i32 %EAX_val.155, i32* %758, !mcsema_real_eip !115
  br label %block_0x2c8, !mcsema_real_eip !116

block_0x105:                                      ; preds = %block_0x100
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !117
  %759 = add i64 %RBP_val.156, -12, !mcsema_real_eip !117
  %760 = inttoptr i64 %759 to i64*, !mcsema_real_eip !117
  %761 = ptrtoint i64* %760 to i64, !mcsema_real_eip !117
  %762 = inttoptr i64 %761 to i32*, !mcsema_real_eip !117
  %763 = load i32, i32* %762, !mcsema_real_eip !117
  %764 = zext i32 %763 to i64, !mcsema_real_eip !117
  store i64 %764, i64* %XAX, !mcsema_real_eip !117
  %EAX.157 = bitcast i64* %XAX to i32*, !mcsema_real_eip !118
  %EAX_val.158 = load i32, i32* %EAX.157, !mcsema_real_eip !118
  %765 = sub i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  %766 = xor i32 %765, %EAX_val.158, !mcsema_real_eip !118
  %767 = xor i32 %766, 74636, !mcsema_real_eip !118
  %768 = and i32 %767, 16, !mcsema_real_eip !118
  %769 = icmp ne i32 %768, 0, !mcsema_real_eip !118
  store i1 %769, i1* %AF, !mcsema_real_eip !118
  %770 = trunc i32 %765 to i8, !mcsema_real_eip !118
  %771 = call i8 @llvm.ctpop.i8(i8 %770), !mcsema_real_eip !118
  %772 = trunc i8 %771 to i1, !mcsema_real_eip !118
  %773 = xor i1 %772, true, !mcsema_real_eip !118
  store i1 %773, i1* %PF, !mcsema_real_eip !118
  %774 = icmp eq i32 %765, 0, !mcsema_real_eip !118
  store i1 %774, i1* %ZF, !mcsema_real_eip !118
  %775 = lshr i32 %765, 31, !mcsema_real_eip !118
  %776 = trunc i32 %775 to i1, !mcsema_real_eip !118
  store i1 %776, i1* %SF, !mcsema_real_eip !118
  %777 = icmp ult i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  store i1 %777, i1* %CF, !mcsema_real_eip !118
  %778 = xor i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  %779 = xor i32 %EAX_val.158, %765, !mcsema_real_eip !118
  %780 = and i32 %778, %779, !mcsema_real_eip !118
  %781 = lshr i32 %780, 31, !mcsema_real_eip !118
  %782 = trunc i32 %781 to i1, !mcsema_real_eip !118
  store i1 %782, i1* %OF, !mcsema_real_eip !118
  %783 = zext i32 %765 to i64, !mcsema_real_eip !118
  store i64 %783, i64* %XAX, !mcsema_real_eip !118
  %RBP_val.159 = load i64, i64* %XBP, !mcsema_real_eip !119
  %784 = add i64 %RBP_val.159, -60, !mcsema_real_eip !119
  %785 = inttoptr i64 %784 to i64*, !mcsema_real_eip !119
  %EAX.160 = bitcast i64* %XAX to i32*, !mcsema_real_eip !119
  %EAX_val.161 = load i32, i32* %EAX.160, !mcsema_real_eip !119
  %786 = ptrtoint i64* %785 to i64, !mcsema_real_eip !119
  %787 = inttoptr i64 %786 to i32*, !mcsema_real_eip !119
  store i32 %EAX_val.161, i32* %787, !mcsema_real_eip !119
  %788 = load i1, i1* %ZF, !mcsema_real_eip !120
  %789 = icmp eq i1 %788, true, !mcsema_real_eip !120
  br i1 %789, label %block_0x24f, label %block_0x116, !mcsema_real_eip !120

block_0x116:                                      ; preds = %block_0x105
  br label %block_0x11b, !mcsema_real_eip !121

block_0x24f:                                      ; preds = %block_0x105
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !122
  %790 = add i64 %RBP_val.162, -8, !mcsema_real_eip !122
  %791 = inttoptr i64 %790 to i64*, !mcsema_real_eip !122
  %792 = ptrtoint i64* %791 to i64, !mcsema_real_eip !122
  %793 = inttoptr i64 %792 to i32*, !mcsema_real_eip !122
  %794 = load i32, i32* %793, !mcsema_real_eip !122
  %795 = zext i32 %794 to i64, !mcsema_real_eip !122
  store i64 %795, i64* %XAX, !mcsema_real_eip !122
  %EAX.163 = bitcast i64* %XAX to i32*, !mcsema_real_eip !123
  %EAX_val.164 = load i32, i32* %EAX.163, !mcsema_real_eip !123
  %796 = add i32 74636, %EAX_val.164, !mcsema_real_eip !123
  %797 = xor i32 %796, %EAX_val.164, !mcsema_real_eip !123
  %798 = xor i32 %797, 74636, !mcsema_real_eip !123
  %799 = and i32 %798, 16, !mcsema_real_eip !123
  %800 = icmp ne i32 %799, 0, !mcsema_real_eip !123
  store i1 %800, i1* %AF, !mcsema_real_eip !123
  %801 = lshr i32 %796, 31, !mcsema_real_eip !123
  %802 = trunc i32 %801 to i1, !mcsema_real_eip !123
  store i1 %802, i1* %SF, !mcsema_real_eip !123
  %803 = icmp eq i32 %796, 0, !mcsema_real_eip !123
  store i1 %803, i1* %ZF, !mcsema_real_eip !123
  %804 = xor i32 %EAX_val.164, 74636, !mcsema_real_eip !123
  %805 = xor i32 %804, -1, !mcsema_real_eip !123
  %806 = xor i32 %EAX_val.164, %796, !mcsema_real_eip !123
  %807 = and i32 %805, %806, !mcsema_real_eip !123
  %808 = lshr i32 %807, 31, !mcsema_real_eip !123
  %809 = and i32 %808, 1, !mcsema_real_eip !123
  %810 = trunc i32 %809 to i1, !mcsema_real_eip !123
  store i1 %810, i1* %OF, !mcsema_real_eip !123
  %811 = trunc i32 %796 to i8, !mcsema_real_eip !123
  %812 = call i8 @llvm.ctpop.i8(i8 %811), !mcsema_real_eip !123
  %813 = trunc i8 %812 to i1, !mcsema_real_eip !123
  %814 = xor i1 %813, true, !mcsema_real_eip !123
  store i1 %814, i1* %PF, !mcsema_real_eip !123
  %815 = icmp ult i32 %796, %EAX_val.164, !mcsema_real_eip !123
  store i1 %815, i1* %CF, !mcsema_real_eip !123
  %816 = zext i32 %796 to i64, !mcsema_real_eip !123
  store i64 %816, i64* %XAX, !mcsema_real_eip !123
  %RBP_val.165 = load i64, i64* %XBP, !mcsema_real_eip !124
  %817 = add i64 %RBP_val.165, -8, !mcsema_real_eip !124
  %818 = inttoptr i64 %817 to i64*, !mcsema_real_eip !124
  %EAX.166 = bitcast i64* %XAX to i32*, !mcsema_real_eip !124
  %EAX_val.167 = load i32, i32* %EAX.166, !mcsema_real_eip !124
  %819 = ptrtoint i64* %818 to i64, !mcsema_real_eip !124
  %820 = inttoptr i64 %819 to i32*, !mcsema_real_eip !124
  store i32 %EAX_val.167, i32* %820, !mcsema_real_eip !124
  br label %block_0x2c8, !mcsema_real_eip !125

block_0x11b:                                      ; preds = %block_0x116
  %RBP_val.168 = load i64, i64* %XBP, !mcsema_real_eip !126
  %821 = add i64 %RBP_val.168, -12, !mcsema_real_eip !126
  %822 = inttoptr i64 %821 to i64*, !mcsema_real_eip !126
  %823 = ptrtoint i64* %822 to i64, !mcsema_real_eip !126
  %824 = inttoptr i64 %823 to i32*, !mcsema_real_eip !126
  %825 = load i32, i32* %824, !mcsema_real_eip !126
  %826 = zext i32 %825 to i64, !mcsema_real_eip !126
  store i64 %826, i64* %XAX, !mcsema_real_eip !126
  %EAX.169 = bitcast i64* %XAX to i32*, !mcsema_real_eip !127
  %EAX_val.170 = load i32, i32* %EAX.169, !mcsema_real_eip !127
  %827 = sub i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  %828 = xor i32 %827, %EAX_val.170, !mcsema_real_eip !127
  %829 = xor i32 %828, 74637, !mcsema_real_eip !127
  %830 = and i32 %829, 16, !mcsema_real_eip !127
  %831 = icmp ne i32 %830, 0, !mcsema_real_eip !127
  store i1 %831, i1* %AF, !mcsema_real_eip !127
  %832 = trunc i32 %827 to i8, !mcsema_real_eip !127
  %833 = call i8 @llvm.ctpop.i8(i8 %832), !mcsema_real_eip !127
  %834 = trunc i8 %833 to i1, !mcsema_real_eip !127
  %835 = xor i1 %834, true, !mcsema_real_eip !127
  store i1 %835, i1* %PF, !mcsema_real_eip !127
  %836 = icmp eq i32 %827, 0, !mcsema_real_eip !127
  store i1 %836, i1* %ZF, !mcsema_real_eip !127
  %837 = lshr i32 %827, 31, !mcsema_real_eip !127
  %838 = trunc i32 %837 to i1, !mcsema_real_eip !127
  store i1 %838, i1* %SF, !mcsema_real_eip !127
  %839 = icmp ult i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  store i1 %839, i1* %CF, !mcsema_real_eip !127
  %840 = xor i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  %841 = xor i32 %EAX_val.170, %827, !mcsema_real_eip !127
  %842 = and i32 %840, %841, !mcsema_real_eip !127
  %843 = lshr i32 %842, 31, !mcsema_real_eip !127
  %844 = trunc i32 %843 to i1, !mcsema_real_eip !127
  store i1 %844, i1* %OF, !mcsema_real_eip !127
  %845 = zext i32 %827 to i64, !mcsema_real_eip !127
  store i64 %845, i64* %XAX, !mcsema_real_eip !127
  %RBP_val.171 = load i64, i64* %XBP, !mcsema_real_eip !128
  %846 = add i64 %RBP_val.171, -64, !mcsema_real_eip !128
  %847 = inttoptr i64 %846 to i64*, !mcsema_real_eip !128
  %EAX.172 = bitcast i64* %XAX to i32*, !mcsema_real_eip !128
  %EAX_val.173 = load i32, i32* %EAX.172, !mcsema_real_eip !128
  %848 = ptrtoint i64* %847 to i64, !mcsema_real_eip !128
  %849 = inttoptr i64 %848 to i32*, !mcsema_real_eip !128
  store i32 %EAX_val.173, i32* %849, !mcsema_real_eip !128
  %850 = load i1, i1* %ZF, !mcsema_real_eip !129
  %851 = icmp eq i1 %850, true, !mcsema_real_eip !129
  br i1 %851, label %block_0x25f, label %block_0x12c, !mcsema_real_eip !129

block_0x12c:                                      ; preds = %block_0x11b
  br label %block_0x131, !mcsema_real_eip !130

block_0x25f:                                      ; preds = %block_0x11b
  %RBP_val.174 = load i64, i64* %XBP, !mcsema_real_eip !131
  %852 = add i64 %RBP_val.174, -8, !mcsema_real_eip !131
  %853 = inttoptr i64 %852 to i64*, !mcsema_real_eip !131
  %854 = ptrtoint i64* %853 to i64, !mcsema_real_eip !131
  %855 = inttoptr i64 %854 to i32*, !mcsema_real_eip !131
  %856 = load i32, i32* %855, !mcsema_real_eip !131
  %857 = zext i32 %856 to i64, !mcsema_real_eip !131
  store i64 %857, i64* %XAX, !mcsema_real_eip !131
  %EAX.175 = bitcast i64* %XAX to i32*, !mcsema_real_eip !132
  %EAX_val.176 = load i32, i32* %EAX.175, !mcsema_real_eip !132
  %858 = add i32 74637, %EAX_val.176, !mcsema_real_eip !132
  %859 = xor i32 %858, %EAX_val.176, !mcsema_real_eip !132
  %860 = xor i32 %859, 74637, !mcsema_real_eip !132
  %861 = and i32 %860, 16, !mcsema_real_eip !132
  %862 = icmp ne i32 %861, 0, !mcsema_real_eip !132
  store i1 %862, i1* %AF, !mcsema_real_eip !132
  %863 = lshr i32 %858, 31, !mcsema_real_eip !132
  %864 = trunc i32 %863 to i1, !mcsema_real_eip !132
  store i1 %864, i1* %SF, !mcsema_real_eip !132
  %865 = icmp eq i32 %858, 0, !mcsema_real_eip !132
  store i1 %865, i1* %ZF, !mcsema_real_eip !132
  %866 = xor i32 %EAX_val.176, 74637, !mcsema_real_eip !132
  %867 = xor i32 %866, -1, !mcsema_real_eip !132
  %868 = xor i32 %EAX_val.176, %858, !mcsema_real_eip !132
  %869 = and i32 %867, %868, !mcsema_real_eip !132
  %870 = lshr i32 %869, 31, !mcsema_real_eip !132
  %871 = and i32 %870, 1, !mcsema_real_eip !132
  %872 = trunc i32 %871 to i1, !mcsema_real_eip !132
  store i1 %872, i1* %OF, !mcsema_real_eip !132
  %873 = trunc i32 %858 to i8, !mcsema_real_eip !132
  %874 = call i8 @llvm.ctpop.i8(i8 %873), !mcsema_real_eip !132
  %875 = trunc i8 %874 to i1, !mcsema_real_eip !132
  %876 = xor i1 %875, true, !mcsema_real_eip !132
  store i1 %876, i1* %PF, !mcsema_real_eip !132
  %877 = icmp ult i32 %858, %EAX_val.176, !mcsema_real_eip !132
  store i1 %877, i1* %CF, !mcsema_real_eip !132
  %878 = zext i32 %858 to i64, !mcsema_real_eip !132
  store i64 %878, i64* %XAX, !mcsema_real_eip !132
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !133
  %879 = add i64 %RBP_val.177, -8, !mcsema_real_eip !133
  %880 = inttoptr i64 %879 to i64*, !mcsema_real_eip !133
  %EAX.178 = bitcast i64* %XAX to i32*, !mcsema_real_eip !133
  %EAX_val.179 = load i32, i32* %EAX.178, !mcsema_real_eip !133
  %881 = ptrtoint i64* %880 to i64, !mcsema_real_eip !133
  %882 = inttoptr i64 %881 to i32*, !mcsema_real_eip !133
  store i32 %EAX_val.179, i32* %882, !mcsema_real_eip !133
  br label %block_0x2c8, !mcsema_real_eip !134

block_0x131:                                      ; preds = %block_0x12c
  %RBP_val.180 = load i64, i64* %XBP, !mcsema_real_eip !135
  %883 = add i64 %RBP_val.180, -12, !mcsema_real_eip !135
  %884 = inttoptr i64 %883 to i64*, !mcsema_real_eip !135
  %885 = ptrtoint i64* %884 to i64, !mcsema_real_eip !135
  %886 = inttoptr i64 %885 to i32*, !mcsema_real_eip !135
  %887 = load i32, i32* %886, !mcsema_real_eip !135
  %888 = zext i32 %887 to i64, !mcsema_real_eip !135
  store i64 %888, i64* %XAX, !mcsema_real_eip !135
  %EAX.181 = bitcast i64* %XAX to i32*, !mcsema_real_eip !136
  %EAX_val.182 = load i32, i32* %EAX.181, !mcsema_real_eip !136
  %889 = sub i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  %890 = xor i32 %889, %EAX_val.182, !mcsema_real_eip !136
  %891 = xor i32 %890, 74639, !mcsema_real_eip !136
  %892 = and i32 %891, 16, !mcsema_real_eip !136
  %893 = icmp ne i32 %892, 0, !mcsema_real_eip !136
  store i1 %893, i1* %AF, !mcsema_real_eip !136
  %894 = trunc i32 %889 to i8, !mcsema_real_eip !136
  %895 = call i8 @llvm.ctpop.i8(i8 %894), !mcsema_real_eip !136
  %896 = trunc i8 %895 to i1, !mcsema_real_eip !136
  %897 = xor i1 %896, true, !mcsema_real_eip !136
  store i1 %897, i1* %PF, !mcsema_real_eip !136
  %898 = icmp eq i32 %889, 0, !mcsema_real_eip !136
  store i1 %898, i1* %ZF, !mcsema_real_eip !136
  %899 = lshr i32 %889, 31, !mcsema_real_eip !136
  %900 = trunc i32 %899 to i1, !mcsema_real_eip !136
  store i1 %900, i1* %SF, !mcsema_real_eip !136
  %901 = icmp ult i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  store i1 %901, i1* %CF, !mcsema_real_eip !136
  %902 = xor i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  %903 = xor i32 %EAX_val.182, %889, !mcsema_real_eip !136
  %904 = and i32 %902, %903, !mcsema_real_eip !136
  %905 = lshr i32 %904, 31, !mcsema_real_eip !136
  %906 = trunc i32 %905 to i1, !mcsema_real_eip !136
  store i1 %906, i1* %OF, !mcsema_real_eip !136
  %907 = zext i32 %889 to i64, !mcsema_real_eip !136
  store i64 %907, i64* %XAX, !mcsema_real_eip !136
  %RBP_val.183 = load i64, i64* %XBP, !mcsema_real_eip !137
  %908 = add i64 %RBP_val.183, -68, !mcsema_real_eip !137
  %909 = inttoptr i64 %908 to i64*, !mcsema_real_eip !137
  %EAX.184 = bitcast i64* %XAX to i32*, !mcsema_real_eip !137
  %EAX_val.185 = load i32, i32* %EAX.184, !mcsema_real_eip !137
  %910 = ptrtoint i64* %909 to i64, !mcsema_real_eip !137
  %911 = inttoptr i64 %910 to i32*, !mcsema_real_eip !137
  store i32 %EAX_val.185, i32* %911, !mcsema_real_eip !137
  %912 = load i1, i1* %ZF, !mcsema_real_eip !138
  %913 = icmp eq i1 %912, true, !mcsema_real_eip !138
  br i1 %913, label %block_0x26f, label %block_0x142, !mcsema_real_eip !138

block_0x142:                                      ; preds = %block_0x131
  br label %block_0x147, !mcsema_real_eip !139

block_0x26f:                                      ; preds = %block_0x131
  %RBP_val.186 = load i64, i64* %XBP, !mcsema_real_eip !140
  %914 = add i64 %RBP_val.186, -8, !mcsema_real_eip !140
  %915 = inttoptr i64 %914 to i64*, !mcsema_real_eip !140
  %916 = ptrtoint i64* %915 to i64, !mcsema_real_eip !140
  %917 = inttoptr i64 %916 to i32*, !mcsema_real_eip !140
  %918 = load i32, i32* %917, !mcsema_real_eip !140
  %919 = zext i32 %918 to i64, !mcsema_real_eip !140
  store i64 %919, i64* %XAX, !mcsema_real_eip !140
  %EAX.187 = bitcast i64* %XAX to i32*, !mcsema_real_eip !141
  %EAX_val.188 = load i32, i32* %EAX.187, !mcsema_real_eip !141
  %920 = add i32 74639, %EAX_val.188, !mcsema_real_eip !141
  %921 = xor i32 %920, %EAX_val.188, !mcsema_real_eip !141
  %922 = xor i32 %921, 74639, !mcsema_real_eip !141
  %923 = and i32 %922, 16, !mcsema_real_eip !141
  %924 = icmp ne i32 %923, 0, !mcsema_real_eip !141
  store i1 %924, i1* %AF, !mcsema_real_eip !141
  %925 = lshr i32 %920, 31, !mcsema_real_eip !141
  %926 = trunc i32 %925 to i1, !mcsema_real_eip !141
  store i1 %926, i1* %SF, !mcsema_real_eip !141
  %927 = icmp eq i32 %920, 0, !mcsema_real_eip !141
  store i1 %927, i1* %ZF, !mcsema_real_eip !141
  %928 = xor i32 %EAX_val.188, 74639, !mcsema_real_eip !141
  %929 = xor i32 %928, -1, !mcsema_real_eip !141
  %930 = xor i32 %EAX_val.188, %920, !mcsema_real_eip !141
  %931 = and i32 %929, %930, !mcsema_real_eip !141
  %932 = lshr i32 %931, 31, !mcsema_real_eip !141
  %933 = and i32 %932, 1, !mcsema_real_eip !141
  %934 = trunc i32 %933 to i1, !mcsema_real_eip !141
  store i1 %934, i1* %OF, !mcsema_real_eip !141
  %935 = trunc i32 %920 to i8, !mcsema_real_eip !141
  %936 = call i8 @llvm.ctpop.i8(i8 %935), !mcsema_real_eip !141
  %937 = trunc i8 %936 to i1, !mcsema_real_eip !141
  %938 = xor i1 %937, true, !mcsema_real_eip !141
  store i1 %938, i1* %PF, !mcsema_real_eip !141
  %939 = icmp ult i32 %920, %EAX_val.188, !mcsema_real_eip !141
  store i1 %939, i1* %CF, !mcsema_real_eip !141
  %940 = zext i32 %920 to i64, !mcsema_real_eip !141
  store i64 %940, i64* %XAX, !mcsema_real_eip !141
  %RBP_val.189 = load i64, i64* %XBP, !mcsema_real_eip !142
  %941 = add i64 %RBP_val.189, -8, !mcsema_real_eip !142
  %942 = inttoptr i64 %941 to i64*, !mcsema_real_eip !142
  %EAX.190 = bitcast i64* %XAX to i32*, !mcsema_real_eip !142
  %EAX_val.191 = load i32, i32* %EAX.190, !mcsema_real_eip !142
  %943 = ptrtoint i64* %942 to i64, !mcsema_real_eip !142
  %944 = inttoptr i64 %943 to i32*, !mcsema_real_eip !142
  store i32 %EAX_val.191, i32* %944, !mcsema_real_eip !142
  br label %block_0x2c8, !mcsema_real_eip !143

block_0x147:                                      ; preds = %block_0x142
  %RBP_val.192 = load i64, i64* %XBP, !mcsema_real_eip !144
  %945 = add i64 %RBP_val.192, -12, !mcsema_real_eip !144
  %946 = inttoptr i64 %945 to i64*, !mcsema_real_eip !144
  %947 = ptrtoint i64* %946 to i64, !mcsema_real_eip !144
  %948 = inttoptr i64 %947 to i32*, !mcsema_real_eip !144
  %949 = load i32, i32* %948, !mcsema_real_eip !144
  %950 = zext i32 %949 to i64, !mcsema_real_eip !144
  store i64 %950, i64* %XAX, !mcsema_real_eip !144
  %EAX.193 = bitcast i64* %XAX to i32*, !mcsema_real_eip !145
  %EAX_val.194 = load i32, i32* %EAX.193, !mcsema_real_eip !145
  %951 = sub i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  %952 = xor i32 %951, %EAX_val.194, !mcsema_real_eip !145
  %953 = xor i32 %952, 74640, !mcsema_real_eip !145
  %954 = and i32 %953, 16, !mcsema_real_eip !145
  %955 = icmp ne i32 %954, 0, !mcsema_real_eip !145
  store i1 %955, i1* %AF, !mcsema_real_eip !145
  %956 = trunc i32 %951 to i8, !mcsema_real_eip !145
  %957 = call i8 @llvm.ctpop.i8(i8 %956), !mcsema_real_eip !145
  %958 = trunc i8 %957 to i1, !mcsema_real_eip !145
  %959 = xor i1 %958, true, !mcsema_real_eip !145
  store i1 %959, i1* %PF, !mcsema_real_eip !145
  %960 = icmp eq i32 %951, 0, !mcsema_real_eip !145
  store i1 %960, i1* %ZF, !mcsema_real_eip !145
  %961 = lshr i32 %951, 31, !mcsema_real_eip !145
  %962 = trunc i32 %961 to i1, !mcsema_real_eip !145
  store i1 %962, i1* %SF, !mcsema_real_eip !145
  %963 = icmp ult i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  store i1 %963, i1* %CF, !mcsema_real_eip !145
  %964 = xor i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  %965 = xor i32 %EAX_val.194, %951, !mcsema_real_eip !145
  %966 = and i32 %964, %965, !mcsema_real_eip !145
  %967 = lshr i32 %966, 31, !mcsema_real_eip !145
  %968 = trunc i32 %967 to i1, !mcsema_real_eip !145
  store i1 %968, i1* %OF, !mcsema_real_eip !145
  %969 = zext i32 %951 to i64, !mcsema_real_eip !145
  store i64 %969, i64* %XAX, !mcsema_real_eip !145
  %RBP_val.195 = load i64, i64* %XBP, !mcsema_real_eip !146
  %970 = add i64 %RBP_val.195, -72, !mcsema_real_eip !146
  %971 = inttoptr i64 %970 to i64*, !mcsema_real_eip !146
  %EAX.196 = bitcast i64* %XAX to i32*, !mcsema_real_eip !146
  %EAX_val.197 = load i32, i32* %EAX.196, !mcsema_real_eip !146
  %972 = ptrtoint i64* %971 to i64, !mcsema_real_eip !146
  %973 = inttoptr i64 %972 to i32*, !mcsema_real_eip !146
  store i32 %EAX_val.197, i32* %973, !mcsema_real_eip !146
  %974 = load i1, i1* %ZF, !mcsema_real_eip !147
  %975 = icmp eq i1 %974, true, !mcsema_real_eip !147
  br i1 %975, label %block_0x27f, label %block_0x158, !mcsema_real_eip !147

block_0x158:                                      ; preds = %block_0x147
  br label %block_0x15d, !mcsema_real_eip !148

block_0x27f:                                      ; preds = %block_0x147
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !149
  %976 = add i64 %RBP_val.198, -8, !mcsema_real_eip !149
  %977 = inttoptr i64 %976 to i64*, !mcsema_real_eip !149
  %978 = ptrtoint i64* %977 to i64, !mcsema_real_eip !149
  %979 = inttoptr i64 %978 to i32*, !mcsema_real_eip !149
  %980 = load i32, i32* %979, !mcsema_real_eip !149
  %981 = zext i32 %980 to i64, !mcsema_real_eip !149
  store i64 %981, i64* %XAX, !mcsema_real_eip !149
  %EAX.199 = bitcast i64* %XAX to i32*, !mcsema_real_eip !150
  %EAX_val.200 = load i32, i32* %EAX.199, !mcsema_real_eip !150
  %982 = add i32 74640, %EAX_val.200, !mcsema_real_eip !150
  %983 = xor i32 %982, %EAX_val.200, !mcsema_real_eip !150
  %984 = xor i32 %983, 74640, !mcsema_real_eip !150
  %985 = and i32 %984, 16, !mcsema_real_eip !150
  %986 = icmp ne i32 %985, 0, !mcsema_real_eip !150
  store i1 %986, i1* %AF, !mcsema_real_eip !150
  %987 = lshr i32 %982, 31, !mcsema_real_eip !150
  %988 = trunc i32 %987 to i1, !mcsema_real_eip !150
  store i1 %988, i1* %SF, !mcsema_real_eip !150
  %989 = icmp eq i32 %982, 0, !mcsema_real_eip !150
  store i1 %989, i1* %ZF, !mcsema_real_eip !150
  %990 = xor i32 %EAX_val.200, 74640, !mcsema_real_eip !150
  %991 = xor i32 %990, -1, !mcsema_real_eip !150
  %992 = xor i32 %EAX_val.200, %982, !mcsema_real_eip !150
  %993 = and i32 %991, %992, !mcsema_real_eip !150
  %994 = lshr i32 %993, 31, !mcsema_real_eip !150
  %995 = and i32 %994, 1, !mcsema_real_eip !150
  %996 = trunc i32 %995 to i1, !mcsema_real_eip !150
  store i1 %996, i1* %OF, !mcsema_real_eip !150
  %997 = trunc i32 %982 to i8, !mcsema_real_eip !150
  %998 = call i8 @llvm.ctpop.i8(i8 %997), !mcsema_real_eip !150
  %999 = trunc i8 %998 to i1, !mcsema_real_eip !150
  %1000 = xor i1 %999, true, !mcsema_real_eip !150
  store i1 %1000, i1* %PF, !mcsema_real_eip !150
  %1001 = icmp ult i32 %982, %EAX_val.200, !mcsema_real_eip !150
  store i1 %1001, i1* %CF, !mcsema_real_eip !150
  %1002 = zext i32 %982 to i64, !mcsema_real_eip !150
  store i64 %1002, i64* %XAX, !mcsema_real_eip !150
  %RBP_val.201 = load i64, i64* %XBP, !mcsema_real_eip !151
  %1003 = add i64 %RBP_val.201, -8, !mcsema_real_eip !151
  %1004 = inttoptr i64 %1003 to i64*, !mcsema_real_eip !151
  %EAX.202 = bitcast i64* %XAX to i32*, !mcsema_real_eip !151
  %EAX_val.203 = load i32, i32* %EAX.202, !mcsema_real_eip !151
  %1005 = ptrtoint i64* %1004 to i64, !mcsema_real_eip !151
  %1006 = inttoptr i64 %1005 to i32*, !mcsema_real_eip !151
  store i32 %EAX_val.203, i32* %1006, !mcsema_real_eip !151
  br label %block_0x2c8, !mcsema_real_eip !152

block_0x15d:                                      ; preds = %block_0x158
  %RBP_val.204 = load i64, i64* %XBP, !mcsema_real_eip !153
  %1007 = add i64 %RBP_val.204, -12, !mcsema_real_eip !153
  %1008 = inttoptr i64 %1007 to i64*, !mcsema_real_eip !153
  %1009 = ptrtoint i64* %1008 to i64, !mcsema_real_eip !153
  %1010 = inttoptr i64 %1009 to i32*, !mcsema_real_eip !153
  %1011 = load i32, i32* %1010, !mcsema_real_eip !153
  %1012 = zext i32 %1011 to i64, !mcsema_real_eip !153
  store i64 %1012, i64* %XAX, !mcsema_real_eip !153
  %EAX.205 = bitcast i64* %XAX to i32*, !mcsema_real_eip !154
  %EAX_val.206 = load i32, i32* %EAX.205, !mcsema_real_eip !154
  %1013 = sub i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  %1014 = xor i32 %1013, %EAX_val.206, !mcsema_real_eip !154
  %1015 = xor i32 %1014, 74641, !mcsema_real_eip !154
  %1016 = and i32 %1015, 16, !mcsema_real_eip !154
  %1017 = icmp ne i32 %1016, 0, !mcsema_real_eip !154
  store i1 %1017, i1* %AF, !mcsema_real_eip !154
  %1018 = trunc i32 %1013 to i8, !mcsema_real_eip !154
  %1019 = call i8 @llvm.ctpop.i8(i8 %1018), !mcsema_real_eip !154
  %1020 = trunc i8 %1019 to i1, !mcsema_real_eip !154
  %1021 = xor i1 %1020, true, !mcsema_real_eip !154
  store i1 %1021, i1* %PF, !mcsema_real_eip !154
  %1022 = icmp eq i32 %1013, 0, !mcsema_real_eip !154
  store i1 %1022, i1* %ZF, !mcsema_real_eip !154
  %1023 = lshr i32 %1013, 31, !mcsema_real_eip !154
  %1024 = trunc i32 %1023 to i1, !mcsema_real_eip !154
  store i1 %1024, i1* %SF, !mcsema_real_eip !154
  %1025 = icmp ult i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  store i1 %1025, i1* %CF, !mcsema_real_eip !154
  %1026 = xor i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  %1027 = xor i32 %EAX_val.206, %1013, !mcsema_real_eip !154
  %1028 = and i32 %1026, %1027, !mcsema_real_eip !154
  %1029 = lshr i32 %1028, 31, !mcsema_real_eip !154
  %1030 = trunc i32 %1029 to i1, !mcsema_real_eip !154
  store i1 %1030, i1* %OF, !mcsema_real_eip !154
  %1031 = zext i32 %1013 to i64, !mcsema_real_eip !154
  store i64 %1031, i64* %XAX, !mcsema_real_eip !154
  %RBP_val.207 = load i64, i64* %XBP, !mcsema_real_eip !155
  %1032 = add i64 %RBP_val.207, -76, !mcsema_real_eip !155
  %1033 = inttoptr i64 %1032 to i64*, !mcsema_real_eip !155
  %EAX.208 = bitcast i64* %XAX to i32*, !mcsema_real_eip !155
  %EAX_val.209 = load i32, i32* %EAX.208, !mcsema_real_eip !155
  %1034 = ptrtoint i64* %1033 to i64, !mcsema_real_eip !155
  %1035 = inttoptr i64 %1034 to i32*, !mcsema_real_eip !155
  store i32 %EAX_val.209, i32* %1035, !mcsema_real_eip !155
  %1036 = load i1, i1* %ZF, !mcsema_real_eip !156
  %1037 = icmp eq i1 %1036, true, !mcsema_real_eip !156
  br i1 %1037, label %block_0x28f, label %block_0x16e, !mcsema_real_eip !156

block_0x16e:                                      ; preds = %block_0x15d
  br label %block_0x173, !mcsema_real_eip !157

block_0x28f:                                      ; preds = %block_0x15d
  %RBP_val.210 = load i64, i64* %XBP, !mcsema_real_eip !158
  %1038 = add i64 %RBP_val.210, -8, !mcsema_real_eip !158
  %1039 = inttoptr i64 %1038 to i64*, !mcsema_real_eip !158
  %1040 = ptrtoint i64* %1039 to i64, !mcsema_real_eip !158
  %1041 = inttoptr i64 %1040 to i32*, !mcsema_real_eip !158
  %1042 = load i32, i32* %1041, !mcsema_real_eip !158
  %1043 = zext i32 %1042 to i64, !mcsema_real_eip !158
  store i64 %1043, i64* %XAX, !mcsema_real_eip !158
  %EAX.211 = bitcast i64* %XAX to i32*, !mcsema_real_eip !159
  %EAX_val.212 = load i32, i32* %EAX.211, !mcsema_real_eip !159
  %1044 = add i32 74641, %EAX_val.212, !mcsema_real_eip !159
  %1045 = xor i32 %1044, %EAX_val.212, !mcsema_real_eip !159
  %1046 = xor i32 %1045, 74641, !mcsema_real_eip !159
  %1047 = and i32 %1046, 16, !mcsema_real_eip !159
  %1048 = icmp ne i32 %1047, 0, !mcsema_real_eip !159
  store i1 %1048, i1* %AF, !mcsema_real_eip !159
  %1049 = lshr i32 %1044, 31, !mcsema_real_eip !159
  %1050 = trunc i32 %1049 to i1, !mcsema_real_eip !159
  store i1 %1050, i1* %SF, !mcsema_real_eip !159
  %1051 = icmp eq i32 %1044, 0, !mcsema_real_eip !159
  store i1 %1051, i1* %ZF, !mcsema_real_eip !159
  %1052 = xor i32 %EAX_val.212, 74641, !mcsema_real_eip !159
  %1053 = xor i32 %1052, -1, !mcsema_real_eip !159
  %1054 = xor i32 %EAX_val.212, %1044, !mcsema_real_eip !159
  %1055 = and i32 %1053, %1054, !mcsema_real_eip !159
  %1056 = lshr i32 %1055, 31, !mcsema_real_eip !159
  %1057 = and i32 %1056, 1, !mcsema_real_eip !159
  %1058 = trunc i32 %1057 to i1, !mcsema_real_eip !159
  store i1 %1058, i1* %OF, !mcsema_real_eip !159
  %1059 = trunc i32 %1044 to i8, !mcsema_real_eip !159
  %1060 = call i8 @llvm.ctpop.i8(i8 %1059), !mcsema_real_eip !159
  %1061 = trunc i8 %1060 to i1, !mcsema_real_eip !159
  %1062 = xor i1 %1061, true, !mcsema_real_eip !159
  store i1 %1062, i1* %PF, !mcsema_real_eip !159
  %1063 = icmp ult i32 %1044, %EAX_val.212, !mcsema_real_eip !159
  store i1 %1063, i1* %CF, !mcsema_real_eip !159
  %1064 = zext i32 %1044 to i64, !mcsema_real_eip !159
  store i64 %1064, i64* %XAX, !mcsema_real_eip !159
  %RBP_val.213 = load i64, i64* %XBP, !mcsema_real_eip !160
  %1065 = add i64 %RBP_val.213, -8, !mcsema_real_eip !160
  %1066 = inttoptr i64 %1065 to i64*, !mcsema_real_eip !160
  %EAX.214 = bitcast i64* %XAX to i32*, !mcsema_real_eip !160
  %EAX_val.215 = load i32, i32* %EAX.214, !mcsema_real_eip !160
  %1067 = ptrtoint i64* %1066 to i64, !mcsema_real_eip !160
  %1068 = inttoptr i64 %1067 to i32*, !mcsema_real_eip !160
  store i32 %EAX_val.215, i32* %1068, !mcsema_real_eip !160
  br label %block_0x2c8, !mcsema_real_eip !161

block_0x173:                                      ; preds = %block_0x16e
  %RBP_val.216 = load i64, i64* %XBP, !mcsema_real_eip !162
  %1069 = add i64 %RBP_val.216, -12, !mcsema_real_eip !162
  %1070 = inttoptr i64 %1069 to i64*, !mcsema_real_eip !162
  %1071 = ptrtoint i64* %1070 to i64, !mcsema_real_eip !162
  %1072 = inttoptr i64 %1071 to i32*, !mcsema_real_eip !162
  %1073 = load i32, i32* %1072, !mcsema_real_eip !162
  %1074 = zext i32 %1073 to i64, !mcsema_real_eip !162
  store i64 %1074, i64* %XAX, !mcsema_real_eip !162
  %EAX.217 = bitcast i64* %XAX to i32*, !mcsema_real_eip !163
  %EAX_val.218 = load i32, i32* %EAX.217, !mcsema_real_eip !163
  %1075 = sub i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  %1076 = xor i32 %1075, %EAX_val.218, !mcsema_real_eip !163
  %1077 = xor i32 %1076, 74642, !mcsema_real_eip !163
  %1078 = and i32 %1077, 16, !mcsema_real_eip !163
  %1079 = icmp ne i32 %1078, 0, !mcsema_real_eip !163
  store i1 %1079, i1* %AF, !mcsema_real_eip !163
  %1080 = trunc i32 %1075 to i8, !mcsema_real_eip !163
  %1081 = call i8 @llvm.ctpop.i8(i8 %1080), !mcsema_real_eip !163
  %1082 = trunc i8 %1081 to i1, !mcsema_real_eip !163
  %1083 = xor i1 %1082, true, !mcsema_real_eip !163
  store i1 %1083, i1* %PF, !mcsema_real_eip !163
  %1084 = icmp eq i32 %1075, 0, !mcsema_real_eip !163
  store i1 %1084, i1* %ZF, !mcsema_real_eip !163
  %1085 = lshr i32 %1075, 31, !mcsema_real_eip !163
  %1086 = trunc i32 %1085 to i1, !mcsema_real_eip !163
  store i1 %1086, i1* %SF, !mcsema_real_eip !163
  %1087 = icmp ult i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  store i1 %1087, i1* %CF, !mcsema_real_eip !163
  %1088 = xor i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  %1089 = xor i32 %EAX_val.218, %1075, !mcsema_real_eip !163
  %1090 = and i32 %1088, %1089, !mcsema_real_eip !163
  %1091 = lshr i32 %1090, 31, !mcsema_real_eip !163
  %1092 = trunc i32 %1091 to i1, !mcsema_real_eip !163
  store i1 %1092, i1* %OF, !mcsema_real_eip !163
  %1093 = zext i32 %1075 to i64, !mcsema_real_eip !163
  store i64 %1093, i64* %XAX, !mcsema_real_eip !163
  %RBP_val.219 = load i64, i64* %XBP, !mcsema_real_eip !164
  %1094 = add i64 %RBP_val.219, -80, !mcsema_real_eip !164
  %1095 = inttoptr i64 %1094 to i64*, !mcsema_real_eip !164
  %EAX.220 = bitcast i64* %XAX to i32*, !mcsema_real_eip !164
  %EAX_val.221 = load i32, i32* %EAX.220, !mcsema_real_eip !164
  %1096 = ptrtoint i64* %1095 to i64, !mcsema_real_eip !164
  %1097 = inttoptr i64 %1096 to i32*, !mcsema_real_eip !164
  store i32 %EAX_val.221, i32* %1097, !mcsema_real_eip !164
  %1098 = load i1, i1* %ZF, !mcsema_real_eip !165
  %1099 = icmp eq i1 %1098, true, !mcsema_real_eip !165
  br i1 %1099, label %block_0x29f, label %block_0x184, !mcsema_real_eip !165

block_0x184:                                      ; preds = %block_0x173
  br label %block_0x189, !mcsema_real_eip !166

block_0x29f:                                      ; preds = %block_0x173
  %RBP_val.222 = load i64, i64* %XBP, !mcsema_real_eip !167
  %1100 = add i64 %RBP_val.222, -8, !mcsema_real_eip !167
  %1101 = inttoptr i64 %1100 to i64*, !mcsema_real_eip !167
  %1102 = ptrtoint i64* %1101 to i64, !mcsema_real_eip !167
  %1103 = inttoptr i64 %1102 to i32*, !mcsema_real_eip !167
  %1104 = load i32, i32* %1103, !mcsema_real_eip !167
  %1105 = zext i32 %1104 to i64, !mcsema_real_eip !167
  store i64 %1105, i64* %XAX, !mcsema_real_eip !167
  %EAX.223 = bitcast i64* %XAX to i32*, !mcsema_real_eip !168
  %EAX_val.224 = load i32, i32* %EAX.223, !mcsema_real_eip !168
  %1106 = add i32 74642, %EAX_val.224, !mcsema_real_eip !168
  %1107 = xor i32 %1106, %EAX_val.224, !mcsema_real_eip !168
  %1108 = xor i32 %1107, 74642, !mcsema_real_eip !168
  %1109 = and i32 %1108, 16, !mcsema_real_eip !168
  %1110 = icmp ne i32 %1109, 0, !mcsema_real_eip !168
  store i1 %1110, i1* %AF, !mcsema_real_eip !168
  %1111 = lshr i32 %1106, 31, !mcsema_real_eip !168
  %1112 = trunc i32 %1111 to i1, !mcsema_real_eip !168
  store i1 %1112, i1* %SF, !mcsema_real_eip !168
  %1113 = icmp eq i32 %1106, 0, !mcsema_real_eip !168
  store i1 %1113, i1* %ZF, !mcsema_real_eip !168
  %1114 = xor i32 %EAX_val.224, 74642, !mcsema_real_eip !168
  %1115 = xor i32 %1114, -1, !mcsema_real_eip !168
  %1116 = xor i32 %EAX_val.224, %1106, !mcsema_real_eip !168
  %1117 = and i32 %1115, %1116, !mcsema_real_eip !168
  %1118 = lshr i32 %1117, 31, !mcsema_real_eip !168
  %1119 = and i32 %1118, 1, !mcsema_real_eip !168
  %1120 = trunc i32 %1119 to i1, !mcsema_real_eip !168
  store i1 %1120, i1* %OF, !mcsema_real_eip !168
  %1121 = trunc i32 %1106 to i8, !mcsema_real_eip !168
  %1122 = call i8 @llvm.ctpop.i8(i8 %1121), !mcsema_real_eip !168
  %1123 = trunc i8 %1122 to i1, !mcsema_real_eip !168
  %1124 = xor i1 %1123, true, !mcsema_real_eip !168
  store i1 %1124, i1* %PF, !mcsema_real_eip !168
  %1125 = icmp ult i32 %1106, %EAX_val.224, !mcsema_real_eip !168
  store i1 %1125, i1* %CF, !mcsema_real_eip !168
  %1126 = zext i32 %1106 to i64, !mcsema_real_eip !168
  store i64 %1126, i64* %XAX, !mcsema_real_eip !168
  %RBP_val.225 = load i64, i64* %XBP, !mcsema_real_eip !169
  %1127 = add i64 %RBP_val.225, -8, !mcsema_real_eip !169
  %1128 = inttoptr i64 %1127 to i64*, !mcsema_real_eip !169
  %EAX.226 = bitcast i64* %XAX to i32*, !mcsema_real_eip !169
  %EAX_val.227 = load i32, i32* %EAX.226, !mcsema_real_eip !169
  %1129 = ptrtoint i64* %1128 to i64, !mcsema_real_eip !169
  %1130 = inttoptr i64 %1129 to i32*, !mcsema_real_eip !169
  store i32 %EAX_val.227, i32* %1130, !mcsema_real_eip !169
  br label %block_0x2c8, !mcsema_real_eip !170

block_0x189:                                      ; preds = %block_0x184
  %RBP_val.228 = load i64, i64* %XBP, !mcsema_real_eip !171
  %1131 = add i64 %RBP_val.228, -12, !mcsema_real_eip !171
  %1132 = inttoptr i64 %1131 to i64*, !mcsema_real_eip !171
  %1133 = ptrtoint i64* %1132 to i64, !mcsema_real_eip !171
  %1134 = inttoptr i64 %1133 to i32*, !mcsema_real_eip !171
  %1135 = load i32, i32* %1134, !mcsema_real_eip !171
  %1136 = zext i32 %1135 to i64, !mcsema_real_eip !171
  store i64 %1136, i64* %XAX, !mcsema_real_eip !171
  %EAX.229 = bitcast i64* %XAX to i32*, !mcsema_real_eip !172
  %EAX_val.230 = load i32, i32* %EAX.229, !mcsema_real_eip !172
  %1137 = sub i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  %1138 = xor i32 %1137, %EAX_val.230, !mcsema_real_eip !172
  %1139 = xor i32 %1138, 74643, !mcsema_real_eip !172
  %1140 = and i32 %1139, 16, !mcsema_real_eip !172
  %1141 = icmp ne i32 %1140, 0, !mcsema_real_eip !172
  store i1 %1141, i1* %AF, !mcsema_real_eip !172
  %1142 = trunc i32 %1137 to i8, !mcsema_real_eip !172
  %1143 = call i8 @llvm.ctpop.i8(i8 %1142), !mcsema_real_eip !172
  %1144 = trunc i8 %1143 to i1, !mcsema_real_eip !172
  %1145 = xor i1 %1144, true, !mcsema_real_eip !172
  store i1 %1145, i1* %PF, !mcsema_real_eip !172
  %1146 = icmp eq i32 %1137, 0, !mcsema_real_eip !172
  store i1 %1146, i1* %ZF, !mcsema_real_eip !172
  %1147 = lshr i32 %1137, 31, !mcsema_real_eip !172
  %1148 = trunc i32 %1147 to i1, !mcsema_real_eip !172
  store i1 %1148, i1* %SF, !mcsema_real_eip !172
  %1149 = icmp ult i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  store i1 %1149, i1* %CF, !mcsema_real_eip !172
  %1150 = xor i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  %1151 = xor i32 %EAX_val.230, %1137, !mcsema_real_eip !172
  %1152 = and i32 %1150, %1151, !mcsema_real_eip !172
  %1153 = lshr i32 %1152, 31, !mcsema_real_eip !172
  %1154 = trunc i32 %1153 to i1, !mcsema_real_eip !172
  store i1 %1154, i1* %OF, !mcsema_real_eip !172
  %1155 = zext i32 %1137 to i64, !mcsema_real_eip !172
  store i64 %1155, i64* %XAX, !mcsema_real_eip !172
  %RBP_val.231 = load i64, i64* %XBP, !mcsema_real_eip !173
  %1156 = add i64 %RBP_val.231, -84, !mcsema_real_eip !173
  %1157 = inttoptr i64 %1156 to i64*, !mcsema_real_eip !173
  %EAX.232 = bitcast i64* %XAX to i32*, !mcsema_real_eip !173
  %EAX_val.233 = load i32, i32* %EAX.232, !mcsema_real_eip !173
  %1158 = ptrtoint i64* %1157 to i64, !mcsema_real_eip !173
  %1159 = inttoptr i64 %1158 to i32*, !mcsema_real_eip !173
  store i32 %EAX_val.233, i32* %1159, !mcsema_real_eip !173
  %1160 = load i1, i1* %ZF, !mcsema_real_eip !174
  %1161 = icmp eq i1 %1160, true, !mcsema_real_eip !174
  br i1 %1161, label %block_0x2af, label %block_0x19a, !mcsema_real_eip !174

block_0x19a:                                      ; preds = %block_0x189
  br label %block_0x2bf, !mcsema_real_eip !175

block_0x2af:                                      ; preds = %block_0x189
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !176
  %1162 = add i64 %RBP_val.234, -8, !mcsema_real_eip !176
  %1163 = inttoptr i64 %1162 to i64*, !mcsema_real_eip !176
  %1164 = ptrtoint i64* %1163 to i64, !mcsema_real_eip !176
  %1165 = inttoptr i64 %1164 to i32*, !mcsema_real_eip !176
  %1166 = load i32, i32* %1165, !mcsema_real_eip !176
  %1167 = zext i32 %1166 to i64, !mcsema_real_eip !176
  store i64 %1167, i64* %XAX, !mcsema_real_eip !176
  %EAX.235 = bitcast i64* %XAX to i32*, !mcsema_real_eip !177
  %EAX_val.236 = load i32, i32* %EAX.235, !mcsema_real_eip !177
  %1168 = add i32 74643, %EAX_val.236, !mcsema_real_eip !177
  %1169 = xor i32 %1168, %EAX_val.236, !mcsema_real_eip !177
  %1170 = xor i32 %1169, 74643, !mcsema_real_eip !177
  %1171 = and i32 %1170, 16, !mcsema_real_eip !177
  %1172 = icmp ne i32 %1171, 0, !mcsema_real_eip !177
  store i1 %1172, i1* %AF, !mcsema_real_eip !177
  %1173 = lshr i32 %1168, 31, !mcsema_real_eip !177
  %1174 = trunc i32 %1173 to i1, !mcsema_real_eip !177
  store i1 %1174, i1* %SF, !mcsema_real_eip !177
  %1175 = icmp eq i32 %1168, 0, !mcsema_real_eip !177
  store i1 %1175, i1* %ZF, !mcsema_real_eip !177
  %1176 = xor i32 %EAX_val.236, 74643, !mcsema_real_eip !177
  %1177 = xor i32 %1176, -1, !mcsema_real_eip !177
  %1178 = xor i32 %EAX_val.236, %1168, !mcsema_real_eip !177
  %1179 = and i32 %1177, %1178, !mcsema_real_eip !177
  %1180 = lshr i32 %1179, 31, !mcsema_real_eip !177
  %1181 = and i32 %1180, 1, !mcsema_real_eip !177
  %1182 = trunc i32 %1181 to i1, !mcsema_real_eip !177
  store i1 %1182, i1* %OF, !mcsema_real_eip !177
  %1183 = trunc i32 %1168 to i8, !mcsema_real_eip !177
  %1184 = call i8 @llvm.ctpop.i8(i8 %1183), !mcsema_real_eip !177
  %1185 = trunc i8 %1184 to i1, !mcsema_real_eip !177
  %1186 = xor i1 %1185, true, !mcsema_real_eip !177
  store i1 %1186, i1* %PF, !mcsema_real_eip !177
  %1187 = icmp ult i32 %1168, %EAX_val.236, !mcsema_real_eip !177
  store i1 %1187, i1* %CF, !mcsema_real_eip !177
  %1188 = zext i32 %1168 to i64, !mcsema_real_eip !177
  store i64 %1188, i64* %XAX, !mcsema_real_eip !177
  %RBP_val.237 = load i64, i64* %XBP, !mcsema_real_eip !178
  %1189 = add i64 %RBP_val.237, -8, !mcsema_real_eip !178
  %1190 = inttoptr i64 %1189 to i64*, !mcsema_real_eip !178
  %EAX.238 = bitcast i64* %XAX to i32*, !mcsema_real_eip !178
  %EAX_val.239 = load i32, i32* %EAX.238, !mcsema_real_eip !178
  %1191 = ptrtoint i64* %1190 to i64, !mcsema_real_eip !178
  %1192 = inttoptr i64 %1191 to i32*, !mcsema_real_eip !178
  store i32 %EAX_val.239, i32* %1192, !mcsema_real_eip !178
  br label %block_0x2c8, !mcsema_real_eip !179

block_0x2bf:                                      ; preds = %block_0x19a
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !180
  %1193 = add i64 %RBP_val.240, -8, !mcsema_real_eip !180
  %1194 = inttoptr i64 %1193 to i64*, !mcsema_real_eip !180
  %1195 = ptrtoint i64* %1194 to i64, !mcsema_real_eip !180
  %1196 = inttoptr i64 %1195 to i32*, !mcsema_real_eip !180
  %1197 = load i32, i32* %1196, !mcsema_real_eip !180
  %1198 = zext i32 %1197 to i64, !mcsema_real_eip !180
  store i64 %1198, i64* %XAX, !mcsema_real_eip !180
  %EAX.241 = bitcast i64* %XAX to i32*, !mcsema_real_eip !181
  %EAX_val.242 = load i32, i32* %EAX.241, !mcsema_real_eip !181
  %1199 = add i32 0, %EAX_val.242, !mcsema_real_eip !181
  %1200 = xor i32 %1199, %EAX_val.242, !mcsema_real_eip !181
  %1201 = xor i32 %1200, 0, !mcsema_real_eip !181
  %1202 = and i32 %1201, 16, !mcsema_real_eip !181
  %1203 = icmp ne i32 %1202, 0, !mcsema_real_eip !181
  store i1 %1203, i1* %AF, !mcsema_real_eip !181
  %1204 = lshr i32 %1199, 31, !mcsema_real_eip !181
  %1205 = trunc i32 %1204 to i1, !mcsema_real_eip !181
  store i1 %1205, i1* %SF, !mcsema_real_eip !181
  %1206 = icmp eq i32 %1199, 0, !mcsema_real_eip !181
  store i1 %1206, i1* %ZF, !mcsema_real_eip !181
  %1207 = xor i32 %EAX_val.242, 0, !mcsema_real_eip !181
  %1208 = xor i32 %1207, -1, !mcsema_real_eip !181
  %1209 = xor i32 %EAX_val.242, %1199, !mcsema_real_eip !181
  %1210 = and i32 %1208, %1209, !mcsema_real_eip !181
  %1211 = lshr i32 %1210, 31, !mcsema_real_eip !181
  %1212 = and i32 %1211, 1, !mcsema_real_eip !181
  %1213 = trunc i32 %1212 to i1, !mcsema_real_eip !181
  store i1 %1213, i1* %OF, !mcsema_real_eip !181
  %1214 = trunc i32 %1199 to i8, !mcsema_real_eip !181
  %1215 = call i8 @llvm.ctpop.i8(i8 %1214), !mcsema_real_eip !181
  %1216 = trunc i8 %1215 to i1, !mcsema_real_eip !181
  %1217 = xor i1 %1216, true, !mcsema_real_eip !181
  store i1 %1217, i1* %PF, !mcsema_real_eip !181
  %1218 = icmp ult i32 %1199, %EAX_val.242, !mcsema_real_eip !181
  store i1 %1218, i1* %CF, !mcsema_real_eip !181
  %1219 = zext i32 %1199 to i64, !mcsema_real_eip !181
  store i64 %1219, i64* %XAX, !mcsema_real_eip !181
  %RBP_val.243 = load i64, i64* %XBP, !mcsema_real_eip !182
  %1220 = add i64 %RBP_val.243, -8, !mcsema_real_eip !182
  %1221 = inttoptr i64 %1220 to i64*, !mcsema_real_eip !182
  %EAX.244 = bitcast i64* %XAX to i32*, !mcsema_real_eip !182
  %EAX_val.245 = load i32, i32* %EAX.244, !mcsema_real_eip !182
  %1222 = ptrtoint i64* %1221 to i64, !mcsema_real_eip !182
  %1223 = inttoptr i64 %1222 to i32*, !mcsema_real_eip !182
  store i32 %EAX_val.245, i32* %1223, !mcsema_real_eip !182
  br label %block_0x2c8
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @switches() #3

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
!6 = !{i64 14}
!7 = !{i64 17}
!8 = !{i64 19}
!9 = !{i64 22}
!10 = !{i64 28}
!11 = !{i64 415}
!12 = !{i64 418}
!13 = !{i64 421}
!14 = !{i64 424}
!15 = !{i64 712}
!16 = !{i64 715}
!17 = !{i64 716}
!18 = !{i64 33}
!19 = !{i64 36}
!20 = !{i64 39}
!21 = !{i64 42}
!22 = !{i64 48}
!23 = !{i64 429}
!24 = !{i64 432}
!25 = !{i64 435}
!26 = !{i64 438}
!27 = !{i64 53}
!28 = !{i64 56}
!29 = !{i64 59}
!30 = !{i64 62}
!31 = !{i64 68}
!32 = !{i64 443}
!33 = !{i64 446}
!34 = !{i64 449}
!35 = !{i64 452}
!36 = !{i64 73}
!37 = !{i64 76}
!38 = !{i64 79}
!39 = !{i64 82}
!40 = !{i64 88}
!41 = !{i64 457}
!42 = !{i64 460}
!43 = !{i64 463}
!44 = !{i64 466}
!45 = !{i64 93}
!46 = !{i64 96}
!47 = !{i64 99}
!48 = !{i64 102}
!49 = !{i64 108}
!50 = !{i64 471}
!51 = !{i64 474}
!52 = !{i64 477}
!53 = !{i64 480}
!54 = !{i64 113}
!55 = !{i64 116}
!56 = !{i64 119}
!57 = !{i64 122}
!58 = !{i64 128}
!59 = !{i64 485}
!60 = !{i64 488}
!61 = !{i64 491}
!62 = !{i64 494}
!63 = !{i64 133}
!64 = !{i64 136}
!65 = !{i64 139}
!66 = !{i64 142}
!67 = !{i64 148}
!68 = !{i64 499}
!69 = !{i64 502}
!70 = !{i64 505}
!71 = !{i64 508}
!72 = !{i64 153}
!73 = !{i64 156}
!74 = !{i64 159}
!75 = !{i64 162}
!76 = !{i64 168}
!77 = !{i64 513}
!78 = !{i64 516}
!79 = !{i64 519}
!80 = !{i64 522}
!81 = !{i64 173}
!82 = !{i64 176}
!83 = !{i64 181}
!84 = !{i64 184}
!85 = !{i64 190}
!86 = !{i64 527}
!87 = !{i64 530}
!88 = !{i64 535}
!89 = !{i64 538}
!90 = !{i64 195}
!91 = !{i64 198}
!92 = !{i64 203}
!93 = !{i64 206}
!94 = !{i64 212}
!95 = !{i64 543}
!96 = !{i64 546}
!97 = !{i64 551}
!98 = !{i64 554}
!99 = !{i64 217}
!100 = !{i64 220}
!101 = !{i64 225}
!102 = !{i64 228}
!103 = !{i64 234}
!104 = !{i64 559}
!105 = !{i64 562}
!106 = !{i64 567}
!107 = !{i64 570}
!108 = !{i64 239}
!109 = !{i64 242}
!110 = !{i64 247}
!111 = !{i64 250}
!112 = !{i64 256}
!113 = !{i64 575}
!114 = !{i64 578}
!115 = !{i64 583}
!116 = !{i64 586}
!117 = !{i64 261}
!118 = !{i64 264}
!119 = !{i64 269}
!120 = !{i64 272}
!121 = !{i64 278}
!122 = !{i64 591}
!123 = !{i64 594}
!124 = !{i64 599}
!125 = !{i64 602}
!126 = !{i64 283}
!127 = !{i64 286}
!128 = !{i64 291}
!129 = !{i64 294}
!130 = !{i64 300}
!131 = !{i64 607}
!132 = !{i64 610}
!133 = !{i64 615}
!134 = !{i64 618}
!135 = !{i64 305}
!136 = !{i64 308}
!137 = !{i64 313}
!138 = !{i64 316}
!139 = !{i64 322}
!140 = !{i64 623}
!141 = !{i64 626}
!142 = !{i64 631}
!143 = !{i64 634}
!144 = !{i64 327}
!145 = !{i64 330}
!146 = !{i64 335}
!147 = !{i64 338}
!148 = !{i64 344}
!149 = !{i64 639}
!150 = !{i64 642}
!151 = !{i64 647}
!152 = !{i64 650}
!153 = !{i64 349}
!154 = !{i64 352}
!155 = !{i64 357}
!156 = !{i64 360}
!157 = !{i64 366}
!158 = !{i64 655}
!159 = !{i64 658}
!160 = !{i64 663}
!161 = !{i64 666}
!162 = !{i64 371}
!163 = !{i64 374}
!164 = !{i64 379}
!165 = !{i64 382}
!166 = !{i64 388}
!167 = !{i64 671}
!168 = !{i64 674}
!169 = !{i64 679}
!170 = !{i64 682}
!171 = !{i64 393}
!172 = !{i64 396}
!173 = !{i64 401}
!174 = !{i64 404}
!175 = !{i64 410}
!176 = !{i64 687}
!177 = !{i64 690}
!178 = !{i64 695}
!179 = !{i64 698}
!180 = !{i64 703}
!181 = !{i64 706}
!182 = !{i64 709}
