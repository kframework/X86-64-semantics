; ModuleID = 'Output/test_22.clang.bc'
source_filename = "Output/test_22.clang.bc"
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
module asm "  .globl timespi;"
module asm "  .type timespi,@function"
module asm "timespi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size timespi,0b-timespi;"
module asm "  .cfi_endproc;"

%0 = type <{ [8 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x20 = internal constant %0 <{ [8 x i8] c"\18-DT\FB!\09@" }>, align 64
@data_0x28 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\1D\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  br label %fpuinst_LD_F80m, !mcsema_real_eip !4

fpuinst_LD_F80m:                                  ; preds = %block_0x0
  %RBP_val.3 = load i64, i64* %XBP, !mcsema_real_eip !4
  %3 = add i64 %RBP_val.3, 16, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %5 = bitcast i64* %4 to x86_fp80*, !mcsema_real_eip !4
  %6 = load x86_fp80, x86_fp80* %5, !mcsema_real_eip !4
  %7 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !4
  %8 = sub i3 %7, 1, !mcsema_real_eip !4
  store i3 %8, i3* %FPU_FLAG_TOP, !mcsema_real_eip !4
  %9 = zext i3 %8 to i32, !mcsema_real_eip !4
  %10 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %9, !mcsema_real_eip !4
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %9, !mcsema_real_eip !4
  %12 = bitcast i8* %11 to i2*, !mcsema_real_eip !4
  %13 = load i2, i2* %12, !mcsema_real_eip !4
  %14 = icmp eq i2 %13, -1, !mcsema_real_eip !4
  br i1 %14, label %fpu_write, label %fpu_exception, !mcsema_real_eip !4

fpu_write:                                        ; preds = %fpu_exception, %fpuinst_LD_F80m
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !4
  store i2 0, i2* %12, !mcsema_real_eip !4
  br label %fpu_write_exit, !mcsema_real_eip !4

fpu_exception:                                    ; preds = %fpuinst_LD_F80m
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !4
  br label %fpu_write, !mcsema_real_eip !4

fpu_write_exit:                                   ; preds = %fpu_write
  store x86_fp80 %6, x86_fp80* %10, !mcsema_real_eip !4
  br label %fpuinst_ST_FP80m, !mcsema_real_eip !5

fpuinst_ST_FP80m:                                 ; preds = %fpu_write_exit
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %15 = add i64 %RBP_val.4, -16, !mcsema_real_eip !5
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !5
  %17 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  %18 = add i3 %17, 0, !mcsema_real_eip !5
  %19 = zext i3 %18 to i32, !mcsema_real_eip !5
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %19, !mcsema_real_eip !5
  %21 = bitcast i8* %20 to i2*, !mcsema_real_eip !5
  %22 = load i2, i2* %21, !mcsema_real_eip !5
  switch i2 %22, label %fpu_read_empty [
    i2 0, label %fpu_read_normal
    i2 1, label %fpu_read_normal
    i2 -2, label %fpu_read_normal
  ], !mcsema_real_eip !5

fpu_read_normal:                                  ; preds = %fpuinst_ST_FP80m, %fpuinst_ST_FP80m, %fpuinst_ST_FP80m
  %23 = zext i3 %18 to i32, !mcsema_real_eip !5
  %24 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %23, !mcsema_real_eip !5
  %25 = load x86_fp80, x86_fp80* %24, !mcsema_real_eip !5
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !5
  br label %fpu_read_continue, !mcsema_real_eip !5

fpu_read_empty:                                   ; preds = %fpuinst_ST_FP80m
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !5
  br label %fpu_read_continue, !mcsema_real_eip !5

fpu_read_continue:                                ; preds = %fpu_read_empty, %fpu_read_normal
  %fpu_switch_phinode = phi x86_fp80 [ %25, %fpu_read_normal ], [ 0xK00000000000000000000, %fpu_read_empty ], !mcsema_real_eip !5
  %26 = bitcast i64* %16 to x86_fp80*, !mcsema_real_eip !5
  store x86_fp80 %fpu_switch_phinode, x86_fp80* %26, !mcsema_real_eip !5
  %27 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  %28 = add i3 %27, 0, !mcsema_real_eip !5
  %29 = zext i3 %28 to i32, !mcsema_real_eip !5
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %29, !mcsema_real_eip !5
  %31 = bitcast i8* %30 to i2*, !mcsema_real_eip !5
  store i2 -1, i2* %31, !mcsema_real_eip !5
  %32 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  %33 = add i3 %32, 1, !mcsema_real_eip !5
  store i3 %33, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  br label %fpuinst_LD_F64m, !mcsema_real_eip !6

fpuinst_LD_F64m:                                  ; preds = %fpu_read_continue
  %34 = getelementptr %0, %0* @data_0x20, i64 0, i32 0, !mcsema_real_eip !6
  %35 = ptrtoint [8 x i8]* %34 to i64, !mcsema_real_eip !6
  %36 = add i64 %35, 0, !mcsema_real_eip !6
  %37 = add i64 0, %36, !mcsema_real_eip !6
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !6
  %39 = bitcast i64* %38 to double*, !mcsema_real_eip !6
  %40 = load double, double* %39, !mcsema_real_eip !6
  %41 = fpext double %40 to x86_fp80, !mcsema_real_eip !6
  %42 = fptrunc x86_fp80 %41 to double, !mcsema_real_eip !6
  %43 = fpext double %42 to x86_fp80, !mcsema_real_eip !6
  %44 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !6
  %45 = sub i3 %44, 1, !mcsema_real_eip !6
  store i3 %45, i3* %FPU_FLAG_TOP, !mcsema_real_eip !6
  %46 = zext i3 %45 to i32, !mcsema_real_eip !6
  %47 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %46, !mcsema_real_eip !6
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %46, !mcsema_real_eip !6
  %49 = bitcast i8* %48 to i2*, !mcsema_real_eip !6
  %50 = load i2, i2* %49, !mcsema_real_eip !6
  %51 = icmp eq i2 %50, -1, !mcsema_real_eip !6
  br i1 %51, label %fpu_write1, label %fpu_exception2, !mcsema_real_eip !6

fpu_write1:                                       ; preds = %fpu_exception2, %fpuinst_LD_F64m
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !6
  store i2 0, i2* %49, !mcsema_real_eip !6
  br label %fpu_write_exit3, !mcsema_real_eip !6

fpu_exception2:                                   ; preds = %fpuinst_LD_F64m
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !6
  br label %fpu_write1, !mcsema_real_eip !6

fpu_write_exit3:                                  ; preds = %fpu_write1
  store x86_fp80 %43, x86_fp80* %47, !mcsema_real_eip !6
  br label %fpuinst_ST_FP80m4, !mcsema_real_eip !7

fpuinst_ST_FP80m4:                                ; preds = %fpu_write_exit3
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !7
  %52 = add i64 %RBP_val.5, -32, !mcsema_real_eip !7
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !7
  %54 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  %55 = add i3 %54, 0, !mcsema_real_eip !7
  %56 = zext i3 %55 to i32, !mcsema_real_eip !7
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %56, !mcsema_real_eip !7
  %58 = bitcast i8* %57 to i2*, !mcsema_real_eip !7
  %59 = load i2, i2* %58, !mcsema_real_eip !7
  switch i2 %59, label %fpu_read_empty6 [
    i2 0, label %fpu_read_normal5
    i2 1, label %fpu_read_normal5
    i2 -2, label %fpu_read_normal5
  ], !mcsema_real_eip !7

fpu_read_normal5:                                 ; preds = %fpuinst_ST_FP80m4, %fpuinst_ST_FP80m4, %fpuinst_ST_FP80m4
  %60 = zext i3 %55 to i32, !mcsema_real_eip !7
  %61 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %60, !mcsema_real_eip !7
  %62 = load x86_fp80, x86_fp80* %61, !mcsema_real_eip !7
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !7
  br label %fpu_read_continue7, !mcsema_real_eip !7

fpu_read_empty6:                                  ; preds = %fpuinst_ST_FP80m4
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !7
  br label %fpu_read_continue7, !mcsema_real_eip !7

fpu_read_continue7:                               ; preds = %fpu_read_empty6, %fpu_read_normal5
  %fpu_switch_phinode8 = phi x86_fp80 [ %62, %fpu_read_normal5 ], [ 0xK00000000000000000000, %fpu_read_empty6 ], !mcsema_real_eip !7
  %63 = bitcast i64* %53 to x86_fp80*, !mcsema_real_eip !7
  store x86_fp80 %fpu_switch_phinode8, x86_fp80* %63, !mcsema_real_eip !7
  %64 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  %65 = add i3 %64, 0, !mcsema_real_eip !7
  %66 = zext i3 %65 to i32, !mcsema_real_eip !7
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %66, !mcsema_real_eip !7
  %68 = bitcast i8* %67 to i2*, !mcsema_real_eip !7
  store i2 -1, i2* %68, !mcsema_real_eip !7
  %69 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  %70 = add i3 %69, 1, !mcsema_real_eip !7
  store i3 %70, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  br label %fpuinst_LD_F80m9, !mcsema_real_eip !8

fpuinst_LD_F80m9:                                 ; preds = %fpu_read_continue7
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !8
  %71 = add i64 %RBP_val.6, -16, !mcsema_real_eip !8
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !8
  %73 = bitcast i64* %72 to x86_fp80*, !mcsema_real_eip !8
  %74 = load x86_fp80, x86_fp80* %73, !mcsema_real_eip !8
  %75 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !8
  %76 = sub i3 %75, 1, !mcsema_real_eip !8
  store i3 %76, i3* %FPU_FLAG_TOP, !mcsema_real_eip !8
  %77 = zext i3 %76 to i32, !mcsema_real_eip !8
  %78 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %77, !mcsema_real_eip !8
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %77, !mcsema_real_eip !8
  %80 = bitcast i8* %79 to i2*, !mcsema_real_eip !8
  %81 = load i2, i2* %80, !mcsema_real_eip !8
  %82 = icmp eq i2 %81, -1, !mcsema_real_eip !8
  br i1 %82, label %fpu_write10, label %fpu_exception11, !mcsema_real_eip !8

fpu_write10:                                      ; preds = %fpu_exception11, %fpuinst_LD_F80m9
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !8
  store i2 0, i2* %80, !mcsema_real_eip !8
  br label %fpu_write_exit12, !mcsema_real_eip !8

fpu_exception11:                                  ; preds = %fpuinst_LD_F80m9
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !8
  br label %fpu_write10, !mcsema_real_eip !8

fpu_write_exit12:                                 ; preds = %fpu_write10
  store x86_fp80 %74, x86_fp80* %78, !mcsema_real_eip !8
  br label %fpuinst_LD_F80m13, !mcsema_real_eip !9

fpuinst_LD_F80m13:                                ; preds = %fpu_write_exit12
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !9
  %83 = add i64 %RBP_val.7, -32, !mcsema_real_eip !9
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !9
  %85 = bitcast i64* %84 to x86_fp80*, !mcsema_real_eip !9
  %86 = load x86_fp80, x86_fp80* %85, !mcsema_real_eip !9
  %87 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !9
  %88 = sub i3 %87, 1, !mcsema_real_eip !9
  store i3 %88, i3* %FPU_FLAG_TOP, !mcsema_real_eip !9
  %89 = zext i3 %88 to i32, !mcsema_real_eip !9
  %90 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %89, !mcsema_real_eip !9
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %89, !mcsema_real_eip !9
  %92 = bitcast i8* %91 to i2*, !mcsema_real_eip !9
  %93 = load i2, i2* %92, !mcsema_real_eip !9
  %94 = icmp eq i2 %93, -1, !mcsema_real_eip !9
  br i1 %94, label %fpu_write14, label %fpu_exception15, !mcsema_real_eip !9

fpu_write14:                                      ; preds = %fpu_exception15, %fpuinst_LD_F80m13
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !9
  store i2 0, i2* %92, !mcsema_real_eip !9
  br label %fpu_write_exit16, !mcsema_real_eip !9

fpu_exception15:                                  ; preds = %fpuinst_LD_F80m13
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !9
  br label %fpu_write14, !mcsema_real_eip !9

fpu_write_exit16:                                 ; preds = %fpu_write14
  store x86_fp80 %86, x86_fp80* %90, !mcsema_real_eip !9
  br label %fpuinst_MUL_FPrST0, !mcsema_real_eip !10

fpuinst_MUL_FPrST0:                               ; preds = %fpu_write_exit16
  %95 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %96 = add i3 %95, 0, !mcsema_real_eip !10
  %97 = zext i3 %96 to i32, !mcsema_real_eip !10
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %97, !mcsema_real_eip !10
  %99 = bitcast i8* %98 to i2*, !mcsema_real_eip !10
  %100 = load i2, i2* %99, !mcsema_real_eip !10
  switch i2 %100, label %fpu_read_empty18 [
    i2 0, label %fpu_read_normal17
    i2 1, label %fpu_read_normal17
    i2 -2, label %fpu_read_normal17
  ], !mcsema_real_eip !10

fpu_read_normal17:                                ; preds = %fpuinst_MUL_FPrST0, %fpuinst_MUL_FPrST0, %fpuinst_MUL_FPrST0
  %101 = zext i3 %96 to i32, !mcsema_real_eip !10
  %102 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %101, !mcsema_real_eip !10
  %103 = load x86_fp80, x86_fp80* %102, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue19, !mcsema_real_eip !10

fpu_read_empty18:                                 ; preds = %fpuinst_MUL_FPrST0
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue19, !mcsema_real_eip !10

fpu_read_continue19:                              ; preds = %fpu_read_empty18, %fpu_read_normal17
  %fpu_switch_phinode20 = phi x86_fp80 [ %103, %fpu_read_normal17 ], [ 0xK00000000000000000000, %fpu_read_empty18 ], !mcsema_real_eip !10
  %104 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %105 = add i3 %104, 1, !mcsema_real_eip !10
  %106 = zext i3 %105 to i32, !mcsema_real_eip !10
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %106, !mcsema_real_eip !10
  %108 = bitcast i8* %107 to i2*, !mcsema_real_eip !10
  %109 = load i2, i2* %108, !mcsema_real_eip !10
  switch i2 %109, label %fpu_read_empty22 [
    i2 0, label %fpu_read_normal21
    i2 1, label %fpu_read_normal21
    i2 -2, label %fpu_read_normal21
  ], !mcsema_real_eip !10

fpu_read_normal21:                                ; preds = %fpu_read_continue19, %fpu_read_continue19, %fpu_read_continue19
  %110 = zext i3 %105 to i32, !mcsema_real_eip !10
  %111 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %110, !mcsema_real_eip !10
  %112 = load x86_fp80, x86_fp80* %111, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue23, !mcsema_real_eip !10

fpu_read_empty22:                                 ; preds = %fpu_read_continue19
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue23, !mcsema_real_eip !10

fpu_read_continue23:                              ; preds = %fpu_read_empty22, %fpu_read_normal21
  %fpu_switch_phinode24 = phi x86_fp80 [ %112, %fpu_read_normal21 ], [ 0xK00000000000000000000, %fpu_read_empty22 ], !mcsema_real_eip !10
  %113 = fmul x86_fp80 %fpu_switch_phinode20, %fpu_switch_phinode24, !mcsema_real_eip !10
  %114 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %115 = add i3 %114, 1, !mcsema_real_eip !10
  %116 = zext i3 %115 to i32, !mcsema_real_eip !10
  %117 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %116, !mcsema_real_eip !10
  %118 = zext i3 %115 to i32, !mcsema_real_eip !10
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %118, !mcsema_real_eip !10
  %120 = bitcast i8* %119 to i2*, !mcsema_real_eip !10
  %121 = load i2, i2* %120, !mcsema_real_eip !10
  %122 = icmp eq i2 %121, -1, !mcsema_real_eip !10
  br i1 %122, label %fpu_write25, label %fpu_exception26, !mcsema_real_eip !10

fpu_write25:                                      ; preds = %fpu_exception26, %fpu_read_continue23
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  store i2 0, i2* %120, !mcsema_real_eip !10
  br label %fpu_write_exit27, !mcsema_real_eip !10

fpu_exception26:                                  ; preds = %fpu_read_continue23
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_write25, !mcsema_real_eip !10

fpu_write_exit27:                                 ; preds = %fpu_write25
  store x86_fp80 %113, x86_fp80* %117, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  %123 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %124 = add i3 %123, 0, !mcsema_real_eip !10
  %125 = zext i3 %124 to i32, !mcsema_real_eip !10
  %126 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %125, !mcsema_real_eip !10
  %127 = bitcast i8* %126 to i2*, !mcsema_real_eip !10
  store i2 -1, i2* %127, !mcsema_real_eip !10
  %128 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %129 = add i3 %128, 1, !mcsema_real_eip !10
  store i3 %129, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !11
  %130 = inttoptr i64 %RSP_val.8 to i64*, !mcsema_real_eip !11
  %131 = load i64, i64* %130, !mcsema_real_eip !11
  store i64 %131, i64* %XBP, !mcsema_real_eip !11
  %132 = add i64 %RSP_val.8, 8, !mcsema_real_eip !11
  store i64 %132, i64* %XSP, !mcsema_real_eip !11
  %RSP_val.9 = load i64, i64* %XSP, !mcsema_real_eip !12
  %133 = add i64 %RSP_val.9, 8, !mcsema_real_eip !12
  %134 = inttoptr i64 %RSP_val.9 to i64*, !mcsema_real_eip !12
  %135 = load i64, i64* %134, !mcsema_real_eip !12
  store i64 %135, i64* %XIP, !mcsema_real_eip !12
  store i64 %133, i64* %XSP, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
}

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: naked noinline
declare void @timespi() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 7}
!6 = !{i64 10}
!7 = !{i64 16}
!8 = !{i64 19}
!9 = !{i64 22}
!10 = !{i64 25}
!11 = !{i64 27}
!12 = !{i64 28}
