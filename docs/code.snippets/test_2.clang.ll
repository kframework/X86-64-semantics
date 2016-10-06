; ModuleID = 'Output/test_1.clang.trans.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64,
  %i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80],
  %i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1,
  %i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128,
  %i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128,
  %i64, i64 }>

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*, i64 56
  %_RBP_ptr_ = alloca i8*, i64 56
  %_local_stack_start_ptr_ = alloca i8, i64 56
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 56
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  
  %DF_val = alloca i1
  %OF_val = alloca i1
  %SF_val = alloca i1
  %CF_val = alloca i1
  %AF_val = alloca i1
  %PF_val = alloca i1
  %ZF_val = alloca i1
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
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17
  %foo18 = load i1, i1* %CF, align 1
  store i1 %foo18, i1* %CF_val
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18
  %foo19 = load i1, i1* %PF, align 1
  store i1 %foo19, i1* %PF_val
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19
  %foo20 = load i1, i1* %AF, align 1
  store i1 %foo20, i1* %AF_val
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20
  %foo21 = load i1, i1* %ZF, align 1
  store i1 %foo21, i1* %ZF_val
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21
  %foo22 = load i1, i1* %SF, align 1
  store i1 %foo22, i1* %SF_val
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22
  %foo23 = load i1, i1* %OF, align 1
  store i1 %foo23, i1* %OF_val
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23
  %foo24 = load i1, i1* %DF, align 1
  store i1 %foo24, i1* %DF_val

  ; push   %rbp
  ; mov %rsp,%rbp
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %foo78 = load i64, i64* %RSP_val
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %foo79 = add i64 %foo78, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %foo79, i64* %RSP_val
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %foo79, i64* %RBP_val

  ; movl   $0x0,-0x4(%rbp)
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -12
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %foo83 = bitcast i64* %_allin_new_bt_2 to i32*
  store i32 0, i32* %foo83
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -8
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %foo87 = bitcast i64* %_allin_new_bt_5 to i32*
  store i32 0, i32* %foo87

  ; cmpl   $0x5,-0x8(%rbp)
  ; jge    42 <main+0x42>
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -8
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %foo91 = bitcast i64* %_allin_new_bt_8 to i32*
  %foo92 = load i32, i32* %foo91
  %foo93 = add i32 %foo92, -5
  %foo94 = xor i32 %foo93, %foo92
  %foo95 = and i32 %foo94, 16
  %foo96 = icmp ne i32 %foo95, 0
  store i1 %foo96, i1* %AF_val
  %foo97 = trunc i32 %foo93 to i8
  %foo98 = tail call i8 @llvm.ctpop.i8(i8 %foo97)
  %foo99 = and i8 %foo98, 1
  %foo100 = icmp eq i8 %foo99, 0
  store i1 %foo100, i1* %PF_val
  %foo101 = icmp eq i32 %foo93, 0
  store i1 %foo101, i1* %ZF_val
  %foo102 = icmp slt i32 %foo93, 0
  store i1 %foo102, i1* %SF_val
  %foo103 = icmp ult i32 %foo92, 5
  store i1 %foo103, i1* %CF_val
  %foo104 = and i32 %foo94, %foo92
  %foo105 = icmp slt i32 %foo104, 0
  store i1 %foo105, i1* %OF_val
  %tmp = xor i1 %foo102, %foo105
  br i1 %tmp, label %block_0x1c.preheader, label %block_0x42

block_0x1c.preheader:                             ; preds = %entry
  br label %block_0x1c

block_0x42.loopexit:                              ; preds = %block_0x1c
  br label %block_0x42

block_0x42:                                       ; preds = %block_0x42.loopexit, %entry

  ; mov    -0x2c(%rbp),%eax
  %_load_rbp_ptr_9 = load i8*, i8** %_RBP_ptr_
  %_new_gep_10 = getelementptr i8, i8* %_load_rbp_ptr_9, i64 -44
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %foo109 = bitcast i64* %_allin_new_bt_11 to i32*
  %foo110 = load i32, i32* %foo109
  %foo111 = zext i32 %foo110 to i64
  store i64 %foo111, i64* %RAX_val

  ; pop rbp
  %_load_rsp_ptr_12 = load i8*, i8** %_RSP_ptr_
  %foo112 = load i64, i64* %RSP_val
  %_allin_new_bt_13 = bitcast i8* %_load_rsp_ptr_12 to i64*
  %foo114 = load i64, i64* %_allin_new_bt_13
  %_new_int2ptr_ = inttoptr i64 %foo114 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %foo114, i64* %RBP_val
  %_new_gep_14 = getelementptr i8, i8* %_load_rsp_ptr_12, i64 16
  %foo115 = add i64 %foo112, 16
  store volatile i8* %_new_gep_14, i8** %_RSP_ptr_
  store i64 %foo115, i64* %RSP_val

  ; struct winding
  %foo116 = load i64, i64* %RAX_val
  store i64 %foo116, i64* %RAX
  %foo117 = load i64, i64* %RBX_val
  store i64 %foo117, i64* %RBX
  %foo118 = load i64, i64* %RCX_val
  store i64 %foo118, i64* %RCX
  %foo119 = load i64, i64* %RDX_val
  store i64 %foo119, i64* %RDX
  %foo120 = load i64, i64* %RSI_val
  store i64 %foo120, i64* %RSI
  %foo121 = load i64, i64* %RDI_val
  store i64 %foo121, i64* %RDI
  %foo122 = load i64, i64* %RSP_val
  store i64 %foo122, i64* %RSP
  %foo123 = load i64, i64* %RBP_val
  store i64 %foo123, i64* %RBP
  %foo133 = load i1, i1* %CF_val
  store i1 %foo133, i1* %CF, align 1
  %foo134 = load i1, i1* %PF_val
  store i1 %foo134, i1* %PF, align 1
  %foo135 = load i1, i1* %AF_val
  store i1 %foo135, i1* %AF, align 1
  %foo136 = load i1, i1* %ZF_val
  store i1 %foo136, i1* %ZF, align 1
  %foo137 = load i1, i1* %SF_val
  store i1 %foo137, i1* %SF, align 1
  %foo138 = load i1, i1* %OF_val
  store i1 %foo138, i1* %OF, align 1
  %foo139 = load i1, i1* %DF_val
  store i1 %foo139, i1* %DF, align 1
  ret void

block_0x1c:                                       ; preds = %block_0x1c, %block_0x1c.preheader

  ; movslq -0x8(%rbp),%rax
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %foo189 = bitcast i64* %_allin_new_bt_21 to i32*
  %foo190 = load i32, i32* %foo189
  %foo191 = sext i32 %foo190 to i64
  store i64 %foo191, i64* %RAX_val

  ; movl   $0x1,-0x30(%rbp,%rax,8) == [%rbp - 48 + %rax*8] = 1
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -48
  %foo194 = shl nsw i64 %foo191, 3
  %_new_gep_24 = getelementptr i8, i8* %_new_gep_23, i64 %foo194
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %foo197 = bitcast i64* %_allin_new_bt_25 to i32*
  store i32 1, i32* %foo197

  ; movslq -0x8(%rbp),%rax
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %foo201 = bitcast i64* %_allin_new_bt_28 to i32*
  %foo202 = load i32, i32* %foo201
  %foo203 = sext i32 %foo202 to i64
  store i64 %foo203, i64* %RAX_val

  ; movl   $0x2,-0x2c(%rbp,%rax,8)
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -44
  %foo206 = shl nsw i64 %foo203, 3
  %_new_gep_31 = getelementptr i8, i8* %_new_gep_30, i64 %foo206
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %foo209 = bitcast i64* %_allin_new_bt_32 to i32*
  store i32 2, i32* %foo209

  ; mov    -0x8(%rbp),%eax
  ; add    $0x1,%eax
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -8
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %foo213 = bitcast i64* %_allin_new_bt_35 to i32*
  %foo214 = load i32, i32* %foo213
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %foo214, i32 1)
  %foo215 = extractvalue { i32, i1 } %uadd, 0

  %foo216 = xor i32 %foo215, %foo214
  %foo217 = and i32 %foo216, 16
  %foo218 = icmp ne i32 %foo217, 0
  store i1 %foo218, i1* %AF_val
  %foo219 = icmp slt i32 %foo215, 0
  store i1 %foo219, i1* %SF_val
  %foo220 = icmp eq i32 %foo215, 0
  store i1 %foo220, i1* %ZF_val
  %foo221 = xor i32 %foo214, -2147483648
  %foo222 = and i32 %foo216, %foo221
  %foo223 = icmp slt i32 %foo222, 0
  store i1 %foo223, i1* %OF_val
  %foo224 = trunc i32 %foo215 to i8
  %foo225 = tail call i8 @llvm.ctpop.i8(i8 %foo224)
  %foo226 = and i8 %foo225, 1
  %foo227 = icmp eq i8 %foo226, 0
  store i1 %foo227, i1* %PF_val
  %foo228 = extractvalue { i32, i1 } %uadd, 1
  store i1 %foo228, i1* %CF_val

  %foo229 = zext i32 %foo215 to i64
  store i64 %foo229, i64* %RAX_val

  ; mov    %eax,-0x8(%rbp)
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -8
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %foo233 = bitcast i64* %_allin_new_bt_38 to i32*
  store i32 %foo215, i32* %foo233

   ;  cmpl   $0x5,-0x8(%rbp) ;
  ; jge    42 <main+0x42>
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -8
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %foo237 = bitcast i64* %_allin_new_bt_41 to i32*
  %foo238 = load i32, i32* %foo237
  %foo239 = add i32 %foo238, -5
  %foo240 = xor i32 %foo239, %foo238
  %foo241 = and i32 %foo240, 16
  %foo242 = icmp ne i32 %foo241, 0
  store i1 %foo242, i1* %AF_val
  %foo243 = trunc i32 %foo239 to i8
  %foo244 = tail call i8 @llvm.ctpop.i8(i8 %foo243)
  %foo245 = and i8 %foo244, 1
  %foo246 = icmp eq i8 %foo245, 0
  store i1 %foo246, i1* %PF_val
  %foo247 = icmp eq i32 %foo239, 0
  store i1 %foo247, i1* %ZF_val
  %foo248 = icmp slt i32 %foo239, 0
  store i1 %foo248, i1* %SF_val
  %foo249 = icmp ult i32 %foo238, 5
  store i1 %foo249, i1* %CF_val
  %foo250 = and i32 %foo240, %foo238
  %foo251 = icmp slt i32 %foo250, 0
  store i1 %foo251, i1* %OF_val
  %tmp70 = xor i1 %foo248, %foo251
  br i1 %tmp70, label %block_0x1c, label %block_0x42.loopexit
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1)

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8)

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32)
