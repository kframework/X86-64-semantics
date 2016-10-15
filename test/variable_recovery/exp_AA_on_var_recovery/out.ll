; ModuleID = 'input.ll'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @foo(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*, i64 32
  %_RBP_ptr_ = alloca i8*, i64 32
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %RAX_val = alloca i64
  %RSP_val = alloca i64
  %RBP_val = alloca i64
  %RDI_val = alloca i64
  %RSI_val = alloca i64
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0
  %foo1 = load i64, i64* %RAX
  store i64 %foo1, i64* %RAX_val
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4
  %foo5 = load i64, i64* %RSI
  store i64 %foo5, i64* %RSI_val
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5
  %foo6 = load i64, i64* %RDI
  store i64 %foo6, i64* %RDI_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7
  %foo8 = load i64, i64* %RBP
  store i64 %foo8, i64* %RBP_val
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8
  %foo8K = load i64, i64* %RSP
  store i64 %foo8K, i64* %RSP_val

  %_new_load_ = load i8*, i8** %_RBP_ptr_
  %foo77 = load i64, i64* %RBP_val
  %_new_load_1 = load i8*, i8** %_RSP_ptr_
  %foo78 = load i64, i64* %RSP_val
  %_new_gep_ = getelementptr i8, i8* %_new_load_1, i64 -8
  %foo79 = add i64 %foo78, -8
  %_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %foo80 = inttoptr i64 %foo79 to i64*
  store i64 %foo77, i64* %_new_bt_

  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %foo79, i64* %RBP_val

  %_new_gep_2 = getelementptr i8, i8* %_new_load_1, i64 -24
  %foo81 = add i64 %foo78, -24
  store volatile i8* %_new_gep_2, i8** %_RSP_ptr_
  store i64 %foo81, i64* %RSP_val

  store i64 10, i64* %RDI_val
  store i64 20, i64* %RSI_val

  %_new_load_3 = load i8*, i8** %_RBP_ptr_
  %foo94 = load i64, i64* %RBP_val
  %_new_gep_4 = getelementptr i8, i8* %_new_load_3, i64 -4
  %foo95 = add i64 %foo94, -4
  %_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %foo96 = inttoptr i64 %foo95 to i64*
  %foo97 = bitcast i64* %_new_bt_5 to i32*
  store i32 0, i32* %foo97

  %_new_load_6 = load i8*, i8** %_RSP_ptr_
  %foo98 = load i64, i64* %RSP_val
  %_new_gep_7 = getelementptr i8, i8* %_new_load_6, i64 -8
  %foo99 = add i64 %foo98, -8
  %_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %foo100 = inttoptr i64 %foo99 to i64*
  store i64 -4981261766360305936, i64* %_new_bt_8
  store volatile i8* %_new_gep_7, i8** %_RSP_ptr_
  store i64 %foo99, i64* %RSP_val

  %foo105 = load i64, i64* %RSI_val
  store i64 %foo105, i64* %RSI
  %foo106 = load i64, i64* %RDI_val
  store i64 %foo106, i64* %RDI
  %_new_load_9 = load i8*, i8** %_RBP_ptr_
  %foo108 = load i64, i64* %RBP_val
  store i64 %foo108, i64* %RBP
  %foo175 = load i64, i64* %RSI
  store i64 %foo175, i64* %RSI_val
  %foo176 = load i64, i64* %RDI
  store i64 %foo176, i64* %RDI_val
  %foo178 = load i64, i64* %RBP
  store i64 %foo178, i64* %RBP_val
  ret void
}

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_RSP_ptr_ = alloca i8*, i64 0
  %_RBP_ptr_ = alloca i8*, i64 0
  %_local_stack_start_ptr_ = alloca i8, i64 0
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 0
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  tail call x86_64_sysvcc void @foo(%struct.regs* %0)
  ret void
}
