; ModuleID = 'Output/test_23_2.clang.trans.opt.bc'
source_filename = "test_23_1.new.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_17.i = alloca [13 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [13 x i8], [13 x i8]* %_local_stack_start_ptr_17.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 13, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [13 x i8], [13 x i8]* %_local_stack_start_ptr_17.i, i64 0, i64 13
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = bitcast i64* %RBX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %5 = bitcast i64* %RDX.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %7 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = bitcast i64* %R8.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = bitcast i64* %R10.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = bitcast i64* %R12.i to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = bitcast i64* %R14.i to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %17 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %22 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %36 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %50 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %67 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %68 = load <2 x i64>, <2 x i64>* %67, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %69 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_21.i4 = load i8*, i8** %69, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_21.i4, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18.i, i64* %_allin_new_bt_.i, align 8
  %70 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %70, i64* %_RSP_ptr_.sroa.0.i, align 8
  store volatile i64 %70, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_21.i4, i64 -12
  %71 = bitcast i8* %_new_gep_1.i to i32*
  store i32 0, i32* %71, align 4, !mcsema_real_eip !3
  %72 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_322.i5 = load i8*, i8** %72, align 8
  %_new_gep_4.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_322.i5, i64 -5
  store i8 119, i8* %_new_gep_4.i, align 1, !mcsema_real_eip !4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_62326.i6 = load i8*, i8** %72, align 8
  %_new_gep_727.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_62326.i6, i64 -4
  %73 = bitcast i8* %_new_gep_727.i to i32*
  %74 = load i32, i32* %73, align 4, !mcsema_real_eip !5
  %75 = trunc i32 %74 to i8, !mcsema_real_eip !5
  %76 = tail call i8 @llvm.ctpop.i8(i8 %75) #2, !mcsema_real_eip !5
  %77 = icmp eq i32 %74, 0, !mcsema_real_eip !5
  %78 = icmp slt i32 %74, 1
  br i1 %78, label %block_0x4004fe.i.preheader, label %sub_4004ed.exit, !mcsema_real_eip !6

block_0x4004fe.i.preheader:                       ; preds = %driverBlockRaw
  br label %block_0x4004fe.i

block_0x4004fe.i:                                 ; preds = %block_0x4004fe.i.preheader, %block_0x400537.i
  %79 = phi i32 [ %109, %block_0x400537.i ], [ %74, %block_0x4004fe.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2325.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_623.i8, %block_0x400537.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_62326.i6, %block_0x4004fe.i.preheader ]
  %80 = sext i32 %79 to i64, !mcsema_real_eip !7
  %_new_gep_13.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2325.i, i64 -5
  %_new_gep_14.i = getelementptr i8, i8* %_new_gep_13.i, i64 %80
  %81 = load i8, i8* %_new_gep_14.i, align 1, !mcsema_real_eip !8
  %82 = sext i8 %81 to i32, !mcsema_real_eip !9
  %83 = icmp eq i8 %81, 100
  br i1 %83, label %block_0x400537.i, label %block_0x400510.i, !mcsema_real_eip !10

block_0x400521.block_0x400546_crit_edge.i:        ; preds = %block_0x400521.i
  %84 = xor i32 %114, %82, !mcsema_real_eip !11
  %85 = and i32 %84, 16
  %86 = icmp eq i32 %85, 0
  %87 = trunc i32 %114 to i8, !mcsema_real_eip !11
  %88 = tail call i8 @llvm.ctpop.i8(i8 %87) #2
  %89 = icmp ult i8 %81, 119
  %90 = and i32 %84, %82, !mcsema_real_eip !11
  %91 = icmp slt i32 %90, 0
  br label %sub_4004ed.exit

block_0x400515.block_0x400546_crit_edge.i:        ; preds = %block_0x400515.i
  %92 = xor i32 %111, %82, !mcsema_real_eip !12
  %93 = and i32 %92, 16, !mcsema_real_eip !12
  %94 = icmp ne i32 %93, 0, !mcsema_real_eip !12
  %95 = trunc i32 %111 to i8, !mcsema_real_eip !12
  %96 = tail call i8 @llvm.ctpop.i8(i8 %95) #2
  %97 = icmp ult i8 %81, 97
  %98 = and i32 %92, %82, !mcsema_real_eip !12
  %99 = icmp slt i32 %98, 0
  br label %sub_4004ed.exit

block_0x40053b.block_0x400546_crit_edge.i:        ; preds = %block_0x400537.i
  %100 = trunc i32 %109 to i8, !mcsema_real_eip !5
  %101 = tail call i8 @llvm.ctpop.i8(i8 %100) #2
  br label %sub_4004ed.exit

block_0x400510.i:                                 ; preds = %block_0x4004fe.i
  %102 = sub nsw i32 99, %82
  %103 = and i32 %102, %82
  %104 = icmp slt i8 %81, 100
  %105 = icmp slt i32 %103, 0
  %tmp.i = xor i1 %104, %105
  br i1 %tmp.i, label %block_0x400515.i, label %block_0x40051c.i, !mcsema_real_eip !13

block_0x400537.i:                                 ; preds = %block_0x400521.i, %block_0x40051c.i, %block_0x400515.i, %block_0x4004fe.i
  %_new_gep_24.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2325.i, i64 -4
  %106 = bitcast i8* %_new_gep_24.i to i32*
  %107 = add nsw i32 %79, 1
  store i32 %107, i32* %106, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_623.i8 = load i8*, i8** %72, align 8
  %_new_gep_7.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_623.i8, i64 -4
  %108 = bitcast i8* %_new_gep_7.i to i32*
  %109 = load i32, i32* %108, align 4, !mcsema_real_eip !5
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %block_0x4004fe.i, label %block_0x40053b.block_0x400546_crit_edge.i, !mcsema_real_eip !6

block_0x400515.i:                                 ; preds = %block_0x400510.i
  %111 = add nsw i32 %82, -97
  %112 = icmp eq i32 %111, 0, !mcsema_real_eip !12
  br i1 %112, label %block_0x400537.i, label %block_0x400515.block_0x400546_crit_edge.i, !mcsema_real_eip !15

block_0x40051c.i:                                 ; preds = %block_0x400510.i
  %113 = icmp eq i8 %81, 115
  br i1 %113, label %block_0x400537.i, label %block_0x400521.i, !mcsema_real_eip !16

block_0x400521.i:                                 ; preds = %block_0x40051c.i
  %114 = add nsw i32 %82, -119
  %115 = icmp eq i32 %114, 0, !mcsema_real_eip !11
  br i1 %115, label %block_0x400537.i, label %block_0x400521.block_0x400546_crit_edge.i, !mcsema_real_eip !17

sub_4004ed.exit:                                  ; preds = %driverBlockRaw, %block_0x400521.block_0x400546_crit_edge.i, %block_0x400515.block_0x400546_crit_edge.i, %block_0x40053b.block_0x400546_crit_edge.i
  %ZF_val.0.i = phi i1 [ false, %block_0x400515.block_0x400546_crit_edge.i ], [ false, %block_0x400521.block_0x400546_crit_edge.i ], [ false, %block_0x40053b.block_0x400546_crit_edge.i ], [ %77, %driverBlockRaw ]
  %PF_val.0.in.in.i = phi i8 [ %96, %block_0x400515.block_0x400546_crit_edge.i ], [ %88, %block_0x400521.block_0x400546_crit_edge.i ], [ %101, %block_0x40053b.block_0x400546_crit_edge.i ], [ %76, %driverBlockRaw ]
  %AF_val.0.i = phi i1 [ %94, %block_0x400515.block_0x400546_crit_edge.i ], [ %86, %block_0x400521.block_0x400546_crit_edge.i ], [ false, %block_0x40053b.block_0x400546_crit_edge.i ], [ false, %driverBlockRaw ]
  %CF_val.0.i = phi i1 [ %97, %block_0x400515.block_0x400546_crit_edge.i ], [ %89, %block_0x400521.block_0x400546_crit_edge.i ], [ false, %block_0x40053b.block_0x400546_crit_edge.i ], [ false, %driverBlockRaw ]
  %SF_val.0.in.i = phi i32 [ %111, %block_0x400515.block_0x400546_crit_edge.i ], [ %114, %block_0x400521.block_0x400546_crit_edge.i ], [ %109, %block_0x40053b.block_0x400546_crit_edge.i ], [ %74, %driverBlockRaw ]
  %OF_val.0.i = phi i1 [ %99, %block_0x400515.block_0x400546_crit_edge.i ], [ %91, %block_0x400521.block_0x400546_crit_edge.i ], [ false, %block_0x40053b.block_0x400546_crit_edge.i ], [ false, %driverBlockRaw ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %SF_val.0.i = icmp slt i32 %SF_val.0.in.i, 0
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_1624.i7 = load i8*, i8** %69, align 8
  %_allin_new_bt_17.i = bitcast i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_1624.i7 to i64*
  %116 = load i64, i64* %_allin_new_bt_17.i, align 8
  store volatile i64 %116, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_18.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_1624.i7, i64 16
  %117 = ptrtoint i8* %_new_gep_18.i to i64
  store volatile i64 %117, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 1, i64* %RAX.i, align 8, !mcsema_real_eip !18
  %118 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %118, align 8
  %119 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %119, align 8
  store i64 %7, i64* %RDI.i, align 8, !mcsema_real_eip !18
  store volatile i64 %117, i64* %RSP.i, align 8
  store volatile i64 %116, i64* %RBP.i, align 8
  %120 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %120, align 8
  %121 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %121, align 8
  %122 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %122, align 8
  %123 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %123, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !18
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !18
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !18
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !18
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !18
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !18
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !18
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !18
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !18
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !18
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !18
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !18
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !18
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !18
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !18
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !18
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !18
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !18
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !18
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !18
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !18
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !18
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !18
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !18
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !18
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !18
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !18
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !18
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !18
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !18
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !18
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !18
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !18
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !18
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !18
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !18
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !18
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !18
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !18
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !18
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !18
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !18
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !18
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !18
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !18
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !18
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !18
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !18
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !18
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !18
  %124 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %124, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 13, i8* nonnull %1)
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
!2 = !{i64 4195565}
!3 = !{i64 4195569}
!4 = !{i64 4195576}
!5 = !{i64 4195643}
!6 = !{i64 4195647}
!7 = !{i64 4195585}
!8 = !{i64 4195587}
!9 = !{i64 4195592}
!10 = !{i64 4195598}
!11 = !{i64 4195617}
!12 = !{i64 4195605}
!13 = !{i64 4195603}
!14 = !{i64 4195639}
!15 = !{i64 4195608}
!16 = !{i64 4195615}
!17 = !{i64 4195620}
!18 = !{i64 4195655}
