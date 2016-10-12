; ModuleID = 'Output/test_27.clang.trans.opt.bc'
source_filename = "Output/test_27.clang.bc"
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
  %_RSP_ptr_117.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_118.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_119.i = alloca [128 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_117.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_117.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_117.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_118.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_118.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_118.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_119.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_119.i, i64 0, i64 128
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_117.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %4 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %5 = bitcast i64* %R12.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %7 = bitcast i64* %R14.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %9 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
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
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_120.i = load i64, i64* %_RBP_ptr_118.sroa.0.i, align 8
  %61 = bitcast i64* %_RSP_ptr_117.sroa.0.i to i8**
  %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_128.i1 = load i8*, i8** %61, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_128.i1, i64 -8
  %62 = add i64 %4, -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_120.i, i64* %_allin_new_bt_.i, align 8
  %63 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %63, i64* %_RBP_ptr_118.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_128.i1, i64 -120
  %64 = add i64 %4, -120
  %65 = xor i64 %64, %62, !mcsema_real_eip !3
  %66 = and i64 %65, 16
  %67 = icmp eq i64 %66, 0
  %68 = trunc i64 %64 to i8, !mcsema_real_eip !3
  %69 = tail call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !3
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  %72 = icmp eq i64 %64, 0, !mcsema_real_eip !3
  %73 = icmp slt i64 %64, 0
  %74 = icmp ult i64 %62, 112, !mcsema_real_eip !3
  %75 = and i64 %65, %62, !mcsema_real_eip !3
  %76 = icmp slt i64 %75, 0
  %77 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %77, i64* %_RSP_ptr_117.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_128.i1, i64 -12
  %78 = bitcast i8* %_new_gep_3.i to i32*
  store i32 0, i32* %78, align 4, !mcsema_real_eip !4
  %79 = bitcast i64* %_RBP_ptr_118.sroa.0.i to i8**
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_5130.i2 = load i8*, i8** %79, align 8
  %_new_gep_6.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_5130.i2, i64 -16
  %80 = bitcast i8* %_new_gep_6.i to i32*
  store i32 10, i32* %80, align 4, !mcsema_real_eip !5
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_8131.i3 = load i8*, i8** %79, align 8
  %_new_gep_9.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_8131.i3, i64 -12
  %81 = bitcast i8* %_new_gep_9.i to i32*
  store i32 10, i32* %81, align 4, !mcsema_real_eip !6
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_11132.i4 = load i8*, i8** %79, align 8
  %_new_gep_12.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_11132.i4, i64 -8
  %82 = bitcast i8* %_new_gep_12.i to i32*
  store i32 10, i32* %82, align 4, !mcsema_real_eip !7
  %83 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !8
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_14133.i5 = load i8*, i8** %79, align 8
  %_new_gep_15.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_14133.i5, i64 -16
  %84 = ptrtoint i8* %_new_gep_15.i to i64
  %_new_gep_18.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_14133.i5, i64 -24
  %_allin_new_bt_19.i = bitcast i8* %_new_gep_18.i to i64*
  store i64 %83, i64* %_allin_new_bt_19.i, align 8, !mcsema_real_eip !9
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_20134.i6 = load i8*, i8** %79, align 8
  %_new_gep_21.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_20134.i6, i64 -24
  %85 = bitcast i8* %_new_gep_21.i to i32**
  %86 = load i32*, i32** %85, align 8
  store i32 5, i32* %86, align 4, !mcsema_real_eip !10
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_23135.i7 = load i8*, i8** %79, align 8
  %_new_gep_24.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_23135.i7, i64 -24
  %_allin_new_bt_25.i = bitcast i8* %_new_gep_24.i to i64*
  %87 = load i64, i64* %_allin_new_bt_25.i, align 8, !mcsema_real_eip !11
  %88 = add i64 %87, 4, !mcsema_real_eip !12
  %89 = inttoptr i64 %88 to i32*
  store i32 5, i32* %89, align 4, !mcsema_real_eip !12
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_26136.i8 = load i8*, i8** %79, align 8
  %_new_gep_27.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_26136.i8, i64 -24
  %_allin_new_bt_28.i = bitcast i8* %_new_gep_27.i to i64*
  %90 = load i64, i64* %_allin_new_bt_28.i, align 8, !mcsema_real_eip !13
  %91 = add i64 %90, 8, !mcsema_real_eip !14
  %92 = inttoptr i64 %91 to i32*
  store i32 5, i32* %92, align 4, !mcsema_real_eip !14
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_29137.i9 = load i8*, i8** %79, align 8
  %_new_gep_30.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_29137.i9, i64 -24
  %_allin_new_bt_31.i = bitcast i8* %_new_gep_30.i to i64*
  %93 = load i64, i64* %_allin_new_bt_31.i, align 8, !mcsema_real_eip !15
  %_new_gep_33.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_29137.i9, i64 -16
  %_allin_new_bt_34.i = bitcast i8* %_new_gep_33.i to i64*
  %94 = load i64, i64* %_allin_new_bt_34.i, align 8, !mcsema_real_eip !16
  %_new_gep_35.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_29137.i9, i64 -48
  %_allin_new_bt_36.i = bitcast i8* %_new_gep_35.i to i64*
  store i64 %94, i64* %_allin_new_bt_36.i, align 8, !mcsema_real_eip !17
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_37138.i10 = load i8*, i8** %79, align 8
  %_new_gep_38.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_37138.i10, i64 -8
  %95 = bitcast i8* %_new_gep_38.i to i32*
  %96 = load i32, i32* %95, align 4, !mcsema_real_eip !18
  %_new_gep_41.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_37138.i10, i64 -40
  %97 = bitcast i8* %_new_gep_41.i to i32*
  store i32 %96, i32* %97, align 4, !mcsema_real_eip !19
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_43139.i11 = load i8*, i8** %79, align 8
  %_new_gep_44.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_43139.i11, i64 -48
  %_allin_new_bt_45.i = bitcast i8* %_new_gep_44.i to i64*
  %98 = load i64, i64* %_allin_new_bt_45.i, align 8, !mcsema_real_eip !20
  %_new_gep_46.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_43139.i11, i64 -40
  %99 = bitcast i8* %_new_gep_46.i to i32*
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !21
  %101 = zext i32 %100 to i64, !mcsema_real_eip !21
  %_new_gep_49.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_43139.i11, i64 -56
  %_allin_new_bt_50.i = bitcast i8* %_new_gep_49.i to i64*
  store i64 %84, i64* %_allin_new_bt_50.i, align 8, !mcsema_real_eip !22
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_51140.i12 = load i8*, i8** %79, align 8
  %_new_gep_52.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_51140.i12, i64 -56
  %_allin_new_bt_53.i = bitcast i8* %_new_gep_52.i to i64*
  %102 = load i64, i64* %_allin_new_bt_53.i, align 8, !mcsema_real_eip !23
  %_new_gep_54.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_51140.i12, i64 -64
  %_allin_new_bt_55.i = bitcast i8* %_new_gep_54.i to i64*
  store i64 %93, i64* %_allin_new_bt_55.i, align 8, !mcsema_real_eip !24
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_56141.i13 = load i8*, i8** %79, align 8
  %_new_gep_57.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_56141.i13, i64 -68
  %103 = bitcast i8* %_new_gep_57.i to i32*
  store i32 3, i32* %103, align 4, !mcsema_real_eip !25
  %104 = bitcast i64* %_RSP_ptr_117.sroa.0.i to i32**
  %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_59121122142.i14 = load i32*, i32** %104, align 8
  store i32 3, i32* %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_59121122142.i14, align 4, !mcsema_real_eip !26
  %105 = inttoptr i64 %102 to i64*, !mcsema_real_eip !27
  %106 = load i64, i64* %105, align 8, !mcsema_real_eip !27
  %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_61143.i15 = load i8*, i8** %61, align 8
  %_new_gep_62.i = getelementptr i8, i8* %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_61143.i15, i64 8
  %_allin_new_bt_63.i = bitcast i8* %_new_gep_62.i to i64*
  store i64 %106, i64* %_allin_new_bt_63.i, align 8, !mcsema_real_eip !28
  %107 = add i64 %102, 8, !mcsema_real_eip !29
  %108 = inttoptr i64 %107 to i32*
  %109 = load i32, i32* %108, align 4, !mcsema_real_eip !29
  %110 = zext i32 %109 to i64, !mcsema_real_eip !29
  %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_64144.i16 = load i8*, i8** %61, align 8
  %_new_gep_65.i = getelementptr i8, i8* %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_64144.i16, i64 16
  %111 = bitcast i8* %_new_gep_65.i to i32*
  store i32 %109, i32* %111, align 4, !mcsema_real_eip !30
  %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_67145.i17 = load i8*, i8** %61, align 8
  %_new_gep_68.i = getelementptr i8, i8* %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_67145.i17, i64 24
  %_allin_new_bt_69.i = bitcast i8* %_new_gep_68.i to i64*
  store i64 %102, i64* %_allin_new_bt_69.i, align 8, !mcsema_real_eip !31
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_70146.i18 = load i8*, i8** %79, align 8
  %_new_gep_71.i = getelementptr i8, i8* %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_70146.i18, i64 -64
  %_allin_new_bt_72.i = bitcast i8* %_new_gep_71.i to i64*
  %112 = load i64, i64* %_allin_new_bt_72.i, align 8, !mcsema_real_eip !32
  %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_73147.i19 = load i8*, i8** %61, align 8
  %_new_gep_74.i = getelementptr i8, i8* %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_73147.i19, i64 32
  %_allin_new_bt_75.i = bitcast i8* %_new_gep_74.i to i64*
  store i64 %112, i64* %_allin_new_bt_75.i, align 8, !mcsema_real_eip !33
  %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_76148.i20 = load i8*, i8** %61, align 8
  %_new_gep_77.i = getelementptr i8, i8* %_RSP_ptr_117.sroa.0.i.0._RSP_ptr_117.sroa.0.0._RSP_ptr_117.sroa.0.0._load_rsp_ptr_76148.i20, i64 -8
  %_allin_new_bt_78.i = bitcast i8* %_new_gep_77.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_78.i, align 8, !mcsema_real_eip !34
  %113 = ptrtoint i8* %_new_gep_77.i to i64
  store volatile i64 %113, i64* %_RSP_ptr_117.sroa.0.i, align 8
  store i64 %112, i64* %RAX.i, align 8, !mcsema_real_eip !34
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !34
  store i64 %93, i64* %RCX.i, align 8, !mcsema_real_eip !34
  store i64 %102, i64* %RDX.i, align 8, !mcsema_real_eip !34
  store i64 %101, i64* %RSI.i, align 8, !mcsema_real_eip !34
  store i64 %98, i64* %RDI.i, align 8, !mcsema_real_eip !34
  store volatile i64 %113, i64* %RSP.i, align 8
  %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_81124.i = load i64, i64* %_RBP_ptr_118.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_118.sroa.0.i.0._RBP_ptr_118.sroa.0.0._RBP_ptr_118.sroa.0.0._load_rbp_ptr_81124.i, i64* %RBP.i, align 8
  %114 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %114, align 8
  store i64 %110, i64* %R10.i, align 8, !mcsema_real_eip !34
  store i64 %102, i64* %R11.i, align 8, !mcsema_real_eip !34
  %115 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %115, align 8
  %116 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %116, align 8
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !34
  store i1 %74, i1* %CF.i, align 1, !mcsema_real_eip !34
  store i1 %71, i1* %PF.i, align 1, !mcsema_real_eip !34
  store i1 %67, i1* %AF.i, align 1, !mcsema_real_eip !34
  store i1 %72, i1* %ZF.i, align 1, !mcsema_real_eip !34
  store i1 %73, i1* %SF.i, align 1, !mcsema_real_eip !34
  store i1 %76, i1* %OF.i, align 1, !mcsema_real_eip !34
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !34
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !34
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !34
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !34
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !34
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !34
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !34
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !34
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !34
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !34
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !34
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !34
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !34
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !34
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !34
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !34
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !34
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !34
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !34
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !34
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !34
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !34
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !34
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !34
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !34
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !34
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !34
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !34
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !34
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !34
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !34
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !34
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !34
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !34
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !34
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !34
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !34
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !34
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !34
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !34
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !34
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !34
  %117 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %117, align 1
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
!2 = !{i64 256, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 260, [17 x i8] c"\09subq\09$112, %rsp\00"}
!4 = !{i64 271, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = !{i64 278, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!6 = !{i64 285, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!7 = !{i64 292, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!8 = !{i64 299, [9 x i8] c"\09callq\090\00"}
!9 = !{i64 325, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!10 = !{i64 333, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!11 = !{i64 339, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!12 = !{i64 343, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!13 = !{i64 350, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!14 = !{i64 354, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!15 = !{i64 361, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!16 = !{i64 369, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!17 = !{i64 373, [22 x i8] c"\09movq\09%rsi, -48(%rbp)\00"}
!18 = !{i64 377, [22 x i8] c"\09movl\09-8(%rbp), %r10d\00"}
!19 = !{i64 381, [23 x i8] c"\09movl\09%r10d, -40(%rbp)\00"}
!20 = !{i64 385, [22 x i8] c"\09movq\09-48(%rbp), %rsi\00"}
!21 = !{i64 389, [23 x i8] c"\09movl\09-40(%rbp), %r10d\00"}
!22 = !{i64 393, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!23 = !{i64 403, [22 x i8] c"\09movq\09-56(%rbp), %r11\00"}
!24 = !{i64 407, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!25 = !{i64 414, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!26 = !{i64 420, [17 x i8] c"\09movl\09$3, (%rsp)\00"}
!27 = !{i64 427, [19 x i8] c"\09movq\09(%r11), %rax\00"}
!28 = !{i64 430, [20 x i8] c"\09movq\09%rax, 8(%rsp)\00"}
!29 = !{i64 435, [21 x i8] c"\09movl\098(%r11), %r10d\00"}
!30 = !{i64 439, [22 x i8] c"\09movl\09%r10d, 16(%rsp)\00"}
!31 = !{i64 444, [21 x i8] c"\09movq\09%r11, 24(%rsp)\00"}
!32 = !{i64 449, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!33 = !{i64 453, [21 x i8] c"\09movq\09%rax, 32(%rsp)\00"}
!34 = !{i64 458, [12 x i8] c"\09callq\09-463\00"}
