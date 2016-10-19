; ModuleID = 'Output/test_1.clang.trans.opt.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs* nocapture) local_unnamed_addr #0 {
driverBlockRaw:
  %_RSP_ptr_.i = alloca i8*, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_4.i = alloca [16 x i8], align 4
  %_RSP_ptr_.i.0..sroa_cast = bitcast i8** %_RSP_ptr_.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_4.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %1)
  %_local_stack_end_ptr_.i = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_4.i, i64 0, i64 16
  store i8* %_local_stack_end_ptr_.i, i8** %_RSP_ptr_.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0
  %_new_gep_.i = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_4.i, i64 0, i64 8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 undef, i64* %_allin_new_bt_.i, align 8
  store volatile i8* %_new_gep_.i, i8** %_RSP_ptr_.i, align 8
  %2 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_4.i, i64 0, i64 4
  %XXX83.i = bitcast i8* %_new_gep_1.i to i32*
  store i32 0, i32* %XXX83.i, align 4
  %XXX87.i = bitcast [16 x i8]* %_local_stack_start_ptr_4.i to i32*
  store i32 1, i32* %XXX87.i, align 4
  store volatile i64 undef, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_11.i = getelementptr [16 x i8], [16 x i8]* %_local_stack_start_ptr_4.i, i64 0, i64 24
  store volatile i8* %_new_gep_11.i, i8** %_RSP_ptr_.i, align 8
  store i64 1, i64* %RAX.i, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 16, i8* nonnull %1)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
