; ModuleID = 'Output/test_8.clang.trans.opt.bc'
source_filename = "Output/test_8.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #0

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs* nocapture) local_unnamed_addr #1 {
driverBlockRaw:
  %_local_stack_alloc_2.i = alloca [0 x i64], align 8
  %1 = bitcast [0 x i64]* %_local_stack_alloc_2.i to i8*
  call void @llvm.lifetime.start(i64 0, i8* nonnull %1)
  %_local_stack_start_.i = ptrtoint [0 x i64]* %_local_stack_alloc_2.i to i64
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %2 = load i64, i64* %RAX.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %3 = trunc i64 %2 to i32, !mcsema_real_eip !2
  %uadd.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3, i32 1) #1
  %4 = extractvalue { i32, i1 } %uadd.i, 0
  %5 = xor i32 %4, %3, !mcsema_real_eip !2
  %6 = and i32 %5, 16, !mcsema_real_eip !2
  %7 = icmp ne i32 %6, 0, !mcsema_real_eip !2
  %8 = icmp slt i32 %4, 0
  %9 = icmp eq i32 %4, 0, !mcsema_real_eip !2
  %10 = xor i32 %3, -2147483648, !mcsema_real_eip !2
  %11 = and i32 %5, %10, !mcsema_real_eip !2
  %12 = icmp slt i32 %11, 0
  %13 = trunc i32 %4 to i8, !mcsema_real_eip !2
  %14 = tail call i8 @llvm.ctpop.i8(i8 %13) #1, !mcsema_real_eip !2
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = extractvalue { i32, i1 } %uadd.i, 1
  %18 = zext i32 %4 to i64, !mcsema_real_eip !2
  %19 = add i64 %_local_stack_start_.i, 8, !mcsema_real_eip !3
  store i64 %18, i64* %RAX.i, align 8, !mcsema_real_eip !3
  store i64 %19, i64* %RSP.i, align 8, !mcsema_real_eip !3
  store i1 %17, i1* %CF.i, align 1, !mcsema_real_eip !3
  store i1 %16, i1* %PF.i, align 1, !mcsema_real_eip !3
  store i1 %7, i1* %AF.i, align 1, !mcsema_real_eip !3
  store i1 %9, i1* %ZF.i, align 1, !mcsema_real_eip !3
  store i1 %8, i1* %SF.i, align 1, !mcsema_real_eip !3
  store i1 %12, i1* %OF.i, align 1, !mcsema_real_eip !3
  call void @llvm.lifetime.end(i64 0, i8* nonnull %1)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 1, [15 x i8] c"\09addl\09$1, %eax\00"}
!3 = !{i64 4, [6 x i8] c"\09retq\00"}
