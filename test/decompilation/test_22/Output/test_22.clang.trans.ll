; ModuleID = 'Output/test_22.clang.trans.bc'
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
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 40
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 40
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
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
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  br label %fpuinst_LD_F80m, !mcsema_real_eip !4

fpuinst_LD_F80m:                                  ; preds = %block_0x0
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 16
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %2 = bitcast i64* %_allin_new_bt_4 to x86_fp80*, !mcsema_real_eip !4
  %3 = load x86_fp80, x86_fp80* %2, !mcsema_real_eip !4
  %4 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !4
  %5 = sub i3 %4, 1, !mcsema_real_eip !4
  store i3 %5, i3* %FPU_FLAG_TOP, !mcsema_real_eip !4
  %6 = zext i3 %5 to i32, !mcsema_real_eip !4
  %7 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %6, !mcsema_real_eip !4
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %6, !mcsema_real_eip !4
  %9 = bitcast i8* %8 to i2*, !mcsema_real_eip !4
  %10 = load i2, i2* %9, !mcsema_real_eip !4
  %11 = icmp eq i2 %10, -1, !mcsema_real_eip !4
  br i1 %11, label %fpu_write, label %fpu_exception, !mcsema_real_eip !4

fpu_write:                                        ; preds = %fpu_exception, %fpuinst_LD_F80m
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !4
  store i2 0, i2* %9, !mcsema_real_eip !4
  br label %fpu_write_exit, !mcsema_real_eip !4

fpu_exception:                                    ; preds = %fpuinst_LD_F80m
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !4
  br label %fpu_write, !mcsema_real_eip !4

fpu_write_exit:                                   ; preds = %fpu_write
  store x86_fp80 %3, x86_fp80* %7, !mcsema_real_eip !4
  br label %fpuinst_ST_FP80m, !mcsema_real_eip !5

fpuinst_ST_FP80m:                                 ; preds = %fpu_write_exit
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_, i64 -16
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %12 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  %13 = zext i3 %12 to i32, !mcsema_real_eip !5
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %13, !mcsema_real_eip !5
  %15 = bitcast i8* %14 to i2*, !mcsema_real_eip !5
  %16 = load i2, i2* %15, !mcsema_real_eip !5
  switch i2 %16, label %fpu_read_empty [
    i2 0, label %fpu_read_normal
    i2 1, label %fpu_read_normal
    i2 -2, label %fpu_read_normal
  ], !mcsema_real_eip !5

fpu_read_normal:                                  ; preds = %fpuinst_ST_FP80m, %fpuinst_ST_FP80m, %fpuinst_ST_FP80m
  %17 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %13, !mcsema_real_eip !5
  %18 = load x86_fp80, x86_fp80* %17, !mcsema_real_eip !5
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !5
  br label %fpu_read_continue, !mcsema_real_eip !5

fpu_read_empty:                                   ; preds = %fpuinst_ST_FP80m
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !5
  br label %fpu_read_continue, !mcsema_real_eip !5

fpu_read_continue:                                ; preds = %fpu_read_empty, %fpu_read_normal
  %fpu_switch_phinode = phi x86_fp80 [ %18, %fpu_read_normal ], [ 0xK00000000000000000000, %fpu_read_empty ], !mcsema_real_eip !5
  %19 = bitcast i64* %_allin_new_bt_7 to x86_fp80*, !mcsema_real_eip !5
  store x86_fp80 %fpu_switch_phinode, x86_fp80* %19, !mcsema_real_eip !5
  %20 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  %21 = zext i3 %20 to i32, !mcsema_real_eip !5
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %21, !mcsema_real_eip !5
  %23 = bitcast i8* %22 to i2*, !mcsema_real_eip !5
  store i2 -1, i2* %23, !mcsema_real_eip !5
  %24 = add i3 %20, 1, !mcsema_real_eip !5
  store i3 %24, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  br label %fpuinst_LD_F64m, !mcsema_real_eip !6

fpuinst_LD_F64m:                                  ; preds = %fpu_read_continue
  store i3 %20, i3* %FPU_FLAG_TOP, !mcsema_real_eip !6
  %25 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %21, !mcsema_real_eip !6
  %26 = load i2, i2* %23, !mcsema_real_eip !6
  %27 = icmp eq i2 %26, -1, !mcsema_real_eip !6
  br i1 %27, label %fpu_write1, label %fpu_exception2, !mcsema_real_eip !6

fpu_write1:                                       ; preds = %fpu_exception2, %fpuinst_LD_F64m
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !6
  store i2 0, i2* %23, !mcsema_real_eip !6
  br label %fpu_write_exit3, !mcsema_real_eip !6

fpu_exception2:                                   ; preds = %fpuinst_LD_F64m
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !6
  br label %fpu_write1, !mcsema_real_eip !6

fpu_write_exit3:                                  ; preds = %fpu_write1
  store x86_fp80 0xK4000C90FDAA22168C000, x86_fp80* %25, !mcsema_real_eip !6
  br label %fpuinst_ST_FP80m4, !mcsema_real_eip !7

fpuinst_ST_FP80m4:                                ; preds = %fpu_write_exit3
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_, i64 -32
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %28 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  %29 = zext i3 %28 to i32, !mcsema_real_eip !7
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %29, !mcsema_real_eip !7
  %31 = bitcast i8* %30 to i2*, !mcsema_real_eip !7
  %32 = load i2, i2* %31, !mcsema_real_eip !7
  switch i2 %32, label %fpu_read_empty6 [
    i2 0, label %fpu_read_normal5
    i2 1, label %fpu_read_normal5
    i2 -2, label %fpu_read_normal5
  ], !mcsema_real_eip !7

fpu_read_normal5:                                 ; preds = %fpuinst_ST_FP80m4, %fpuinst_ST_FP80m4, %fpuinst_ST_FP80m4
  %33 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %29, !mcsema_real_eip !7
  %34 = load x86_fp80, x86_fp80* %33, !mcsema_real_eip !7
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !7
  br label %fpu_read_continue7, !mcsema_real_eip !7

fpu_read_empty6:                                  ; preds = %fpuinst_ST_FP80m4
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !7
  br label %fpu_read_continue7, !mcsema_real_eip !7

fpu_read_continue7:                               ; preds = %fpu_read_empty6, %fpu_read_normal5
  %fpu_switch_phinode8 = phi x86_fp80 [ %34, %fpu_read_normal5 ], [ 0xK00000000000000000000, %fpu_read_empty6 ], !mcsema_real_eip !7
  %35 = bitcast i64* %_allin_new_bt_10 to x86_fp80*, !mcsema_real_eip !7
  store x86_fp80 %fpu_switch_phinode8, x86_fp80* %35, !mcsema_real_eip !7
  %36 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  %37 = zext i3 %36 to i32, !mcsema_real_eip !7
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %37, !mcsema_real_eip !7
  %39 = bitcast i8* %38 to i2*, !mcsema_real_eip !7
  store i2 -1, i2* %39, !mcsema_real_eip !7
  %40 = add i3 %36, 1, !mcsema_real_eip !7
  store i3 %40, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  br label %fpuinst_LD_F80m9, !mcsema_real_eip !8

fpuinst_LD_F80m9:                                 ; preds = %fpu_read_continue7
  %41 = load x86_fp80, x86_fp80* %19, !mcsema_real_eip !8
  store i3 %36, i3* %FPU_FLAG_TOP, !mcsema_real_eip !8
  %42 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %37, !mcsema_real_eip !8
  %43 = load i2, i2* %39, !mcsema_real_eip !8
  %44 = icmp eq i2 %43, -1, !mcsema_real_eip !8
  br i1 %44, label %fpu_write10, label %fpu_exception11, !mcsema_real_eip !8

fpu_write10:                                      ; preds = %fpu_exception11, %fpuinst_LD_F80m9
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !8
  store i2 0, i2* %39, !mcsema_real_eip !8
  br label %fpu_write_exit12, !mcsema_real_eip !8

fpu_exception11:                                  ; preds = %fpuinst_LD_F80m9
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !8
  br label %fpu_write10, !mcsema_real_eip !8

fpu_write_exit12:                                 ; preds = %fpu_write10
  store x86_fp80 %41, x86_fp80* %42, !mcsema_real_eip !8
  br label %fpuinst_LD_F80m13, !mcsema_real_eip !9

fpuinst_LD_F80m13:                                ; preds = %fpu_write_exit12
  %45 = load x86_fp80, x86_fp80* %35, !mcsema_real_eip !9
  %46 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !9
  %47 = sub i3 %46, 1, !mcsema_real_eip !9
  store i3 %47, i3* %FPU_FLAG_TOP, !mcsema_real_eip !9
  %48 = zext i3 %47 to i32, !mcsema_real_eip !9
  %49 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %48, !mcsema_real_eip !9
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %48, !mcsema_real_eip !9
  %51 = bitcast i8* %50 to i2*, !mcsema_real_eip !9
  %52 = load i2, i2* %51, !mcsema_real_eip !9
  %53 = icmp eq i2 %52, -1, !mcsema_real_eip !9
  br i1 %53, label %fpu_write14, label %fpu_exception15, !mcsema_real_eip !9

fpu_write14:                                      ; preds = %fpu_exception15, %fpuinst_LD_F80m13
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !9
  store i2 0, i2* %51, !mcsema_real_eip !9
  br label %fpu_write_exit16, !mcsema_real_eip !9

fpu_exception15:                                  ; preds = %fpuinst_LD_F80m13
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !9
  br label %fpu_write14, !mcsema_real_eip !9

fpu_write_exit16:                                 ; preds = %fpu_write14
  store x86_fp80 %45, x86_fp80* %49, !mcsema_real_eip !9
  br label %fpuinst_MUL_FPrST0, !mcsema_real_eip !10

fpuinst_MUL_FPrST0:                               ; preds = %fpu_write_exit16
  %54 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %55 = zext i3 %54 to i32, !mcsema_real_eip !10
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %55, !mcsema_real_eip !10
  %57 = bitcast i8* %56 to i2*, !mcsema_real_eip !10
  %58 = load i2, i2* %57, !mcsema_real_eip !10
  switch i2 %58, label %fpu_read_empty18 [
    i2 0, label %fpu_read_normal17
    i2 1, label %fpu_read_normal17
    i2 -2, label %fpu_read_normal17
  ], !mcsema_real_eip !10

fpu_read_normal17:                                ; preds = %fpuinst_MUL_FPrST0, %fpuinst_MUL_FPrST0, %fpuinst_MUL_FPrST0
  %59 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %55, !mcsema_real_eip !10
  %60 = load x86_fp80, x86_fp80* %59, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue19, !mcsema_real_eip !10

fpu_read_empty18:                                 ; preds = %fpuinst_MUL_FPrST0
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue19, !mcsema_real_eip !10

fpu_read_continue19:                              ; preds = %fpu_read_empty18, %fpu_read_normal17
  %fpu_switch_phinode20 = phi x86_fp80 [ %60, %fpu_read_normal17 ], [ 0xK00000000000000000000, %fpu_read_empty18 ], !mcsema_real_eip !10
  %61 = add i3 %54, 1, !mcsema_real_eip !10
  %62 = zext i3 %61 to i32, !mcsema_real_eip !10
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %62, !mcsema_real_eip !10
  %64 = bitcast i8* %63 to i2*, !mcsema_real_eip !10
  %65 = load i2, i2* %64, !mcsema_real_eip !10
  switch i2 %65, label %fpu_read_empty22 [
    i2 0, label %fpu_read_normal21
    i2 1, label %fpu_read_normal21
    i2 -2, label %fpu_read_normal21
  ], !mcsema_real_eip !10

fpu_read_normal21:                                ; preds = %fpu_read_continue19, %fpu_read_continue19, %fpu_read_continue19
  %66 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %62, !mcsema_real_eip !10
  %67 = load x86_fp80, x86_fp80* %66, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue23, !mcsema_real_eip !10

fpu_read_empty22:                                 ; preds = %fpu_read_continue19
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue23, !mcsema_real_eip !10

fpu_read_continue23:                              ; preds = %fpu_read_empty22, %fpu_read_normal21
  %fpu_switch_phinode24 = phi x86_fp80 [ %67, %fpu_read_normal21 ], [ 0xK00000000000000000000, %fpu_read_empty22 ], !mcsema_real_eip !10
  %68 = fmul x86_fp80 %fpu_switch_phinode20, %fpu_switch_phinode24, !mcsema_real_eip !10
  %69 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %62, !mcsema_real_eip !10
  %70 = load i2, i2* %64, !mcsema_real_eip !10
  %71 = icmp eq i2 %70, -1, !mcsema_real_eip !10
  br i1 %71, label %fpu_write25, label %fpu_exception26, !mcsema_real_eip !10

fpu_write25:                                      ; preds = %fpu_exception26, %fpu_read_continue23
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  store i2 0, i2* %64, !mcsema_real_eip !10
  br label %fpu_write_exit27, !mcsema_real_eip !10

fpu_exception26:                                  ; preds = %fpu_read_continue23
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_write25, !mcsema_real_eip !10

fpu_write_exit27:                                 ; preds = %fpu_write25
  store x86_fp80 %68, x86_fp80* %69, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  %72 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %73 = zext i3 %72 to i32, !mcsema_real_eip !10
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %73, !mcsema_real_eip !10
  %75 = bitcast i8* %74 to i2*, !mcsema_real_eip !10
  store i2 -1, i2* %75, !mcsema_real_eip !10
  %76 = add i3 %72, 1, !mcsema_real_eip !10
  store i3 %76, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %_load_rsp_ptr_17 = load i8*, i8** %_RSP_ptr_
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_allin_new_bt_18 = bitcast i8* %_load_rsp_ptr_17 to i64*
  %77 = load i64, i64* %_allin_new_bt_18, !mcsema_real_eip !11
  %_new_int2ptr_ = inttoptr i64 %77 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %77, i64* %XBP, !mcsema_real_eip !11
  %_new_gep_19 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 8
  %78 = add i64 %RSP_val.8, 8, !mcsema_real_eip !11
  store volatile i8* %_new_gep_19, i8** %_RSP_ptr_
  store i64 %78, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_21 = getelementptr i8, i8* %_new_gep_19, i64 8
  %79 = add i64 %78, 8, !mcsema_real_eip !12
  %_allin_new_bt_22 = bitcast i8* %_new_gep_19 to i64*
  %80 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !12
  store i64 %80, i64* %XIP, !mcsema_real_eip !12
  store volatile i8* %_new_gep_21, i8** %_RSP_ptr_
  store i64 %79, i64* %XSP, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
}

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: naked noinline
declare void @timespi() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 40
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 40
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
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
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  br label %fpuinst_LD_F80m, !mcsema_real_eip !4

fpuinst_LD_F80m:                                  ; preds = %block_0x0
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 16
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %2 = bitcast i64* %_allin_new_bt_4 to x86_fp80*, !mcsema_real_eip !4
  %_ptr_to_int_ = ptrtoint x86_fp80* %2 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast x86_fp80* %2 to i8*
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %3, label %4

; <label>:3:                                      ; preds = %fpuinst_LD_F80m
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to x86_fp80*
  br label %4

; <label>:4:                                      ; preds = %fpuinst_LD_F80m, %3
  %5 = phi x86_fp80* [ %2, %fpuinst_LD_F80m ], [ %_address_in_parent_stack_bt_, %3 ]
  %_new_load_ = load x86_fp80, x86_fp80* %5
  %6 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !4
  %7 = sub i3 %6, 1, !mcsema_real_eip !4
  store i3 %7, i3* %FPU_FLAG_TOP, !mcsema_real_eip !4
  %8 = zext i3 %7 to i32, !mcsema_real_eip !4
  %9 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %8, !mcsema_real_eip !4
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %8, !mcsema_real_eip !4
  %11 = bitcast i8* %10 to i2*, !mcsema_real_eip !4
  %_ptr_to_int_23 = ptrtoint i2* %11 to i64
  %_offset_above_rbp_26 = sub i64 %_ptr_to_int_23, %_local_end_to_int_
  %_pot_address_in_parent_stack_27 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_26
  %_cond1_28 = icmp ugt i8* %10, %_local_stack_end_ptr_
  %_cond2_1_29 = icmp ugt i8* %10, %_parent_stack_end_ptr_
  %_cond2_2_30 = icmp ult i8* %10, %_parent_stack_start_ptr_
  %_cond2_31 = or i1 %_cond2_1_29, %_cond2_2_30
  %_cond4_32 = icmp ule i8* %_pot_address_in_parent_stack_27, %_parent_stack_end_ptr_
  %_cond1_n_cond2_33 = and i1 %_cond1_28, %_cond2_31
  %_cond1_n_cond2_cond3_34 = and i1 %_cond1_n_cond2_33, %_cond4_32
  br i1 %_cond1_n_cond2_cond3_34, label %12, label %13

; <label>:12:                                     ; preds = %4
  %_address_in_parent_stack_bt_36 = bitcast i8* %_pot_address_in_parent_stack_27 to i2*
  br label %13

; <label>:13:                                     ; preds = %4, %12
  %14 = phi i2* [ %11, %4 ], [ %_address_in_parent_stack_bt_36, %12 ]
  %_new_load_37 = load i2, i2* %14
  %15 = icmp eq i2 %_new_load_37, -1, !mcsema_real_eip !4
  br i1 %15, label %fpu_write, label %fpu_exception, !mcsema_real_eip !4

fpu_write:                                        ; preds = %fpu_exception, %13
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !4
  store i2 0, i2* %11, !mcsema_real_eip !4
  br label %fpu_write_exit, !mcsema_real_eip !4

fpu_exception:                                    ; preds = %13
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !4
  br label %fpu_write, !mcsema_real_eip !4

fpu_write_exit:                                   ; preds = %fpu_write
  store x86_fp80 %_new_load_, x86_fp80* %9, !mcsema_real_eip !4
  br label %fpuinst_ST_FP80m, !mcsema_real_eip !5

fpuinst_ST_FP80m:                                 ; preds = %fpu_write_exit
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_, i64 -16
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %16 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  %17 = zext i3 %16 to i32, !mcsema_real_eip !5
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %17, !mcsema_real_eip !5
  %19 = bitcast i8* %18 to i2*, !mcsema_real_eip !5
  %_ptr_to_int_38 = ptrtoint i2* %19 to i64
  %_offset_above_rbp_41 = sub i64 %_ptr_to_int_38, %_local_end_to_int_
  %_pot_address_in_parent_stack_42 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_41
  %_cond1_43 = icmp ugt i8* %18, %_local_stack_end_ptr_
  %_cond2_1_44 = icmp ugt i8* %18, %_parent_stack_end_ptr_
  %_cond2_2_45 = icmp ult i8* %18, %_parent_stack_start_ptr_
  %_cond2_46 = or i1 %_cond2_1_44, %_cond2_2_45
  %_cond4_47 = icmp ule i8* %_pot_address_in_parent_stack_42, %_parent_stack_end_ptr_
  %_cond1_n_cond2_48 = and i1 %_cond1_43, %_cond2_46
  %_cond1_n_cond2_cond3_49 = and i1 %_cond1_n_cond2_48, %_cond4_47
  br i1 %_cond1_n_cond2_cond3_49, label %20, label %21

; <label>:20:                                     ; preds = %fpuinst_ST_FP80m
  %_address_in_parent_stack_bt_51 = bitcast i8* %_pot_address_in_parent_stack_42 to i2*
  br label %21

; <label>:21:                                     ; preds = %fpuinst_ST_FP80m, %20
  %22 = phi i2* [ %19, %fpuinst_ST_FP80m ], [ %_address_in_parent_stack_bt_51, %20 ]
  %_new_load_52 = load i2, i2* %22
  switch i2 %_new_load_52, label %fpu_read_empty [
    i2 0, label %fpu_read_normal
    i2 1, label %fpu_read_normal
    i2 -2, label %fpu_read_normal
  ], !mcsema_real_eip !5

fpu_read_normal:                                  ; preds = %21, %21, %21
  %23 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %17, !mcsema_real_eip !5
  %_ptr_to_int_53 = ptrtoint x86_fp80* %23 to i64
  %_ptr_bt_55 = bitcast x86_fp80* %23 to i8*
  %_offset_above_rbp_56 = sub i64 %_ptr_to_int_53, %_local_end_to_int_
  %_pot_address_in_parent_stack_57 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_56
  %_cond1_58 = icmp ugt i8* %_ptr_bt_55, %_local_stack_end_ptr_
  %_cond2_1_59 = icmp ugt i8* %_ptr_bt_55, %_parent_stack_end_ptr_
  %_cond2_2_60 = icmp ult i8* %_ptr_bt_55, %_parent_stack_start_ptr_
  %_cond2_61 = or i1 %_cond2_1_59, %_cond2_2_60
  %_cond4_62 = icmp ule i8* %_pot_address_in_parent_stack_57, %_parent_stack_end_ptr_
  %_cond1_n_cond2_63 = and i1 %_cond1_58, %_cond2_61
  %_cond1_n_cond2_cond3_64 = and i1 %_cond1_n_cond2_63, %_cond4_62
  br i1 %_cond1_n_cond2_cond3_64, label %24, label %25

; <label>:24:                                     ; preds = %fpu_read_normal
  %_address_in_parent_stack_bt_66 = bitcast i8* %_pot_address_in_parent_stack_57 to x86_fp80*
  br label %25

; <label>:25:                                     ; preds = %fpu_read_normal, %24
  %26 = phi x86_fp80* [ %23, %fpu_read_normal ], [ %_address_in_parent_stack_bt_66, %24 ]
  %_new_load_67 = load x86_fp80, x86_fp80* %26
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !5
  br label %fpu_read_continue, !mcsema_real_eip !5

fpu_read_empty:                                   ; preds = %21
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !5
  br label %fpu_read_continue, !mcsema_real_eip !5

fpu_read_continue:                                ; preds = %fpu_read_empty, %25
  %fpu_switch_phinode = phi x86_fp80 [ %_new_load_67, %25 ], [ 0xK00000000000000000000, %fpu_read_empty ], !mcsema_real_eip !5
  %27 = bitcast i64* %_allin_new_bt_7 to x86_fp80*, !mcsema_real_eip !5
  store x86_fp80 %fpu_switch_phinode, x86_fp80* %27, !mcsema_real_eip !5
  %28 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  %29 = zext i3 %28 to i32, !mcsema_real_eip !5
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %29, !mcsema_real_eip !5
  %31 = bitcast i8* %30 to i2*, !mcsema_real_eip !5
  store i2 -1, i2* %31, !mcsema_real_eip !5
  %32 = add i3 %28, 1, !mcsema_real_eip !5
  store i3 %32, i3* %FPU_FLAG_TOP, !mcsema_real_eip !5
  br label %fpuinst_LD_F64m, !mcsema_real_eip !6

fpuinst_LD_F64m:                                  ; preds = %fpu_read_continue
  store i3 %28, i3* %FPU_FLAG_TOP, !mcsema_real_eip !6
  %33 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %29, !mcsema_real_eip !6
  %_ptr_to_int_68 = ptrtoint i2* %31 to i64
  %_offset_above_rbp_71 = sub i64 %_ptr_to_int_68, %_local_end_to_int_
  %_pot_address_in_parent_stack_72 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_71
  %_cond1_73 = icmp ugt i8* %30, %_local_stack_end_ptr_
  %_cond2_1_74 = icmp ugt i8* %30, %_parent_stack_end_ptr_
  %_cond2_2_75 = icmp ult i8* %30, %_parent_stack_start_ptr_
  %_cond2_76 = or i1 %_cond2_1_74, %_cond2_2_75
  %_cond4_77 = icmp ule i8* %_pot_address_in_parent_stack_72, %_parent_stack_end_ptr_
  %_cond1_n_cond2_78 = and i1 %_cond1_73, %_cond2_76
  %_cond1_n_cond2_cond3_79 = and i1 %_cond1_n_cond2_78, %_cond4_77
  br i1 %_cond1_n_cond2_cond3_79, label %34, label %35

; <label>:34:                                     ; preds = %fpuinst_LD_F64m
  %_address_in_parent_stack_bt_81 = bitcast i8* %_pot_address_in_parent_stack_72 to i2*
  br label %35

; <label>:35:                                     ; preds = %fpuinst_LD_F64m, %34
  %36 = phi i2* [ %31, %fpuinst_LD_F64m ], [ %_address_in_parent_stack_bt_81, %34 ]
  %_new_load_82 = load i2, i2* %36
  %37 = icmp eq i2 %_new_load_82, -1, !mcsema_real_eip !6
  br i1 %37, label %fpu_write1, label %fpu_exception2, !mcsema_real_eip !6

fpu_write1:                                       ; preds = %fpu_exception2, %35
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !6
  store i2 0, i2* %31, !mcsema_real_eip !6
  br label %fpu_write_exit3, !mcsema_real_eip !6

fpu_exception2:                                   ; preds = %35
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !6
  br label %fpu_write1, !mcsema_real_eip !6

fpu_write_exit3:                                  ; preds = %fpu_write1
  store x86_fp80 0xK4000C90FDAA22168C000, x86_fp80* %33, !mcsema_real_eip !6
  br label %fpuinst_ST_FP80m4, !mcsema_real_eip !7

fpuinst_ST_FP80m4:                                ; preds = %fpu_write_exit3
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_, i64 -32
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %38 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  %39 = zext i3 %38 to i32, !mcsema_real_eip !7
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %39, !mcsema_real_eip !7
  %41 = bitcast i8* %40 to i2*, !mcsema_real_eip !7
  %_ptr_to_int_83 = ptrtoint i2* %41 to i64
  %_offset_above_rbp_86 = sub i64 %_ptr_to_int_83, %_local_end_to_int_
  %_pot_address_in_parent_stack_87 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_86
  %_cond1_88 = icmp ugt i8* %40, %_local_stack_end_ptr_
  %_cond2_1_89 = icmp ugt i8* %40, %_parent_stack_end_ptr_
  %_cond2_2_90 = icmp ult i8* %40, %_parent_stack_start_ptr_
  %_cond2_91 = or i1 %_cond2_1_89, %_cond2_2_90
  %_cond4_92 = icmp ule i8* %_pot_address_in_parent_stack_87, %_parent_stack_end_ptr_
  %_cond1_n_cond2_93 = and i1 %_cond1_88, %_cond2_91
  %_cond1_n_cond2_cond3_94 = and i1 %_cond1_n_cond2_93, %_cond4_92
  br i1 %_cond1_n_cond2_cond3_94, label %42, label %43

; <label>:42:                                     ; preds = %fpuinst_ST_FP80m4
  %_address_in_parent_stack_bt_96 = bitcast i8* %_pot_address_in_parent_stack_87 to i2*
  br label %43

; <label>:43:                                     ; preds = %fpuinst_ST_FP80m4, %42
  %44 = phi i2* [ %41, %fpuinst_ST_FP80m4 ], [ %_address_in_parent_stack_bt_96, %42 ]
  %_new_load_97 = load i2, i2* %44
  switch i2 %_new_load_97, label %fpu_read_empty6 [
    i2 0, label %fpu_read_normal5
    i2 1, label %fpu_read_normal5
    i2 -2, label %fpu_read_normal5
  ], !mcsema_real_eip !7

fpu_read_normal5:                                 ; preds = %43, %43, %43
  %45 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %39, !mcsema_real_eip !7
  %_ptr_to_int_98 = ptrtoint x86_fp80* %45 to i64
  %_ptr_bt_100 = bitcast x86_fp80* %45 to i8*
  %_offset_above_rbp_101 = sub i64 %_ptr_to_int_98, %_local_end_to_int_
  %_pot_address_in_parent_stack_102 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_101
  %_cond1_103 = icmp ugt i8* %_ptr_bt_100, %_local_stack_end_ptr_
  %_cond2_1_104 = icmp ugt i8* %_ptr_bt_100, %_parent_stack_end_ptr_
  %_cond2_2_105 = icmp ult i8* %_ptr_bt_100, %_parent_stack_start_ptr_
  %_cond2_106 = or i1 %_cond2_1_104, %_cond2_2_105
  %_cond4_107 = icmp ule i8* %_pot_address_in_parent_stack_102, %_parent_stack_end_ptr_
  %_cond1_n_cond2_108 = and i1 %_cond1_103, %_cond2_106
  %_cond1_n_cond2_cond3_109 = and i1 %_cond1_n_cond2_108, %_cond4_107
  br i1 %_cond1_n_cond2_cond3_109, label %46, label %47

; <label>:46:                                     ; preds = %fpu_read_normal5
  %_address_in_parent_stack_bt_111 = bitcast i8* %_pot_address_in_parent_stack_102 to x86_fp80*
  br label %47

; <label>:47:                                     ; preds = %fpu_read_normal5, %46
  %48 = phi x86_fp80* [ %45, %fpu_read_normal5 ], [ %_address_in_parent_stack_bt_111, %46 ]
  %_new_load_112 = load x86_fp80, x86_fp80* %48
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !7
  br label %fpu_read_continue7, !mcsema_real_eip !7

fpu_read_empty6:                                  ; preds = %43
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !7
  br label %fpu_read_continue7, !mcsema_real_eip !7

fpu_read_continue7:                               ; preds = %fpu_read_empty6, %47
  %fpu_switch_phinode8 = phi x86_fp80 [ %_new_load_112, %47 ], [ 0xK00000000000000000000, %fpu_read_empty6 ], !mcsema_real_eip !7
  %49 = bitcast i64* %_allin_new_bt_10 to x86_fp80*, !mcsema_real_eip !7
  store x86_fp80 %fpu_switch_phinode8, x86_fp80* %49, !mcsema_real_eip !7
  %50 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  %51 = zext i3 %50 to i32, !mcsema_real_eip !7
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %51, !mcsema_real_eip !7
  %53 = bitcast i8* %52 to i2*, !mcsema_real_eip !7
  store i2 -1, i2* %53, !mcsema_real_eip !7
  %54 = add i3 %50, 1, !mcsema_real_eip !7
  store i3 %54, i3* %FPU_FLAG_TOP, !mcsema_real_eip !7
  br label %fpuinst_LD_F80m9, !mcsema_real_eip !8

fpuinst_LD_F80m9:                                 ; preds = %fpu_read_continue7
  %_ptr_to_int_113 = ptrtoint x86_fp80* %27 to i64
  %_ptr_bt_115 = bitcast x86_fp80* %27 to i8*
  %_offset_above_rbp_116 = sub i64 %_ptr_to_int_113, %_local_end_to_int_
  %_pot_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_116
  %_cond1_118 = icmp ugt i8* %_ptr_bt_115, %_local_stack_end_ptr_
  %_cond2_1_119 = icmp ugt i8* %_ptr_bt_115, %_parent_stack_end_ptr_
  %_cond2_2_120 = icmp ult i8* %_ptr_bt_115, %_parent_stack_start_ptr_
  %_cond2_121 = or i1 %_cond2_1_119, %_cond2_2_120
  %_cond4_122 = icmp ule i8* %_pot_address_in_parent_stack_117, %_parent_stack_end_ptr_
  %_cond1_n_cond2_123 = and i1 %_cond1_118, %_cond2_121
  %_cond1_n_cond2_cond3_124 = and i1 %_cond1_n_cond2_123, %_cond4_122
  br i1 %_cond1_n_cond2_cond3_124, label %55, label %56

; <label>:55:                                     ; preds = %fpuinst_LD_F80m9
  %_address_in_parent_stack_bt_126 = bitcast i8* %_pot_address_in_parent_stack_117 to x86_fp80*
  br label %56

; <label>:56:                                     ; preds = %fpuinst_LD_F80m9, %55
  %57 = phi x86_fp80* [ %27, %fpuinst_LD_F80m9 ], [ %_address_in_parent_stack_bt_126, %55 ]
  %_new_load_127 = load x86_fp80, x86_fp80* %57
  store i3 %50, i3* %FPU_FLAG_TOP, !mcsema_real_eip !8
  %58 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %51, !mcsema_real_eip !8
  %_ptr_to_int_128 = ptrtoint i2* %53 to i64
  %_offset_above_rbp_131 = sub i64 %_ptr_to_int_128, %_local_end_to_int_
  %_pot_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_131
  %_cond1_133 = icmp ugt i8* %52, %_local_stack_end_ptr_
  %_cond2_1_134 = icmp ugt i8* %52, %_parent_stack_end_ptr_
  %_cond2_2_135 = icmp ult i8* %52, %_parent_stack_start_ptr_
  %_cond2_136 = or i1 %_cond2_1_134, %_cond2_2_135
  %_cond4_137 = icmp ule i8* %_pot_address_in_parent_stack_132, %_parent_stack_end_ptr_
  %_cond1_n_cond2_138 = and i1 %_cond1_133, %_cond2_136
  %_cond1_n_cond2_cond3_139 = and i1 %_cond1_n_cond2_138, %_cond4_137
  br i1 %_cond1_n_cond2_cond3_139, label %59, label %60

; <label>:59:                                     ; preds = %56
  %_address_in_parent_stack_bt_141 = bitcast i8* %_pot_address_in_parent_stack_132 to i2*
  br label %60

; <label>:60:                                     ; preds = %56, %59
  %61 = phi i2* [ %53, %56 ], [ %_address_in_parent_stack_bt_141, %59 ]
  %_new_load_142 = load i2, i2* %61
  %62 = icmp eq i2 %_new_load_142, -1, !mcsema_real_eip !8
  br i1 %62, label %fpu_write10, label %fpu_exception11, !mcsema_real_eip !8

fpu_write10:                                      ; preds = %fpu_exception11, %60
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !8
  store i2 0, i2* %53, !mcsema_real_eip !8
  br label %fpu_write_exit12, !mcsema_real_eip !8

fpu_exception11:                                  ; preds = %60
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !8
  br label %fpu_write10, !mcsema_real_eip !8

fpu_write_exit12:                                 ; preds = %fpu_write10
  store x86_fp80 %_new_load_127, x86_fp80* %58, !mcsema_real_eip !8
  br label %fpuinst_LD_F80m13, !mcsema_real_eip !9

fpuinst_LD_F80m13:                                ; preds = %fpu_write_exit12
  %_ptr_to_int_143 = ptrtoint x86_fp80* %49 to i64
  %_ptr_bt_145 = bitcast x86_fp80* %49 to i8*
  %_offset_above_rbp_146 = sub i64 %_ptr_to_int_143, %_local_end_to_int_
  %_pot_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_146
  %_cond1_148 = icmp ugt i8* %_ptr_bt_145, %_local_stack_end_ptr_
  %_cond2_1_149 = icmp ugt i8* %_ptr_bt_145, %_parent_stack_end_ptr_
  %_cond2_2_150 = icmp ult i8* %_ptr_bt_145, %_parent_stack_start_ptr_
  %_cond2_151 = or i1 %_cond2_1_149, %_cond2_2_150
  %_cond4_152 = icmp ule i8* %_pot_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond1_n_cond2_153 = and i1 %_cond1_148, %_cond2_151
  %_cond1_n_cond2_cond3_154 = and i1 %_cond1_n_cond2_153, %_cond4_152
  br i1 %_cond1_n_cond2_cond3_154, label %63, label %64

; <label>:63:                                     ; preds = %fpuinst_LD_F80m13
  %_address_in_parent_stack_bt_156 = bitcast i8* %_pot_address_in_parent_stack_147 to x86_fp80*
  br label %64

; <label>:64:                                     ; preds = %fpuinst_LD_F80m13, %63
  %65 = phi x86_fp80* [ %49, %fpuinst_LD_F80m13 ], [ %_address_in_parent_stack_bt_156, %63 ]
  %_new_load_157 = load x86_fp80, x86_fp80* %65
  %66 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !9
  %67 = sub i3 %66, 1, !mcsema_real_eip !9
  store i3 %67, i3* %FPU_FLAG_TOP, !mcsema_real_eip !9
  %68 = zext i3 %67 to i32, !mcsema_real_eip !9
  %69 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %68, !mcsema_real_eip !9
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %68, !mcsema_real_eip !9
  %71 = bitcast i8* %70 to i2*, !mcsema_real_eip !9
  %_ptr_to_int_158 = ptrtoint i2* %71 to i64
  %_offset_above_rbp_161 = sub i64 %_ptr_to_int_158, %_local_end_to_int_
  %_pot_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_cond1_163 = icmp ugt i8* %70, %_local_stack_end_ptr_
  %_cond2_1_164 = icmp ugt i8* %70, %_parent_stack_end_ptr_
  %_cond2_2_165 = icmp ult i8* %70, %_parent_stack_start_ptr_
  %_cond2_166 = or i1 %_cond2_1_164, %_cond2_2_165
  %_cond4_167 = icmp ule i8* %_pot_address_in_parent_stack_162, %_parent_stack_end_ptr_
  %_cond1_n_cond2_168 = and i1 %_cond1_163, %_cond2_166
  %_cond1_n_cond2_cond3_169 = and i1 %_cond1_n_cond2_168, %_cond4_167
  br i1 %_cond1_n_cond2_cond3_169, label %72, label %73

; <label>:72:                                     ; preds = %64
  %_address_in_parent_stack_bt_171 = bitcast i8* %_pot_address_in_parent_stack_162 to i2*
  br label %73

; <label>:73:                                     ; preds = %64, %72
  %74 = phi i2* [ %71, %64 ], [ %_address_in_parent_stack_bt_171, %72 ]
  %_new_load_172 = load i2, i2* %74
  %75 = icmp eq i2 %_new_load_172, -1, !mcsema_real_eip !9
  br i1 %75, label %fpu_write14, label %fpu_exception15, !mcsema_real_eip !9

fpu_write14:                                      ; preds = %fpu_exception15, %73
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !9
  store i2 0, i2* %71, !mcsema_real_eip !9
  br label %fpu_write_exit16, !mcsema_real_eip !9

fpu_exception15:                                  ; preds = %73
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !9
  br label %fpu_write14, !mcsema_real_eip !9

fpu_write_exit16:                                 ; preds = %fpu_write14
  store x86_fp80 %_new_load_157, x86_fp80* %69, !mcsema_real_eip !9
  br label %fpuinst_MUL_FPrST0, !mcsema_real_eip !10

fpuinst_MUL_FPrST0:                               ; preds = %fpu_write_exit16
  %76 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %77 = zext i3 %76 to i32, !mcsema_real_eip !10
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %77, !mcsema_real_eip !10
  %79 = bitcast i8* %78 to i2*, !mcsema_real_eip !10
  %_ptr_to_int_173 = ptrtoint i2* %79 to i64
  %_offset_above_rbp_176 = sub i64 %_ptr_to_int_173, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %78, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %78, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %78, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  br i1 %_cond1_n_cond2_cond3_184, label %80, label %81

; <label>:80:                                     ; preds = %fpuinst_MUL_FPrST0
  %_address_in_parent_stack_bt_186 = bitcast i8* %_pot_address_in_parent_stack_177 to i2*
  br label %81

; <label>:81:                                     ; preds = %fpuinst_MUL_FPrST0, %80
  %82 = phi i2* [ %79, %fpuinst_MUL_FPrST0 ], [ %_address_in_parent_stack_bt_186, %80 ]
  %_new_load_187 = load i2, i2* %82
  switch i2 %_new_load_187, label %fpu_read_empty18 [
    i2 0, label %fpu_read_normal17
    i2 1, label %fpu_read_normal17
    i2 -2, label %fpu_read_normal17
  ], !mcsema_real_eip !10

fpu_read_normal17:                                ; preds = %81, %81, %81
  %83 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %77, !mcsema_real_eip !10
  %_ptr_to_int_188 = ptrtoint x86_fp80* %83 to i64
  %_ptr_bt_190 = bitcast x86_fp80* %83 to i8*
  %_offset_above_rbp_191 = sub i64 %_ptr_to_int_188, %_local_end_to_int_
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_191
  %_cond1_193 = icmp ugt i8* %_ptr_bt_190, %_local_stack_end_ptr_
  %_cond2_1_194 = icmp ugt i8* %_ptr_bt_190, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_ptr_bt_190, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  br i1 %_cond1_n_cond2_cond3_199, label %84, label %85

; <label>:84:                                     ; preds = %fpu_read_normal17
  %_address_in_parent_stack_bt_201 = bitcast i8* %_pot_address_in_parent_stack_192 to x86_fp80*
  br label %85

; <label>:85:                                     ; preds = %fpu_read_normal17, %84
  %86 = phi x86_fp80* [ %83, %fpu_read_normal17 ], [ %_address_in_parent_stack_bt_201, %84 ]
  %_new_load_202 = load x86_fp80, x86_fp80* %86
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue19, !mcsema_real_eip !10

fpu_read_empty18:                                 ; preds = %81
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue19, !mcsema_real_eip !10

fpu_read_continue19:                              ; preds = %fpu_read_empty18, %85
  %fpu_switch_phinode20 = phi x86_fp80 [ %_new_load_202, %85 ], [ 0xK00000000000000000000, %fpu_read_empty18 ], !mcsema_real_eip !10
  %87 = add i3 %76, 1, !mcsema_real_eip !10
  %88 = zext i3 %87 to i32, !mcsema_real_eip !10
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %88, !mcsema_real_eip !10
  %90 = bitcast i8* %89 to i2*, !mcsema_real_eip !10
  %_ptr_to_int_203 = ptrtoint i2* %90 to i64
  %_offset_above_rbp_206 = sub i64 %_ptr_to_int_203, %_local_end_to_int_
  %_pot_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_cond1_208 = icmp ugt i8* %89, %_local_stack_end_ptr_
  %_cond2_1_209 = icmp ugt i8* %89, %_parent_stack_end_ptr_
  %_cond2_2_210 = icmp ult i8* %89, %_parent_stack_start_ptr_
  %_cond2_211 = or i1 %_cond2_1_209, %_cond2_2_210
  %_cond4_212 = icmp ule i8* %_pot_address_in_parent_stack_207, %_parent_stack_end_ptr_
  %_cond1_n_cond2_213 = and i1 %_cond1_208, %_cond2_211
  %_cond1_n_cond2_cond3_214 = and i1 %_cond1_n_cond2_213, %_cond4_212
  br i1 %_cond1_n_cond2_cond3_214, label %91, label %92

; <label>:91:                                     ; preds = %fpu_read_continue19
  %_address_in_parent_stack_bt_216 = bitcast i8* %_pot_address_in_parent_stack_207 to i2*
  br label %92

; <label>:92:                                     ; preds = %fpu_read_continue19, %91
  %93 = phi i2* [ %90, %fpu_read_continue19 ], [ %_address_in_parent_stack_bt_216, %91 ]
  %_new_load_217 = load i2, i2* %93
  switch i2 %_new_load_217, label %fpu_read_empty22 [
    i2 0, label %fpu_read_normal21
    i2 1, label %fpu_read_normal21
    i2 -2, label %fpu_read_normal21
  ], !mcsema_real_eip !10

fpu_read_normal21:                                ; preds = %92, %92, %92
  %94 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %88, !mcsema_real_eip !10
  %_ptr_to_int_218 = ptrtoint x86_fp80* %94 to i64
  %_ptr_bt_220 = bitcast x86_fp80* %94 to i8*
  %_offset_above_rbp_221 = sub i64 %_ptr_to_int_218, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_ptr_bt_220, %_local_stack_end_ptr_
  %_cond2_1_224 = icmp ugt i8* %_ptr_bt_220, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_ptr_bt_220, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  br i1 %_cond1_n_cond2_cond3_229, label %95, label %96

; <label>:95:                                     ; preds = %fpu_read_normal21
  %_address_in_parent_stack_bt_231 = bitcast i8* %_pot_address_in_parent_stack_222 to x86_fp80*
  br label %96

; <label>:96:                                     ; preds = %fpu_read_normal21, %95
  %97 = phi x86_fp80* [ %94, %fpu_read_normal21 ], [ %_address_in_parent_stack_bt_231, %95 ]
  %_new_load_232 = load x86_fp80, x86_fp80* %97
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue23, !mcsema_real_eip !10

fpu_read_empty22:                                 ; preds = %92
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_read_continue23, !mcsema_real_eip !10

fpu_read_continue23:                              ; preds = %fpu_read_empty22, %96
  %fpu_switch_phinode24 = phi x86_fp80 [ %_new_load_232, %96 ], [ 0xK00000000000000000000, %fpu_read_empty22 ], !mcsema_real_eip !10
  %98 = fmul x86_fp80 %fpu_switch_phinode20, %fpu_switch_phinode24, !mcsema_real_eip !10
  %99 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %STi, i32 0, i32 %88, !mcsema_real_eip !10
  br i1 %_cond1_n_cond2_cond3_214, label %100, label %101

; <label>:100:                                    ; preds = %fpu_read_continue23
  %_address_in_parent_stack_bt_246 = bitcast i8* %_pot_address_in_parent_stack_207 to i2*
  br label %101

; <label>:101:                                    ; preds = %fpu_read_continue23, %100
  %102 = phi i2* [ %90, %fpu_read_continue23 ], [ %_address_in_parent_stack_bt_246, %100 ]
  %_new_load_247 = load i2, i2* %102
  %103 = icmp eq i2 %_new_load_247, -1, !mcsema_real_eip !10
  br i1 %103, label %fpu_write25, label %fpu_exception26, !mcsema_real_eip !10

fpu_write25:                                      ; preds = %fpu_exception26, %101
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  store i2 0, i2* %90, !mcsema_real_eip !10
  br label %fpu_write_exit27, !mcsema_real_eip !10

fpu_exception26:                                  ; preds = %101
  store i1 true, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  br label %fpu_write25, !mcsema_real_eip !10

fpu_write_exit27:                                 ; preds = %fpu_write25
  store x86_fp80 %98, x86_fp80* %99, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, !mcsema_real_eip !10
  %104 = load i3, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %105 = zext i3 %104 to i32, !mcsema_real_eip !10
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %FPU_TAG, i32 0, i32 %105, !mcsema_real_eip !10
  %107 = bitcast i8* %106 to i2*, !mcsema_real_eip !10
  store i2 -1, i2* %107, !mcsema_real_eip !10
  %108 = add i3 %104, 1, !mcsema_real_eip !10
  store i3 %108, i3* %FPU_FLAG_TOP, !mcsema_real_eip !10
  %_load_rsp_ptr_17 = load i8*, i8** %_RSP_ptr_
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_allin_new_bt_18 = bitcast i8* %_load_rsp_ptr_17 to i64*
  %_ptr_to_int_248 = ptrtoint i64* %_allin_new_bt_18 to i64
  %_offset_above_rbp_251 = sub i64 %_ptr_to_int_248, %_local_end_to_int_
  %_pot_address_in_parent_stack_252 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_251
  %_cond1_253 = icmp ugt i8* %_load_rsp_ptr_17, %_local_stack_end_ptr_
  %_cond2_1_254 = icmp ugt i8* %_load_rsp_ptr_17, %_parent_stack_end_ptr_
  %_cond2_2_255 = icmp ult i8* %_load_rsp_ptr_17, %_parent_stack_start_ptr_
  %_cond2_256 = or i1 %_cond2_1_254, %_cond2_2_255
  %_cond4_257 = icmp ule i8* %_pot_address_in_parent_stack_252, %_parent_stack_end_ptr_
  %_cond1_n_cond2_258 = and i1 %_cond1_253, %_cond2_256
  %_cond1_n_cond2_cond3_259 = and i1 %_cond1_n_cond2_258, %_cond4_257
  br i1 %_cond1_n_cond2_cond3_259, label %109, label %110

; <label>:109:                                    ; preds = %fpu_write_exit27
  %_address_in_parent_stack_bt_261 = bitcast i8* %_pot_address_in_parent_stack_252 to i64*
  br label %110

; <label>:110:                                    ; preds = %fpu_write_exit27, %109
  %111 = phi i64* [ %_allin_new_bt_18, %fpu_write_exit27 ], [ %_address_in_parent_stack_bt_261, %109 ]
  %_new_load_262 = load i64, i64* %111
  %_new_int2ptr_ = inttoptr i64 %_new_load_262 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_262, i64* %XBP, !mcsema_real_eip !11
  %_new_gep_19 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 8
  %112 = add i64 %RSP_val.8, 8, !mcsema_real_eip !11
  store volatile i8* %_new_gep_19, i8** %_RSP_ptr_
  store i64 %112, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_21 = getelementptr i8, i8* %_new_gep_19, i64 8
  %113 = add i64 %112, 8, !mcsema_real_eip !12
  %_allin_new_bt_22 = bitcast i8* %_new_gep_19 to i64*
  %_ptr_to_int_263 = ptrtoint i64* %_allin_new_bt_22 to i64
  %_offset_above_rbp_266 = sub i64 %_ptr_to_int_263, %_local_end_to_int_
  %_pot_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_266
  %_cond1_268 = icmp ugt i8* %_new_gep_19, %_local_stack_end_ptr_
  %_cond2_1_269 = icmp ugt i8* %_new_gep_19, %_parent_stack_end_ptr_
  %_cond2_2_270 = icmp ult i8* %_new_gep_19, %_parent_stack_start_ptr_
  %_cond2_271 = or i1 %_cond2_1_269, %_cond2_2_270
  %_cond4_272 = icmp ule i8* %_pot_address_in_parent_stack_267, %_parent_stack_end_ptr_
  %_cond1_n_cond2_273 = and i1 %_cond1_268, %_cond2_271
  %_cond1_n_cond2_cond3_274 = and i1 %_cond1_n_cond2_273, %_cond4_272
  br i1 %_cond1_n_cond2_cond3_274, label %114, label %115

; <label>:114:                                    ; preds = %110
  %_address_in_parent_stack_bt_276 = bitcast i8* %_pot_address_in_parent_stack_267 to i64*
  br label %115

; <label>:115:                                    ; preds = %110, %114
  %116 = phi i64* [ %_allin_new_bt_22, %110 ], [ %_address_in_parent_stack_bt_276, %114 ]
  %_new_load_277 = load i64, i64* %116
  store i64 %_new_load_277, i64* %XIP, !mcsema_real_eip !12
  store volatile i8* %_new_gep_21, i8** %_RSP_ptr_
  store i64 %113, i64* %XSP, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
}

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
