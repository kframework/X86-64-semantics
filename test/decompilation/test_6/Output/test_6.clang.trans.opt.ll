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
  %_local_stack_start_ptr_112.i = alloca [96 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_112.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 96, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_112.i, i64 0, i64 96
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
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %44 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %61 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %62 = load <2 x i64>, <2 x i64>* %61, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_113.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %63 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_121.i1 = load i8*, i8** %63, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_121.i1, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_113.i, i64* %_allin_new_bt_.i, align 8
  %64 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_121.i1, i64 -88
  %65 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %65, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_11.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_121.i1, i64 -12
  %66 = bitcast i8* %_new_gep_11.i to i32*
  store i32 0, i32* %66, align 4, !mcsema_real_eip !3
  %67 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13122.i2 = load i8*, i8** %67, align 8
  %_new_gep_14.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13122.i2, i64 -8
  %68 = trunc i64 %5 to i32, !mcsema_real_eip !4
  %69 = bitcast i8* %_new_gep_14.i to i32*
  store i32 %68, i32* %69, align 4, !mcsema_real_eip !4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16123.i3 = load i8*, i8** %67, align 8
  %_new_gep_17.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16123.i3, i64 -16
  %_allin_new_bt_18.i = bitcast i8* %_new_gep_17.i to i64*
  store i64 %4, i64* %_allin_new_bt_18.i, align 8, !mcsema_real_eip !5
  %70 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !6
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19124.i4 = load i8*, i8** %67, align 8
  %_new_gep_20.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19124.i4, i64 -24
  %_allin_new_bt_21.i = bitcast i8* %_new_gep_20.i to i64*
  store i64 %70, i64* %_allin_new_bt_21.i, align 8, !mcsema_real_eip !7
  %71 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22125.i5 = load i8*, i8** %67, align 8
  %_new_gep_23.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22125.i5, i64 -32
  %_allin_new_bt_24.i = bitcast i8* %_new_gep_23.i to i64*
  store i64 %71, i64* %_allin_new_bt_24.i, align 8, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25126.i6 = load i8*, i8** %67, align 8
  %_new_gep_26.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25126.i6, i64 -36
  %72 = bitcast i8* %_new_gep_26.i to i32*
  store i32 0, i32* %72, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127150.i7 = load i8*, i8** %67, align 8
  %_new_gep_29151.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127150.i7, i64 -36
  %73 = bitcast i8* %_new_gep_29151.i to i32*
  %74 = load i32, i32* %73, align 4, !mcsema_real_eip !10
  %75 = add i32 %74, -10
  %76 = icmp slt i32 %75, 0
  %77 = sub i32 9, %74
  %78 = and i32 %77, %74
  %79 = icmp slt i32 %78, 0
  %tmp152.i = xor i1 %76, %79
  br i1 %tmp152.i, label %block_0xf3.i.preheader, label %block_0x11b.i, !mcsema_real_eip !11

block_0xf3.i.preheader:                           ; preds = %driverBlockRaw
  br label %block_0xf3.i

block_0xf3.i:                                     ; preds = %block_0xf3.i.preheader, %block_0xf3.i
  %80 = phi i32 [ %91, %block_0xf3.i ], [ %74, %block_0xf3.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127153.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127.i18, %block_0xf3.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127150.i7, %block_0xf3.i.preheader ]
  %81 = add i32 %80, 11
  %82 = sext i32 %80 to i64, !mcsema_real_eip !12
  %_new_gep_38.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127153.i, i64 -24
  %_allin_new_bt_39.i = bitcast i8* %_new_gep_38.i to i64*
  %83 = load i64, i64* %_allin_new_bt_39.i, align 8, !mcsema_real_eip !13
  %84 = shl nsw i64 %82, 2
  %85 = add i64 %83, %84, !mcsema_real_eip !14
  %86 = inttoptr i64 %85 to i32*
  store i32 %81, i32* %86, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_40136.i17 = load i8*, i8** %67, align 8
  %_new_gep_41.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_40136.i17, i64 -36
  %87 = bitcast i8* %_new_gep_41.i to i32*
  %88 = load i32, i32* %87, align 4, !mcsema_real_eip !15
  %89 = add i32 %88, 1
  store i32 %89, i32* %87, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127.i18 = load i8*, i8** %67, align 8
  %_new_gep_29.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127.i18, i64 -36
  %90 = bitcast i8* %_new_gep_29.i to i32*
  %91 = load i32, i32* %90, align 4, !mcsema_real_eip !10
  %92 = add i32 %91, -10
  %93 = icmp slt i32 %92, 0
  %94 = sub i32 9, %91
  %95 = and i32 %94, %91
  %96 = icmp slt i32 %95, 0
  %tmp.i = xor i1 %93, %96
  br i1 %tmp.i, label %block_0xf3.i, label %block_0x11b.i.loopexit, !mcsema_real_eip !11

block_0x11b.i.loopexit:                           ; preds = %block_0xf3.i
  br label %block_0x11b.i

block_0x11b.i:                                    ; preds = %block_0x11b.i.loopexit, %driverBlockRaw
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127.lcssa.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127150.i7, %driverBlockRaw ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127.i18, %block_0x11b.i.loopexit ]
  %_new_gep_46.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127.lcssa.i, i64 -40
  %97 = bitcast i8* %_new_gep_46.i to i32*
  store i32 0, i32* %97, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128141.i8 = load i8*, i8** %67, align 8
  %_new_gep_49142.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128141.i8, i64 -40
  %98 = bitcast i8* %_new_gep_49142.i to i32*
  %99 = load i32, i32* %98, align 4, !mcsema_real_eip !16
  %100 = add i32 %99, -10
  %101 = xor i32 %100, %99, !mcsema_real_eip !16
  %102 = icmp slt i32 %100, 0
  %103 = and i32 %101, %99, !mcsema_real_eip !16
  %104 = icmp slt i32 %103, 0
  %tmp213143.i = xor i1 %102, %104
  br i1 %tmp213143.i, label %block_0x12f.i.preheader, label %block_0x152.i, !mcsema_real_eip !17

block_0x12f.i.preheader:                          ; preds = %block_0x11b.i
  br label %block_0x12f.i

block_0x12f.i:                                    ; preds = %block_0x12f.i.preheader, %block_0x12f.i
  %105 = phi i32 [ %116, %block_0x12f.i ], [ %99, %block_0x12f.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128144.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128.i16, %block_0x12f.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128141.i8, %block_0x12f.i.preheader ]
  %106 = add i32 %105, 1
  %107 = sext i32 %105 to i64, !mcsema_real_eip !18
  %_new_gep_58.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128144.i, i64 -32
  %_allin_new_bt_59.i = bitcast i8* %_new_gep_58.i to i64*
  %108 = load i64, i64* %_allin_new_bt_59.i, align 8, !mcsema_real_eip !19
  %109 = shl nsw i64 %107, 2
  %110 = add i64 %108, %109, !mcsema_real_eip !20
  %111 = inttoptr i64 %110 to i32*
  store i32 %106, i32* %111, align 4, !mcsema_real_eip !20
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_60135.i15 = load i8*, i8** %67, align 8
  %_new_gep_61.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_60135.i15, i64 -40
  %112 = bitcast i8* %_new_gep_61.i to i32*
  %113 = load i32, i32* %112, align 4, !mcsema_real_eip !21
  %114 = add i32 %113, 1
  store i32 %114, i32* %112, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128.i16 = load i8*, i8** %67, align 8
  %_new_gep_49.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128.i16, i64 -40
  %115 = bitcast i8* %_new_gep_49.i to i32*
  %116 = load i32, i32* %115, align 4, !mcsema_real_eip !16
  %117 = add i32 %116, -10
  %118 = xor i32 %117, %116, !mcsema_real_eip !16
  %119 = icmp slt i32 %117, 0
  %120 = and i32 %118, %116, !mcsema_real_eip !16
  %121 = icmp slt i32 %120, 0
  %tmp213.i = xor i1 %119, %121
  br i1 %tmp213.i, label %block_0x12f.i, label %block_0x152.i.loopexit, !mcsema_real_eip !17

block_0x152.i.loopexit:                           ; preds = %block_0x12f.i
  br label %block_0x152.i

block_0x152.i:                                    ; preds = %block_0x152.i.loopexit, %block_0x11b.i
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128.lcssa.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128141.i8, %block_0x11b.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128.i16, %block_0x152.i.loopexit ]
  %.lcssa140.i = phi i32 [ %99, %block_0x11b.i ], [ %116, %block_0x152.i.loopexit ]
  %.lcssa139.i = phi i32 [ %100, %block_0x11b.i ], [ %117, %block_0x152.i.loopexit ]
  %.lcssa138.i = phi i32 [ %101, %block_0x11b.i ], [ %118, %block_0x152.i.loopexit ]
  %.lcssa137.i = phi i1 [ %102, %block_0x11b.i ], [ %119, %block_0x152.i.loopexit ]
  %.lcssa.i = phi i1 [ %104, %block_0x11b.i ], [ %121, %block_0x152.i.loopexit ]
  %122 = icmp ult i32 %.lcssa140.i, 10, !mcsema_real_eip !16
  %123 = icmp eq i32 %.lcssa139.i, 0, !mcsema_real_eip !16
  %124 = trunc i32 %.lcssa139.i to i8, !mcsema_real_eip !16
  %125 = tail call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !16
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  %128 = and i32 %.lcssa138.i, 16, !mcsema_real_eip !16
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !16
  %_new_gep_67.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128.lcssa.i, i64 -24
  %_allin_new_bt_68.i = bitcast i8* %_new_gep_67.i to i64*
  %130 = load i64, i64* %_allin_new_bt_68.i, align 8, !mcsema_real_eip !22
  %_new_gep_69.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48128.lcssa.i, i64 -32
  %_allin_new_bt_70.i = bitcast i8* %_new_gep_69.i to i64*
  %131 = load i64, i64* %_allin_new_bt_70.i, align 8, !mcsema_real_eip !23
  %132 = bitcast i64* %_RSP_ptr_.sroa.0.i to i32**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_71114115129.i9 = load i32*, i32** %132, align 8
  store i32 10, i32* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_71114115129.i9, align 4, !mcsema_real_eip !24
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_73130.i10 = load i8*, i8** %63, align 8
  %_new_gep_74.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_73130.i10, i64 8
  %_allin_new_bt_75.i = bitcast i8* %_new_gep_74.i to i64*
  store i64 %130, i64* %_allin_new_bt_75.i, align 8, !mcsema_real_eip !25
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_76131.i11 = load i8*, i8** %63, align 8
  %_new_gep_77.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_76131.i11, i64 16
  %133 = bitcast i8* %_new_gep_77.i to i32*
  store i32 10, i32* %133, align 4, !mcsema_real_eip !26
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_79132.i12 = load i8*, i8** %63, align 8
  %_new_gep_80.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_79132.i12, i64 24
  %_allin_new_bt_81.i = bitcast i8* %_new_gep_80.i to i64*
  store i64 %131, i64* %_allin_new_bt_81.i, align 8, !mcsema_real_eip !27
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_82133.i13 = load i8*, i8** %67, align 8
  %_new_gep_83.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_82133.i13, i64 -44
  %134 = bitcast i8* %_new_gep_83.i to i32*
  store i32 10, i32* %134, align 4, !mcsema_real_eip !28
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_85134.i14 = load i8*, i8** %63, align 8
  %_new_gep_86.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_85134.i14, i64 -8
  %_allin_new_bt_87.i = bitcast i8* %_new_gep_86.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_87.i, align 8, !mcsema_real_eip !29
  %135 = ptrtoint i8* %_new_gep_86.i to i64
  store volatile i64 %135, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 10, i64* %RAX.i, align 8, !mcsema_real_eip !29
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !29
  %136 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %136, align 8
  %137 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %137, align 8
  store volatile i64 %135, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_90117.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_90117.i, i64* %RBP.i, align 8
  %138 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %138, align 8
  store i64 %130, i64* %R10.i, align 8, !mcsema_real_eip !29
  store i64 %131, i64* %R11.i, align 8, !mcsema_real_eip !29
  %139 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %139, align 8
  %140 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %140, align 8
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !29
  store i1 %122, i1* %CF.i, align 1, !mcsema_real_eip !29
  store i1 %127, i1* %PF.i, align 1, !mcsema_real_eip !29
  store i1 %129, i1* %AF.i, align 1, !mcsema_real_eip !29
  store i1 %123, i1* %ZF.i, align 1, !mcsema_real_eip !29
  store i1 %.lcssa137.i, i1* %SF.i, align 1, !mcsema_real_eip !29
  store i1 %.lcssa.i, i1* %OF.i, align 1, !mcsema_real_eip !29
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !29
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !29
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !29
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !29
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !29
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !29
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !29
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !29
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !29
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !29
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !29
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !29
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !29
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !29
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !29
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !29
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !29
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !29
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !29
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !29
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !29
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !29
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !29
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !29
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !29
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !29
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !29
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !29
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !29
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !29
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !29
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !29
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !29
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !29
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !29
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !29
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !29
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !29
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !29
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !29
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !29
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !29
  %141 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %141, align 1
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
!10 = !{i64 230}
!11 = !{i64 237}
!12 = !{i64 256}
!13 = !{i64 260}
!14 = !{i64 264}
!15 = !{i64 267}
!16 = !{i64 290}
!17 = !{i64 297}
!18 = !{i64 311}
!19 = !{i64 315}
!20 = !{i64 319}
!21 = !{i64 322}
!22 = !{i64 375}
!23 = !{i64 379}
!24 = !{i64 383}
!25 = !{i64 390}
!26 = !{i64 395}
!27 = !{i64 403}
!28 = !{i64 408}
!29 = !{i64 411}
