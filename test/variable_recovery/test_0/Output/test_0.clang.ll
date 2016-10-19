; ModuleID = 'Output/test_0.clang.bc'
source_filename = "Output/test_0.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %RSP_val = alloca i64
  %RBP_val = alloca i64
  %RDI_val = alloca i64
  %RSI_val = alloca i64
  %RDX_val = alloca i64
  %RCX_val = alloca i64
  %RBX_val = alloca i64
  %RAX_val = alloca i64
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0
  %XXX1 = load i64, i64* %RAX
  store i64 %XXX1, i64* %RAX_val
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1
  %XXX2 = load i64, i64* %RBX
  store i64 %XXX2, i64* %RBX_val
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2
  %XXX3 = load i64, i64* %RCX
  store i64 %XXX3, i64* %RCX_val
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3
  %XXX4 = load i64, i64* %RDX
  store i64 %XXX4, i64* %RDX_val
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4
  %XXX5 = load i64, i64* %RSI
  store i64 %XXX5, i64* %RSI_val
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5
  %XXX6 = load i64, i64* %RDI
  store i64 %XXX6, i64* %RDI_val
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6
  %XXX7 = load i64, i64* %RSP
  store i64 %XXX7, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7
  %XXX8 = load i64, i64* %RBP
  store i64 %XXX8, i64* %RBP_val
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17

  %XXX77 = load i64, i64* %RBP_val
  %XXX78 = load i64, i64* %RSP_val
  %XXX79 = add i64 %XXX78, -8
  %XXX80 = inttoptr i64 %XXX79 to i64*
  store i64 %XXX77, i64* %XXX80
  store i64 %XXX79, i64* %RSP_val
  store i64 %XXX79, i64* %RBP_val

  %XXX81 = add i64 %XXX78, -24
  %XXX82 = inttoptr i64 %XXX81 to i64*
  %XXX83 = ptrtoint i64* %XXX82 to i64
  store i64 %XXX83, i64* %RAX_val

  %XXX84 = add i64 %XXX78, -12
  %XXX85 = inttoptr i64 %XXX84 to i64*
  %XXX86 = bitcast i64* %XXX85 to i32*
  store i32 0, i32* %XXX86

  %XXX87 = load i64, i64* %RBP_val
  %XXX88 = add i64 %XXX87, -24
  %XXX89 = inttoptr i64 %XXX88 to i64*
  %XXX90 = load i64, i64* %RAX_val
  store i64 %XXX90, i64* %XXX89

  %XXX91 = load i64, i64* %RBP_val
  %XXX92 = add i64 %XXX91, -24
  %XXX93 = inttoptr i64 %XXX92 to i64*
  %XXX94 = load i64, i64* %XXX93
  store i64 %XXX94, i64* %RAX_val

  %XXX95 = inttoptr i64 %XXX94 to i64*
  %XXX96 = bitcast i64* %XXX95 to i32*
  store i32 1, i32* %XXX96

  %XXX97 = load i64, i64* %RBP_val
  %XXX98 = add i64 %XXX97, -24
  %XXX99 = inttoptr i64 %XXX98 to i64*
  %XXX100 = load i64, i64* %XXX99
  store i64 %XXX100, i64* %RAX_val

  %XXX101 = add i64 %XXX100, 4
  %XXX102 = inttoptr i64 %XXX101 to i64*
  %XXX103 = bitcast i64* %XXX102 to i32*
  store i32 2, i32* %XXX103

  %XXX104 = load i64, i64* %RBP_val
  %XXX105 = add i64 %XXX104, -24
  %XXX106 = inttoptr i64 %XXX105 to i64*
  %XXX107 = load i64, i64* %XXX106
  store i64 %XXX107, i64* %RAX_val

  %XXX108 = add i64 %XXX107, 4
  %XXX109 = inttoptr i64 %XXX108 to i64*
  %XXX110 = bitcast i64* %XXX109 to i32*
  %XXX111 = load i32, i32* %XXX110
  %XXX112 = zext i32 %XXX111 to i64
  store i64 %XXX112, i64* %RAX_val

  %XXX113 = load i64, i64* %RSP_val
  %XXX114 = inttoptr i64 %XXX113 to i64*
  %XXX115 = load i64, i64* %XXX114
  store i64 %XXX115, i64* %RBP_val
  %XXX116 = add i64 %XXX113, 16
  store i64 %XXX116, i64* %RSP_val

  %XXX117 = load i64, i64* %RAX_val
  store i64 %XXX117, i64* %RAX
  %XXX118 = load i64, i64* %RBX_val
  store i64 %XXX118, i64* %RBX
  %XXX119 = load i64, i64* %RCX_val
  store i64 %XXX119, i64* %RCX
  %XXX120 = load i64, i64* %RDX_val
  store i64 %XXX120, i64* %RDX
  %XXX121 = load i64, i64* %RSI_val
  store i64 %XXX121, i64* %RSI
  %XXX122 = load i64, i64* %RDI_val
  store i64 %XXX122, i64* %RDI
  %XXX123 = load i64, i64* %RSP_val
  store i64 %XXX123, i64* %RSP
  %XXX124 = load i64, i64* %RBP_val
  store i64 %XXX124, i64* %RBP
  ret void
}

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}
