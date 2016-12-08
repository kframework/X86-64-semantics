; ModuleID = 'Output/test_22.clang.trans.opt.bc'
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

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline norecurse nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i64 0, i32 19, !mcsema_real_eip !2
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !2
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i64 0, i32 21, !mcsema_real_eip !2
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to x86_fp80*
  %5 = load x86_fp80, x86_fp80* %4, align 16, !mcsema_real_eip !4
  %6 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !4
  %7 = add i3 %6, -1
  store i3 %7, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !4
  %8 = zext i3 %7 to i64
  %9 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %8
  %10 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %8
  %11 = bitcast i8* %10 to i2*, !mcsema_real_eip !4
  %12 = load i2, i2* %11, align 1, !mcsema_real_eip !4
  %13 = icmp eq i2 %12, -1, !mcsema_real_eip !4
  br i1 %13, label %fpu_write, label %fpu_exception, !mcsema_real_eip !4

fpu_write:                                        ; preds = %fpu_exception, %entry
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !4
  store i2 0, i2* %11, align 1, !mcsema_real_eip !4
  store x86_fp80 %5, x86_fp80* %9, align 16, !mcsema_real_eip !4
  %14 = add i64 %RSP_val.1, -24, !mcsema_real_eip !5
  %15 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !5
  %16 = zext i3 %15 to i64
  %17 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %16
  %18 = bitcast i8* %17 to i2*, !mcsema_real_eip !5
  %19 = load i2, i2* %18, align 1, !mcsema_real_eip !5
  %switch1 = icmp eq i2 %19, -1
  br i1 %switch1, label %fpu_read_continue, label %fpu_read_normal

fpu_exception:                                    ; preds = %entry
  store i1 true, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !4
  br label %fpu_write, !mcsema_real_eip !4

fpu_read_normal:                                  ; preds = %fpu_write
  %20 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %16
  %21 = load x86_fp80, x86_fp80* %20, align 16, !mcsema_real_eip !5
  br label %fpu_read_continue, !mcsema_real_eip !5

fpu_read_continue:                                ; preds = %fpu_write, %fpu_read_normal
  %fpu_switch_phinode = phi x86_fp80 [ %21, %fpu_read_normal ], [ 0xK00000000000000000000, %fpu_write ], !mcsema_real_eip !5
  store i1 false, i1* %FPU_FLAG_C1, align 1
  %22 = inttoptr i64 %14 to x86_fp80*
  store x86_fp80 %fpu_switch_phinode, x86_fp80* %22, align 16, !mcsema_real_eip !5
  %23 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !5
  %24 = zext i3 %23 to i64
  %25 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %24
  %26 = bitcast i8* %25 to i2*, !mcsema_real_eip !5
  store i2 -1, i2* %26, align 1, !mcsema_real_eip !5
  %27 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %24
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !6
  store i2 0, i2* %26, align 1, !mcsema_real_eip !6
  store x86_fp80 0xK4000C90FDAA22168C000, x86_fp80* %27, align 16, !mcsema_real_eip !6
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %28 = add i64 %RBP_val.5, -32, !mcsema_real_eip !7
  %29 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !7
  %30 = zext i3 %29 to i64
  %31 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %30
  %32 = bitcast i8* %31 to i2*, !mcsema_real_eip !7
  %33 = load i2, i2* %32, align 1, !mcsema_real_eip !7
  %switch2 = icmp eq i2 %33, -1
  br i1 %switch2, label %fpu_read_continue7, label %fpu_read_normal5

fpu_read_normal5:                                 ; preds = %fpu_read_continue
  %34 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %30
  %35 = load x86_fp80, x86_fp80* %34, align 16, !mcsema_real_eip !7
  br label %fpu_read_continue7, !mcsema_real_eip !7

fpu_read_continue7:                               ; preds = %fpu_read_continue, %fpu_read_normal5
  %fpu_switch_phinode8 = phi x86_fp80 [ %35, %fpu_read_normal5 ], [ 0xK00000000000000000000, %fpu_read_continue ], !mcsema_real_eip !7
  store i1 false, i1* %FPU_FLAG_C1, align 1
  %36 = inttoptr i64 %28 to x86_fp80*
  store x86_fp80 %fpu_switch_phinode8, x86_fp80* %36, align 16, !mcsema_real_eip !7
  %37 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !7
  %38 = zext i3 %37 to i64
  %39 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %38
  %40 = bitcast i8* %39 to i2*, !mcsema_real_eip !7
  store i2 -1, i2* %40, align 1, !mcsema_real_eip !7
  %41 = add i3 %37, 1, !mcsema_real_eip !7
  store i3 %41, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !7
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %42 = add i64 %RBP_val.6, -16, !mcsema_real_eip !8
  %43 = inttoptr i64 %42 to x86_fp80*
  %44 = load x86_fp80, x86_fp80* %43, align 16, !mcsema_real_eip !8
  store i3 %37, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !8
  %45 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %38
  %46 = load i2, i2* %40, align 1, !mcsema_real_eip !8
  %47 = icmp eq i2 %46, -1, !mcsema_real_eip !8
  br i1 %47, label %fpu_write10, label %fpu_exception11, !mcsema_real_eip !8

fpu_write10:                                      ; preds = %fpu_exception11, %fpu_read_continue7
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !8
  store i2 0, i2* %40, align 1, !mcsema_real_eip !8
  store x86_fp80 %44, x86_fp80* %45, align 16, !mcsema_real_eip !8
  %48 = add i64 %RBP_val.6, -32, !mcsema_real_eip !9
  %49 = inttoptr i64 %48 to x86_fp80*
  %50 = load x86_fp80, x86_fp80* %49, align 16, !mcsema_real_eip !9
  %51 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !9
  %52 = add i3 %51, -1
  store i3 %52, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !9
  %53 = zext i3 %52 to i64
  %54 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %53
  %55 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %53
  %56 = bitcast i8* %55 to i2*, !mcsema_real_eip !9
  %57 = load i2, i2* %56, align 1, !mcsema_real_eip !9
  %58 = icmp eq i2 %57, -1, !mcsema_real_eip !9
  br i1 %58, label %fpu_write14, label %fpu_exception15, !mcsema_real_eip !9

fpu_exception11:                                  ; preds = %fpu_read_continue7
  store i1 true, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !8
  br label %fpu_write10, !mcsema_real_eip !8

fpu_write14:                                      ; preds = %fpu_exception15, %fpu_write10
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !9
  store i2 0, i2* %56, align 1, !mcsema_real_eip !9
  store x86_fp80 %50, x86_fp80* %54, align 16, !mcsema_real_eip !9
  %59 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !10
  %60 = zext i3 %59 to i64
  %61 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %60
  %62 = bitcast i8* %61 to i2*, !mcsema_real_eip !10
  %63 = load i2, i2* %62, align 1, !mcsema_real_eip !10
  %switch3 = icmp eq i2 %63, -1
  br i1 %switch3, label %fpu_read_continue19, label %fpu_read_normal17

fpu_exception15:                                  ; preds = %fpu_write10
  store i1 true, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !9
  br label %fpu_write14, !mcsema_real_eip !9

fpu_read_normal17:                                ; preds = %fpu_write14
  %64 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %60
  %65 = load x86_fp80, x86_fp80* %64, align 16, !mcsema_real_eip !10
  br label %fpu_read_continue19, !mcsema_real_eip !10

fpu_read_continue19:                              ; preds = %fpu_write14, %fpu_read_normal17
  %fpu_switch_phinode20 = phi x86_fp80 [ %65, %fpu_read_normal17 ], [ 0xK00000000000000000000, %fpu_write14 ], !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, align 1
  %66 = add i3 %59, 1, !mcsema_real_eip !10
  %67 = zext i3 %66 to i64
  %68 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %67
  %69 = bitcast i8* %68 to i2*, !mcsema_real_eip !10
  %70 = load i2, i2* %69, align 1, !mcsema_real_eip !10
  %switch = icmp eq i2 %70, -1
  %.pre = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %67
  br i1 %switch, label %fpu_read_continue23, label %fpu_read_normal21

fpu_read_normal21:                                ; preds = %fpu_read_continue19
  %71 = load x86_fp80, x86_fp80* %.pre, align 16, !mcsema_real_eip !10
  br label %fpu_read_continue23, !mcsema_real_eip !10

fpu_read_continue23:                              ; preds = %fpu_read_continue19, %fpu_read_normal21
  %fpu_switch_phinode24 = phi x86_fp80 [ %71, %fpu_read_normal21 ], [ 0xK00000000000000000000, %fpu_read_continue19 ], !mcsema_real_eip !10
  %72 = fmul x86_fp80 %fpu_switch_phinode20, %fpu_switch_phinode24, !mcsema_real_eip !10
  store i2 0, i2* %69, align 1, !mcsema_real_eip !10
  store x86_fp80 %72, x86_fp80* %.pre, align 16, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !10
  %73 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !10
  %74 = zext i3 %73 to i64
  %75 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %74
  %76 = bitcast i8* %75 to i2*, !mcsema_real_eip !10
  store i2 -1, i2* %76, align 1, !mcsema_real_eip !10
  %77 = add i3 %73, 1, !mcsema_real_eip !10
  store i3 %77, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !10
  %RSP_val.8 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %78 = inttoptr i64 %RSP_val.8 to i64*, !mcsema_real_eip !11
  %79 = load i64, i64* %78, align 8, !mcsema_real_eip !11
  store i64 %79, i64* %XBP, align 8, !mcsema_real_eip !11
  %80 = add i64 %RSP_val.8, 8, !mcsema_real_eip !11
  store i64 %80, i64* %XSP, align 8, !mcsema_real_eip !11
  %81 = add i64 %RSP_val.8, 16, !mcsema_real_eip !12
  %82 = inttoptr i64 %80 to i64*, !mcsema_real_eip !12
  %83 = load i64, i64* %82, align 8, !mcsema_real_eip !12
  store i64 %83, i64* %XIP, align 8, !mcsema_real_eip !12
  store i64 %81, i64* %XSP, align 8, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
}

attributes #0 = { noinline norecurse nounwind }

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
