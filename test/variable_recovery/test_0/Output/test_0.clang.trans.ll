; ModuleID = 'Output/test_0.clang.trans.bc'
source_filename = "Output/test_0.clang.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*, i64 32
  %_RBP_ptr_ = alloca i8*, i64 32
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %RSP_val = alloca i64
  %RBP_val = alloca i64
  %RDI_val = alloca i64
  %RSI_val = alloca i64
  %RDX_val = alloca i64
  %RCX_val = alloca i64
  %RBX_val = alloca i64
  %RAX_val = alloca i64
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0
  %foo1 = load i64, i64* %RAX
  store i64 %foo1, i64* %RAX_val
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1
  %foo2 = load i64, i64* %RBX
  store i64 %foo2, i64* %RBX_val
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2
  %foo3 = load i64, i64* %RCX
  store i64 %foo3, i64* %RCX_val
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3
  %foo4 = load i64, i64* %RDX
  store i64 %foo4, i64* %RDX_val
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4
  %foo5 = load i64, i64* %RSI
  store i64 %foo5, i64* %RSI_val
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5
  %foo6 = load i64, i64* %RDI
  store i64 %foo6, i64* %RDI_val
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6
  %foo7 = load i64, i64* %RSP
  store i64 %foo7, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7
  %foo8 = load i64, i64* %RBP
  store i64 %foo8, i64* %RBP_val
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %foo77 = load i64, i64* %RBP_val
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %foo78 = load i64, i64* %RSP_val
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %foo79 = add i64 %foo78, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %foo80 = inttoptr i64 %foo79 to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %foo79, i64* %RSP_val
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %foo79, i64* %RBP_val
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -24
  %foo81 = add i64 %foo78, -24
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %foo82 = inttoptr i64 %foo81 to i64*
  %foo83 = ptrtoint i64* %_allin_new_bt_2 to i64
  store i64 %foo83, i64* %RAX_val
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -12
  %foo84 = add i64 %foo78, -12
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %foo85 = inttoptr i64 %foo84 to i64*
  %foo86 = bitcast i64* %_allin_new_bt_4 to i32*
  store i32 0, i32* %foo86
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %foo87 = load i64, i64* %RBP_val
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -24
  %foo88 = add i64 %foo87, -24
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %foo89 = inttoptr i64 %foo88 to i64*
  %foo90 = load i64, i64* %RAX_val
  store i64 %foo90, i64* %_allin_new_bt_7
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %foo91 = load i64, i64* %RBP_val
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %foo92 = add i64 %foo91, -24
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %foo93 = inttoptr i64 %foo92 to i64*
  %foo94 = load i64, i64* %_allin_new_bt_10
  store i64 %foo94, i64* %RAX_val
  %foo95 = inttoptr i64 %foo94 to i64*
  %foo96 = bitcast i64* %foo95 to i32*
  store i32 1, i32* %foo96
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %foo97 = load i64, i64* %RBP_val
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -24
  %foo98 = add i64 %foo97, -24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %foo99 = inttoptr i64 %foo98 to i64*
  %foo100 = load i64, i64* %_allin_new_bt_13
  store i64 %foo100, i64* %RAX_val
  %foo101 = add i64 %foo100, 4
  %foo102 = inttoptr i64 %foo101 to i64*
  %foo103 = bitcast i64* %foo102 to i32*
  store i32 2, i32* %foo103
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %foo104 = load i64, i64* %RBP_val
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -24
  %foo105 = add i64 %foo104, -24
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %foo106 = inttoptr i64 %foo105 to i64*
  %foo107 = load i64, i64* %_allin_new_bt_16
  store i64 %foo107, i64* %RAX_val
  %foo108 = add i64 %foo107, 4
  %foo109 = inttoptr i64 %foo108 to i64*
  %foo110 = bitcast i64* %foo109 to i32*
  %foo111 = load i32, i32* %foo110
  %foo112 = zext i32 %foo111 to i64
  store i64 %foo112, i64* %RAX_val


  %_load_rsp_ptr_17 = load i8*, i8** %_RSP_ptr_
  %foo113 = load i64, i64* %RSP_val
  %_allin_new_bt_18 = bitcast i8* %_load_rsp_ptr_17 to i64*
  %foo114 = inttoptr i64 %foo113 to i64*
  %foo115 = load i64, i64* %_allin_new_bt_18
  %_new_int2ptr_ = inttoptr i64 %foo115 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %foo115, i64* %RBP_val

  %_new_gep_19 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 16
  %foo116 = add i64 %foo113, 16
  store volatile i8* %_new_gep_19, i8** %_RSP_ptr_
  store i64 %foo116, i64* %RSP_val
  %foo117 = load i64, i64* %RAX_val
  store i64 %foo117, i64* %RAX
  %foo118 = load i64, i64* %RBX_val
  store i64 %foo118, i64* %RBX
  %foo119 = load i64, i64* %RCX_val
  store i64 %foo119, i64* %RCX
  %foo120 = load i64, i64* %RDX_val
  store i64 %foo120, i64* %RDX
  %foo121 = load i64, i64* %RSI_val
  store i64 %foo121, i64* %RSI
  %foo122 = load i64, i64* %RDI_val
  store i64 %foo122, i64* %RDI
  %_load_rsp_ptr_20 = load i8*, i8** %_RSP_ptr_
  %foo123 = load i64, i64* %RSP_val
  %_new_ptr2int_21 = ptrtoint i8* %_load_rsp_ptr_20 to i64
  store volatile i64 %_new_ptr2int_21, i64* %RSP
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %foo124 = load i64, i64* %RBP_val
  %_new_ptr2int_23 = ptrtoint i8* %_load_rbp_ptr_22 to i64
  store volatile i64 %_new_ptr2int_23, i64* %RBP
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_RSP_ptr_ = alloca i8*, i64 0
  %_RBP_ptr_ = alloca i8*, i64 0
  %_local_stack_start_ptr_ = alloca i8, i64 0
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 0
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

attributes #0 = { argmemonly nounwind }
