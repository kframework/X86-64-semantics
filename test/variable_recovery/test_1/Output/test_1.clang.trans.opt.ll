; ModuleID = 'Output/test_1.clang.trans.opt.bc'
source_filename = "Output/test_1.clang.bc"
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
  %_RSP_ptr_14.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_15.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_16.i = alloca [56 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_14.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_14.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_14.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_15.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_15.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_15.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [56 x i8], [56 x i8]* %_local_stack_start_ptr_16.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 56, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [56 x i8], [56 x i8]* %_local_stack_start_ptr_16.i, i64 0, i64 56
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_14.sroa.0.i, align 8
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
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %66 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %67 = load <2 x i64>, <2 x i64>* %66, align 8
  %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_18.i = load i64, i64* %_RBP_ptr_15.sroa.0.i, align 8
  %68 = bitcast i64* %_RSP_ptr_14.sroa.0.i to i8**
  %_RSP_ptr_14.sroa.0.i.0._RSP_ptr_14.sroa.0.0._RSP_ptr_14.sroa.0.0._load_rsp_ptr_21.i4 = load i8*, i8** %68, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_14.sroa.0.i.0._RSP_ptr_14.sroa.0.0._RSP_ptr_14.sroa.0.0._load_rsp_ptr_21.i4, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_18.i, i64* %_allin_new_bt_.i, align 8
  %69 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %69, i64* %_RSP_ptr_14.sroa.0.i, align 8
  store volatile i64 %69, i64* %_RBP_ptr_15.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_14.sroa.0.i.0._RSP_ptr_14.sroa.0.0._RSP_ptr_14.sroa.0.0._load_rsp_ptr_21.i4, i64 -12
  %70 = bitcast i8* %_new_gep_1.i to i32*
  store i32 0, i32* %70, align 4, !mcsema_real_eip !3
  %71 = bitcast i64* %_RBP_ptr_15.sroa.0.i to i8**
  %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_322.i5 = load i8*, i8** %71, align 8
  %_new_gep_4.i = getelementptr i8, i8* %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_322.i5, i64 -8
  %72 = bitcast i8* %_new_gep_4.i to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !4
  %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_623.i6 = load i8*, i8** %71, align 8
  %_new_gep_7.i = getelementptr i8, i8* %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_623.i6, i64 -8
  %73 = bitcast i8* %_new_gep_7.i to i32*
  %74 = load i32, i32* %73, align 4, !mcsema_real_eip !5
  %75 = add i32 %74, -5
  %76 = xor i32 %75, %74, !mcsema_real_eip !5
  %77 = trunc i32 %75 to i8, !mcsema_real_eip !5
  %78 = tail call i8 @llvm.ctpop.i8(i8 %77) #2, !mcsema_real_eip !5
  %79 = icmp slt i32 %75, 0
  %80 = and i32 %76, %74, !mcsema_real_eip !5
  %81 = icmp slt i32 %80, 0
  %tmp.i = xor i1 %79, %81
  br i1 %tmp.i, label %block_0x1c.i.preheader, label %sub_0.exit, !mcsema_real_eip !6

block_0x1c.i.preheader:                           ; preds = %driverBlockRaw
  br label %block_0x1c.i

block_0x42.loopexit.i:                            ; preds = %block_0x1c.i
  %82 = trunc i32 %98 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82) #2
  br label %sub_0.exit

block_0x1c.i:                                     ; preds = %block_0x1c.i.preheader, %block_0x1c.i
  %84 = phi i32 [ %97, %block_0x1c.i ], [ %74, %block_0x1c.i.preheader ]
  %_RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_1926.i = phi i8* [ %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_3929.i10, %block_0x1c.i ], [ %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_623.i6, %block_0x1c.i.preheader ]
  %85 = sext i32 %84 to i64, !mcsema_real_eip !7
  %_new_gep_23.i = getelementptr i8, i8* %_RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_1926.i, i64 -48
  %86 = shl nsw i64 %85, 3
  %_new_gep_24.i = getelementptr i8, i8* %_new_gep_23.i, i64 %86
  %87 = bitcast i8* %_new_gep_24.i to i32*
  store i32 1, i32* %87, align 4, !mcsema_real_eip !8
  %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_2627.i8 = load i8*, i8** %71, align 8
  %_new_gep_27.i = getelementptr i8, i8* %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_2627.i8, i64 -8
  %88 = bitcast i8* %_new_gep_27.i to i32*
  %89 = load i32, i32* %88, align 4, !mcsema_real_eip !9
  %90 = sext i32 %89 to i64, !mcsema_real_eip !9
  %_new_gep_30.i = getelementptr i8, i8* %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_2627.i8, i64 -44
  %91 = shl nsw i64 %90, 3
  %_new_gep_31.i = getelementptr i8, i8* %_new_gep_30.i, i64 %91
  %92 = bitcast i8* %_new_gep_31.i to i32*
  store i32 2, i32* %92, align 4, !mcsema_real_eip !10
  %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_3328.i9 = load i8*, i8** %71, align 8
  %_new_gep_34.i = getelementptr i8, i8* %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_3328.i9, i64 -8
  %93 = bitcast i8* %_new_gep_34.i to i32*
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !11
  %95 = add i32 %94, 1
  store i32 %95, i32* %93, align 4, !mcsema_real_eip !12
  %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_3929.i10 = load i8*, i8** %71, align 8
  %_new_gep_40.i = getelementptr i8, i8* %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_3929.i10, i64 -8
  %96 = bitcast i8* %_new_gep_40.i to i32*
  %97 = load i32, i32* %96, align 4, !mcsema_real_eip !5
  %98 = add i32 %97, -5
  %99 = xor i32 %98, %97, !mcsema_real_eip !5
  %100 = icmp slt i32 %98, 0
  %101 = and i32 %99, %97, !mcsema_real_eip !5
  %102 = icmp slt i32 %101, 0
  %tmp70.i = xor i1 %100, %102
  br i1 %tmp70.i, label %block_0x1c.i, label %block_0x42.loopexit.i, !mcsema_real_eip !6

sub_0.exit:                                       ; preds = %driverBlockRaw, %block_0x42.loopexit.i
  %_RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_924.i = phi i8* [ %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_623.i6, %driverBlockRaw ], [ %_RBP_ptr_15.sroa.0.i.0._RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_3929.i10, %block_0x42.loopexit.i ]
  %ZF_val.0.in.i = phi i32 [ %75, %driverBlockRaw ], [ %98, %block_0x42.loopexit.i ]
  %PF_val.0.in.in.i = phi i8 [ %78, %driverBlockRaw ], [ %83, %block_0x42.loopexit.i ]
  %AF_val.0.in.in.i = phi i32 [ %76, %driverBlockRaw ], [ %99, %block_0x42.loopexit.i ]
  %CF_val.0.in.i = phi i32 [ %74, %driverBlockRaw ], [ %97, %block_0x42.loopexit.i ]
  %SF_val.0.i = phi i1 [ %79, %driverBlockRaw ], [ %100, %block_0x42.loopexit.i ]
  %OF_val.0.i = phi i1 [ %81, %driverBlockRaw ], [ %102, %block_0x42.loopexit.i ]
  %AF_val.0.in.i = and i32 %AF_val.0.in.in.i, 16
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %CF_val.0.i = icmp ult i32 %CF_val.0.in.i, 5
  %AF_val.0.i = icmp ne i32 %AF_val.0.in.i, 0
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %ZF_val.0.i = icmp eq i32 %ZF_val.0.in.i, 0
  %_new_gep_10.i = getelementptr i8, i8* %_RBP_ptr_15.sroa.0.0._RBP_ptr_15.sroa.0.0._load_rbp_ptr_924.i, i64 -44
  %103 = bitcast i8* %_new_gep_10.i to i32*
  %104 = load i32, i32* %103, align 4, !mcsema_real_eip !13
  %105 = zext i32 %104 to i64, !mcsema_real_eip !13
  %_RSP_ptr_14.sroa.0.i.0._RSP_ptr_14.sroa.0.0._RSP_ptr_14.sroa.0.0._load_rsp_ptr_1225.i7 = load i8*, i8** %68, align 8
  %_allin_new_bt_13.i = bitcast i8* %_RSP_ptr_14.sroa.0.i.0._RSP_ptr_14.sroa.0.0._RSP_ptr_14.sroa.0.0._load_rsp_ptr_1225.i7 to i64*
  %106 = load i64, i64* %_allin_new_bt_13.i, align 8
  store volatile i64 %106, i64* %_RBP_ptr_15.sroa.0.i, align 8
  %_new_gep_14.i = getelementptr i8, i8* %_RSP_ptr_14.sroa.0.i.0._RSP_ptr_14.sroa.0.0._RSP_ptr_14.sroa.0.0._load_rsp_ptr_1225.i7, i64 16
  %107 = ptrtoint i8* %_new_gep_14.i to i64
  store volatile i64 %107, i64* %_RSP_ptr_14.sroa.0.i, align 8
  store i64 %105, i64* %RAX.i, align 8, !mcsema_real_eip !14
  %108 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %108, align 8
  %109 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %109, align 8
  store i64 %7, i64* %RDI.i, align 8, !mcsema_real_eip !14
  store volatile i64 %107, i64* %RSP.i, align 8
  store volatile i64 %106, i64* %RBP.i, align 8
  %110 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %110, align 8
  %111 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %111, align 8
  %112 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %112, align 8
  %113 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %113, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !14
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !14
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !14
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !14
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !14
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !14
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !14
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !14
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !14
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !14
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !14
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !14
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !14
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !14
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !14
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !14
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !14
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !14
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !14
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !14
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !14
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !14
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !14
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !14
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !14
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !14
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !14
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !14
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !14
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !14
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !14
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !14
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !14
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !14
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !14
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !14
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !14
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !14
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !14
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !14
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !14
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !14
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !14
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !14
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !14
  %114 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %114, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_14.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_15.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %1)
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
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 4, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!4 = !{i64 11, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!5 = !{i64 18, [19 x i8] c"\09cmpl\09$5, -8(%rbp)\00"}
!6 = !{i64 22, [8 x i8] c"\09jge\0938\00"}
!7 = !{i64 28, [23 x i8] c"\09movslq\09-8(%rbp), %rax\00"}
!8 = !{i64 32, [27 x i8] c"\09movl\09$1, -48(%rbp,%rax,8)\00"}
!9 = !{i64 40, [23 x i8] c"\09movslq\09-8(%rbp), %rax\00"}
!10 = !{i64 44, [27 x i8] c"\09movl\09$2, -44(%rbp,%rax,8)\00"}
!11 = !{i64 52, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!12 = !{i64 58, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!13 = !{i64 66, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!14 = !{i64 70, [6 x i8] c"\09retq\00"}
