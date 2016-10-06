; ModuleID = 'Output/test_1.clang.trans.opt.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #0

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #1 {
driverBlockRaw:
  %_RSP_ptr_2.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_3.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_4.i = alloca [56 x i8], align 1
  %_RSP_ptr_2.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_2.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_2.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_3.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_3.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_3.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [56 x i8], [56 x i8]* %_local_stack_start_ptr_4.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 56, i8* nonnull %1)
  %_local_stack_end_ptr_.i = getelementptr inbounds [56 x i8], [56 x i8]* %_local_stack_start_ptr_4.i, i64 0, i64 56
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_2.sroa.0.i, align 8
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1
  %3 = bitcast i64* %RBX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3
  %5 = bitcast i64* %RDX.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5
  %foo6.i = load i64, i64* %RDI.i, align 8
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23
  %foo24.i = load i1, i1* %DF.i, align 1
  %_new_gep_.i = getelementptr inbounds [56 x i8], [56 x i8]* %_local_stack_start_ptr_4.i, i64 0, i64 48
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 undef, i64* %_allin_new_bt_.i, align 8
  %7 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %7, i64* %_RSP_ptr_2.sroa.0.i, align 8
  store volatile i64 %7, i64* %_RBP_ptr_3.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr inbounds [56 x i8], [56 x i8]* %_local_stack_start_ptr_4.i, i64 0, i64 44
  %foo83.i = bitcast i8* %_new_gep_1.i to i32*
  store i32 0, i32* %foo83.i, align 4
  %_new_gep_4.i = getelementptr inbounds [56 x i8], [56 x i8]* %_local_stack_start_ptr_4.i, i64 0, i64 40
  %foo87.i = bitcast i8* %_new_gep_4.i to i32*
  store i32 0, i32* %foo87.i, align 4
  %8 = bitcast i64* %_RBP_ptr_3.sroa.0.i to i8**
  br label %block_0x1c.i

block_0x1c.i:                                     ; preds = %block_0x1c.i, %driverBlockRaw
  %foo190.i = phi i32 [ 0, %driverBlockRaw ], [ %foo238.i, %block_0x1c.i ]
  %_RBP_ptr_3.sroa.0.0._RBP_ptr_3.sroa.0.0._load_rbp_ptr_1913.i = phi i8* [ %_new_gep_.i, %driverBlockRaw ], [ %_RBP_ptr_3.sroa.0.i.0._RBP_ptr_3.sroa.0.0._RBP_ptr_3.sroa.0.0._load_rbp_ptr_3916.i5, %block_0x1c.i ]
  %foo191.i = sext i32 %foo190.i to i64
  %_new_gep_23.i = getelementptr i8, i8* %_RBP_ptr_3.sroa.0.0._RBP_ptr_3.sroa.0.0._load_rbp_ptr_1913.i, i64 -48
  %foo194.i = shl nsw i64 %foo191.i, 3
  %_new_gep_24.i = getelementptr i8, i8* %_new_gep_23.i, i64 %foo194.i
  %foo197.i = bitcast i8* %_new_gep_24.i to i32*
  store i32 1, i32* %foo197.i, align 4
  %_RBP_ptr_3.sroa.0.i.0._RBP_ptr_3.sroa.0.0._RBP_ptr_3.sroa.0.0._load_rbp_ptr_2614.i3 = load i8*, i8** %8, align 8
  %_new_gep_27.i = getelementptr i8, i8* %_RBP_ptr_3.sroa.0.i.0._RBP_ptr_3.sroa.0.0._RBP_ptr_3.sroa.0.0._load_rbp_ptr_2614.i3, i64 -8
  %foo201.i = bitcast i8* %_new_gep_27.i to i32*
  %foo202.i = load i32, i32* %foo201.i, align 4
  %foo203.i = sext i32 %foo202.i to i64
  %_new_gep_30.i = getelementptr i8, i8* %_RBP_ptr_3.sroa.0.i.0._RBP_ptr_3.sroa.0.0._RBP_ptr_3.sroa.0.0._load_rbp_ptr_2614.i3, i64 -44
  %foo206.i = shl nsw i64 %foo203.i, 3
  %_new_gep_31.i = getelementptr i8, i8* %_new_gep_30.i, i64 %foo206.i
  %foo209.i = bitcast i8* %_new_gep_31.i to i32*
  store i32 2, i32* %foo209.i, align 4
  %_RBP_ptr_3.sroa.0.i.0._RBP_ptr_3.sroa.0.0._RBP_ptr_3.sroa.0.0._load_rbp_ptr_3315.i4 = load i8*, i8** %8, align 8
  %_new_gep_34.i = getelementptr i8, i8* %_RBP_ptr_3.sroa.0.i.0._RBP_ptr_3.sroa.0.0._RBP_ptr_3.sroa.0.0._load_rbp_ptr_3315.i4, i64 -8
  %foo213.i = bitcast i8* %_new_gep_34.i to i32*
  %foo214.i = load i32, i32* %foo213.i, align 4
  %foo215.i = add i32 %foo214.i, 1
  store i32 %foo215.i, i32* %foo213.i, align 4
  %_RBP_ptr_3.sroa.0.i.0._RBP_ptr_3.sroa.0.0._RBP_ptr_3.sroa.0.0._load_rbp_ptr_3916.i5 = load i8*, i8** %8, align 8
  %_new_gep_40.i = getelementptr i8, i8* %_RBP_ptr_3.sroa.0.i.0._RBP_ptr_3.sroa.0.0._RBP_ptr_3.sroa.0.0._load_rbp_ptr_3916.i5, i64 -8
  %foo237.i = bitcast i8* %_new_gep_40.i to i32*
  %foo238.i = load i32, i32* %foo237.i, align 4
  %foo239.i = add i32 %foo238.i, -5
  %foo240.i = xor i32 %foo239.i, %foo238.i
  %foo248.i = icmp slt i32 %foo239.i, 0
  %foo250.i = and i32 %foo240.i, %foo238.i
  %foo251.i = icmp slt i32 %foo250.i, 0
  %tmp70.i = xor i1 %foo248.i, %foo251.i
  br i1 %tmp70.i, label %block_0x1c.i, label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0x1c.i
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22
  %foo243.le.i = trunc i32 %foo239.i to i8
  %foo244.le.i = tail call i8 @llvm.ctpop.i8(i8 %foo243.le.i) #1
  %_new_gep_10.phi.trans.insert.i = getelementptr i8, i8* %_RBP_ptr_3.sroa.0.i.0._RBP_ptr_3.sroa.0.0._RBP_ptr_3.sroa.0.0._load_rbp_ptr_3916.i5, i64 -44
  %foo109.phi.trans.insert.i = bitcast i8* %_new_gep_10.phi.trans.insert.i to i32*
  %foo110.pre.i = load i32, i32* %foo109.phi.trans.insert.i, align 4
  %9 = bitcast i64* %_RSP_ptr_2.sroa.0.i to i8**
  %_RSP_ptr_2.sroa.0.i.0._RSP_ptr_2.sroa.0.0._RSP_ptr_2.sroa.0.0._load_rsp_ptr_1212.pre.i6 = load i8*, i8** %9, align 8
  %_allin_new_bt_13.phi.trans.insert.i = bitcast i8* %_RSP_ptr_2.sroa.0.i.0._RSP_ptr_2.sroa.0.0._RSP_ptr_2.sroa.0.0._load_rsp_ptr_1212.pre.i6 to i64*
  %foo11467.pre.i = load i64, i64* %_allin_new_bt_13.phi.trans.insert.i, align 8
  %phitmp.i = and i32 %foo240.i, 16
  %phitmp25.i = and i8 %foo244.le.i, 1
  %phitmp26.i = icmp ult i32 %foo238.i, 5
  %phitmp27.i = icmp ne i32 %phitmp.i, 0
  %phitmp28.i = icmp eq i8 %phitmp25.i, 0
  %phitmp29.i = icmp eq i32 %foo239.i, 0
  %phitmp30.i = zext i32 %foo110.pre.i to i64
  store volatile i64 %foo11467.pre.i, i64* %_RBP_ptr_3.sroa.0.i, align 8
  %_new_gep_14.i = getelementptr i8, i8* %_RSP_ptr_2.sroa.0.i.0._RSP_ptr_2.sroa.0.0._RSP_ptr_2.sroa.0.0._load_rsp_ptr_1212.pre.i6, i64 16
  %10 = ptrtoint i8* %_new_gep_14.i to i64
  store volatile i64 %10, i64* %_RSP_ptr_2.sroa.0.i, align 8
  store i64 %phitmp30.i, i64* %RAX.i, align 8
  %11 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %11, align 8
  %12 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %12, align 8
  store i64 %foo6.i, i64* %RDI.i, align 8
  store volatile i64 %10, i64* %RSP.i, align 8
  store volatile i64 %foo11467.pre.i, i64* %RBP.i, align 8
  store i1 %phitmp26.i, i1* %CF.i, align 1
  store i1 %phitmp28.i, i1* %PF.i, align 1
  store i1 %phitmp27.i, i1* %AF.i, align 1
  store i1 %phitmp29.i, i1* %ZF.i, align 1
  store i1 %foo248.i, i1* %SF.i, align 1
  store i1 %foo251.i, i1* %OF.i, align 1
  store i1 %foo24.i, i1* %DF.i, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_2.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_3.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %1)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind }
