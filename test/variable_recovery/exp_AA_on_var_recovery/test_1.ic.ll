; ModuleID = 'test_1.ll'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @foo(%struct.regs*) {
entry:
  %foo_local_stack_start_ptr_1 = alloca [32 x i8], align 1
  %foo_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %foo_local_stack_start_ptr_1, i64 0, i64 32
  %foo_local_stack_end_ = ptrtoint i8* %foo_local_stack_end_ptr_ to i64

  %fooRSP_val = alloca i64, align 8
  %fooRBP_val = alloca i64, align 8
  %fooRDI_val = alloca i64, align 8
  %fooRSI_val = alloca i64, align 8

  %fooRSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4
  %foo5 = load i64, i64* %fooRSI, align 8
  store i64 %foo5, i64* %fooRSI_val, align 8
  %fooRDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5
  %foo6 = load i64, i64* %fooRDI, align 8
  store i64 %foo6, i64* %fooRDI_val, align 8
  %fooRBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7
  %foo8 = load i64, i64* %fooRBP, align 8
  store i64 %foo8, i64* %fooRBP_val, align 8
  store i64 %foo_local_stack_end_, i64* %fooRSP_val, align 8

  ; push rbp
  %foo79 = add i64 %foo_local_stack_end_, -8
  %foo80 = inttoptr i64 %foo79 to i64*
  store i64 %foo8, i64* %foo80, align 8
  store i64 %foo79, i64* %fooRBP_val, align 8
  ;rsp -+ 24
  %foo81 = add i64 %foo_local_stack_end_, -24
  store i64 %foo81, i64* %fooRSP_val, align 8
  
  store i64 10, i64* %fooRDI_val, align 8
  store i64 20, i64* %fooRSI_val, align 8
  
  //-12(rsp) = 0
  %foo95 = add i64 %foo_local_stack_end_, -12
  %foo97 = inttoptr i64 %foo95 to i32*
  store i32 0, i32* %foo97, align 4
  
  %foo98 = load i64, i64* %fooRSP_val, align 8
  %foo99 = add i64 %foo98, -8
  %foo100 = inttoptr i64 %foo99 to i64*
  store i64 -4981261766360305936, i64* %foo100, align 8

  store i64 %foo99, i64* %fooRSP_val, align 8
  %foo105 = load i64, i64* %fooRSI_val, align 8
  store i64 %foo105, i64* %fooRSI, align 8
  %foo106 = load i64, i64* %fooRDI_val, align 8
  store i64 %foo106, i64* %fooRDI, align 8
  %foo108 = load i64, i64* %fooRBP_val, align 8
  store i64 %foo108, i64* %fooRBP, align 8
  store i1 true, i1* undef, align 1
  store i64 %foo105, i64* %fooRSI_val, align 8
  store i64 %foo106, i64* %fooRDI_val, align 8
  store i64 %foo108, i64* %fooRBP_val, align 8
  ret void
}

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @foo(%struct.regs* %0)
  ret void
}

define internal x86_64_sysvcc void @bar(%struct.regs*, i64 %bar_parent_stack_start_ptr_, i64 %bar_parent_stack_end_ptr_) {
entry:
  %bar_local_stack_start_ptr_1 = alloca [28 x i8], align 1
  %bar_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %bar_local_stack_start_ptr_1, i64 0, i64 28
  %bar_local_stack_end_ = ptrtoint i8* %bar_local_stack_end_ptr_ to i64

  %barRSP_val = alloca i64, align 8
  %barRBP_val = alloca i64, align 8
  %barRDI_val = alloca i64, align 8
  %barRSI_val = alloca i64, align 8
  %barRSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4
  %bar5 = load i64, i64* %barRSI, align 8
  store i64 %bar5, i64* %barRSI_val, align 8
  %barRDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5
  %bar6 = load i64, i64* %barRDI, align 8
  store i64 %bar6, i64* %barRDI_val, align 8
  store i64 %bar_local_stack_end_, i64* %barRSP_val, align 8

  %barRBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7
  %bar8 = load i64, i64* %barRBP, align 8
  store i64 %bar8, i64* %barRBP_val, align 8

  %bar81 = add i64 %bar_local_stack_end_, -8
  %bar82 = inttoptr i64 %bar81 to i64*
  store i64 %bar8, i64* %bar82, align 8
  store i64 %bar81, i64* %barRSP_val, align 8
  store i64 %bar81, i64* %barRBP_val, align 8
  %bar83 = add i64 %bar_local_stack_end_, -12
  %bar85 = load i64, i64* %barRDI_val, align 8
  %bar86 = trunc i64 %bar85 to i32
  %bar87 = inttoptr i64 %bar83 to i32*
  store i32 %bar86, i32* %bar87, align 4
  %bar88 = load i64, i64* %barRBP_val, align 8
  %bar89 = add i64 %bar88, -8
  %bar91 = load i64, i64* %barRSI_val, align 8
  %bar92 = trunc i64 %bar91 to i32
  %bar93 = inttoptr i64 %bar89 to i32*
  store i32 %bar92, i32* %bar93, align 4
  %bar94 = load i64, i64* %barRBP_val, align 8
  %bar95 = add i64 %bar94, -4
  %bar97 = inttoptr i64 %bar95 to i32*
  %bar_new_load_14 = load i32, i32* %bar97, align 4
  %bar101 = zext i32 %bar_new_load_14 to i64
  store i64 %bar101, i64* %barRSI_val, align 8
  %bar141 = load i64, i64* %barRSP_val, align 8
  %bar142 = inttoptr i64 %bar141 to i64*
  %bar143 = load i64, i64* %bar142, align 8
  store i64 %bar143, i64* %barRBP_val, align 8
  %bar144 = add i64 %bar141, 16
  store i64 %bar144, i64* %barRSP_val, align 8
  %bar149 = load i64, i64* %barRSI_val, align 8
  store i64 %bar149, i64* %barRSI, align 8
  %bar150 = load i64, i64* %barRDI_val, align 8
  store i64 %bar150, i64* %barRDI, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nounwind readnone }
