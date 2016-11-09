; ModuleID = 'Output/test_5.clang.trans.opt.bc'
source_filename = "Output/test_5.clang.bc"
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
  %_RSP_ptr_.i = alloca i8*, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_1.i = alloca [28 x i8], align 4
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.i.0..sroa_cast = bitcast i8** %_RSP_ptr_.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 28, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 28
  store i8* %_local_stack_end_ptr_.i, i8** %_RSP_ptr_.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64, i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %7 = bitcast i64* %R8.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %9 = bitcast i64* %R10.i to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %11 = bitcast i64* %R12.i to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %13 = bitcast i64* %R14.i to <2 x i64>*
  %14 = load <2 x i64>, <2 x i64>* %13, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %15 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %16 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %21 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %34 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %45 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %46 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %47 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %48 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %49 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
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
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 20
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2.i, i64* %_allin_new_bt_.i, align 8
  store volatile i8* %_new_gep_.i, i8** %_RSP_ptr_.i, align 8
  %68 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %68, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 12
  %_allin_new_bt_2.i = bitcast i8* %_new_gep_1.i to i64*
  store i64 %6, i64* %_allin_new_bt_2.i, align 8, !mcsema_real_eip !3
  %_new_gep_4.i = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 8
  %69 = trunc i64 %5 to i32
  %70 = bitcast i8* %_new_gep_4.i to i32*
  store i32 %69, i32* %70, align 4, !mcsema_real_eip !4
  %_new_gep_7.i = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 4
  %71 = bitcast i8* %_new_gep_7.i to i32*
  store i32 0, i32* %71, align 4, !mcsema_real_eip !5
  %72 = bitcast [28 x i8]* %_local_stack_start_ptr_1.i to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !6
  %73 = sub i32 0, %69, !mcsema_real_eip !7
  %74 = icmp slt i32 %73, 0
  %75 = and i32 %69, %73, !mcsema_real_eip !7
  %76 = icmp slt i32 %75, 0
  %tmp14.i = xor i1 %74, %76
  br i1 %tmp14.i, label %block_0x25.i.preheader, label %sub_0.exit, !mcsema_real_eip !8

block_0x25.i.preheader:                           ; preds = %driverBlockRaw
  %77 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  br label %block_0x25.i

block_0x25.i:                                     ; preds = %block_0x25.i.preheader, %block_0x25.i
  %78 = phi i32 [ %92, %block_0x25.i ], [ 0, %block_0x25.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12415.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_124.i5, %block_0x25.i ], [ %_new_gep_.i, %block_0x25.i.preheader ]
  %79 = sext i32 %78 to i64, !mcsema_real_eip !9
  %_new_gep_22.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12415.i, i64 -8
  %_allin_new_bt_23.i = bitcast i8* %_new_gep_22.i to i64*
  %80 = load i64, i64* %_allin_new_bt_23.i, align 8, !mcsema_real_eip !10
  %81 = shl nsw i64 %79, 2
  %82 = add i64 %80, %81, !mcsema_real_eip !11
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32, i32* %83, align 4, !mcsema_real_eip !11
  %_new_gep_25.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12415.i, i64 -16
  %85 = bitcast i8* %_new_gep_25.i to i32*
  %86 = load i32, i32* %85, align 4, !mcsema_real_eip !12
  %87 = add i32 %86, %84
  store i32 %87, i32* %85, align 4, !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_305.i4 = load i8*, i8** %77, align 8
  %_new_gep_31.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_305.i4, i64 -20
  %88 = bitcast i8* %_new_gep_31.i to i32*
  %89 = load i32, i32* %88, align 4, !mcsema_real_eip !14
  %90 = add i32 %89, 1
  store i32 %90, i32* %88, align 4, !mcsema_real_eip !15
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_124.i5 = load i8*, i8** %77, align 8
  %_new_gep_13.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_124.i5, i64 -20
  %91 = bitcast i8* %_new_gep_13.i to i32*
  %92 = load i32, i32* %91, align 4, !mcsema_real_eip !16
  %_new_gep_16.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_124.i5, i64 -12
  %93 = bitcast i8* %_new_gep_16.i to i32*
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !7
  %95 = sub i32 %92, %94, !mcsema_real_eip !7
  %96 = xor i32 %95, %92, !mcsema_real_eip !7
  %97 = icmp slt i32 %95, 0
  %98 = xor i32 %94, %92, !mcsema_real_eip !7
  %99 = and i32 %96, %98, !mcsema_real_eip !7
  %100 = icmp slt i32 %99, 0
  %tmp.i = xor i1 %97, %100
  br i1 %tmp.i, label %block_0x25.i, label %block_0x19.block_0x48_crit_edge.i, !mcsema_real_eip !8

block_0x19.block_0x48_crit_edge.i:                ; preds = %block_0x25.i
  %101 = zext i32 %84 to i64, !mcsema_real_eip !11
  %102 = zext i32 %87 to i64, !mcsema_real_eip !17
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_38.pre.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_allin_new_bt_39.phi.trans.insert.i = bitcast i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_38.pre.i to i64*
  %.pre.i = load i64, i64* %_allin_new_bt_39.phi.trans.insert.i, align 8
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %driverBlockRaw, %block_0x19.block_0x48_crit_edge.i
  %103 = phi i64 [ %.pre.i, %block_0x19.block_0x48_crit_edge.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2.i, %driverBlockRaw ]
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_38.i = phi i8* [ %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_38.pre.i, %block_0x19.block_0x48_crit_edge.i ], [ %_new_gep_.i, %driverBlockRaw ]
  %RSI_val.0.lcssa.i = phi i64 [ %102, %block_0x19.block_0x48_crit_edge.i ], [ %5, %driverBlockRaw ]
  %RDX_val.0.lcssa.i = phi i64 [ %101, %block_0x19.block_0x48_crit_edge.i ], [ %4, %driverBlockRaw ]
  %RCX_val.0.lcssa.i = phi i64 [ %80, %block_0x19.block_0x48_crit_edge.i ], [ %3, %driverBlockRaw ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_124.lcssa.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_124.i5, %block_0x19.block_0x48_crit_edge.i ], [ %_new_gep_.i, %driverBlockRaw ]
  %.lcssa10.i = phi i32 [ %92, %block_0x19.block_0x48_crit_edge.i ], [ 0, %driverBlockRaw ]
  %.lcssa9.i = phi i32 [ %94, %block_0x19.block_0x48_crit_edge.i ], [ %69, %driverBlockRaw ]
  %.lcssa8.i = phi i32 [ %95, %block_0x19.block_0x48_crit_edge.i ], [ %73, %driverBlockRaw ]
  %.lcssa7.i = phi i32 [ %96, %block_0x19.block_0x48_crit_edge.i ], [ %73, %driverBlockRaw ]
  %.lcssa6.i = phi i1 [ %97, %block_0x19.block_0x48_crit_edge.i ], [ %74, %driverBlockRaw ]
  %.lcssa.i = phi i1 [ %100, %block_0x19.block_0x48_crit_edge.i ], [ %76, %driverBlockRaw ]
  %104 = icmp ult i32 %.lcssa10.i, %.lcssa9.i, !mcsema_real_eip !7
  %105 = icmp eq i32 %.lcssa10.i, %.lcssa9.i
  %106 = trunc i32 %.lcssa8.i to i8, !mcsema_real_eip !7
  %107 = tail call i8 @llvm.ctpop.i8(i8 %106) #2, !mcsema_real_eip !7
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  %110 = xor i32 %.lcssa7.i, %.lcssa9.i, !mcsema_real_eip !7
  %111 = and i32 %110, 16, !mcsema_real_eip !7
  %112 = icmp ne i32 %111, 0, !mcsema_real_eip !7
  %_new_gep_36.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_124.lcssa.i, i64 -16
  %113 = bitcast i8* %_new_gep_36.i to i32*
  %114 = load i32, i32* %113, align 4, !mcsema_real_eip !18
  %115 = zext i32 %114 to i64, !mcsema_real_eip !18
  store volatile i64 %103, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_40.i = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_38.i, i64 16
  store volatile i8* %_new_gep_40.i, i8** %_RSP_ptr_.i, align 8
  store i64 %115, i64* %RAX.i, align 8, !mcsema_real_eip !19
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !19
  store i64 %RCX_val.0.lcssa.i, i64* %RCX.i, align 8, !mcsema_real_eip !19
  store i64 %RDX_val.0.lcssa.i, i64* %RDX.i, align 8, !mcsema_real_eip !19
  store i64 %RSI_val.0.lcssa.i, i64* %RSI.i, align 8, !mcsema_real_eip !19
  store i64 %6, i64* %RDI.i, align 8, !mcsema_real_eip !19
  %_new_ptr2int_42.i = ptrtoint i8* %_new_gep_40.i to i64
  store volatile i64 %_new_ptr2int_42.i, i64* %RSP.i, align 8
  store volatile i64 %103, i64* %RBP.i, align 8
  %116 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %116, align 8
  %117 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %117, align 8
  %118 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %118, align 8
  %119 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %119, align 8
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !19
  store i1 %104, i1* %CF.i, align 1, !mcsema_real_eip !19
  store i1 %109, i1* %PF.i, align 1, !mcsema_real_eip !19
  store i1 %112, i1* %AF.i, align 1, !mcsema_real_eip !19
  store i1 %105, i1* %ZF.i, align 1, !mcsema_real_eip !19
  store i1 %.lcssa6.i, i1* %SF.i, align 1, !mcsema_real_eip !19
  store i1 %.lcssa.i, i1* %OF.i, align 1, !mcsema_real_eip !19
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !19
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !19
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !19
  store i11 %49, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !19
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  %120 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %120, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 28, i8* nonnull %1)
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
!2 = !{i64 0}
!3 = !{i64 4}
!4 = !{i64 8}
!5 = !{i64 11}
!6 = !{i64 18}
!7 = !{i64 28}
!8 = !{i64 31}
!9 = !{i64 37}
!10 = !{i64 41}
!11 = !{i64 45}
!12 = !{i64 48}
!13 = !{i64 53}
!14 = !{i64 56}
!15 = !{i64 64}
!16 = !{i64 25}
!17 = !{i64 51}
!18 = !{i64 72}
!19 = !{i64 76}
