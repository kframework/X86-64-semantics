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
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_111.i = alloca [96 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_111.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 96, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_111.i, i64 0, i64 96
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %6 = bitcast i64* %R12.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %8 = bitcast i64* %R14.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %10 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %11 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %14 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %16 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %29 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %30 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %37 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %40 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %41 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %42 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %43 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
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
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_112.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %62 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120.i1 = load i8*, i8** %62, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120.i1, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_112.i, i64* %_allin_new_bt_.i, align 8
  %63 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %63, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120.i1, i64 -88
  %64 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %64, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120.i1, i64 -12
  %65 = bitcast i8* %_new_gep_3.i to i32*
  store i32 0, i32* %65, align 4, !mcsema_real_eip !3
  %66 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5121.i2 = load i8*, i8** %66, align 8
  %_new_gep_6.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5121.i2, i64 -8
  %67 = trunc i64 %5 to i32, !mcsema_real_eip !4
  %68 = bitcast i8* %_new_gep_6.i to i32*
  store i32 %67, i32* %68, align 4, !mcsema_real_eip !4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8122.i3 = load i8*, i8** %66, align 8
  %_new_gep_9.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8122.i3, i64 -16
  %_allin_new_bt_10.i = bitcast i8* %_new_gep_9.i to i64*
  store i64 %4, i64* %_allin_new_bt_10.i, align 8, !mcsema_real_eip !5
  %69 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !6
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11123.i4 = load i8*, i8** %66, align 8
  %_new_gep_12.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11123.i4, i64 -24
  %_allin_new_bt_13.i = bitcast i8* %_new_gep_12.i to i64*
  store i64 %69, i64* %_allin_new_bt_13.i, align 8, !mcsema_real_eip !7
  %70 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14124.i5 = load i8*, i8** %66, align 8
  %_new_gep_15.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14124.i5, i64 -32
  %_allin_new_bt_16.i = bitcast i8* %_new_gep_15.i to i64*
  store i64 %70, i64* %_allin_new_bt_16.i, align 8, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17125.i6 = load i8*, i8** %66, align 8
  %_new_gep_18.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17125.i6, i64 -36
  %71 = bitcast i8* %_new_gep_18.i to i32*
  store i32 0, i32* %71, align 4, !mcsema_real_eip !10
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20126.i7 = load i8*, i8** %66, align 8
  %_new_gep_21.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20126.i7, i64 -36
  %72 = bitcast i8* %_new_gep_21.i to i32*
  %73 = load i32, i32* %72, align 4, !mcsema_real_eip !11
  %74 = add i32 %73, -10
  %75 = icmp slt i32 %74, 0
  %76 = sub i32 9, %73
  %77 = and i32 %76, %73
  %78 = icmp slt i32 %77, 0
  %tmp.i = xor i1 %75, %78
  br i1 %tmp.i, label %block_0xea.i.preheader, label %block_0x10c.i, !mcsema_real_eip !12

block_0xea.i.preheader:                           ; preds = %driverBlockRaw
  br label %block_0xea.i

block_0x10c.i.loopexit:                           ; preds = %block_0xea.i
  br label %block_0x10c.i

block_0x10c.i:                                    ; preds = %block_0x10c.i.loopexit, %driverBlockRaw
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23127.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20126.i7, %driverBlockRaw ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43141.i18, %block_0x10c.i.loopexit ]
  %_new_gep_24.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23127.i, i64 -40
  %79 = bitcast i8* %_new_gep_24.i to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26128.i8 = load i8*, i8** %66, align 8
  %_new_gep_27.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26128.i8, i64 -40
  %80 = bitcast i8* %_new_gep_27.i to i32*
  %81 = load i32, i32* %80, align 4, !mcsema_real_eip !14
  %82 = add i32 %81, -10
  %83 = xor i32 %82, %81, !mcsema_real_eip !14
  %84 = trunc i32 %82 to i8, !mcsema_real_eip !14
  %85 = tail call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !14
  %86 = icmp slt i32 %82, 0
  %87 = and i32 %83, %81, !mcsema_real_eip !14
  %88 = icmp slt i32 %87, 0
  %tmp212.i = xor i1 %86, %88
  br i1 %tmp212.i, label %block_0x11d.i.preheader, label %block_0x13c.i, !mcsema_real_eip !15

block_0x11d.i.preheader:                          ; preds = %block_0x10c.i
  br label %block_0x11d.i

block_0xea.i:                                     ; preds = %block_0xea.i.preheader, %block_0xea.i
  %89 = phi i32 [ %100, %block_0xea.i ], [ %73, %block_0xea.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29139.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43141.i18, %block_0xea.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20126.i7, %block_0xea.i.preheader ]
  %90 = add i32 %89, 11
  %_new_gep_33.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29139.i, i64 -24
  %_allin_new_bt_34.i = bitcast i8* %_new_gep_33.i to i64*
  %91 = load i64, i64* %_allin_new_bt_34.i, align 8, !mcsema_real_eip !16
  %92 = sext i32 %89 to i64, !mcsema_real_eip !17
  %93 = shl nsw i64 %92, 2
  %94 = add i64 %93, %91, !mcsema_real_eip !18
  %95 = inttoptr i64 %94 to i32*
  store i32 %90, i32* %95, align 4, !mcsema_real_eip !18
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37140.i17 = load i8*, i8** %66, align 8
  %_new_gep_38.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37140.i17, i64 -36
  %96 = bitcast i8* %_new_gep_38.i to i32*
  %97 = load i32, i32* %96, align 4, !mcsema_real_eip !19
  %98 = add i32 %97, 1
  store i32 %98, i32* %96, align 4, !mcsema_real_eip !20
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43141.i18 = load i8*, i8** %66, align 8
  %_new_gep_44.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43141.i18, i64 -36
  %99 = bitcast i8* %_new_gep_44.i to i32*
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !11
  %101 = add i32 %100, -10
  %102 = icmp slt i32 %101, 0
  %103 = sub i32 9, %100
  %104 = and i32 %103, %100
  %105 = icmp slt i32 %104, 0
  %tmp211.i = xor i1 %102, %105
  br i1 %tmp211.i, label %block_0xea.i, label %block_0x10c.i.loopexit, !mcsema_real_eip !12

block_0x13c.loopexit.i:                           ; preds = %block_0x11d.i
  %106 = trunc i32 %132 to i8, !mcsema_real_eip !14
  %107 = tail call i8 @llvm.ctpop.i8(i8 %106)
  br label %block_0x13c.i

block_0x13c.i:                                    ; preds = %block_0x13c.loopexit.i, %block_0x10c.i
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_46129.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26128.i8, %block_0x10c.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94138.i16, %block_0x13c.loopexit.i ]
  %OF_val.0.i = phi i1 [ %88, %block_0x10c.i ], [ %136, %block_0x13c.loopexit.i ]
  %SF_val.0.i = phi i1 [ %86, %block_0x10c.i ], [ %134, %block_0x13c.loopexit.i ]
  %CF_val.0.in.i = phi i32 [ %81, %block_0x10c.i ], [ %131, %block_0x13c.loopexit.i ]
  %AF_val.0.in.in.i = phi i32 [ %83, %block_0x10c.i ], [ %133, %block_0x13c.loopexit.i ]
  %PF_val.0.in.in.i = phi i8 [ %85, %block_0x10c.i ], [ %107, %block_0x13c.loopexit.i ]
  %ZF_val.0.in.i = phi i32 [ %82, %block_0x10c.i ], [ %132, %block_0x13c.loopexit.i ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %AF_val.0.in.i = and i32 %AF_val.0.in.in.i, 16
  %ZF_val.0.i = icmp eq i32 %ZF_val.0.in.i, 0
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %AF_val.0.i = icmp ne i32 %AF_val.0.in.i, 0
  %CF_val.0.i = icmp ult i32 %CF_val.0.in.i, 10
  %_new_gep_47.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_46129.i, i64 -24
  %_allin_new_bt_48.i = bitcast i8* %_new_gep_47.i to i64*
  %108 = load i64, i64* %_allin_new_bt_48.i, align 8, !mcsema_real_eip !21
  %_new_gep_49.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_46129.i, i64 -32
  %_allin_new_bt_50.i = bitcast i8* %_new_gep_49.i to i64*
  %109 = load i64, i64* %_allin_new_bt_50.i, align 8, !mcsema_real_eip !22
  %110 = bitcast i64* %_RSP_ptr_.sroa.0.i to i32**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_51113114130.i9 = load i32*, i32** %110, align 8
  store i32 10, i32* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_51113114130.i9, align 4, !mcsema_real_eip !23
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_53131.i10 = load i8*, i8** %62, align 8
  %_new_gep_54.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_53131.i10, i64 8
  %_allin_new_bt_55.i = bitcast i8* %_new_gep_54.i to i64*
  store i64 %108, i64* %_allin_new_bt_55.i, align 8, !mcsema_real_eip !24
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_56132.i11 = load i8*, i8** %62, align 8
  %_new_gep_57.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_56132.i11, i64 16
  %111 = bitcast i8* %_new_gep_57.i to i32*
  store i32 10, i32* %111, align 4, !mcsema_real_eip !25
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_59133.i12 = load i8*, i8** %62, align 8
  %_new_gep_60.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_59133.i12, i64 24
  %_allin_new_bt_61.i = bitcast i8* %_new_gep_60.i to i64*
  store i64 %109, i64* %_allin_new_bt_61.i, align 8, !mcsema_real_eip !26
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_62134.i13 = load i8*, i8** %66, align 8
  %_new_gep_63.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_62134.i13, i64 -44
  %112 = bitcast i8* %_new_gep_63.i to i32*
  store i32 10, i32* %112, align 4, !mcsema_real_eip !27
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_65135.i14 = load i8*, i8** %62, align 8
  %_new_gep_66.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_65135.i14, i64 -8
  %_allin_new_bt_67.i = bitcast i8* %_new_gep_66.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_67.i, align 8, !mcsema_real_eip !28
  %113 = ptrtoint i8* %_new_gep_66.i to i64
  store volatile i64 %113, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 10, i64* %RAX.i, align 8, !mcsema_real_eip !28
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !28
  %114 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %114, align 8
  %115 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %115, align 8
  store volatile i64 %113, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_70116.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_70116.i, i64* %RBP.i, align 8
  %116 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %116, align 8
  store i64 %108, i64* %R10.i, align 8, !mcsema_real_eip !28
  store i64 %109, i64* %R11.i, align 8, !mcsema_real_eip !28
  %117 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %117, align 8
  %118 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %118, align 8
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !28
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !28
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !28
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !28
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !28
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !28
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !28
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !28
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !28
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !28
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !28
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !28
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !28
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !28
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !28
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !28
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !28
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !28
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !28
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !28
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !28
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !28
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !28
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !28
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !28
  %119 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %61, <2 x i64>* %119, align 1
  call void @llvm.trap()
  unreachable

block_0x11d.i:                                    ; preds = %block_0x11d.i.preheader, %block_0x11d.i
  %120 = phi i32 [ %131, %block_0x11d.i ], [ %81, %block_0x11d.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_80136.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94138.i16, %block_0x11d.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26128.i8, %block_0x11d.i.preheader ]
  %121 = add i32 %120, 1
  %_new_gep_84.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_80136.i, i64 -32
  %_allin_new_bt_85.i = bitcast i8* %_new_gep_84.i to i64*
  %122 = load i64, i64* %_allin_new_bt_85.i, align 8, !mcsema_real_eip !29
  %123 = sext i32 %120 to i64, !mcsema_real_eip !30
  %124 = shl nsw i64 %123, 2
  %125 = add i64 %124, %122, !mcsema_real_eip !31
  %126 = inttoptr i64 %125 to i32*
  store i32 %121, i32* %126, align 4, !mcsema_real_eip !31
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_88137.i15 = load i8*, i8** %66, align 8
  %_new_gep_89.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_88137.i15, i64 -40
  %127 = bitcast i8* %_new_gep_89.i to i32*
  %128 = load i32, i32* %127, align 4, !mcsema_real_eip !32
  %129 = add i32 %128, 1
  store i32 %129, i32* %127, align 4, !mcsema_real_eip !33
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94138.i16 = load i8*, i8** %66, align 8
  %_new_gep_95.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94138.i16, i64 -40
  %130 = bitcast i8* %_new_gep_95.i to i32*
  %131 = load i32, i32* %130, align 4, !mcsema_real_eip !14
  %132 = add i32 %131, -10
  %133 = xor i32 %132, %131, !mcsema_real_eip !14
  %134 = icmp slt i32 %132, 0
  %135 = and i32 %133, %131, !mcsema_real_eip !14
  %136 = icmp slt i32 %135, 0
  %tmp215.i = xor i1 %134, %136
  br i1 %tmp215.i, label %block_0x11d.i, label %block_0x13c.loopexit.i, !mcsema_real_eip !15
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
!2 = !{i64 160, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 175, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!4 = !{i64 182, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!5 = !{i64 185, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!6 = !{i64 192, [9 x i8] c"\09callq\090\00"}
!7 = !{i64 204, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!8 = !{i64 208, [9 x i8] c"\09callq\090\00"}
!9 = !{i64 213, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!10 = !{i64 217, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!11 = !{i64 224, [21 x i8] c"\09cmpl\09$10, -36(%rbp)\00"}
!12 = !{i64 228, [8 x i8] c"\09jge\0934\00"}
!13 = !{i64 268, [20 x i8] c"\09movl\09$0, -40(%rbp)\00"}
!14 = !{i64 275, [21 x i8] c"\09cmpl\09$10, -40(%rbp)\00"}
!15 = !{i64 279, [8 x i8] c"\09jge\0931\00"}
!16 = !{i64 243, [22 x i8] c"\09movq\09-24(%rbp), %rcx\00"}
!17 = !{i64 247, [24 x i8] c"\09movslq\09-36(%rbp), %rdx\00"}
!18 = !{i64 251, [26 x i8] c"\09movl\09%eax, (%rcx,%rdx,4)\00"}
!19 = !{i64 254, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!20 = !{i64 260, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!21 = !{i64 353, [22 x i8] c"\09movq\09-24(%rbp), %r10\00"}
!22 = !{i64 357, [22 x i8] c"\09movq\09-32(%rbp), %r11\00"}
!23 = !{i64 361, [18 x i8] c"\09movl\09$10, (%rsp)\00"}
!24 = !{i64 368, [20 x i8] c"\09movq\09%r10, 8(%rsp)\00"}
!25 = !{i64 373, [20 x i8] c"\09movl\09$10, 16(%rsp)\00"}
!26 = !{i64 381, [21 x i8] c"\09movq\09%r11, 24(%rsp)\00"}
!27 = !{i64 386, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!28 = !{i64 389, [12 x i8] c"\09callq\09-394\00"}
!29 = !{i64 291, [22 x i8] c"\09movq\09-32(%rbp), %rcx\00"}
!30 = !{i64 295, [24 x i8] c"\09movslq\09-40(%rbp), %rdx\00"}
!31 = !{i64 299, [26 x i8] c"\09movl\09%eax, (%rcx,%rdx,4)\00"}
!32 = !{i64 302, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!33 = !{i64 308, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
