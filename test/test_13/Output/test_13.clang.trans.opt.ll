; ModuleID = 'Output/test_13.clang.trans.opt.bc'
source_filename = "Output/test_13.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_RSP_ptr_168.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_169.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_170.i = alloca [48 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %CF_val.i = alloca i1, align 1, !mcsema_real_eip !2
  %_RSP_ptr_168.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_168.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_168.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_169.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_169.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_169.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_170.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 48, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %CF_val.i.0..sroa_cast = bitcast i1* %CF_val.i to i8*
  call void @llvm.lifetime.start(i64 1, i8* nonnull %CF_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_170.i, i64 0, i64 48
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_168.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = bitcast i64* %RBX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %5 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %6 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %7 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %8 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %10 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %12 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %14 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %16 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %17 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %18 = load i1, i1* %CF.i, align 1, !mcsema_real_eip !2
  store i1 %18, i1* %CF_val.i, align 1
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %19 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %20 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %21 = bitcast x86_fp80* %20 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %21, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %24 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %37 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %38 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %43 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %44 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %45 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %46 = bitcast i8* %45 to i64*
  %47 = load i64, i64* %46, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %48 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %49 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %50 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %51 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %67 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %68 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %69 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_171.i = load i64, i64* %_RBP_ptr_169.sroa.0.i, align 8
  %70 = bitcast i64* %_RSP_ptr_168.sroa.0.i to i8**
  %_RSP_ptr_168.sroa.0.i.0._RSP_ptr_168.sroa.0.0._RSP_ptr_168.sroa.0.0._load_rsp_ptr_178.i5 = load i8*, i8** %70, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_168.sroa.0.i.0._RSP_ptr_168.sroa.0.0._RSP_ptr_168.sroa.0.0._load_rsp_ptr_178.i5, i64 -8
  %71 = add i64 %8, -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_171.i, i64* %_allin_new_bt_.i, align 8
  %72 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %72, i64* %_RBP_ptr_169.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_168.sroa.0.i.0._RSP_ptr_168.sroa.0.0._RSP_ptr_168.sroa.0.0._load_rsp_ptr_178.i5, i64 -40
  %73 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %73, i64* %_RSP_ptr_168.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_168.sroa.0.i.0._RSP_ptr_168.sroa.0.0._RSP_ptr_168.sroa.0.0._load_rsp_ptr_178.i5, i64 -16
  %_allin_new_bt_4.i = bitcast i8* %_new_gep_3.i to i64*
  store i64 %7, i64* %_allin_new_bt_4.i, align 8, !mcsema_real_eip !3
  %74 = bitcast i64* %_RBP_ptr_169.sroa.0.i to i8**
  %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_5179.i6 = load i8*, i8** %74, align 8
  %_new_gep_6.i = getelementptr i8, i8* %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_5179.i6, i64 -12
  %75 = trunc i64 %6 to i32, !mcsema_real_eip !4
  %76 = bitcast i8* %_new_gep_6.i to i32*
  store i32 %75, i32* %76, align 4, !mcsema_real_eip !4
  %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_8180.i7 = load i8*, i8** %74, align 8
  %_new_gep_9.i = getelementptr i8, i8* %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_8180.i7, i64 -16
  %77 = bitcast i8* %_new_gep_9.i to i32*
  store i32 0, i32* %77, align 4, !mcsema_real_eip !5
  %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_11181.i8 = load i8*, i8** %74, align 8
  %_new_gep_12.i = getelementptr i8, i8* %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_11181.i8, i64 -12
  %78 = bitcast i8* %_new_gep_12.i to i32*
  %79 = load i32, i32* %78, align 4, !mcsema_real_eip !6
  %80 = sext i32 %79 to i64, !mcsema_real_eip !6
  %81 = shl nsw i64 %80, 3, !mcsema_real_eip !7
  %82 = tail call x86_64_sysvcc i64 @malloc(i64 %81), !mcsema_real_eip !8
  %_new_gep_15.i = getelementptr i8, i8* %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_11181.i8, i64 -24
  %_allin_new_bt_16.i = bitcast i8* %_new_gep_15.i to i64*
  store i64 %82, i64* %_allin_new_bt_16.i, align 8, !mcsema_real_eip !9
  %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_17183.i9 = load i8*, i8** %74, align 8
  %_new_gep_18.i = getelementptr i8, i8* %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_17183.i9, i64 -16
  %83 = bitcast i8* %_new_gep_18.i to i32*
  %84 = load i32, i32* %83, align 4, !mcsema_real_eip !10
  %_new_gep_21.i = getelementptr i8, i8* %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_17183.i9, i64 -12
  %85 = bitcast i8* %_new_gep_21.i to i32*
  %86 = load i32, i32* %85, align 4, !mcsema_real_eip !11
  %87 = sub i32 %84, %86, !mcsema_real_eip !11
  %88 = xor i32 %87, %84, !mcsema_real_eip !11
  %89 = icmp slt i32 %87, 0
  %90 = icmp ult i32 %84, %86, !mcsema_real_eip !11
  store i1 %90, i1* %CF_val.i, align 1
  %91 = xor i32 %86, %84, !mcsema_real_eip !11
  %92 = and i32 %88, %91, !mcsema_real_eip !11
  %93 = icmp slt i32 %92, 0
  %tmp.i = xor i1 %89, %93
  br i1 %tmp.i, label %block_0x33.i, label %sub_0.exit, !mcsema_real_eip !12

block_0x33.i:                                     ; preds = %driverBlockRaw
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %94 = icmp eq i32 %84, %86
  %95 = trunc i32 %87 to i8, !mcsema_real_eip !11
  %96 = tail call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !11
  %97 = xor i32 %88, %86, !mcsema_real_eip !11
  %PF_val.0.in.i = and i8 %96, 1
  %AF_val.0.in.i = and i32 %97, 16
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %AF_val.0.i = icmp ne i32 %AF_val.0.in.i, 0
  %_new_gep_36.i = getelementptr i8, i8* %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_17183.i9, i64 -8
  %_allin_new_bt_37.i = bitcast i8* %_new_gep_36.i to i64*
  %98 = load i64, i64* %_allin_new_bt_37.i, align 8, !mcsema_real_eip !13
  %99 = sext i32 %84 to i64, !mcsema_real_eip !14
  %100 = shl nsw i64 %99, 3
  %101 = add i64 %98, %100, !mcsema_real_eip !15
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !15
  %103 = load i64, i64* %102, align 8, !mcsema_real_eip !15
  %_new_gep_41.i = getelementptr i8, i8* %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_17183.i9, i64 -32
  %_allin_new_bt_42.i = bitcast i8* %_new_gep_41.i to i64*
  store i64 %103, i64* %_allin_new_bt_42.i, align 8, !mcsema_real_eip !16
  %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_43187.i11 = load i8*, i8** %74, align 8
  %_new_gep_44.i = getelementptr i8, i8* %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_43187.i11, i64 -32
  %_allin_new_bt_45.i = bitcast i8* %_new_gep_44.i to i64*
  %104 = load i64, i64* %_allin_new_bt_45.i, align 8, !mcsema_real_eip !17
  %_RSP_ptr_168.sroa.0.i.0._RSP_ptr_168.sroa.0.0._RSP_ptr_168.sroa.0.0._load_rsp_ptr_46188.i12 = load i8*, i8** %70, align 8
  %_new_gep_47.i = getelementptr i8, i8* %_RSP_ptr_168.sroa.0.i.0._RSP_ptr_168.sroa.0.0._RSP_ptr_168.sroa.0.0._load_rsp_ptr_46188.i12, i64 -8
  %_allin_new_bt_48.i = bitcast i8* %_new_gep_47.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_48.i, align 8, !mcsema_real_eip !18
  %105 = ptrtoint i8* %_new_gep_47.i to i64
  store volatile i64 %105, i64* %_RSP_ptr_168.sroa.0.i, align 8
  store i64 %103, i64* %RAX.i, align 8, !mcsema_real_eip !18
  %106 = extractelement <2 x i64> %4, i32 0
  store i64 %106, i64* %RBX.i, align 8, !mcsema_real_eip !18
  store i64 %99, i64* %RCX.i, align 8, !mcsema_real_eip !18
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !18
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !18
  store i64 %104, i64* %RDI.i, align 8, !mcsema_real_eip !18
  store volatile i64 %105, i64* %RSP.i, align 8
  %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_51175.i = load i64, i64* %_RBP_ptr_169.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_51175.i, i64* %RBP.i, align 8
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !18
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !18
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !18
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !18
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !18
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !18
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !18
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !18
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !18
  store i1 %90, i1* %CF.i, align 1, !mcsema_real_eip !18
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !18
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !18
  store i1 %94, i1* %ZF.i, align 1, !mcsema_real_eip !18
  store i1 %89, i1* %SF.i, align 1, !mcsema_real_eip !18
  store i1 %93, i1* %OF.i, align 1, !mcsema_real_eip !18
  store i1 %19, i1* %DF.i, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  store i1 %22, i1* %FPU_B.i, align 1, !mcsema_real_eip !18
  store i1 %23, i1* %FPU_C3.i, align 1, !mcsema_real_eip !18
  store i3 %24, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !18
  store i1 %25, i1* %FPU_C2.i, align 1, !mcsema_real_eip !18
  store i1 %26, i1* %FPU_C1.i, align 1, !mcsema_real_eip !18
  store i1 %27, i1* %FPU_C0.i, align 1, !mcsema_real_eip !18
  store i1 %28, i1* %FPU_ES.i, align 1, !mcsema_real_eip !18
  store i1 %29, i1* %FPU_SF.i, align 1, !mcsema_real_eip !18
  store i1 %30, i1* %FPU_PE.i, align 1, !mcsema_real_eip !18
  store i1 %31, i1* %FPU_UE.i, align 1, !mcsema_real_eip !18
  store i1 %32, i1* %FPU_OE.i, align 1, !mcsema_real_eip !18
  store i1 %33, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !18
  store i1 %34, i1* %FPU_DE.i, align 1, !mcsema_real_eip !18
  store i1 %35, i1* %FPU_IE.i, align 1, !mcsema_real_eip !18
  store i1 %36, i1* %FPU_X.i, align 1, !mcsema_real_eip !18
  store i2 %37, i2* %FPU_RC.i, align 1, !mcsema_real_eip !18
  store i2 %38, i2* %FPU_PC.i, align 1, !mcsema_real_eip !18
  store i1 %39, i1* %FPU_PM.i, align 1, !mcsema_real_eip !18
  store i1 %40, i1* %FPU_UM.i, align 1, !mcsema_real_eip !18
  store i1 %41, i1* %FPU_OM.i, align 1, !mcsema_real_eip !18
  store i1 %42, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !18
  store i1 %43, i1* %FPU_DM.i, align 1, !mcsema_real_eip !18
  store i1 %44, i1* %FPU_IM.i, align 1, !mcsema_real_eip !18
  store i64 %47, i64* %46, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %49, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !18
  store i16 %50, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %51, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !18
  store i128 %52, i128* %XMM0.i, align 1, !mcsema_real_eip !18
  store i128 %53, i128* %XMM1.i, align 1, !mcsema_real_eip !18
  store i128 %54, i128* %XMM2.i, align 1, !mcsema_real_eip !18
  store i128 %55, i128* %XMM3.i, align 1, !mcsema_real_eip !18
  store i128 %56, i128* %XMM4.i, align 1, !mcsema_real_eip !18
  store i128 %57, i128* %XMM5.i, align 1, !mcsema_real_eip !18
  store i128 %58, i128* %XMM6.i, align 1, !mcsema_real_eip !18
  store i128 %59, i128* %XMM7.i, align 1, !mcsema_real_eip !18
  store i128 %60, i128* %XMM8.i, align 1, !mcsema_real_eip !18
  store i128 %61, i128* %XMM9.i, align 1, !mcsema_real_eip !18
  store i128 %62, i128* %XMM10.i, align 1, !mcsema_real_eip !18
  store i128 %63, i128* %XMM11.i, align 1, !mcsema_real_eip !18
  store i128 %64, i128* %XMM12.i, align 1, !mcsema_real_eip !18
  store i128 %65, i128* %XMM13.i, align 1, !mcsema_real_eip !18
  store i128 %66, i128* %XMM14.i, align 1, !mcsema_real_eip !18
  store i128 %67, i128* %XMM15.i, align 1, !mcsema_real_eip !18
  store i64 %68, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !18
  store i64 %69, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !18
  call void @llvm.trap()
  unreachable

sub_0.exit:                                       ; preds = %driverBlockRaw
  %107 = add i64 %8, -40
  %_new_gep_24.i = getelementptr i8, i8* %_RBP_ptr_169.sroa.0.i.0._RBP_ptr_169.sroa.0.0._RBP_ptr_169.sroa.0.0._load_rbp_ptr_17183.i9, i64 -24
  %_allin_new_bt_25.i = bitcast i8* %_new_gep_24.i to i64*
  %108 = load i64, i64* %_allin_new_bt_25.i, align 8, !mcsema_real_eip !19
  %109 = add i64 %108, 1, !mcsema_real_eip !20
  %110 = inttoptr i64 %109 to i8*
  store i8 2, i8* %110, align 1, !mcsema_real_eip !20
  %_RSP_ptr_168.sroa.0.i.0._RSP_ptr_168.sroa.0.0._RSP_ptr_168.sroa.0.0._load_rsp_ptr_26185.i10 = load i8*, i8** %70, align 8
  %_new_gep_27.i = getelementptr i8, i8* %_RSP_ptr_168.sroa.0.i.0._RSP_ptr_168.sroa.0.0._RSP_ptr_168.sroa.0.0._load_rsp_ptr_26185.i10, i64 32
  %111 = xor i64 %71, %107, !mcsema_real_eip !21
  %112 = and i64 %111, 16, !mcsema_real_eip !21
  %113 = icmp ne i64 %112, 0, !mcsema_real_eip !21
  %114 = icmp slt i64 %71, 0
  %115 = icmp eq i64 %71, 0, !mcsema_real_eip !21
  %116 = add i64 %8, 9223372036854775768
  %117 = and i64 %111, %116, !mcsema_real_eip !21
  %118 = icmp slt i64 %117, 0
  %119 = trunc i64 %71 to i8, !mcsema_real_eip !21
  %120 = tail call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !21
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  %123 = ptrtoint i8* %_new_gep_27.i to i64
  %124 = and i64 %123, 1
  %_new_ptr2int_28.i = icmp ne i64 %124, 0
  store volatile i1 %_new_ptr2int_28.i, i1* %CF_val.i, align 1
  store volatile i64 %123, i64* %_RSP_ptr_168.sroa.0.i, align 8
  %_allin_new_bt_29.i = bitcast i8* %_new_gep_27.i to i64*
  %125 = load i64, i64* %_allin_new_bt_29.i, align 8
  store volatile i64 %125, i64* %_RBP_ptr_169.sroa.0.i, align 8
  %_new_gep_30.i = getelementptr i8, i8* %_RSP_ptr_168.sroa.0.i.0._RSP_ptr_168.sroa.0.0._RSP_ptr_168.sroa.0.0._load_rsp_ptr_26185.i10, i64 48
  %126 = ptrtoint i8* %_new_gep_30.i to i64
  store volatile i64 %126, i64* %_RSP_ptr_168.sroa.0.i, align 8
  store i64 %108, i64* %RAX.i, align 8, !mcsema_real_eip !22
  %127 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %127, align 8
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !22
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !22
  store i64 %81, i64* %RDI.i, align 8, !mcsema_real_eip !22
  store volatile i64 %126, i64* %RSP.i, align 8
  store volatile i64 %125, i64* %RBP.i, align 8
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !22
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !22
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !22
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !22
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !22
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !22
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !22
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !22
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !22
  store i1 %_new_ptr2int_28.i, i1* %CF.i, align 1, !mcsema_real_eip !22
  store i1 %122, i1* %PF.i, align 1, !mcsema_real_eip !22
  store i1 %113, i1* %AF.i, align 1, !mcsema_real_eip !22
  store i1 %115, i1* %ZF.i, align 1, !mcsema_real_eip !22
  store i1 %114, i1* %SF.i, align 1, !mcsema_real_eip !22
  store i1 %118, i1* %OF.i, align 1, !mcsema_real_eip !22
  store i1 %19, i1* %DF.i, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !22
  store i1 %22, i1* %FPU_B.i, align 1, !mcsema_real_eip !22
  store i1 %23, i1* %FPU_C3.i, align 1, !mcsema_real_eip !22
  store i3 %24, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !22
  store i1 %25, i1* %FPU_C2.i, align 1, !mcsema_real_eip !22
  store i1 %26, i1* %FPU_C1.i, align 1, !mcsema_real_eip !22
  store i1 %27, i1* %FPU_C0.i, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_ES.i, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_SF.i, align 1, !mcsema_real_eip !22
  store i1 %30, i1* %FPU_PE.i, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_UE.i, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_OE.i, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_DE.i, align 1, !mcsema_real_eip !22
  store i1 %35, i1* %FPU_IE.i, align 1, !mcsema_real_eip !22
  store i1 %36, i1* %FPU_X.i, align 1, !mcsema_real_eip !22
  store i2 %37, i2* %FPU_RC.i, align 1, !mcsema_real_eip !22
  store i2 %38, i2* %FPU_PC.i, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_PM.i, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_UM.i, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_OM.i, align 1, !mcsema_real_eip !22
  store i1 %42, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !22
  store i1 %43, i1* %FPU_DM.i, align 1, !mcsema_real_eip !22
  store i1 %44, i1* %FPU_IM.i, align 1, !mcsema_real_eip !22
  store i64 %47, i64* %46, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !22
  store i64 %49, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !22
  store i16 %50, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !22
  store i64 %51, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !22
  store i128 %52, i128* %XMM0.i, align 1, !mcsema_real_eip !22
  store i128 %53, i128* %XMM1.i, align 1, !mcsema_real_eip !22
  store i128 %54, i128* %XMM2.i, align 1, !mcsema_real_eip !22
  store i128 %55, i128* %XMM3.i, align 1, !mcsema_real_eip !22
  store i128 %56, i128* %XMM4.i, align 1, !mcsema_real_eip !22
  store i128 %57, i128* %XMM5.i, align 1, !mcsema_real_eip !22
  store i128 %58, i128* %XMM6.i, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM7.i, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM8.i, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM9.i, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM10.i, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM11.i, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM12.i, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM13.i, align 1, !mcsema_real_eip !22
  store i128 %66, i128* %XMM14.i, align 1, !mcsema_real_eip !22
  store i128 %67, i128* %XMM15.i, align 1, !mcsema_real_eip !22
  store i64 %68, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !22
  store i64 %69, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !22
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_168.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_169.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 48, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %CF_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 8, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!4 = !{i64 12, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!5 = !{i64 15, [20 x i8] c"\09movl\09$0, -16(%rbp)\00"}
!6 = !{i64 22, [24 x i8] c"\09movslq\09-12(%rbp), %rdi\00"}
!7 = !{i64 26, [15 x i8] c"\09shlq\09$3, %rdi\00"}
!8 = !{i64 30, [9 x i8] c"\09callq\090\00"}
!9 = !{i64 35, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!10 = !{i64 39, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!11 = !{i64 42, [22 x i8] c"\09cmpl\09-12(%rbp), %eax\00"}
!12 = !{i64 45, [8 x i8] c"\09jge\0966\00"}
!13 = !{i64 51, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!14 = !{i64 55, [24 x i8] c"\09movslq\09-16(%rbp), %rcx\00"}
!15 = !{i64 59, [26 x i8] c"\09movq\09(%rax,%rcx,8), %rax\00"}
!16 = !{i64 63, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!17 = !{i64 67, [22 x i8] c"\09movq\09-32(%rbp), %rdi\00"}
!18 = !{i64 71, [10 x i8] c"\09callq\0968\00"}
!19 = !{i64 117, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!20 = !{i64 121, [18 x i8] c"\09movb\09$2, 1(%rax)\00"}
!21 = !{i64 125, [16 x i8] c"\09addq\09$32, %rsp\00"}
!22 = !{i64 130, [6 x i8] c"\09retq\00"}
