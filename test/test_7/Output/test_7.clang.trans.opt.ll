; ModuleID = 'Output/test_7.clang.trans.opt.bc'
source_filename = "Output/test_7.clang.bc"
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
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_124.i = alloca [176 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_124.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 176, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_124.i, i64 0, i64 176
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %4 = bitcast i64* %R12.i to <2 x i64>*
  %5 = load <2 x i64>, <2 x i64>* %4, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %6 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %7 = bitcast i64* %R15.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %9 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %11 = bitcast x86_fp80* %10 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !2
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
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %42 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %43 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %44 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %58 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %59 = load <2 x i64>, <2 x i64>* %58, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_125.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %60 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_133.i1 = load i8*, i8** %60, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_133.i1, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_125.i, i64* %_allin_new_bt_.i, align 8
  %61 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %61, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_133.i1, i64 -16
  %_allin_new_bt_2.i = bitcast i8* %_new_gep_1.i to i64*
  store i64 %6, i64* %_allin_new_bt_2.i, align 8, !mcsema_real_eip !3
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_133.i1, i64 -24
  %_allin_new_bt_4.i = bitcast i8* %_new_gep_3.i to i64*
  store i64 %3, i64* %_allin_new_bt_4.i, align 8, !mcsema_real_eip !4
  %_new_gep_5.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_133.i1, i64 -168
  %62 = ptrtoint i8* %_new_gep_5.i to i64
  store volatile i64 %62, i64* %_RSP_ptr_.sroa.0.i, align 8
  %63 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6134.i2 = load i8*, i8** %63, align 8
  %_new_gep_7.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6134.i2, i64 -20
  %64 = bitcast i8* %_new_gep_7.i to i32*
  store i32 0, i32* %64, align 4, !mcsema_real_eip !5
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9135.i3 = load i8*, i8** %63, align 8
  %_new_gep_10.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9135.i3, i64 -24
  %65 = bitcast i8* %_new_gep_10.i to i32*
  store i32 1, i32* %65, align 4, !mcsema_real_eip !6
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12136.i4 = load i8*, i8** %63, align 8
  %_new_gep_13.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12136.i4, i64 -68
  %66 = bitcast i8* %_new_gep_13.i to i32*
  store i32 0, i32* %66, align 4, !mcsema_real_eip !7
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15137.i5 = load i8*, i8** %63, align 8
  %_new_gep_16.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15137.i5, i64 -68
  %67 = bitcast i8* %_new_gep_16.i to i32*
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !8
  %69 = add i32 %68, -10
  %70 = icmp slt i32 %69, 0
  %71 = sub i32 9, %68
  %72 = and i32 %71, %68
  %73 = icmp slt i32 %72, 0
  %tmp.i = xor i1 %70, %73
  br i1 %tmp.i, label %block_0x16d.i.preheader, label %block_0x189.i, !mcsema_real_eip !9

block_0x16d.i.preheader:                          ; preds = %driverBlockRaw
  br label %block_0x16d.i

block_0x189.i.loopexit:                           ; preds = %block_0x16d.i
  br label %block_0x189.i

block_0x189.i:                                    ; preds = %block_0x189.i.loopexit, %driverBlockRaw
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18138.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15137.i5, %driverBlockRaw ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48159.i23, %block_0x189.i.loopexit ]
  %_new_gep_19.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18138.i, i64 -24
  %74 = ptrtoint i8* %_new_gep_19.i to i64
  %_new_gep_21.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18138.i, i64 -80
  %_allin_new_bt_22.i = bitcast i8* %_new_gep_21.i to i64*
  store i64 %74, i64* %_allin_new_bt_22.i, align 8, !mcsema_real_eip !10
  %75 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139.i6 = load i8*, i8** %63, align 8
  %_new_gep_24.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139.i6, i64 -88
  %_allin_new_bt_25.i = bitcast i8* %_new_gep_24.i to i64*
  store i64 %75, i64* %_allin_new_bt_25.i, align 8, !mcsema_real_eip !12
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26140.i7 = load i8*, i8** %63, align 8
  %_new_gep_27.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26140.i7, i64 -92
  %76 = bitcast i8* %_new_gep_27.i to i32*
  store i32 0, i32* %76, align 4, !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29141.i8 = load i8*, i8** %63, align 8
  %_new_gep_30.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29141.i8, i64 -92
  %77 = bitcast i8* %_new_gep_30.i to i32*
  %78 = load i32, i32* %77, align 4, !mcsema_real_eip !14
  %79 = add i32 %78, -10
  %80 = xor i32 %79, %78, !mcsema_real_eip !14
  %81 = trunc i32 %79 to i8, !mcsema_real_eip !14
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !14
  %83 = icmp slt i32 %79, 0
  %84 = and i32 %80, %78, !mcsema_real_eip !14
  %85 = icmp slt i32 %84, 0
  %tmp211.i = xor i1 %83, %85
  br i1 %tmp211.i, label %block_0x1b2.i.preheader, label %block_0x1d1.i, !mcsema_real_eip !15

block_0x1b2.i.preheader:                          ; preds = %block_0x189.i
  br label %block_0x1b2.i

block_0x16d.i:                                    ; preds = %block_0x16d.i.preheader, %block_0x16d.i
  %86 = phi i32 [ %95, %block_0x16d.i ], [ %68, %block_0x16d.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32157.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48159.i23, %block_0x16d.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15137.i5, %block_0x16d.i.preheader ]
  %87 = add i32 %86, 1
  %88 = sext i32 %86 to i64, !mcsema_real_eip !16
  %_new_gep_39.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32157.i, i64 -64
  %89 = shl nsw i64 %88, 2
  %_new_gep_40.i = getelementptr i8, i8* %_new_gep_39.i, i64 %89
  %90 = bitcast i8* %_new_gep_40.i to i32*
  store i32 %87, i32* %90, align 4, !mcsema_real_eip !17
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_42158.i22 = load i8*, i8** %63, align 8
  %_new_gep_43.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_42158.i22, i64 -68
  %91 = bitcast i8* %_new_gep_43.i to i32*
  %92 = load i32, i32* %91, align 4, !mcsema_real_eip !18
  %93 = add i32 %92, 1
  store i32 %93, i32* %91, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48159.i23 = load i8*, i8** %63, align 8
  %_new_gep_49.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48159.i23, i64 -68
  %94 = bitcast i8* %_new_gep_49.i to i32*
  %95 = load i32, i32* %94, align 4, !mcsema_real_eip !8
  %96 = add i32 %95, -10
  %97 = icmp slt i32 %96, 0
  %98 = sub i32 9, %95
  %99 = and i32 %98, %95
  %100 = icmp slt i32 %99, 0
  %tmp210.i = xor i1 %97, %100
  br i1 %tmp210.i, label %block_0x16d.i, label %block_0x189.i.loopexit, !mcsema_real_eip !9

block_0x1d1.loopexit.i:                           ; preds = %block_0x1b2.i
  %101 = trunc i32 %134 to i8, !mcsema_real_eip !14
  %102 = tail call i8 @llvm.ctpop.i8(i8 %101)
  br label %block_0x1d1.i

block_0x1d1.i:                                    ; preds = %block_0x1d1.loopexit.i, %block_0x189.i
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_51142.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29141.i8, %block_0x189.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_134156.i21, %block_0x1d1.loopexit.i ]
  %OF_val.0.i = phi i1 [ %85, %block_0x189.i ], [ %138, %block_0x1d1.loopexit.i ]
  %SF_val.0.i = phi i1 [ %83, %block_0x189.i ], [ %136, %block_0x1d1.loopexit.i ]
  %CF_val.0.in.i = phi i32 [ %78, %block_0x189.i ], [ %133, %block_0x1d1.loopexit.i ]
  %AF_val.0.in.in.i = phi i32 [ %80, %block_0x189.i ], [ %135, %block_0x1d1.loopexit.i ]
  %PF_val.0.in.in.i = phi i8 [ %82, %block_0x189.i ], [ %102, %block_0x1d1.loopexit.i ]
  %ZF_val.0.in.i = phi i32 [ %79, %block_0x189.i ], [ %134, %block_0x1d1.loopexit.i ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %AF_val.0.in.i = and i32 %AF_val.0.in.in.i, 16
  %ZF_val.0.i = icmp eq i32 %ZF_val.0.in.i, 0
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %AF_val.0.i = icmp ne i32 %AF_val.0.in.i, 0
  %CF_val.0.i = icmp ult i32 %CF_val.0.in.i, 10
  %_new_gep_52.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_51142.i, i64 -64
  %103 = ptrtoint i8* %_new_gep_52.i to i64
  %_new_gep_54.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_51142.i, i64 -24
  %104 = bitcast i8* %_new_gep_54.i to i32*
  %105 = load i32, i32* %104, align 4, !mcsema_real_eip !20
  %106 = zext i32 %105 to i64, !mcsema_real_eip !20
  %_new_gep_57.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_51142.i, i64 -80
  %_allin_new_bt_58.i = bitcast i8* %_new_gep_57.i to i64*
  %107 = load i64, i64* %_allin_new_bt_58.i, align 8, !mcsema_real_eip !21
  %_new_gep_59.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_51142.i, i64 -88
  %_allin_new_bt_60.i = bitcast i8* %_new_gep_59.i to i64*
  %108 = load i64, i64* %_allin_new_bt_60.i, align 8, !mcsema_real_eip !22
  %_new_gep_70.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_51142.i, i64 -104
  %_allin_new_bt_71.i = bitcast i8* %_new_gep_70.i to i64*
  store i64 %108, i64* %_allin_new_bt_71.i, align 8, !mcsema_real_eip !23
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_72143.i9 = load i8*, i8** %63, align 8
  %_new_gep_73.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_72143.i9, i64 -104
  %_allin_new_bt_74.i = bitcast i8* %_new_gep_73.i to i64*
  %109 = load i64, i64* %_allin_new_bt_74.i, align 8, !mcsema_real_eip !24
  %_new_gep_75.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_72143.i9, i64 -112
  %_allin_new_bt_76.i = bitcast i8* %_new_gep_75.i to i64*
  store i64 %103, i64* %_allin_new_bt_76.i, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77144.i10 = load i8*, i8** %63, align 8
  %_new_gep_78.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77144.i10, i64 -116
  %110 = bitcast i8* %_new_gep_78.i to i32*
  store i32 %105, i32* %110, align 4, !mcsema_real_eip !26
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_80145.i11 = load i8*, i8** %63, align 8
  %_new_gep_81.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_80145.i11, i64 -128
  %_allin_new_bt_82.i = bitcast i8* %_new_gep_81.i to i64*
  store i64 %107, i64* %_allin_new_bt_82.i, align 8, !mcsema_real_eip !27
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_83146.i12 = load i8*, i8** %63, align 8
  %_new_gep_84.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_83146.i12, i64 -116
  %111 = bitcast i8* %_new_gep_84.i to i32*
  %112 = load i32, i32* %111, align 4, !mcsema_real_eip !28
  %113 = zext i32 %112 to i64, !mcsema_real_eip !28
  %114 = bitcast i64* %_RSP_ptr_.sroa.0.i to i32**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_86126127147.i13 = load i32*, i32** %114, align 8
  store i32 %112, i32* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_86126127147.i13, align 4, !mcsema_real_eip !29
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_88148.i14 = load i8*, i8** %63, align 8
  %_new_gep_89.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_88148.i14, i64 -112
  %_allin_new_bt_90.i = bitcast i8* %_new_gep_89.i to i64*
  %115 = load i64, i64* %_allin_new_bt_90.i, align 8, !mcsema_real_eip !30
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_91149.i15 = load i8*, i8** %60, align 8
  %_new_gep_92.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_91149.i15, i64 8
  %_allin_new_bt_93.i = bitcast i8* %_new_gep_92.i to i64*
  store i64 %115, i64* %_allin_new_bt_93.i, align 8, !mcsema_real_eip !31
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94150.i16 = load i8*, i8** %63, align 8
  %_new_gep_95.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94150.i16, i64 -128
  %_allin_new_bt_96.i = bitcast i8* %_new_gep_95.i to i64*
  %116 = load i64, i64* %_allin_new_bt_96.i, align 8, !mcsema_real_eip !32
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97151.i17 = load i8*, i8** %60, align 8
  %_new_gep_98.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97151.i17, i64 16
  %_allin_new_bt_99.i = bitcast i8* %_new_gep_98.i to i64*
  store i64 %116, i64* %_allin_new_bt_99.i, align 8, !mcsema_real_eip !33
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_100152.i18 = load i8*, i8** %60, align 8
  %_new_gep_101.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_100152.i18, i64 24
  %_allin_new_bt_102.i = bitcast i8* %_new_gep_101.i to i64*
  store i64 %108, i64* %_allin_new_bt_102.i, align 8, !mcsema_real_eip !34
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_103153.i19 = load i8*, i8** %60, align 8
  %_new_gep_104.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_103153.i19, i64 -8
  %_allin_new_bt_105.i = bitcast i8* %_new_gep_104.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_105.i, align 8, !mcsema_real_eip !35
  %117 = ptrtoint i8* %_new_gep_104.i to i64
  store volatile i64 %117, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %113, i64* %RAX.i, align 8, !mcsema_real_eip !35
  store i64 %115, i64* %RBX.i, align 8, !mcsema_real_eip !35
  store i64 %109, i64* %RCX.i, align 8, !mcsema_real_eip !35
  store i64 %107, i64* %RDX.i, align 8, !mcsema_real_eip !35
  store i64 %103, i64* %RSI.i, align 8, !mcsema_real_eip !35
  store i64 %106, i64* %RDI.i, align 8, !mcsema_real_eip !35
  store volatile i64 %117, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_108129.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_108129.i, i64* %RBP.i, align 8
  %118 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %118, align 8
  store i64 %108, i64* %R10.i, align 8, !mcsema_real_eip !35
  store i64 %109, i64* %R11.i, align 8, !mcsema_real_eip !35
  %119 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %119, align 8
  store i64 %116, i64* %R14.i, align 8, !mcsema_real_eip !35
  %120 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %120, align 8
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !35
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !35
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !35
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !35
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !35
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !35
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !35
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !35
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !35
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !35
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !35
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !35
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !35
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !35
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !35
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !35
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !35
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !35
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !35
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !35
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !35
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !35
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !35
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !35
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !35
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !35
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !35
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !35
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !35
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !35
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !35
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !35
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !35
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !35
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !35
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !35
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !35
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !35
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !35
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !35
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !35
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !35
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !35
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !35
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !35
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !35
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !35
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !35
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !35
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !35
  %121 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %59, <2 x i64>* %121, align 1
  call void @llvm.trap()
  unreachable

block_0x1b2.i:                                    ; preds = %block_0x1b2.i.preheader, %block_0x1b2.i
  %122 = phi i32 [ %133, %block_0x1b2.i ], [ %78, %block_0x1b2.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_120154.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_134156.i21, %block_0x1b2.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29141.i8, %block_0x1b2.i.preheader ]
  %123 = add i32 %122, 1
  %_new_gep_124.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_120154.i, i64 -88
  %_allin_new_bt_125.i = bitcast i8* %_new_gep_124.i to i64*
  %124 = load i64, i64* %_allin_new_bt_125.i, align 8, !mcsema_real_eip !36
  %125 = sext i32 %122 to i64, !mcsema_real_eip !37
  %126 = shl nsw i64 %125, 2
  %127 = add i64 %126, %124, !mcsema_real_eip !38
  %128 = inttoptr i64 %127 to i32*
  store i32 %123, i32* %128, align 4, !mcsema_real_eip !38
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_128155.i20 = load i8*, i8** %63, align 8
  %_new_gep_129.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_128155.i20, i64 -92
  %129 = bitcast i8* %_new_gep_129.i to i32*
  %130 = load i32, i32* %129, align 4, !mcsema_real_eip !39
  %131 = add i32 %130, 1
  store i32 %131, i32* %129, align 4, !mcsema_real_eip !40
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_134156.i21 = load i8*, i8** %63, align 8
  %_new_gep_135.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_134156.i21, i64 -92
  %132 = bitcast i8* %_new_gep_135.i to i32*
  %133 = load i32, i32* %132, align 4, !mcsema_real_eip !14
  %134 = add i32 %133, -10
  %135 = xor i32 %134, %133, !mcsema_real_eip !14
  %136 = icmp slt i32 %134, 0
  %137 = and i32 %135, %133, !mcsema_real_eip !14
  %138 = icmp slt i32 %137, 0
  %tmp214.i = xor i1 %136, %138
  br i1 %tmp214.i, label %block_0x1b2.i, label %block_0x1d1.loopexit.i, !mcsema_real_eip !15
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
!2 = !{i64 320, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 324, [12 x i8] c"\09pushq\09%r14\00"}
!4 = !{i64 326, [12 x i8] c"\09pushq\09%rbx\00"}
!5 = !{i64 334, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!6 = !{i64 341, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!7 = !{i64 348, [20 x i8] c"\09movl\09$0, -68(%rbp)\00"}
!8 = !{i64 355, [21 x i8] c"\09cmpl\09$10, -68(%rbp)\00"}
!9 = !{i64 359, [8 x i8] c"\09jge\0928\00"}
!10 = !{i64 404, [22 x i8] c"\09movq\09%rcx, -80(%rbp)\00"}
!11 = !{i64 408, [9 x i8] c"\09callq\090\00"}
!12 = !{i64 413, [22 x i8] c"\09movq\09%rax, -88(%rbp)\00"}
!13 = !{i64 417, [20 x i8] c"\09movl\09$0, -92(%rbp)\00"}
!14 = !{i64 424, [21 x i8] c"\09cmpl\09$10, -92(%rbp)\00"}
!15 = !{i64 428, [8 x i8] c"\09jge\0931\00"}
!16 = !{i64 371, [24 x i8] c"\09movslq\09-68(%rbp), %rcx\00"}
!17 = !{i64 375, [29 x i8] c"\09movl\09%eax, -64(%rbp,%rcx,4)\00"}
!18 = !{i64 379, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!19 = !{i64 385, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!20 = !{i64 474, [22 x i8] c"\09movl\09-24(%rbp), %edi\00"}
!21 = !{i64 477, [22 x i8] c"\09movq\09-80(%rbp), %rdx\00"}
!22 = !{i64 481, [22 x i8] c"\09movq\09-88(%rbp), %rsi\00"}
!23 = !{i64 497, [23 x i8] c"\09movq\09%rsi, -104(%rbp)\00"}
!24 = !{i64 504, [23 x i8] c"\09movq\09-104(%rbp), %r11\00"}
!25 = !{i64 508, [23 x i8] c"\09movq\09%rcx, -112(%rbp)\00"}
!26 = !{i64 515, [23 x i8] c"\09movl\09%r8d, -116(%rbp)\00"}
!27 = !{i64 522, [22 x i8] c"\09movq\09%r9, -128(%rbp)\00"}
!28 = !{i64 529, [23 x i8] c"\09movl\09-116(%rbp), %eax\00"}
!29 = !{i64 532, [19 x i8] c"\09movl\09%eax, (%rsp)\00"}
!30 = !{i64 535, [23 x i8] c"\09movq\09-112(%rbp), %rbx\00"}
!31 = !{i64 539, [20 x i8] c"\09movq\09%rbx, 8(%rsp)\00"}
!32 = !{i64 544, [23 x i8] c"\09movq\09-128(%rbp), %r14\00"}
!33 = !{i64 548, [21 x i8] c"\09movq\09%r14, 16(%rsp)\00"}
!34 = !{i64 553, [21 x i8] c"\09movq\09%r10, 24(%rsp)\00"}
!35 = !{i64 558, [12 x i8] c"\09callq\09-563\00"}
!36 = !{i64 440, [22 x i8] c"\09movq\09-88(%rbp), %rcx\00"}
!37 = !{i64 444, [24 x i8] c"\09movslq\09-92(%rbp), %rdx\00"}
!38 = !{i64 448, [26 x i8] c"\09movl\09%eax, (%rcx,%rdx,4)\00"}
!39 = !{i64 451, [22 x i8] c"\09movl\09-92(%rbp), %eax\00"}
!40 = !{i64 457, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
