; ModuleID = 'Output/test_0.clang.trans.opt.bc'
source_filename = "Output/test_0.clang.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #0 {
driverBlockRaw:
  %_RSP_ptr_3.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_4.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_5.i = alloca [32 x i8], align 8
  %_RSP_ptr_3.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_3.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_3.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_4.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_4.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_4.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_5.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* nonnull %1)
  %_local_stack_end_ptr_.i = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_5.i, i64 0, i64 32
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_3.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1
  %3 = bitcast i64* %RBX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3
  %5 = bitcast i64* %RDX.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5
  %foo6.i = load i64, i64* %RDI.i, align 8
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7
  %_new_gep_.i = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_5.i, i64 0, i64 24
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 undef, i64* %_allin_new_bt_.i, align 8
  %7 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %7, i64* %_RSP_ptr_3.sroa.0.i, align 8
  store volatile i64 %7, i64* %_RBP_ptr_4.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_5.i, i64 0, i64 8
  %foo83.i = ptrtoint i8* %_new_gep_1.i to i64
  %_new_gep_3.i = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_5.i, i64 0, i64 20
  %foo86.i = bitcast i8* %_new_gep_3.i to i32*
  store i32 0, i32* %foo86.i, align 4
  %_allin_new_bt_7.i = bitcast [32 x i8]* %_local_stack_start_ptr_5.i to i64*
  store i64 %foo83.i, i64* %_allin_new_bt_7.i, align 8
  %8 = bitcast i8* %_new_gep_1.i to i32*
  store i32 1, i32* %8, align 8
  %9 = bitcast i64* %_RBP_ptr_4.sroa.0.i to i8**
  %foo101.i = or i64 %foo83.i, 4
  %foo103.i = inttoptr i64 %foo101.i to i32*
  store i32 2, i32* %foo103.i, align 4
  %_RBP_ptr_4.sroa.0.i.0._RBP_ptr_4.sroa.0.0._RBP_ptr_4.sroa.0.0._load_rbp_ptr_1415.i4 = load i8*, i8** %9, align 8
  %_new_gep_15.i = getelementptr i8, i8* %_RBP_ptr_4.sroa.0.i.0._RBP_ptr_4.sroa.0.0._RBP_ptr_4.sroa.0.0._load_rbp_ptr_1415.i4, i64 -24
  %_allin_new_bt_16.i = bitcast i8* %_new_gep_15.i to i64*
  %foo107.i = load i64, i64* %_allin_new_bt_16.i, align 8
  %foo108.i = add i64 %foo107.i, 4
  %foo110.i = inttoptr i64 %foo108.i to i32*
  %foo111.i = load i32, i32* %foo110.i, align 4
  %foo112.i = zext i32 %foo111.i to i64
  %10 = bitcast i64* %_RSP_ptr_3.sroa.0.i to i8**
  %_RSP_ptr_3.sroa.0.i.0._RSP_ptr_3.sroa.0.0._RSP_ptr_3.sroa.0.0._load_rsp_ptr_1716.i5 = load i8*, i8** %10, align 8
  %_allin_new_bt_18.i = bitcast i8* %_RSP_ptr_3.sroa.0.i.0._RSP_ptr_3.sroa.0.0._RSP_ptr_3.sroa.0.0._load_rsp_ptr_1716.i5 to i64*
  %foo115910.i = load i64, i64* %_allin_new_bt_18.i, align 8
  store volatile i64 %foo115910.i, i64* %_RBP_ptr_4.sroa.0.i, align 8
  %_new_gep_19.i = getelementptr i8, i8* %_RSP_ptr_3.sroa.0.i.0._RSP_ptr_3.sroa.0.0._RSP_ptr_3.sroa.0.0._load_rsp_ptr_1716.i5, i64 16
  %11 = ptrtoint i8* %_new_gep_19.i to i64
  store volatile i64 %11, i64* %_RSP_ptr_3.sroa.0.i, align 8
  store i64 %foo112.i, i64* %RAX.i, align 8
  %12 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %12, align 8
  %13 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %13, align 8
  store i64 %foo6.i, i64* %RDI.i, align 8
  store volatile i64 %11, i64* %RSP.i, align 8
  store volatile i64 %foo115910.i, i64* %RBP.i, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_3.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_4.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 32, i8* nonnull %1)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
