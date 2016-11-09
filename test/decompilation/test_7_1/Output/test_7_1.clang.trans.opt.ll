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
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %3 = bitcast i64* %R11.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %5 = bitcast i64* %R13.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %7 = bitcast i64* %R15.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %9 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %11 = bitcast x86_fp80* %10 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %11, i32 128, i32 4, i1 false) #3, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %12 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %13 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %14 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %27 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %28 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %35 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %36 = bitcast i8* %35 to i64*
  %37 = load i64, i64* %36, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %38 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %39 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %40 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %41 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %42 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
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
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 88
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3.i, i64* %_allin_new_bt_.i, align 8
  %61 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %61, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 8
  store volatile i8* %_new_gep_1.i, i8** %_RSP_ptr_.i, align 8
  %_new_gep_11.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 84
  %62 = bitcast i8* %_new_gep_11.i to i32*
  store i32 0, i32* %62, align 4, !mcsema_real_eip !3
  %_new_gep_14.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 36
  %63 = bitcast i8* %_new_gep_14.i to i32*
  store i32 0, i32* %63, align 4, !mcsema_real_eip !4
  %64 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  br label %block_0x53.i

block_0x53.i:                                     ; preds = %block_0x53.i, %driverBlockRaw
  %65 = phi i32 [ 0, %driverBlockRaw ], [ %73, %block_0x53.i ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16819.i = phi i8* [ %_new_gep_.i, %driverBlockRaw ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_168.i2, %block_0x53.i ]
  %66 = sext i32 %65 to i64, !mcsema_real_eip !5
  %_new_gep_23.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16819.i, i64 -48
  %67 = shl nsw i64 %66, 2
  %_new_gep_24.i = getelementptr i8, i8* %_new_gep_23.i, i64 %67
  %68 = bitcast i8* %_new_gep_24.i to i32*
  store i32 21, i32* %68, align 4, !mcsema_real_eip !6
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2611.i1 = load i8*, i8** %64, align 8
  %_new_gep_27.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2611.i1, i64 -52
  %69 = bitcast i8* %_new_gep_27.i to i32*
  %70 = load i32, i32* %69, align 4, !mcsema_real_eip !7
  %71 = add i32 %70, 1
  store i32 %71, i32* %69, align 4, !mcsema_real_eip !8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_168.i2 = load i8*, i8** %64, align 8
  %_new_gep_17.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_168.i2, i64 -52
  %72 = bitcast i8* %_new_gep_17.i to i32*
  %73 = load i32, i32* %72, align 4, !mcsema_real_eip !9
  %74 = add i32 %73, -10
  %75 = xor i32 %74, %73, !mcsema_real_eip !9
  %76 = icmp slt i32 %74, 0
  %77 = and i32 %75, %73, !mcsema_real_eip !9
  %78 = icmp slt i32 %77, 0
  %tmp.i = xor i1 %76, %78
  br i1 %tmp.i, label %block_0x53.i, label %block_0x6f.i, !mcsema_real_eip !10

block_0x6f.i:                                     ; preds = %block_0x53.i
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %phitmp.i = icmp ult i32 %73, 10
  %phitmp31.i = and i32 %75, 16
  %phitmp32.i = icmp ne i32 %phitmp31.i, 0
  %79 = icmp eq i32 %74, 0, !mcsema_real_eip !9
  %80 = trunc i32 %74 to i8, !mcsema_real_eip !9
  %81 = tail call i8 @llvm.ctpop.i8(i8 %80) #3, !mcsema_real_eip !9
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  %_new_gep_33.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_168.i2, i64 -48
  %84 = ptrtoint i8* %_new_gep_33.i to i64
  %_new_gep_36.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_168.i2, i64 -64
  %_allin_new_bt_37.i = bitcast i8* %_new_gep_36.i to i64*
  store i64 %84, i64* %_allin_new_bt_37.i, align 8, !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_389.i3 = load i8*, i8** %64, align 8
  %_new_gep_39.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_389.i3, i64 -64
  %_allin_new_bt_40.i = bitcast i8* %_new_gep_39.i to i64*
  %85 = load i64, i64* %_allin_new_bt_40.i, align 8, !mcsema_real_eip !12
  %86 = bitcast i8** %_RSP_ptr_.i to i64**
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41410.i4 = load i64*, i64** %86, align 8
  store i64 %85, i64* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41410.i4, align 8, !mcsema_real_eip !13
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_44.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43.i, i64 -8
  %_allin_new_bt_45.i = bitcast i8* %_new_gep_44.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_45.i, align 8, !mcsema_real_eip !14
  store volatile i8* %_new_gep_44.i, i8** %_RSP_ptr_.i, align 8
  store i64 10, i64* %RAX.i, align 8, !mcsema_real_eip !14
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !14
  %87 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %87, align 8
  %88 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %88, align 8
  %_new_ptr2int_47.i = ptrtoint i8* %_new_gep_44.i to i64
  store volatile i64 %_new_ptr2int_47.i, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_485.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_485.i, i64* %RBP.i, align 8
  %89 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %89, align 8
  store i64 %85, i64* %R10.i, align 8, !mcsema_real_eip !14
  %90 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %90, align 8
  %91 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %92, align 8
  store i1 %phitmp.i, i1* %CF.i, align 1, !mcsema_real_eip !14
  store i1 %83, i1* %PF.i, align 1, !mcsema_real_eip !14
  store i1 %phitmp32.i, i1* %AF.i, align 1, !mcsema_real_eip !14
  store i1 %79, i1* %ZF.i, align 1, !mcsema_real_eip !14
  store i1 %76, i1* %SF.i, align 1, !mcsema_real_eip !14
  store i1 %78, i1* %OF.i, align 1, !mcsema_real_eip !14
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #3, !mcsema_real_eip !14
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !14
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !14
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !14
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !14
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !14
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !14
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !14
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !14
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !14
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !14
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !14
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !14
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !14
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !14
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !14
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !14
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !14
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !14
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !14
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !14
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !14
  store i11 %42, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !14
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !14
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !14
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !14
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !14
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !14
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !14
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !14
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !14
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !14
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !14
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !14
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !14
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !14
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !14
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !14
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !14
  %93 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %93, align 1
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
!2 = !{i64 48}
!3 = !{i64 56}
!4 = !{i64 63}
!5 = !{i64 83}
!6 = !{i64 87}
!7 = !{i64 95}
!8 = !{i64 103}
!9 = !{i64 70}
!10 = !{i64 77}
!11 = !{i64 126}
!12 = !{i64 138}
!13 = !{i64 142}
!14 = !{i64 146}
