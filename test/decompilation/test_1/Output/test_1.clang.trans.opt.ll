; ModuleID = 'Output/test_1.clang.trans.opt.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noreturn nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_RSP_ptr_.i = alloca i8*, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_2.i = alloca [32 x i8], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.i.0..sroa_cast = bitcast i8** %_RSP_ptr_.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 32
  store i8* %_local_stack_end_ptr_.i, i8** %_RSP_ptr_.i, align 8
  %2 = bitcast %struct.regs* %0 to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %4 = bitcast i64* %RCX.i to <2 x i64>*
  %5 = load <2 x i64>, <2 x i64>* %4, align 8
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %6 = bitcast i64* %R8.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %8 = bitcast i64* %R10.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %10 = bitcast i64* %R12.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %12 = bitcast i64* %R14.i to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %14 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %15 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %17, i32 128, i32 4, i1 false) #3, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %20 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %33 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %34 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %42 = bitcast i8* %41 to i64*
  %43 = load i64, i64* %42, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %44 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %45 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %46 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %47 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %48 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %65 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %66 = load <2 x i64>, <2 x i64>* %65, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 24
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3.i, i64* %_allin_new_bt_.i, align 8
  %67 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %67, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 8
  %_trans_p2i_.i = ptrtoint i8* %_new_gep_1.i to i64
  %_trans_xor_.i = xor i64 %_trans_p2i_.i, %67
  %68 = and i64 %_trans_xor_.i, 16
  %69 = icmp eq i64 %68, 0
  %_trans_trunc_.i = trunc i64 %_trans_p2i_.i to i8
  %70 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_.i) #3, !mcsema_real_eip !3
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %_trans_icmp_ne_7.i = icmp ne i8* %_new_gep_.i, inttoptr (i64 16 to i8*)
  %_trans_xor_9.i = and i64 %_trans_xor_.i, %67
  %73 = icmp slt i64 %_trans_xor_9.i, 0
  store volatile i8* %_new_gep_1.i, i8** %_RSP_ptr_.i, align 8
  %_new_gep_11.i = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 20
  %74 = bitcast i8* %_new_gep_11.i to i32*
  store i32 0, i32* %74, align 4, !mcsema_real_eip !4
  %_allin_new_bt_15.i = bitcast [32 x i8]* %_local_stack_start_ptr_2.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_15.i, align 8, !mcsema_real_eip !5
  store volatile i8* %1, i8** %_RSP_ptr_.i, align 8
  %75 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %75, align 8
  %76 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %76, align 8
  %77 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %77, align 8
  %_new_ptr2int_17.i = ptrtoint [32 x i8]* %_local_stack_start_ptr_2.i to i64
  store volatile i64 %_new_ptr2int_17.i, i64* %RSP.i, align 8
  store volatile i64 %67, i64* %RBP.i, align 8
  %78 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %78, align 8
  %79 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %79, align 8
  %80 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %80, align 8
  %81 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %81, align 8
  store i64 %14, i64* %RIP.i, align 8, !mcsema_real_eip !5
  store i1 %_trans_icmp_ne_7.i, i1* %CF.i, align 1, !mcsema_real_eip !5
  store i1 %72, i1* %PF.i, align 1, !mcsema_real_eip !5
  store i1 %69, i1* %AF.i, align 1, !mcsema_real_eip !5
  store i1 false, i1* %ZF.i, align 1, !mcsema_real_eip !5
  store i1 true, i1* %SF.i, align 1, !mcsema_real_eip !5
  store i1 %73, i1* %OF.i, align 1, !mcsema_real_eip !5
  store i1 %15, i1* %DF.i, align 1, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #3, !mcsema_real_eip !5
  store i1 %18, i1* %FPU_B.i, align 1, !mcsema_real_eip !5
  store i1 %19, i1* %FPU_C3.i, align 1, !mcsema_real_eip !5
  store i3 %20, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !5
  store i1 %21, i1* %FPU_C2.i, align 1, !mcsema_real_eip !5
  store i1 %22, i1* %FPU_C1.i, align 1, !mcsema_real_eip !5
  store i1 %23, i1* %FPU_C0.i, align 1, !mcsema_real_eip !5
  store i1 %24, i1* %FPU_ES.i, align 1, !mcsema_real_eip !5
  store i1 %25, i1* %FPU_SF.i, align 1, !mcsema_real_eip !5
  store i1 %26, i1* %FPU_PE.i, align 1, !mcsema_real_eip !5
  store i1 %27, i1* %FPU_UE.i, align 1, !mcsema_real_eip !5
  store i1 %28, i1* %FPU_OE.i, align 1, !mcsema_real_eip !5
  store i1 %29, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !5
  store i1 %30, i1* %FPU_DE.i, align 1, !mcsema_real_eip !5
  store i1 %31, i1* %FPU_IE.i, align 1, !mcsema_real_eip !5
  store i1 %32, i1* %FPU_X.i, align 1, !mcsema_real_eip !5
  store i2 %33, i2* %FPU_RC.i, align 1, !mcsema_real_eip !5
  store i2 %34, i2* %FPU_PC.i, align 1, !mcsema_real_eip !5
  store i1 %35, i1* %FPU_PM.i, align 1, !mcsema_real_eip !5
  store i1 %36, i1* %FPU_UM.i, align 1, !mcsema_real_eip !5
  store i1 %37, i1* %FPU_OM.i, align 1, !mcsema_real_eip !5
  store i1 %38, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !5
  store i1 %39, i1* %FPU_DM.i, align 1, !mcsema_real_eip !5
  store i1 %40, i1* %FPU_IM.i, align 1, !mcsema_real_eip !5
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !5
  store i64 %45, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !5
  store i16 %46, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !5
  store i64 %47, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !5
  store i11 %48, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !5
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !5
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !5
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !5
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !5
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !5
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !5
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !5
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !5
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !5
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !5
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !5
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !5
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !5
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !5
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !5
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !5
  %82 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %66, <2 x i64>* %82, align 1
  call void @llvm.trap() #3
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 112}
!3 = !{i64 116}
!4 = !{i64 130}
!5 = !{i64 137}
