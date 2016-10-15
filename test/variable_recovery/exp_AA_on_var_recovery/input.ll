; ModuleID = 'Output/test_1.clang.trans.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @foo(%struct.regs*) {
entry:

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

  ; push rbp
  %foo77 = load i64, i64* %RBP_val
  %foo78 = load i64, i64* %RSP_val
  %foo79 = add i64 %foo78, -8
  %foo80 = inttoptr i64 %foo79 to i64*
  store i64 %foo77, i64* %foo80

  ; rbp = rsp
  store i64 %foo79, i64* %RBP_val

  ; rsp -= 24
  %foo81 = add i64 %foo78, -24
  store i64 %foo81, i64* %RSP_val

  ; rdi  = 10 rsi =20
  store i64 10, i64* %RDI_val
  store i64 20, i64* %RSI_val

  ; -4(rbp) = 0
  %foo94 = load i64, i64* %RBP_val
  %foo95 = add i64 %foo94, -4
  %foo96 = inttoptr i64 %foo95 to i64*
  %foo97 = bitcast i64* %foo96 to i32*
  store i32 0, i32* %foo97

  ; [rsp - 8] = ret_addr
  ; rsp -= 8
  %foo98 = load i64, i64* %RSP_val
  %foo99 = add i64 %foo98, -8
  %foo100 = inttoptr i64 %foo99 to i64*
  store i64 -4981261766360305936, i64* %foo100
  store i64 %foo99, i64* %RSP_val

  %foo105 = load i64, i64* %RSI_val
  store i64 %foo105, i64* %RSI
  %foo106 = load i64, i64* %RDI_val
  store i64 %foo106, i64* %RDI
  %foo108 = load i64, i64* %RBP_val
  store i64 %foo108, i64* %RBP

  call void @bar(%struct.regs* %0)

  %foo175 = load i64, i64* %RSI
  store i64 %foo175, i64* %RSI_val
  %foo176 = load i64, i64* %RDI
  store i64 %foo176, i64* %RDI_val
  %foo178 = load i64, i64* %RBP
  store i64 %foo178, i64* %RBP_val
  ret void
}

define void @mcsema_main(%struct.regs*)  {
driverBlockRaw:
  tail call x86_64_sysvcc void @foo(%struct.regs* %0)
  ret void
}

define internal x86_64_sysvcc void @bar(%struct.regs*)  {
entry:
  %RAX_val = alloca i64
  %RSP_val = alloca i64
  %RBP_val = alloca i64
  %RDI_val = alloca i64
  %RSI_val = alloca i64

  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4
  %bar5 = load i64, i64* %RSI
  store i64 %bar5, i64* %RSI_val

  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5
  %bar6 = load i64, i64* %RDI
  store i64 %bar6, i64* %RDI_val


  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7
  %bar8 = load i64, i64* %RBP
  store i64 %bar8, i64* %RBP_val

  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8
  %bar8K = load i64, i64* %RSP
  store i64 %bar8K, i64* %RSP_val

  ; push rbp
  %bar79 = load i64, i64* %RBP_val
  %bar80 = load i64, i64* %RSP_val
  %bar81 = add i64 %bar80, -8
  %bar82 = inttoptr i64 %bar81 to i64*
  store i64 %bar79, i64* %bar82
  store i64 %bar81, i64* %RSP_val
  store i64 %bar81, i64* %RBP_val

  ; [rsp-4] = RDI
  %bar83 = add i64 %bar80, -12
  %bar84 = inttoptr i64 %bar83 to i64*
  %bar85 = load i64, i64* %RDI_val
  %bar86 = trunc i64 %bar85 to i32
  %bar87 = bitcast i64* %bar84 to i32*
  store i32 %bar86, i32* %bar87

  ; [rsp-8] = RSI
  %bar88 = load i64, i64* %RBP_val
  %bar89 = add i64 %bar88, -8
  %bar90 = inttoptr i64 %bar89 to i64*
  %bar91 = load i64, i64* %RSI_val
  %bar92 = trunc i64 %bar91 to i32
  %bar93 = bitcast i64* %bar90 to i32*
  store i32 %bar92, i32* %bar93

  ; RSI = [rbp-4]
  %bar94 = load i64, i64* %RBP_val
  %bar95 = add i64 %bar94, -4
  %bar96 = inttoptr i64 %bar95 to i64*
  %bar97 = bitcast i64* %bar96 to i32*
  %bar_new_load_14 = load i32, i32* %bar97
  %bar101 = zext i32 %bar_new_load_14 to i64
  store i64 %bar101, i64* %RSI_val

  %bar102 = load i64, i64* %RBP_val
  %bar103 = add i64 %bar102, -8
  %bar104 = inttoptr i64 %bar103 to i64*
  %bar105 = bitcast i64* %bar104 to i32*
  %bar_new_load_27 = load i32, i32* %bar105
  %baruadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %bar_new_load_14, i32 %bar_new_load_27)
  %bar109 = extractvalue { i32, i1 } %baruadd, 0
  %bar110 = zext i32 %bar109 to i64
  store i64 %bar110, i64* %RAX_val

  %bar141 = load i64, i64* %RSP_val
  %bar142 = inttoptr i64 %bar141 to i64*
  %bar143 = load i64, i64* %bar142
  store i64 %bar143, i64* %RBP_val
  %bar144 = add i64 %bar141, 16
  store i64 %bar144, i64* %RSP_val

  %bar149 = load i64, i64* %RSI_val
  store i64 %bar149, i64* %RSI
  %bar150 = load i64, i64* %RDI_val
  store i64 %bar150, i64* %RDI

  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) 
