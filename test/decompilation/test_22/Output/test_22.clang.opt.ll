; ModuleID = 'Output/test_22.clang.opt.bc'
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
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !2
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !2
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !2
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !2
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !2
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  br label %fpuinst_LD_F80m, !mcsema_real_eip !4

fpuinst_LD_F80m:                                  ; preds = %block_0x0
  %3 = add i64 %1, 16, !mcsema_real_eip !4
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
  %15 = add i64 %1, -16, !mcsema_real_eip !5
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !5
  %17 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  %18 = zext i3 %17 to i32, !mcsema_real_eip !5
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %18, !mcsema_real_eip !5
  %20 = bitcast i8* %19 to i2*, !mcsema_real_eip !5
  %21 = load i2, i2* %20, !mcsema_real_eip !5
  switch i2 %21, label %fpu_read_empty [
    i2 0, label %fpu_read_normal
    i2 1, label %fpu_read_normal
    i2 -2, label %fpu_read_normal
  ], !mcsema_real_eip !5

fpu_read_normal:                                  ; preds = %fpuinst_ST_FP80m, %fpuinst_ST_FP80m, %fpuinst_ST_FP80m
  %22 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %18, !mcsema_real_eip !5
  %23 = load x86_fp80, x86_fp80* %22, !mcsema_real_eip !5
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !5
  br label %fpu_read_continue, !mcsema_real_eip !5

fpu_read_empty:                                   ; preds = %fpuinst_ST_FP80m
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !5
  br label %fpu_read_continue, !mcsema_real_eip !5

fpu_read_continue:                                ; preds = %fpu_read_empty, %fpu_read_normal
  %fpu_switch_phinode = phi x86_fp80 [ %23, %fpu_read_normal ], [ 0xK00000000000000000000, %fpu_read_empty ], !mcsema_real_eip !5
  %24 = bitcast i64* %16 to x86_fp80*, !mcsema_real_eip !5
  store x86_fp80 %fpu_switch_phinode, x86_fp80* %24, !mcsema_real_eip !5
  %25 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  %26 = zext i3 %25 to i32, !mcsema_real_eip !5
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %26, !mcsema_real_eip !5
  %28 = bitcast i8* %27 to i2*, !mcsema_real_eip !5
  store i2 -1, i2* %28, !mcsema_real_eip !5
  %29 = add i3 %25, 1, !mcsema_real_eip !5
  store i3 %29, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  br label %fpuinst_LD_F64m, !mcsema_real_eip !6

fpuinst_LD_F64m:                                  ; preds = %fpu_read_continue
  store i3 %25, i3* %FPU_FLAG_TOP, !mcsema_real_eip !6
  %30 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %26, !mcsema_real_eip !6
  %31 = load i2, i2* %28, !mcsema_real_eip !6
  %32 = icmp eq i2 %31, -1, !mcsema_real_eip !6
  br i1 %32, label %fpu_write1, label %fpu_exception2, !mcsema_real_eip !6

fpu_write1:                                       ; preds = %fpu_exception2, %fpuinst_LD_F64m
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !6
  store i2 0, i2* %28, !mcsema_real_eip !6
  br label %fpu_write_exit3, !mcsema_real_eip !6

fpu_exception2:                                   ; preds = %fpuinst_LD_F64m
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !6
  br label %fpu_write1, !mcsema_real_eip !6

fpu_write_exit3:                                  ; preds = %fpu_write1
  store x86_fp80 0xK4000C90FDAA22168C000, x86_fp80* %30, !mcsema_real_eip !6
  br label %fpuinst_ST_FP80m4, !mcsema_real_eip !7

fpuinst_ST_FP80m4:                                ; preds = %fpu_write_exit3
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !7
  %33 = add i64 %RBP_val.5, -32, !mcsema_real_eip !7
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !7
  %35 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  %36 = zext i3 %35 to i32, !mcsema_real_eip !7
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %36, !mcsema_real_eip !7
  %38 = bitcast i8* %37 to i2*, !mcsema_real_eip !7
  %39 = load i2, i2* %38, !mcsema_real_eip !7
  switch i2 %39, label %fpu_read_empty6 [
    i2 0, label %fpu_read_normal5
    i2 1, label %fpu_read_normal5
    i2 -2, label %fpu_read_normal5
  ], !mcsema_real_eip !7

fpu_read_normal5:                                 ; preds = %fpuinst_ST_FP80m4, %fpuinst_ST_FP80m4, %fpuinst_ST_FP80m4
  %40 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %36, !mcsema_real_eip !7
  %41 = load x86_fp80, x86_fp80* %40, !mcsema_real_eip !7
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !7
  br label %fpu_read_continue7, !mcsema_real_eip !7

fpu_read_empty6:                                  ; preds = %fpuinst_ST_FP80m4
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !7
  br label %fpu_read_continue7, !mcsema_real_eip !7

fpu_read_continue7:                               ; preds = %fpu_read_empty6, %fpu_read_normal5
  %fpu_switch_phinode8 = phi x86_fp80 [ %41, %fpu_read_normal5 ], [ 0xK00000000000000000000, %fpu_read_empty6 ], !mcsema_real_eip !7
  %42 = bitcast i64* %34 to x86_fp80*, !mcsema_real_eip !7
  store x86_fp80 %fpu_switch_phinode8, x86_fp80* %42, !mcsema_real_eip !7
  %43 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  %44 = zext i3 %43 to i32, !mcsema_real_eip !7
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %44, !mcsema_real_eip !7
  %46 = bitcast i8* %45 to i2*, !mcsema_real_eip !7
  store i2 -1, i2* %46, !mcsema_real_eip !7
  %47 = add i3 %43, 1, !mcsema_real_eip !7
  store i3 %47, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  br label %fpuinst_LD_F80m9, !mcsema_real_eip !8

fpuinst_LD_F80m9:                                 ; preds = %fpu_read_continue7
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !8
  %48 = add i64 %RBP_val.6, -16, !mcsema_real_eip !8
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !8
  %50 = bitcast i64* %49 to x86_fp80*, !mcsema_real_eip !8
  %51 = load x86_fp80, x86_fp80* %50, !mcsema_real_eip !8
  store i3 %43, i3* %FPU_FLAG_TOP, !mcsema_real_eip !8
  %52 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %44, !mcsema_real_eip !8
  %53 = load i2, i2* %46, !mcsema_real_eip !8
  %54 = icmp eq i2 %53, -1, !mcsema_real_eip !8
  br i1 %54, label %fpu_write10, label %fpu_exception11, !mcsema_real_eip !8

fpu_write10:                                      ; preds = %fpu_exception11, %fpuinst_LD_F80m9
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !8
  store i2 0, i2* %46, !mcsema_real_eip !8
  br label %fpu_write_exit12, !mcsema_real_eip !8

fpu_exception11:                                  ; preds = %fpuinst_LD_F80m9
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !8
  br label %fpu_write10, !mcsema_real_eip !8

fpu_write_exit12:                                 ; preds = %fpu_write10
  store x86_fp80 %51, x86_fp80* %52, !mcsema_real_eip !8
  br label %fpuinst_LD_F80m13, !mcsema_real_eip !9

fpuinst_LD_F80m13:                                ; preds = %fpu_write_exit12
  %55 = add i64 %RBP_val.6, -32, !mcsema_real_eip !9
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !9
  %57 = bitcast i64* %56 to x86_fp80*, !mcsema_real_eip !9
  %58 = load x86_fp80, x86_fp80* %57, !mcsema_real_eip !9
  %59 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !9
  %60 = sub i3 %59, 1, !mcsema_real_eip !9
  store i3 %60, i3* %FPU_FLAG_TOP, !mcsema_real_eip !9
  %61 = zext i3 %60 to i32, !mcsema_real_eip !9
  %62 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %61, !mcsema_real_eip !9
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %61, !mcsema_real_eip !9
  %64 = bitcast i8* %63 to i2*, !mcsema_real_eip !9
  %65 = load i2, i2* %64, !mcsema_real_eip !9
  %66 = icmp eq i2 %65, -1, !mcsema_real_eip !9
  br i1 %66, label %fpu_write14, label %fpu_exception15, !mcsema_real_eip !9

fpu_write14:                                      ; preds = %fpu_exception15, %fpuinst_LD_F80m13
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !9
  store i2 0, i2* %64, !mcsema_real_eip !9
  br label %fpu_write_exit16, !mcsema_real_eip !9

fpu_exception15:                                  ; preds = %fpuinst_LD_F80m13
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !9
  br label %fpu_write14, !mcsema_real_eip !9

fpu_write_exit16:                                 ; preds = %fpu_write14
  store x86_fp80 %58, x86_fp80* %62, !mcsema_real_eip !9
  br label %fpuinst_MUL_FPrST0, !mcsema_real_eip !10

fpuinst_MUL_FPrST0:                               ; preds = %fpu_write_exit16
  %67 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %68 = zext i3 %67 to i32, !mcsema_real_eip !10
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %68, !mcsema_real_eip !10
  %70 = bitcast i8* %69 to i2*, !mcsema_real_eip !10
  %71 = load i2, i2* %70, !mcsema_real_eip !10
  switch i2 %71, label %fpu_read_empty18 [
    i2 0, label %fpu_read_normal17
    i2 1, label %fpu_read_normal17
    i2 -2, label %fpu_read_normal17
  ], !mcsema_real_eip !10

fpu_read_normal17:                                ; preds = %fpuinst_MUL_FPrST0, %fpuinst_MUL_FPrST0, %fpuinst_MUL_FPrST0
  %72 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %68, !mcsema_real_eip !10
  %73 = load x86_fp80, x86_fp80* %72, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue19, !mcsema_real_eip !10

fpu_read_empty18:                                 ; preds = %fpuinst_MUL_FPrST0
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue19, !mcsema_real_eip !10

fpu_read_continue19:                              ; preds = %fpu_read_empty18, %fpu_read_normal17
  %fpu_switch_phinode20 = phi x86_fp80 [ %73, %fpu_read_normal17 ], [ 0xK00000000000000000000, %fpu_read_empty18 ], !mcsema_real_eip !10
  %74 = add i3 %67, 1, !mcsema_real_eip !10
  %75 = zext i3 %74 to i32, !mcsema_real_eip !10
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %75, !mcsema_real_eip !10
  %77 = bitcast i8* %76 to i2*, !mcsema_real_eip !10
  %78 = load i2, i2* %77, !mcsema_real_eip !10
  switch i2 %78, label %fpu_read_empty22 [
    i2 0, label %fpu_read_normal21
    i2 1, label %fpu_read_normal21
    i2 -2, label %fpu_read_normal21
  ], !mcsema_real_eip !10

fpu_read_normal21:                                ; preds = %fpu_read_continue19, %fpu_read_continue19, %fpu_read_continue19
  %79 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %75, !mcsema_real_eip !10
  %80 = load x86_fp80, x86_fp80* %79, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue23, !mcsema_real_eip !10

fpu_read_empty22:                                 ; preds = %fpu_read_continue19
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue23, !mcsema_real_eip !10

fpu_read_continue23:                              ; preds = %fpu_read_empty22, %fpu_read_normal21
  %fpu_switch_phinode24 = phi x86_fp80 [ %80, %fpu_read_normal21 ], [ 0xK00000000000000000000, %fpu_read_empty22 ], !mcsema_real_eip !10
  %81 = fmul x86_fp80 %fpu_switch_phinode20, %fpu_switch_phinode24, !mcsema_real_eip !10
  %82 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %75, !mcsema_real_eip !10
  %83 = load i2, i2* %77, !mcsema_real_eip !10
  %84 = icmp eq i2 %83, -1, !mcsema_real_eip !10
  br i1 %84, label %fpu_write25, label %fpu_exception26, !mcsema_real_eip !10

fpu_write25:                                      ; preds = %fpu_exception26, %fpu_read_continue23
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  store i2 0, i2* %77, !mcsema_real_eip !10
  br label %fpu_write_exit27, !mcsema_real_eip !10

fpu_exception26:                                  ; preds = %fpu_read_continue23
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_write25, !mcsema_real_eip !10

fpu_write_exit27:                                 ; preds = %fpu_write25
  store x86_fp80 %81, x86_fp80* %82, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  %85 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %86 = zext i3 %85 to i32, !mcsema_real_eip !10
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %86, !mcsema_real_eip !10
  %88 = bitcast i8* %87 to i2*, !mcsema_real_eip !10
  store i2 -1, i2* %88, !mcsema_real_eip !10
  %89 = add i3 %85, 1, !mcsema_real_eip !10
  store i3 %89, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !11
  %90 = inttoptr i64 %RSP_val.8 to i64*, !mcsema_real_eip !11
  %91 = load i64, i64* %90, !mcsema_real_eip !11
  store i64 %91, i64* %XBP, !mcsema_real_eip !11
  %92 = add i64 %RSP_val.8, 8, !mcsema_real_eip !11
  store i64 %92, i64* %XSP, !mcsema_real_eip !11
  %93 = add i64 %92, 8, !mcsema_real_eip !12
  %94 = inttoptr i64 %92 to i64*, !mcsema_real_eip !12
  %95 = load i64, i64* %94, !mcsema_real_eip !12
  store i64 %95, i64* %XIP, !mcsema_real_eip !12
  store i64 %93, i64* %XSP, !mcsema_real_eip !12
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
