; ModuleID = 'Output/test_1.clang.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %RSP_val = alloca i64
  %RBP_val = alloca i64
  %RAX_val = alloca i64

  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0
  %XXX1 = load i64, i64* %RAX
  store i64 %XXX1, i64* %RAX_val
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6
  %XXX7 = load i64, i64* %RSP
  store i64 %XXX7, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7
  %XXX8 = load i64, i64* %RBP
  store i64 %XXX8, i64* %RBP_val

  %XXX77 = load i64, i64* %RBP_val
  %XXX78 = load i64, i64* %RSP_val
  %XXX79 = add i64 %XXX78, -8
  %XXX80 = inttoptr i64 %XXX79 to i64*
  store i64 %XXX77, i64* %XXX80
  store i64 %XXX79, i64* %RSP_val
  store i64 %XXX79, i64* %RBP_val

  %XXX81 = add i64 %XXX78, -12
  %XXX82 = inttoptr i64 %XXX81 to i64*
  %XXX83 = bitcast i64* %XXX82 to i32*
  store i32 0, i32* %XXX83

  %XXX84 = load i64, i64* %RBP_val
  %XXX85 = add i64 %XXX84, -8
  %XXX86 = inttoptr i64 %XXX85 to i64*
  %XXX87 = bitcast i64* %XXX86 to i32*
  store i32 1, i32* %XXX87

  %XXX88 = load i64, i64* %RBP_val
  %XXX89 = add i64 %XXX88, -8
  %XXX90 = inttoptr i64 %XXX89 to i64*
  %XXX91 = bitcast i64* %XXX90 to i32*
  %XXX92 = load i32, i32* %XXX91
  %XXX93 = zext i32 %XXX92 to i64
  store i64 %XXX93, i64* %RAX_val

  %XXX94 = load i64, i64* %RSP_val
  %XXX95 = inttoptr i64 %XXX94 to i64*
  %XXX96 = load i64, i64* %XXX95
  store i64 %XXX96, i64* %RBP_val
  %XXX97 = add i64 %XXX94, 16
  store i64 %XXX97, i64* %RSP_val

  %XXX98 = load i64, i64* %RAX_val
  store i64 %XXX98, i64* %RAX

  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}
