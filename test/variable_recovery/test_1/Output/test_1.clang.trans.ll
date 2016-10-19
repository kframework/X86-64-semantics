; ModuleID = 'Output/test_1.clang.trans.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 16
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 16
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  ; Def from:   %_RSP_ptr_ = alloca i8*
  ; store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_


  %RAX_val = alloca i64

  ; Def from:   %_RBP_ptr_ = alloca i8*
  ; %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  
  ; Def from:   store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  ; %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_

  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_

  ; *(rsp - 12) = 0
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -12
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %XXX83 = bitcast i64* %_allin_new_bt_2 to i32*
  store i32 0, i32* %XXX83

  ; Clobber from:   store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  ; store i32 0, i32* %XXX83

  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -8
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %XXX87 = bitcast i64* %_allin_new_bt_5 to i32*
  store i32 1, i32* %XXX87

  ; Def from:   %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  ; store i32 1, i32* %XXX87


  ; Clobber from:   store i32 1, i32* %XXX87
  ; %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_

  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -8
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %XXX91 = bitcast i64* %_allin_new_bt_8 to i32*
  %XXX92 = load i32, i32* %XXX91
  %XXX93 = zext i32 %XXX92 to i64
  store i64 %XXX93, i64* %RAX_val

  ; Clobber from:   store i32 1, i32* %XXX87
  ; %XXX92 = load i32, i32* %XXX91


  ;Clobber from:   store i32 1, i32* %XXX87
  ;%_load_rsp_ptr_9 = load i8*, i8** %_RSP_ptr_

  %_load_rsp_ptr_9 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_10 = bitcast i8* %_load_rsp_ptr_9 to i64*
  %XXX96 = load i64, i64* %_allin_new_bt_10
  %_new_int2ptr_ = inttoptr i64 %XXX96 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_

  %_new_gep_11 = getelementptr i8, i8* %_load_rsp_ptr_9, i64 16
  store volatile i8* %_new_gep_11, i8** %_RSP_ptr_
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

attributes #0 = { argmemonly nounwind }
