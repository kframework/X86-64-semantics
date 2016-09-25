; ModuleID = 'Output/test_9.clang.trans.opt.bc'
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
  %_local_stack_start_ptr_7.i = alloca [0 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = getelementptr inbounds [0 x i8], [0 x i8]* %_local_stack_start_ptr_7.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 0, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_.i = ptrtoint [0 x i8]* %_local_stack_start_ptr_7.i to i64
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %2 = load i64, i64* %RAX.i, align 8, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %4 = bitcast x86_fp80* %3 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %4, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !2
  %5 = and i64 %2, 4294967295
  %6 = trunc i64 %2 to i32, !mcsema_real_eip !3
  %7 = sub i32 0, %6, !mcsema_real_eip !3
  %8 = xor i32 %6, %7, !mcsema_real_eip !3
  %9 = trunc i32 %7 to i8, !mcsema_real_eip !3
  %10 = tail call i8 @llvm.ctpop.i8(i8 %9) #2, !mcsema_real_eip !3
  %11 = icmp eq i32 %6, 0
  %12 = and i32 %6, %7, !mcsema_real_eip !3
  br i1 %11, label %sub_1.exit, label %block_0xd.i.preheader, !mcsema_real_eip !4

block_0xd.i.preheader:                            ; preds = %driverBlockRaw
  br label %block_0xd.i

block_0x13.loopexit.i:                            ; preds = %block_0xd.i
  %13 = zext i32 %16 to i64, !mcsema_real_eip !5
  br label %sub_1.exit

block_0xd.i:                                      ; preds = %block_0xd.i.preheader, %block_0xd.i
  %14 = phi i32 [ %17, %block_0xd.i ], [ 0, %block_0xd.i.preheader ]
  %15 = phi i32 [ %16, %block_0xd.i ], [ 1, %block_0xd.i.preheader ]
  %16 = shl i32 %15, 1
  %17 = add i32 %14, 1, !mcsema_real_eip !6
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %block_0x13.loopexit.i, label %block_0xd.i, !mcsema_real_eip !4

sub_1.exit:                                       ; preds = %driverBlockRaw, %block_0x13.loopexit.i
  %PF_val.0.in.in.i = phi i8 [ %10, %driverBlockRaw ], [ 0, %block_0x13.loopexit.i ]
  %AF_val.0.in.in.i = phi i32 [ %8, %driverBlockRaw ], [ 0, %block_0x13.loopexit.i ]
  %SF_val.0.in.i = phi i32 [ %7, %driverBlockRaw ], [ 0, %block_0x13.loopexit.i ]
  %OF_val.0.in.i = phi i32 [ %12, %driverBlockRaw ], [ 0, %block_0x13.loopexit.i ]
  %RBX_val.0.i = phi i64 [ 0, %driverBlockRaw ], [ %5, %block_0x13.loopexit.i ]
  %RAX_val.0.i = phi i64 [ 1, %driverBlockRaw ], [ %13, %block_0x13.loopexit.i ]
  %OF_val.0.i = icmp slt i32 %OF_val.0.in.i, 0
  %SF_val.0.i = icmp slt i32 %SF_val.0.in.i, 0
  %AF_val.0.in.i = and i32 %AF_val.0.in.in.i, 16
  %AF_val.0.i = icmp ne i32 %AF_val.0.in.i, 0
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %19 = add i64 %_local_stack_end_.i, 8, !mcsema_real_eip !7
  store i64 %RAX_val.0.i, i64* %RAX.i, align 8, !mcsema_real_eip !7
  store i64 %RBX_val.0.i, i64* %RBX.i, align 8, !mcsema_real_eip !7
  store i64 %5, i64* %RCX.i, align 8, !mcsema_real_eip !7
  store i64 %19, i64* %RSP.i, align 8, !mcsema_real_eip !7
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !7
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !7
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !7
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !7
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !7
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !7
  call void @llvm.lifetime.end(i64 0, i8* nonnull %1)
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
!2 = !{i64 1, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!3 = !{i64 9, [17 x i8] c"\09cmpl\09%ecx, %ebx\00"}
!4 = !{i64 11, [6 x i8] c"\09je\096\00"}
!5 = !{i64 13, [17 x i8] c"\09addl\09%eax, %eax\00"}
!6 = !{i64 15, [11 x i8] c"\09incl\09%ebx\00"}
!7 = !{i64 19, [6 x i8] c"\09retq\00"}
