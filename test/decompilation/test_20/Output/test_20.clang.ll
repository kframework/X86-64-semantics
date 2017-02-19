; ModuleID = 'Output/test_20.clang.bc'
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

block_0x21:                                       ; preds = %block_0x1c
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %34 = add i64 %RBP_val.15, -12, !mcsema_real_eip !11
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !11
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !11
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !11
  %38 = load i32, i32* %37, !mcsema_real_eip !11
  %39 = zext i32 %38 to i64, !mcsema_real_eip !11
  store i64 %39, i64* %XAX, !mcsema_real_eip !11
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !12
  %40 = sub i32 %EAX_val.17, 1, !mcsema_real_eip !12
  %41 = xor i32 %40, %EAX_val.17, !mcsema_real_eip !12
  %42 = xor i32 %41, 1, !mcsema_real_eip !12
  %43 = and i32 %42, 16, !mcsema_real_eip !12
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !12
  store i1 %44, i1* %AF, !mcsema_real_eip !12
  %45 = trunc i32 %40 to i8, !mcsema_real_eip !12
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !12
  %47 = trunc i8 %46 to i1, !mcsema_real_eip !12
  %48 = xor i1 %47, true, !mcsema_real_eip !12
  store i1 %48, i1* %PF, !mcsema_real_eip !12
  %49 = icmp eq i32 %40, 0, !mcsema_real_eip !12
  store i1 %49, i1* %ZF, !mcsema_real_eip !12
  %50 = lshr i32 %40, 31, !mcsema_real_eip !12
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !12
  store i1 %51, i1* %SF, !mcsema_real_eip !12
  %52 = icmp ult i32 %EAX_val.17, 1, !mcsema_real_eip !12
  store i1 %52, i1* %CF, !mcsema_real_eip !12
  %53 = xor i32 %EAX_val.17, 1, !mcsema_real_eip !12
  %54 = xor i32 %EAX_val.17, %40, !mcsema_real_eip !12
  %55 = and i32 %53, %54, !mcsema_real_eip !12
  %56 = lshr i32 %55, 31, !mcsema_real_eip !12
  %57 = trunc i32 %56 to i1, !mcsema_real_eip !12
  store i1 %57, i1* %OF, !mcsema_real_eip !12
  %58 = zext i32 %40 to i64, !mcsema_real_eip !12
  store i64 %58, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %59 = add i64 %RBP_val.18, -16, !mcsema_real_eip !13
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !13
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !13
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !13
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %62, !mcsema_real_eip !13
  %63 = load i1, i1* %ZF, !mcsema_real_eip !14
  %64 = icmp eq i1 %63, true, !mcsema_real_eip !14
  br i1 %64, label %block_0x1ad, label %block_0x30, !mcsema_real_eip !14

block_0x30:                                       ; preds = %block_0x21
  br label %block_0x35, !mcsema_real_eip !15

block_0x35:                                       ; preds = %block_0x30
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !16
  %65 = add i64 %RBP_val.21, -12, !mcsema_real_eip !16
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !16
  %67 = ptrtoint i64* %66 to i64, !mcsema_real_eip !16
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !16
  %69 = load i32, i32* %68, !mcsema_real_eip !16
  %70 = zext i32 %69 to i64, !mcsema_real_eip !16
  store i64 %70, i64* %XAX, !mcsema_real_eip !16
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !17
  %71 = sub i32 %EAX_val.23, 2, !mcsema_real_eip !17
  %72 = xor i32 %71, %EAX_val.23, !mcsema_real_eip !17
  %73 = xor i32 %72, 2, !mcsema_real_eip !17
  %74 = and i32 %73, 16, !mcsema_real_eip !17
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !17
  store i1 %75, i1* %AF, !mcsema_real_eip !17
  %76 = trunc i32 %71 to i8, !mcsema_real_eip !17
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !17
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !17
  %79 = xor i1 %78, true, !mcsema_real_eip !17
  store i1 %79, i1* %PF, !mcsema_real_eip !17
  %80 = icmp eq i32 %71, 0, !mcsema_real_eip !17
  store i1 %80, i1* %ZF, !mcsema_real_eip !17
  %81 = lshr i32 %71, 31, !mcsema_real_eip !17
  %82 = trunc i32 %81 to i1, !mcsema_real_eip !17
  store i1 %82, i1* %SF, !mcsema_real_eip !17
  %83 = icmp ult i32 %EAX_val.23, 2, !mcsema_real_eip !17
  store i1 %83, i1* %CF, !mcsema_real_eip !17
  %84 = xor i32 %EAX_val.23, 2, !mcsema_real_eip !17
  %85 = xor i32 %EAX_val.23, %71, !mcsema_real_eip !17
  %86 = and i32 %84, %85, !mcsema_real_eip !17
  %87 = lshr i32 %86, 31, !mcsema_real_eip !17
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !17
  store i1 %88, i1* %OF, !mcsema_real_eip !17
  %89 = zext i32 %71 to i64, !mcsema_real_eip !17
  store i64 %89, i64* %XAX, !mcsema_real_eip !17
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !18
  %90 = add i64 %RBP_val.24, -20, !mcsema_real_eip !18
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !18
  %EAX.25 = bitcast i64* %XAX to i32*, !mcsema_real_eip !18
  %EAX_val.26 = load i32, i32* %EAX.25, !mcsema_real_eip !18
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !18
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !18
  store i32 %EAX_val.26, i32* %93, !mcsema_real_eip !18
  %94 = load i1, i1* %ZF, !mcsema_real_eip !19
  %95 = icmp eq i1 %94, true, !mcsema_real_eip !19
  br i1 %95, label %block_0x1bb, label %block_0x44, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x35
  br label %block_0x49, !mcsema_real_eip !20

block_0x49:                                       ; preds = %block_0x44
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !21
  %96 = add i64 %RBP_val.27, -12, !mcsema_real_eip !21
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !21
  %98 = ptrtoint i64* %97 to i64, !mcsema_real_eip !21
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !21
  %100 = load i32, i32* %99, !mcsema_real_eip !21
  %101 = zext i32 %100 to i64, !mcsema_real_eip !21
  store i64 %101, i64* %XAX, !mcsema_real_eip !21
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !22
  %102 = sub i32 %EAX_val.29, 4, !mcsema_real_eip !22
  %103 = xor i32 %102, %EAX_val.29, !mcsema_real_eip !22
  %104 = xor i32 %103, 4, !mcsema_real_eip !22
  %105 = and i32 %104, 16, !mcsema_real_eip !22
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !22
  store i1 %106, i1* %AF, !mcsema_real_eip !22
  %107 = trunc i32 %102 to i8, !mcsema_real_eip !22
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !22
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !22
  %110 = xor i1 %109, true, !mcsema_real_eip !22
  store i1 %110, i1* %PF, !mcsema_real_eip !22
  %111 = icmp eq i32 %102, 0, !mcsema_real_eip !22
  store i1 %111, i1* %ZF, !mcsema_real_eip !22
  %112 = lshr i32 %102, 31, !mcsema_real_eip !22
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !22
  store i1 %113, i1* %SF, !mcsema_real_eip !22
  %114 = icmp ult i32 %EAX_val.29, 4, !mcsema_real_eip !22
  store i1 %114, i1* %CF, !mcsema_real_eip !22
  %115 = xor i32 %EAX_val.29, 4, !mcsema_real_eip !22
  %116 = xor i32 %EAX_val.29, %102, !mcsema_real_eip !22
  %117 = and i32 %115, %116, !mcsema_real_eip !22
  %118 = lshr i32 %117, 31, !mcsema_real_eip !22
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !22
  store i1 %119, i1* %OF, !mcsema_real_eip !22
  %120 = zext i32 %102 to i64, !mcsema_real_eip !22
  store i64 %120, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !23
  %121 = add i64 %RBP_val.30, -24, !mcsema_real_eip !23
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !23
  %EAX.31 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.32 = load i32, i32* %EAX.31, !mcsema_real_eip !23
  %123 = ptrtoint i64* %122 to i64, !mcsema_real_eip !23
  %124 = inttoptr i64 %123 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.32, i32* %124, !mcsema_real_eip !23
  %125 = load i1, i1* %ZF, !mcsema_real_eip !24
  %126 = icmp eq i1 %125, true, !mcsema_real_eip !24
  br i1 %126, label %block_0x1c9, label %block_0x58, !mcsema_real_eip !24

block_0x58:                                       ; preds = %block_0x49
  br label %block_0x5d, !mcsema_real_eip !25

block_0x5d:                                       ; preds = %block_0x58
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !26
  %127 = add i64 %RBP_val.33, -12, !mcsema_real_eip !26
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !26
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !26
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !26
  %131 = load i32, i32* %130, !mcsema_real_eip !26
  %132 = zext i32 %131 to i64, !mcsema_real_eip !26
  store i64 %132, i64* %XAX, !mcsema_real_eip !26
  %EAX.34 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.35 = load i32, i32* %EAX.34, !mcsema_real_eip !27
  %133 = sub i32 %EAX_val.35, 6, !mcsema_real_eip !27
  %134 = xor i32 %133, %EAX_val.35, !mcsema_real_eip !27
  %135 = xor i32 %134, 6, !mcsema_real_eip !27
  %136 = and i32 %135, 16, !mcsema_real_eip !27
  %137 = icmp ne i32 %136, 0, !mcsema_real_eip !27
  store i1 %137, i1* %AF, !mcsema_real_eip !27
  %138 = trunc i32 %133 to i8, !mcsema_real_eip !27
  %139 = call i8 @llvm.ctpop.i8(i8 %138), !mcsema_real_eip !27
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !27
  %141 = xor i1 %140, true, !mcsema_real_eip !27
  store i1 %141, i1* %PF, !mcsema_real_eip !27
  %142 = icmp eq i32 %133, 0, !mcsema_real_eip !27
  store i1 %142, i1* %ZF, !mcsema_real_eip !27
  %143 = lshr i32 %133, 31, !mcsema_real_eip !27
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !27
  store i1 %144, i1* %SF, !mcsema_real_eip !27
  %145 = icmp ult i32 %EAX_val.35, 6, !mcsema_real_eip !27
  store i1 %145, i1* %CF, !mcsema_real_eip !27
  %146 = xor i32 %EAX_val.35, 6, !mcsema_real_eip !27
  %147 = xor i32 %EAX_val.35, %133, !mcsema_real_eip !27
  %148 = and i32 %146, %147, !mcsema_real_eip !27
  %149 = lshr i32 %148, 31, !mcsema_real_eip !27
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !27
  store i1 %150, i1* %OF, !mcsema_real_eip !27
  %151 = zext i32 %133 to i64, !mcsema_real_eip !27
  store i64 %151, i64* %XAX, !mcsema_real_eip !27
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !28
  %152 = add i64 %RBP_val.36, -28, !mcsema_real_eip !28
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !28
  %EAX.37 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.38 = load i32, i32* %EAX.37, !mcsema_real_eip !28
  %154 = ptrtoint i64* %153 to i64, !mcsema_real_eip !28
  %155 = inttoptr i64 %154 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.38, i32* %155, !mcsema_real_eip !28
  %156 = load i1, i1* %ZF, !mcsema_real_eip !29
  %157 = icmp eq i1 %156, true, !mcsema_real_eip !29
  br i1 %157, label %block_0x1d7, label %block_0x6c, !mcsema_real_eip !29

block_0x6c:                                       ; preds = %block_0x5d
  br label %block_0x71, !mcsema_real_eip !30

block_0x71:                                       ; preds = %block_0x6c
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !31
  %158 = add i64 %RBP_val.39, -12, !mcsema_real_eip !31
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !31
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !31
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !31
  %162 = load i32, i32* %161, !mcsema_real_eip !31
  %163 = zext i32 %162 to i64, !mcsema_real_eip !31
  store i64 %163, i64* %XAX, !mcsema_real_eip !31
  %EAX.40 = bitcast i64* %XAX to i32*, !mcsema_real_eip !32
  %EAX_val.41 = load i32, i32* %EAX.40, !mcsema_real_eip !32
  %164 = sub i32 %EAX_val.41, 12, !mcsema_real_eip !32
  %165 = xor i32 %164, %EAX_val.41, !mcsema_real_eip !32
  %166 = xor i32 %165, 12, !mcsema_real_eip !32
  %167 = and i32 %166, 16, !mcsema_real_eip !32
  %168 = icmp ne i32 %167, 0, !mcsema_real_eip !32
  store i1 %168, i1* %AF, !mcsema_real_eip !32
  %169 = trunc i32 %164 to i8, !mcsema_real_eip !32
  %170 = call i8 @llvm.ctpop.i8(i8 %169), !mcsema_real_eip !32
  %171 = trunc i8 %170 to i1, !mcsema_real_eip !32
  %172 = xor i1 %171, true, !mcsema_real_eip !32
  store i1 %172, i1* %PF, !mcsema_real_eip !32
  %173 = icmp eq i32 %164, 0, !mcsema_real_eip !32
  store i1 %173, i1* %ZF, !mcsema_real_eip !32
  %174 = lshr i32 %164, 31, !mcsema_real_eip !32
  %175 = trunc i32 %174 to i1, !mcsema_real_eip !32
  store i1 %175, i1* %SF, !mcsema_real_eip !32
  %176 = icmp ult i32 %EAX_val.41, 12, !mcsema_real_eip !32
  store i1 %176, i1* %CF, !mcsema_real_eip !32
  %177 = xor i32 %EAX_val.41, 12, !mcsema_real_eip !32
  %178 = xor i32 %EAX_val.41, %164, !mcsema_real_eip !32
  %179 = and i32 %177, %178, !mcsema_real_eip !32
  %180 = lshr i32 %179, 31, !mcsema_real_eip !32
  %181 = trunc i32 %180 to i1, !mcsema_real_eip !32
  store i1 %181, i1* %OF, !mcsema_real_eip !32
  %182 = zext i32 %164 to i64, !mcsema_real_eip !32
  store i64 %182, i64* %XAX, !mcsema_real_eip !32
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !33
  %183 = add i64 %RBP_val.42, -32, !mcsema_real_eip !33
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !33
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !33
  %185 = ptrtoint i64* %184 to i64, !mcsema_real_eip !33
  %186 = inttoptr i64 %185 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.44, i32* %186, !mcsema_real_eip !33
  %187 = load i1, i1* %ZF, !mcsema_real_eip !34
  %188 = icmp eq i1 %187, true, !mcsema_real_eip !34
  br i1 %188, label %block_0x1e5, label %block_0x80, !mcsema_real_eip !34

block_0x80:                                       ; preds = %block_0x71
  br label %block_0x85, !mcsema_real_eip !35

block_0x85:                                       ; preds = %block_0x80
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !36
  %189 = add i64 %RBP_val.45, -12, !mcsema_real_eip !36
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !36
  %191 = ptrtoint i64* %190 to i64, !mcsema_real_eip !36
  %192 = inttoptr i64 %191 to i32*, !mcsema_real_eip !36
  %193 = load i32, i32* %192, !mcsema_real_eip !36
  %194 = zext i32 %193 to i64, !mcsema_real_eip !36
  store i64 %194, i64* %XAX, !mcsema_real_eip !36
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !37
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !37
  %195 = sub i32 %EAX_val.47, 13, !mcsema_real_eip !37
  %196 = xor i32 %195, %EAX_val.47, !mcsema_real_eip !37
  %197 = xor i32 %196, 13, !mcsema_real_eip !37
  %198 = and i32 %197, 16, !mcsema_real_eip !37
  %199 = icmp ne i32 %198, 0, !mcsema_real_eip !37
  store i1 %199, i1* %AF, !mcsema_real_eip !37
  %200 = trunc i32 %195 to i8, !mcsema_real_eip !37
  %201 = call i8 @llvm.ctpop.i8(i8 %200), !mcsema_real_eip !37
  %202 = trunc i8 %201 to i1, !mcsema_real_eip !37
  %203 = xor i1 %202, true, !mcsema_real_eip !37
  store i1 %203, i1* %PF, !mcsema_real_eip !37
  %204 = icmp eq i32 %195, 0, !mcsema_real_eip !37
  store i1 %204, i1* %ZF, !mcsema_real_eip !37
  %205 = lshr i32 %195, 31, !mcsema_real_eip !37
  %206 = trunc i32 %205 to i1, !mcsema_real_eip !37
  store i1 %206, i1* %SF, !mcsema_real_eip !37
  %207 = icmp ult i32 %EAX_val.47, 13, !mcsema_real_eip !37
  store i1 %207, i1* %CF, !mcsema_real_eip !37
  %208 = xor i32 %EAX_val.47, 13, !mcsema_real_eip !37
  %209 = xor i32 %EAX_val.47, %195, !mcsema_real_eip !37
  %210 = and i32 %208, %209, !mcsema_real_eip !37
  %211 = lshr i32 %210, 31, !mcsema_real_eip !37
  %212 = trunc i32 %211 to i1, !mcsema_real_eip !37
  store i1 %212, i1* %OF, !mcsema_real_eip !37
  %213 = zext i32 %195 to i64, !mcsema_real_eip !37
  store i64 %213, i64* %XAX, !mcsema_real_eip !37
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !38
  %214 = add i64 %RBP_val.48, -36, !mcsema_real_eip !38
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !38
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !38
  %216 = ptrtoint i64* %215 to i64, !mcsema_real_eip !38
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.50, i32* %217, !mcsema_real_eip !38
  %218 = load i1, i1* %ZF, !mcsema_real_eip !39
  %219 = icmp eq i1 %218, true, !mcsema_real_eip !39
  br i1 %219, label %block_0x1f3, label %block_0x94, !mcsema_real_eip !39

block_0x94:                                       ; preds = %block_0x85
  br label %block_0x99, !mcsema_real_eip !40

block_0x99:                                       ; preds = %block_0x94
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !41
  %220 = add i64 %RBP_val.51, -12, !mcsema_real_eip !41
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !41
  %222 = ptrtoint i64* %221 to i64, !mcsema_real_eip !41
  %223 = inttoptr i64 %222 to i32*, !mcsema_real_eip !41
  %224 = load i32, i32* %223, !mcsema_real_eip !41
  %225 = zext i32 %224 to i64, !mcsema_real_eip !41
  store i64 %225, i64* %XAX, !mcsema_real_eip !41
  %EAX.52 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.53 = load i32, i32* %EAX.52, !mcsema_real_eip !42
  %226 = sub i32 %EAX_val.53, 19, !mcsema_real_eip !42
  %227 = xor i32 %226, %EAX_val.53, !mcsema_real_eip !42
  %228 = xor i32 %227, 19, !mcsema_real_eip !42
  %229 = and i32 %228, 16, !mcsema_real_eip !42
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !42
  store i1 %230, i1* %AF, !mcsema_real_eip !42
  %231 = trunc i32 %226 to i8, !mcsema_real_eip !42
  %232 = call i8 @llvm.ctpop.i8(i8 %231), !mcsema_real_eip !42
  %233 = trunc i8 %232 to i1, !mcsema_real_eip !42
  %234 = xor i1 %233, true, !mcsema_real_eip !42
  store i1 %234, i1* %PF, !mcsema_real_eip !42
  %235 = icmp eq i32 %226, 0, !mcsema_real_eip !42
  store i1 %235, i1* %ZF, !mcsema_real_eip !42
  %236 = lshr i32 %226, 31, !mcsema_real_eip !42
  %237 = trunc i32 %236 to i1, !mcsema_real_eip !42
  store i1 %237, i1* %SF, !mcsema_real_eip !42
  %238 = icmp ult i32 %EAX_val.53, 19, !mcsema_real_eip !42
  store i1 %238, i1* %CF, !mcsema_real_eip !42
  %239 = xor i32 %EAX_val.53, 19, !mcsema_real_eip !42
  %240 = xor i32 %EAX_val.53, %226, !mcsema_real_eip !42
  %241 = and i32 %239, %240, !mcsema_real_eip !42
  %242 = lshr i32 %241, 31, !mcsema_real_eip !42
  %243 = trunc i32 %242 to i1, !mcsema_real_eip !42
  store i1 %243, i1* %OF, !mcsema_real_eip !42
  %244 = zext i32 %226 to i64, !mcsema_real_eip !42
  store i64 %244, i64* %XAX, !mcsema_real_eip !42
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !43
  %245 = add i64 %RBP_val.54, -40, !mcsema_real_eip !43
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !43
  %EAX.55 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.56 = load i32, i32* %EAX.55, !mcsema_real_eip !43
  %247 = ptrtoint i64* %246 to i64, !mcsema_real_eip !43
  %248 = inttoptr i64 %247 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.56, i32* %248, !mcsema_real_eip !43
  %249 = load i1, i1* %ZF, !mcsema_real_eip !44
  %250 = icmp eq i1 %249, true, !mcsema_real_eip !44
  br i1 %250, label %block_0x201, label %block_0xa8, !mcsema_real_eip !44

block_0xa8:                                       ; preds = %block_0x99
  br label %block_0xad, !mcsema_real_eip !45

block_0xad:                                       ; preds = %block_0xa8
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !46
  %251 = add i64 %RBP_val.57, -12, !mcsema_real_eip !46
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !46
  %253 = ptrtoint i64* %252 to i64, !mcsema_real_eip !46
  %254 = inttoptr i64 %253 to i32*, !mcsema_real_eip !46
  %255 = load i32, i32* %254, !mcsema_real_eip !46
  %256 = zext i32 %255 to i64, !mcsema_real_eip !46
  store i64 %256, i64* %XAX, !mcsema_real_eip !46
  %EAX.58 = bitcast i64* %XAX to i32*, !mcsema_real_eip !47
  %EAX_val.59 = load i32, i32* %EAX.58, !mcsema_real_eip !47
  %257 = sub i32 %EAX_val.59, 255, !mcsema_real_eip !47
  %258 = xor i32 %257, %EAX_val.59, !mcsema_real_eip !47
  %259 = xor i32 %258, 255, !mcsema_real_eip !47
  %260 = and i32 %259, 16, !mcsema_real_eip !47
  %261 = icmp ne i32 %260, 0, !mcsema_real_eip !47
  store i1 %261, i1* %AF, !mcsema_real_eip !47
  %262 = trunc i32 %257 to i8, !mcsema_real_eip !47
  %263 = call i8 @llvm.ctpop.i8(i8 %262), !mcsema_real_eip !47
  %264 = trunc i8 %263 to i1, !mcsema_real_eip !47
  %265 = xor i1 %264, true, !mcsema_real_eip !47
  store i1 %265, i1* %PF, !mcsema_real_eip !47
  %266 = icmp eq i32 %257, 0, !mcsema_real_eip !47
  store i1 %266, i1* %ZF, !mcsema_real_eip !47
  %267 = lshr i32 %257, 31, !mcsema_real_eip !47
  %268 = trunc i32 %267 to i1, !mcsema_real_eip !47
  store i1 %268, i1* %SF, !mcsema_real_eip !47
  %269 = icmp ult i32 %EAX_val.59, 255, !mcsema_real_eip !47
  store i1 %269, i1* %CF, !mcsema_real_eip !47
  %270 = xor i32 %EAX_val.59, 255, !mcsema_real_eip !47
  %271 = xor i32 %EAX_val.59, %257, !mcsema_real_eip !47
  %272 = and i32 %270, %271, !mcsema_real_eip !47
  %273 = lshr i32 %272, 31, !mcsema_real_eip !47
  %274 = trunc i32 %273 to i1, !mcsema_real_eip !47
  store i1 %274, i1* %OF, !mcsema_real_eip !47
  %275 = zext i32 %257 to i64, !mcsema_real_eip !47
  store i64 %275, i64* %XAX, !mcsema_real_eip !47
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !48
  %276 = add i64 %RBP_val.60, -44, !mcsema_real_eip !48
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !48
  %EAX.61 = bitcast i64* %XAX to i32*, !mcsema_real_eip !48
  %EAX_val.62 = load i32, i32* %EAX.61, !mcsema_real_eip !48
  %278 = ptrtoint i64* %277 to i64, !mcsema_real_eip !48
  %279 = inttoptr i64 %278 to i32*, !mcsema_real_eip !48
  store i32 %EAX_val.62, i32* %279, !mcsema_real_eip !48
  %280 = load i1, i1* %ZF, !mcsema_real_eip !49
  %281 = icmp eq i1 %280, true, !mcsema_real_eip !49
  br i1 %281, label %block_0x20f, label %block_0xbe, !mcsema_real_eip !49

block_0xbe:                                       ; preds = %block_0xad
  br label %block_0xc3, !mcsema_real_eip !50

block_0xc3:                                       ; preds = %block_0xbe
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !51
  %282 = add i64 %RBP_val.63, -12, !mcsema_real_eip !51
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !51
  %284 = ptrtoint i64* %283 to i64, !mcsema_real_eip !51
  %285 = inttoptr i64 %284 to i32*, !mcsema_real_eip !51
  %286 = load i32, i32* %285, !mcsema_real_eip !51
  %287 = zext i32 %286 to i64, !mcsema_real_eip !51
  store i64 %287, i64* %XAX, !mcsema_real_eip !51
  %EAX.64 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.65 = load i32, i32* %EAX.64, !mcsema_real_eip !52
  %288 = sub i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  %289 = xor i32 %288, %EAX_val.65, !mcsema_real_eip !52
  %290 = xor i32 %289, 74633, !mcsema_real_eip !52
  %291 = and i32 %290, 16, !mcsema_real_eip !52
  %292 = icmp ne i32 %291, 0, !mcsema_real_eip !52
  store i1 %292, i1* %AF, !mcsema_real_eip !52
  %293 = trunc i32 %288 to i8, !mcsema_real_eip !52
  %294 = call i8 @llvm.ctpop.i8(i8 %293), !mcsema_real_eip !52
  %295 = trunc i8 %294 to i1, !mcsema_real_eip !52
  %296 = xor i1 %295, true, !mcsema_real_eip !52
  store i1 %296, i1* %PF, !mcsema_real_eip !52
  %297 = icmp eq i32 %288, 0, !mcsema_real_eip !52
  store i1 %297, i1* %ZF, !mcsema_real_eip !52
  %298 = lshr i32 %288, 31, !mcsema_real_eip !52
  %299 = trunc i32 %298 to i1, !mcsema_real_eip !52
  store i1 %299, i1* %SF, !mcsema_real_eip !52
  %300 = icmp ult i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  store i1 %300, i1* %CF, !mcsema_real_eip !52
  %301 = xor i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  %302 = xor i32 %EAX_val.65, %288, !mcsema_real_eip !52
  %303 = and i32 %301, %302, !mcsema_real_eip !52
  %304 = lshr i32 %303, 31, !mcsema_real_eip !52
  %305 = trunc i32 %304 to i1, !mcsema_real_eip !52
  store i1 %305, i1* %OF, !mcsema_real_eip !52
  %306 = zext i32 %288 to i64, !mcsema_real_eip !52
  store i64 %306, i64* %XAX, !mcsema_real_eip !52
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !53
  %307 = add i64 %RBP_val.66, -48, !mcsema_real_eip !53
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !53
  %EAX.67 = bitcast i64* %XAX to i32*, !mcsema_real_eip !53
  %EAX_val.68 = load i32, i32* %EAX.67, !mcsema_real_eip !53
  %309 = ptrtoint i64* %308 to i64, !mcsema_real_eip !53
  %310 = inttoptr i64 %309 to i32*, !mcsema_real_eip !53
  store i32 %EAX_val.68, i32* %310, !mcsema_real_eip !53
  %311 = load i1, i1* %ZF, !mcsema_real_eip !54
  %312 = icmp eq i1 %311, true, !mcsema_real_eip !54
  br i1 %312, label %block_0x21f, label %block_0xd4, !mcsema_real_eip !54

block_0xd4:                                       ; preds = %block_0xc3
  br label %block_0xd9, !mcsema_real_eip !55

block_0xd9:                                       ; preds = %block_0xd4
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !56
  %313 = add i64 %RBP_val.69, -12, !mcsema_real_eip !56
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !56
  %315 = ptrtoint i64* %314 to i64, !mcsema_real_eip !56
  %316 = inttoptr i64 %315 to i32*, !mcsema_real_eip !56
  %317 = load i32, i32* %316, !mcsema_real_eip !56
  %318 = zext i32 %317 to i64, !mcsema_real_eip !56
  store i64 %318, i64* %XAX, !mcsema_real_eip !56
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !57
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !57
  %319 = sub i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  %320 = xor i32 %319, %EAX_val.71, !mcsema_real_eip !57
  %321 = xor i32 %320, 74634, !mcsema_real_eip !57
  %322 = and i32 %321, 16, !mcsema_real_eip !57
  %323 = icmp ne i32 %322, 0, !mcsema_real_eip !57
  store i1 %323, i1* %AF, !mcsema_real_eip !57
  %324 = trunc i32 %319 to i8, !mcsema_real_eip !57
  %325 = call i8 @llvm.ctpop.i8(i8 %324), !mcsema_real_eip !57
  %326 = trunc i8 %325 to i1, !mcsema_real_eip !57
  %327 = xor i1 %326, true, !mcsema_real_eip !57
  store i1 %327, i1* %PF, !mcsema_real_eip !57
  %328 = icmp eq i32 %319, 0, !mcsema_real_eip !57
  store i1 %328, i1* %ZF, !mcsema_real_eip !57
  %329 = lshr i32 %319, 31, !mcsema_real_eip !57
  %330 = trunc i32 %329 to i1, !mcsema_real_eip !57
  store i1 %330, i1* %SF, !mcsema_real_eip !57
  %331 = icmp ult i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  store i1 %331, i1* %CF, !mcsema_real_eip !57
  %332 = xor i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  %333 = xor i32 %EAX_val.71, %319, !mcsema_real_eip !57
  %334 = and i32 %332, %333, !mcsema_real_eip !57
  %335 = lshr i32 %334, 31, !mcsema_real_eip !57
  %336 = trunc i32 %335 to i1, !mcsema_real_eip !57
  store i1 %336, i1* %OF, !mcsema_real_eip !57
  %337 = zext i32 %319 to i64, !mcsema_real_eip !57
  store i64 %337, i64* %XAX, !mcsema_real_eip !57
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !58
  %338 = add i64 %RBP_val.72, -52, !mcsema_real_eip !58
  %339 = inttoptr i64 %338 to i64*, !mcsema_real_eip !58
  %EAX.73 = bitcast i64* %XAX to i32*, !mcsema_real_eip !58
  %EAX_val.74 = load i32, i32* %EAX.73, !mcsema_real_eip !58
  %340 = ptrtoint i64* %339 to i64, !mcsema_real_eip !58
  %341 = inttoptr i64 %340 to i32*, !mcsema_real_eip !58
  store i32 %EAX_val.74, i32* %341, !mcsema_real_eip !58
  %342 = load i1, i1* %ZF, !mcsema_real_eip !59
  %343 = icmp eq i1 %342, true, !mcsema_real_eip !59
  br i1 %343, label %block_0x22f, label %block_0xea, !mcsema_real_eip !59

block_0xea:                                       ; preds = %block_0xd9
  br label %block_0xef, !mcsema_real_eip !60

block_0xef:                                       ; preds = %block_0xea
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !61
  %344 = add i64 %RBP_val.75, -12, !mcsema_real_eip !61
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !61
  %346 = ptrtoint i64* %345 to i64, !mcsema_real_eip !61
  %347 = inttoptr i64 %346 to i32*, !mcsema_real_eip !61
  %348 = load i32, i32* %347, !mcsema_real_eip !61
  %349 = zext i32 %348 to i64, !mcsema_real_eip !61
  store i64 %349, i64* %XAX, !mcsema_real_eip !61
  %EAX.76 = bitcast i64* %XAX to i32*, !mcsema_real_eip !62
  %EAX_val.77 = load i32, i32* %EAX.76, !mcsema_real_eip !62
  %350 = sub i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  %351 = xor i32 %350, %EAX_val.77, !mcsema_real_eip !62
  %352 = xor i32 %351, 74635, !mcsema_real_eip !62
  %353 = and i32 %352, 16, !mcsema_real_eip !62
  %354 = icmp ne i32 %353, 0, !mcsema_real_eip !62
  store i1 %354, i1* %AF, !mcsema_real_eip !62
  %355 = trunc i32 %350 to i8, !mcsema_real_eip !62
  %356 = call i8 @llvm.ctpop.i8(i8 %355), !mcsema_real_eip !62
  %357 = trunc i8 %356 to i1, !mcsema_real_eip !62
  %358 = xor i1 %357, true, !mcsema_real_eip !62
  store i1 %358, i1* %PF, !mcsema_real_eip !62
  %359 = icmp eq i32 %350, 0, !mcsema_real_eip !62
  store i1 %359, i1* %ZF, !mcsema_real_eip !62
  %360 = lshr i32 %350, 31, !mcsema_real_eip !62
  %361 = trunc i32 %360 to i1, !mcsema_real_eip !62
  store i1 %361, i1* %SF, !mcsema_real_eip !62
  %362 = icmp ult i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  store i1 %362, i1* %CF, !mcsema_real_eip !62
  %363 = xor i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  %364 = xor i32 %EAX_val.77, %350, !mcsema_real_eip !62
  %365 = and i32 %363, %364, !mcsema_real_eip !62
  %366 = lshr i32 %365, 31, !mcsema_real_eip !62
  %367 = trunc i32 %366 to i1, !mcsema_real_eip !62
  store i1 %367, i1* %OF, !mcsema_real_eip !62
  %368 = zext i32 %350 to i64, !mcsema_real_eip !62
  store i64 %368, i64* %XAX, !mcsema_real_eip !62
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !63
  %369 = add i64 %RBP_val.78, -56, !mcsema_real_eip !63
  %370 = inttoptr i64 %369 to i64*, !mcsema_real_eip !63
  %EAX.79 = bitcast i64* %XAX to i32*, !mcsema_real_eip !63
  %EAX_val.80 = load i32, i32* %EAX.79, !mcsema_real_eip !63
  %371 = ptrtoint i64* %370 to i64, !mcsema_real_eip !63
  %372 = inttoptr i64 %371 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.80, i32* %372, !mcsema_real_eip !63
  %373 = load i1, i1* %ZF, !mcsema_real_eip !64
  %374 = icmp eq i1 %373, true, !mcsema_real_eip !64
  br i1 %374, label %block_0x23f, label %block_0x100, !mcsema_real_eip !64

block_0x100:                                      ; preds = %block_0xef
  br label %block_0x105, !mcsema_real_eip !65

block_0x105:                                      ; preds = %block_0x100
  %RBP_val.81 = load i64, i64* %XBP, !mcsema_real_eip !66
  %375 = add i64 %RBP_val.81, -12, !mcsema_real_eip !66
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !66
  %377 = ptrtoint i64* %376 to i64, !mcsema_real_eip !66
  %378 = inttoptr i64 %377 to i32*, !mcsema_real_eip !66
  %379 = load i32, i32* %378, !mcsema_real_eip !66
  %380 = zext i32 %379 to i64, !mcsema_real_eip !66
  store i64 %380, i64* %XAX, !mcsema_real_eip !66
  %EAX.82 = bitcast i64* %XAX to i32*, !mcsema_real_eip !67
  %EAX_val.83 = load i32, i32* %EAX.82, !mcsema_real_eip !67
  %381 = sub i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  %382 = xor i32 %381, %EAX_val.83, !mcsema_real_eip !67
  %383 = xor i32 %382, 74636, !mcsema_real_eip !67
  %384 = and i32 %383, 16, !mcsema_real_eip !67
  %385 = icmp ne i32 %384, 0, !mcsema_real_eip !67
  store i1 %385, i1* %AF, !mcsema_real_eip !67
  %386 = trunc i32 %381 to i8, !mcsema_real_eip !67
  %387 = call i8 @llvm.ctpop.i8(i8 %386), !mcsema_real_eip !67
  %388 = trunc i8 %387 to i1, !mcsema_real_eip !67
  %389 = xor i1 %388, true, !mcsema_real_eip !67
  store i1 %389, i1* %PF, !mcsema_real_eip !67
  %390 = icmp eq i32 %381, 0, !mcsema_real_eip !67
  store i1 %390, i1* %ZF, !mcsema_real_eip !67
  %391 = lshr i32 %381, 31, !mcsema_real_eip !67
  %392 = trunc i32 %391 to i1, !mcsema_real_eip !67
  store i1 %392, i1* %SF, !mcsema_real_eip !67
  %393 = icmp ult i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  store i1 %393, i1* %CF, !mcsema_real_eip !67
  %394 = xor i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  %395 = xor i32 %EAX_val.83, %381, !mcsema_real_eip !67
  %396 = and i32 %394, %395, !mcsema_real_eip !67
  %397 = lshr i32 %396, 31, !mcsema_real_eip !67
  %398 = trunc i32 %397 to i1, !mcsema_real_eip !67
  store i1 %398, i1* %OF, !mcsema_real_eip !67
  %399 = zext i32 %381 to i64, !mcsema_real_eip !67
  store i64 %399, i64* %XAX, !mcsema_real_eip !67
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !68
  %400 = add i64 %RBP_val.84, -60, !mcsema_real_eip !68
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !68
  %EAX.85 = bitcast i64* %XAX to i32*, !mcsema_real_eip !68
  %EAX_val.86 = load i32, i32* %EAX.85, !mcsema_real_eip !68
  %402 = ptrtoint i64* %401 to i64, !mcsema_real_eip !68
  %403 = inttoptr i64 %402 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.86, i32* %403, !mcsema_real_eip !68
  %404 = load i1, i1* %ZF, !mcsema_real_eip !69
  %405 = icmp eq i1 %404, true, !mcsema_real_eip !69
  br i1 %405, label %block_0x24f, label %block_0x116, !mcsema_real_eip !69

block_0x116:                                      ; preds = %block_0x105
  br label %block_0x11b, !mcsema_real_eip !70

block_0x11b:                                      ; preds = %block_0x116
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !71
  %406 = add i64 %RBP_val.87, -12, !mcsema_real_eip !71
  %407 = inttoptr i64 %406 to i64*, !mcsema_real_eip !71
  %408 = ptrtoint i64* %407 to i64, !mcsema_real_eip !71
  %409 = inttoptr i64 %408 to i32*, !mcsema_real_eip !71
  %410 = load i32, i32* %409, !mcsema_real_eip !71
  %411 = zext i32 %410 to i64, !mcsema_real_eip !71
  store i64 %411, i64* %XAX, !mcsema_real_eip !71
  %EAX.88 = bitcast i64* %XAX to i32*, !mcsema_real_eip !72
  %EAX_val.89 = load i32, i32* %EAX.88, !mcsema_real_eip !72
  %412 = sub i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  %413 = xor i32 %412, %EAX_val.89, !mcsema_real_eip !72
  %414 = xor i32 %413, 74637, !mcsema_real_eip !72
  %415 = and i32 %414, 16, !mcsema_real_eip !72
  %416 = icmp ne i32 %415, 0, !mcsema_real_eip !72
  store i1 %416, i1* %AF, !mcsema_real_eip !72
  %417 = trunc i32 %412 to i8, !mcsema_real_eip !72
  %418 = call i8 @llvm.ctpop.i8(i8 %417), !mcsema_real_eip !72
  %419 = trunc i8 %418 to i1, !mcsema_real_eip !72
  %420 = xor i1 %419, true, !mcsema_real_eip !72
  store i1 %420, i1* %PF, !mcsema_real_eip !72
  %421 = icmp eq i32 %412, 0, !mcsema_real_eip !72
  store i1 %421, i1* %ZF, !mcsema_real_eip !72
  %422 = lshr i32 %412, 31, !mcsema_real_eip !72
  %423 = trunc i32 %422 to i1, !mcsema_real_eip !72
  store i1 %423, i1* %SF, !mcsema_real_eip !72
  %424 = icmp ult i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  store i1 %424, i1* %CF, !mcsema_real_eip !72
  %425 = xor i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  %426 = xor i32 %EAX_val.89, %412, !mcsema_real_eip !72
  %427 = and i32 %425, %426, !mcsema_real_eip !72
  %428 = lshr i32 %427, 31, !mcsema_real_eip !72
  %429 = trunc i32 %428 to i1, !mcsema_real_eip !72
  store i1 %429, i1* %OF, !mcsema_real_eip !72
  %430 = zext i32 %412 to i64, !mcsema_real_eip !72
  store i64 %430, i64* %XAX, !mcsema_real_eip !72
  %RBP_val.90 = load i64, i64* %XBP, !mcsema_real_eip !73
  %431 = add i64 %RBP_val.90, -64, !mcsema_real_eip !73
  %432 = inttoptr i64 %431 to i64*, !mcsema_real_eip !73
  %EAX.91 = bitcast i64* %XAX to i32*, !mcsema_real_eip !73
  %EAX_val.92 = load i32, i32* %EAX.91, !mcsema_real_eip !73
  %433 = ptrtoint i64* %432 to i64, !mcsema_real_eip !73
  %434 = inttoptr i64 %433 to i32*, !mcsema_real_eip !73
  store i32 %EAX_val.92, i32* %434, !mcsema_real_eip !73
  %435 = load i1, i1* %ZF, !mcsema_real_eip !74
  %436 = icmp eq i1 %435, true, !mcsema_real_eip !74
  br i1 %436, label %block_0x25f, label %block_0x12c, !mcsema_real_eip !74

block_0x12c:                                      ; preds = %block_0x11b
  br label %block_0x131, !mcsema_real_eip !75

block_0x131:                                      ; preds = %block_0x12c
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !76
  %437 = add i64 %RBP_val.93, -12, !mcsema_real_eip !76
  %438 = inttoptr i64 %437 to i64*, !mcsema_real_eip !76
  %439 = ptrtoint i64* %438 to i64, !mcsema_real_eip !76
  %440 = inttoptr i64 %439 to i32*, !mcsema_real_eip !76
  %441 = load i32, i32* %440, !mcsema_real_eip !76
  %442 = zext i32 %441 to i64, !mcsema_real_eip !76
  store i64 %442, i64* %XAX, !mcsema_real_eip !76
  %EAX.94 = bitcast i64* %XAX to i32*, !mcsema_real_eip !77
  %EAX_val.95 = load i32, i32* %EAX.94, !mcsema_real_eip !77
  %443 = sub i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  %444 = xor i32 %443, %EAX_val.95, !mcsema_real_eip !77
  %445 = xor i32 %444, 74639, !mcsema_real_eip !77
  %446 = and i32 %445, 16, !mcsema_real_eip !77
  %447 = icmp ne i32 %446, 0, !mcsema_real_eip !77
  store i1 %447, i1* %AF, !mcsema_real_eip !77
  %448 = trunc i32 %443 to i8, !mcsema_real_eip !77
  %449 = call i8 @llvm.ctpop.i8(i8 %448), !mcsema_real_eip !77
  %450 = trunc i8 %449 to i1, !mcsema_real_eip !77
  %451 = xor i1 %450, true, !mcsema_real_eip !77
  store i1 %451, i1* %PF, !mcsema_real_eip !77
  %452 = icmp eq i32 %443, 0, !mcsema_real_eip !77
  store i1 %452, i1* %ZF, !mcsema_real_eip !77
  %453 = lshr i32 %443, 31, !mcsema_real_eip !77
  %454 = trunc i32 %453 to i1, !mcsema_real_eip !77
  store i1 %454, i1* %SF, !mcsema_real_eip !77
  %455 = icmp ult i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  store i1 %455, i1* %CF, !mcsema_real_eip !77
  %456 = xor i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  %457 = xor i32 %EAX_val.95, %443, !mcsema_real_eip !77
  %458 = and i32 %456, %457, !mcsema_real_eip !77
  %459 = lshr i32 %458, 31, !mcsema_real_eip !77
  %460 = trunc i32 %459 to i1, !mcsema_real_eip !77
  store i1 %460, i1* %OF, !mcsema_real_eip !77
  %461 = zext i32 %443 to i64, !mcsema_real_eip !77
  store i64 %461, i64* %XAX, !mcsema_real_eip !77
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !78
  %462 = add i64 %RBP_val.96, -68, !mcsema_real_eip !78
  %463 = inttoptr i64 %462 to i64*, !mcsema_real_eip !78
  %EAX.97 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.98 = load i32, i32* %EAX.97, !mcsema_real_eip !78
  %464 = ptrtoint i64* %463 to i64, !mcsema_real_eip !78
  %465 = inttoptr i64 %464 to i32*, !mcsema_real_eip !78
  store i32 %EAX_val.98, i32* %465, !mcsema_real_eip !78
  %466 = load i1, i1* %ZF, !mcsema_real_eip !79
  %467 = icmp eq i1 %466, true, !mcsema_real_eip !79
  br i1 %467, label %block_0x26f, label %block_0x142, !mcsema_real_eip !79

block_0x142:                                      ; preds = %block_0x131
  br label %block_0x147, !mcsema_real_eip !80

block_0x147:                                      ; preds = %block_0x142
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !81
  %468 = add i64 %RBP_val.99, -12, !mcsema_real_eip !81
  %469 = inttoptr i64 %468 to i64*, !mcsema_real_eip !81
  %470 = ptrtoint i64* %469 to i64, !mcsema_real_eip !81
  %471 = inttoptr i64 %470 to i32*, !mcsema_real_eip !81
  %472 = load i32, i32* %471, !mcsema_real_eip !81
  %473 = zext i32 %472 to i64, !mcsema_real_eip !81
  store i64 %473, i64* %XAX, !mcsema_real_eip !81
  %EAX.100 = bitcast i64* %XAX to i32*, !mcsema_real_eip !82
  %EAX_val.101 = load i32, i32* %EAX.100, !mcsema_real_eip !82
  %474 = sub i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  %475 = xor i32 %474, %EAX_val.101, !mcsema_real_eip !82
  %476 = xor i32 %475, 74640, !mcsema_real_eip !82
  %477 = and i32 %476, 16, !mcsema_real_eip !82
  %478 = icmp ne i32 %477, 0, !mcsema_real_eip !82
  store i1 %478, i1* %AF, !mcsema_real_eip !82
  %479 = trunc i32 %474 to i8, !mcsema_real_eip !82
  %480 = call i8 @llvm.ctpop.i8(i8 %479), !mcsema_real_eip !82
  %481 = trunc i8 %480 to i1, !mcsema_real_eip !82
  %482 = xor i1 %481, true, !mcsema_real_eip !82
  store i1 %482, i1* %PF, !mcsema_real_eip !82
  %483 = icmp eq i32 %474, 0, !mcsema_real_eip !82
  store i1 %483, i1* %ZF, !mcsema_real_eip !82
  %484 = lshr i32 %474, 31, !mcsema_real_eip !82
  %485 = trunc i32 %484 to i1, !mcsema_real_eip !82
  store i1 %485, i1* %SF, !mcsema_real_eip !82
  %486 = icmp ult i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  store i1 %486, i1* %CF, !mcsema_real_eip !82
  %487 = xor i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  %488 = xor i32 %EAX_val.101, %474, !mcsema_real_eip !82
  %489 = and i32 %487, %488, !mcsema_real_eip !82
  %490 = lshr i32 %489, 31, !mcsema_real_eip !82
  %491 = trunc i32 %490 to i1, !mcsema_real_eip !82
  store i1 %491, i1* %OF, !mcsema_real_eip !82
  %492 = zext i32 %474 to i64, !mcsema_real_eip !82
  store i64 %492, i64* %XAX, !mcsema_real_eip !82
  %RBP_val.102 = load i64, i64* %XBP, !mcsema_real_eip !83
  %493 = add i64 %RBP_val.102, -72, !mcsema_real_eip !83
  %494 = inttoptr i64 %493 to i64*, !mcsema_real_eip !83
  %EAX.103 = bitcast i64* %XAX to i32*, !mcsema_real_eip !83
  %EAX_val.104 = load i32, i32* %EAX.103, !mcsema_real_eip !83
  %495 = ptrtoint i64* %494 to i64, !mcsema_real_eip !83
  %496 = inttoptr i64 %495 to i32*, !mcsema_real_eip !83
  store i32 %EAX_val.104, i32* %496, !mcsema_real_eip !83
  %497 = load i1, i1* %ZF, !mcsema_real_eip !84
  %498 = icmp eq i1 %497, true, !mcsema_real_eip !84
  br i1 %498, label %block_0x27f, label %block_0x158, !mcsema_real_eip !84

block_0x158:                                      ; preds = %block_0x147
  br label %block_0x15d, !mcsema_real_eip !85

block_0x15d:                                      ; preds = %block_0x158
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !86
  %499 = add i64 %RBP_val.105, -12, !mcsema_real_eip !86
  %500 = inttoptr i64 %499 to i64*, !mcsema_real_eip !86
  %501 = ptrtoint i64* %500 to i64, !mcsema_real_eip !86
  %502 = inttoptr i64 %501 to i32*, !mcsema_real_eip !86
  %503 = load i32, i32* %502, !mcsema_real_eip !86
  %504 = zext i32 %503 to i64, !mcsema_real_eip !86
  store i64 %504, i64* %XAX, !mcsema_real_eip !86
  %EAX.106 = bitcast i64* %XAX to i32*, !mcsema_real_eip !87
  %EAX_val.107 = load i32, i32* %EAX.106, !mcsema_real_eip !87
  %505 = sub i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  %506 = xor i32 %505, %EAX_val.107, !mcsema_real_eip !87
  %507 = xor i32 %506, 74641, !mcsema_real_eip !87
  %508 = and i32 %507, 16, !mcsema_real_eip !87
  %509 = icmp ne i32 %508, 0, !mcsema_real_eip !87
  store i1 %509, i1* %AF, !mcsema_real_eip !87
  %510 = trunc i32 %505 to i8, !mcsema_real_eip !87
  %511 = call i8 @llvm.ctpop.i8(i8 %510), !mcsema_real_eip !87
  %512 = trunc i8 %511 to i1, !mcsema_real_eip !87
  %513 = xor i1 %512, true, !mcsema_real_eip !87
  store i1 %513, i1* %PF, !mcsema_real_eip !87
  %514 = icmp eq i32 %505, 0, !mcsema_real_eip !87
  store i1 %514, i1* %ZF, !mcsema_real_eip !87
  %515 = lshr i32 %505, 31, !mcsema_real_eip !87
  %516 = trunc i32 %515 to i1, !mcsema_real_eip !87
  store i1 %516, i1* %SF, !mcsema_real_eip !87
  %517 = icmp ult i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  store i1 %517, i1* %CF, !mcsema_real_eip !87
  %518 = xor i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  %519 = xor i32 %EAX_val.107, %505, !mcsema_real_eip !87
  %520 = and i32 %518, %519, !mcsema_real_eip !87
  %521 = lshr i32 %520, 31, !mcsema_real_eip !87
  %522 = trunc i32 %521 to i1, !mcsema_real_eip !87
  store i1 %522, i1* %OF, !mcsema_real_eip !87
  %523 = zext i32 %505 to i64, !mcsema_real_eip !87
  store i64 %523, i64* %XAX, !mcsema_real_eip !87
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !88
  %524 = add i64 %RBP_val.108, -76, !mcsema_real_eip !88
  %525 = inttoptr i64 %524 to i64*, !mcsema_real_eip !88
  %EAX.109 = bitcast i64* %XAX to i32*, !mcsema_real_eip !88
  %EAX_val.110 = load i32, i32* %EAX.109, !mcsema_real_eip !88
  %526 = ptrtoint i64* %525 to i64, !mcsema_real_eip !88
  %527 = inttoptr i64 %526 to i32*, !mcsema_real_eip !88
  store i32 %EAX_val.110, i32* %527, !mcsema_real_eip !88
  %528 = load i1, i1* %ZF, !mcsema_real_eip !89
  %529 = icmp eq i1 %528, true, !mcsema_real_eip !89
  br i1 %529, label %block_0x28f, label %block_0x16e, !mcsema_real_eip !89

block_0x16e:                                      ; preds = %block_0x15d
  br label %block_0x173, !mcsema_real_eip !90

block_0x173:                                      ; preds = %block_0x16e
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !91
  %530 = add i64 %RBP_val.111, -12, !mcsema_real_eip !91
  %531 = inttoptr i64 %530 to i64*, !mcsema_real_eip !91
  %532 = ptrtoint i64* %531 to i64, !mcsema_real_eip !91
  %533 = inttoptr i64 %532 to i32*, !mcsema_real_eip !91
  %534 = load i32, i32* %533, !mcsema_real_eip !91
  %535 = zext i32 %534 to i64, !mcsema_real_eip !91
  store i64 %535, i64* %XAX, !mcsema_real_eip !91
  %EAX.112 = bitcast i64* %XAX to i32*, !mcsema_real_eip !92
  %EAX_val.113 = load i32, i32* %EAX.112, !mcsema_real_eip !92
  %536 = sub i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  %537 = xor i32 %536, %EAX_val.113, !mcsema_real_eip !92
  %538 = xor i32 %537, 74642, !mcsema_real_eip !92
  %539 = and i32 %538, 16, !mcsema_real_eip !92
  %540 = icmp ne i32 %539, 0, !mcsema_real_eip !92
  store i1 %540, i1* %AF, !mcsema_real_eip !92
  %541 = trunc i32 %536 to i8, !mcsema_real_eip !92
  %542 = call i8 @llvm.ctpop.i8(i8 %541), !mcsema_real_eip !92
  %543 = trunc i8 %542 to i1, !mcsema_real_eip !92
  %544 = xor i1 %543, true, !mcsema_real_eip !92
  store i1 %544, i1* %PF, !mcsema_real_eip !92
  %545 = icmp eq i32 %536, 0, !mcsema_real_eip !92
  store i1 %545, i1* %ZF, !mcsema_real_eip !92
  %546 = lshr i32 %536, 31, !mcsema_real_eip !92
  %547 = trunc i32 %546 to i1, !mcsema_real_eip !92
  store i1 %547, i1* %SF, !mcsema_real_eip !92
  %548 = icmp ult i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  store i1 %548, i1* %CF, !mcsema_real_eip !92
  %549 = xor i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  %550 = xor i32 %EAX_val.113, %536, !mcsema_real_eip !92
  %551 = and i32 %549, %550, !mcsema_real_eip !92
  %552 = lshr i32 %551, 31, !mcsema_real_eip !92
  %553 = trunc i32 %552 to i1, !mcsema_real_eip !92
  store i1 %553, i1* %OF, !mcsema_real_eip !92
  %554 = zext i32 %536 to i64, !mcsema_real_eip !92
  store i64 %554, i64* %XAX, !mcsema_real_eip !92
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !93
  %555 = add i64 %RBP_val.114, -80, !mcsema_real_eip !93
  %556 = inttoptr i64 %555 to i64*, !mcsema_real_eip !93
  %EAX.115 = bitcast i64* %XAX to i32*, !mcsema_real_eip !93
  %EAX_val.116 = load i32, i32* %EAX.115, !mcsema_real_eip !93
  %557 = ptrtoint i64* %556 to i64, !mcsema_real_eip !93
  %558 = inttoptr i64 %557 to i32*, !mcsema_real_eip !93
  store i32 %EAX_val.116, i32* %558, !mcsema_real_eip !93
  %559 = load i1, i1* %ZF, !mcsema_real_eip !94
  %560 = icmp eq i1 %559, true, !mcsema_real_eip !94
  br i1 %560, label %block_0x29f, label %block_0x184, !mcsema_real_eip !94

block_0x184:                                      ; preds = %block_0x173
  br label %block_0x189, !mcsema_real_eip !95

block_0x189:                                      ; preds = %block_0x184
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !96
  %561 = add i64 %RBP_val.117, -12, !mcsema_real_eip !96
  %562 = inttoptr i64 %561 to i64*, !mcsema_real_eip !96
  %563 = ptrtoint i64* %562 to i64, !mcsema_real_eip !96
  %564 = inttoptr i64 %563 to i32*, !mcsema_real_eip !96
  %565 = load i32, i32* %564, !mcsema_real_eip !96
  %566 = zext i32 %565 to i64, !mcsema_real_eip !96
  store i64 %566, i64* %XAX, !mcsema_real_eip !96
  %EAX.118 = bitcast i64* %XAX to i32*, !mcsema_real_eip !97
  %EAX_val.119 = load i32, i32* %EAX.118, !mcsema_real_eip !97
  %567 = sub i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  %568 = xor i32 %567, %EAX_val.119, !mcsema_real_eip !97
  %569 = xor i32 %568, 74643, !mcsema_real_eip !97
  %570 = and i32 %569, 16, !mcsema_real_eip !97
  %571 = icmp ne i32 %570, 0, !mcsema_real_eip !97
  store i1 %571, i1* %AF, !mcsema_real_eip !97
  %572 = trunc i32 %567 to i8, !mcsema_real_eip !97
  %573 = call i8 @llvm.ctpop.i8(i8 %572), !mcsema_real_eip !97
  %574 = trunc i8 %573 to i1, !mcsema_real_eip !97
  %575 = xor i1 %574, true, !mcsema_real_eip !97
  store i1 %575, i1* %PF, !mcsema_real_eip !97
  %576 = icmp eq i32 %567, 0, !mcsema_real_eip !97
  store i1 %576, i1* %ZF, !mcsema_real_eip !97
  %577 = lshr i32 %567, 31, !mcsema_real_eip !97
  %578 = trunc i32 %577 to i1, !mcsema_real_eip !97
  store i1 %578, i1* %SF, !mcsema_real_eip !97
  %579 = icmp ult i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  store i1 %579, i1* %CF, !mcsema_real_eip !97
  %580 = xor i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  %581 = xor i32 %EAX_val.119, %567, !mcsema_real_eip !97
  %582 = and i32 %580, %581, !mcsema_real_eip !97
  %583 = lshr i32 %582, 31, !mcsema_real_eip !97
  %584 = trunc i32 %583 to i1, !mcsema_real_eip !97
  store i1 %584, i1* %OF, !mcsema_real_eip !97
  %585 = zext i32 %567 to i64, !mcsema_real_eip !97
  store i64 %585, i64* %XAX, !mcsema_real_eip !97
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !98
  %586 = add i64 %RBP_val.120, -84, !mcsema_real_eip !98
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !98
  %EAX.121 = bitcast i64* %XAX to i32*, !mcsema_real_eip !98
  %EAX_val.122 = load i32, i32* %EAX.121, !mcsema_real_eip !98
  %588 = ptrtoint i64* %587 to i64, !mcsema_real_eip !98
  %589 = inttoptr i64 %588 to i32*, !mcsema_real_eip !98
  store i32 %EAX_val.122, i32* %589, !mcsema_real_eip !98
  %590 = load i1, i1* %ZF, !mcsema_real_eip !99
  %591 = icmp eq i1 %590, true, !mcsema_real_eip !99
  br i1 %591, label %block_0x2af, label %block_0x19a, !mcsema_real_eip !99

block_0x19a:                                      ; preds = %block_0x189
  br label %block_0x2bf, !mcsema_real_eip !100

block_0x19f:                                      ; preds = %block_0x0
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !101
  %592 = add i64 %RBP_val.123, -8, !mcsema_real_eip !101
  %593 = inttoptr i64 %592 to i64*, !mcsema_real_eip !101
  %594 = ptrtoint i64* %593 to i64, !mcsema_real_eip !101
  %595 = inttoptr i64 %594 to i32*, !mcsema_real_eip !101
  %596 = load i32, i32* %595, !mcsema_real_eip !101
  %597 = zext i32 %596 to i64, !mcsema_real_eip !101
  store i64 %597, i64* %XAX, !mcsema_real_eip !101
  %EAX.124 = bitcast i64* %XAX to i32*, !mcsema_real_eip !102
  %EAX_val.125 = load i32, i32* %EAX.124, !mcsema_real_eip !102
  %598 = add i32 0, %EAX_val.125, !mcsema_real_eip !102
  %599 = xor i32 %598, %EAX_val.125, !mcsema_real_eip !102
  %600 = xor i32 %599, 0, !mcsema_real_eip !102
  %601 = and i32 %600, 16, !mcsema_real_eip !102
  %602 = icmp ne i32 %601, 0, !mcsema_real_eip !102
  store i1 %602, i1* %AF, !mcsema_real_eip !102
  %603 = lshr i32 %598, 31, !mcsema_real_eip !102
  %604 = trunc i32 %603 to i1, !mcsema_real_eip !102
  store i1 %604, i1* %SF, !mcsema_real_eip !102
  %605 = icmp eq i32 %598, 0, !mcsema_real_eip !102
  store i1 %605, i1* %ZF, !mcsema_real_eip !102
  %606 = xor i32 %EAX_val.125, 0, !mcsema_real_eip !102
  %607 = xor i32 %606, -1, !mcsema_real_eip !102
  %608 = xor i32 %EAX_val.125, %598, !mcsema_real_eip !102
  %609 = and i32 %607, %608, !mcsema_real_eip !102
  %610 = lshr i32 %609, 31, !mcsema_real_eip !102
  %611 = and i32 %610, 1, !mcsema_real_eip !102
  %612 = trunc i32 %611 to i1, !mcsema_real_eip !102
  store i1 %612, i1* %OF, !mcsema_real_eip !102
  %613 = trunc i32 %598 to i8, !mcsema_real_eip !102
  %614 = call i8 @llvm.ctpop.i8(i8 %613), !mcsema_real_eip !102
  %615 = trunc i8 %614 to i1, !mcsema_real_eip !102
  %616 = xor i1 %615, true, !mcsema_real_eip !102
  store i1 %616, i1* %PF, !mcsema_real_eip !102
  %617 = icmp ult i32 %598, %EAX_val.125, !mcsema_real_eip !102
  store i1 %617, i1* %CF, !mcsema_real_eip !102
  %618 = zext i32 %598 to i64, !mcsema_real_eip !102
  store i64 %618, i64* %XAX, !mcsema_real_eip !102
  %RBP_val.126 = load i64, i64* %XBP, !mcsema_real_eip !103
  %619 = add i64 %RBP_val.126, -8, !mcsema_real_eip !103
  %620 = inttoptr i64 %619 to i64*, !mcsema_real_eip !103
  %EAX.127 = bitcast i64* %XAX to i32*, !mcsema_real_eip !103
  %EAX_val.128 = load i32, i32* %EAX.127, !mcsema_real_eip !103
  %621 = ptrtoint i64* %620 to i64, !mcsema_real_eip !103
  %622 = inttoptr i64 %621 to i32*, !mcsema_real_eip !103
  store i32 %EAX_val.128, i32* %622, !mcsema_real_eip !103
  br label %block_0x2c8, !mcsema_real_eip !104

block_0x1ad:                                      ; preds = %block_0x21
  %RBP_val.129 = load i64, i64* %XBP, !mcsema_real_eip !105
  %623 = add i64 %RBP_val.129, -8, !mcsema_real_eip !105
  %624 = inttoptr i64 %623 to i64*, !mcsema_real_eip !105
  %625 = ptrtoint i64* %624 to i64, !mcsema_real_eip !105
  %626 = inttoptr i64 %625 to i32*, !mcsema_real_eip !105
  %627 = load i32, i32* %626, !mcsema_real_eip !105
  %628 = zext i32 %627 to i64, !mcsema_real_eip !105
  store i64 %628, i64* %XAX, !mcsema_real_eip !105
  %EAX.130 = bitcast i64* %XAX to i32*, !mcsema_real_eip !106
  %EAX_val.131 = load i32, i32* %EAX.130, !mcsema_real_eip !106
  %629 = add i32 1, %EAX_val.131, !mcsema_real_eip !106
  %630 = xor i32 %629, %EAX_val.131, !mcsema_real_eip !106
  %631 = xor i32 %630, 1, !mcsema_real_eip !106
  %632 = and i32 %631, 16, !mcsema_real_eip !106
  %633 = icmp ne i32 %632, 0, !mcsema_real_eip !106
  store i1 %633, i1* %AF, !mcsema_real_eip !106
  %634 = lshr i32 %629, 31, !mcsema_real_eip !106
  %635 = trunc i32 %634 to i1, !mcsema_real_eip !106
  store i1 %635, i1* %SF, !mcsema_real_eip !106
  %636 = icmp eq i32 %629, 0, !mcsema_real_eip !106
  store i1 %636, i1* %ZF, !mcsema_real_eip !106
  %637 = xor i32 %EAX_val.131, 1, !mcsema_real_eip !106
  %638 = xor i32 %637, -1, !mcsema_real_eip !106
  %639 = xor i32 %EAX_val.131, %629, !mcsema_real_eip !106
  %640 = and i32 %638, %639, !mcsema_real_eip !106
  %641 = lshr i32 %640, 31, !mcsema_real_eip !106
  %642 = and i32 %641, 1, !mcsema_real_eip !106
  %643 = trunc i32 %642 to i1, !mcsema_real_eip !106
  store i1 %643, i1* %OF, !mcsema_real_eip !106
  %644 = trunc i32 %629 to i8, !mcsema_real_eip !106
  %645 = call i8 @llvm.ctpop.i8(i8 %644), !mcsema_real_eip !106
  %646 = trunc i8 %645 to i1, !mcsema_real_eip !106
  %647 = xor i1 %646, true, !mcsema_real_eip !106
  store i1 %647, i1* %PF, !mcsema_real_eip !106
  %648 = icmp ult i32 %629, %EAX_val.131, !mcsema_real_eip !106
  store i1 %648, i1* %CF, !mcsema_real_eip !106
  %649 = zext i32 %629 to i64, !mcsema_real_eip !106
  store i64 %649, i64* %XAX, !mcsema_real_eip !106
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !107
  %650 = add i64 %RBP_val.132, -8, !mcsema_real_eip !107
  %651 = inttoptr i64 %650 to i64*, !mcsema_real_eip !107
  %EAX.133 = bitcast i64* %XAX to i32*, !mcsema_real_eip !107
  %EAX_val.134 = load i32, i32* %EAX.133, !mcsema_real_eip !107
  %652 = ptrtoint i64* %651 to i64, !mcsema_real_eip !107
  %653 = inttoptr i64 %652 to i32*, !mcsema_real_eip !107
  store i32 %EAX_val.134, i32* %653, !mcsema_real_eip !107
  br label %block_0x2c8, !mcsema_real_eip !108

block_0x1bb:                                      ; preds = %block_0x35
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !109
  %654 = add i64 %RBP_val.135, -8, !mcsema_real_eip !109
  %655 = inttoptr i64 %654 to i64*, !mcsema_real_eip !109
  %656 = ptrtoint i64* %655 to i64, !mcsema_real_eip !109
  %657 = inttoptr i64 %656 to i32*, !mcsema_real_eip !109
  %658 = load i32, i32* %657, !mcsema_real_eip !109
  %659 = zext i32 %658 to i64, !mcsema_real_eip !109
  store i64 %659, i64* %XAX, !mcsema_real_eip !109
  %EAX.136 = bitcast i64* %XAX to i32*, !mcsema_real_eip !110
  %EAX_val.137 = load i32, i32* %EAX.136, !mcsema_real_eip !110
  %660 = add i32 2, %EAX_val.137, !mcsema_real_eip !110
  %661 = xor i32 %660, %EAX_val.137, !mcsema_real_eip !110
  %662 = xor i32 %661, 2, !mcsema_real_eip !110
  %663 = and i32 %662, 16, !mcsema_real_eip !110
  %664 = icmp ne i32 %663, 0, !mcsema_real_eip !110
  store i1 %664, i1* %AF, !mcsema_real_eip !110
  %665 = lshr i32 %660, 31, !mcsema_real_eip !110
  %666 = trunc i32 %665 to i1, !mcsema_real_eip !110
  store i1 %666, i1* %SF, !mcsema_real_eip !110
  %667 = icmp eq i32 %660, 0, !mcsema_real_eip !110
  store i1 %667, i1* %ZF, !mcsema_real_eip !110
  %668 = xor i32 %EAX_val.137, 2, !mcsema_real_eip !110
  %669 = xor i32 %668, -1, !mcsema_real_eip !110
  %670 = xor i32 %EAX_val.137, %660, !mcsema_real_eip !110
  %671 = and i32 %669, %670, !mcsema_real_eip !110
  %672 = lshr i32 %671, 31, !mcsema_real_eip !110
  %673 = and i32 %672, 1, !mcsema_real_eip !110
  %674 = trunc i32 %673 to i1, !mcsema_real_eip !110
  store i1 %674, i1* %OF, !mcsema_real_eip !110
  %675 = trunc i32 %660 to i8, !mcsema_real_eip !110
  %676 = call i8 @llvm.ctpop.i8(i8 %675), !mcsema_real_eip !110
  %677 = trunc i8 %676 to i1, !mcsema_real_eip !110
  %678 = xor i1 %677, true, !mcsema_real_eip !110
  store i1 %678, i1* %PF, !mcsema_real_eip !110
  %679 = icmp ult i32 %660, %EAX_val.137, !mcsema_real_eip !110
  store i1 %679, i1* %CF, !mcsema_real_eip !110
  %680 = zext i32 %660 to i64, !mcsema_real_eip !110
  store i64 %680, i64* %XAX, !mcsema_real_eip !110
  %RBP_val.138 = load i64, i64* %XBP, !mcsema_real_eip !111
  %681 = add i64 %RBP_val.138, -8, !mcsema_real_eip !111
  %682 = inttoptr i64 %681 to i64*, !mcsema_real_eip !111
  %EAX.139 = bitcast i64* %XAX to i32*, !mcsema_real_eip !111
  %EAX_val.140 = load i32, i32* %EAX.139, !mcsema_real_eip !111
  %683 = ptrtoint i64* %682 to i64, !mcsema_real_eip !111
  %684 = inttoptr i64 %683 to i32*, !mcsema_real_eip !111
  store i32 %EAX_val.140, i32* %684, !mcsema_real_eip !111
  br label %block_0x2c8, !mcsema_real_eip !112

block_0x1c9:                                      ; preds = %block_0x49
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !113
  %685 = add i64 %RBP_val.141, -8, !mcsema_real_eip !113
  %686 = inttoptr i64 %685 to i64*, !mcsema_real_eip !113
  %687 = ptrtoint i64* %686 to i64, !mcsema_real_eip !113
  %688 = inttoptr i64 %687 to i32*, !mcsema_real_eip !113
  %689 = load i32, i32* %688, !mcsema_real_eip !113
  %690 = zext i32 %689 to i64, !mcsema_real_eip !113
  store i64 %690, i64* %XAX, !mcsema_real_eip !113
  %EAX.142 = bitcast i64* %XAX to i32*, !mcsema_real_eip !114
  %EAX_val.143 = load i32, i32* %EAX.142, !mcsema_real_eip !114
  %691 = add i32 4, %EAX_val.143, !mcsema_real_eip !114
  %692 = xor i32 %691, %EAX_val.143, !mcsema_real_eip !114
  %693 = xor i32 %692, 4, !mcsema_real_eip !114
  %694 = and i32 %693, 16, !mcsema_real_eip !114
  %695 = icmp ne i32 %694, 0, !mcsema_real_eip !114
  store i1 %695, i1* %AF, !mcsema_real_eip !114
  %696 = lshr i32 %691, 31, !mcsema_real_eip !114
  %697 = trunc i32 %696 to i1, !mcsema_real_eip !114
  store i1 %697, i1* %SF, !mcsema_real_eip !114
  %698 = icmp eq i32 %691, 0, !mcsema_real_eip !114
  store i1 %698, i1* %ZF, !mcsema_real_eip !114
  %699 = xor i32 %EAX_val.143, 4, !mcsema_real_eip !114
  %700 = xor i32 %699, -1, !mcsema_real_eip !114
  %701 = xor i32 %EAX_val.143, %691, !mcsema_real_eip !114
  %702 = and i32 %700, %701, !mcsema_real_eip !114
  %703 = lshr i32 %702, 31, !mcsema_real_eip !114
  %704 = and i32 %703, 1, !mcsema_real_eip !114
  %705 = trunc i32 %704 to i1, !mcsema_real_eip !114
  store i1 %705, i1* %OF, !mcsema_real_eip !114
  %706 = trunc i32 %691 to i8, !mcsema_real_eip !114
  %707 = call i8 @llvm.ctpop.i8(i8 %706), !mcsema_real_eip !114
  %708 = trunc i8 %707 to i1, !mcsema_real_eip !114
  %709 = xor i1 %708, true, !mcsema_real_eip !114
  store i1 %709, i1* %PF, !mcsema_real_eip !114
  %710 = icmp ult i32 %691, %EAX_val.143, !mcsema_real_eip !114
  store i1 %710, i1* %CF, !mcsema_real_eip !114
  %711 = zext i32 %691 to i64, !mcsema_real_eip !114
  store i64 %711, i64* %XAX, !mcsema_real_eip !114
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !115
  %712 = add i64 %RBP_val.144, -8, !mcsema_real_eip !115
  %713 = inttoptr i64 %712 to i64*, !mcsema_real_eip !115
  %EAX.145 = bitcast i64* %XAX to i32*, !mcsema_real_eip !115
  %EAX_val.146 = load i32, i32* %EAX.145, !mcsema_real_eip !115
  %714 = ptrtoint i64* %713 to i64, !mcsema_real_eip !115
  %715 = inttoptr i64 %714 to i32*, !mcsema_real_eip !115
  store i32 %EAX_val.146, i32* %715, !mcsema_real_eip !115
  br label %block_0x2c8, !mcsema_real_eip !116

block_0x1d7:                                      ; preds = %block_0x5d
  %RBP_val.147 = load i64, i64* %XBP, !mcsema_real_eip !117
  %716 = add i64 %RBP_val.147, -8, !mcsema_real_eip !117
  %717 = inttoptr i64 %716 to i64*, !mcsema_real_eip !117
  %718 = ptrtoint i64* %717 to i64, !mcsema_real_eip !117
  %719 = inttoptr i64 %718 to i32*, !mcsema_real_eip !117
  %720 = load i32, i32* %719, !mcsema_real_eip !117
  %721 = zext i32 %720 to i64, !mcsema_real_eip !117
  store i64 %721, i64* %XAX, !mcsema_real_eip !117
  %EAX.148 = bitcast i64* %XAX to i32*, !mcsema_real_eip !118
  %EAX_val.149 = load i32, i32* %EAX.148, !mcsema_real_eip !118
  %722 = add i32 6, %EAX_val.149, !mcsema_real_eip !118
  %723 = xor i32 %722, %EAX_val.149, !mcsema_real_eip !118
  %724 = xor i32 %723, 6, !mcsema_real_eip !118
  %725 = and i32 %724, 16, !mcsema_real_eip !118
  %726 = icmp ne i32 %725, 0, !mcsema_real_eip !118
  store i1 %726, i1* %AF, !mcsema_real_eip !118
  %727 = lshr i32 %722, 31, !mcsema_real_eip !118
  %728 = trunc i32 %727 to i1, !mcsema_real_eip !118
  store i1 %728, i1* %SF, !mcsema_real_eip !118
  %729 = icmp eq i32 %722, 0, !mcsema_real_eip !118
  store i1 %729, i1* %ZF, !mcsema_real_eip !118
  %730 = xor i32 %EAX_val.149, 6, !mcsema_real_eip !118
  %731 = xor i32 %730, -1, !mcsema_real_eip !118
  %732 = xor i32 %EAX_val.149, %722, !mcsema_real_eip !118
  %733 = and i32 %731, %732, !mcsema_real_eip !118
  %734 = lshr i32 %733, 31, !mcsema_real_eip !118
  %735 = and i32 %734, 1, !mcsema_real_eip !118
  %736 = trunc i32 %735 to i1, !mcsema_real_eip !118
  store i1 %736, i1* %OF, !mcsema_real_eip !118
  %737 = trunc i32 %722 to i8, !mcsema_real_eip !118
  %738 = call i8 @llvm.ctpop.i8(i8 %737), !mcsema_real_eip !118
  %739 = trunc i8 %738 to i1, !mcsema_real_eip !118
  %740 = xor i1 %739, true, !mcsema_real_eip !118
  store i1 %740, i1* %PF, !mcsema_real_eip !118
  %741 = icmp ult i32 %722, %EAX_val.149, !mcsema_real_eip !118
  store i1 %741, i1* %CF, !mcsema_real_eip !118
  %742 = zext i32 %722 to i64, !mcsema_real_eip !118
  store i64 %742, i64* %XAX, !mcsema_real_eip !118
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !119
  %743 = add i64 %RBP_val.150, -8, !mcsema_real_eip !119
  %744 = inttoptr i64 %743 to i64*, !mcsema_real_eip !119
  %EAX.151 = bitcast i64* %XAX to i32*, !mcsema_real_eip !119
  %EAX_val.152 = load i32, i32* %EAX.151, !mcsema_real_eip !119
  %745 = ptrtoint i64* %744 to i64, !mcsema_real_eip !119
  %746 = inttoptr i64 %745 to i32*, !mcsema_real_eip !119
  store i32 %EAX_val.152, i32* %746, !mcsema_real_eip !119
  br label %block_0x2c8, !mcsema_real_eip !120

block_0x1e5:                                      ; preds = %block_0x71
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !121
  %747 = add i64 %RBP_val.153, -8, !mcsema_real_eip !121
  %748 = inttoptr i64 %747 to i64*, !mcsema_real_eip !121
  %749 = ptrtoint i64* %748 to i64, !mcsema_real_eip !121
  %750 = inttoptr i64 %749 to i32*, !mcsema_real_eip !121
  %751 = load i32, i32* %750, !mcsema_real_eip !121
  %752 = zext i32 %751 to i64, !mcsema_real_eip !121
  store i64 %752, i64* %XAX, !mcsema_real_eip !121
  %EAX.154 = bitcast i64* %XAX to i32*, !mcsema_real_eip !122
  %EAX_val.155 = load i32, i32* %EAX.154, !mcsema_real_eip !122
  %753 = add i32 12, %EAX_val.155, !mcsema_real_eip !122
  %754 = xor i32 %753, %EAX_val.155, !mcsema_real_eip !122
  %755 = xor i32 %754, 12, !mcsema_real_eip !122
  %756 = and i32 %755, 16, !mcsema_real_eip !122
  %757 = icmp ne i32 %756, 0, !mcsema_real_eip !122
  store i1 %757, i1* %AF, !mcsema_real_eip !122
  %758 = lshr i32 %753, 31, !mcsema_real_eip !122
  %759 = trunc i32 %758 to i1, !mcsema_real_eip !122
  store i1 %759, i1* %SF, !mcsema_real_eip !122
  %760 = icmp eq i32 %753, 0, !mcsema_real_eip !122
  store i1 %760, i1* %ZF, !mcsema_real_eip !122
  %761 = xor i32 %EAX_val.155, 12, !mcsema_real_eip !122
  %762 = xor i32 %761, -1, !mcsema_real_eip !122
  %763 = xor i32 %EAX_val.155, %753, !mcsema_real_eip !122
  %764 = and i32 %762, %763, !mcsema_real_eip !122
  %765 = lshr i32 %764, 31, !mcsema_real_eip !122
  %766 = and i32 %765, 1, !mcsema_real_eip !122
  %767 = trunc i32 %766 to i1, !mcsema_real_eip !122
  store i1 %767, i1* %OF, !mcsema_real_eip !122
  %768 = trunc i32 %753 to i8, !mcsema_real_eip !122
  %769 = call i8 @llvm.ctpop.i8(i8 %768), !mcsema_real_eip !122
  %770 = trunc i8 %769 to i1, !mcsema_real_eip !122
  %771 = xor i1 %770, true, !mcsema_real_eip !122
  store i1 %771, i1* %PF, !mcsema_real_eip !122
  %772 = icmp ult i32 %753, %EAX_val.155, !mcsema_real_eip !122
  store i1 %772, i1* %CF, !mcsema_real_eip !122
  %773 = zext i32 %753 to i64, !mcsema_real_eip !122
  store i64 %773, i64* %XAX, !mcsema_real_eip !122
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !123
  %774 = add i64 %RBP_val.156, -8, !mcsema_real_eip !123
  %775 = inttoptr i64 %774 to i64*, !mcsema_real_eip !123
  %EAX.157 = bitcast i64* %XAX to i32*, !mcsema_real_eip !123
  %EAX_val.158 = load i32, i32* %EAX.157, !mcsema_real_eip !123
  %776 = ptrtoint i64* %775 to i64, !mcsema_real_eip !123
  %777 = inttoptr i64 %776 to i32*, !mcsema_real_eip !123
  store i32 %EAX_val.158, i32* %777, !mcsema_real_eip !123
  br label %block_0x2c8, !mcsema_real_eip !124

block_0x1f3:                                      ; preds = %block_0x85
  %RBP_val.159 = load i64, i64* %XBP, !mcsema_real_eip !125
  %778 = add i64 %RBP_val.159, -8, !mcsema_real_eip !125
  %779 = inttoptr i64 %778 to i64*, !mcsema_real_eip !125
  %780 = ptrtoint i64* %779 to i64, !mcsema_real_eip !125
  %781 = inttoptr i64 %780 to i32*, !mcsema_real_eip !125
  %782 = load i32, i32* %781, !mcsema_real_eip !125
  %783 = zext i32 %782 to i64, !mcsema_real_eip !125
  store i64 %783, i64* %XAX, !mcsema_real_eip !125
  %EAX.160 = bitcast i64* %XAX to i32*, !mcsema_real_eip !126
  %EAX_val.161 = load i32, i32* %EAX.160, !mcsema_real_eip !126
  %784 = add i32 13, %EAX_val.161, !mcsema_real_eip !126
  %785 = xor i32 %784, %EAX_val.161, !mcsema_real_eip !126
  %786 = xor i32 %785, 13, !mcsema_real_eip !126
  %787 = and i32 %786, 16, !mcsema_real_eip !126
  %788 = icmp ne i32 %787, 0, !mcsema_real_eip !126
  store i1 %788, i1* %AF, !mcsema_real_eip !126
  %789 = lshr i32 %784, 31, !mcsema_real_eip !126
  %790 = trunc i32 %789 to i1, !mcsema_real_eip !126
  store i1 %790, i1* %SF, !mcsema_real_eip !126
  %791 = icmp eq i32 %784, 0, !mcsema_real_eip !126
  store i1 %791, i1* %ZF, !mcsema_real_eip !126
  %792 = xor i32 %EAX_val.161, 13, !mcsema_real_eip !126
  %793 = xor i32 %792, -1, !mcsema_real_eip !126
  %794 = xor i32 %EAX_val.161, %784, !mcsema_real_eip !126
  %795 = and i32 %793, %794, !mcsema_real_eip !126
  %796 = lshr i32 %795, 31, !mcsema_real_eip !126
  %797 = and i32 %796, 1, !mcsema_real_eip !126
  %798 = trunc i32 %797 to i1, !mcsema_real_eip !126
  store i1 %798, i1* %OF, !mcsema_real_eip !126
  %799 = trunc i32 %784 to i8, !mcsema_real_eip !126
  %800 = call i8 @llvm.ctpop.i8(i8 %799), !mcsema_real_eip !126
  %801 = trunc i8 %800 to i1, !mcsema_real_eip !126
  %802 = xor i1 %801, true, !mcsema_real_eip !126
  store i1 %802, i1* %PF, !mcsema_real_eip !126
  %803 = icmp ult i32 %784, %EAX_val.161, !mcsema_real_eip !126
  store i1 %803, i1* %CF, !mcsema_real_eip !126
  %804 = zext i32 %784 to i64, !mcsema_real_eip !126
  store i64 %804, i64* %XAX, !mcsema_real_eip !126
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !127
  %805 = add i64 %RBP_val.162, -8, !mcsema_real_eip !127
  %806 = inttoptr i64 %805 to i64*, !mcsema_real_eip !127
  %EAX.163 = bitcast i64* %XAX to i32*, !mcsema_real_eip !127
  %EAX_val.164 = load i32, i32* %EAX.163, !mcsema_real_eip !127
  %807 = ptrtoint i64* %806 to i64, !mcsema_real_eip !127
  %808 = inttoptr i64 %807 to i32*, !mcsema_real_eip !127
  store i32 %EAX_val.164, i32* %808, !mcsema_real_eip !127
  br label %block_0x2c8, !mcsema_real_eip !128

block_0x201:                                      ; preds = %block_0x99
  %RBP_val.165 = load i64, i64* %XBP, !mcsema_real_eip !129
  %809 = add i64 %RBP_val.165, -8, !mcsema_real_eip !129
  %810 = inttoptr i64 %809 to i64*, !mcsema_real_eip !129
  %811 = ptrtoint i64* %810 to i64, !mcsema_real_eip !129
  %812 = inttoptr i64 %811 to i32*, !mcsema_real_eip !129
  %813 = load i32, i32* %812, !mcsema_real_eip !129
  %814 = zext i32 %813 to i64, !mcsema_real_eip !129
  store i64 %814, i64* %XAX, !mcsema_real_eip !129
  %EAX.166 = bitcast i64* %XAX to i32*, !mcsema_real_eip !130
  %EAX_val.167 = load i32, i32* %EAX.166, !mcsema_real_eip !130
  %815 = add i32 19, %EAX_val.167, !mcsema_real_eip !130
  %816 = xor i32 %815, %EAX_val.167, !mcsema_real_eip !130
  %817 = xor i32 %816, 19, !mcsema_real_eip !130
  %818 = and i32 %817, 16, !mcsema_real_eip !130
  %819 = icmp ne i32 %818, 0, !mcsema_real_eip !130
  store i1 %819, i1* %AF, !mcsema_real_eip !130
  %820 = lshr i32 %815, 31, !mcsema_real_eip !130
  %821 = trunc i32 %820 to i1, !mcsema_real_eip !130
  store i1 %821, i1* %SF, !mcsema_real_eip !130
  %822 = icmp eq i32 %815, 0, !mcsema_real_eip !130
  store i1 %822, i1* %ZF, !mcsema_real_eip !130
  %823 = xor i32 %EAX_val.167, 19, !mcsema_real_eip !130
  %824 = xor i32 %823, -1, !mcsema_real_eip !130
  %825 = xor i32 %EAX_val.167, %815, !mcsema_real_eip !130
  %826 = and i32 %824, %825, !mcsema_real_eip !130
  %827 = lshr i32 %826, 31, !mcsema_real_eip !130
  %828 = and i32 %827, 1, !mcsema_real_eip !130
  %829 = trunc i32 %828 to i1, !mcsema_real_eip !130
  store i1 %829, i1* %OF, !mcsema_real_eip !130
  %830 = trunc i32 %815 to i8, !mcsema_real_eip !130
  %831 = call i8 @llvm.ctpop.i8(i8 %830), !mcsema_real_eip !130
  %832 = trunc i8 %831 to i1, !mcsema_real_eip !130
  %833 = xor i1 %832, true, !mcsema_real_eip !130
  store i1 %833, i1* %PF, !mcsema_real_eip !130
  %834 = icmp ult i32 %815, %EAX_val.167, !mcsema_real_eip !130
  store i1 %834, i1* %CF, !mcsema_real_eip !130
  %835 = zext i32 %815 to i64, !mcsema_real_eip !130
  store i64 %835, i64* %XAX, !mcsema_real_eip !130
  %RBP_val.168 = load i64, i64* %XBP, !mcsema_real_eip !131
  %836 = add i64 %RBP_val.168, -8, !mcsema_real_eip !131
  %837 = inttoptr i64 %836 to i64*, !mcsema_real_eip !131
  %EAX.169 = bitcast i64* %XAX to i32*, !mcsema_real_eip !131
  %EAX_val.170 = load i32, i32* %EAX.169, !mcsema_real_eip !131
  %838 = ptrtoint i64* %837 to i64, !mcsema_real_eip !131
  %839 = inttoptr i64 %838 to i32*, !mcsema_real_eip !131
  store i32 %EAX_val.170, i32* %839, !mcsema_real_eip !131
  br label %block_0x2c8, !mcsema_real_eip !132

block_0x20f:                                      ; preds = %block_0xad
  %RBP_val.171 = load i64, i64* %XBP, !mcsema_real_eip !133
  %840 = add i64 %RBP_val.171, -8, !mcsema_real_eip !133
  %841 = inttoptr i64 %840 to i64*, !mcsema_real_eip !133
  %842 = ptrtoint i64* %841 to i64, !mcsema_real_eip !133
  %843 = inttoptr i64 %842 to i32*, !mcsema_real_eip !133
  %844 = load i32, i32* %843, !mcsema_real_eip !133
  %845 = zext i32 %844 to i64, !mcsema_real_eip !133
  store i64 %845, i64* %XAX, !mcsema_real_eip !133
  %EAX.172 = bitcast i64* %XAX to i32*, !mcsema_real_eip !134
  %EAX_val.173 = load i32, i32* %EAX.172, !mcsema_real_eip !134
  %846 = add i32 255, %EAX_val.173, !mcsema_real_eip !134
  %847 = xor i32 %846, %EAX_val.173, !mcsema_real_eip !134
  %848 = xor i32 %847, 255, !mcsema_real_eip !134
  %849 = and i32 %848, 16, !mcsema_real_eip !134
  %850 = icmp ne i32 %849, 0, !mcsema_real_eip !134
  store i1 %850, i1* %AF, !mcsema_real_eip !134
  %851 = lshr i32 %846, 31, !mcsema_real_eip !134
  %852 = trunc i32 %851 to i1, !mcsema_real_eip !134
  store i1 %852, i1* %SF, !mcsema_real_eip !134
  %853 = icmp eq i32 %846, 0, !mcsema_real_eip !134
  store i1 %853, i1* %ZF, !mcsema_real_eip !134
  %854 = xor i32 %EAX_val.173, 255, !mcsema_real_eip !134
  %855 = xor i32 %854, -1, !mcsema_real_eip !134
  %856 = xor i32 %EAX_val.173, %846, !mcsema_real_eip !134
  %857 = and i32 %855, %856, !mcsema_real_eip !134
  %858 = lshr i32 %857, 31, !mcsema_real_eip !134
  %859 = and i32 %858, 1, !mcsema_real_eip !134
  %860 = trunc i32 %859 to i1, !mcsema_real_eip !134
  store i1 %860, i1* %OF, !mcsema_real_eip !134
  %861 = trunc i32 %846 to i8, !mcsema_real_eip !134
  %862 = call i8 @llvm.ctpop.i8(i8 %861), !mcsema_real_eip !134
  %863 = trunc i8 %862 to i1, !mcsema_real_eip !134
  %864 = xor i1 %863, true, !mcsema_real_eip !134
  store i1 %864, i1* %PF, !mcsema_real_eip !134
  %865 = icmp ult i32 %846, %EAX_val.173, !mcsema_real_eip !134
  store i1 %865, i1* %CF, !mcsema_real_eip !134
  %866 = zext i32 %846 to i64, !mcsema_real_eip !134
  store i64 %866, i64* %XAX, !mcsema_real_eip !134
  %RBP_val.174 = load i64, i64* %XBP, !mcsema_real_eip !135
  %867 = add i64 %RBP_val.174, -8, !mcsema_real_eip !135
  %868 = inttoptr i64 %867 to i64*, !mcsema_real_eip !135
  %EAX.175 = bitcast i64* %XAX to i32*, !mcsema_real_eip !135
  %EAX_val.176 = load i32, i32* %EAX.175, !mcsema_real_eip !135
  %869 = ptrtoint i64* %868 to i64, !mcsema_real_eip !135
  %870 = inttoptr i64 %869 to i32*, !mcsema_real_eip !135
  store i32 %EAX_val.176, i32* %870, !mcsema_real_eip !135
  br label %block_0x2c8, !mcsema_real_eip !136

block_0x21f:                                      ; preds = %block_0xc3
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !137
  %871 = add i64 %RBP_val.177, -8, !mcsema_real_eip !137
  %872 = inttoptr i64 %871 to i64*, !mcsema_real_eip !137
  %873 = ptrtoint i64* %872 to i64, !mcsema_real_eip !137
  %874 = inttoptr i64 %873 to i32*, !mcsema_real_eip !137
  %875 = load i32, i32* %874, !mcsema_real_eip !137
  %876 = zext i32 %875 to i64, !mcsema_real_eip !137
  store i64 %876, i64* %XAX, !mcsema_real_eip !137
  %EAX.178 = bitcast i64* %XAX to i32*, !mcsema_real_eip !138
  %EAX_val.179 = load i32, i32* %EAX.178, !mcsema_real_eip !138
  %877 = add i32 74633, %EAX_val.179, !mcsema_real_eip !138
  %878 = xor i32 %877, %EAX_val.179, !mcsema_real_eip !138
  %879 = xor i32 %878, 74633, !mcsema_real_eip !138
  %880 = and i32 %879, 16, !mcsema_real_eip !138
  %881 = icmp ne i32 %880, 0, !mcsema_real_eip !138
  store i1 %881, i1* %AF, !mcsema_real_eip !138
  %882 = lshr i32 %877, 31, !mcsema_real_eip !138
  %883 = trunc i32 %882 to i1, !mcsema_real_eip !138
  store i1 %883, i1* %SF, !mcsema_real_eip !138
  %884 = icmp eq i32 %877, 0, !mcsema_real_eip !138
  store i1 %884, i1* %ZF, !mcsema_real_eip !138
  %885 = xor i32 %EAX_val.179, 74633, !mcsema_real_eip !138
  %886 = xor i32 %885, -1, !mcsema_real_eip !138
  %887 = xor i32 %EAX_val.179, %877, !mcsema_real_eip !138
  %888 = and i32 %886, %887, !mcsema_real_eip !138
  %889 = lshr i32 %888, 31, !mcsema_real_eip !138
  %890 = and i32 %889, 1, !mcsema_real_eip !138
  %891 = trunc i32 %890 to i1, !mcsema_real_eip !138
  store i1 %891, i1* %OF, !mcsema_real_eip !138
  %892 = trunc i32 %877 to i8, !mcsema_real_eip !138
  %893 = call i8 @llvm.ctpop.i8(i8 %892), !mcsema_real_eip !138
  %894 = trunc i8 %893 to i1, !mcsema_real_eip !138
  %895 = xor i1 %894, true, !mcsema_real_eip !138
  store i1 %895, i1* %PF, !mcsema_real_eip !138
  %896 = icmp ult i32 %877, %EAX_val.179, !mcsema_real_eip !138
  store i1 %896, i1* %CF, !mcsema_real_eip !138
  %897 = zext i32 %877 to i64, !mcsema_real_eip !138
  store i64 %897, i64* %XAX, !mcsema_real_eip !138
  %RBP_val.180 = load i64, i64* %XBP, !mcsema_real_eip !139
  %898 = add i64 %RBP_val.180, -8, !mcsema_real_eip !139
  %899 = inttoptr i64 %898 to i64*, !mcsema_real_eip !139
  %EAX.181 = bitcast i64* %XAX to i32*, !mcsema_real_eip !139
  %EAX_val.182 = load i32, i32* %EAX.181, !mcsema_real_eip !139
  %900 = ptrtoint i64* %899 to i64, !mcsema_real_eip !139
  %901 = inttoptr i64 %900 to i32*, !mcsema_real_eip !139
  store i32 %EAX_val.182, i32* %901, !mcsema_real_eip !139
  br label %block_0x2c8, !mcsema_real_eip !140

block_0x22f:                                      ; preds = %block_0xd9
  %RBP_val.183 = load i64, i64* %XBP, !mcsema_real_eip !141
  %902 = add i64 %RBP_val.183, -8, !mcsema_real_eip !141
  %903 = inttoptr i64 %902 to i64*, !mcsema_real_eip !141
  %904 = ptrtoint i64* %903 to i64, !mcsema_real_eip !141
  %905 = inttoptr i64 %904 to i32*, !mcsema_real_eip !141
  %906 = load i32, i32* %905, !mcsema_real_eip !141
  %907 = zext i32 %906 to i64, !mcsema_real_eip !141
  store i64 %907, i64* %XAX, !mcsema_real_eip !141
  %EAX.184 = bitcast i64* %XAX to i32*, !mcsema_real_eip !142
  %EAX_val.185 = load i32, i32* %EAX.184, !mcsema_real_eip !142
  %908 = add i32 74634, %EAX_val.185, !mcsema_real_eip !142
  %909 = xor i32 %908, %EAX_val.185, !mcsema_real_eip !142
  %910 = xor i32 %909, 74634, !mcsema_real_eip !142
  %911 = and i32 %910, 16, !mcsema_real_eip !142
  %912 = icmp ne i32 %911, 0, !mcsema_real_eip !142
  store i1 %912, i1* %AF, !mcsema_real_eip !142
  %913 = lshr i32 %908, 31, !mcsema_real_eip !142
  %914 = trunc i32 %913 to i1, !mcsema_real_eip !142
  store i1 %914, i1* %SF, !mcsema_real_eip !142
  %915 = icmp eq i32 %908, 0, !mcsema_real_eip !142
  store i1 %915, i1* %ZF, !mcsema_real_eip !142
  %916 = xor i32 %EAX_val.185, 74634, !mcsema_real_eip !142
  %917 = xor i32 %916, -1, !mcsema_real_eip !142
  %918 = xor i32 %EAX_val.185, %908, !mcsema_real_eip !142
  %919 = and i32 %917, %918, !mcsema_real_eip !142
  %920 = lshr i32 %919, 31, !mcsema_real_eip !142
  %921 = and i32 %920, 1, !mcsema_real_eip !142
  %922 = trunc i32 %921 to i1, !mcsema_real_eip !142
  store i1 %922, i1* %OF, !mcsema_real_eip !142
  %923 = trunc i32 %908 to i8, !mcsema_real_eip !142
  %924 = call i8 @llvm.ctpop.i8(i8 %923), !mcsema_real_eip !142
  %925 = trunc i8 %924 to i1, !mcsema_real_eip !142
  %926 = xor i1 %925, true, !mcsema_real_eip !142
  store i1 %926, i1* %PF, !mcsema_real_eip !142
  %927 = icmp ult i32 %908, %EAX_val.185, !mcsema_real_eip !142
  store i1 %927, i1* %CF, !mcsema_real_eip !142
  %928 = zext i32 %908 to i64, !mcsema_real_eip !142
  store i64 %928, i64* %XAX, !mcsema_real_eip !142
  %RBP_val.186 = load i64, i64* %XBP, !mcsema_real_eip !143
  %929 = add i64 %RBP_val.186, -8, !mcsema_real_eip !143
  %930 = inttoptr i64 %929 to i64*, !mcsema_real_eip !143
  %EAX.187 = bitcast i64* %XAX to i32*, !mcsema_real_eip !143
  %EAX_val.188 = load i32, i32* %EAX.187, !mcsema_real_eip !143
  %931 = ptrtoint i64* %930 to i64, !mcsema_real_eip !143
  %932 = inttoptr i64 %931 to i32*, !mcsema_real_eip !143
  store i32 %EAX_val.188, i32* %932, !mcsema_real_eip !143
  br label %block_0x2c8, !mcsema_real_eip !144

block_0x23f:                                      ; preds = %block_0xef
  %RBP_val.189 = load i64, i64* %XBP, !mcsema_real_eip !145
  %933 = add i64 %RBP_val.189, -8, !mcsema_real_eip !145
  %934 = inttoptr i64 %933 to i64*, !mcsema_real_eip !145
  %935 = ptrtoint i64* %934 to i64, !mcsema_real_eip !145
  %936 = inttoptr i64 %935 to i32*, !mcsema_real_eip !145
  %937 = load i32, i32* %936, !mcsema_real_eip !145
  %938 = zext i32 %937 to i64, !mcsema_real_eip !145
  store i64 %938, i64* %XAX, !mcsema_real_eip !145
  %EAX.190 = bitcast i64* %XAX to i32*, !mcsema_real_eip !146
  %EAX_val.191 = load i32, i32* %EAX.190, !mcsema_real_eip !146
  %939 = add i32 74635, %EAX_val.191, !mcsema_real_eip !146
  %940 = xor i32 %939, %EAX_val.191, !mcsema_real_eip !146
  %941 = xor i32 %940, 74635, !mcsema_real_eip !146
  %942 = and i32 %941, 16, !mcsema_real_eip !146
  %943 = icmp ne i32 %942, 0, !mcsema_real_eip !146
  store i1 %943, i1* %AF, !mcsema_real_eip !146
  %944 = lshr i32 %939, 31, !mcsema_real_eip !146
  %945 = trunc i32 %944 to i1, !mcsema_real_eip !146
  store i1 %945, i1* %SF, !mcsema_real_eip !146
  %946 = icmp eq i32 %939, 0, !mcsema_real_eip !146
  store i1 %946, i1* %ZF, !mcsema_real_eip !146
  %947 = xor i32 %EAX_val.191, 74635, !mcsema_real_eip !146
  %948 = xor i32 %947, -1, !mcsema_real_eip !146
  %949 = xor i32 %EAX_val.191, %939, !mcsema_real_eip !146
  %950 = and i32 %948, %949, !mcsema_real_eip !146
  %951 = lshr i32 %950, 31, !mcsema_real_eip !146
  %952 = and i32 %951, 1, !mcsema_real_eip !146
  %953 = trunc i32 %952 to i1, !mcsema_real_eip !146
  store i1 %953, i1* %OF, !mcsema_real_eip !146
  %954 = trunc i32 %939 to i8, !mcsema_real_eip !146
  %955 = call i8 @llvm.ctpop.i8(i8 %954), !mcsema_real_eip !146
  %956 = trunc i8 %955 to i1, !mcsema_real_eip !146
  %957 = xor i1 %956, true, !mcsema_real_eip !146
  store i1 %957, i1* %PF, !mcsema_real_eip !146
  %958 = icmp ult i32 %939, %EAX_val.191, !mcsema_real_eip !146
  store i1 %958, i1* %CF, !mcsema_real_eip !146
  %959 = zext i32 %939 to i64, !mcsema_real_eip !146
  store i64 %959, i64* %XAX, !mcsema_real_eip !146
  %RBP_val.192 = load i64, i64* %XBP, !mcsema_real_eip !147
  %960 = add i64 %RBP_val.192, -8, !mcsema_real_eip !147
  %961 = inttoptr i64 %960 to i64*, !mcsema_real_eip !147
  %EAX.193 = bitcast i64* %XAX to i32*, !mcsema_real_eip !147
  %EAX_val.194 = load i32, i32* %EAX.193, !mcsema_real_eip !147
  %962 = ptrtoint i64* %961 to i64, !mcsema_real_eip !147
  %963 = inttoptr i64 %962 to i32*, !mcsema_real_eip !147
  store i32 %EAX_val.194, i32* %963, !mcsema_real_eip !147
  br label %block_0x2c8, !mcsema_real_eip !148

block_0x24f:                                      ; preds = %block_0x105
  %RBP_val.195 = load i64, i64* %XBP, !mcsema_real_eip !149
  %964 = add i64 %RBP_val.195, -8, !mcsema_real_eip !149
  %965 = inttoptr i64 %964 to i64*, !mcsema_real_eip !149
  %966 = ptrtoint i64* %965 to i64, !mcsema_real_eip !149
  %967 = inttoptr i64 %966 to i32*, !mcsema_real_eip !149
  %968 = load i32, i32* %967, !mcsema_real_eip !149
  %969 = zext i32 %968 to i64, !mcsema_real_eip !149
  store i64 %969, i64* %XAX, !mcsema_real_eip !149
  %EAX.196 = bitcast i64* %XAX to i32*, !mcsema_real_eip !150
  %EAX_val.197 = load i32, i32* %EAX.196, !mcsema_real_eip !150
  %970 = add i32 74636, %EAX_val.197, !mcsema_real_eip !150
  %971 = xor i32 %970, %EAX_val.197, !mcsema_real_eip !150
  %972 = xor i32 %971, 74636, !mcsema_real_eip !150
  %973 = and i32 %972, 16, !mcsema_real_eip !150
  %974 = icmp ne i32 %973, 0, !mcsema_real_eip !150
  store i1 %974, i1* %AF, !mcsema_real_eip !150
  %975 = lshr i32 %970, 31, !mcsema_real_eip !150
  %976 = trunc i32 %975 to i1, !mcsema_real_eip !150
  store i1 %976, i1* %SF, !mcsema_real_eip !150
  %977 = icmp eq i32 %970, 0, !mcsema_real_eip !150
  store i1 %977, i1* %ZF, !mcsema_real_eip !150
  %978 = xor i32 %EAX_val.197, 74636, !mcsema_real_eip !150
  %979 = xor i32 %978, -1, !mcsema_real_eip !150
  %980 = xor i32 %EAX_val.197, %970, !mcsema_real_eip !150
  %981 = and i32 %979, %980, !mcsema_real_eip !150
  %982 = lshr i32 %981, 31, !mcsema_real_eip !150
  %983 = and i32 %982, 1, !mcsema_real_eip !150
  %984 = trunc i32 %983 to i1, !mcsema_real_eip !150
  store i1 %984, i1* %OF, !mcsema_real_eip !150
  %985 = trunc i32 %970 to i8, !mcsema_real_eip !150
  %986 = call i8 @llvm.ctpop.i8(i8 %985), !mcsema_real_eip !150
  %987 = trunc i8 %986 to i1, !mcsema_real_eip !150
  %988 = xor i1 %987, true, !mcsema_real_eip !150
  store i1 %988, i1* %PF, !mcsema_real_eip !150
  %989 = icmp ult i32 %970, %EAX_val.197, !mcsema_real_eip !150
  store i1 %989, i1* %CF, !mcsema_real_eip !150
  %990 = zext i32 %970 to i64, !mcsema_real_eip !150
  store i64 %990, i64* %XAX, !mcsema_real_eip !150
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !151
  %991 = add i64 %RBP_val.198, -8, !mcsema_real_eip !151
  %992 = inttoptr i64 %991 to i64*, !mcsema_real_eip !151
  %EAX.199 = bitcast i64* %XAX to i32*, !mcsema_real_eip !151
  %EAX_val.200 = load i32, i32* %EAX.199, !mcsema_real_eip !151
  %993 = ptrtoint i64* %992 to i64, !mcsema_real_eip !151
  %994 = inttoptr i64 %993 to i32*, !mcsema_real_eip !151
  store i32 %EAX_val.200, i32* %994, !mcsema_real_eip !151
  br label %block_0x2c8, !mcsema_real_eip !152

block_0x25f:                                      ; preds = %block_0x11b
  %RBP_val.201 = load i64, i64* %XBP, !mcsema_real_eip !153
  %995 = add i64 %RBP_val.201, -8, !mcsema_real_eip !153
  %996 = inttoptr i64 %995 to i64*, !mcsema_real_eip !153
  %997 = ptrtoint i64* %996 to i64, !mcsema_real_eip !153
  %998 = inttoptr i64 %997 to i32*, !mcsema_real_eip !153
  %999 = load i32, i32* %998, !mcsema_real_eip !153
  %1000 = zext i32 %999 to i64, !mcsema_real_eip !153
  store i64 %1000, i64* %XAX, !mcsema_real_eip !153
  %EAX.202 = bitcast i64* %XAX to i32*, !mcsema_real_eip !154
  %EAX_val.203 = load i32, i32* %EAX.202, !mcsema_real_eip !154
  %1001 = add i32 74637, %EAX_val.203, !mcsema_real_eip !154
  %1002 = xor i32 %1001, %EAX_val.203, !mcsema_real_eip !154
  %1003 = xor i32 %1002, 74637, !mcsema_real_eip !154
  %1004 = and i32 %1003, 16, !mcsema_real_eip !154
  %1005 = icmp ne i32 %1004, 0, !mcsema_real_eip !154
  store i1 %1005, i1* %AF, !mcsema_real_eip !154
  %1006 = lshr i32 %1001, 31, !mcsema_real_eip !154
  %1007 = trunc i32 %1006 to i1, !mcsema_real_eip !154
  store i1 %1007, i1* %SF, !mcsema_real_eip !154
  %1008 = icmp eq i32 %1001, 0, !mcsema_real_eip !154
  store i1 %1008, i1* %ZF, !mcsema_real_eip !154
  %1009 = xor i32 %EAX_val.203, 74637, !mcsema_real_eip !154
  %1010 = xor i32 %1009, -1, !mcsema_real_eip !154
  %1011 = xor i32 %EAX_val.203, %1001, !mcsema_real_eip !154
  %1012 = and i32 %1010, %1011, !mcsema_real_eip !154
  %1013 = lshr i32 %1012, 31, !mcsema_real_eip !154
  %1014 = and i32 %1013, 1, !mcsema_real_eip !154
  %1015 = trunc i32 %1014 to i1, !mcsema_real_eip !154
  store i1 %1015, i1* %OF, !mcsema_real_eip !154
  %1016 = trunc i32 %1001 to i8, !mcsema_real_eip !154
  %1017 = call i8 @llvm.ctpop.i8(i8 %1016), !mcsema_real_eip !154
  %1018 = trunc i8 %1017 to i1, !mcsema_real_eip !154
  %1019 = xor i1 %1018, true, !mcsema_real_eip !154
  store i1 %1019, i1* %PF, !mcsema_real_eip !154
  %1020 = icmp ult i32 %1001, %EAX_val.203, !mcsema_real_eip !154
  store i1 %1020, i1* %CF, !mcsema_real_eip !154
  %1021 = zext i32 %1001 to i64, !mcsema_real_eip !154
  store i64 %1021, i64* %XAX, !mcsema_real_eip !154
  %RBP_val.204 = load i64, i64* %XBP, !mcsema_real_eip !155
  %1022 = add i64 %RBP_val.204, -8, !mcsema_real_eip !155
  %1023 = inttoptr i64 %1022 to i64*, !mcsema_real_eip !155
  %EAX.205 = bitcast i64* %XAX to i32*, !mcsema_real_eip !155
  %EAX_val.206 = load i32, i32* %EAX.205, !mcsema_real_eip !155
  %1024 = ptrtoint i64* %1023 to i64, !mcsema_real_eip !155
  %1025 = inttoptr i64 %1024 to i32*, !mcsema_real_eip !155
  store i32 %EAX_val.206, i32* %1025, !mcsema_real_eip !155
  br label %block_0x2c8, !mcsema_real_eip !156

block_0x26f:                                      ; preds = %block_0x131
  %RBP_val.207 = load i64, i64* %XBP, !mcsema_real_eip !157
  %1026 = add i64 %RBP_val.207, -8, !mcsema_real_eip !157
  %1027 = inttoptr i64 %1026 to i64*, !mcsema_real_eip !157
  %1028 = ptrtoint i64* %1027 to i64, !mcsema_real_eip !157
  %1029 = inttoptr i64 %1028 to i32*, !mcsema_real_eip !157
  %1030 = load i32, i32* %1029, !mcsema_real_eip !157
  %1031 = zext i32 %1030 to i64, !mcsema_real_eip !157
  store i64 %1031, i64* %XAX, !mcsema_real_eip !157
  %EAX.208 = bitcast i64* %XAX to i32*, !mcsema_real_eip !158
  %EAX_val.209 = load i32, i32* %EAX.208, !mcsema_real_eip !158
  %1032 = add i32 74639, %EAX_val.209, !mcsema_real_eip !158
  %1033 = xor i32 %1032, %EAX_val.209, !mcsema_real_eip !158
  %1034 = xor i32 %1033, 74639, !mcsema_real_eip !158
  %1035 = and i32 %1034, 16, !mcsema_real_eip !158
  %1036 = icmp ne i32 %1035, 0, !mcsema_real_eip !158
  store i1 %1036, i1* %AF, !mcsema_real_eip !158
  %1037 = lshr i32 %1032, 31, !mcsema_real_eip !158
  %1038 = trunc i32 %1037 to i1, !mcsema_real_eip !158
  store i1 %1038, i1* %SF, !mcsema_real_eip !158
  %1039 = icmp eq i32 %1032, 0, !mcsema_real_eip !158
  store i1 %1039, i1* %ZF, !mcsema_real_eip !158
  %1040 = xor i32 %EAX_val.209, 74639, !mcsema_real_eip !158
  %1041 = xor i32 %1040, -1, !mcsema_real_eip !158
  %1042 = xor i32 %EAX_val.209, %1032, !mcsema_real_eip !158
  %1043 = and i32 %1041, %1042, !mcsema_real_eip !158
  %1044 = lshr i32 %1043, 31, !mcsema_real_eip !158
  %1045 = and i32 %1044, 1, !mcsema_real_eip !158
  %1046 = trunc i32 %1045 to i1, !mcsema_real_eip !158
  store i1 %1046, i1* %OF, !mcsema_real_eip !158
  %1047 = trunc i32 %1032 to i8, !mcsema_real_eip !158
  %1048 = call i8 @llvm.ctpop.i8(i8 %1047), !mcsema_real_eip !158
  %1049 = trunc i8 %1048 to i1, !mcsema_real_eip !158
  %1050 = xor i1 %1049, true, !mcsema_real_eip !158
  store i1 %1050, i1* %PF, !mcsema_real_eip !158
  %1051 = icmp ult i32 %1032, %EAX_val.209, !mcsema_real_eip !158
  store i1 %1051, i1* %CF, !mcsema_real_eip !158
  %1052 = zext i32 %1032 to i64, !mcsema_real_eip !158
  store i64 %1052, i64* %XAX, !mcsema_real_eip !158
  %RBP_val.210 = load i64, i64* %XBP, !mcsema_real_eip !159
  %1053 = add i64 %RBP_val.210, -8, !mcsema_real_eip !159
  %1054 = inttoptr i64 %1053 to i64*, !mcsema_real_eip !159
  %EAX.211 = bitcast i64* %XAX to i32*, !mcsema_real_eip !159
  %EAX_val.212 = load i32, i32* %EAX.211, !mcsema_real_eip !159
  %1055 = ptrtoint i64* %1054 to i64, !mcsema_real_eip !159
  %1056 = inttoptr i64 %1055 to i32*, !mcsema_real_eip !159
  store i32 %EAX_val.212, i32* %1056, !mcsema_real_eip !159
  br label %block_0x2c8, !mcsema_real_eip !160

block_0x27f:                                      ; preds = %block_0x147
  %RBP_val.213 = load i64, i64* %XBP, !mcsema_real_eip !161
  %1057 = add i64 %RBP_val.213, -8, !mcsema_real_eip !161
  %1058 = inttoptr i64 %1057 to i64*, !mcsema_real_eip !161
  %1059 = ptrtoint i64* %1058 to i64, !mcsema_real_eip !161
  %1060 = inttoptr i64 %1059 to i32*, !mcsema_real_eip !161
  %1061 = load i32, i32* %1060, !mcsema_real_eip !161
  %1062 = zext i32 %1061 to i64, !mcsema_real_eip !161
  store i64 %1062, i64* %XAX, !mcsema_real_eip !161
  %EAX.214 = bitcast i64* %XAX to i32*, !mcsema_real_eip !162
  %EAX_val.215 = load i32, i32* %EAX.214, !mcsema_real_eip !162
  %1063 = add i32 74640, %EAX_val.215, !mcsema_real_eip !162
  %1064 = xor i32 %1063, %EAX_val.215, !mcsema_real_eip !162
  %1065 = xor i32 %1064, 74640, !mcsema_real_eip !162
  %1066 = and i32 %1065, 16, !mcsema_real_eip !162
  %1067 = icmp ne i32 %1066, 0, !mcsema_real_eip !162
  store i1 %1067, i1* %AF, !mcsema_real_eip !162
  %1068 = lshr i32 %1063, 31, !mcsema_real_eip !162
  %1069 = trunc i32 %1068 to i1, !mcsema_real_eip !162
  store i1 %1069, i1* %SF, !mcsema_real_eip !162
  %1070 = icmp eq i32 %1063, 0, !mcsema_real_eip !162
  store i1 %1070, i1* %ZF, !mcsema_real_eip !162
  %1071 = xor i32 %EAX_val.215, 74640, !mcsema_real_eip !162
  %1072 = xor i32 %1071, -1, !mcsema_real_eip !162
  %1073 = xor i32 %EAX_val.215, %1063, !mcsema_real_eip !162
  %1074 = and i32 %1072, %1073, !mcsema_real_eip !162
  %1075 = lshr i32 %1074, 31, !mcsema_real_eip !162
  %1076 = and i32 %1075, 1, !mcsema_real_eip !162
  %1077 = trunc i32 %1076 to i1, !mcsema_real_eip !162
  store i1 %1077, i1* %OF, !mcsema_real_eip !162
  %1078 = trunc i32 %1063 to i8, !mcsema_real_eip !162
  %1079 = call i8 @llvm.ctpop.i8(i8 %1078), !mcsema_real_eip !162
  %1080 = trunc i8 %1079 to i1, !mcsema_real_eip !162
  %1081 = xor i1 %1080, true, !mcsema_real_eip !162
  store i1 %1081, i1* %PF, !mcsema_real_eip !162
  %1082 = icmp ult i32 %1063, %EAX_val.215, !mcsema_real_eip !162
  store i1 %1082, i1* %CF, !mcsema_real_eip !162
  %1083 = zext i32 %1063 to i64, !mcsema_real_eip !162
  store i64 %1083, i64* %XAX, !mcsema_real_eip !162
  %RBP_val.216 = load i64, i64* %XBP, !mcsema_real_eip !163
  %1084 = add i64 %RBP_val.216, -8, !mcsema_real_eip !163
  %1085 = inttoptr i64 %1084 to i64*, !mcsema_real_eip !163
  %EAX.217 = bitcast i64* %XAX to i32*, !mcsema_real_eip !163
  %EAX_val.218 = load i32, i32* %EAX.217, !mcsema_real_eip !163
  %1086 = ptrtoint i64* %1085 to i64, !mcsema_real_eip !163
  %1087 = inttoptr i64 %1086 to i32*, !mcsema_real_eip !163
  store i32 %EAX_val.218, i32* %1087, !mcsema_real_eip !163
  br label %block_0x2c8, !mcsema_real_eip !164

block_0x28f:                                      ; preds = %block_0x15d
  %RBP_val.219 = load i64, i64* %XBP, !mcsema_real_eip !165
  %1088 = add i64 %RBP_val.219, -8, !mcsema_real_eip !165
  %1089 = inttoptr i64 %1088 to i64*, !mcsema_real_eip !165
  %1090 = ptrtoint i64* %1089 to i64, !mcsema_real_eip !165
  %1091 = inttoptr i64 %1090 to i32*, !mcsema_real_eip !165
  %1092 = load i32, i32* %1091, !mcsema_real_eip !165
  %1093 = zext i32 %1092 to i64, !mcsema_real_eip !165
  store i64 %1093, i64* %XAX, !mcsema_real_eip !165
  %EAX.220 = bitcast i64* %XAX to i32*, !mcsema_real_eip !166
  %EAX_val.221 = load i32, i32* %EAX.220, !mcsema_real_eip !166
  %1094 = add i32 74641, %EAX_val.221, !mcsema_real_eip !166
  %1095 = xor i32 %1094, %EAX_val.221, !mcsema_real_eip !166
  %1096 = xor i32 %1095, 74641, !mcsema_real_eip !166
  %1097 = and i32 %1096, 16, !mcsema_real_eip !166
  %1098 = icmp ne i32 %1097, 0, !mcsema_real_eip !166
  store i1 %1098, i1* %AF, !mcsema_real_eip !166
  %1099 = lshr i32 %1094, 31, !mcsema_real_eip !166
  %1100 = trunc i32 %1099 to i1, !mcsema_real_eip !166
  store i1 %1100, i1* %SF, !mcsema_real_eip !166
  %1101 = icmp eq i32 %1094, 0, !mcsema_real_eip !166
  store i1 %1101, i1* %ZF, !mcsema_real_eip !166
  %1102 = xor i32 %EAX_val.221, 74641, !mcsema_real_eip !166
  %1103 = xor i32 %1102, -1, !mcsema_real_eip !166
  %1104 = xor i32 %EAX_val.221, %1094, !mcsema_real_eip !166
  %1105 = and i32 %1103, %1104, !mcsema_real_eip !166
  %1106 = lshr i32 %1105, 31, !mcsema_real_eip !166
  %1107 = and i32 %1106, 1, !mcsema_real_eip !166
  %1108 = trunc i32 %1107 to i1, !mcsema_real_eip !166
  store i1 %1108, i1* %OF, !mcsema_real_eip !166
  %1109 = trunc i32 %1094 to i8, !mcsema_real_eip !166
  %1110 = call i8 @llvm.ctpop.i8(i8 %1109), !mcsema_real_eip !166
  %1111 = trunc i8 %1110 to i1, !mcsema_real_eip !166
  %1112 = xor i1 %1111, true, !mcsema_real_eip !166
  store i1 %1112, i1* %PF, !mcsema_real_eip !166
  %1113 = icmp ult i32 %1094, %EAX_val.221, !mcsema_real_eip !166
  store i1 %1113, i1* %CF, !mcsema_real_eip !166
  %1114 = zext i32 %1094 to i64, !mcsema_real_eip !166
  store i64 %1114, i64* %XAX, !mcsema_real_eip !166
  %RBP_val.222 = load i64, i64* %XBP, !mcsema_real_eip !167
  %1115 = add i64 %RBP_val.222, -8, !mcsema_real_eip !167
  %1116 = inttoptr i64 %1115 to i64*, !mcsema_real_eip !167
  %EAX.223 = bitcast i64* %XAX to i32*, !mcsema_real_eip !167
  %EAX_val.224 = load i32, i32* %EAX.223, !mcsema_real_eip !167
  %1117 = ptrtoint i64* %1116 to i64, !mcsema_real_eip !167
  %1118 = inttoptr i64 %1117 to i32*, !mcsema_real_eip !167
  store i32 %EAX_val.224, i32* %1118, !mcsema_real_eip !167
  br label %block_0x2c8, !mcsema_real_eip !168

block_0x29f:                                      ; preds = %block_0x173
  %RBP_val.225 = load i64, i64* %XBP, !mcsema_real_eip !169
  %1119 = add i64 %RBP_val.225, -8, !mcsema_real_eip !169
  %1120 = inttoptr i64 %1119 to i64*, !mcsema_real_eip !169
  %1121 = ptrtoint i64* %1120 to i64, !mcsema_real_eip !169
  %1122 = inttoptr i64 %1121 to i32*, !mcsema_real_eip !169
  %1123 = load i32, i32* %1122, !mcsema_real_eip !169
  %1124 = zext i32 %1123 to i64, !mcsema_real_eip !169
  store i64 %1124, i64* %XAX, !mcsema_real_eip !169
  %EAX.226 = bitcast i64* %XAX to i32*, !mcsema_real_eip !170
  %EAX_val.227 = load i32, i32* %EAX.226, !mcsema_real_eip !170
  %1125 = add i32 74642, %EAX_val.227, !mcsema_real_eip !170
  %1126 = xor i32 %1125, %EAX_val.227, !mcsema_real_eip !170
  %1127 = xor i32 %1126, 74642, !mcsema_real_eip !170
  %1128 = and i32 %1127, 16, !mcsema_real_eip !170
  %1129 = icmp ne i32 %1128, 0, !mcsema_real_eip !170
  store i1 %1129, i1* %AF, !mcsema_real_eip !170
  %1130 = lshr i32 %1125, 31, !mcsema_real_eip !170
  %1131 = trunc i32 %1130 to i1, !mcsema_real_eip !170
  store i1 %1131, i1* %SF, !mcsema_real_eip !170
  %1132 = icmp eq i32 %1125, 0, !mcsema_real_eip !170
  store i1 %1132, i1* %ZF, !mcsema_real_eip !170
  %1133 = xor i32 %EAX_val.227, 74642, !mcsema_real_eip !170
  %1134 = xor i32 %1133, -1, !mcsema_real_eip !170
  %1135 = xor i32 %EAX_val.227, %1125, !mcsema_real_eip !170
  %1136 = and i32 %1134, %1135, !mcsema_real_eip !170
  %1137 = lshr i32 %1136, 31, !mcsema_real_eip !170
  %1138 = and i32 %1137, 1, !mcsema_real_eip !170
  %1139 = trunc i32 %1138 to i1, !mcsema_real_eip !170
  store i1 %1139, i1* %OF, !mcsema_real_eip !170
  %1140 = trunc i32 %1125 to i8, !mcsema_real_eip !170
  %1141 = call i8 @llvm.ctpop.i8(i8 %1140), !mcsema_real_eip !170
  %1142 = trunc i8 %1141 to i1, !mcsema_real_eip !170
  %1143 = xor i1 %1142, true, !mcsema_real_eip !170
  store i1 %1143, i1* %PF, !mcsema_real_eip !170
  %1144 = icmp ult i32 %1125, %EAX_val.227, !mcsema_real_eip !170
  store i1 %1144, i1* %CF, !mcsema_real_eip !170
  %1145 = zext i32 %1125 to i64, !mcsema_real_eip !170
  store i64 %1145, i64* %XAX, !mcsema_real_eip !170
  %RBP_val.228 = load i64, i64* %XBP, !mcsema_real_eip !171
  %1146 = add i64 %RBP_val.228, -8, !mcsema_real_eip !171
  %1147 = inttoptr i64 %1146 to i64*, !mcsema_real_eip !171
  %EAX.229 = bitcast i64* %XAX to i32*, !mcsema_real_eip !171
  %EAX_val.230 = load i32, i32* %EAX.229, !mcsema_real_eip !171
  %1148 = ptrtoint i64* %1147 to i64, !mcsema_real_eip !171
  %1149 = inttoptr i64 %1148 to i32*, !mcsema_real_eip !171
  store i32 %EAX_val.230, i32* %1149, !mcsema_real_eip !171
  br label %block_0x2c8, !mcsema_real_eip !172

block_0x2af:                                      ; preds = %block_0x189
  %RBP_val.231 = load i64, i64* %XBP, !mcsema_real_eip !173
  %1150 = add i64 %RBP_val.231, -8, !mcsema_real_eip !173
  %1151 = inttoptr i64 %1150 to i64*, !mcsema_real_eip !173
  %1152 = ptrtoint i64* %1151 to i64, !mcsema_real_eip !173
  %1153 = inttoptr i64 %1152 to i32*, !mcsema_real_eip !173
  %1154 = load i32, i32* %1153, !mcsema_real_eip !173
  %1155 = zext i32 %1154 to i64, !mcsema_real_eip !173
  store i64 %1155, i64* %XAX, !mcsema_real_eip !173
  %EAX.232 = bitcast i64* %XAX to i32*, !mcsema_real_eip !174
  %EAX_val.233 = load i32, i32* %EAX.232, !mcsema_real_eip !174
  %1156 = add i32 74643, %EAX_val.233, !mcsema_real_eip !174
  %1157 = xor i32 %1156, %EAX_val.233, !mcsema_real_eip !174
  %1158 = xor i32 %1157, 74643, !mcsema_real_eip !174
  %1159 = and i32 %1158, 16, !mcsema_real_eip !174
  %1160 = icmp ne i32 %1159, 0, !mcsema_real_eip !174
  store i1 %1160, i1* %AF, !mcsema_real_eip !174
  %1161 = lshr i32 %1156, 31, !mcsema_real_eip !174
  %1162 = trunc i32 %1161 to i1, !mcsema_real_eip !174
  store i1 %1162, i1* %SF, !mcsema_real_eip !174
  %1163 = icmp eq i32 %1156, 0, !mcsema_real_eip !174
  store i1 %1163, i1* %ZF, !mcsema_real_eip !174
  %1164 = xor i32 %EAX_val.233, 74643, !mcsema_real_eip !174
  %1165 = xor i32 %1164, -1, !mcsema_real_eip !174
  %1166 = xor i32 %EAX_val.233, %1156, !mcsema_real_eip !174
  %1167 = and i32 %1165, %1166, !mcsema_real_eip !174
  %1168 = lshr i32 %1167, 31, !mcsema_real_eip !174
  %1169 = and i32 %1168, 1, !mcsema_real_eip !174
  %1170 = trunc i32 %1169 to i1, !mcsema_real_eip !174
  store i1 %1170, i1* %OF, !mcsema_real_eip !174
  %1171 = trunc i32 %1156 to i8, !mcsema_real_eip !174
  %1172 = call i8 @llvm.ctpop.i8(i8 %1171), !mcsema_real_eip !174
  %1173 = trunc i8 %1172 to i1, !mcsema_real_eip !174
  %1174 = xor i1 %1173, true, !mcsema_real_eip !174
  store i1 %1174, i1* %PF, !mcsema_real_eip !174
  %1175 = icmp ult i32 %1156, %EAX_val.233, !mcsema_real_eip !174
  store i1 %1175, i1* %CF, !mcsema_real_eip !174
  %1176 = zext i32 %1156 to i64, !mcsema_real_eip !174
  store i64 %1176, i64* %XAX, !mcsema_real_eip !174
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !175
  %1177 = add i64 %RBP_val.234, -8, !mcsema_real_eip !175
  %1178 = inttoptr i64 %1177 to i64*, !mcsema_real_eip !175
  %EAX.235 = bitcast i64* %XAX to i32*, !mcsema_real_eip !175
  %EAX_val.236 = load i32, i32* %EAX.235, !mcsema_real_eip !175
  %1179 = ptrtoint i64* %1178 to i64, !mcsema_real_eip !175
  %1180 = inttoptr i64 %1179 to i32*, !mcsema_real_eip !175
  store i32 %EAX_val.236, i32* %1180, !mcsema_real_eip !175
  br label %block_0x2c8, !mcsema_real_eip !176

block_0x2bf:                                      ; preds = %block_0x19a
  %RBP_val.237 = load i64, i64* %XBP, !mcsema_real_eip !177
  %1181 = add i64 %RBP_val.237, -8, !mcsema_real_eip !177
  %1182 = inttoptr i64 %1181 to i64*, !mcsema_real_eip !177
  %1183 = ptrtoint i64* %1182 to i64, !mcsema_real_eip !177
  %1184 = inttoptr i64 %1183 to i32*, !mcsema_real_eip !177
  %1185 = load i32, i32* %1184, !mcsema_real_eip !177
  %1186 = zext i32 %1185 to i64, !mcsema_real_eip !177
  store i64 %1186, i64* %XAX, !mcsema_real_eip !177
  %EAX.238 = bitcast i64* %XAX to i32*, !mcsema_real_eip !178
  %EAX_val.239 = load i32, i32* %EAX.238, !mcsema_real_eip !178
  %1187 = add i32 0, %EAX_val.239, !mcsema_real_eip !178
  %1188 = xor i32 %1187, %EAX_val.239, !mcsema_real_eip !178
  %1189 = xor i32 %1188, 0, !mcsema_real_eip !178
  %1190 = and i32 %1189, 16, !mcsema_real_eip !178
  %1191 = icmp ne i32 %1190, 0, !mcsema_real_eip !178
  store i1 %1191, i1* %AF, !mcsema_real_eip !178
  %1192 = lshr i32 %1187, 31, !mcsema_real_eip !178
  %1193 = trunc i32 %1192 to i1, !mcsema_real_eip !178
  store i1 %1193, i1* %SF, !mcsema_real_eip !178
  %1194 = icmp eq i32 %1187, 0, !mcsema_real_eip !178
  store i1 %1194, i1* %ZF, !mcsema_real_eip !178
  %1195 = xor i32 %EAX_val.239, 0, !mcsema_real_eip !178
  %1196 = xor i32 %1195, -1, !mcsema_real_eip !178
  %1197 = xor i32 %EAX_val.239, %1187, !mcsema_real_eip !178
  %1198 = and i32 %1196, %1197, !mcsema_real_eip !178
  %1199 = lshr i32 %1198, 31, !mcsema_real_eip !178
  %1200 = and i32 %1199, 1, !mcsema_real_eip !178
  %1201 = trunc i32 %1200 to i1, !mcsema_real_eip !178
  store i1 %1201, i1* %OF, !mcsema_real_eip !178
  %1202 = trunc i32 %1187 to i8, !mcsema_real_eip !178
  %1203 = call i8 @llvm.ctpop.i8(i8 %1202), !mcsema_real_eip !178
  %1204 = trunc i8 %1203 to i1, !mcsema_real_eip !178
  %1205 = xor i1 %1204, true, !mcsema_real_eip !178
  store i1 %1205, i1* %PF, !mcsema_real_eip !178
  %1206 = icmp ult i32 %1187, %EAX_val.239, !mcsema_real_eip !178
  store i1 %1206, i1* %CF, !mcsema_real_eip !178
  %1207 = zext i32 %1187 to i64, !mcsema_real_eip !178
  store i64 %1207, i64* %XAX, !mcsema_real_eip !178
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !179
  %1208 = add i64 %RBP_val.240, -8, !mcsema_real_eip !179
  %1209 = inttoptr i64 %1208 to i64*, !mcsema_real_eip !179
  %EAX.241 = bitcast i64* %XAX to i32*, !mcsema_real_eip !179
  %EAX_val.242 = load i32, i32* %EAX.241, !mcsema_real_eip !179
  %1210 = ptrtoint i64* %1209 to i64, !mcsema_real_eip !179
  %1211 = inttoptr i64 %1210 to i32*, !mcsema_real_eip !179
  store i32 %EAX_val.242, i32* %1211, !mcsema_real_eip !179
  br label %block_0x2c8, !mcsema_real_eip !180

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %RBP_val.243 = load i64, i64* %XBP, !mcsema_real_eip !180
  %1212 = add i64 %RBP_val.243, -8, !mcsema_real_eip !180
  %1213 = inttoptr i64 %1212 to i64*, !mcsema_real_eip !180
  %1214 = ptrtoint i64* %1213 to i64, !mcsema_real_eip !180
  %1215 = inttoptr i64 %1214 to i32*, !mcsema_real_eip !180
  %1216 = load i32, i32* %1215, !mcsema_real_eip !180
  %1217 = zext i32 %1216 to i64, !mcsema_real_eip !180
  store i64 %1217, i64* %XAX, !mcsema_real_eip !180
  %RSP_val.244 = load i64, i64* %XSP, !mcsema_real_eip !181
  %1218 = inttoptr i64 %RSP_val.244 to i64*, !mcsema_real_eip !181
  %1219 = load i64, i64* %1218, !mcsema_real_eip !181
  store i64 %1219, i64* %XBP, !mcsema_real_eip !181
  %1220 = add i64 %RSP_val.244, 8, !mcsema_real_eip !181
  store i64 %1220, i64* %XSP, !mcsema_real_eip !181
  %RSP_val.245 = load i64, i64* %XSP, !mcsema_real_eip !182
  %1221 = add i64 %RSP_val.245, 8, !mcsema_real_eip !182
  %1222 = inttoptr i64 %RSP_val.245 to i64*, !mcsema_real_eip !182
  %1223 = load i64, i64* %1222, !mcsema_real_eip !182
  store i64 %1223, i64* %XIP, !mcsema_real_eip !182
  store i64 %1221, i64* %XSP, !mcsema_real_eip !182
  ret void, !mcsema_real_eip !182
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
!11 = !{i64 33}
!12 = !{i64 36}
!13 = !{i64 39}
!14 = !{i64 42}
!15 = !{i64 48}
!16 = !{i64 53}
!17 = !{i64 56}
!18 = !{i64 59}
!19 = !{i64 62}
!20 = !{i64 68}
!21 = !{i64 73}
!22 = !{i64 76}
!23 = !{i64 79}
!24 = !{i64 82}
!25 = !{i64 88}
!26 = !{i64 93}
!27 = !{i64 96}
!28 = !{i64 99}
!29 = !{i64 102}
!30 = !{i64 108}
!31 = !{i64 113}
!32 = !{i64 116}
!33 = !{i64 119}
!34 = !{i64 122}
!35 = !{i64 128}
!36 = !{i64 133}
!37 = !{i64 136}
!38 = !{i64 139}
!39 = !{i64 142}
!40 = !{i64 148}
!41 = !{i64 153}
!42 = !{i64 156}
!43 = !{i64 159}
!44 = !{i64 162}
!45 = !{i64 168}
!46 = !{i64 173}
!47 = !{i64 176}
!48 = !{i64 181}
!49 = !{i64 184}
!50 = !{i64 190}
!51 = !{i64 195}
!52 = !{i64 198}
!53 = !{i64 203}
!54 = !{i64 206}
!55 = !{i64 212}
!56 = !{i64 217}
!57 = !{i64 220}
!58 = !{i64 225}
!59 = !{i64 228}
!60 = !{i64 234}
!61 = !{i64 239}
!62 = !{i64 242}
!63 = !{i64 247}
!64 = !{i64 250}
!65 = !{i64 256}
!66 = !{i64 261}
!67 = !{i64 264}
!68 = !{i64 269}
!69 = !{i64 272}
!70 = !{i64 278}
!71 = !{i64 283}
!72 = !{i64 286}
!73 = !{i64 291}
!74 = !{i64 294}
!75 = !{i64 300}
!76 = !{i64 305}
!77 = !{i64 308}
!78 = !{i64 313}
!79 = !{i64 316}
!80 = !{i64 322}
!81 = !{i64 327}
!82 = !{i64 330}
!83 = !{i64 335}
!84 = !{i64 338}
!85 = !{i64 344}
!86 = !{i64 349}
!87 = !{i64 352}
!88 = !{i64 357}
!89 = !{i64 360}
!90 = !{i64 366}
!91 = !{i64 371}
!92 = !{i64 374}
!93 = !{i64 379}
!94 = !{i64 382}
!95 = !{i64 388}
!96 = !{i64 393}
!97 = !{i64 396}
!98 = !{i64 401}
!99 = !{i64 404}
!100 = !{i64 410}
!101 = !{i64 415}
!102 = !{i64 418}
!103 = !{i64 421}
!104 = !{i64 424}
!105 = !{i64 429}
!106 = !{i64 432}
!107 = !{i64 435}
!108 = !{i64 438}
!109 = !{i64 443}
!110 = !{i64 446}
!111 = !{i64 449}
!112 = !{i64 452}
!113 = !{i64 457}
!114 = !{i64 460}
!115 = !{i64 463}
!116 = !{i64 466}
!117 = !{i64 471}
!118 = !{i64 474}
!119 = !{i64 477}
!120 = !{i64 480}
!121 = !{i64 485}
!122 = !{i64 488}
!123 = !{i64 491}
!124 = !{i64 494}
!125 = !{i64 499}
!126 = !{i64 502}
!127 = !{i64 505}
!128 = !{i64 508}
!129 = !{i64 513}
!130 = !{i64 516}
!131 = !{i64 519}
!132 = !{i64 522}
!133 = !{i64 527}
!134 = !{i64 530}
!135 = !{i64 535}
!136 = !{i64 538}
!137 = !{i64 543}
!138 = !{i64 546}
!139 = !{i64 551}
!140 = !{i64 554}
!141 = !{i64 559}
!142 = !{i64 562}
!143 = !{i64 567}
!144 = !{i64 570}
!145 = !{i64 575}
!146 = !{i64 578}
!147 = !{i64 583}
!148 = !{i64 586}
!149 = !{i64 591}
!150 = !{i64 594}
!151 = !{i64 599}
!152 = !{i64 602}
!153 = !{i64 607}
!154 = !{i64 610}
!155 = !{i64 615}
!156 = !{i64 618}
!157 = !{i64 623}
!158 = !{i64 626}
!159 = !{i64 631}
!160 = !{i64 634}
!161 = !{i64 639}
!162 = !{i64 642}
!163 = !{i64 647}
!164 = !{i64 650}
!165 = !{i64 655}
!166 = !{i64 658}
!167 = !{i64 663}
!168 = !{i64 666}
!169 = !{i64 671}
!170 = !{i64 674}
!171 = !{i64 679}
!172 = !{i64 682}
!173 = !{i64 687}
!174 = !{i64 690}
!175 = !{i64 695}
!176 = !{i64 698}
!177 = !{i64 703}
!178 = !{i64 706}
!179 = !{i64 709}
!180 = !{i64 712}
!181 = !{i64 715}
!182 = !{i64 716}
