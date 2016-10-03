; ModuleID = 'test_1.ll'
source_filename = "test_1.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

define internal void @foo() {
entry:
  %_local_stack_alloc_ = alloca i64, i64 32
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 32

  %RSP_val = alloca i64

  store i64 %_local_stack_end_, i64* %RSP_val

  %0 = load i64, i64* %RSP_val
  %1 = inttoptr i64 %0 to i64*
  store i64 0, i64* %1

  %2 = add i64 %0, -16
  %3 = inttoptr i64 %2 to i64*
  store i64 1, i64* %3
  ret void
}
