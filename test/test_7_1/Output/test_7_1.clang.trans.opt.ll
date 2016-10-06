; ModuleID = 'Output/test_7_1.clang.trans.opt.bc'
source_filename = "Output/test_7_1.clang.bc"
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
  %_RSP_ptr_90.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_91.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_92.i = alloca [96 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_90.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_90.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_90.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_91.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_91.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_91.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_92.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 96, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_92.i, i64 0, i64 96
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_90.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %4 = bitcast i64* %R11.i to <2 x i64>*
  %5 = load <2 x i64>, <2 x i64>* %4, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %6 = bitcast i64* %R13.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %8 = bitcast i64* %R15.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %10 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %12 = bitcast x86_fp80* %11 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %12, i32 128, i32 4, i1 false) #3, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %13 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %14 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %15 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %28 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %29 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %36 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %37 = bitcast i8* %36 to i64*
  %38 = load i64, i64* %37, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %39 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %40 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %41 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %42 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %43 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %44 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %59 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %60 = load <2 x i64>, <2 x i64>* %59, align 8
  %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_93.i = load i64, i64* %_RBP_ptr_91.sroa.0.i, align 8
  %61 = bitcast i64* %_RSP_ptr_90.sroa.0.i to i8**
  %_RSP_ptr_90.sroa.0.i.0._RSP_ptr_90.sroa.0.0._RSP_ptr_90.sroa.0.0._load_rsp_ptr_99.i1 = load i8*, i8** %61, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_90.sroa.0.i.0._RSP_ptr_90.sroa.0.0._RSP_ptr_90.sroa.0.0._load_rsp_ptr_99.i1, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_93.i, i64* %_allin_new_bt_.i, align 8
  %62 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %62, i64* %_RBP_ptr_91.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_90.sroa.0.i.0._RSP_ptr_90.sroa.0.0._RSP_ptr_90.sroa.0.0._load_rsp_ptr_99.i1, i64 -88
  %63 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %63, i64* %_RSP_ptr_90.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_90.sroa.0.i.0._RSP_ptr_90.sroa.0.0._RSP_ptr_90.sroa.0.0._load_rsp_ptr_99.i1, i64 -12
  %64 = bitcast i8* %_new_gep_3.i to i32*
  store i32 0, i32* %64, align 4, !mcsema_real_eip !3
  %65 = bitcast i64* %_RBP_ptr_91.sroa.0.i to i8**
  %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_5100.i2 = load i8*, i8** %65, align 8
  %_new_gep_6.i = getelementptr i8, i8* %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_5100.i2, i64 -52
  %66 = bitcast i8* %_new_gep_6.i to i32*
  store i32 0, i32* %66, align 4, !mcsema_real_eip !4
  %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_8101.i3 = load i8*, i8** %65, align 8
  %_new_gep_9.i = getelementptr i8, i8* %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_8101.i3, i64 -52
  %67 = bitcast i8* %_new_gep_9.i to i32*
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !5
  %69 = add i32 %68, -10
  %70 = xor i32 %69, %68, !mcsema_real_eip !5
  %71 = trunc i32 %69 to i8, !mcsema_real_eip !5
  %72 = tail call i8 @llvm.ctpop.i8(i8 %71) #3, !mcsema_real_eip !5
  %73 = icmp slt i32 %69, 0
  %74 = and i32 %70, %68, !mcsema_real_eip !5
  %75 = icmp slt i32 %74, 0
  %tmp.i = xor i1 %73, %75
  br i1 %tmp.i, label %block_0x50.i.preheader, label %block_0x6a.i, !mcsema_real_eip !6

block_0x50.i.preheader:                           ; preds = %driverBlockRaw
  br label %block_0x50.i

block_0x6a.loopexit.i:                            ; preds = %block_0x50.i
  %76 = trunc i32 %98 to i8, !mcsema_real_eip !5
  %77 = tail call i8 @llvm.ctpop.i8(i8 %76) #3
  br label %block_0x6a.i

block_0x6a.i:                                     ; preds = %block_0x6a.loopexit.i, %driverBlockRaw
  %_RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_11102.i = phi i8* [ %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_8101.i3, %driverBlockRaw ], [ %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_51108.i8, %block_0x6a.loopexit.i ]
  %CF_val.0.in.i = phi i32 [ %68, %driverBlockRaw ], [ %97, %block_0x6a.loopexit.i ]
  %OF_val.0.i = phi i1 [ %75, %driverBlockRaw ], [ %102, %block_0x6a.loopexit.i ]
  %SF_val.0.i = phi i1 [ %73, %driverBlockRaw ], [ %100, %block_0x6a.loopexit.i ]
  %AF_val.0.in.in.i = phi i32 [ %70, %driverBlockRaw ], [ %99, %block_0x6a.loopexit.i ]
  %PF_val.0.in.in.i = phi i8 [ %72, %driverBlockRaw ], [ %77, %block_0x6a.loopexit.i ]
  %ZF_val.0.in.i = phi i32 [ %69, %driverBlockRaw ], [ %98, %block_0x6a.loopexit.i ]
  %CF_val.0.i = icmp ult i32 %CF_val.0.in.i, 10
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %AF_val.0.in.i = and i32 %AF_val.0.in.in.i, 16
  %ZF_val.0.i = icmp eq i32 %ZF_val.0.in.i, 0
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %AF_val.0.i = icmp ne i32 %AF_val.0.in.i, 0
  %_new_gep_12.i = getelementptr i8, i8* %_RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_11102.i, i64 -48
  %78 = ptrtoint i8* %_new_gep_12.i to i64
  %_new_gep_15.i = getelementptr i8, i8* %_RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_11102.i, i64 -64
  %_allin_new_bt_16.i = bitcast i8* %_new_gep_15.i to i64*
  store i64 %78, i64* %_allin_new_bt_16.i, align 8, !mcsema_real_eip !7
  %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_17103.i4 = load i8*, i8** %65, align 8
  %_new_gep_18.i = getelementptr i8, i8* %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_17103.i4, i64 -64
  %_allin_new_bt_19.i = bitcast i8* %_new_gep_18.i to i64*
  %79 = load i64, i64* %_allin_new_bt_19.i, align 8, !mcsema_real_eip !8
  %80 = bitcast i64* %_RSP_ptr_90.sroa.0.i to i64**
  %_RSP_ptr_90.sroa.0.i.0._RSP_ptr_90.sroa.0.0._RSP_ptr_90.sroa.0.0._load_rsp_ptr_2094104.i5 = load i64*, i64** %80, align 8
  store i64 %79, i64* %_RSP_ptr_90.sroa.0.i.0._RSP_ptr_90.sroa.0.0._RSP_ptr_90.sroa.0.0._load_rsp_ptr_2094104.i5, align 8, !mcsema_real_eip !9
  %_RSP_ptr_90.sroa.0.i.0._RSP_ptr_90.sroa.0.0._RSP_ptr_90.sroa.0.0._load_rsp_ptr_22105.i6 = load i8*, i8** %61, align 8
  %_new_gep_23.i = getelementptr i8, i8* %_RSP_ptr_90.sroa.0.i.0._RSP_ptr_90.sroa.0.0._RSP_ptr_90.sroa.0.0._load_rsp_ptr_22105.i6, i64 -8
  %_allin_new_bt_24.i = bitcast i8* %_new_gep_23.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_24.i, align 8, !mcsema_real_eip !10
  %81 = ptrtoint i8* %_new_gep_23.i to i64
  store volatile i64 %81, i64* %_RSP_ptr_90.sroa.0.i, align 8
  store i64 10, i64* %RAX.i, align 8, !mcsema_real_eip !10
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !10
  %82 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %82, align 8
  %83 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %83, align 8
  store volatile i64 %81, i64* %RSP.i, align 8
  %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_2796.i = load i64, i64* %_RBP_ptr_91.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_2796.i, i64* %RBP.i, align 8
  %84 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %84, align 8
  store i64 %79, i64* %R10.i, align 8, !mcsema_real_eip !10
  %85 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %85, align 8
  %86 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %86, align 8
  %87 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %87, align 8
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !10
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !10
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !10
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !10
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !10
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !10
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #3, !mcsema_real_eip !10
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !10
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !10
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !10
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !10
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !10
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !10
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !10
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !10
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !10
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !10
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !10
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !10
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !10
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !10
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !10
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !10
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !10
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !10
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !10
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !10
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !10
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !10
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !10
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !10
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !10
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !10
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !10
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !10
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !10
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !10
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !10
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !10
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !10
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !10
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !10
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !10
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !10
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !10
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !10
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !10
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !10
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !10
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !10
  %88 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %88, align 1
  call void @llvm.trap() #3
  unreachable

block_0x50.i:                                     ; preds = %block_0x50.i.preheader, %block_0x50.i
  %89 = phi i32 [ %97, %block_0x50.i ], [ %68, %block_0x50.i.preheader ]
  %_RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_38106.i = phi i8* [ %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_51108.i8, %block_0x50.i ], [ %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_8101.i3, %block_0x50.i.preheader ]
  %90 = sext i32 %89 to i64, !mcsema_real_eip !11
  %_new_gep_42.i = getelementptr i8, i8* %_RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_38106.i, i64 -48
  %91 = shl nsw i64 %90, 2
  %_new_gep_43.i = getelementptr i8, i8* %_new_gep_42.i, i64 %91
  %92 = bitcast i8* %_new_gep_43.i to i32*
  store i32 21, i32* %92, align 4, !mcsema_real_eip !12
  %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_45107.i7 = load i8*, i8** %65, align 8
  %_new_gep_46.i = getelementptr i8, i8* %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_45107.i7, i64 -52
  %93 = bitcast i8* %_new_gep_46.i to i32*
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !13
  %95 = add i32 %94, 1
  store i32 %95, i32* %93, align 4, !mcsema_real_eip !14
  %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_51108.i8 = load i8*, i8** %65, align 8
  %_new_gep_52.i = getelementptr i8, i8* %_RBP_ptr_91.sroa.0.i.0._RBP_ptr_91.sroa.0.0._RBP_ptr_91.sroa.0.0._load_rbp_ptr_51108.i8, i64 -52
  %96 = bitcast i8* %_new_gep_52.i to i32*
  %97 = load i32, i32* %96, align 4, !mcsema_real_eip !5
  %98 = add i32 %97, -10
  %99 = xor i32 %98, %97, !mcsema_real_eip !5
  %100 = icmp slt i32 %98, 0
  %101 = and i32 %99, %97, !mcsema_real_eip !5
  %102 = icmp slt i32 %101, 0
  %tmp209.i = xor i1 %100, %102
  br i1 %tmp209.i, label %block_0x50.i, label %block_0x6a.loopexit.i, !mcsema_real_eip !6
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
!2 = !{i64 48, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 56, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!4 = !{i64 63, [20 x i8] c"\09movl\09$0, -52(%rbp)\00"}
!5 = !{i64 70, [21 x i8] c"\09cmpl\09$10, -52(%rbp)\00"}
!6 = !{i64 74, [8 x i8] c"\09jge\0926\00"}
!7 = !{i64 121, [22 x i8] c"\09movq\09%rcx, -64(%rbp)\00"}
!8 = !{i64 133, [22 x i8] c"\09movq\09-64(%rbp), %r10\00"}
!9 = !{i64 137, [19 x i8] c"\09movq\09%r10, (%rsp)\00"}
!10 = !{i64 141, [12 x i8] c"\09callq\09-146\00"}
!11 = !{i64 80, [24 x i8] c"\09movslq\09-52(%rbp), %rax\00"}
!12 = !{i64 84, [28 x i8] c"\09movl\09$21, -48(%rbp,%rax,4)\00"}
!13 = !{i64 92, [22 x i8] c"\09movl\09-52(%rbp), %eax\00"}
!14 = !{i64 98, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
