; ModuleID = 'Output/test_26.clang.trans.opt.bc'
source_filename = "Output/test_26.clang.bc"
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
  %_local_stack_start_ptr_111.i = alloca [144 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RDX_val.i = alloca i64, align 8, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_111.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RDX_val.i.0..sroa_cast = bitcast i64* %RDX_val.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %RDX_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_111.i, i64 0, i64 144
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  store i64 %4, i64* %RDX_val.i, align 8
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %5 = bitcast i64* %R10.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %7 = bitcast i64* %R12.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %9 = bitcast i64* %R14.i to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %11 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %12 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %14 = bitcast x86_fp80* %13 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %14, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %17 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %30 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %31 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %38 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %41 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %42 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %43 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %44 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %45 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %62 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %63 = load <2 x i64>, <2 x i64>* %62, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_112.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %64 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120.i1 = load i8*, i8** %64, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120.i1, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_112.i, i64* %_allin_new_bt_.i, align 8
  %65 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %65, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120.i1, i64 -136
  %_trans_p2i_.i = ptrtoint i8* %_new_gep_1.i to i64
  %_trans_xor_.i = xor i64 %_trans_p2i_.i, %65
  %66 = and i64 %_trans_xor_.i, 16, !mcsema_real_eip !3
  %67 = icmp ne i64 %66, 0, !mcsema_real_eip !3
  %_trans_trunc_.i = trunc i64 %_trans_p2i_.i to i8
  %68 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_.i), !mcsema_real_eip !3
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  %_trans_icmp_eq_.i = icmp eq i8* %_new_gep_1.i, null
  %_trans_icmp_ne_.i = icmp ne i8* %_new_gep_1.i, null
  %_trans_icmp_ne_7.i = icmp ne i8* %_new_gep_.i, inttoptr (i64 128 to i8*)
  %_trans_xor_9.i = and i64 %_trans_xor_.i, %65
  %71 = icmp slt i64 %_trans_xor_9.i, 0
  store volatile i64 %_trans_p2i_.i, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_11.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120.i1, i64 -12
  %72 = bitcast i8* %_new_gep_11.i to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !4
  %73 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13122.i2 = load i8*, i8** %73, align 8
  %_new_gep_14.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13122.i2, i64 -16
  %_allin_new_bt_15.i = bitcast i8* %_new_gep_14.i to i64*
  store i64 42949672970, i64* %_allin_new_bt_15.i, align 8, !mcsema_real_eip !5
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16123.i3 = load i8*, i8** %73, align 8
  %_new_gep_17.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16123.i3, i64 -8
  %74 = bitcast i8* %_new_gep_17.i to i32*
  store i32 10, i32* %74, align 4, !mcsema_real_eip !6
  %75 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !7
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19124.i4 = load i8*, i8** %73, align 8
  %_new_gep_20.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19124.i4, i64 -24
  %_allin_new_bt_21.i = bitcast i8* %_new_gep_20.i to i64*
  store i64 %75, i64* %_allin_new_bt_21.i, align 8, !mcsema_real_eip !8
  %76 = inttoptr i64 %75 to i32*
  store i32 5, i32* %76, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22125.i5 = load i8*, i8** %73, align 8
  %_new_gep_23.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22125.i5, i64 -24
  %_allin_new_bt_24.i = bitcast i8* %_new_gep_23.i to i64*
  %77 = load i64, i64* %_allin_new_bt_24.i, align 8, !mcsema_real_eip !10
  %78 = add i64 %77, 4, !mcsema_real_eip !11
  %79 = inttoptr i64 %78 to i32*
  store i32 5, i32* %79, align 4, !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25126.i6 = load i8*, i8** %73, align 8
  %_new_gep_26.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25126.i6, i64 -24
  %_allin_new_bt_27.i = bitcast i8* %_new_gep_26.i to i64*
  %80 = load i64, i64* %_allin_new_bt_27.i, align 8, !mcsema_real_eip !12
  %81 = add i64 %80, 8, !mcsema_real_eip !13
  %82 = inttoptr i64 %81 to i32*
  store i32 5, i32* %82, align 4, !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127.i7 = load i8*, i8** %73, align 8
  %_new_gep_29.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127.i7, i64 -24
  %_allin_new_bt_30.i = bitcast i8* %_new_gep_29.i to i64*
  %83 = load i64, i64* %_allin_new_bt_30.i, align 8, !mcsema_real_eip !14
  %_new_gep_31.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127.i7, i64 -8
  %84 = bitcast i8* %_new_gep_31.i to i32*
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !15
  %_new_gep_34.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28127.i7, i64 -48
  %86 = bitcast i8* %_new_gep_34.i to i32*
  store i32 %85, i32* %86, align 4, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36128.i8 = load i8*, i8** %73, align 8
  %_new_gep_37.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36128.i8, i64 -16
  %_allin_new_bt_38.i = bitcast i8* %_new_gep_37.i to i64*
  %87 = load i64, i64* %_allin_new_bt_38.i, align 8, !mcsema_real_eip !17
  %_new_gep_39.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36128.i8, i64 -56
  %_allin_new_bt_40.i = bitcast i8* %_new_gep_39.i to i64*
  store i64 %87, i64* %_allin_new_bt_40.i, align 8, !mcsema_real_eip !18
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_41129.i9 = load i8*, i8** %73, align 8
  %_new_gep_42.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_41129.i9, i64 -56
  %_allin_new_bt_43.i = bitcast i8* %_new_gep_42.i to i64*
  %88 = load i64, i64* %_allin_new_bt_43.i, align 8, !mcsema_real_eip !19
  %_new_gep_44.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_41129.i9, i64 -48
  %89 = bitcast i8* %_new_gep_44.i to i32*
  %90 = load i32, i32* %89, align 4, !mcsema_real_eip !20
  %91 = zext i32 %90 to i64, !mcsema_real_eip !20
  %_new_gep_47.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_41129.i9, i64 -8
  %92 = bitcast i8* %_new_gep_47.i to i32*
  %93 = load i32, i32* %92, align 4, !mcsema_real_eip !21
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_49.i = load i64, i64* %_RSP_ptr_.sroa.0.i, align 8
  %94 = inttoptr i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_49.i to i8*
  store volatile i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_49.i, i64* %RDX_val.i, align 8
  %_new_gep_51.i = getelementptr i8, i8* %94, i64 16
  %95 = bitcast i8* %_new_gep_51.i to i32*
  store i32 %93, i32* %95, align 4, !mcsema_real_eip !22
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53130.i10 = load i8*, i8** %73, align 8
  %_new_gep_54.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53130.i10, i64 -16
  %_allin_new_bt_55.i = bitcast i8* %_new_gep_54.i to i64*
  %96 = load i64, i64* %_allin_new_bt_55.i, align 8, !mcsema_real_eip !23
  %RDX_val.i.0.RDX_val.0.RDX_val.0..i = load i64, i64* %RDX_val.i, align 8
  %97 = add i64 %RDX_val.i.0.RDX_val.0.RDX_val.0..i, 8, !mcsema_real_eip !24
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !24
  store i64 %96, i64* %98, align 8, !mcsema_real_eip !24
  %RDX_val.i.0.RDX_val.0.RDX_val.0.9.i = load i64, i64* %RDX_val.i, align 8
  %99 = add i64 %RDX_val.i.0.RDX_val.0.RDX_val.0.9.i, 32, !mcsema_real_eip !25
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !25
  store i64 %83, i64* %100, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_56131.i11 = load i8*, i8** %73, align 8
  %_new_gep_57.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_56131.i11, i64 -16
  %101 = ptrtoint i8* %_new_gep_57.i to i64
  %RDX_val.i.0.RDX_val.0.RDX_val.0.10.i = load i64, i64* %RDX_val.i, align 8
  %102 = add i64 %RDX_val.i.0.RDX_val.0.RDX_val.0.10.i, 24, !mcsema_real_eip !26
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !26
  store i64 %101, i64* %103, align 8, !mcsema_real_eip !26
  %104 = bitcast i64* %RDX_val.i to i32**
  %RDX_val.i.0.RDX_val.0.RDX_val.0.11113114132.i12 = load i32*, i32** %104, align 8
  store i32 3, i32* %RDX_val.i.0.RDX_val.0.RDX_val.0.11113114132.i12, align 4, !mcsema_real_eip !27
  store i64 %101, i64* %RDX_val.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_59133.i13 = load i8*, i8** %73, align 8
  %_new_gep_60.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_59133.i13, i64 -76
  %105 = bitcast i8* %_new_gep_60.i to i32*
  store i32 1, i32* %105, align 4, !mcsema_real_eip !28
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_62134.i14 = load i8*, i8** %73, align 8
  %_new_gep_63.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_62134.i14, i64 -76
  %106 = bitcast i8* %_new_gep_63.i to i32*
  %107 = load i32, i32* %106, align 4, !mcsema_real_eip !29
  %108 = zext i32 %107 to i64, !mcsema_real_eip !29
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_65135.i15 = load i8*, i8** %64, align 8
  %_new_gep_66.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_65135.i15, i64 -8
  %_allin_new_bt_67.i = bitcast i8* %_new_gep_66.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_67.i, align 8, !mcsema_real_eip !30
  %109 = ptrtoint i8* %_new_gep_66.i to i64
  store volatile i64 %109, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %83, i64* %RAX.i, align 8, !mcsema_real_eip !30
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !30
  store i64 %83, i64* %RCX.i, align 8, !mcsema_real_eip !30
  %RDX_val.i.0.RDX_val.0.RDX_val.0.12.i = load i64, i64* %RDX_val.i, align 8
  store i64 %RDX_val.i.0.RDX_val.0.RDX_val.0.12.i, i64* %RDX.i, align 8, !mcsema_real_eip !30
  store i64 %91, i64* %RSI.i, align 8, !mcsema_real_eip !30
  store i64 %88, i64* %RDI.i, align 8, !mcsema_real_eip !30
  store volatile i64 %109, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_70116.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_70116.i, i64* %RBP.i, align 8
  store i64 %108, i64* %R8.i, align 8, !mcsema_real_eip !30
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !30
  %110 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %110, align 8
  %111 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %111, align 8
  %112 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %112, align 8
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !30
  store i1 %_trans_icmp_ne_7.i, i1* %CF.i, align 1, !mcsema_real_eip !30
  store i1 %70, i1* %PF.i, align 1, !mcsema_real_eip !30
  store i1 %67, i1* %AF.i, align 1, !mcsema_real_eip !30
  store i1 %_trans_icmp_eq_.i, i1* %ZF.i, align 1, !mcsema_real_eip !30
  store i1 %_trans_icmp_ne_.i, i1* %SF.i, align 1, !mcsema_real_eip !30
  store i1 %71, i1* %OF.i, align 1, !mcsema_real_eip !30
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !30
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !30
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !30
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !30
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !30
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !30
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !30
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !30
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !30
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !30
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !30
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !30
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !30
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !30
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !30
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !30
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !30
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !30
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !30
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !30
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !30
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !30
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !30
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !30
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !30
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !30
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !30
  store i11 %45, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !30
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !30
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !30
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !30
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !30
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !30
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !30
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !30
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !30
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !30
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !30
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !30
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !30
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !30
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !30
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !30
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !30
  %113 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %63, <2 x i64>* %113, align 1
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
!2 = !{i64 272}
!3 = !{i64 276}
!4 = !{i64 283}
!5 = !{i64 300}
!6 = !{i64 304}
!7 = !{i64 318}
!8 = !{i64 323}
!9 = !{i64 327}
!10 = !{i64 333}
!11 = !{i64 337}
!12 = !{i64 344}
!13 = !{i64 348}
!14 = !{i64 355}
!15 = !{i64 359}
!16 = !{i64 362}
!17 = !{i64 365}
!18 = !{i64 369}
!19 = !{i64 373}
!20 = !{i64 377}
!21 = !{i64 380}
!22 = !{i64 386}
!23 = !{i64 389}
!24 = !{i64 393}
!25 = !{i64 397}
!26 = !{i64 405}
!27 = !{i64 409}
!28 = !{i64 429}
!29 = !{i64 435}
!30 = !{i64 439}
