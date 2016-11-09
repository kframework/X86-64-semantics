; ModuleID = 'Output/test_9.clang.opt.bc'
source_filename = "Output/test_9.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs* nocapture) local_unnamed_addr #2 {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %1 = load i64, i64* %RAX.i, align 8, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %2 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %4 = bitcast x86_fp80* %3 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %4, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !2
  %5 = and i64 %1, 4294967295
  %6 = trunc i64 %1 to i32, !mcsema_real_eip !3
  %7 = sub i32 0, %6, !mcsema_real_eip !3
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %sub_1.exit, label %block_0xd.i.preheader, !mcsema_real_eip !4

block_0xd.i.preheader:                            ; preds = %driverBlockRaw
  br label %block_0xd.i

block_0xd.i:                                      ; preds = %block_0xd.i.preheader, %block_0xd.i
  %RAX_val.010.i = phi i64 [ %10, %block_0xd.i ], [ 1, %block_0xd.i.preheader ]
  %RBX_val.09.i = phi i64 [ %12, %block_0xd.i ], [ 0, %block_0xd.i.preheader ]
  %9 = shl nuw nsw i64 %RAX_val.010.i, 1
  %10 = and i64 %9, 4294967294
  %11 = add nuw nsw i64 %RBX_val.09.i, 1
  %12 = and i64 %11, 4294967295
  %13 = trunc i64 %11 to i32, !mcsema_real_eip !3
  %14 = icmp eq i32 %13, %6
  br i1 %14, label %sub_1.exit.loopexit, label %block_0xd.i, !mcsema_real_eip !4

sub_1.exit.loopexit:                              ; preds = %block_0xd.i
  br label %sub_1.exit

sub_1.exit:                                       ; preds = %sub_1.exit.loopexit, %driverBlockRaw
  %RBX_val.0.lcssa.i = phi i64 [ 0, %driverBlockRaw ], [ %12, %sub_1.exit.loopexit ]
  %RAX_val.0.lcssa.i = phi i64 [ 1, %driverBlockRaw ], [ %10, %sub_1.exit.loopexit ]
  %.lcssa8.i = phi i32 [ 0, %driverBlockRaw ], [ %6, %sub_1.exit.loopexit ]
  %.lcssa7.i = phi i32 [ %7, %driverBlockRaw ], [ 0, %sub_1.exit.loopexit ]
  %.lcssa.i = phi i32 [ %7, %driverBlockRaw ], [ %6, %sub_1.exit.loopexit ]
  %15 = xor i32 %.lcssa.i, %6, !mcsema_real_eip !3
  %16 = and i32 %15, 16, !mcsema_real_eip !3
  %17 = icmp ne i32 %16, 0, !mcsema_real_eip !3
  %18 = trunc i32 %.lcssa7.i to i8, !mcsema_real_eip !3
  %19 = tail call i8 @llvm.ctpop.i8(i8 %18) #2, !mcsema_real_eip !3
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  %22 = icmp slt i32 %.lcssa7.i, 0
  %23 = icmp ult i32 %.lcssa8.i, %6, !mcsema_real_eip !3
  %24 = xor i64 %RBX_val.0.lcssa.i, %1
  %25 = trunc i64 %24 to i32
  %26 = and i32 %.lcssa.i, %25, !mcsema_real_eip !3
  %27 = icmp slt i32 %26, 0
  %28 = add i64 %2, 8, !mcsema_real_eip !5
  store i64 %RAX_val.0.lcssa.i, i64* %RAX.i, align 8, !mcsema_real_eip !5
  store i64 %RBX_val.0.lcssa.i, i64* %RBX.i, align 8, !mcsema_real_eip !5
  store i64 %5, i64* %RCX.i, align 8, !mcsema_real_eip !5
  store i64 %28, i64* %RSP.i, align 8, !mcsema_real_eip !5
  store i1 %23, i1* %CF.i, align 1, !mcsema_real_eip !5
  store i1 %21, i1* %PF.i, align 1, !mcsema_real_eip !5
  store i1 %17, i1* %AF.i, align 1, !mcsema_real_eip !5
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !5
  store i1 %22, i1* %SF.i, align 1, !mcsema_real_eip !5
  store i1 %27, i1* %OF.i, align 1, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !5
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 1}
!3 = !{i64 9}
!4 = !{i64 11}
!5 = !{i64 19}
