; ModuleID = 'Output/test_11.clang.trans.opt.bc'
source_filename = "Output/test_11.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_RSP_ptr_106.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_107.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_108.i = alloca [56 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %CF_val.i = alloca i1, align 1, !mcsema_real_eip !2
  %_RSP_ptr_106.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_106.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_106.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_107.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_107.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_107.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [56 x i8], [56 x i8]* %_local_stack_start_ptr_108.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 56, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %CF_val.i.0..sroa_cast = bitcast i1* %CF_val.i to i8*
  call void @llvm.lifetime.start(i64 1, i8* nonnull %CF_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [56 x i8], [56 x i8]* %_local_stack_start_ptr_108.i, i64 0, i64 56
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_106.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = bitcast i64* %RBX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = bitcast i64* %RDX.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
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
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_109.i = load i64, i64* %_RBP_ptr_107.sroa.0.i, align 8
  %70 = bitcast i64* %_RSP_ptr_106.sroa.0.i to i8**
  %_RSP_ptr_106.sroa.0.i.0._RSP_ptr_106.sroa.0.0._RSP_ptr_106.sroa.0.0._load_rsp_ptr_114.i9 = load i8*, i8** %70, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_106.sroa.0.i.0._RSP_ptr_106.sroa.0.0._RSP_ptr_106.sroa.0.0._load_rsp_ptr_114.i9, i64 -8
  %71 = add i64 %8, -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_109.i, i64* %_allin_new_bt_.i, align 8
  %72 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %72, i64* %_RBP_ptr_107.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_106.sroa.0.i.0._RSP_ptr_106.sroa.0.0._RSP_ptr_106.sroa.0.0._load_rsp_ptr_114.i9, i64 -56
  %73 = add i64 %8, -56
  %74 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %74, i64* %_RSP_ptr_106.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_106.sroa.0.i.0._RSP_ptr_106.sroa.0.0._RSP_ptr_106.sroa.0.0._load_rsp_ptr_114.i9, i64 -24
  %_allin_new_bt_4.i = bitcast i8* %_new_gep_3.i to i64*
  store i64 %7, i64* %_allin_new_bt_4.i, align 8, !mcsema_real_eip !3
  %75 = bitcast i64* %_RBP_ptr_107.sroa.0.i to i8**
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_5115.i10 = load i8*, i8** %75, align 8
  %_new_gep_6.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_5115.i10, i64 -16
  %_allin_new_bt_7.i = bitcast i8* %_new_gep_6.i to i64*
  %76 = load i64, i64* %_allin_new_bt_7.i, align 8, !mcsema_real_eip !4
  %77 = tail call x86_64_sysvcc i64 @strlen(i64 %76), !mcsema_real_eip !5
  %78 = add i64 %77, 1
  %_new_gep_9.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_5115.i10, i64 -24
  %_allin_new_bt_10.i = bitcast i8* %_new_gep_9.i to i64*
  store i64 %78, i64* %_allin_new_bt_10.i, align 8, !mcsema_real_eip !6
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_11117.i11 = load i8*, i8** %75, align 8
  %_new_gep_12.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_11117.i11, i64 -24
  %_allin_new_bt_13.i = bitcast i8* %_new_gep_12.i to i64*
  %79 = load i64, i64* %_allin_new_bt_13.i, align 8, !mcsema_real_eip !7
  %80 = tail call x86_64_sysvcc i64 @malloc(i64 %79), !mcsema_real_eip !8
  %_new_gep_15.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_11117.i11, i64 -32
  %_allin_new_bt_16.i = bitcast i8* %_new_gep_15.i to i64*
  store i64 %80, i64* %_allin_new_bt_16.i, align 8, !mcsema_real_eip !9
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_17118.i12 = load i8*, i8** %75, align 8
  %_new_gep_18.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_17118.i12, i64 -32
  %_allin_new_bt_19.i = bitcast i8* %_new_gep_18.i to i64*
  %81 = load i64, i64* %_allin_new_bt_19.i, align 8, !mcsema_real_eip !10
  %82 = icmp eq i64 %81, 0, !mcsema_real_eip !10
  store i1 false, i1* %CF_val.i, align 1
  br i1 %82, label %block_0xd6.i, label %block_0x55.i, !mcsema_real_eip !11

block_0xd6.i:                                     ; preds = %driverBlockRaw
  %_new_gep_21.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_17118.i12, i64 -8
  %_allin_new_bt_22.i = bitcast i8* %_new_gep_21.i to i64*
  store i64 0, i64* %_allin_new_bt_22.i, align 8, !mcsema_real_eip !12
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_23133.i22 = load i8*, i8** %75, align 8
  %_new_gep_24.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_23133.i22, i64 -8
  %_allin_new_bt_25.i = bitcast i8* %_new_gep_24.i to i64*
  %83 = load i64, i64* %_allin_new_bt_25.i, align 8, !mcsema_real_eip !13
  %_RSP_ptr_106.sroa.0.i.0._RSP_ptr_106.sroa.0.0._RSP_ptr_106.sroa.0.0._load_rsp_ptr_26134.i23 = load i8*, i8** %70, align 8
  %_new_gep_27.i = getelementptr i8, i8* %_RSP_ptr_106.sroa.0.i.0._RSP_ptr_106.sroa.0.0._RSP_ptr_106.sroa.0.0._load_rsp_ptr_26134.i23, i64 48
  %84 = xor i64 %71, %73, !mcsema_real_eip !14
  %85 = and i64 %84, 16
  %86 = icmp eq i64 %85, 0
  %87 = icmp slt i64 %71, 0
  %88 = icmp eq i64 %71, 0, !mcsema_real_eip !14
  %89 = add i64 %8, 9223372036854775752
  %90 = and i64 %84, %89, !mcsema_real_eip !14
  %91 = icmp slt i64 %90, 0
  %92 = trunc i64 %71 to i8, !mcsema_real_eip !14
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !14
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = ptrtoint i8* %_new_gep_27.i to i64
  %97 = and i64 %96, 1
  %_new_ptr2int_28.i = icmp ne i64 %97, 0
  store volatile i1 %_new_ptr2int_28.i, i1* %CF_val.i, align 1
  store volatile i64 %96, i64* %_RSP_ptr_106.sroa.0.i, align 8
  %_allin_new_bt_29.i = bitcast i8* %_new_gep_27.i to i64*
  %98 = load i64, i64* %_allin_new_bt_29.i, align 8
  store volatile i64 %98, i64* %_RBP_ptr_107.sroa.0.i, align 8
  %_new_gep_30.i = getelementptr i8, i8* %_RSP_ptr_106.sroa.0.i.0._RSP_ptr_106.sroa.0.0._RSP_ptr_106.sroa.0.0._load_rsp_ptr_26134.i23, i64 64
  %99 = ptrtoint i8* %_new_gep_30.i to i64
  store volatile i64 %99, i64* %_RSP_ptr_106.sroa.0.i, align 8
  store i64 %83, i64* %RAX.i, align 8, !mcsema_real_eip !15
  %100 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %100, align 8
  %101 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %101, align 8
  store i64 %79, i64* %RDI.i, align 8, !mcsema_real_eip !15
  store volatile i64 %99, i64* %RSP.i, align 8
  store volatile i64 %98, i64* %RBP.i, align 8
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !15
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !15
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !15
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !15
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !15
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !15
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !15
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !15
  store i1 %_new_ptr2int_28.i, i1* %CF.i, align 1, !mcsema_real_eip !15
  store i1 %95, i1* %PF.i, align 1, !mcsema_real_eip !15
  store i1 %86, i1* %AF.i, align 1, !mcsema_real_eip !15
  store i1 %88, i1* %ZF.i, align 1, !mcsema_real_eip !15
  store i1 %87, i1* %SF.i, align 1, !mcsema_real_eip !15
  store i1 %91, i1* %OF.i, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %DF.i, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %22, i1* %FPU_B.i, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C3.i, align 1, !mcsema_real_eip !15
  store i3 %24, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_C2.i, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_C1.i, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_C0.i, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_ES.i, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_SF.i, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_PE.i, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_UE.i, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_OE.i, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_DE.i, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_IE.i, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_X.i, align 1, !mcsema_real_eip !15
  store i2 %37, i2* %FPU_RC.i, align 1, !mcsema_real_eip !15
  store i2 %38, i2* %FPU_PC.i, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_PM.i, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_UM.i, align 1, !mcsema_real_eip !15
  store i1 %41, i1* %FPU_OM.i, align 1, !mcsema_real_eip !15
  store i1 %42, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !15
  store i1 %43, i1* %FPU_DM.i, align 1, !mcsema_real_eip !15
  store i1 %44, i1* %FPU_IM.i, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %46, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %49, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !15
  store i16 %50, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %51, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM0.i, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM1.i, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM2.i, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM3.i, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM4.i, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM5.i, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM6.i, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM7.i, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM8.i, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM9.i, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM10.i, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM11.i, align 1, !mcsema_real_eip !15
  store i128 %64, i128* %XMM12.i, align 1, !mcsema_real_eip !15
  store i128 %65, i128* %XMM13.i, align 1, !mcsema_real_eip !15
  store i128 %66, i128* %XMM14.i, align 1, !mcsema_real_eip !15
  store i128 %67, i128* %XMM15.i, align 1, !mcsema_real_eip !15
  store i64 %68, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !15
  store i64 %69, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !15
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_106.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_107.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %CF_val.i.0..sroa_cast)
  br label %sub_20.exit

block_0x55.i:                                     ; preds = %driverBlockRaw
  store i1 false, i1* %CF_val.i, align 1
  %_new_gep_36.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_17118.i12, i64 -16
  %_allin_new_bt_37.i = bitcast i8* %_new_gep_36.i to i64*
  %102 = load i64, i64* %_allin_new_bt_37.i, align 8, !mcsema_real_eip !16
  %_new_gep_38.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_17118.i12, i64 -40
  %_allin_new_bt_39.i = bitcast i8* %_new_gep_38.i to i64*
  store i64 %102, i64* %_allin_new_bt_39.i, align 8, !mcsema_real_eip !17
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_40120.i13 = load i8*, i8** %75, align 8
  %_new_gep_41.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_40120.i13, i64 -32
  %_allin_new_bt_42.i = bitcast i8* %_new_gep_41.i to i64*
  %103 = load i64, i64* %_allin_new_bt_42.i, align 8, !mcsema_real_eip !18
  %_new_gep_43.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_40120.i13, i64 -48
  %_allin_new_bt_44.i = bitcast i8* %_new_gep_43.i to i64*
  store i64 %103, i64* %_allin_new_bt_44.i, align 8, !mcsema_real_eip !19
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_45121.i14 = load i8*, i8** %75, align 8
  %_new_gep_46.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_45121.i14, i64 -32
  %_allin_new_bt_47.i = bitcast i8* %_new_gep_46.i to i64*
  %104 = load i64, i64* %_allin_new_bt_47.i, align 8, !mcsema_real_eip !20
  %_new_gep_48.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_45121.i14, i64 -24
  %_allin_new_bt_49.i = bitcast i8* %_new_gep_48.i to i64*
  %105 = load i64, i64* %_allin_new_bt_49.i, align 8, !mcsema_real_eip !21
  %106 = tail call x86_64_sysvcc i64 @memset(i64 %104, i64 0, i64 %105), !mcsema_real_eip !22
  %_new_gep_51.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_45121.i14, i64 -40
  %107 = bitcast i8* %_new_gep_51.i to i8**
  %108 = load i8*, i8** %107, align 8
  %109 = load i8, i8* %108, align 1, !mcsema_real_eip !23
  %110 = icmp eq i8 %109, 0
  store i1 false, i1* %CF_val.i, align 1
  br i1 %110, label %block_0xc9.i, label %block_0x84.i.preheader, !mcsema_real_eip !24

block_0x84.i.preheader:                           ; preds = %block_0x55.i
  br label %block_0x84.i

block_0xc9.i.loopexit:                            ; preds = %block_0x74.i
  br label %block_0xc9.i

block_0xc9.i:                                     ; preds = %block_0xc9.i.loopexit, %block_0x55.i
  %_RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_53127.i = phi i8* [ %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_45121.i14, %block_0x55.i ], [ %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_106126.i17, %block_0xc9.i.loopexit ]
  %_new_gep_54.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_53127.i, i64 -32
  %_allin_new_bt_55.i = bitcast i8* %_new_gep_54.i to i64*
  %111 = load i64, i64* %_allin_new_bt_55.i, align 8, !mcsema_real_eip !25
  %_new_gep_56.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_53127.i, i64 -8
  %_allin_new_bt_57.i = bitcast i8* %_new_gep_56.i to i64*
  store i64 %111, i64* %_allin_new_bt_57.i, align 8, !mcsema_real_eip !26
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_58128.i18 = load i8*, i8** %75, align 8
  %_new_gep_59.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_58128.i18, i64 -8
  %_allin_new_bt_60.i = bitcast i8* %_new_gep_59.i to i64*
  %112 = load i64, i64* %_allin_new_bt_60.i, align 8, !mcsema_real_eip !13
  %_RSP_ptr_106.sroa.0.i.0._RSP_ptr_106.sroa.0.0._RSP_ptr_106.sroa.0.0._load_rsp_ptr_61129.i19 = load i8*, i8** %70, align 8
  %_new_gep_62.i = getelementptr i8, i8* %_RSP_ptr_106.sroa.0.i.0._RSP_ptr_106.sroa.0.0._RSP_ptr_106.sroa.0.0._load_rsp_ptr_61129.i19, i64 48
  %113 = xor i64 %71, %73, !mcsema_real_eip !14
  %114 = and i64 %113, 16
  %115 = icmp eq i64 %114, 0
  %116 = icmp slt i64 %71, 0
  %117 = icmp eq i64 %71, 0, !mcsema_real_eip !14
  %118 = add i64 %8, 9223372036854775752
  %119 = and i64 %113, %118, !mcsema_real_eip !14
  %120 = icmp slt i64 %119, 0
  %121 = trunc i64 %71 to i8, !mcsema_real_eip !14
  %122 = tail call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !14
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  %125 = ptrtoint i8* %_new_gep_62.i to i64
  %126 = and i64 %125, 1
  %_new_ptr2int_63.i = icmp ne i64 %126, 0
  store volatile i1 %_new_ptr2int_63.i, i1* %CF_val.i, align 1
  store volatile i64 %125, i64* %_RSP_ptr_106.sroa.0.i, align 8
  %_allin_new_bt_64.i = bitcast i8* %_new_gep_62.i to i64*
  %127 = load i64, i64* %_allin_new_bt_64.i, align 8
  store volatile i64 %127, i64* %_RBP_ptr_107.sroa.0.i, align 8
  %_new_gep_66.i = getelementptr i8, i8* %_RSP_ptr_106.sroa.0.i.0._RSP_ptr_106.sroa.0.0._RSP_ptr_106.sroa.0.0._load_rsp_ptr_61129.i19, i64 64
  %128 = ptrtoint i8* %_new_gep_66.i to i64
  store volatile i64 %128, i64* %_RSP_ptr_106.sroa.0.i, align 8
  store i64 %112, i64* %RAX.i, align 8, !mcsema_real_eip !15
  %129 = extractelement <2 x i64> %4, i32 0
  store i64 %129, i64* %RBX.i, align 8, !mcsema_real_eip !15
  store i64 0, i64* %RCX.i, align 8, !mcsema_real_eip !15
  store i64 %105, i64* %RDX.i, align 8, !mcsema_real_eip !15
  store i64 0, i64* %RSI.i, align 8, !mcsema_real_eip !15
  store i64 %104, i64* %RDI.i, align 8, !mcsema_real_eip !15
  store volatile i64 %128, i64* %RSP.i, align 8
  store volatile i64 %127, i64* %RBP.i, align 8
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !15
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !15
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !15
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !15
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !15
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !15
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !15
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !15
  store i1 %_new_ptr2int_63.i, i1* %CF.i, align 1, !mcsema_real_eip !15
  store i1 %124, i1* %PF.i, align 1, !mcsema_real_eip !15
  store i1 %115, i1* %AF.i, align 1, !mcsema_real_eip !15
  store i1 %117, i1* %ZF.i, align 1, !mcsema_real_eip !15
  store i1 %116, i1* %SF.i, align 1, !mcsema_real_eip !15
  store i1 %120, i1* %OF.i, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %DF.i, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %22, i1* %FPU_B.i, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C3.i, align 1, !mcsema_real_eip !15
  store i3 %24, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_C2.i, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_C1.i, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_C0.i, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_ES.i, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_SF.i, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_PE.i, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_UE.i, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_OE.i, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_DE.i, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_IE.i, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_X.i, align 1, !mcsema_real_eip !15
  store i2 %37, i2* %FPU_RC.i, align 1, !mcsema_real_eip !15
  store i2 %38, i2* %FPU_PC.i, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_PM.i, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_UM.i, align 1, !mcsema_real_eip !15
  store i1 %41, i1* %FPU_OM.i, align 1, !mcsema_real_eip !15
  store i1 %42, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !15
  store i1 %43, i1* %FPU_DM.i, align 1, !mcsema_real_eip !15
  store i1 %44, i1* %FPU_IM.i, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %46, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %49, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !15
  store i16 %50, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %51, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM0.i, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM1.i, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM2.i, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM3.i, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM4.i, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM5.i, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM6.i, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM7.i, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM8.i, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM9.i, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM10.i, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM11.i, align 1, !mcsema_real_eip !15
  store i128 %64, i128* %XMM12.i, align 1, !mcsema_real_eip !15
  store i128 %65, i128* %XMM13.i, align 1, !mcsema_real_eip !15
  store i128 %66, i128* %XMM14.i, align 1, !mcsema_real_eip !15
  store i128 %67, i128* %XMM15.i, align 1, !mcsema_real_eip !15
  store i64 %68, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !15
  store i64 %69, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !15
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_106.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_107.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %CF_val.i.0..sroa_cast)
  br label %sub_20.exit

block_0x84.i:                                     ; preds = %block_0x84.i.preheader, %block_0x74.i
  %130 = phi i8* [ %150, %block_0x74.i ], [ %108, %block_0x84.i.preheader ]
  %_RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_71123.i = phi i8* [ %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_106126.i17, %block_0x74.i ], [ %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_45121.i14, %block_0x84.i.preheader ]
  %131 = load i8, i8* %130, align 1, !mcsema_real_eip !27
  %132 = icmp eq i8 %131, 47
  %133 = icmp ult i8 %131, 47
  store i1 %133, i1* %CF_val.i, align 1
  br i1 %132, label %block_0x94.i, label %block_0xa0.i, !mcsema_real_eip !28

block_0xa0.i:                                     ; preds = %block_0x84.i
  %134 = load i8, i8* %130, align 1, !mcsema_real_eip !29
  %_new_gep_78.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_71123.i, i64 -48
  %135 = bitcast i8* %_new_gep_78.i to i8**
  %136 = load i8*, i8** %135, align 8
  store i8 %134, i8* %136, align 1, !mcsema_real_eip !30
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_80124.i15 = load i8*, i8** %75, align 8
  %_new_gep_81.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_80124.i15, i64 -40
  %_allin_new_bt_82.i = bitcast i8* %_new_gep_81.i to i64*
  %137 = load i64, i64* %_allin_new_bt_82.i, align 8, !mcsema_real_eip !31
  %138 = add i64 %137, 1
  store i64 %138, i64* %_allin_new_bt_82.i, align 8, !mcsema_real_eip !32
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_86125.i16 = load i8*, i8** %75, align 8
  %_new_gep_87.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_86125.i16, i64 -48
  %_allin_new_bt_88.i = bitcast i8* %_new_gep_87.i to i64*
  %139 = load i64, i64* %_allin_new_bt_88.i, align 8, !mcsema_real_eip !33
  %uadd143.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 1)
  %140 = extractvalue { i64, i1 } %uadd143.i, 0
  %141 = extractvalue { i64, i1 } %uadd143.i, 1
  store i1 %141, i1* %CF_val.i, align 1
  store i64 %140, i64* %_allin_new_bt_88.i, align 8, !mcsema_real_eip !34
  br label %block_0x74.i, !mcsema_real_eip !35

block_0x94.i:                                     ; preds = %block_0x84.i
  %_new_gep_92.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_71123.i, i64 -48
  %142 = bitcast i8* %_new_gep_92.i to i8**
  %143 = load i8*, i8** %142, align 8
  store i8 92, i8* %143, align 1, !mcsema_real_eip !36
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_94130.i20 = load i8*, i8** %75, align 8
  %_new_gep_95.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_94130.i20, i64 -40
  %_allin_new_bt_96.i = bitcast i8* %_new_gep_95.i to i64*
  %144 = load i64, i64* %_allin_new_bt_96.i, align 8, !mcsema_real_eip !31
  %145 = add i64 %144, 1
  store i64 %145, i64* %_allin_new_bt_96.i, align 8, !mcsema_real_eip !32
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_100131.i21 = load i8*, i8** %75, align 8
  %_new_gep_101.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_100131.i21, i64 -48
  %_allin_new_bt_102.i = bitcast i8* %_new_gep_101.i to i64*
  %146 = load i64, i64* %_allin_new_bt_102.i, align 8, !mcsema_real_eip !33
  %uadd140.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %146, i64 1)
  %147 = extractvalue { i64, i1 } %uadd140.i, 0
  %148 = extractvalue { i64, i1 } %uadd140.i, 1
  store i1 %148, i1* %CF_val.i, align 1
  store i64 %147, i64* %_allin_new_bt_102.i, align 8, !mcsema_real_eip !34
  br label %block_0x74.i, !mcsema_real_eip !35

block_0x74.i:                                     ; preds = %block_0x94.i, %block_0xa0.i
  %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_106126.i17 = load i8*, i8** %75, align 8
  %_new_gep_107.i = getelementptr i8, i8* %_RBP_ptr_107.sroa.0.i.0._RBP_ptr_107.sroa.0.0._RBP_ptr_107.sroa.0.0._load_rbp_ptr_106126.i17, i64 -40
  %149 = bitcast i8* %_new_gep_107.i to i8**
  %150 = load i8*, i8** %149, align 8
  %151 = load i8, i8* %150, align 1, !mcsema_real_eip !23
  %152 = icmp eq i8 %151, 0
  store i1 false, i1* %CF_val.i, align 1
  br i1 %152, label %block_0xc9.i.loopexit, label %block_0x84.i, !mcsema_real_eip !24

sub_20.exit:                                      ; preds = %block_0xc9.i, %block_0xd6.i
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 32, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 40, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!4 = !{i64 44, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!5 = !{i64 48, [9 x i8] c"\09callq\090\00"}
!6 = !{i64 57, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!7 = !{i64 61, [22 x i8] c"\09movq\09-24(%rbp), %rdi\00"}
!8 = !{i64 65, [9 x i8] c"\09callq\090\00"}
!9 = !{i64 70, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!10 = !{i64 74, [20 x i8] c"\09cmpq\09$0, -32(%rbp)\00"}
!11 = !{i64 79, [8 x i8] c"\09je\09129\00"}
!12 = !{i64 214, [19 x i8] c"\09movq\09$0, -8(%rbp)\00"}
!13 = !{i64 222, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!14 = !{i64 226, [16 x i8] c"\09addq\09$48, %rsp\00"}
!15 = !{i64 231, [6 x i8] c"\09retq\00"}
!16 = !{i64 87, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!17 = !{i64 91, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!18 = !{i64 95, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!19 = !{i64 99, [22 x i8] c"\09movq\09%rax, -48(%rbp)\00"}
!20 = !{i64 103, [22 x i8] c"\09movq\09-32(%rbp), %rdi\00"}
!21 = !{i64 107, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!22 = !{i64 111, [9 x i8] c"\09callq\090\00"}
!23 = !{i64 120, [21 x i8] c"\09movsbl\09(%rax), %ecx\00"}
!24 = !{i64 126, [7 x i8] c"\09je\0969\00"}
!25 = !{i64 201, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!26 = !{i64 205, [21 x i8] c"\09movq\09%rax, -8(%rbp)\00"}
!27 = !{i64 136, [21 x i8] c"\09movsbl\09(%rax), %ecx\00"}
!28 = !{i64 142, [8 x i8] c"\09jne\0912\00"}
!29 = !{i64 164, [18 x i8] c"\09movb\09(%rax), %cl\00"}
!30 = !{i64 170, [18 x i8] c"\09movb\09%cl, (%rax)\00"}
!31 = !{i64 172, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!32 = !{i64 180, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!33 = !{i64 184, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!34 = !{i64 192, [22 x i8] c"\09movq\09%rax, -48(%rbp)\00"}
!35 = !{i64 196, [9 x i8] c"\09jmp\09-85\00"}
!36 = !{i64 152, [18 x i8] c"\09movb\09$92, (%rax)\00"}
