; ModuleID = 'Output/test_1.clang.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64,
  %i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80],
  %i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1,
  %i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128,
  %i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128,
  %i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  
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
  %foo77 = load i64, i64* %RBP_val
  %foo78 = load i64, i64* %RSP_val
  %foo79 = add i64 %foo78, -8
  %foo80 = inttoptr i64 %foo79 to i64*
  store i64 %foo77, i64* %foo80
  store i64 %foo79, i64* %RSP_val
  store i64 %foo79, i64* %RBP_val

  ; movl   $0x0,-0x4(%rbp)
  %foo81 = add i64 %foo78, -12
  %foo82 = inttoptr i64 %foo81 to i64*
  %foo83 = bitcast i64* %foo82 to i32*
  store i32 0, i32* %foo83

  ; movl   $0x0,-0x8(%rbp)
  %foo84 = load i64, i64* %RBP_val
  %foo85 = add i64 %foo84, -8
  %foo86 = inttoptr i64 %foo85 to i64*
  %foo87 = bitcast i64* %foo86 to i32*
  store i32 0, i32* %foo87

  ; cmpl   $0x5,-0x8(%rbp)
  ; jge    42 <main+0x42>
  %foo88 = load i64, i64* %RBP_val
  %foo89 = add i64 %foo88, -8
  %foo90 = inttoptr i64 %foo89 to i64*
  %foo91 = bitcast i64* %foo90 to i32*
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
  %foo106 = load i64, i64* %RBP_val
  %foo107 = add i64 %foo106, -44
  %foo108 = inttoptr i64 %foo107 to i64*
  %foo109 = bitcast i64* %foo108 to i32*
  %foo110 = load i32, i32* %foo109
  %foo111 = zext i32 %foo110 to i64
  store i64 %foo111, i64* %RAX_val

  ; pop rbp
  %foo112 = load i64, i64* %RSP_val
  %foo113 = inttoptr i64 %foo112 to i64*
  %foo114 = load i64, i64* %foo113
  store i64 %foo114, i64* %RBP_val
  %foo115 = add i64 %foo112, 16
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
  %foo186 = load i64, i64* %RBP_val
  %foo187 = add i64 %foo186, -8
  %foo188 = inttoptr i64 %foo187 to i64*
  %foo189 = bitcast i64* %foo188 to i32*
  %foo190 = load i32, i32* %foo189
  %foo191 = sext i32 %foo190 to i64
  store i64 %foo191, i64* %RAX_val

  ; movl   $0x1,-0x30(%rbp,%rax,8) == [%rbp - 48 + %rax*8] = 1
  %foo192 = load i64, i64* %RBP_val
  %foo193 = add i64 %foo192, -48
  %foo194 = shl nsw i64 %foo191, 3
  %foo195 = add i64 %foo193, %foo194
  %foo196 = inttoptr i64 %foo195 to i64*
  %foo197 = bitcast i64* %foo196 to i32*
  store i32 1, i32* %foo197

  ; movslq -0x8(%rbp),%rax
  %foo198 = load i64, i64* %RBP_val
  %foo199 = add i64 %foo198, -8
  %foo200 = inttoptr i64 %foo199 to i64*
  %foo201 = bitcast i64* %foo200 to i32*
  %foo202 = load i32, i32* %foo201
  %foo203 = sext i32 %foo202 to i64
  store i64 %foo203, i64* %RAX_val

  ; movl   $0x2,-0x2c(%rbp,%rax,8)
  %foo204 = load i64, i64* %RBP_val
  %foo205 = add i64 %foo204, -44
  %foo206 = shl nsw i64 %foo203, 3
  %foo207 = add i64 %foo205, %foo206
  %foo208 = inttoptr i64 %foo207 to i64*
  %foo209 = bitcast i64* %foo208 to i32*
  store i32 2, i32* %foo209

  ; mov    -0x8(%rbp),%eax
  ; add    $0x1,%eax
  %foo210 = load i64, i64* %RBP_val
  %foo211 = add i64 %foo210, -8
  %foo212 = inttoptr i64 %foo211 to i64*
  %foo213 = bitcast i64* %foo212 to i32*
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
  %foo230 = load i64, i64* %RBP_val
  %foo231 = add i64 %foo230, -8
  %foo232 = inttoptr i64 %foo231 to i64*
  %foo233 = bitcast i64* %foo232 to i32*
  store i32 %foo215, i32* %foo233

  ;  cmpl   $0x5,-0x8(%rbp) ;
  ; jge    42 <main+0x42>
  %foo234 = load i64, i64* %RBP_val
  %foo235 = add i64 %foo234, -8
  %foo236 = inttoptr i64 %foo235 to i64*
  %foo237 = bitcast i64* %foo236 to i32*
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
