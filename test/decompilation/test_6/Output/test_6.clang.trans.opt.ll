; ModuleID = 'Output/test_6.clang.trans.opt.bc'
source_filename = "Output/test_6.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noreturn
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_RSP_ptr_.i = alloca i8*, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_2.i = alloca [96 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.i.0..sroa_cast = bitcast i8** %_RSP_ptr_.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 96, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 96
  store i8* %_local_stack_end_ptr_.i, i8** %_RSP_ptr_.i, align 8
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %4 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %5 = bitcast i64* %R12.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %7 = bitcast i64* %R14.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %9 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %10 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %12 = bitcast x86_fp80* %11 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %12, i32 128, i32 4, i1 false), !mcsema_real_eip !2
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
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %43 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %44 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %60 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %61 = load <2 x i64>, <2 x i64>* %60, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 88
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3.i, i64* %_allin_new_bt_.i, align 8
  %62 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %62, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 8
  store volatile i8* %_new_gep_1.i, i8** %_RSP_ptr_.i, align 8
  %_new_gep_11.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 84
  %63 = bitcast i8* %_new_gep_11.i to i32*
  store i32 0, i32* %63, align 4, !mcsema_real_eip !3
  %_new_gep_14.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 80
  %64 = trunc i64 %4 to i32, !mcsema_real_eip !4
  %65 = bitcast i8* %_new_gep_14.i to i32*
  store i32 %64, i32* %65, align 4, !mcsema_real_eip !4
  %_new_gep_17.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 72
  %_allin_new_bt_18.i = bitcast i8* %_new_gep_17.i to i64*
  store i64 %3, i64* %_allin_new_bt_18.i, align 8, !mcsema_real_eip !5
  %66 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !6
  %_new_gep_20.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 64
  %_allin_new_bt_21.i = bitcast i8* %_new_gep_20.i to i64*
  store i64 %66, i64* %_allin_new_bt_21.i, align 8, !mcsema_real_eip !7
  %67 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !8
  %_new_gep_23.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 56
  %_allin_new_bt_24.i = bitcast i8* %_new_gep_23.i to i64*
  store i64 %67, i64* %_allin_new_bt_24.i, align 8, !mcsema_real_eip !9
  %_new_gep_26.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 52
  %68 = bitcast i8* %_new_gep_26.i to i32*
  store i32 0, i32* %68, align 4, !mcsema_real_eip !10
  %69 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  br label %block_0xf3.i

block_0xf3.i:                                     ; preds = %block_0xf3.block_0xf3_crit_edge.i, %driverBlockRaw
  %70 = phi i64 [ %66, %driverBlockRaw ], [ %.pre.i, %block_0xf3.block_0xf3_crit_edge.i ]
  %71 = phi i32 [ 0, %driverBlockRaw ], [ %81, %block_0xf3.block_0xf3_crit_edge.i ]
  %72 = add i32 %71, 11
  %73 = sext i32 %71 to i64, !mcsema_real_eip !11
  %74 = shl nsw i64 %73, 2
  %75 = add i64 %74, %70, !mcsema_real_eip !12
  %76 = inttoptr i64 %75 to i32*
  store i32 %72, i32* %76, align 4, !mcsema_real_eip !12
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4018.i1 = load i8*, i8** %69, align 8
  %_new_gep_41.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4018.i1, i64 -36
  %77 = bitcast i8* %_new_gep_41.i to i32*
  %78 = load i32, i32* %77, align 4, !mcsema_real_eip !13
  %79 = add i32 %78, 1
  store i32 %79, i32* %77, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2813.i2 = load i8*, i8** %69, align 8
  %_new_gep_29.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2813.i2, i64 -36
  %80 = bitcast i8* %_new_gep_29.i to i32*
  %81 = load i32, i32* %80, align 4, !mcsema_real_eip !15
  %82 = add i32 %81, -10
  %83 = icmp slt i32 %82, 0
  %84 = sub i32 9, %81
  %85 = and i32 %84, %81
  %86 = icmp slt i32 %85, 0
  %tmp.i = xor i1 %83, %86
  br i1 %tmp.i, label %block_0xf3.block_0xf3_crit_edge.i, label %block_0x11b.i, !mcsema_real_eip !16

block_0xf3.block_0xf3_crit_edge.i:                ; preds = %block_0xf3.i
  %_new_gep_38.phi.trans.insert.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2813.i2, i64 -24
  %_allin_new_bt_39.phi.trans.insert.i = bitcast i8* %_new_gep_38.phi.trans.insert.i to i64*
  %.pre.i = load i64, i64* %_allin_new_bt_39.phi.trans.insert.i, align 8
  br label %block_0xf3.i

block_0x11b.i:                                    ; preds = %block_0xf3.i
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %_new_gep_46.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2813.i2, i64 -40
  %87 = bitcast i8* %_new_gep_46.i to i32*
  store i32 0, i32* %87, align 4, !mcsema_real_eip !17
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_481423.i3 = load i8*, i8** %69, align 8
  %_new_gep_4924.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_481423.i3, i64 -40
  %88 = bitcast i8* %_new_gep_4924.i to i32*
  %89 = load i32, i32* %88, align 4, !mcsema_real_eip !18
  %90 = add i32 %89, -10
  %91 = xor i32 %90, %89, !mcsema_real_eip !18
  %92 = icmp slt i32 %90, 0
  %93 = and i32 %91, %89, !mcsema_real_eip !18
  %94 = icmp slt i32 %93, 0
  %tmp21325.i = xor i1 %92, %94
  br i1 %tmp21325.i, label %block_0x12f.i.preheader, label %block_0x152.i, !mcsema_real_eip !19

block_0x12f.i.preheader:                          ; preds = %block_0x11b.i
  br label %block_0x12f.i

block_0x12f.i:                                    ; preds = %block_0x12f.i.preheader, %block_0x12f.i
  %95 = phi i32 [ %106, %block_0x12f.i ], [ %89, %block_0x12f.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_481426.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4814.i7, %block_0x12f.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_481423.i3, %block_0x12f.i.preheader ]
  %96 = add i32 %95, 1
  %97 = sext i32 %95 to i64, !mcsema_real_eip !20
  %_new_gep_58.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_481426.i, i64 -32
  %_allin_new_bt_59.i = bitcast i8* %_new_gep_58.i to i64*
  %98 = load i64, i64* %_allin_new_bt_59.i, align 8, !mcsema_real_eip !21
  %99 = shl nsw i64 %97, 2
  %100 = add i64 %98, %99, !mcsema_real_eip !22
  %101 = inttoptr i64 %100 to i32*
  store i32 %96, i32* %101, align 4, !mcsema_real_eip !22
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6017.i6 = load i8*, i8** %69, align 8
  %_new_gep_61.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6017.i6, i64 -40
  %102 = bitcast i8* %_new_gep_61.i to i32*
  %103 = load i32, i32* %102, align 4, !mcsema_real_eip !23
  %104 = add i32 %103, 1
  store i32 %104, i32* %102, align 4, !mcsema_real_eip !24
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4814.i7 = load i8*, i8** %69, align 8
  %_new_gep_49.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4814.i7, i64 -40
  %105 = bitcast i8* %_new_gep_49.i to i32*
  %106 = load i32, i32* %105, align 4, !mcsema_real_eip !18
  %107 = add i32 %106, -10
  %108 = xor i32 %107, %106, !mcsema_real_eip !18
  %109 = icmp slt i32 %107, 0
  %110 = and i32 %108, %106, !mcsema_real_eip !18
  %111 = icmp slt i32 %110, 0
  %tmp213.i = xor i1 %109, %111
  br i1 %tmp213.i, label %block_0x12f.i, label %block_0x152.i.loopexit, !mcsema_real_eip !19

block_0x152.i.loopexit:                           ; preds = %block_0x12f.i
  br label %block_0x152.i

block_0x152.i:                                    ; preds = %block_0x152.i.loopexit, %block_0x11b.i
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4814.lcssa.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_481423.i3, %block_0x11b.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4814.i7, %block_0x152.i.loopexit ]
  %.lcssa22.i = phi i32 [ %89, %block_0x11b.i ], [ %106, %block_0x152.i.loopexit ]
  %.lcssa21.i = phi i32 [ %90, %block_0x11b.i ], [ %107, %block_0x152.i.loopexit ]
  %.lcssa20.i = phi i32 [ %91, %block_0x11b.i ], [ %108, %block_0x152.i.loopexit ]
  %.lcssa19.i = phi i1 [ %92, %block_0x11b.i ], [ %109, %block_0x152.i.loopexit ]
  %.lcssa.i = phi i1 [ %94, %block_0x11b.i ], [ %111, %block_0x152.i.loopexit ]
  %112 = icmp ult i32 %.lcssa22.i, 10, !mcsema_real_eip !18
  %113 = icmp eq i32 %.lcssa21.i, 0, !mcsema_real_eip !18
  %114 = trunc i32 %.lcssa21.i to i8, !mcsema_real_eip !18
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !18
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  %118 = and i32 %.lcssa20.i, 16, !mcsema_real_eip !18
  %119 = icmp ne i32 %118, 0, !mcsema_real_eip !18
  %_new_gep_67.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4814.lcssa.i, i64 -24
  %_allin_new_bt_68.i = bitcast i8* %_new_gep_67.i to i64*
  %120 = load i64, i64* %_allin_new_bt_68.i, align 8, !mcsema_real_eip !25
  %_new_gep_69.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4814.lcssa.i, i64 -32
  %_allin_new_bt_70.i = bitcast i8* %_new_gep_69.i to i64*
  %121 = load i64, i64* %_allin_new_bt_70.i, align 8, !mcsema_real_eip !26
  %122 = bitcast i8** %_RSP_ptr_.i to i32**
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_714515.i4 = load i32*, i32** %122, align 8
  store i32 10, i32* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_714515.i4, align 4, !mcsema_real_eip !27
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_73.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_74.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_73.i, i64 8
  %_allin_new_bt_75.i = bitcast i8* %_new_gep_74.i to i64*
  store i64 %120, i64* %_allin_new_bt_75.i, align 8, !mcsema_real_eip !28
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_76.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_77.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_76.i, i64 16
  %123 = bitcast i8* %_new_gep_77.i to i32*
  store i32 10, i32* %123, align 4, !mcsema_real_eip !29
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_79.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_80.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_79.i, i64 24
  %_allin_new_bt_81.i = bitcast i8* %_new_gep_80.i to i64*
  store i64 %121, i64* %_allin_new_bt_81.i, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8216.i5 = load i8*, i8** %69, align 8
  %_new_gep_83.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8216.i5, i64 -44
  %124 = bitcast i8* %_new_gep_83.i to i32*
  store i32 10, i32* %124, align 4, !mcsema_real_eip !31
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_86.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85.i, i64 -8
  %_allin_new_bt_87.i = bitcast i8* %_new_gep_86.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_87.i, align 8, !mcsema_real_eip !32
  store volatile i8* %_new_gep_86.i, i8** %_RSP_ptr_.i, align 8
  store i64 10, i64* %RAX.i, align 8, !mcsema_real_eip !32
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !32
  %125 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %125, align 8
  %126 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %126, align 8
  %_new_ptr2int_89.i = ptrtoint i8* %_new_gep_86.i to i64
  store volatile i64 %_new_ptr2int_89.i, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_906.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_906.i, i64* %RBP.i, align 8
  %127 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %127, align 8
  store i64 %120, i64* %R10.i, align 8, !mcsema_real_eip !32
  store i64 %121, i64* %R11.i, align 8, !mcsema_real_eip !32
  %128 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %128, align 8
  %129 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %129, align 8
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !32
  store i1 %112, i1* %CF.i, align 1, !mcsema_real_eip !32
  store i1 %117, i1* %PF.i, align 1, !mcsema_real_eip !32
  store i1 %119, i1* %AF.i, align 1, !mcsema_real_eip !32
  store i1 %113, i1* %ZF.i, align 1, !mcsema_real_eip !32
  store i1 %.lcssa19.i, i1* %SF.i, align 1, !mcsema_real_eip !32
  store i1 %.lcssa.i, i1* %OF.i, align 1, !mcsema_real_eip !32
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !32
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !32
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !32
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !32
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !32
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !32
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !32
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !32
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !32
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !32
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !32
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !32
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !32
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !32
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !32
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !32
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !32
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !32
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !32
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !32
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !32
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !32
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !32
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !32
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !32
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !32
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !32
  store i11 %43, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !32
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !32
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !32
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !32
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !32
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !32
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !32
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !32
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !32
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !32
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !32
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !32
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !32
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !32
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !32
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !32
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !32
  %130 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %61, <2 x i64>* %130, align 1
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 160}
!3 = !{i64 178}
!4 = !{i64 185}
!5 = !{i64 188}
!6 = !{i64 195}
!7 = !{i64 210}
!8 = !{i64 214}
!9 = !{i64 219}
!10 = !{i64 223}
!11 = !{i64 256}
!12 = !{i64 264}
!13 = !{i64 267}
!14 = !{i64 275}
!15 = !{i64 230}
!16 = !{i64 237}
!17 = !{i64 283}
!18 = !{i64 290}
!19 = !{i64 297}
!20 = !{i64 311}
!21 = !{i64 315}
!22 = !{i64 319}
!23 = !{i64 322}
!24 = !{i64 330}
!25 = !{i64 375}
!26 = !{i64 379}
!27 = !{i64 383}
!28 = !{i64 390}
!29 = !{i64 395}
!30 = !{i64 403}
!31 = !{i64 408}
!32 = !{i64 411}
