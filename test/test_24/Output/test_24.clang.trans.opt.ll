; ModuleID = 'Output/test_24.clang.trans.opt.bc'
source_filename = "Output/test_24.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @to_byte(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_RSP_ptr_257.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_258.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_259.i = alloca [88 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %CF_val.i = alloca i1, align 1, !mcsema_real_eip !2
  %_RSP_ptr_257.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_257.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_257.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_258.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_258.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_258.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_259.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 88, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %CF_val.i.0..sroa_cast = bitcast i1* %CF_val.i to i8*
  call void @llvm.lifetime.start(i64 1, i8* nonnull %CF_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_259.i, i64 0, i64 88
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_257.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %9 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %11 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %13 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %15 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %17 = load i1, i1* %CF.i, align 1, !mcsema_real_eip !2
  store i1 %17, i1* %CF_val.i, align 1
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %18 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %19 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %20 = bitcast x86_fp80* %19 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %23 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %36 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %37 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %43 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %45 = bitcast i8* %44 to i64*
  %46 = load i64, i64* %45, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %47 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %48 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %49 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %50 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %67 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %68 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_260.i = load i64, i64* %_RBP_ptr_258.sroa.0.i, align 8
  %69 = bitcast i64* %_RSP_ptr_257.sroa.0.i to i8**
  %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_266.i9 = load i8*, i8** %69, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_266.i9, i64 -8
  %70 = add i64 %7, -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_260.i, i64* %_allin_new_bt_.i, align 8
  %71 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %71, i64* %_RBP_ptr_258.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_266.i9, i64 -88
  %72 = add i64 %7, -88
  %73 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %73, i64* %_RSP_ptr_257.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_266.i9, i64 -24
  %_allin_new_bt_4.i = bitcast i8* %_new_gep_3.i to i64*
  store i64 %6, i64* %_allin_new_bt_4.i, align 8, !mcsema_real_eip !3
  %74 = bitcast i64* %_RBP_ptr_258.sroa.0.i to i8**
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_5267.i10 = load i8*, i8** %74, align 8
  %_new_gep_6.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_5267.i10, i64 -16
  %_allin_new_bt_7.i = bitcast i8* %_new_gep_6.i to i64*
  %75 = load i64, i64* %_allin_new_bt_7.i, align 8, !mcsema_real_eip !4
  %76 = tail call x86_64_sysvcc i64 @strlen(i64 %75), !mcsema_real_eip !5
  %_new_gep_9.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_5267.i10, i64 -32
  %77 = trunc i64 %76 to i32, !mcsema_real_eip !6
  %78 = bitcast i8* %_new_gep_9.i to i32*
  store i32 %77, i32* %78, align 4, !mcsema_real_eip !6
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_11268.i11 = load i8*, i8** %74, align 8
  %_new_gep_12.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_11268.i11, i64 -32
  %79 = bitcast i8* %_new_gep_12.i to i32*
  %80 = load i32, i32* %79, align 4, !mcsema_real_eip !7
  %81 = icmp eq i32 %80, 37
  %82 = icmp ult i32 %80, 37, !mcsema_real_eip !7
  store i1 %82, i1* %CF_val.i, align 1
  br i1 %81, label %block_0x2f.i, label %block_0x24.i, !mcsema_real_eip !8

block_0x2f.i:                                     ; preds = %driverBlockRaw
  %_new_gep_15.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_11268.i11, i64 -16
  %_allin_new_bt_16.i = bitcast i8* %_new_gep_15.i to i64*
  %83 = load i64, i64* %_allin_new_bt_16.i, align 8, !mcsema_real_eip !9
  %uadd139.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %83, i64 4)
  %84 = extractvalue { i64, i1 } %uadd139.i, 0
  %85 = extractvalue { i64, i1 } %uadd139.i, 1
  store i1 %85, i1* %CF_val.i, align 1
  store i64 %84, i64* %_allin_new_bt_16.i, align 8, !mcsema_real_eip !10
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_20273.i14 = load i8*, i8** %74, align 8
  %_new_gep_21.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_20273.i14, i64 -16
  %_allin_new_bt_22.i = bitcast i8* %_new_gep_21.i to i64*
  %86 = load i64, i64* %_allin_new_bt_22.i, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8, i8* %87, align 1, !mcsema_real_eip !11
  %89 = sext i8 %88 to i64
  %90 = and i64 %89, 4294967295
  %91 = icmp eq i8 %88, 100
  %92 = icmp ult i8 %88, 100
  store i1 %92, i1* %CF_val.i, align 1
  br i1 %91, label %block_0x57.i, label %block_0x41a.i, !mcsema_real_eip !12

block_0x24.i:                                     ; preds = %driverBlockRaw
  %93 = and i64 %76, 4294967295
  br label %block_0x41a.i, !mcsema_real_eip !13

block_0x41a.i:                                    ; preds = %block_0x33b.i, %block_0x2d5.i, %block_0x283.i, %block_0x28f.i, %block_0x1cc.i, %block_0x10e.i, %block_0xa4.i, %block_0x79.i, %block_0x57.i, %block_0x24.i, %block_0x2f.i
  %_load_rbp_ptr_342.sink.i = phi i8* [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_324319.i38, %block_0x33b.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_156293.i23, %block_0x1cc.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_62279.i16, %block_0x10e.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_11268.i11, %block_0x24.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_20273.i14, %block_0x2f.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_20273.i14, %block_0x57.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_51276.i15, %block_0x79.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_62279.i16, %block_0xa4.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_279339.i47, %block_0x283.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_252310.i32, %block_0x28f.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_288313.i33, %block_0x2d5.i ]
  %RDI_val.0.i = phi i64 [ %RDI_val.2.i, %block_0x33b.i ], [ %RDI_val.1.i, %block_0x1cc.i ], [ 2, %block_0x10e.i ], [ %75, %block_0x24.i ], [ %75, %block_0x2f.i ], [ %117, %block_0x57.i ], [ %126, %block_0x79.i ], [ 2, %block_0xa4.i ], [ %307, %block_0x283.i ], [ %286, %block_0x28f.i ], [ %RDI_val.2.i, %block_0x2d5.i ]
  %RSI_val.0.i = phi i64 [ %RSI_val.1.i, %block_0x33b.i ], [ %5, %block_0x1cc.i ], [ %5, %block_0x10e.i ], [ %5, %block_0x24.i ], [ %5, %block_0x2f.i ], [ %5, %block_0x57.i ], [ %5, %block_0x79.i ], [ %5, %block_0xa4.i ], [ %309, %block_0x283.i ], [ %288, %block_0x28f.i ], [ %RSI_val.1.i, %block_0x2d5.i ]
  %RDX_val.0.i = phi i64 [ %366, %block_0x33b.i ], [ %199, %block_0x1cc.i ], [ %152, %block_0x10e.i ], [ %4, %block_0x24.i ], [ %4, %block_0x2f.i ], [ %4, %block_0x57.i ], [ %4, %block_0x79.i ], [ %152, %block_0xa4.i ], [ 8, %block_0x283.i ], [ 8, %block_0x28f.i ], [ 8, %block_0x2d5.i ]
  %RCX_val.0.i = phi i64 [ %339, %block_0x33b.i ], [ %212, %block_0x1cc.i ], [ %RCX_val.1.i, %block_0x10e.i ], [ %93, %block_0x24.i ], [ %90, %block_0x2f.i ], [ %90, %block_0x57.i ], [ %90, %block_0x79.i ], [ %90, %block_0xa4.i ], [ %228, %block_0x283.i ], [ %228, %block_0x28f.i ], [ %228, %block_0x2d5.i ]
  %.sink1.i = phi i32 [ %345, %block_0x33b.i ], [ -7, %block_0x1cc.i ], [ -6, %block_0x10e.i ], [ %80, %block_0x24.i ], [ -2, %block_0x2f.i ], [ -3, %block_0x57.i ], [ -4, %block_0x79.i ], [ -5, %block_0xa4.i ], [ -21, %block_0x283.i ], [ -21, %block_0x28f.i ], [ -22, %block_0x2d5.i ]
  %_new_gep_346.i = getelementptr i8, i8* %_load_rbp_ptr_342.sink.i, i64 -4
  %94 = bitcast i8* %_new_gep_346.i to i32*
  store i32 %.sink1.i, i32* %94, align 4
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_29270.i12 = load i8*, i8** %74, align 8
  %_new_gep_30.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_29270.i12, i64 -4
  %95 = bitcast i8* %_new_gep_30.i to i32*
  %96 = load i32, i32* %95, align 4, !mcsema_real_eip !14
  %97 = zext i32 %96 to i64, !mcsema_real_eip !14
  %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_32271.i13 = load i8*, i8** %69, align 8
  %_new_gep_33.i = getelementptr i8, i8* %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_32271.i13, i64 80
  %98 = xor i64 %70, %72, !mcsema_real_eip !15
  %99 = and i64 %98, 16
  %100 = icmp eq i64 %99, 0
  %101 = icmp slt i64 %70, 0
  %102 = icmp eq i64 %70, 0, !mcsema_real_eip !15
  %103 = add i64 %7, 9223372036854775720
  %104 = and i64 %98, %103, !mcsema_real_eip !15
  %105 = icmp slt i64 %104, 0
  %106 = trunc i64 %70 to i8, !mcsema_real_eip !15
  %107 = tail call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !15
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  %110 = ptrtoint i8* %_new_gep_33.i to i64
  %111 = and i64 %110, 1
  %_new_ptr2int_34.i = icmp ne i64 %111, 0
  store volatile i1 %_new_ptr2int_34.i, i1* %CF_val.i, align 1
  store volatile i64 %110, i64* %_RSP_ptr_257.sroa.0.i, align 8
  %_allin_new_bt_35.i = bitcast i8* %_new_gep_33.i to i64*
  %112 = load i64, i64* %_allin_new_bt_35.i, align 8
  store volatile i64 %112, i64* %_RBP_ptr_258.sroa.0.i, align 8
  %_new_gep_36.i = getelementptr i8, i8* %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_32271.i13, i64 96
  %113 = ptrtoint i8* %_new_gep_36.i to i64
  store volatile i64 %113, i64* %_RSP_ptr_257.sroa.0.i, align 8
  store i64 %97, i64* %RAX.i, align 8, !mcsema_real_eip !16
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !16
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !16
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store volatile i64 %113, i64* %RSP.i, align 8
  store volatile i64 %112, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !16
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !16
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !16
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !16
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !16
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !16
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !16
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !16
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %_new_ptr2int_34.i, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %109, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %100, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %102, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %101, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %105, i1* %OF.i, align 1, !mcsema_real_eip !16
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !16
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !16
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !16
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !16
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !16
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !16
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !16
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !16
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !16
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !16
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !16
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !16
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !16
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !16
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !16
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !16
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !16
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !16
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !16
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !16
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !16
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !16
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !16
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !16
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !16
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !16
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !16
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !16
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !16
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !16
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_257.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_258.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 88, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %CF_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x57.i:                                     ; preds = %block_0x2f.i
  %114 = add i64 %86, 1, !mcsema_real_eip !17
  %115 = inttoptr i64 %114 to i8*
  %116 = load i8, i8* %115, align 1, !mcsema_real_eip !17
  %117 = zext i8 %116 to i64
  %118 = tail call x86_64_sysvcc i64 @to_byte(i64 %117), !mcsema_real_eip !18
  %119 = trunc i64 %118 to i32, !mcsema_real_eip !19
  %120 = icmp eq i32 %119, 9
  %121 = icmp ult i32 %119, 9, !mcsema_real_eip !19
  store i1 %121, i1* %CF_val.i, align 1
  br i1 %120, label %block_0x79.i, label %block_0x41a.i, !mcsema_real_eip !20

block_0x79.i:                                     ; preds = %block_0x57.i
  %122 = load i64, i64* %_allin_new_bt_22.i, align 8, !mcsema_real_eip !21
  %123 = add i64 %122, 2, !mcsema_real_eip !22
  %124 = inttoptr i64 %123 to i8*
  %125 = load i8, i8* %124, align 1, !mcsema_real_eip !22
  %126 = zext i8 %125 to i64
  %127 = tail call x86_64_sysvcc i64 @to_byte(i64 %126), !mcsema_real_eip !23
  %_new_gep_49.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_20273.i14, i64 -24
  %128 = trunc i64 %127 to i32, !mcsema_real_eip !24
  %129 = bitcast i8* %_new_gep_49.i to i32*
  store i32 %128, i32* %129, align 4, !mcsema_real_eip !24
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_51276.i15 = load i8*, i8** %74, align 8
  %_new_gep_52.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_51276.i15, i64 -24
  %130 = bitcast i8* %_new_gep_52.i to i32*
  %131 = load i32, i32* %130, align 4, !mcsema_real_eip !25
  %132 = shl i32 %131, 1, !mcsema_real_eip !26
  %133 = icmp eq i32 %132, 26
  %134 = icmp ult i32 %132, 26, !mcsema_real_eip !27
  store i1 %134, i1* %CF_val.i, align 1
  br i1 %133, label %block_0xa4.i, label %block_0x41a.i, !mcsema_real_eip !28

block_0xa4.i:                                     ; preds = %block_0x79.i
  %_new_gep_57.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_51276.i15, i64 -16
  %_allin_new_bt_58.i = bitcast i8* %_new_gep_57.i to i64*
  %135 = load i64, i64* %_allin_new_bt_58.i, align 8, !mcsema_real_eip !29
  %136 = add i64 %135, 3, !mcsema_real_eip !30
  %137 = inttoptr i64 %136 to i8*
  %138 = load i8, i8* %137, align 1, !mcsema_real_eip !30
  %139 = zext i8 %138 to i64
  %140 = tail call x86_64_sysvcc i64 @to_byte(i64 %139), !mcsema_real_eip !31
  %_new_gep_60.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_51276.i15, i64 -28
  %141 = trunc i64 %140 to i32, !mcsema_real_eip !32
  %142 = bitcast i8* %_new_gep_60.i to i32*
  store i32 %141, i32* %142, align 4, !mcsema_real_eip !32
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_62279.i16 = load i8*, i8** %74, align 8
  %_new_gep_63.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_62279.i16, i64 -28
  %143 = bitcast i8* %_new_gep_63.i to i32*
  %144 = load i32, i32* %143, align 4, !mcsema_real_eip !33
  %145 = add i32 %144, 1
  %.lobit.i = ashr i32 %145, 31
  %146 = zext i32 %.lobit.i to i64, !mcsema_real_eip !34
  %147 = shl nuw i64 %146, 32, !mcsema_real_eip !35
  %148 = sext i32 %145 to i64, !mcsema_real_eip !35
  %149 = or i64 %147, %148, !mcsema_real_eip !35
  %150 = sdiv i64 %149, 2, !mcsema_real_eip !35
  %151 = srem i64 %149, 2, !mcsema_real_eip !35
  %152 = and i64 %151, 4294967295
  %153 = trunc i64 %150 to i32, !mcsema_real_eip !36
  %154 = icmp eq i32 %153, 7
  %155 = icmp ult i32 %153, 7, !mcsema_real_eip !36
  store i1 %155, i1* %CF_val.i, align 1
  br i1 %154, label %block_0xd7.i, label %block_0x41a.i, !mcsema_real_eip !37

block_0xd7.i:                                     ; preds = %block_0xa4.i
  %_new_gep_68.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_62279.i16, i64 -16
  %_allin_new_bt_69.i = bitcast i8* %_new_gep_68.i to i64*
  %156 = load i64, i64* %_allin_new_bt_69.i, align 8, !mcsema_real_eip !38
  %157 = add i64 %156, 4
  %158 = inttoptr i64 %157 to i8*
  %159 = load i8, i8* %158, align 1, !mcsema_real_eip !39
  %160 = and i8 %159, 15
  %161 = icmp eq i8 %160, 0
  %162 = icmp eq i8 %160, 1
  store i1 %161, i1* %CF_val.i, align 1
  br i1 %162, label %block_0xeb.i, label %block_0x10e.i, !mcsema_real_eip !40

block_0x10e.i:                                    ; preds = %block_0xeb.i, %block_0xd7.i
  %RCX_val.1.in.i = phi i8 [ %164, %block_0xeb.i ], [ %160, %block_0xd7.i ]
  %RCX_val.1.i = zext i8 %RCX_val.1.in.i to i64
  br label %block_0x41a.i, !mcsema_real_eip !41

block_0xeb.i:                                     ; preds = %block_0xd7.i
  %163 = load i8, i8* %158, align 1, !mcsema_real_eip !42
  %164 = and i8 %163, -16
  %165 = icmp eq i8 %164, 48
  %166 = icmp ult i8 %163, 48
  store i1 %166, i1* %CF_val.i, align 1
  br i1 %165, label %block_0x102.i, label %block_0x10e.i, !mcsema_real_eip !43

block_0x102.i:                                    ; preds = %block_0xeb.i
  %_new_gep_79.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_62279.i16, i64 -20
  %167 = bitcast i8* %_new_gep_79.i to i32*
  store i32 -4, i32* %167, align 4, !mcsema_real_eip !44
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_81283.i17 = load i8*, i8** %74, align 8
  %_new_gep_82.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_81283.i17, i64 -16
  %_allin_new_bt_83.i = bitcast i8* %_new_gep_82.i to i64*
  %168 = load i64, i64* %_allin_new_bt_83.i, align 8, !mcsema_real_eip !45
  %169 = add i64 %168, 5, !mcsema_real_eip !46
  %170 = inttoptr i64 %169 to i8*
  %171 = load i8, i8* %170, align 1, !mcsema_real_eip !46
  %172 = and i8 %171, 15
  store i1 false, i1* %CF_val.i, align 1
  %_new_gep_85.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_81283.i17, i64 -33
  store i8 %172, i8* %_new_gep_85.i, align 1, !mcsema_real_eip !47
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_87284.i18 = load i8*, i8** %74, align 8
  %_new_gep_88.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_87284.i18, i64 -16
  %_allin_new_bt_89.i = bitcast i8* %_new_gep_88.i to i64*
  %173 = load i64, i64* %_allin_new_bt_89.i, align 8, !mcsema_real_eip !48
  %174 = add i64 %173, 5, !mcsema_real_eip !49
  %175 = inttoptr i64 %174 to i8*
  %176 = load i8, i8* %175, align 1, !mcsema_real_eip !49
  %177 = and i8 %176, -16
  store i1 false, i1* %CF_val.i, align 1
  %_new_gep_91.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_87284.i18, i64 -34
  store i8 %177, i8* %_new_gep_91.i, align 1, !mcsema_real_eip !50
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_93285.i19 = load i8*, i8** %74, align 8
  %_new_gep_94.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_93285.i19, i64 -33
  %178 = load i8, i8* %_new_gep_94.i, align 1, !mcsema_real_eip !51
  %179 = icmp eq i8 %178, 3
  %180 = icmp ult i8 %178, 3
  store i1 %180, i1* %CF_val.i, align 1
  br i1 %179, label %block_0x14a.i, label %block_0x165.i, !mcsema_real_eip !52

block_0x165.i:                                    ; preds = %block_0x14a.i, %block_0x102.i
  %_new_gep_97.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_93285.i19, i64 -20
  %181 = bitcast i8* %_new_gep_97.i to i32*
  %182 = load i32, i32* %181, align 4, !mcsema_real_eip !53
  %uadd151.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %182, i32 5)
  %183 = extractvalue { i32, i1 } %uadd151.i, 0
  %184 = extractvalue { i32, i1 } %uadd151.i, 1
  store i1 %184, i1* %CF_val.i, align 1
  store i32 %183, i32* %181, align 4, !mcsema_real_eip !54
  br label %block_0x1b7.i

block_0x14a.i:                                    ; preds = %block_0x102.i
  %_new_gep_121.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_93285.i19, i64 -34
  %185 = load i8, i8* %_new_gep_121.i, align 1, !mcsema_real_eip !55
  %186 = icmp eq i8 %185, 96
  %187 = icmp ult i8 %185, 96
  store i1 %187, i1* %CF_val.i, align 1
  br i1 %186, label %block_0x157.i, label %block_0x165.i, !mcsema_real_eip !56

block_0x157.i:                                    ; preds = %block_0x14a.i
  %_new_gep_124.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_93285.i19, i64 -20
  %188 = bitcast i8* %_new_gep_124.i to i32*
  %189 = load i32, i32* %188, align 4, !mcsema_real_eip !57
  %uadd141.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %189, i32 4)
  %190 = extractvalue { i32, i1 } %uadd141.i, 0
  %191 = extractvalue { i32, i1 } %uadd141.i, 1
  store i1 %191, i1* %CF_val.i, align 1
  store i32 %190, i32* %188, align 4, !mcsema_real_eip !58
  br label %block_0x1b7.i

block_0x1b7.i:                                    ; preds = %block_0x157.i, %block_0x165.i
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_129348.i20 = load i8*, i8** %74, align 8
  %_new_gep_130.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_129348.i20, i64 -16
  %_allin_new_bt_131.i = bitcast i8* %_new_gep_130.i to i64*
  %192 = load i64, i64* %_allin_new_bt_131.i, align 8
  %193 = add i64 %192, 6
  %194 = inttoptr i64 %193 to i8*
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i64
  %197 = tail call x86_64_sysvcc i64 @to_byte(i64 %196)
  %_new_gep_133.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_129348.i20, i64 -35
  %198 = trunc i64 %197 to i8
  store i8 %198, i8* %_new_gep_133.i, align 1
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_135350.i21 = load i8*, i8** %74, align 8
  %_new_gep_136.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_135350.i21, i64 -16
  %_allin_new_bt_137.i = bitcast i8* %_new_gep_136.i to i64*
  %199 = load i64, i64* %_allin_new_bt_137.i, align 8
  %200 = add i64 %199, 7
  %201 = inttoptr i64 %200 to i8*
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i64
  %204 = tail call x86_64_sysvcc i64 @to_byte(i64 %203)
  %_new_gep_139.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_135350.i21, i64 -35
  %205 = load i8, i8* %_new_gep_139.i, align 1
  %206 = zext i8 %205 to i32
  %207 = trunc i64 %204 to i32
  %208 = or i32 %206, %207
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %_new_gep_139.i, align 1
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_147292.i22 = load i8*, i8** %74, align 8
  %_new_gep_148.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_147292.i22, i64 -20
  %210 = bitcast i8* %_new_gep_148.i to i32*
  %211 = load i32, i32* %210, align 4, !mcsema_real_eip !59
  %212 = zext i32 %211 to i64, !mcsema_real_eip !59
  %213 = and i32 %211, 31, !mcsema_real_eip !60
  %214 = add i32 %211, -1
  %215 = icmp ne i32 %213, 0, !mcsema_real_eip !60
  %216 = select i1 %215, i32 %214, i32 0, !mcsema_real_eip !60
  %217 = zext i1 %215 to i32
  %218 = shl i32 %211, %216, !mcsema_real_eip !60
  %219 = shl i32 %218, %217, !mcsema_real_eip !60
  store i32 %219, i32* %210, align 4, !mcsema_real_eip !61
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_156293.i23 = load i8*, i8** %74, align 8
  %_new_gep_157.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_156293.i23, i64 -20
  %220 = bitcast i8* %_new_gep_157.i to i32*
  %221 = load i32, i32* %220, align 4, !mcsema_real_eip !62
  %222 = icmp eq i32 %221, 0, !mcsema_real_eip !62
  store i1 false, i1* %CF_val.i, align 1
  br i1 %222, label %block_0x1d8.i, label %block_0x1cc.i, !mcsema_real_eip !63

block_0x1d8.i:                                    ; preds = %block_0x1b7.i
  %_new_gep_160.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_156293.i23, i64 -16
  %_allin_new_bt_161.i = bitcast i8* %_new_gep_160.i to i64*
  %223 = load i64, i64* %_allin_new_bt_161.i, align 8, !mcsema_real_eip !64
  %224 = add i64 %223, 8
  %225 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %224, i64 4), !mcsema_real_eip !65
  %226 = and i64 %225, 65535
  %227 = and i64 %212, 4294901760, !mcsema_real_eip !66
  %228 = or i64 %226, %227
  %_new_gep_163.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_156293.i23, i64 -38
  %229 = trunc i64 %225 to i16, !mcsema_real_eip !67
  %230 = bitcast i8* %_new_gep_163.i to i16*
  store i16 %229, i16* %230, align 2, !mcsema_real_eip !67
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_165296.i24 = load i8*, i8** %74, align 8
  %_new_gep_166.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_165296.i24, i64 -38
  %231 = bitcast i8* %_new_gep_166.i to i16*
  %232 = load i16, i16* %231, align 2, !mcsema_real_eip !68
  %233 = or i16 %232, 21845
  %234 = icmp eq i16 %233, -8873
  %235 = icmp ult i16 %233, -8873
  store i1 %235, i1* %CF_val.i, align 1
  br i1 %234, label %block_0x20a.i, label %block_0x22a.i, !mcsema_real_eip !69

block_0x1cc.i:                                    ; preds = %block_0x1b7.i
  %RDI_val.1.i = zext i32 %208 to i64
  br label %block_0x41a.i, !mcsema_real_eip !70

block_0x22a.i:                                    ; preds = %block_0x20a.i, %block_0x1d8.i
  %_new_gep_172.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_165296.i24, i64 -20
  %236 = bitcast i8* %_new_gep_172.i to i32*
  store i32 48059, i32* %236, align 4, !mcsema_real_eip !71
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_174298.i25 = load i8*, i8** %74, align 8
  %_new_gep_175.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_174298.i25, i64 -16
  %_allin_new_bt_176.i = bitcast i8* %_new_gep_175.i to i64*
  %237 = load i64, i64* %_allin_new_bt_176.i, align 8, !mcsema_real_eip !72
  %238 = add i64 %237, 12
  %239 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %238, i64 8), !mcsema_real_eip !73
  %_new_gep_178.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_174298.i25, i64 -44
  %240 = trunc i64 %239 to i32, !mcsema_real_eip !74
  %241 = bitcast i8* %_new_gep_178.i to i32*
  store i32 %240, i32* %241, align 4, !mcsema_real_eip !74
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_180300.i26 = load i8*, i8** %74, align 8
  %_new_gep_181.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_180300.i26, i64 -44
  %242 = bitcast i8* %_new_gep_181.i to i32*
  %243 = load i32, i32* %242, align 4, !mcsema_real_eip !75
  %244 = xor i32 %243, -1534560611, !mcsema_real_eip !76
  %_new_gep_184.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_180300.i26, i64 -48
  %245 = bitcast i8* %_new_gep_184.i to i32*
  store i32 %244, i32* %245, align 4, !mcsema_real_eip !77
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_186301.i27 = load i8*, i8** %74, align 8
  %_new_gep_187.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_186301.i27, i64 -48
  %246 = bitcast i8* %_new_gep_187.i to i32*
  %247 = load i32, i32* %246, align 4, !mcsema_real_eip !78
  %248 = lshr i32 %247, 16
  %_new_gep_190.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_186301.i27, i64 -52
  %249 = bitcast i8* %_new_gep_190.i to i32*
  store i32 %248, i32* %249, align 4, !mcsema_real_eip !79
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_192303.i28 = load i8*, i8** %74, align 8
  %_new_gep_193.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_192303.i28, i64 -48
  %250 = bitcast i8* %_new_gep_193.i to i32*
  %251 = load i32, i32* %250, align 4, !mcsema_real_eip !80
  %252 = and i32 %251, 65535, !mcsema_real_eip !81
  %_new_gep_196.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_192303.i28, i64 -56
  %253 = bitcast i8* %_new_gep_196.i to i32*
  store i32 %252, i32* %253, align 4, !mcsema_real_eip !82
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_198304.i29 = load i8*, i8** %74, align 8
  %_new_gep_199.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_198304.i29, i64 -52
  %254 = bitcast i8* %_new_gep_199.i to i32*
  %255 = load i32, i32* %254, align 4, !mcsema_real_eip !83
  %256 = icmp eq i32 %255, 20299
  %257 = icmp ult i32 %255, 20299, !mcsema_real_eip !83
  store i1 %257, i1* %CF_val.i, align 1
  br i1 %256, label %block_0x277.i, label %block_0x28f.i, !mcsema_real_eip !84

block_0x20a.i:                                    ; preds = %block_0x1d8.i
  %258 = or i16 %232, -21846
  %259 = icmp eq i16 %258, -325
  %260 = icmp ult i16 %258, -325
  store i1 %260, i1* %CF_val.i, align 1
  br i1 %259, label %block_0x21e.i, label %block_0x22a.i, !mcsema_real_eip !85

block_0x21e.i:                                    ; preds = %block_0x20a.i
  %_new_gep_205.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_165296.i24, i64 -20
  %261 = bitcast i8* %_new_gep_205.i to i32*
  store i32 43690, i32* %261, align 4, !mcsema_real_eip !86
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_207341.i48 = load i8*, i8** %74, align 8
  %_new_gep_208.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_207341.i48, i64 -16
  %_allin_new_bt_209.i = bitcast i8* %_new_gep_208.i to i64*
  %262 = load i64, i64* %_allin_new_bt_209.i, align 8, !mcsema_real_eip !72
  %263 = add i64 %262, 12
  %264 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %263, i64 8), !mcsema_real_eip !73
  %_new_gep_211.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_207341.i48, i64 -44
  %265 = trunc i64 %264 to i32, !mcsema_real_eip !74
  %266 = bitcast i8* %_new_gep_211.i to i32*
  store i32 %265, i32* %266, align 4, !mcsema_real_eip !74
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_213343.i49 = load i8*, i8** %74, align 8
  %_new_gep_214.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_213343.i49, i64 -44
  %267 = bitcast i8* %_new_gep_214.i to i32*
  %268 = load i32, i32* %267, align 4, !mcsema_real_eip !75
  %269 = xor i32 %268, -1534560611, !mcsema_real_eip !76
  %_new_gep_217.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_213343.i49, i64 -48
  %270 = bitcast i8* %_new_gep_217.i to i32*
  store i32 %269, i32* %270, align 4, !mcsema_real_eip !77
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_219344.i50 = load i8*, i8** %74, align 8
  %_new_gep_220.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_219344.i50, i64 -48
  %271 = bitcast i8* %_new_gep_220.i to i32*
  %272 = load i32, i32* %271, align 4, !mcsema_real_eip !78
  %273 = lshr i32 %272, 16
  %_new_gep_223.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_219344.i50, i64 -52
  %274 = bitcast i8* %_new_gep_223.i to i32*
  store i32 %273, i32* %274, align 4, !mcsema_real_eip !79
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_225346.i51 = load i8*, i8** %74, align 8
  %_new_gep_226.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_225346.i51, i64 -48
  %275 = bitcast i8* %_new_gep_226.i to i32*
  %276 = load i32, i32* %275, align 4, !mcsema_real_eip !80
  %277 = and i32 %276, 65535, !mcsema_real_eip !81
  %_new_gep_229.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_225346.i51, i64 -56
  %278 = bitcast i8* %_new_gep_229.i to i32*
  store i32 %277, i32* %278, align 4, !mcsema_real_eip !82
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_231347.i52 = load i8*, i8** %74, align 8
  %_new_gep_232.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_231347.i52, i64 -52
  %279 = bitcast i8* %_new_gep_232.i to i32*
  %280 = load i32, i32* %279, align 4, !mcsema_real_eip !83
  %281 = icmp eq i32 %280, 20299
  %282 = icmp ult i32 %280, 20299, !mcsema_real_eip !83
  store i1 %282, i1* %CF_val.i, align 1
  br i1 %281, label %block_0x277.i, label %block_0x28f.i, !mcsema_real_eip !84

block_0x28f.i:                                    ; preds = %block_0x277.i, %block_0x21e.i, %block_0x22a.i
  %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_234305.i = phi i8* [ %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_255334.i, %block_0x277.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_231347.i52, %block_0x21e.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_198304.i29, %block_0x22a.i ]
  %_new_gep_235.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_234305.i, i64 -20
  %283 = bitcast i8* %_new_gep_235.i to i32*
  store i32 48351, i32* %283, align 4, !mcsema_real_eip !87
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_237306.i30 = load i8*, i8** %74, align 8
  %_new_gep_238.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_237306.i30, i64 -20
  %284 = bitcast i8* %_new_gep_238.i to i32*
  %285 = load i32, i32* %284, align 4, !mcsema_real_eip !88
  %286 = zext i32 %285 to i64, !mcsema_real_eip !88
  %_new_gep_241.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_237306.i30, i64 -16
  %_allin_new_bt_242.i = bitcast i8* %_new_gep_241.i to i64*
  %287 = load i64, i64* %_allin_new_bt_242.i, align 8, !mcsema_real_eip !89
  %288 = add i64 %287, 20
  %289 = tail call x86_64_sysvcc i64 @read_bytes(i64 %286, i64 %288, i64 8), !mcsema_real_eip !90
  %_new_gep_244.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_237306.i30, i64 -60
  %290 = trunc i64 %289 to i32, !mcsema_real_eip !91
  %291 = bitcast i8* %_new_gep_244.i to i32*
  store i32 %290, i32* %291, align 4, !mcsema_real_eip !91
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_246308.i31 = load i8*, i8** %74, align 8
  %_new_gep_247.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_246308.i31, i64 -60
  %292 = bitcast i8* %_new_gep_247.i to i32*
  %293 = load i32, i32* %292, align 4, !mcsema_real_eip !92
  %294 = add i32 %293, -3
  store i32 %294, i32* %292, align 4, !mcsema_real_eip !93
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_252310.i32 = load i8*, i8** %74, align 8
  %_new_gep_253.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_252310.i32, i64 -60
  %295 = bitcast i8* %_new_gep_253.i to i32*
  %296 = load i32, i32* %295, align 4, !mcsema_real_eip !94
  %297 = and i32 %296, 7, !mcsema_real_eip !95
  %298 = icmp eq i32 %297, 0, !mcsema_real_eip !95
  store i1 false, i1* %CF_val.i, align 1
  br i1 %298, label %block_0x2d5.i, label %block_0x41a.i, !mcsema_real_eip !96

block_0x277.i:                                    ; preds = %block_0x21e.i, %block_0x22a.i
  %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_255334.i = phi i8* [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_231347.i52, %block_0x21e.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_198304.i29, %block_0x22a.i ]
  %_new_gep_256.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_255334.i, i64 -56
  %299 = bitcast i8* %_new_gep_256.i to i32*
  %300 = load i32, i32* %299, align 4, !mcsema_real_eip !97
  %_new_gep_259.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_255334.i, i64 -20
  %301 = bitcast i8* %_new_gep_259.i to i32*
  %302 = load i32, i32* %301, align 4, !mcsema_real_eip !98
  %303 = icmp eq i32 %300, %302
  %304 = icmp ult i32 %300, %302, !mcsema_real_eip !98
  store i1 %304, i1* %CF_val.i, align 1
  br i1 %303, label %block_0x283.i, label %block_0x28f.i, !mcsema_real_eip !99

block_0x283.i:                                    ; preds = %block_0x277.i
  store i32 0, i32* %301, align 4, !mcsema_real_eip !100
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_264335.i45 = load i8*, i8** %74, align 8
  %_new_gep_265.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_264335.i45, i64 -20
  %305 = bitcast i8* %_new_gep_265.i to i32*
  %306 = load i32, i32* %305, align 4, !mcsema_real_eip !88
  %307 = zext i32 %306 to i64, !mcsema_real_eip !88
  %_new_gep_268.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_264335.i45, i64 -16
  %_allin_new_bt_269.i = bitcast i8* %_new_gep_268.i to i64*
  %308 = load i64, i64* %_allin_new_bt_269.i, align 8, !mcsema_real_eip !89
  %309 = add i64 %308, 20
  %310 = tail call x86_64_sysvcc i64 @read_bytes(i64 %307, i64 %309, i64 8), !mcsema_real_eip !90
  %_new_gep_271.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_264335.i45, i64 -60
  %311 = trunc i64 %310 to i32, !mcsema_real_eip !91
  %312 = bitcast i8* %_new_gep_271.i to i32*
  store i32 %311, i32* %312, align 4, !mcsema_real_eip !91
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_273337.i46 = load i8*, i8** %74, align 8
  %_new_gep_274.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_273337.i46, i64 -60
  %313 = bitcast i8* %_new_gep_274.i to i32*
  %314 = load i32, i32* %313, align 4, !mcsema_real_eip !92
  %315 = add i32 %314, -3
  store i32 %315, i32* %313, align 4, !mcsema_real_eip !93
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_279339.i47 = load i8*, i8** %74, align 8
  %_new_gep_280.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_279339.i47, i64 -60
  %316 = bitcast i8* %_new_gep_280.i to i32*
  %317 = load i32, i32* %316, align 4, !mcsema_real_eip !94
  %318 = and i32 %317, 7, !mcsema_real_eip !95
  %319 = icmp eq i32 %318, 0, !mcsema_real_eip !95
  store i1 false, i1* %CF_val.i, align 1
  br i1 %319, label %block_0x2d5.i, label %block_0x41a.i, !mcsema_real_eip !96

block_0x2d5.i:                                    ; preds = %block_0x283.i, %block_0x28f.i
  %320 = phi i32 [ %317, %block_0x283.i ], [ %296, %block_0x28f.i ]
  %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_282312.i = phi i8* [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_279339.i47, %block_0x283.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_252310.i32, %block_0x28f.i ]
  %RDI_val.2.i = phi i64 [ %307, %block_0x283.i ], [ %286, %block_0x28f.i ]
  %RSI_val.1.i = phi i64 [ %309, %block_0x283.i ], [ %288, %block_0x28f.i ]
  %_new_gep_283.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_282312.i, i64 -60
  %321 = bitcast i8* %_new_gep_283.i to i32*
  %322 = xor i32 %320, -2147483648
  store i32 %322, i32* %321, align 4, !mcsema_real_eip !101
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_288313.i33 = load i8*, i8** %74, align 8
  %_new_gep_289.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_288313.i33, i64 -60
  %323 = bitcast i8* %_new_gep_289.i to i32*
  %324 = load i32, i32* %323, align 4
  %325 = icmp ult i32 %324, 268435455, !mcsema_real_eip !102
  store i1 %325, i1* %CF_val.i, align 1
  %326 = icmp ult i32 %324, 268435456
  br i1 %326, label %block_0x2f9.i, label %block_0x41a.i, !mcsema_real_eip !103

block_0x2f9.i:                                    ; preds = %block_0x2d5.i
  %327 = xor i32 %324, 13631488, !mcsema_real_eip !104
  store i32 %327, i32* %323, align 4, !mcsema_real_eip !105
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_300315.i34 = load i8*, i8** %74, align 8
  %_new_gep_301.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_300315.i34, i64 -60
  %328 = bitcast i8* %_new_gep_301.i to i32*
  %329 = load i32, i32* %328, align 4, !mcsema_real_eip !106
  %330 = lshr i32 %329, 4
  store i32 %330, i32* %328, align 4, !mcsema_real_eip !107
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_306316.i35 = load i8*, i8** %74, align 8
  %_new_gep_307.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_306316.i35, i64 -60
  %331 = bitcast i8* %_new_gep_307.i to i32*
  %332 = load i32, i32* %331, align 4, !mcsema_real_eip !108
  %333 = add i32 %332, -226
  store i32 %333, i32* %331, align 4, !mcsema_real_eip !109
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_312317.i36 = load i8*, i8** %74, align 8
  %_new_gep_313.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_312317.i36, i64 -60
  %334 = bitcast i8* %_new_gep_313.i to i32*
  %335 = load i32, i32* %334, align 4, !mcsema_real_eip !110
  %_new_gep_316.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_312317.i36, i64 -68
  %336 = bitcast i8* %_new_gep_316.i to i32*
  store i32 10000, i32* %336, align 4, !mcsema_real_eip !111
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_318318.i37 = load i8*, i8** %74, align 8
  %_new_gep_319.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_318318.i37, i64 -68
  %337 = bitcast i8* %_new_gep_319.i to i32*
  %338 = load i32, i32* %337, align 4, !mcsema_real_eip !112
  %339 = zext i32 %338 to i64, !mcsema_real_eip !112
  %340 = sext i32 %335 to i64
  %341 = udiv i64 %340, %339, !mcsema_real_eip !113
  %_new_gep_322.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_318318.i37, i64 -60
  %342 = trunc i64 %341 to i32, !mcsema_real_eip !114
  %343 = bitcast i8* %_new_gep_322.i to i32*
  store i32 %342, i32* %343, align 4, !mcsema_real_eip !114
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_324319.i38 = load i8*, i8** %74, align 8
  %_new_gep_325.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_324319.i38, i64 -60
  %344 = bitcast i8* %_new_gep_325.i to i32*
  %345 = load i32, i32* %344, align 4, !mcsema_real_eip !115
  %346 = icmp eq i32 %345, 3
  %347 = icmp ult i32 %345, 3, !mcsema_real_eip !115
  store i1 %347, i1* %CF_val.i, align 1
  br i1 %346, label %block_0x346.i, label %block_0x33b.i, !mcsema_real_eip !116

block_0x346.i:                                    ; preds = %block_0x2f9.i
  %_new_gep_331.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_324319.i38, i64 -20
  %348 = bitcast i8* %_new_gep_331.i to i32*
  %349 = load i32, i32* %348, align 4, !mcsema_real_eip !117
  %350 = zext i32 %349 to i64, !mcsema_real_eip !117
  %_new_gep_334.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_324319.i38, i64 -16
  %_allin_new_bt_335.i = bitcast i8* %_new_gep_334.i to i64*
  %351 = load i64, i64* %_allin_new_bt_335.i, align 8, !mcsema_real_eip !118
  %uadd146.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %351, i64 28)
  %352 = extractvalue { i64, i1 } %uadd146.i, 0
  %353 = extractvalue { i64, i1 } %uadd146.i, 1
  store i1 %353, i1* %CF_val.i, align 1
  %354 = tail call x86_64_sysvcc i64 @read_bytes(i64 %350, i64 %352, i64 4), !mcsema_real_eip !119
  %_new_gep_337.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_324319.i38, i64 -64
  %355 = trunc i64 %354 to i32, !mcsema_real_eip !120
  %356 = bitcast i8* %_new_gep_337.i to i32*
  store i32 %355, i32* %356, align 4, !mcsema_real_eip !120
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_339322.i39 = load i8*, i8** %74, align 8
  %_new_gep_340.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_339322.i39, i64 -16
  %_allin_new_bt_341.i = bitcast i8* %_new_gep_340.i to i64*
  %357 = load i64, i64* %_allin_new_bt_341.i, align 8, !mcsema_real_eip !121
  %358 = add i64 %357, 28
  %359 = inttoptr i64 %358 to i8*
  %360 = load i8, i8* %359, align 1, !mcsema_real_eip !122
  %361 = icmp eq i8 %360, 100
  %362 = icmp ult i8 %360, 100
  store i1 %362, i1* %CF_val.i, align 1
  %363 = add i64 %357, 29
  %364 = inttoptr i64 %363 to i8*
  br i1 %361, label %block_0x372.i, label %block_0x391.i, !mcsema_real_eip !123

block_0x33b.i:                                    ; preds = %block_0x2f9.i
  %365 = urem i64 %340, %339, !mcsema_real_eip !113
  %366 = and i64 %365, 4294967295
  br label %block_0x41a.i, !mcsema_real_eip !124

block_0x391.i:                                    ; preds = %block_0x372.i, %block_0x346.i
  %367 = load i8, i8* %359, align 1, !mcsema_real_eip !125
  %368 = load i8, i8* %364, align 1, !mcsema_real_eip !126
  %369 = icmp eq i8 %367, %368
  %370 = icmp ult i8 %367, %368
  store i1 %370, i1* %CF_val.i, align 1
  br i1 %369, label %block_0x3a9.i, label %block_0x409.i, !mcsema_real_eip !127

block_0x372.i:                                    ; preds = %block_0x346.i
  %371 = load i8, i8* %364, align 1, !mcsema_real_eip !128
  %372 = icmp eq i8 %371, 100
  %373 = icmp ult i8 %371, 100
  store i1 %373, i1* %CF_val.i, align 1
  br i1 %372, label %block_0x383.i, label %block_0x391.i, !mcsema_real_eip !129

block_0x383.i:                                    ; preds = %block_0x372.i
  %_new_gep_358.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_339322.i39, i64 -64
  %374 = bitcast i8* %_new_gep_358.i to i32*
  %375 = load i32, i32* %374, align 4, !mcsema_real_eip !130
  %_new_gep_361.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_339322.i39, i64 -20
  %376 = bitcast i8* %_new_gep_361.i to i32*
  %377 = load i32, i32* %376, align 4, !mcsema_real_eip !131
  %378 = xor i32 %377, %375, !mcsema_real_eip !131
  store i1 false, i1* %CF_val.i, align 1
  store i32 %378, i32* %376, align 4, !mcsema_real_eip !132
  br label %block_0x414.i, !mcsema_real_eip !133

block_0x409.i:                                    ; preds = %block_0x391.i
  %379 = sext i8 %367 to i64
  %380 = sext i8 %368 to i64
  %381 = and i64 %380, 4294967295
  %382 = and i64 %379, 4294967295
  %_new_gep_367.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_339322.i39, i64 -64
  %383 = bitcast i8* %_new_gep_367.i to i32*
  %384 = load i32, i32* %383, align 4, !mcsema_real_eip !134
  %_new_gep_370.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_339322.i39, i64 -20
  %385 = bitcast i8* %_new_gep_370.i to i32*
  store i32 %384, i32* %385, align 4, !mcsema_real_eip !135
  br label %block_0x414.i, !mcsema_real_eip !136

block_0x3a9.i:                                    ; preds = %block_0x391.i
  %386 = add i64 %357, 31, !mcsema_real_eip !137
  %387 = inttoptr i64 %386 to i8*
  %388 = load i8, i8* %387, align 1, !mcsema_real_eip !137
  %389 = sext i8 %388 to i32, !mcsema_real_eip !137
  %390 = add i64 %357, 30, !mcsema_real_eip !138
  %391 = inttoptr i64 %390 to i8*
  %392 = load i8, i8* %391, align 1, !mcsema_real_eip !138
  %393 = sext i8 %392 to i32, !mcsema_real_eip !138
  %394 = zext i32 %393 to i64, !mcsema_real_eip !138
  %395 = sub nsw i32 15, %389
  %396 = add nsw i32 %395, %393
  %_new_gep_379.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_339322.i39, i64 -20
  %397 = bitcast i8* %_new_gep_379.i to i32*
  %398 = load i32, i32* %397, align 4, !mcsema_real_eip !139
  %uadd148.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %396, i32 %398)
  %399 = extractvalue { i32, i1 } %uadd148.i, 0
  %400 = extractvalue { i32, i1 } %uadd148.i, 1
  store i1 %400, i1* %CF_val.i, align 1
  store i32 %399, i32* %397, align 4, !mcsema_real_eip !140
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_384328.i43 = load i8*, i8** %74, align 8
  %_new_gep_385.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_384328.i43, i64 -16
  %_allin_new_bt_386.i = bitcast i8* %_new_gep_385.i to i64*
  %401 = load i64, i64* %_allin_new_bt_386.i, align 8, !mcsema_real_eip !141
  %402 = add i64 %401, 28, !mcsema_real_eip !142
  %403 = inttoptr i64 %402 to i8*
  %404 = load i8, i8* %403, align 1, !mcsema_real_eip !142
  %405 = zext i8 %404 to i64
  %406 = tail call x86_64_sysvcc i64 @to_byte(i64 %405), !mcsema_real_eip !143
  %_new_gep_388.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_384328.i43, i64 -20
  %407 = bitcast i8* %_new_gep_388.i to i32*
  %408 = load i32, i32* %407, align 4, !mcsema_real_eip !144
  %409 = trunc i64 %406 to i32, !mcsema_real_eip !145
  %410 = sub i32 %408, %409, !mcsema_real_eip !145
  %411 = zext i32 %410 to i64, !mcsema_real_eip !145
  store i32 %410, i32* %407, align 4, !mcsema_real_eip !146
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_393331.i44 = load i8*, i8** %74, align 8
  %_new_gep_394.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_393331.i44, i64 -20
  %412 = bitcast i8* %_new_gep_394.i to i32*
  %413 = load i32, i32* %412, align 4, !mcsema_real_eip !147
  %414 = icmp eq i32 %413, 0, !mcsema_real_eip !147
  store i1 false, i1* %CF_val.i, align 1
  br i1 %414, label %block_0x3e7.i, label %block_0x414.i, !mcsema_real_eip !148

block_0x414.i:                                    ; preds = %block_0x3fd.i, %block_0x3e7.i, %block_0x3a9.i, %block_0x409.i, %block_0x383.i
  %RDI_val.4.i = phi i64 [ %350, %block_0x383.i ], [ %441, %block_0x3e7.i ], [ %441, %block_0x3fd.i ], [ %405, %block_0x3a9.i ], [ %350, %block_0x409.i ]
  %RSI_val.3.i = phi i64 [ %357, %block_0x383.i ], [ %394, %block_0x3e7.i ], [ %394, %block_0x3fd.i ], [ %394, %block_0x3a9.i ], [ %357, %block_0x409.i ]
  %RDX_val.4.i = phi i64 [ 4, %block_0x383.i ], [ %411, %block_0x3e7.i ], [ %411, %block_0x3fd.i ], [ %411, %block_0x3a9.i ], [ %381, %block_0x409.i ]
  %RCX_val.2.i = phi i64 [ 100, %block_0x383.i ], [ %401, %block_0x3e7.i ], [ %401, %block_0x3fd.i ], [ %401, %block_0x3a9.i ], [ %382, %block_0x409.i ]
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_396325.i40 = load i8*, i8** %74, align 8
  %_new_gep_397.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_396325.i40, i64 -20
  %415 = bitcast i8* %_new_gep_397.i to i32*
  %416 = load i32, i32* %415, align 4, !mcsema_real_eip !149
  %_new_gep_400.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_396325.i40, i64 -4
  %417 = bitcast i8* %_new_gep_400.i to i32*
  store i32 %416, i32* %417, align 4, !mcsema_real_eip !150
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_402326.i41 = load i8*, i8** %74, align 8
  %_new_gep_403.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_402326.i41, i64 -4
  %418 = bitcast i8* %_new_gep_403.i to i32*
  %419 = load i32, i32* %418, align 4, !mcsema_real_eip !14
  %420 = zext i32 %419 to i64, !mcsema_real_eip !14
  %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_405327.i42 = load i8*, i8** %69, align 8
  %_new_gep_406.i = getelementptr i8, i8* %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_405327.i42, i64 80
  %421 = xor i64 %70, %72, !mcsema_real_eip !15
  %422 = and i64 %421, 16
  %423 = icmp eq i64 %422, 0
  %424 = icmp slt i64 %70, 0
  %425 = icmp eq i64 %70, 0, !mcsema_real_eip !15
  %426 = add i64 %7, 9223372036854775720
  %427 = and i64 %421, %426, !mcsema_real_eip !15
  %428 = icmp slt i64 %427, 0
  %429 = trunc i64 %70 to i8, !mcsema_real_eip !15
  %430 = tail call i8 @llvm.ctpop.i8(i8 %429), !mcsema_real_eip !15
  %431 = and i8 %430, 1
  %432 = icmp eq i8 %431, 0
  %433 = ptrtoint i8* %_new_gep_406.i to i64
  %434 = and i64 %433, 1
  %_new_ptr2int_407.i = icmp ne i64 %434, 0
  store volatile i1 %_new_ptr2int_407.i, i1* %CF_val.i, align 1
  store volatile i64 %433, i64* %_RSP_ptr_257.sroa.0.i, align 8
  %_allin_new_bt_408.i = bitcast i8* %_new_gep_406.i to i64*
  %435 = load i64, i64* %_allin_new_bt_408.i, align 8
  store volatile i64 %435, i64* %_RBP_ptr_258.sroa.0.i, align 8
  %_new_gep_410.i = getelementptr i8, i8* %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_405327.i42, i64 96
  %436 = ptrtoint i8* %_new_gep_410.i to i64
  store volatile i64 %436, i64* %_RSP_ptr_257.sroa.0.i, align 8
  store i64 %420, i64* %RAX.i, align 8, !mcsema_real_eip !16
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !16
  store i64 %RCX_val.2.i, i64* %RCX.i, align 8, !mcsema_real_eip !16
  store i64 %RDX_val.4.i, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %RSI_val.3.i, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %RDI_val.4.i, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store volatile i64 %436, i64* %RSP.i, align 8
  store volatile i64 %435, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !16
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !16
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !16
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !16
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !16
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !16
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !16
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !16
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %_new_ptr2int_407.i, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %432, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %423, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %425, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %424, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %428, i1* %OF.i, align 1, !mcsema_real_eip !16
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !16
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !16
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !16
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !16
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !16
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !16
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !16
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !16
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !16
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !16
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !16
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !16
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !16
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !16
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !16
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !16
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !16
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !16
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !16
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !16
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !16
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !16
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !16
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !16
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !16
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !16
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !16
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !16
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !16
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !16
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_257.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_258.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 88, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %CF_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x3e7.i:                                    ; preds = %block_0x3a9.i
  %_new_gep_416.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_393331.i44, i64 -16
  %_allin_new_bt_417.i = bitcast i8* %_new_gep_416.i to i64*
  %437 = load i64, i64* %_allin_new_bt_417.i, align 8, !mcsema_real_eip !151
  %438 = add i64 %437, 31, !mcsema_real_eip !152
  %439 = inttoptr i64 %438 to i8*
  %440 = load i8, i8* %439, align 1, !mcsema_real_eip !152
  %441 = zext i8 %440 to i64
  %442 = tail call x86_64_sysvcc i64 @to_byte(i64 %441), !mcsema_real_eip !153
  %443 = trunc i64 %442 to i32, !mcsema_real_eip !154
  %444 = icmp eq i32 %443, 4
  %445 = icmp ult i32 %443, 4, !mcsema_real_eip !154
  store i1 %445, i1* %CF_val.i, align 1
  br i1 %444, label %block_0x414.i, label %block_0x3fd.i, !mcsema_real_eip !155

block_0x3fd.i:                                    ; preds = %block_0x3e7.i
  store i32 -32, i32* %412, align 4, !mcsema_real_eip !156
  br label %block_0x414.i, !mcsema_real_eip !157

sub_0.exit:                                       ; preds = %block_0x414.i, %block_0x41a.i
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 8, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!4 = !{i64 12, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!5 = !{i64 16, [9 x i8] c"\09callq\090\00"}
!6 = !{i64 23, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!7 = !{i64 26, [21 x i8] c"\09cmpl\09$37, -32(%rbp)\00"}
!8 = !{i64 30, [7 x i8] c"\09je\0911\00"}
!9 = !{i64 47, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!10 = !{i64 55, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!11 = !{i64 63, [21 x i8] c"\09movsbl\09(%rax), %ecx\00"}
!12 = !{i64 69, [7 x i8] c"\09je\0912\00"}
!13 = !{i64 42, [10 x i8] c"\09jmp\091003\00"}
!14 = !{i64 1050, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!15 = !{i64 1053, [16 x i8] c"\09addq\09$80, %rsp\00"}
!16 = !{i64 1058, [6 x i8] c"\09retq\00"}
!17 = !{i64 91, [22 x i8] c"\09movzbl\091(%rax), %edi\00"}
!18 = !{i64 95, [9 x i8] c"\09callq\090\00"}
!19 = !{i64 100, [15 x i8] c"\09cmpl\09$9, %eax\00"}
!20 = !{i64 103, [7 x i8] c"\09je\0912\00"}
!21 = !{i64 121, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!22 = !{i64 125, [22 x i8] c"\09movzbl\092(%rax), %edi\00"}
!23 = !{i64 129, [9 x i8] c"\09callq\090\00"}
!24 = !{i64 134, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!25 = !{i64 137, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!26 = !{i64 140, [15 x i8] c"\09shll\09$1, %eax\00"}
!27 = !{i64 143, [16 x i8] c"\09cmpl\09$26, %eax\00"}
!28 = !{i64 146, [7 x i8] c"\09je\0912\00"}
!29 = !{i64 164, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!30 = !{i64 168, [22 x i8] c"\09movzbl\093(%rax), %edi\00"}
!31 = !{i64 172, [9 x i8] c"\09callq\090\00"}
!32 = !{i64 182, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!33 = !{i64 185, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!34 = !{i64 191, [6 x i8] c"\09cltd\00"}
!35 = !{i64 192, [12 x i8] c"\09idivl\09%edi\00"}
!36 = !{i64 194, [15 x i8] c"\09cmpl\09$7, %eax\00"}
!37 = !{i64 197, [7 x i8] c"\09je\0912\00"}
!38 = !{i64 215, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!39 = !{i64 219, [22 x i8] c"\09movsbl\094(%rax), %ecx\00"}
!40 = !{i64 229, [8 x i8] c"\09jne\0935\00"}
!41 = !{i64 277, [9 x i8] c"\09jmp\09768\00"}
!42 = !{i64 239, [22 x i8] c"\09movsbl\094(%rax), %ecx\00"}
!43 = !{i64 252, [8 x i8] c"\09jne\0912\00"}
!44 = !{i64 258, [29 x i8] c"\09movl\09$4294967292, -20(%rbp)\00"}
!45 = !{i64 282, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!46 = !{i64 286, [22 x i8] c"\09movsbl\095(%rax), %ecx\00"}
!47 = !{i64 295, [21 x i8] c"\09movb\09%dl, -33(%rbp)\00"}
!48 = !{i64 298, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!49 = !{i64 302, [22 x i8] c"\09movsbl\095(%rax), %ecx\00"}
!50 = !{i64 314, [21 x i8] c"\09movb\09%dl, -34(%rbp)\00"}
!51 = !{i64 317, [24 x i8] c"\09movzbl\09-33(%rbp), %ecx\00"}
!52 = !{i64 324, [8 x i8] c"\09jne\0927\00"}
!53 = !{i64 357, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!54 = !{i64 363, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!55 = !{i64 330, [24 x i8] c"\09movzbl\09-34(%rbp), %eax\00"}
!56 = !{i64 337, [8 x i8] c"\09jne\0914\00"}
!57 = !{i64 343, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!58 = !{i64 349, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!59 = !{i64 439, [22 x i8] c"\09movl\09-20(%rbp), %ecx\00"}
!60 = !{i64 445, [16 x i8] c"\09shll\09%cl, %eax\00"}
!61 = !{i64 447, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!62 = !{i64 450, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!63 = !{i64 454, [7 x i8] c"\09je\0912\00"}
!64 = !{i64 479, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!65 = !{i64 490, [9 x i8] c"\09callq\090\00"}
!66 = !{i64 495, [15 x i8] c"\09movw\09%ax, %cx\00"}
!67 = !{i64 498, [21 x i8] c"\09movw\09%cx, -38(%rbp)\00"}
!68 = !{i64 502, [24 x i8] c"\09movzwl\09-38(%rbp), %eax\00"}
!69 = !{i64 516, [8 x i8] c"\09jne\0932\00"}
!70 = !{i64 467, [9 x i8] c"\09jmp\09578\00"}
!71 = !{i64 554, [24 x i8] c"\09movl\09$48059, -20(%rbp)\00"}
!72 = !{i64 568, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!73 = !{i64 579, [9 x i8] c"\09callq\090\00"}
!74 = !{i64 584, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!75 = !{i64 587, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!76 = !{i64 590, [24 x i8] c"\09xorl\09$2760406685, %eax\00"}
!77 = !{i64 595, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!78 = !{i64 598, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!79 = !{i64 604, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!80 = !{i64 607, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!81 = !{i64 610, [19 x i8] c"\09andl\09$65535, %eax\00"}
!82 = !{i64 615, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!83 = !{i64 618, [24 x i8] c"\09cmpl\09$20299, -52(%rbp)\00"}
!84 = !{i64 625, [8 x i8] c"\09jne\0924\00"}
!85 = !{i64 536, [8 x i8] c"\09jne\0912\00"}
!86 = !{i64 542, [24 x i8] c"\09movl\09$43690, -20(%rbp)\00"}
!87 = !{i64 655, [24 x i8] c"\09movl\09$48351, -20(%rbp)\00"}
!88 = !{i64 667, [22 x i8] c"\09movl\09-20(%rbp), %edi\00"}
!89 = !{i64 670, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!90 = !{i64 681, [9 x i8] c"\09callq\090\00"}
!91 = !{i64 686, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!92 = !{i64 689, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!93 = !{i64 695, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!94 = !{i64 698, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!95 = !{i64 701, [15 x i8] c"\09andl\09$7, %eax\00"}
!96 = !{i64 707, [7 x i8] c"\09je\0912\00"}
!97 = !{i64 631, [22 x i8] c"\09movl\09-56(%rbp), %eax\00"}
!98 = !{i64 634, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!99 = !{i64 637, [8 x i8] c"\09jne\0912\00"}
!100 = !{i64 643, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!101 = !{i64 733, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!102 = !{i64 736, [28 x i8] c"\09cmpl\09$268435455, -60(%rbp)\00"}
!103 = !{i64 743, [8 x i8] c"\09jbe\0912\00"}
!104 = !{i64 769, [22 x i8] c"\09xorl\09$13631488, %ecx\00"}
!105 = !{i64 775, [22 x i8] c"\09movl\09%ecx, -60(%rbp)\00"}
!106 = !{i64 778, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!107 = !{i64 784, [22 x i8] c"\09movl\09%ecx, -60(%rbp)\00"}
!108 = !{i64 787, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!109 = !{i64 796, [22 x i8] c"\09movl\09%ecx, -60(%rbp)\00"}
!110 = !{i64 799, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!111 = !{i64 802, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!112 = !{i64 809, [22 x i8] c"\09movl\09-68(%rbp), %ecx\00"}
!113 = !{i64 812, [11 x i8] c"\09divl\09%ecx\00"}
!114 = !{i64 814, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!115 = !{i64 817, [20 x i8] c"\09cmpl\09$3, -60(%rbp)\00"}
!116 = !{i64 821, [7 x i8] c"\09je\0911\00"}
!117 = !{i64 843, [22 x i8] c"\09movl\09-20(%rbp), %edi\00"}
!118 = !{i64 846, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!119 = !{i64 857, [9 x i8] c"\09callq\090\00"}
!120 = !{i64 862, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!121 = !{i64 865, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!122 = !{i64 869, [23 x i8] c"\09movsbl\0928(%rsi), %eax\00"}
!123 = !{i64 876, [8 x i8] c"\09jne\0931\00"}
!124 = !{i64 833, [9 x i8] c"\09jmp\09212\00"}
!125 = !{i64 917, [23 x i8] c"\09movsbl\0928(%rax), %ecx\00"}
!126 = !{i64 925, [23 x i8] c"\09movsbl\0929(%rax), %edx\00"}
!127 = !{i64 931, [8 x i8] c"\09jne\0996\00"}
!128 = !{i64 886, [23 x i8] c"\09movsbl\0929(%rax), %ecx\00"}
!129 = !{i64 893, [8 x i8] c"\09jne\0914\00"}
!130 = !{i64 899, [22 x i8] c"\09movl\09-64(%rbp), %eax\00"}
!131 = !{i64 902, [22 x i8] c"\09xorl\09-20(%rbp), %eax\00"}
!132 = !{i64 905, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!133 = !{i64 908, [9 x i8] c"\09jmp\09131\00"}
!134 = !{i64 1033, [22 x i8] c"\09movl\09-64(%rbp), %eax\00"}
!135 = !{i64 1036, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!136 = !{i64 1039, [7 x i8] c"\09jmp\090\00"}
!137 = !{i64 946, [23 x i8] c"\09movsbl\0931(%rcx), %edx\00"}
!138 = !{i64 954, [23 x i8] c"\09movsbl\0930(%rcx), %esi\00"}
!139 = !{i64 962, [22 x i8] c"\09addl\09-20(%rbp), %eax\00"}
!140 = !{i64 965, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!141 = !{i64 968, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!142 = !{i64 972, [23 x i8] c"\09movzbl\0928(%rcx), %edi\00"}
!143 = !{i64 976, [9 x i8] c"\09callq\090\00"}
!144 = !{i64 981, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!145 = !{i64 984, [17 x i8] c"\09subl\09%eax, %edx\00"}
!146 = !{i64 986, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!147 = !{i64 989, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!148 = !{i64 993, [8 x i8] c"\09jne\0929\00"}
!149 = !{i64 1044, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!150 = !{i64 1047, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!151 = !{i64 999, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!152 = !{i64 1003, [23 x i8] c"\09movzbl\0931(%rax), %edi\00"}
!153 = !{i64 1007, [9 x i8] c"\09callq\090\00"}
!154 = !{i64 1012, [15 x i8] c"\09cmpl\09$4, %eax\00"}
!155 = !{i64 1015, [6 x i8] c"\09je\097\00"}
!156 = !{i64 1021, [29 x i8] c"\09movl\09$4294967264, -20(%rbp)\00"}
!157 = !{i64 1028, [7 x i8] c"\09jmp\096\00"}
