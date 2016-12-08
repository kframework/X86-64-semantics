; ModuleID = 'Output/test_19.clang.bc'
source_filename = "Output/test_19.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_1;"
module asm "  .globl start;"
module asm "  .type start,@function"
module asm "start:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_1(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size start,0b-start;"
module asm "  .cfi_endproc;"

%0 = type <{ [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x2c = internal global %0 zeroinitializer, align 64

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
define x86_64_sysvcc void @sub_1(%RegState*) #1 {
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
  br label %block_0x1, !mcsema_real_eip !2

block_0x1:                                        ; preds = %entry
  %1 = getelementptr %0, %0* @data_0x2c, i64 0, i32 0, !mcsema_real_eip !2
  %2 = ptrtoint [24 x i8]* %1 to i64, !mcsema_real_eip !2
  %3 = add i64 %2, 7, !mcsema_real_eip !2
  %4 = add i64 0, %3, !mcsema_real_eip !2
  %5 = inttoptr i64 %4 to i64*, !mcsema_real_eip !2
  %6 = ptrtoint i64* %5 to i64, !mcsema_real_eip !2
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !2
  store i32 35, i32* %7, !mcsema_real_eip !2
  %8 = getelementptr %0, %0* @data_0x2c, i64 0, i32 0, !mcsema_real_eip !3
  %9 = ptrtoint [24 x i8]* %8 to i64, !mcsema_real_eip !3
  %10 = add i64 %9, 17, !mcsema_real_eip !3
  %11 = add i64 0, %10, !mcsema_real_eip !3
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !3
  %13 = ptrtoint i64* %12 to i64, !mcsema_real_eip !3
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !3
  store i32 27, i32* %14, !mcsema_real_eip !3
  %15 = getelementptr %0, %0* @data_0x2c, i64 0, i32 0, !mcsema_real_eip !4
  %16 = ptrtoint [24 x i8]* %15 to i64, !mcsema_real_eip !4
  %17 = add i64 %16, 23, !mcsema_real_eip !4
  %18 = add i64 0, %17, !mcsema_real_eip !4
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !4
  %20 = ptrtoint i64* %19 to i64, !mcsema_real_eip !4
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !4
  store i32 35, i32* %21, !mcsema_real_eip !4
  %22 = getelementptr %0, %0* @data_0x2c, i64 0, i32 0, !mcsema_real_eip !5
  %23 = ptrtoint [24 x i8]* %22 to i64, !mcsema_real_eip !5
  %24 = add i64 %23, 23, !mcsema_real_eip !5
  %25 = add i64 0, %24, !mcsema_real_eip !5
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !5
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !5
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !5
  store i32 35, i32* %28, !mcsema_real_eip !5
  %29 = getelementptr %0, %0* @data_0x2c, i64 0, i32 0, !mcsema_real_eip !6
  %30 = ptrtoint [24 x i8]* %29 to i64, !mcsema_real_eip !6
  %31 = add i64 %30, 23, !mcsema_real_eip !6
  %32 = add i64 0, %31, !mcsema_real_eip !6
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !6
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !6
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !6
  store i32 59, i32* %35, !mcsema_real_eip !6
  %36 = getelementptr %0, %0* @data_0x2c, i64 0, i32 0, !mcsema_real_eip !7
  %37 = ptrtoint [24 x i8]* %36 to i64, !mcsema_real_eip !7
  %38 = add i64 %37, 23, !mcsema_real_eip !7
  %39 = add i64 0, %38, !mcsema_real_eip !7
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !7
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !7
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %42, !mcsema_real_eip !7
  %EAX.0 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.1 = load i32, i32* %EAX.0, !mcsema_real_eip !8
  %EAX.2 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.3 = load i32, i32* %EAX.2, !mcsema_real_eip !8
  %43 = xor i32 %EAX_val.1, %EAX_val.3, !mcsema_real_eip !8
  store i1 false, i1* %CF, !mcsema_real_eip !8
  store i1 false, i1* %OF, !mcsema_real_eip !8
  %44 = lshr i32 %43, 31, !mcsema_real_eip !8
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !8
  store i1 %45, i1* %SF, !mcsema_real_eip !8
  %46 = icmp eq i32 %43, 0, !mcsema_real_eip !8
  store i1 %46, i1* %ZF, !mcsema_real_eip !8
  %47 = trunc i32 %43 to i8, !mcsema_real_eip !8
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !8
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !8
  %50 = xor i1 %49, true, !mcsema_real_eip !8
  store i1 %50, i1* %PF, !mcsema_real_eip !8
  store i1 undef, i1* %AF, !mcsema_real_eip !8
  %51 = zext i32 %43 to i64, !mcsema_real_eip !8
  store i64 %51, i64* %XAX, !mcsema_real_eip !8
  %52 = zext i32 35 to i64, !mcsema_real_eip !9
  store i64 %52, i64* %XAX, !mcsema_real_eip !9
  %53 = load i1, i1* %CF, !mcsema_real_eip !10
  %54 = zext i1 %53 to i64, !mcsema_real_eip !10
  %55 = load i1, i1* %PF, !mcsema_real_eip !10
  %56 = zext i1 %55 to i64, !mcsema_real_eip !10
  %57 = load i1, i1* %AF, !mcsema_real_eip !10
  %58 = zext i1 %57 to i64, !mcsema_real_eip !10
  %59 = load i1, i1* %ZF, !mcsema_real_eip !10
  %60 = zext i1 %59 to i64, !mcsema_real_eip !10
  %61 = load i1, i1* %SF, !mcsema_real_eip !10
  %62 = zext i1 %61 to i64, !mcsema_real_eip !10
  %63 = load i1, i1* %DF, !mcsema_real_eip !10
  %64 = zext i1 %63 to i64, !mcsema_real_eip !10
  %65 = load i1, i1* %OF, !mcsema_real_eip !10
  %66 = zext i1 %65 to i64, !mcsema_real_eip !10
  %67 = or i64 514, %54, !mcsema_real_eip !10
  %68 = shl i64 %56, 2, !mcsema_real_eip !10
  %69 = or i64 %67, %68, !mcsema_real_eip !10
  %70 = shl i64 %58, 4, !mcsema_real_eip !10
  %71 = or i64 %69, %70, !mcsema_real_eip !10
  %72 = shl i64 %60, 6, !mcsema_real_eip !10
  %73 = or i64 %71, %72, !mcsema_real_eip !10
  %74 = shl i64 %62, 7, !mcsema_real_eip !10
  %75 = or i64 %73, %74, !mcsema_real_eip !10
  %76 = shl i64 %64, 10, !mcsema_real_eip !10
  %77 = or i64 %75, %76, !mcsema_real_eip !10
  %78 = shl i64 %66, 11, !mcsema_real_eip !10
  %79 = or i64 %77, %78, !mcsema_real_eip !10
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !10
  %80 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !10
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !10
  store i64 %79, i64* %81, !mcsema_real_eip !10
  store i64 %80, i64* %XSP, !mcsema_real_eip !10
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !11
  %82 = inttoptr i64 %RSP_val.5 to i64*, !mcsema_real_eip !11
  %83 = load i64, i64* %82, !mcsema_real_eip !11
  store i64 %83, i64* %XAX, !mcsema_real_eip !11
  %84 = add i64 %RSP_val.5, 8, !mcsema_real_eip !11
  store i64 %84, i64* %XSP, !mcsema_real_eip !11
  %RSP_val.6 = load i64, i64* %XSP, !mcsema_real_eip !12
  %85 = add i64 %RSP_val.6, 8, !mcsema_real_eip !12
  %86 = inttoptr i64 %RSP_val.6 to i64*, !mcsema_real_eip !12
  %87 = load i64, i64* %86, !mcsema_real_eip !12
  store i64 %87, i64* %XIP, !mcsema_real_eip !12
  store i64 %85, i64* %XSP, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @start() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 1}
!3 = !{i64 7}
!4 = !{i64 13}
!5 = !{i64 19}
!6 = !{i64 25}
!7 = !{i64 31}
!8 = !{i64 37}
!9 = !{i64 39}
!10 = !{i64 41}
!11 = !{i64 42}
!12 = !{i64 43}
