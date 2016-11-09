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
  %_local_stack_start_ptr_126.i = alloca [176 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_126.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 176, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_126.i, i64 0, i64 176
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
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %61 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135.i1 = load i8*, i8** %61, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135.i1, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127.i, i64* %_allin_new_bt_.i, align 8
  %62 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %62, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135.i1, i64 -16
  %_allin_new_bt_2.i = bitcast i8* %_new_gep_1.i to i64*
  store i64 %6, i64* %_allin_new_bt_2.i, align 8, !mcsema_real_eip !3
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135.i1, i64 -24
  %_allin_new_bt_4.i = bitcast i8* %_new_gep_3.i to i64*
  store i64 %3, i64* %_allin_new_bt_4.i, align 8, !mcsema_real_eip !4
  %_new_gep_5.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135.i1, i64 -168
  %63 = ptrtoint i8* %_new_gep_5.i to i64
  store volatile i64 %63, i64* %_RSP_ptr_.sroa.0.i, align 8
  %64 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14136.i2 = load i8*, i8** %64, align 8
  %_new_gep_15.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14136.i2, i64 -20
  %65 = bitcast i8* %_new_gep_15.i to i32*
  store i32 0, i32* %65, align 4, !mcsema_real_eip !5
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17137.i3 = load i8*, i8** %64, align 8
  %_new_gep_18.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17137.i3, i64 -24
  %66 = bitcast i8* %_new_gep_18.i to i32*
  store i32 1, i32* %66, align 4, !mcsema_real_eip !6
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20138.i4 = load i8*, i8** %64, align 8
  %_new_gep_21.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20138.i4, i64 -68
  %67 = bitcast i8* %_new_gep_21.i to i32*
  store i32 0, i32* %67, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139169.i5 = load i8*, i8** %64, align 8
  %_new_gep_24170.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139169.i5, i64 -68
  %68 = bitcast i8* %_new_gep_24170.i to i32*
  %69 = load i32, i32* %68, align 4, !mcsema_real_eip !7
  %70 = add i32 %69, -10
  %71 = icmp slt i32 %70, 0
  %72 = sub i32 9, %69
  %73 = and i32 %72, %69
  %74 = icmp slt i32 %73, 0
  %tmp171.i = xor i1 %71, %74
  br i1 %tmp171.i, label %block_0x190.i.preheader, label %block_0x1b0.i, !mcsema_real_eip !8

block_0x190.i.preheader:                          ; preds = %driverBlockRaw
  br label %block_0x190.i

block_0x190.i:                                    ; preds = %block_0x190.i.preheader, %block_0x190.i
  %75 = phi i32 [ %84, %block_0x190.i ], [ %69, %block_0x190.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139172.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139.i23, %block_0x190.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139169.i5, %block_0x190.i.preheader ]
  %76 = add i32 %75, 1
  %77 = sext i32 %75 to i64, !mcsema_real_eip !9
  %_new_gep_33.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139172.i, i64 -64
  %78 = shl nsw i64 %77, 2
  %_new_gep_34.i = getelementptr i8, i8* %_new_gep_33.i, i64 %78
  %79 = bitcast i8* %_new_gep_34.i to i32*
  store i32 %76, i32* %79, align 4, !mcsema_real_eip !10
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36155.i22 = load i8*, i8** %64, align 8
  %_new_gep_37.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36155.i22, i64 -68
  %80 = bitcast i8* %_new_gep_37.i to i32*
  %81 = load i32, i32* %80, align 4, !mcsema_real_eip !11
  %82 = add i32 %81, 1
  store i32 %82, i32* %80, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139.i23 = load i8*, i8** %64, align 8
  %_new_gep_24.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139.i23, i64 -68
  %83 = bitcast i8* %_new_gep_24.i to i32*
  %84 = load i32, i32* %83, align 4, !mcsema_real_eip !7
  %85 = add i32 %84, -10
  %86 = icmp slt i32 %85, 0
  %87 = sub i32 9, %84
  %88 = and i32 %87, %84
  %89 = icmp slt i32 %88, 0
  %tmp.i = xor i1 %86, %89
  br i1 %tmp.i, label %block_0x190.i, label %block_0x1b0.i.loopexit, !mcsema_real_eip !8

block_0x1b0.i.loopexit:                           ; preds = %block_0x190.i
  br label %block_0x1b0.i

block_0x1b0.i:                                    ; preds = %block_0x1b0.i.loopexit, %driverBlockRaw
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139.lcssa.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139169.i5, %driverBlockRaw ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139.i23, %block_0x1b0.i.loopexit ]
  %_new_gep_43.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139.lcssa.i, i64 -24
  %90 = ptrtoint i8* %_new_gep_43.i to i64
  %_new_gep_45.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23139.lcssa.i, i64 -80
  %_allin_new_bt_46.i = bitcast i8* %_new_gep_45.i to i64*
  store i64 %90, i64* %_allin_new_bt_46.i, align 8, !mcsema_real_eip !12
  %91 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_47140.i6 = load i8*, i8** %64, align 8
  %_new_gep_48.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_47140.i6, i64 -88
  %_allin_new_bt_49.i = bitcast i8* %_new_gep_48.i to i64*
  store i64 %91, i64* %_allin_new_bt_49.i, align 8, !mcsema_real_eip !14
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_50141.i7 = load i8*, i8** %64, align 8
  %_new_gep_51.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_50141.i7, i64 -92
  %92 = bitcast i8* %_new_gep_51.i to i32*
  store i32 0, i32* %92, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142160.i8 = load i8*, i8** %64, align 8
  %_new_gep_54161.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142160.i8, i64 -92
  %93 = bitcast i8* %_new_gep_54161.i to i32*
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !15
  %95 = add i32 %94, -10
  %96 = xor i32 %95, %94, !mcsema_real_eip !15
  %97 = icmp slt i32 %95, 0
  %98 = and i32 %96, %94, !mcsema_real_eip !15
  %99 = icmp slt i32 %98, 0
  %tmp212162.i = xor i1 %97, %99
  br i1 %tmp212162.i, label %block_0x1df.i.preheader, label %block_0x202.i, !mcsema_real_eip !16

block_0x1df.i.preheader:                          ; preds = %block_0x1b0.i
  br label %block_0x1df.i

block_0x1df.i:                                    ; preds = %block_0x1df.i.preheader, %block_0x1df.i
  %100 = phi i32 [ %111, %block_0x1df.i ], [ %94, %block_0x1df.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142163.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142.i21, %block_0x1df.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142160.i8, %block_0x1df.i.preheader ]
  %101 = add i32 %100, 1
  %102 = sext i32 %100 to i64, !mcsema_real_eip !17
  %_new_gep_63.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142163.i, i64 -88
  %_allin_new_bt_64.i = bitcast i8* %_new_gep_63.i to i64*
  %103 = load i64, i64* %_allin_new_bt_64.i, align 8, !mcsema_real_eip !18
  %104 = shl nsw i64 %102, 2
  %105 = add i64 %103, %104, !mcsema_real_eip !19
  %106 = inttoptr i64 %105 to i32*
  store i32 %101, i32* %106, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_65154.i20 = load i8*, i8** %64, align 8
  %_new_gep_66.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_65154.i20, i64 -92
  %107 = bitcast i8* %_new_gep_66.i to i32*
  %108 = load i32, i32* %107, align 4, !mcsema_real_eip !20
  %109 = add i32 %108, 1
  store i32 %109, i32* %107, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142.i21 = load i8*, i8** %64, align 8
  %_new_gep_54.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142.i21, i64 -92
  %110 = bitcast i8* %_new_gep_54.i to i32*
  %111 = load i32, i32* %110, align 4, !mcsema_real_eip !15
  %112 = add i32 %111, -10
  %113 = xor i32 %112, %111, !mcsema_real_eip !15
  %114 = icmp slt i32 %112, 0
  %115 = and i32 %113, %111, !mcsema_real_eip !15
  %116 = icmp slt i32 %115, 0
  %tmp212.i = xor i1 %114, %116
  br i1 %tmp212.i, label %block_0x1df.i, label %block_0x202.i.loopexit, !mcsema_real_eip !16

block_0x202.i.loopexit:                           ; preds = %block_0x1df.i
  br label %block_0x202.i

block_0x202.i:                                    ; preds = %block_0x202.i.loopexit, %block_0x1b0.i
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142.lcssa.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142160.i8, %block_0x1b0.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142.i21, %block_0x202.i.loopexit ]
  %.lcssa159.i = phi i32 [ %94, %block_0x1b0.i ], [ %111, %block_0x202.i.loopexit ]
  %.lcssa158.i = phi i32 [ %95, %block_0x1b0.i ], [ %112, %block_0x202.i.loopexit ]
  %.lcssa157.i = phi i32 [ %96, %block_0x1b0.i ], [ %113, %block_0x202.i.loopexit ]
  %.lcssa156.i = phi i1 [ %97, %block_0x1b0.i ], [ %114, %block_0x202.i.loopexit ]
  %.lcssa.i = phi i1 [ %99, %block_0x1b0.i ], [ %116, %block_0x202.i.loopexit ]
  %117 = icmp ult i32 %.lcssa159.i, 10, !mcsema_real_eip !15
  %118 = icmp eq i32 %.lcssa158.i, 0, !mcsema_real_eip !15
  %119 = trunc i32 %.lcssa158.i to i8, !mcsema_real_eip !15
  %120 = tail call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !15
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  %123 = and i32 %.lcssa157.i, 16, !mcsema_real_eip !15
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !15
  %_new_gep_72.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142.lcssa.i, i64 -64
  %125 = ptrtoint i8* %_new_gep_72.i to i64
  %_new_gep_74.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142.lcssa.i, i64 -24
  %126 = bitcast i8* %_new_gep_74.i to i32*
  %127 = load i32, i32* %126, align 4, !mcsema_real_eip !21
  %128 = zext i32 %127 to i64, !mcsema_real_eip !21
  %_new_gep_77.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142.lcssa.i, i64 -80
  %_allin_new_bt_78.i = bitcast i8* %_new_gep_77.i to i64*
  %129 = load i64, i64* %_allin_new_bt_78.i, align 8, !mcsema_real_eip !22
  %_new_gep_79.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142.lcssa.i, i64 -88
  %_allin_new_bt_80.i = bitcast i8* %_new_gep_79.i to i64*
  %130 = load i64, i64* %_allin_new_bt_80.i, align 8, !mcsema_real_eip !23
  %_new_gep_90.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53142.lcssa.i, i64 -104
  %_allin_new_bt_91.i = bitcast i8* %_new_gep_90.i to i64*
  store i64 %130, i64* %_allin_new_bt_91.i, align 8, !mcsema_real_eip !24
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_92143.i9 = load i8*, i8** %64, align 8
  %_new_gep_93.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_92143.i9, i64 -104
  %_allin_new_bt_94.i = bitcast i8* %_new_gep_93.i to i64*
  %131 = load i64, i64* %_allin_new_bt_94.i, align 8, !mcsema_real_eip !25
  %_new_gep_95.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_92143.i9, i64 -112
  %_allin_new_bt_96.i = bitcast i8* %_new_gep_95.i to i64*
  store i64 %125, i64* %_allin_new_bt_96.i, align 8, !mcsema_real_eip !26
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_97144.i10 = load i8*, i8** %64, align 8
  %_new_gep_98.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_97144.i10, i64 -116
  %132 = bitcast i8* %_new_gep_98.i to i32*
  store i32 %127, i32* %132, align 4, !mcsema_real_eip !27
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_100145.i11 = load i8*, i8** %64, align 8
  %_new_gep_101.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_100145.i11, i64 -128
  %_allin_new_bt_102.i = bitcast i8* %_new_gep_101.i to i64*
  store i64 %129, i64* %_allin_new_bt_102.i, align 8, !mcsema_real_eip !28
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_103146.i12 = load i8*, i8** %64, align 8
  %_new_gep_104.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_103146.i12, i64 -116
  %133 = bitcast i8* %_new_gep_104.i to i32*
  %134 = load i32, i32* %133, align 4, !mcsema_real_eip !29
  %135 = zext i32 %134 to i64, !mcsema_real_eip !29
  %136 = bitcast i64* %_RSP_ptr_.sroa.0.i to i32**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_106128129147.i13 = load i32*, i32** %136, align 8
  store i32 %134, i32* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_106128129147.i13, align 4, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_108148.i14 = load i8*, i8** %64, align 8
  %_new_gep_109.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_108148.i14, i64 -112
  %_allin_new_bt_110.i = bitcast i8* %_new_gep_109.i to i64*
  %137 = load i64, i64* %_allin_new_bt_110.i, align 8, !mcsema_real_eip !31
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_111149.i15 = load i8*, i8** %61, align 8
  %_new_gep_112.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_111149.i15, i64 8
  %_allin_new_bt_113.i = bitcast i8* %_new_gep_112.i to i64*
  store i64 %137, i64* %_allin_new_bt_113.i, align 8, !mcsema_real_eip !32
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_114150.i16 = load i8*, i8** %64, align 8
  %_new_gep_115.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_114150.i16, i64 -128
  %_allin_new_bt_116.i = bitcast i8* %_new_gep_115.i to i64*
  %138 = load i64, i64* %_allin_new_bt_116.i, align 8, !mcsema_real_eip !33
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_117151.i17 = load i8*, i8** %61, align 8
  %_new_gep_118.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_117151.i17, i64 16
  %_allin_new_bt_119.i = bitcast i8* %_new_gep_118.i to i64*
  store i64 %138, i64* %_allin_new_bt_119.i, align 8, !mcsema_real_eip !34
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120152.i18 = load i8*, i8** %61, align 8
  %_new_gep_121.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120152.i18, i64 24
  %_allin_new_bt_122.i = bitcast i8* %_new_gep_121.i to i64*
  store i64 %130, i64* %_allin_new_bt_122.i, align 8, !mcsema_real_eip !35
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_123153.i19 = load i8*, i8** %61, align 8
  %_new_gep_124.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_123153.i19, i64 -8
  %_allin_new_bt_125.i = bitcast i8* %_new_gep_124.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_125.i, align 8, !mcsema_real_eip !36
  %139 = ptrtoint i8* %_new_gep_124.i to i64
  store volatile i64 %139, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %135, i64* %RAX.i, align 8, !mcsema_real_eip !36
  store i64 %137, i64* %RBX.i, align 8, !mcsema_real_eip !36
  store i64 %131, i64* %RCX.i, align 8, !mcsema_real_eip !36
  store i64 %129, i64* %RDX.i, align 8, !mcsema_real_eip !36
  store i64 %125, i64* %RSI.i, align 8, !mcsema_real_eip !36
  store i64 %128, i64* %RDI.i, align 8, !mcsema_real_eip !36
  store volatile i64 %139, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_128131.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_128131.i, i64* %RBP.i, align 8
  %140 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %140, align 8
  store i64 %130, i64* %R10.i, align 8, !mcsema_real_eip !36
  store i64 %131, i64* %R11.i, align 8, !mcsema_real_eip !36
  %141 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %141, align 8
  store i64 %138, i64* %R14.i, align 8, !mcsema_real_eip !36
  %142 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %142, align 8
  store i1 %117, i1* %CF.i, align 1, !mcsema_real_eip !36
  store i1 %122, i1* %PF.i, align 1, !mcsema_real_eip !36
  store i1 %124, i1* %AF.i, align 1, !mcsema_real_eip !36
  store i1 %118, i1* %ZF.i, align 1, !mcsema_real_eip !36
  store i1 %.lcssa156.i, i1* %SF.i, align 1, !mcsema_real_eip !36
  store i1 %.lcssa.i, i1* %OF.i, align 1, !mcsema_real_eip !36
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !36
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !36
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !36
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !36
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !36
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !36
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !36
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !36
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !36
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !36
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !36
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !36
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !36
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !36
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !36
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !36
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !36
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !36
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !36
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !36
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !36
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !36
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !36
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !36
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !36
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !36
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !36
  store i11 %42, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !36
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !36
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !36
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !36
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !36
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !36
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !36
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !36
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !36
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !36
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !36
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !36
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !36
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !36
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !36
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !36
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !36
  %143 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %143, align 1
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
!2 = !{i64 352}
!3 = !{i64 356}
!4 = !{i64 358}
!5 = !{i64 366}
!6 = !{i64 373}
!7 = !{i64 387}
!8 = !{i64 394}
!9 = !{i64 408}
!10 = !{i64 412}
!11 = !{i64 416}
!12 = !{i64 446}
!13 = !{i64 450}
!14 = !{i64 455}
!15 = !{i64 466}
!16 = !{i64 473}
!17 = !{i64 487}
!18 = !{i64 491}
!19 = !{i64 495}
!20 = !{i64 498}
!21 = !{i64 523}
!22 = !{i64 526}
!23 = !{i64 530}
!24 = !{i64 546}
!25 = !{i64 553}
!26 = !{i64 557}
!27 = !{i64 564}
!28 = !{i64 571}
!29 = !{i64 578}
!30 = !{i64 581}
!31 = !{i64 584}
!32 = !{i64 588}
!33 = !{i64 593}
!34 = !{i64 597}
!35 = !{i64 602}
!36 = !{i64 607}
