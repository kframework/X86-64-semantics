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
  %_RSP_ptr_257.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_257.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_257.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_258.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_258.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_258.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_259.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 88, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
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
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %7 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %8 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %9 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %10 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %11 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %12 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %13 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %14 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !2
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
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !2
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
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %65 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %66 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_260.i = load i64, i64* %_RBP_ptr_258.sroa.0.i, align 8
  %67 = bitcast i64* %_RSP_ptr_257.sroa.0.i to i8**
  %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_281.i7 = load i8*, i8** %67, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_281.i7, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_260.i, i64* %_allin_new_bt_.i, align 8
  %68 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %68, i64* %_RBP_ptr_258.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_281.i7, i64 -88
  %69 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %69, i64* %_RSP_ptr_257.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_281.i7, i64 -24
  %_allin_new_bt_4.i = bitcast i8* %_new_gep_3.i to i64*
  store i64 %6, i64* %_allin_new_bt_4.i, align 8, !mcsema_real_eip !3
  %70 = bitcast i64* %_RBP_ptr_258.sroa.0.i to i8**
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_5282.i8 = load i8*, i8** %70, align 8
  %_new_gep_6.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_5282.i8, i64 -16
  %_allin_new_bt_7.i = bitcast i8* %_new_gep_6.i to i64*
  %71 = load i64, i64* %_allin_new_bt_7.i, align 8, !mcsema_real_eip !4
  %72 = tail call x86_64_sysvcc i64 @strlen(i64 %71), !mcsema_real_eip !5
  %_new_gep_9.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_5282.i8, i64 -32
  %73 = trunc i64 %72 to i32, !mcsema_real_eip !6
  %74 = bitcast i8* %_new_gep_9.i to i32*
  store i32 %73, i32* %74, align 4, !mcsema_real_eip !6
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_11283.i9 = load i8*, i8** %70, align 8
  %_new_gep_12.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_11283.i9, i64 -32
  %75 = bitcast i8* %_new_gep_12.i to i32*
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !7
  %77 = icmp eq i32 %76, 37
  br i1 %77, label %block_0x2f.i, label %block_0x24.i, !mcsema_real_eip !8

block_0x2f.i:                                     ; preds = %driverBlockRaw
  %_new_gep_15.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_11283.i9, i64 -16
  %_allin_new_bt_16.i = bitcast i8* %_new_gep_15.i to i64*
  %78 = load i64, i64* %_allin_new_bt_16.i, align 8, !mcsema_real_eip !9
  %79 = add i64 %78, 4
  store i64 %79, i64* %_allin_new_bt_16.i, align 8, !mcsema_real_eip !10
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_20285.i11 = load i8*, i8** %70, align 8
  %_new_gep_21.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_20285.i11, i64 -16
  %_allin_new_bt_22.i = bitcast i8* %_new_gep_21.i to i64*
  %80 = load i64, i64* %_allin_new_bt_22.i, align 8, !mcsema_real_eip !11
  %81 = inttoptr i64 %80 to i8*
  %82 = load i8, i8* %81, align 1, !mcsema_real_eip !12
  %83 = sext i8 %82 to i64
  %84 = and i64 %83, 4294967295
  %85 = icmp eq i8 %82, 100
  br i1 %85, label %block_0x57.i, label %block_0x41a.i, !mcsema_real_eip !13

block_0x24.i:                                     ; preds = %driverBlockRaw
  %86 = and i64 %72, 4294967295
  br label %block_0x41a.i, !mcsema_real_eip !14

block_0x41a.i:                                    ; preds = %block_0x33b.i, %block_0x2d5.i, %block_0x283.i, %block_0x28f.i, %block_0x1cc.i, %block_0x10e.i, %block_0xa4.i, %block_0x79.i, %block_0x57.i, %block_0x24.i, %block_0x2f.i
  %_load_rbp_ptr_323.sink.i = phi i8* [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_323321.i35, %block_0x33b.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_155301.i20, %block_0x1cc.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_61290.i13, %block_0x10e.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_11283.i9, %block_0x24.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_20285.i11, %block_0x2f.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_20285.i11, %block_0x57.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_50288.i12, %block_0x79.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_61290.i13, %block_0xa4.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_287316.i30, %block_0x2d5.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_278335.i43, %block_0x283.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_251313.i29, %block_0x28f.i ]
  %RDI_val.0.i = phi i64 [ %RDI_val.2.i, %block_0x33b.i ], [ %RDI_val.1.i, %block_0x1cc.i ], [ 2, %block_0x10e.i ], [ %71, %block_0x24.i ], [ %71, %block_0x2f.i ], [ %111, %block_0x57.i ], [ %119, %block_0x79.i ], [ 2, %block_0xa4.i ], [ %RDI_val.2.i, %block_0x2d5.i ], [ %282, %block_0x283.i ], [ %262, %block_0x28f.i ]
  %RSI_val.0.i = phi i64 [ %RSI_val.1.i, %block_0x33b.i ], [ %5, %block_0x1cc.i ], [ %5, %block_0x10e.i ], [ %5, %block_0x24.i ], [ %5, %block_0x2f.i ], [ %5, %block_0x57.i ], [ %5, %block_0x79.i ], [ %5, %block_0xa4.i ], [ %RSI_val.1.i, %block_0x2d5.i ], [ %284, %block_0x283.i ], [ %264, %block_0x28f.i ]
  %RDX_val.0.i = phi i64 [ %339, %block_0x33b.i ], [ %179, %block_0x1cc.i ], [ %143, %block_0x10e.i ], [ %4, %block_0x24.i ], [ %4, %block_0x2f.i ], [ %4, %block_0x57.i ], [ %4, %block_0x79.i ], [ %143, %block_0xa4.i ], [ 8, %block_0x2d5.i ], [ 8, %block_0x283.i ], [ 8, %block_0x28f.i ]
  %RCX_val.0.i = phi i64 [ %313, %block_0x33b.i ], [ %192, %block_0x1cc.i ], [ %RCX_val.1.i, %block_0x10e.i ], [ %86, %block_0x24.i ], [ %84, %block_0x2f.i ], [ %84, %block_0x57.i ], [ %84, %block_0x79.i ], [ %84, %block_0xa4.i ], [ %208, %block_0x2d5.i ], [ %208, %block_0x283.i ], [ %208, %block_0x28f.i ]
  %.sink1.i = phi i32 [ %319, %block_0x33b.i ], [ -7, %block_0x1cc.i ], [ -6, %block_0x10e.i ], [ %76, %block_0x24.i ], [ -2, %block_0x2f.i ], [ -3, %block_0x57.i ], [ -4, %block_0x79.i ], [ -5, %block_0xa4.i ], [ -22, %block_0x2d5.i ], [ -21, %block_0x283.i ], [ -21, %block_0x28f.i ]
  %_new_gep_345.i = getelementptr i8, i8* %_load_rbp_ptr_323.sink.i, i64 -4
  %87 = bitcast i8* %_new_gep_345.i to i32*
  store i32 %.sink1.i, i32* %87, align 4
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_29284.i10 = load i8*, i8** %70, align 8
  %_new_gep_30.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_29284.i10, i64 -4
  %88 = bitcast i8* %_new_gep_30.i to i32*
  %89 = load i32, i32* %88, align 4, !mcsema_real_eip !15
  %90 = zext i32 %89 to i64, !mcsema_real_eip !15
  %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_32261.i = load i64, i64* %_RSP_ptr_257.sroa.0.i, align 8
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_32261.i, i64 80)
  %91 = extractvalue { i64, i1 } %uadd.i, 0
  %92 = xor i64 %91, %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_32261.i, !mcsema_real_eip !16
  %93 = and i64 %92, 16
  %94 = icmp eq i64 %93, 0
  %95 = icmp slt i64 %91, 0
  %96 = icmp eq i64 %91, 0, !mcsema_real_eip !16
  %97 = xor i64 %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_32261.i, -9223372036854775808, !mcsema_real_eip !16
  %98 = and i64 %92, %97, !mcsema_real_eip !16
  %99 = icmp slt i64 %98, 0
  %100 = trunc i64 %91 to i8, !mcsema_real_eip !16
  %101 = tail call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !16
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  %104 = extractvalue { i64, i1 } %uadd.i, 1
  store volatile i64 %91, i64* %_RSP_ptr_257.sroa.0.i, align 8
  %105 = inttoptr i64 %91 to i64*, !mcsema_real_eip !17
  %106 = load i64, i64* %105, align 8
  store volatile i64 %106, i64* %_RBP_ptr_258.sroa.0.i, align 8
  %107 = add i64 %91, 16
  store volatile i64 %107, i64* %_RSP_ptr_257.sroa.0.i, align 8
  store i64 %90, i64* %RAX.i, align 8, !mcsema_real_eip !18
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !18
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !18
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !18
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !18
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !18
  store volatile i64 %107, i64* %RSP.i, align 8
  store volatile i64 %106, i64* %RBP.i, align 8
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !18
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !18
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !18
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !18
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !18
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !18
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !18
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !18
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !18
  store i1 %104, i1* %CF.i, align 1, !mcsema_real_eip !18
  store i1 %103, i1* %PF.i, align 1, !mcsema_real_eip !18
  store i1 %94, i1* %AF.i, align 1, !mcsema_real_eip !18
  store i1 %96, i1* %ZF.i, align 1, !mcsema_real_eip !18
  store i1 %95, i1* %SF.i, align 1, !mcsema_real_eip !18
  store i1 %99, i1* %OF.i, align 1, !mcsema_real_eip !18
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !18
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !18
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !18
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !18
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !18
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !18
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !18
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !18
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !18
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !18
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !18
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !18
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !18
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !18
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !18
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !18
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !18
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !18
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !18
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !18
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !18
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !18
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !18
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !18
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !18
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !18
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !18
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !18
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !18
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !18
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !18
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !18
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !18
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !18
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !18
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !18
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !18
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !18
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !18
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !18
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !18
  store i64 %65, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !18
  store i64 %66, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !18
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_257.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_258.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 88, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x57.i:                                     ; preds = %block_0x2f.i
  %108 = add i64 %80, 1, !mcsema_real_eip !19
  %109 = inttoptr i64 %108 to i8*
  %110 = load i8, i8* %109, align 1, !mcsema_real_eip !19
  %111 = zext i8 %110 to i64
  %112 = tail call x86_64_sysvcc i64 @to_byte(i64 %111), !mcsema_real_eip !20
  %113 = trunc i64 %112 to i32, !mcsema_real_eip !21
  %114 = icmp eq i32 %113, 9
  br i1 %114, label %block_0x79.i, label %block_0x41a.i, !mcsema_real_eip !22

block_0x79.i:                                     ; preds = %block_0x57.i
  %115 = load i64, i64* %_allin_new_bt_22.i, align 8, !mcsema_real_eip !23
  %116 = add i64 %115, 2, !mcsema_real_eip !24
  %117 = inttoptr i64 %116 to i8*
  %118 = load i8, i8* %117, align 1, !mcsema_real_eip !24
  %119 = zext i8 %118 to i64
  %120 = tail call x86_64_sysvcc i64 @to_byte(i64 %119), !mcsema_real_eip !25
  %_new_gep_48.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_20285.i11, i64 -24
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !26
  %122 = bitcast i8* %_new_gep_48.i to i32*
  store i32 %121, i32* %122, align 4, !mcsema_real_eip !26
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_50288.i12 = load i8*, i8** %70, align 8
  %_new_gep_51.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_50288.i12, i64 -24
  %123 = bitcast i8* %_new_gep_51.i to i32*
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !27
  %.mask264.i = and i32 %124, 2147483647
  %125 = icmp eq i32 %.mask264.i, 13
  br i1 %125, label %block_0xa4.i, label %block_0x41a.i, !mcsema_real_eip !28

block_0xa4.i:                                     ; preds = %block_0x79.i
  %_new_gep_56.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_50288.i12, i64 -16
  %_allin_new_bt_57.i = bitcast i8* %_new_gep_56.i to i64*
  %126 = load i64, i64* %_allin_new_bt_57.i, align 8, !mcsema_real_eip !29
  %127 = add i64 %126, 3, !mcsema_real_eip !30
  %128 = inttoptr i64 %127 to i8*
  %129 = load i8, i8* %128, align 1, !mcsema_real_eip !30
  %130 = zext i8 %129 to i64
  %131 = tail call x86_64_sysvcc i64 @to_byte(i64 %130), !mcsema_real_eip !31
  %_new_gep_59.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_50288.i12, i64 -28
  %132 = trunc i64 %131 to i32, !mcsema_real_eip !32
  %133 = bitcast i8* %_new_gep_59.i to i32*
  store i32 %132, i32* %133, align 4, !mcsema_real_eip !32
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_61290.i13 = load i8*, i8** %70, align 8
  %_new_gep_62.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_61290.i13, i64 -28
  %134 = bitcast i8* %_new_gep_62.i to i32*
  %135 = load i32, i32* %134, align 4, !mcsema_real_eip !33
  %136 = add i32 %135, 1
  %.lobit.i = ashr i32 %136, 31
  %137 = zext i32 %.lobit.i to i64, !mcsema_real_eip !34
  %138 = shl nuw i64 %137, 32, !mcsema_real_eip !35
  %139 = sext i32 %136 to i64, !mcsema_real_eip !35
  %140 = or i64 %138, %139, !mcsema_real_eip !35
  %141 = sdiv i64 %140, 2, !mcsema_real_eip !35
  %142 = srem i64 %140, 2, !mcsema_real_eip !35
  %143 = and i64 %142, 4294967295
  %144 = trunc i64 %141 to i32, !mcsema_real_eip !36
  %145 = icmp eq i32 %144, 7
  br i1 %145, label %block_0xd7.i, label %block_0x41a.i, !mcsema_real_eip !37

block_0xd7.i:                                     ; preds = %block_0xa4.i
  %_new_gep_67.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_61290.i13, i64 -16
  %_allin_new_bt_68.i = bitcast i8* %_new_gep_67.i to i64*
  %146 = load i64, i64* %_allin_new_bt_68.i, align 8, !mcsema_real_eip !38
  %147 = add i64 %146, 4, !mcsema_real_eip !39
  %148 = inttoptr i64 %147 to i8*
  %149 = load i8, i8* %148, align 1, !mcsema_real_eip !39
  %150 = and i8 %149, 15
  %151 = icmp eq i8 %150, 1
  br i1 %151, label %block_0xeb.i, label %block_0x10e.i, !mcsema_real_eip !40

block_0x10e.i:                                    ; preds = %block_0xeb.i, %block_0xd7.i
  %RCX_val.1.in.i = phi i8 [ %152, %block_0xeb.i ], [ %150, %block_0xd7.i ]
  %RCX_val.1.i = zext i8 %RCX_val.1.in.i to i64
  br label %block_0x41a.i, !mcsema_real_eip !41

block_0xeb.i:                                     ; preds = %block_0xd7.i
  %152 = and i8 %149, -16
  %153 = icmp eq i8 %152, 48
  br i1 %153, label %block_0x102.i, label %block_0x10e.i, !mcsema_real_eip !42

block_0x102.i:                                    ; preds = %block_0xeb.i
  %_new_gep_78.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_61290.i13, i64 -20
  %154 = bitcast i8* %_new_gep_78.i to i32*
  store i32 -4, i32* %154, align 4, !mcsema_real_eip !43
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_80292.i14 = load i8*, i8** %70, align 8
  %_new_gep_81.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_80292.i14, i64 -16
  %_allin_new_bt_82.i = bitcast i8* %_new_gep_81.i to i64*
  %155 = load i64, i64* %_allin_new_bt_82.i, align 8, !mcsema_real_eip !44
  %156 = add i64 %155, 5, !mcsema_real_eip !45
  %157 = inttoptr i64 %156 to i8*
  %158 = load i8, i8* %157, align 1, !mcsema_real_eip !45
  %159 = and i8 %158, 15
  %_new_gep_84.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_80292.i14, i64 -33
  store i8 %159, i8* %_new_gep_84.i, align 1, !mcsema_real_eip !46
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_86293.i15 = load i8*, i8** %70, align 8
  %_new_gep_87.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_86293.i15, i64 -16
  %_allin_new_bt_88.i = bitcast i8* %_new_gep_87.i to i64*
  %160 = load i64, i64* %_allin_new_bt_88.i, align 8, !mcsema_real_eip !47
  %161 = add i64 %160, 5, !mcsema_real_eip !48
  %162 = inttoptr i64 %161 to i8*
  %163 = load i8, i8* %162, align 1, !mcsema_real_eip !48
  %164 = and i8 %163, -16
  %_new_gep_90.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_86293.i15, i64 -34
  store i8 %164, i8* %_new_gep_90.i, align 1, !mcsema_real_eip !49
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_92294.i16 = load i8*, i8** %70, align 8
  %_new_gep_93.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_92294.i16, i64 -33
  %165 = load i8, i8* %_new_gep_93.i, align 1, !mcsema_real_eip !50
  %166 = icmp eq i8 %165, 3
  br i1 %166, label %block_0x14a.i, label %block_0x165.i, !mcsema_real_eip !51

block_0x165.i:                                    ; preds = %block_0x14a.i, %block_0x102.i
  br label %block_0x1b7.i

block_0x14a.i:                                    ; preds = %block_0x102.i
  %_new_gep_120.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_92294.i16, i64 -34
  %167 = load i8, i8* %_new_gep_120.i, align 1, !mcsema_real_eip !52
  %168 = icmp eq i8 %167, 96
  br i1 %168, label %block_0x1b7.i, label %block_0x165.i, !mcsema_real_eip !53

block_0x1b7.i:                                    ; preds = %block_0x14a.i, %block_0x165.i
  %.sink280.i = phi i32 [ 5, %block_0x165.i ], [ 4, %block_0x14a.i ]
  %_new_gep_123.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_92294.i16, i64 -20
  %169 = bitcast i8* %_new_gep_123.i to i32*
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, %.sink280.i
  store i32 %171, i32* %169, align 4
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_128296.i17 = load i8*, i8** %70, align 8
  %_new_gep_129.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_128296.i17, i64 -16
  %_allin_new_bt_130.i = bitcast i8* %_new_gep_129.i to i64*
  %172 = load i64, i64* %_allin_new_bt_130.i, align 8
  %173 = add i64 %172, 6
  %174 = inttoptr i64 %173 to i8*
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i64
  %177 = tail call x86_64_sysvcc i64 @to_byte(i64 %176)
  %_new_gep_132.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_128296.i17, i64 -35
  %178 = trunc i64 %177 to i8
  store i8 %178, i8* %_new_gep_132.i, align 1
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_134298.i18 = load i8*, i8** %70, align 8
  %_new_gep_135.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_134298.i18, i64 -16
  %_allin_new_bt_136.i = bitcast i8* %_new_gep_135.i to i64*
  %179 = load i64, i64* %_allin_new_bt_136.i, align 8
  %180 = add i64 %179, 7
  %181 = inttoptr i64 %180 to i8*
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i64
  %184 = tail call x86_64_sysvcc i64 @to_byte(i64 %183)
  %_new_gep_138.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_134298.i18, i64 -35
  %185 = load i8, i8* %_new_gep_138.i, align 1
  %186 = zext i8 %185 to i32
  %187 = trunc i64 %184 to i32
  %188 = or i32 %186, %187
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %_new_gep_138.i, align 1
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_146300.i19 = load i8*, i8** %70, align 8
  %_new_gep_147.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_146300.i19, i64 -20
  %190 = bitcast i8* %_new_gep_147.i to i32*
  %191 = load i32, i32* %190, align 4, !mcsema_real_eip !54
  %192 = zext i32 %191 to i64, !mcsema_real_eip !54
  %193 = and i32 %191, 31, !mcsema_real_eip !55
  %194 = add i32 %191, -1
  %195 = icmp ne i32 %193, 0, !mcsema_real_eip !55
  %196 = select i1 %195, i32 %194, i32 0, !mcsema_real_eip !55
  %197 = zext i1 %195 to i32
  %198 = shl i32 %191, %196, !mcsema_real_eip !55
  %199 = shl i32 %198, %197, !mcsema_real_eip !55
  store i32 %199, i32* %190, align 4, !mcsema_real_eip !56
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_155301.i20 = load i8*, i8** %70, align 8
  %_new_gep_156.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_155301.i20, i64 -20
  %200 = bitcast i8* %_new_gep_156.i to i32*
  %201 = load i32, i32* %200, align 4, !mcsema_real_eip !57
  %202 = icmp eq i32 %201, 0, !mcsema_real_eip !57
  br i1 %202, label %block_0x1d8.i, label %block_0x1cc.i, !mcsema_real_eip !58

block_0x1d8.i:                                    ; preds = %block_0x1b7.i
  %_new_gep_159.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_155301.i20, i64 -16
  %_allin_new_bt_160.i = bitcast i8* %_new_gep_159.i to i64*
  %203 = load i64, i64* %_allin_new_bt_160.i, align 8, !mcsema_real_eip !59
  %204 = add i64 %203, 8
  %205 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %204, i64 4), !mcsema_real_eip !60
  %206 = and i64 %205, 65535
  %207 = and i64 %192, 4294901760, !mcsema_real_eip !61
  %208 = or i64 %206, %207
  %_new_gep_162.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_155301.i20, i64 -38
  %209 = trunc i64 %205 to i16, !mcsema_real_eip !62
  %210 = bitcast i8* %_new_gep_162.i to i16*
  store i16 %209, i16* %210, align 2, !mcsema_real_eip !62
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_164303.i21 = load i8*, i8** %70, align 8
  %_new_gep_165.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_164303.i21, i64 -38
  %211 = bitcast i8* %_new_gep_165.i to i16*
  %212 = load i16, i16* %211, align 2, !mcsema_real_eip !63
  %213 = zext i16 %212 to i32
  %214 = or i32 %213, 21845, !mcsema_real_eip !64
  %215 = icmp eq i32 %214, 56663
  %216 = or i32 %213, 43690
  %217 = icmp eq i32 %216, 65211
  %or.cond.i = and i1 %215, %217
  %_new_gep_204.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_164303.i21, i64 -20
  %218 = bitcast i8* %_new_gep_204.i to i32*
  br i1 %or.cond.i, label %block_0x21e.i, label %block_0x22a.i, !mcsema_real_eip !65

block_0x1cc.i:                                    ; preds = %block_0x1b7.i
  %RDI_val.1.i = zext i32 %188 to i64
  br label %block_0x41a.i, !mcsema_real_eip !66

block_0x22a.i:                                    ; preds = %block_0x1d8.i
  store i32 48059, i32* %218, align 4, !mcsema_real_eip !67
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_173304.i22 = load i8*, i8** %70, align 8
  %_new_gep_174.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_173304.i22, i64 -16
  %_allin_new_bt_175.i = bitcast i8* %_new_gep_174.i to i64*
  %219 = load i64, i64* %_allin_new_bt_175.i, align 8, !mcsema_real_eip !68
  %220 = add i64 %219, 12
  %221 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %220, i64 8), !mcsema_real_eip !69
  %_new_gep_177.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_173304.i22, i64 -44
  %222 = trunc i64 %221 to i32, !mcsema_real_eip !70
  %223 = bitcast i8* %_new_gep_177.i to i32*
  store i32 %222, i32* %223, align 4, !mcsema_real_eip !70
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_179305.i23 = load i8*, i8** %70, align 8
  %_new_gep_180.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_179305.i23, i64 -44
  %224 = bitcast i8* %_new_gep_180.i to i32*
  %225 = load i32, i32* %224, align 4, !mcsema_real_eip !71
  %226 = xor i32 %225, -1534560611, !mcsema_real_eip !72
  %_new_gep_183.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_179305.i23, i64 -48
  %227 = bitcast i8* %_new_gep_183.i to i32*
  store i32 %226, i32* %227, align 4, !mcsema_real_eip !73
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_185306.i24 = load i8*, i8** %70, align 8
  %_new_gep_186.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_185306.i24, i64 -48
  %228 = bitcast i8* %_new_gep_186.i to i32*
  %229 = load i32, i32* %228, align 4, !mcsema_real_eip !74
  %230 = lshr i32 %229, 16
  %_new_gep_189.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_185306.i24, i64 -52
  %231 = bitcast i8* %_new_gep_189.i to i32*
  store i32 %230, i32* %231, align 4, !mcsema_real_eip !75
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_191307.i25 = load i8*, i8** %70, align 8
  %_new_gep_192.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_191307.i25, i64 -48
  %232 = bitcast i8* %_new_gep_192.i to i32*
  %233 = load i32, i32* %232, align 4, !mcsema_real_eip !76
  %234 = and i32 %233, 65535, !mcsema_real_eip !77
  %_new_gep_195.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_191307.i25, i64 -56
  %235 = bitcast i8* %_new_gep_195.i to i32*
  store i32 %234, i32* %235, align 4, !mcsema_real_eip !78
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_197308.i26 = load i8*, i8** %70, align 8
  %_new_gep_198.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_197308.i26, i64 -52
  %236 = bitcast i8* %_new_gep_198.i to i32*
  %237 = load i32, i32* %236, align 4, !mcsema_real_eip !79
  %238 = icmp eq i32 %237, 20299
  br i1 %238, label %block_0x277.i, label %block_0x28f.i, !mcsema_real_eip !80

block_0x21e.i:                                    ; preds = %block_0x1d8.i
  store i32 43690, i32* %218, align 4, !mcsema_real_eip !81
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_206336.i44 = load i8*, i8** %70, align 8
  %_new_gep_207.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_206336.i44, i64 -16
  %_allin_new_bt_208.i = bitcast i8* %_new_gep_207.i to i64*
  %239 = load i64, i64* %_allin_new_bt_208.i, align 8, !mcsema_real_eip !68
  %240 = add i64 %239, 12
  %241 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %240, i64 8), !mcsema_real_eip !69
  %_new_gep_210.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_206336.i44, i64 -44
  %242 = trunc i64 %241 to i32, !mcsema_real_eip !70
  %243 = bitcast i8* %_new_gep_210.i to i32*
  store i32 %242, i32* %243, align 4, !mcsema_real_eip !70
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_212337.i45 = load i8*, i8** %70, align 8
  %_new_gep_213.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_212337.i45, i64 -44
  %244 = bitcast i8* %_new_gep_213.i to i32*
  %245 = load i32, i32* %244, align 4, !mcsema_real_eip !71
  %246 = xor i32 %245, -1534560611, !mcsema_real_eip !72
  %_new_gep_216.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_212337.i45, i64 -48
  %247 = bitcast i8* %_new_gep_216.i to i32*
  store i32 %246, i32* %247, align 4, !mcsema_real_eip !73
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_218338.i46 = load i8*, i8** %70, align 8
  %_new_gep_219.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_218338.i46, i64 -48
  %248 = bitcast i8* %_new_gep_219.i to i32*
  %249 = load i32, i32* %248, align 4, !mcsema_real_eip !74
  %250 = lshr i32 %249, 16
  %_new_gep_222.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_218338.i46, i64 -52
  %251 = bitcast i8* %_new_gep_222.i to i32*
  store i32 %250, i32* %251, align 4, !mcsema_real_eip !75
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_224339.i47 = load i8*, i8** %70, align 8
  %_new_gep_225.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_224339.i47, i64 -48
  %252 = bitcast i8* %_new_gep_225.i to i32*
  %253 = load i32, i32* %252, align 4, !mcsema_real_eip !76
  %254 = and i32 %253, 65535, !mcsema_real_eip !77
  %_new_gep_228.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_224339.i47, i64 -56
  %255 = bitcast i8* %_new_gep_228.i to i32*
  store i32 %254, i32* %255, align 4, !mcsema_real_eip !78
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_230340.i48 = load i8*, i8** %70, align 8
  %_new_gep_231.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_230340.i48, i64 -52
  %256 = bitcast i8* %_new_gep_231.i to i32*
  %257 = load i32, i32* %256, align 4, !mcsema_real_eip !79
  %258 = icmp eq i32 %257, 20299
  br i1 %258, label %block_0x277.i, label %block_0x28f.i, !mcsema_real_eip !80

block_0x28f.i:                                    ; preds = %block_0x277.i, %block_0x21e.i, %block_0x22a.i
  %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_233309.i = phi i8* [ %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_254331.i, %block_0x277.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_230340.i48, %block_0x21e.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_197308.i26, %block_0x22a.i ]
  %_new_gep_234.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_233309.i, i64 -20
  %259 = bitcast i8* %_new_gep_234.i to i32*
  store i32 48351, i32* %259, align 4, !mcsema_real_eip !82
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_236310.i27 = load i8*, i8** %70, align 8
  %_new_gep_237.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_236310.i27, i64 -20
  %260 = bitcast i8* %_new_gep_237.i to i32*
  %261 = load i32, i32* %260, align 4, !mcsema_real_eip !83
  %262 = zext i32 %261 to i64, !mcsema_real_eip !83
  %_new_gep_240.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_236310.i27, i64 -16
  %_allin_new_bt_241.i = bitcast i8* %_new_gep_240.i to i64*
  %263 = load i64, i64* %_allin_new_bt_241.i, align 8, !mcsema_real_eip !84
  %264 = add i64 %263, 20
  %265 = tail call x86_64_sysvcc i64 @read_bytes(i64 %262, i64 %264, i64 8), !mcsema_real_eip !85
  %_new_gep_243.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_236310.i27, i64 -60
  %266 = trunc i64 %265 to i32, !mcsema_real_eip !86
  %267 = bitcast i8* %_new_gep_243.i to i32*
  store i32 %266, i32* %267, align 4, !mcsema_real_eip !86
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_245312.i28 = load i8*, i8** %70, align 8
  %_new_gep_246.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_245312.i28, i64 -60
  %268 = bitcast i8* %_new_gep_246.i to i32*
  %269 = load i32, i32* %268, align 4, !mcsema_real_eip !87
  %270 = add i32 %269, -3
  store i32 %270, i32* %268, align 4, !mcsema_real_eip !88
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_251313.i29 = load i8*, i8** %70, align 8
  %_new_gep_252.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_251313.i29, i64 -60
  %271 = bitcast i8* %_new_gep_252.i to i32*
  %272 = load i32, i32* %271, align 4, !mcsema_real_eip !89
  %273 = and i32 %272, 7, !mcsema_real_eip !90
  %274 = icmp eq i32 %273, 0, !mcsema_real_eip !90
  br i1 %274, label %block_0x2d5.i, label %block_0x41a.i, !mcsema_real_eip !91

block_0x277.i:                                    ; preds = %block_0x21e.i, %block_0x22a.i
  %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_254331.i = phi i8* [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_230340.i48, %block_0x21e.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_197308.i26, %block_0x22a.i ]
  %_new_gep_255.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_254331.i, i64 -56
  %275 = bitcast i8* %_new_gep_255.i to i32*
  %276 = load i32, i32* %275, align 4, !mcsema_real_eip !92
  %_new_gep_258.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_254331.i, i64 -20
  %277 = bitcast i8* %_new_gep_258.i to i32*
  %278 = load i32, i32* %277, align 4, !mcsema_real_eip !93
  %279 = icmp eq i32 %276, %278
  br i1 %279, label %block_0x283.i, label %block_0x28f.i, !mcsema_real_eip !94

block_0x283.i:                                    ; preds = %block_0x277.i
  store i32 0, i32* %277, align 4, !mcsema_real_eip !95
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_263332.i41 = load i8*, i8** %70, align 8
  %_new_gep_264.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_263332.i41, i64 -20
  %280 = bitcast i8* %_new_gep_264.i to i32*
  %281 = load i32, i32* %280, align 4, !mcsema_real_eip !83
  %282 = zext i32 %281 to i64, !mcsema_real_eip !83
  %_new_gep_267.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_263332.i41, i64 -16
  %_allin_new_bt_268.i = bitcast i8* %_new_gep_267.i to i64*
  %283 = load i64, i64* %_allin_new_bt_268.i, align 8, !mcsema_real_eip !84
  %284 = add i64 %283, 20
  %285 = tail call x86_64_sysvcc i64 @read_bytes(i64 %282, i64 %284, i64 8), !mcsema_real_eip !85
  %_new_gep_270.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_263332.i41, i64 -60
  %286 = trunc i64 %285 to i32, !mcsema_real_eip !86
  %287 = bitcast i8* %_new_gep_270.i to i32*
  store i32 %286, i32* %287, align 4, !mcsema_real_eip !86
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_272334.i42 = load i8*, i8** %70, align 8
  %_new_gep_273.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_272334.i42, i64 -60
  %288 = bitcast i8* %_new_gep_273.i to i32*
  %289 = load i32, i32* %288, align 4, !mcsema_real_eip !87
  %290 = add i32 %289, -3
  store i32 %290, i32* %288, align 4, !mcsema_real_eip !88
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_278335.i43 = load i8*, i8** %70, align 8
  %_new_gep_279.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_278335.i43, i64 -60
  %291 = bitcast i8* %_new_gep_279.i to i32*
  %292 = load i32, i32* %291, align 4, !mcsema_real_eip !89
  %293 = and i32 %292, 7, !mcsema_real_eip !90
  %294 = icmp eq i32 %293, 0, !mcsema_real_eip !90
  br i1 %294, label %block_0x2d5.i, label %block_0x41a.i, !mcsema_real_eip !91

block_0x2d5.i:                                    ; preds = %block_0x283.i, %block_0x28f.i
  %295 = phi i32 [ %292, %block_0x283.i ], [ %272, %block_0x28f.i ]
  %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_281315.i = phi i8* [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_278335.i43, %block_0x283.i ], [ %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_251313.i29, %block_0x28f.i ]
  %RDI_val.2.i = phi i64 [ %282, %block_0x283.i ], [ %262, %block_0x28f.i ]
  %RSI_val.1.i = phi i64 [ %284, %block_0x283.i ], [ %264, %block_0x28f.i ]
  %_new_gep_282.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_281315.i, i64 -60
  %296 = bitcast i8* %_new_gep_282.i to i32*
  %297 = xor i32 %295, -2147483648
  store i32 %297, i32* %296, align 4, !mcsema_real_eip !96
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_287316.i30 = load i8*, i8** %70, align 8
  %_new_gep_288.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_287316.i30, i64 -60
  %298 = bitcast i8* %_new_gep_288.i to i32*
  %299 = load i32, i32* %298, align 4, !mcsema_real_eip !97
  %300 = icmp ult i32 %299, 268435456
  br i1 %300, label %block_0x2f9.i, label %block_0x41a.i, !mcsema_real_eip !98

block_0x2f9.i:                                    ; preds = %block_0x2d5.i
  %301 = xor i32 %299, 13631488, !mcsema_real_eip !99
  store i32 %301, i32* %298, align 4, !mcsema_real_eip !100
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_299317.i31 = load i8*, i8** %70, align 8
  %_new_gep_300.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_299317.i31, i64 -60
  %302 = bitcast i8* %_new_gep_300.i to i32*
  %303 = load i32, i32* %302, align 4, !mcsema_real_eip !101
  %304 = lshr i32 %303, 4
  store i32 %304, i32* %302, align 4, !mcsema_real_eip !102
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_305318.i32 = load i8*, i8** %70, align 8
  %_new_gep_306.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_305318.i32, i64 -60
  %305 = bitcast i8* %_new_gep_306.i to i32*
  %306 = load i32, i32* %305, align 4, !mcsema_real_eip !103
  %307 = add i32 %306, -226
  store i32 %307, i32* %305, align 4, !mcsema_real_eip !104
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_311319.i33 = load i8*, i8** %70, align 8
  %_new_gep_312.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_311319.i33, i64 -60
  %308 = bitcast i8* %_new_gep_312.i to i32*
  %309 = load i32, i32* %308, align 4, !mcsema_real_eip !105
  %_new_gep_315.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_311319.i33, i64 -68
  %310 = bitcast i8* %_new_gep_315.i to i32*
  store i32 10000, i32* %310, align 4, !mcsema_real_eip !106
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_317320.i34 = load i8*, i8** %70, align 8
  %_new_gep_318.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_317320.i34, i64 -68
  %311 = bitcast i8* %_new_gep_318.i to i32*
  %312 = load i32, i32* %311, align 4, !mcsema_real_eip !107
  %313 = zext i32 %312 to i64, !mcsema_real_eip !107
  %314 = sext i32 %309 to i64
  %315 = udiv i64 %314, %313, !mcsema_real_eip !108
  %_new_gep_321.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_317320.i34, i64 -60
  %316 = trunc i64 %315 to i32, !mcsema_real_eip !109
  %317 = bitcast i8* %_new_gep_321.i to i32*
  store i32 %316, i32* %317, align 4, !mcsema_real_eip !109
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_323321.i35 = load i8*, i8** %70, align 8
  %_new_gep_324.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_323321.i35, i64 -60
  %318 = bitcast i8* %_new_gep_324.i to i32*
  %319 = load i32, i32* %318, align 4, !mcsema_real_eip !110
  %320 = icmp eq i32 %319, 3
  br i1 %320, label %block_0x346.i, label %block_0x33b.i, !mcsema_real_eip !111

block_0x346.i:                                    ; preds = %block_0x2f9.i
  %_new_gep_330.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_323321.i35, i64 -20
  %321 = bitcast i8* %_new_gep_330.i to i32*
  %322 = load i32, i32* %321, align 4, !mcsema_real_eip !112
  %323 = zext i32 %322 to i64, !mcsema_real_eip !112
  %_new_gep_333.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_323321.i35, i64 -16
  %_allin_new_bt_334.i = bitcast i8* %_new_gep_333.i to i64*
  %324 = load i64, i64* %_allin_new_bt_334.i, align 8, !mcsema_real_eip !113
  %325 = add i64 %324, 28
  %326 = tail call x86_64_sysvcc i64 @read_bytes(i64 %323, i64 %325, i64 4), !mcsema_real_eip !114
  %_new_gep_336.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_323321.i35, i64 -64
  %327 = trunc i64 %326 to i32, !mcsema_real_eip !115
  %328 = bitcast i8* %_new_gep_336.i to i32*
  store i32 %327, i32* %328, align 4, !mcsema_real_eip !115
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_338323.i36 = load i8*, i8** %70, align 8
  %_new_gep_339.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_338323.i36, i64 -16
  %_allin_new_bt_340.i = bitcast i8* %_new_gep_339.i to i64*
  %329 = load i64, i64* %_allin_new_bt_340.i, align 8, !mcsema_real_eip !116
  %330 = add i64 %329, 28
  %331 = inttoptr i64 %330 to i8*
  %332 = load i8, i8* %331, align 1, !mcsema_real_eip !117
  %333 = icmp eq i8 %332, 100
  %334 = add i64 %329, 29
  %335 = inttoptr i64 %334 to i8*
  %336 = load i8, i8* %335, align 1
  %337 = icmp eq i8 %336, 100
  %or.cond = and i1 %333, %337
  br i1 %or.cond, label %block_0x383.i, label %block_0x391.i, !mcsema_real_eip !118

block_0x33b.i:                                    ; preds = %block_0x2f9.i
  %338 = urem i64 %314, %313, !mcsema_real_eip !108
  %339 = and i64 %338, 4294967295
  br label %block_0x41a.i, !mcsema_real_eip !119

block_0x391.i:                                    ; preds = %block_0x346.i
  %340 = icmp eq i8 %332, %336
  br i1 %340, label %block_0x3a9.i, label %block_0x409.i, !mcsema_real_eip !120

block_0x383.i:                                    ; preds = %block_0x346.i
  %_new_gep_357.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_338323.i36, i64 -64
  %341 = bitcast i8* %_new_gep_357.i to i32*
  %342 = load i32, i32* %341, align 4, !mcsema_real_eip !121
  %_new_gep_360.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_338323.i36, i64 -20
  %343 = bitcast i8* %_new_gep_360.i to i32*
  %344 = load i32, i32* %343, align 4, !mcsema_real_eip !122
  %345 = xor i32 %344, %342, !mcsema_real_eip !122
  store i32 %345, i32* %343, align 4, !mcsema_real_eip !123
  br label %block_0x414.i, !mcsema_real_eip !124

block_0x409.i:                                    ; preds = %block_0x391.i
  %346 = sext i8 %332 to i64
  %347 = sext i8 %336 to i64
  %348 = and i64 %347, 4294967295
  %349 = and i64 %346, 4294967295
  %_new_gep_366.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_338323.i36, i64 -64
  %350 = bitcast i8* %_new_gep_366.i to i32*
  %351 = load i32, i32* %350, align 4, !mcsema_real_eip !125
  %_new_gep_369.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_338323.i36, i64 -20
  %352 = bitcast i8* %_new_gep_369.i to i32*
  store i32 %351, i32* %352, align 4, !mcsema_real_eip !126
  br label %block_0x414.i, !mcsema_real_eip !127

block_0x3a9.i:                                    ; preds = %block_0x391.i
  %353 = add i64 %329, 31, !mcsema_real_eip !128
  %354 = inttoptr i64 %353 to i8*
  %355 = load i8, i8* %354, align 1, !mcsema_real_eip !128
  %356 = sext i8 %355 to i32, !mcsema_real_eip !128
  %357 = add i64 %329, 30, !mcsema_real_eip !129
  %358 = inttoptr i64 %357 to i8*
  %359 = load i8, i8* %358, align 1, !mcsema_real_eip !129
  %360 = sext i8 %359 to i32, !mcsema_real_eip !129
  %361 = zext i32 %360 to i64, !mcsema_real_eip !129
  %_new_gep_378.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_338323.i36, i64 -20
  %362 = bitcast i8* %_new_gep_378.i to i32*
  %363 = load i32, i32* %362, align 4, !mcsema_real_eip !130
  %364 = sub nsw i32 15, %356
  %365 = add nsw i32 %364, %360
  %366 = add i32 %365, %363
  store i32 %366, i32* %362, align 4, !mcsema_real_eip !131
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_383327.i39 = load i8*, i8** %70, align 8
  %_new_gep_384.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_383327.i39, i64 -16
  %_allin_new_bt_385.i = bitcast i8* %_new_gep_384.i to i64*
  %367 = load i64, i64* %_allin_new_bt_385.i, align 8, !mcsema_real_eip !132
  %368 = add i64 %367, 28, !mcsema_real_eip !133
  %369 = inttoptr i64 %368 to i8*
  %370 = load i8, i8* %369, align 1, !mcsema_real_eip !133
  %371 = zext i8 %370 to i64
  %372 = tail call x86_64_sysvcc i64 @to_byte(i64 %371), !mcsema_real_eip !134
  %_new_gep_387.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_383327.i39, i64 -20
  %373 = bitcast i8* %_new_gep_387.i to i32*
  %374 = load i32, i32* %373, align 4, !mcsema_real_eip !135
  %375 = trunc i64 %372 to i32, !mcsema_real_eip !136
  %376 = sub i32 %374, %375, !mcsema_real_eip !136
  %377 = zext i32 %376 to i64, !mcsema_real_eip !136
  store i32 %376, i32* %373, align 4, !mcsema_real_eip !137
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_392329.i40 = load i8*, i8** %70, align 8
  %_new_gep_393.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_392329.i40, i64 -20
  %378 = bitcast i8* %_new_gep_393.i to i32*
  %379 = load i32, i32* %378, align 4, !mcsema_real_eip !138
  %380 = icmp eq i32 %379, 0, !mcsema_real_eip !138
  br i1 %380, label %block_0x3e7.i, label %block_0x414.i, !mcsema_real_eip !139

block_0x414.i:                                    ; preds = %block_0x3fd.i, %block_0x3e7.i, %block_0x3a9.i, %block_0x409.i, %block_0x383.i
  %RDI_val.4.i = phi i64 [ %323, %block_0x383.i ], [ %408, %block_0x3e7.i ], [ %408, %block_0x3fd.i ], [ %371, %block_0x3a9.i ], [ %323, %block_0x409.i ]
  %RSI_val.3.i = phi i64 [ %329, %block_0x383.i ], [ %361, %block_0x3e7.i ], [ %361, %block_0x3fd.i ], [ %361, %block_0x3a9.i ], [ %329, %block_0x409.i ]
  %RDX_val.4.i = phi i64 [ 4, %block_0x383.i ], [ %377, %block_0x3e7.i ], [ %377, %block_0x3fd.i ], [ %377, %block_0x3a9.i ], [ %348, %block_0x409.i ]
  %RCX_val.2.i = phi i64 [ 100, %block_0x383.i ], [ %367, %block_0x3e7.i ], [ %367, %block_0x3fd.i ], [ %367, %block_0x3a9.i ], [ %349, %block_0x409.i ]
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_395325.i37 = load i8*, i8** %70, align 8
  %_new_gep_396.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_395325.i37, i64 -20
  %381 = bitcast i8* %_new_gep_396.i to i32*
  %382 = load i32, i32* %381, align 4, !mcsema_real_eip !140
  %_new_gep_399.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_395325.i37, i64 -4
  %383 = bitcast i8* %_new_gep_399.i to i32*
  store i32 %382, i32* %383, align 4, !mcsema_real_eip !141
  %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_401326.i38 = load i8*, i8** %70, align 8
  %_new_gep_402.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_401326.i38, i64 -4
  %384 = bitcast i8* %_new_gep_402.i to i32*
  %385 = load i32, i32* %384, align 4, !mcsema_real_eip !15
  %386 = zext i32 %385 to i64, !mcsema_real_eip !15
  %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_404265.i = load i64, i64* %_RSP_ptr_257.sroa.0.i, align 8
  %uadd147.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_404265.i, i64 80)
  %387 = extractvalue { i64, i1 } %uadd147.i, 0
  %388 = xor i64 %387, %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_404265.i, !mcsema_real_eip !16
  %389 = and i64 %388, 16
  %390 = icmp eq i64 %389, 0
  %391 = icmp slt i64 %387, 0
  %392 = icmp eq i64 %387, 0, !mcsema_real_eip !16
  %393 = xor i64 %_RSP_ptr_257.sroa.0.i.0._RSP_ptr_257.sroa.0.0._RSP_ptr_257.sroa.0.0._load_rsp_ptr_404265.i, -9223372036854775808, !mcsema_real_eip !16
  %394 = and i64 %388, %393, !mcsema_real_eip !16
  %395 = icmp slt i64 %394, 0
  %396 = trunc i64 %387 to i8, !mcsema_real_eip !16
  %397 = tail call i8 @llvm.ctpop.i8(i8 %396), !mcsema_real_eip !16
  %398 = and i8 %397, 1
  %399 = icmp eq i8 %398, 0
  %400 = extractvalue { i64, i1 } %uadd147.i, 1
  store volatile i64 %387, i64* %_RSP_ptr_257.sroa.0.i, align 8
  %401 = inttoptr i64 %387 to i64*, !mcsema_real_eip !17
  %402 = load i64, i64* %401, align 8
  store volatile i64 %402, i64* %_RBP_ptr_258.sroa.0.i, align 8
  %403 = add i64 %387, 16
  store volatile i64 %403, i64* %_RSP_ptr_257.sroa.0.i, align 8
  store i64 %386, i64* %RAX.i, align 8, !mcsema_real_eip !18
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !18
  store i64 %RCX_val.2.i, i64* %RCX.i, align 8, !mcsema_real_eip !18
  store i64 %RDX_val.4.i, i64* %RDX.i, align 8, !mcsema_real_eip !18
  store i64 %RSI_val.3.i, i64* %RSI.i, align 8, !mcsema_real_eip !18
  store i64 %RDI_val.4.i, i64* %RDI.i, align 8, !mcsema_real_eip !18
  store volatile i64 %403, i64* %RSP.i, align 8
  store volatile i64 %402, i64* %RBP.i, align 8
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !18
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !18
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !18
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !18
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !18
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !18
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !18
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !18
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !18
  store i1 %400, i1* %CF.i, align 1, !mcsema_real_eip !18
  store i1 %399, i1* %PF.i, align 1, !mcsema_real_eip !18
  store i1 %390, i1* %AF.i, align 1, !mcsema_real_eip !18
  store i1 %392, i1* %ZF.i, align 1, !mcsema_real_eip !18
  store i1 %391, i1* %SF.i, align 1, !mcsema_real_eip !18
  store i1 %395, i1* %OF.i, align 1, !mcsema_real_eip !18
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !18
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !18
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !18
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !18
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !18
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !18
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !18
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !18
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !18
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !18
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !18
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !18
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !18
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !18
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !18
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !18
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !18
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !18
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !18
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !18
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !18
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !18
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !18
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !18
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !18
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !18
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !18
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !18
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !18
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !18
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !18
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !18
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !18
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !18
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !18
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !18
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !18
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !18
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !18
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !18
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !18
  store i64 %65, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !18
  store i64 %66, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !18
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_257.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_258.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 88, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x3e7.i:                                    ; preds = %block_0x3a9.i
  %_new_gep_414.i = getelementptr i8, i8* %_RBP_ptr_258.sroa.0.i.0._RBP_ptr_258.sroa.0.0._RBP_ptr_258.sroa.0.0._load_rbp_ptr_392329.i40, i64 -16
  %_allin_new_bt_415.i = bitcast i8* %_new_gep_414.i to i64*
  %404 = load i64, i64* %_allin_new_bt_415.i, align 8, !mcsema_real_eip !142
  %405 = add i64 %404, 31, !mcsema_real_eip !143
  %406 = inttoptr i64 %405 to i8*
  %407 = load i8, i8* %406, align 1, !mcsema_real_eip !143
  %408 = zext i8 %407 to i64
  %409 = tail call x86_64_sysvcc i64 @to_byte(i64 %408), !mcsema_real_eip !144
  %410 = trunc i64 %409 to i32, !mcsema_real_eip !145
  %411 = icmp eq i32 %410, 4
  br i1 %411, label %block_0x414.i, label %block_0x3fd.i, !mcsema_real_eip !146

block_0x3fd.i:                                    ; preds = %block_0x3e7.i
  store i32 -32, i32* %378, align 4, !mcsema_real_eip !147
  br label %block_0x414.i, !mcsema_real_eip !148

sub_0.exit:                                       ; preds = %block_0x414.i, %block_0x41a.i
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
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 8, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!4 = !{i64 12, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!5 = !{i64 16, [9 x i8] c"\09callq\090\00"}
!6 = !{i64 23, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!7 = !{i64 26, [21 x i8] c"\09cmpl\09$37, -32(%rbp)\00"}
!8 = !{i64 30, [7 x i8] c"\09je\0911\00"}
!9 = !{i64 47, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!10 = !{i64 55, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!11 = !{i64 59, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!12 = !{i64 63, [21 x i8] c"\09movsbl\09(%rax), %ecx\00"}
!13 = !{i64 69, [7 x i8] c"\09je\0912\00"}
!14 = !{i64 42, [10 x i8] c"\09jmp\091003\00"}
!15 = !{i64 1050, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!16 = !{i64 1053, [16 x i8] c"\09addq\09$80, %rsp\00"}
!17 = !{i64 1057, [11 x i8] c"\09popq\09%rbp\00"}
!18 = !{i64 1058, [6 x i8] c"\09retq\00"}
!19 = !{i64 91, [22 x i8] c"\09movzbl\091(%rax), %edi\00"}
!20 = !{i64 95, [9 x i8] c"\09callq\090\00"}
!21 = !{i64 100, [15 x i8] c"\09cmpl\09$9, %eax\00"}
!22 = !{i64 103, [7 x i8] c"\09je\0912\00"}
!23 = !{i64 121, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!24 = !{i64 125, [22 x i8] c"\09movzbl\092(%rax), %edi\00"}
!25 = !{i64 129, [9 x i8] c"\09callq\090\00"}
!26 = !{i64 134, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!27 = !{i64 137, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
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
!42 = !{i64 252, [8 x i8] c"\09jne\0912\00"}
!43 = !{i64 258, [29 x i8] c"\09movl\09$4294967292, -20(%rbp)\00"}
!44 = !{i64 282, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!45 = !{i64 286, [22 x i8] c"\09movsbl\095(%rax), %ecx\00"}
!46 = !{i64 295, [21 x i8] c"\09movb\09%dl, -33(%rbp)\00"}
!47 = !{i64 298, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!48 = !{i64 302, [22 x i8] c"\09movsbl\095(%rax), %ecx\00"}
!49 = !{i64 314, [21 x i8] c"\09movb\09%dl, -34(%rbp)\00"}
!50 = !{i64 317, [24 x i8] c"\09movzbl\09-33(%rbp), %ecx\00"}
!51 = !{i64 324, [8 x i8] c"\09jne\0927\00"}
!52 = !{i64 330, [24 x i8] c"\09movzbl\09-34(%rbp), %eax\00"}
!53 = !{i64 337, [8 x i8] c"\09jne\0914\00"}
!54 = !{i64 439, [22 x i8] c"\09movl\09-20(%rbp), %ecx\00"}
!55 = !{i64 445, [16 x i8] c"\09shll\09%cl, %eax\00"}
!56 = !{i64 447, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!57 = !{i64 450, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!58 = !{i64 454, [7 x i8] c"\09je\0912\00"}
!59 = !{i64 479, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!60 = !{i64 490, [9 x i8] c"\09callq\090\00"}
!61 = !{i64 495, [15 x i8] c"\09movw\09%ax, %cx\00"}
!62 = !{i64 498, [21 x i8] c"\09movw\09%cx, -38(%rbp)\00"}
!63 = !{i64 502, [24 x i8] c"\09movzwl\09-38(%rbp), %eax\00"}
!64 = !{i64 506, [18 x i8] c"\09orl\09$21845, %eax\00"}
!65 = !{i64 516, [8 x i8] c"\09jne\0932\00"}
!66 = !{i64 467, [9 x i8] c"\09jmp\09578\00"}
!67 = !{i64 554, [24 x i8] c"\09movl\09$48059, -20(%rbp)\00"}
!68 = !{i64 568, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!69 = !{i64 579, [9 x i8] c"\09callq\090\00"}
!70 = !{i64 584, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!71 = !{i64 587, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!72 = !{i64 590, [24 x i8] c"\09xorl\09$2760406685, %eax\00"}
!73 = !{i64 595, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!74 = !{i64 598, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!75 = !{i64 604, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!76 = !{i64 607, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!77 = !{i64 610, [19 x i8] c"\09andl\09$65535, %eax\00"}
!78 = !{i64 615, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!79 = !{i64 618, [24 x i8] c"\09cmpl\09$20299, -52(%rbp)\00"}
!80 = !{i64 625, [8 x i8] c"\09jne\0924\00"}
!81 = !{i64 542, [24 x i8] c"\09movl\09$43690, -20(%rbp)\00"}
!82 = !{i64 655, [24 x i8] c"\09movl\09$48351, -20(%rbp)\00"}
!83 = !{i64 667, [22 x i8] c"\09movl\09-20(%rbp), %edi\00"}
!84 = !{i64 670, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!85 = !{i64 681, [9 x i8] c"\09callq\090\00"}
!86 = !{i64 686, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!87 = !{i64 689, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!88 = !{i64 695, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!89 = !{i64 698, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!90 = !{i64 701, [15 x i8] c"\09andl\09$7, %eax\00"}
!91 = !{i64 707, [7 x i8] c"\09je\0912\00"}
!92 = !{i64 631, [22 x i8] c"\09movl\09-56(%rbp), %eax\00"}
!93 = !{i64 634, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!94 = !{i64 637, [8 x i8] c"\09jne\0912\00"}
!95 = !{i64 643, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!96 = !{i64 733, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!97 = !{i64 736, [28 x i8] c"\09cmpl\09$268435455, -60(%rbp)\00"}
!98 = !{i64 743, [8 x i8] c"\09jbe\0912\00"}
!99 = !{i64 769, [22 x i8] c"\09xorl\09$13631488, %ecx\00"}
!100 = !{i64 775, [22 x i8] c"\09movl\09%ecx, -60(%rbp)\00"}
!101 = !{i64 778, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!102 = !{i64 784, [22 x i8] c"\09movl\09%ecx, -60(%rbp)\00"}
!103 = !{i64 787, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!104 = !{i64 796, [22 x i8] c"\09movl\09%ecx, -60(%rbp)\00"}
!105 = !{i64 799, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!106 = !{i64 802, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!107 = !{i64 809, [22 x i8] c"\09movl\09-68(%rbp), %ecx\00"}
!108 = !{i64 812, [11 x i8] c"\09divl\09%ecx\00"}
!109 = !{i64 814, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!110 = !{i64 817, [20 x i8] c"\09cmpl\09$3, -60(%rbp)\00"}
!111 = !{i64 821, [7 x i8] c"\09je\0911\00"}
!112 = !{i64 843, [22 x i8] c"\09movl\09-20(%rbp), %edi\00"}
!113 = !{i64 846, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!114 = !{i64 857, [9 x i8] c"\09callq\090\00"}
!115 = !{i64 862, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!116 = !{i64 865, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!117 = !{i64 869, [23 x i8] c"\09movsbl\0928(%rsi), %eax\00"}
!118 = !{i64 876, [8 x i8] c"\09jne\0931\00"}
!119 = !{i64 833, [9 x i8] c"\09jmp\09212\00"}
!120 = !{i64 931, [8 x i8] c"\09jne\0996\00"}
!121 = !{i64 899, [22 x i8] c"\09movl\09-64(%rbp), %eax\00"}
!122 = !{i64 902, [22 x i8] c"\09xorl\09-20(%rbp), %eax\00"}
!123 = !{i64 905, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!124 = !{i64 908, [9 x i8] c"\09jmp\09131\00"}
!125 = !{i64 1033, [22 x i8] c"\09movl\09-64(%rbp), %eax\00"}
!126 = !{i64 1036, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!127 = !{i64 1039, [7 x i8] c"\09jmp\090\00"}
!128 = !{i64 946, [23 x i8] c"\09movsbl\0931(%rcx), %edx\00"}
!129 = !{i64 954, [23 x i8] c"\09movsbl\0930(%rcx), %esi\00"}
!130 = !{i64 962, [22 x i8] c"\09addl\09-20(%rbp), %eax\00"}
!131 = !{i64 965, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!132 = !{i64 968, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!133 = !{i64 972, [23 x i8] c"\09movzbl\0928(%rcx), %edi\00"}
!134 = !{i64 976, [9 x i8] c"\09callq\090\00"}
!135 = !{i64 981, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!136 = !{i64 984, [17 x i8] c"\09subl\09%eax, %edx\00"}
!137 = !{i64 986, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!138 = !{i64 989, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!139 = !{i64 993, [8 x i8] c"\09jne\0929\00"}
!140 = !{i64 1044, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!141 = !{i64 1047, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!142 = !{i64 999, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!143 = !{i64 1003, [23 x i8] c"\09movzbl\0931(%rax), %edi\00"}
!144 = !{i64 1007, [9 x i8] c"\09callq\090\00"}
!145 = !{i64 1012, [15 x i8] c"\09cmpl\09$4, %eax\00"}
!146 = !{i64 1015, [6 x i8] c"\09je\097\00"}
!147 = !{i64 1021, [29 x i8] c"\09movl\09$4294967264, -20(%rbp)\00"}
!148 = !{i64 1028, [7 x i8] c"\09jmp\096\00"}
