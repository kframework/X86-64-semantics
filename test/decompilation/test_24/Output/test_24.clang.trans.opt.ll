; ModuleID = 'Output/test_24.clang.trans.opt.bc'
source_filename = "Output/test_24.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @to_byte(i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_159.i = alloca [88 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_159.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 88, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_159.i, i64 0, i64 88
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
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
  %7 = bitcast i64* %R8.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %9 = bitcast i64* %R10.i to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %11 = bitcast i64* %R12.i to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %13 = bitcast i64* %R14.i to <2 x i64>*
  %14 = load <2 x i64>, <2 x i64>* %13, align 8
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
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %49 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %66 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %67 = load <2 x i64>, <2 x i64>* %66, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_160.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %68 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_169.i4 = load i8*, i8** %68, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_169.i4, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_160.i, i64* %_allin_new_bt_.i, align 8
  %69 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %69, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_169.i4, i64 -88
  %70 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %70, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_11.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_169.i4, i64 -24
  %_allin_new_bt_12.i = bitcast i8* %_new_gep_11.i to i64*
  store i64 %6, i64* %_allin_new_bt_12.i, align 8, !mcsema_real_eip !3
  %71 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13170.i5 = load i8*, i8** %71, align 8
  %_new_gep_14.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13170.i5, i64 -16
  %_allin_new_bt_15.i = bitcast i8* %_new_gep_14.i to i64*
  %72 = load i64, i64* %_allin_new_bt_15.i, align 8, !mcsema_real_eip !4
  %73 = tail call x86_64_sysvcc i64 @strlen(i64 %72), !mcsema_real_eip !5
  %_new_gep_17.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13170.i5, i64 -32
  %74 = trunc i64 %73 to i32, !mcsema_real_eip !6
  %75 = bitcast i8* %_new_gep_17.i to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !6
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19171.i6 = load i8*, i8** %71, align 8
  %_new_gep_20.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19171.i6, i64 -32
  %76 = bitcast i8* %_new_gep_20.i to i32*
  %77 = load i32, i32* %76, align 4, !mcsema_real_eip !7
  %78 = icmp eq i32 %77, 37
  br i1 %78, label %block_0x32.i, label %block_0x27.i, !mcsema_real_eip !8

block_0x27.i:                                     ; preds = %driverBlockRaw
  %79 = and i64 %73, 4294967295
  br label %sub_0.exit, !mcsema_real_eip !9

block_0x32.i:                                     ; preds = %driverBlockRaw
  %_new_gep_28.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19171.i6, i64 -16
  %_allin_new_bt_29.i = bitcast i8* %_new_gep_28.i to i64*
  %80 = load i64, i64* %_allin_new_bt_29.i, align 8, !mcsema_real_eip !10
  %81 = add i64 %80, 4
  store i64 %81, i64* %_allin_new_bt_29.i, align 8, !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33173.i8 = load i8*, i8** %71, align 8
  %_new_gep_34.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33173.i8, i64 -16
  %_allin_new_bt_35.i = bitcast i8* %_new_gep_34.i to i64*
  %82 = load i64, i64* %_allin_new_bt_35.i, align 8, !mcsema_real_eip !12
  %83 = inttoptr i64 %82 to i8*
  %84 = load i8, i8* %83, align 1, !mcsema_real_eip !13
  %85 = sext i8 %84 to i64
  %86 = and i64 %85, 4294967295
  %87 = icmp eq i8 %84, 100
  br i1 %87, label %block_0x5f.i, label %sub_0.exit, !mcsema_real_eip !14

block_0x5f.i:                                     ; preds = %block_0x32.i
  %88 = add i64 %82, 1, !mcsema_real_eip !15
  %89 = inttoptr i64 %88 to i8*
  %90 = load i8, i8* %89, align 1, !mcsema_real_eip !15
  %91 = zext i8 %90 to i64
  %92 = tail call x86_64_sysvcc i64 @to_byte(i64 %91), !mcsema_real_eip !16
  %93 = trunc i64 %92 to i32, !mcsema_real_eip !17
  %94 = icmp eq i32 %93, 9
  br i1 %94, label %block_0x83.i, label %sub_0.exit, !mcsema_real_eip !18

block_0x83.i:                                     ; preds = %block_0x5f.i
  %95 = load i64, i64* %_allin_new_bt_35.i, align 8, !mcsema_real_eip !19
  %96 = add i64 %95, 2, !mcsema_real_eip !20
  %97 = inttoptr i64 %96 to i8*
  %98 = load i8, i8* %97, align 1, !mcsema_real_eip !20
  %99 = zext i8 %98 to i64
  %100 = tail call x86_64_sysvcc i64 @to_byte(i64 %99), !mcsema_real_eip !21
  %_new_gep_58.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33173.i8, i64 -24
  %101 = trunc i64 %100 to i32, !mcsema_real_eip !22
  %102 = bitcast i8* %_new_gep_58.i to i32*
  store i32 %101, i32* %102, align 4, !mcsema_real_eip !22
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_60176.i9 = load i8*, i8** %71, align 8
  %_new_gep_61.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_60176.i9, i64 -24
  %103 = bitcast i8* %_new_gep_61.i to i32*
  %104 = load i32, i32* %103, align 4, !mcsema_real_eip !23
  %.mask164.i = and i32 %104, 2147483647
  %105 = icmp eq i32 %.mask164.i, 13
  br i1 %105, label %block_0xb0.i, label %sub_0.exit, !mcsema_real_eip !24

block_0xb0.i:                                     ; preds = %block_0x83.i
  %_new_gep_66.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_60176.i9, i64 -16
  %_allin_new_bt_67.i = bitcast i8* %_new_gep_66.i to i64*
  %106 = load i64, i64* %_allin_new_bt_67.i, align 8, !mcsema_real_eip !25
  %107 = add i64 %106, 3, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i8*
  %109 = load i8, i8* %108, align 1, !mcsema_real_eip !26
  %110 = zext i8 %109 to i64
  %111 = tail call x86_64_sysvcc i64 @to_byte(i64 %110), !mcsema_real_eip !27
  %_new_gep_69.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_60176.i9, i64 -28
  %112 = trunc i64 %111 to i32, !mcsema_real_eip !28
  %113 = bitcast i8* %_new_gep_69.i to i32*
  store i32 %112, i32* %113, align 4, !mcsema_real_eip !28
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_71178.i10 = load i8*, i8** %71, align 8
  %_new_gep_72.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_71178.i10, i64 -28
  %114 = bitcast i8* %_new_gep_72.i to i32*
  %115 = load i32, i32* %114, align 4, !mcsema_real_eip !29
  %116 = add i32 %115, 1
  %.lobit.i = ashr i32 %116, 31
  %117 = zext i32 %.lobit.i to i64, !mcsema_real_eip !30
  %118 = shl nuw i64 %117, 32, !mcsema_real_eip !31
  %119 = sext i32 %116 to i64, !mcsema_real_eip !31
  %120 = or i64 %118, %119, !mcsema_real_eip !31
  %121 = sdiv i64 %120, 2, !mcsema_real_eip !31
  %122 = srem i64 %120, 2, !mcsema_real_eip !31
  %123 = and i64 %122, 4294967295
  %124 = trunc i64 %121 to i32, !mcsema_real_eip !32
  %125 = icmp eq i32 %124, 7
  br i1 %125, label %block_0xe7.i, label %sub_0.exit, !mcsema_real_eip !33

block_0xe7.i:                                     ; preds = %block_0xb0.i
  %_new_gep_77.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_71178.i10, i64 -16
  %_allin_new_bt_78.i = bitcast i8* %_new_gep_77.i to i64*
  %126 = load i64, i64* %_allin_new_bt_78.i, align 8, !mcsema_real_eip !34
  %127 = add i64 %126, 4, !mcsema_real_eip !35
  %128 = inttoptr i64 %127 to i8*
  %129 = load i8, i8* %128, align 1, !mcsema_real_eip !35
  %130 = and i8 %129, 15
  %131 = icmp eq i8 %130, 1
  br i1 %131, label %block_0x101.i, label %block_0x127.i, !mcsema_real_eip !36

block_0x101.i:                                    ; preds = %block_0xe7.i
  %132 = and i8 %129, -16
  %133 = icmp eq i8 %132, 48
  br i1 %133, label %block_0x11b.i, label %block_0x127.i, !mcsema_real_eip !37

block_0x127.i:                                    ; preds = %block_0x101.i, %block_0xe7.i
  %RCX_val.1.in.i = phi i8 [ %132, %block_0x101.i ], [ %130, %block_0xe7.i ]
  %RCX_val.1.i = zext i8 %RCX_val.1.in.i to i64
  br label %sub_0.exit, !mcsema_real_eip !38

block_0x11b.i:                                    ; preds = %block_0x101.i
  %_new_gep_86.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_71178.i10, i64 -20
  %134 = bitcast i8* %_new_gep_86.i to i32*
  store i32 -4, i32* %134, align 4, !mcsema_real_eip !39
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_88180.i11 = load i8*, i8** %71, align 8
  %_new_gep_89.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_88180.i11, i64 -16
  %_allin_new_bt_90.i = bitcast i8* %_new_gep_89.i to i64*
  %135 = load i64, i64* %_allin_new_bt_90.i, align 8, !mcsema_real_eip !40
  %136 = add i64 %135, 5, !mcsema_real_eip !41
  %137 = inttoptr i64 %136 to i8*
  %138 = load i8, i8* %137, align 1, !mcsema_real_eip !41
  %139 = and i8 %138, 15
  %_new_gep_92.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_88180.i11, i64 -33
  store i8 %139, i8* %_new_gep_92.i, align 1, !mcsema_real_eip !42
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94181.i12 = load i8*, i8** %71, align 8
  %_new_gep_95.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94181.i12, i64 -16
  %_allin_new_bt_96.i = bitcast i8* %_new_gep_95.i to i64*
  %140 = load i64, i64* %_allin_new_bt_96.i, align 8, !mcsema_real_eip !43
  %141 = add i64 %140, 5, !mcsema_real_eip !44
  %142 = inttoptr i64 %141 to i8*
  %143 = load i8, i8* %142, align 1, !mcsema_real_eip !44
  %144 = and i8 %143, -16
  %_new_gep_98.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94181.i12, i64 -34
  store i8 %144, i8* %_new_gep_98.i, align 1, !mcsema_real_eip !45
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_100182.i13 = load i8*, i8** %71, align 8
  %_new_gep_101.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_100182.i13, i64 -33
  %145 = load i8, i8* %_new_gep_101.i, align 1, !mcsema_real_eip !46
  %146 = icmp eq i8 %145, 3
  br i1 %146, label %block_0x169.i, label %block_0x188.i, !mcsema_real_eip !47

block_0x169.i:                                    ; preds = %block_0x11b.i
  %_new_gep_104.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_100182.i13, i64 -34
  %147 = load i8, i8* %_new_gep_104.i, align 1, !mcsema_real_eip !48
  %148 = icmp eq i8 %147, 96
  br i1 %148, label %block_0x193.i, label %block_0x188.i, !mcsema_real_eip !49

block_0x188.i:                                    ; preds = %block_0x169.i, %block_0x11b.i
  br label %block_0x193.i, !mcsema_real_eip !48

block_0x193.i:                                    ; preds = %block_0x188.i, %block_0x169.i
  %.sink166.i = phi i32 [ 5, %block_0x188.i ], [ 4, %block_0x169.i ]
  %_new_gep_143.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_100182.i13, i64 -20
  %149 = bitcast i8* %_new_gep_143.i to i32*
  %150 = load i32, i32* %149, align 4
  %151 = add i32 %150, %.sink166.i
  store i32 %151, i32* %149, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_112184.i14 = load i8*, i8** %71, align 8
  %_new_gep_113.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_112184.i14, i64 -16
  %_allin_new_bt_114.i = bitcast i8* %_new_gep_113.i to i64*
  %152 = load i64, i64* %_allin_new_bt_114.i, align 8, !mcsema_real_eip !50
  %153 = add i64 %152, 6, !mcsema_real_eip !51
  %154 = inttoptr i64 %153 to i8*
  %155 = load i8, i8* %154, align 1, !mcsema_real_eip !51
  %156 = zext i8 %155 to i64
  %157 = tail call x86_64_sysvcc i64 @to_byte(i64 %156), !mcsema_real_eip !52
  %_new_gep_116.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_112184.i14, i64 -35
  %158 = trunc i64 %157 to i8, !mcsema_real_eip !53
  store i8 %158, i8* %_new_gep_116.i, align 1, !mcsema_real_eip !53
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_118186.i15 = load i8*, i8** %71, align 8
  %_new_gep_119.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_118186.i15, i64 -16
  %_allin_new_bt_120.i = bitcast i8* %_new_gep_119.i to i64*
  %159 = load i64, i64* %_allin_new_bt_120.i, align 8, !mcsema_real_eip !54
  %160 = add i64 %159, 7, !mcsema_real_eip !55
  %161 = inttoptr i64 %160 to i8*
  %162 = load i8, i8* %161, align 1, !mcsema_real_eip !55
  %163 = zext i8 %162 to i64
  %164 = tail call x86_64_sysvcc i64 @to_byte(i64 %163), !mcsema_real_eip !56
  %_new_gep_122.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_118186.i15, i64 -35
  %165 = load i8, i8* %_new_gep_122.i, align 1, !mcsema_real_eip !57
  %166 = zext i8 %165 to i32
  %167 = trunc i64 %164 to i32, !mcsema_real_eip !58
  %168 = or i32 %166, %167, !mcsema_real_eip !58
  %169 = trunc i32 %168 to i8, !mcsema_real_eip !58
  store i8 %169, i8* %_new_gep_122.i, align 1, !mcsema_real_eip !59
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127188.i16 = load i8*, i8** %71, align 8
  %_new_gep_131.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127188.i16, i64 -20
  %170 = bitcast i8* %_new_gep_131.i to i32*
  %171 = load i32, i32* %170, align 4, !mcsema_real_eip !60
  %172 = zext i32 %171 to i64, !mcsema_real_eip !60
  %173 = and i32 %171, 31, !mcsema_real_eip !61
  %174 = add i32 %171, -1
  %175 = icmp ne i32 %173, 0, !mcsema_real_eip !61
  %176 = select i1 %175, i32 %174, i32 0, !mcsema_real_eip !61
  %177 = zext i1 %175 to i32
  %178 = shl i32 %171, %176, !mcsema_real_eip !61
  %179 = shl i32 %178, %177, !mcsema_real_eip !61
  store i32 %179, i32* %170, align 4, !mcsema_real_eip !62
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_139189.i17 = load i8*, i8** %71, align 8
  %_new_gep_140.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_139189.i17, i64 -20
  %180 = bitcast i8* %_new_gep_140.i to i32*
  %181 = load i32, i32* %180, align 4, !mcsema_real_eip !63
  %182 = icmp eq i32 %181, 0, !mcsema_real_eip !63
  br i1 %182, label %block_0x206.i, label %block_0x1fa.i, !mcsema_real_eip !64

block_0x1fa.i:                                    ; preds = %block_0x193.i
  %183 = zext i32 %168 to i64, !mcsema_real_eip !58
  br label %sub_0.exit, !mcsema_real_eip !65

block_0x206.i:                                    ; preds = %block_0x193.i
  %_new_gep_152.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_139189.i17, i64 -16
  %_allin_new_bt_153.i = bitcast i8* %_new_gep_152.i to i64*
  %184 = load i64, i64* %_allin_new_bt_153.i, align 8, !mcsema_real_eip !66
  %185 = add i64 %184, 8
  %186 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %185, i64 4), !mcsema_real_eip !67
  %187 = and i64 %186, 65535
  %188 = and i64 %172, 4294901760, !mcsema_real_eip !68
  %189 = or i64 %187, %188
  %_new_gep_155.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_139189.i17, i64 -38
  %190 = trunc i64 %186 to i16, !mcsema_real_eip !69
  %191 = bitcast i8* %_new_gep_155.i to i16*
  store i16 %190, i16* %191, align 2, !mcsema_real_eip !69
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_157191.i18 = load i8*, i8** %71, align 8
  %_new_gep_158.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_157191.i18, i64 -38
  %192 = bitcast i8* %_new_gep_158.i to i16*
  %193 = load i16, i16* %192, align 2, !mcsema_real_eip !70
  %194 = zext i16 %193 to i32
  %195 = or i32 %194, 21845, !mcsema_real_eip !71
  %196 = icmp eq i32 %195, 56663
  %197 = or i32 %194, 43690
  %198 = icmp eq i32 %197, 65211
  %or.cond.i = and i1 %196, %198
  %.sink4.i = select i1 %or.cond.i, i32 43690, i32 48059
  %_allin_new_bt_195.sink.in.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_157191.i18, i64 -20
  %199 = bitcast i8* %_allin_new_bt_195.sink.in.i to i32*
  store i32 %.sink4.i, i32* %199, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_166192.i19 = load i8*, i8** %71, align 8
  %_new_gep_167.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_166192.i19, i64 -16
  %_allin_new_bt_168.i = bitcast i8* %_new_gep_167.i to i64*
  %200 = load i64, i64* %_allin_new_bt_168.i, align 8, !mcsema_real_eip !72
  %201 = add i64 %200, 12
  %202 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %201, i64 8), !mcsema_real_eip !73
  %_new_gep_170.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_166192.i19, i64 -44
  %203 = trunc i64 %202 to i32, !mcsema_real_eip !74
  %204 = bitcast i8* %_new_gep_170.i to i32*
  store i32 %203, i32* %204, align 4, !mcsema_real_eip !74
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_172193.i20 = load i8*, i8** %71, align 8
  %_new_gep_173.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_172193.i20, i64 -44
  %205 = bitcast i8* %_new_gep_173.i to i32*
  %206 = load i32, i32* %205, align 4, !mcsema_real_eip !75
  %207 = xor i32 %206, -1534560611, !mcsema_real_eip !76
  %_new_gep_176.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_172193.i20, i64 -48
  %208 = bitcast i8* %_new_gep_176.i to i32*
  store i32 %207, i32* %208, align 4, !mcsema_real_eip !77
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_178194.i21 = load i8*, i8** %71, align 8
  %_new_gep_179.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_178194.i21, i64 -48
  %209 = bitcast i8* %_new_gep_179.i to i32*
  %210 = load i32, i32* %209, align 4, !mcsema_real_eip !78
  %211 = lshr i32 %210, 16
  %_new_gep_182.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_178194.i21, i64 -52
  %212 = bitcast i8* %_new_gep_182.i to i32*
  store i32 %211, i32* %212, align 4, !mcsema_real_eip !79
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_184195.i22 = load i8*, i8** %71, align 8
  %_new_gep_185.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_184195.i22, i64 -48
  %213 = bitcast i8* %_new_gep_185.i to i32*
  %214 = load i32, i32* %213, align 4, !mcsema_real_eip !80
  %215 = and i32 %214, 65535, !mcsema_real_eip !81
  %_new_gep_188.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_184195.i22, i64 -56
  %216 = bitcast i8* %_new_gep_188.i to i32*
  store i32 %215, i32* %216, align 4, !mcsema_real_eip !82
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_190196.i23 = load i8*, i8** %71, align 8
  %_new_gep_191.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_190196.i23, i64 -52
  %217 = bitcast i8* %_new_gep_191.i to i32*
  %218 = load i32, i32* %217, align 4, !mcsema_real_eip !83
  %219 = icmp eq i32 %218, 79
  br i1 %219, label %block_0x2af.i, label %block_0x206.block_0x2c7_crit_edge.i, !mcsema_real_eip !84

block_0x206.block_0x2c7_crit_edge.i:              ; preds = %block_0x206.i
  %.pre218.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_190196.i23, i64 -20
  br label %block_0x2c7.i

block_0x2af.i:                                    ; preds = %block_0x206.i
  %_new_gep_197.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_190196.i23, i64 -56
  %220 = bitcast i8* %_new_gep_197.i to i32*
  %221 = load i32, i32* %220, align 4, !mcsema_real_eip !85
  %_new_gep_200.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_190196.i23, i64 -20
  %222 = bitcast i8* %_new_gep_200.i to i32*
  %223 = load i32, i32* %222, align 4, !mcsema_real_eip !86
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %block_0x2ce.i, label %block_0x2c7.i, !mcsema_real_eip !87

block_0x2c7.i:                                    ; preds = %block_0x2af.i, %block_0x206.block_0x2c7_crit_edge.i
  %_new_gep_203.pre-phi.i = phi i8* [ %.pre218.i, %block_0x206.block_0x2c7_crit_edge.i ], [ %_new_gep_200.i, %block_0x2af.i ]
  br label %block_0x2ce.i, !mcsema_real_eip !85

block_0x2ce.i:                                    ; preds = %block_0x2c7.i, %block_0x2af.i
  %_allin_new_bt_226.sink.in.i = phi i8* [ %_new_gep_203.pre-phi.i, %block_0x2c7.i ], [ %_new_gep_200.i, %block_0x2af.i ]
  %.sink6.i = phi i32 [ 48351, %block_0x2c7.i ], [ 0, %block_0x2af.i ]
  %225 = bitcast i8* %_allin_new_bt_226.sink.in.i to i32*
  store i32 %.sink6.i, i32* %225, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_205198.i24 = load i8*, i8** %71, align 8
  %_new_gep_206.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_205198.i24, i64 -20
  %226 = bitcast i8* %_new_gep_206.i to i32*
  %227 = load i32, i32* %226, align 4, !mcsema_real_eip !88
  %228 = zext i32 %227 to i64, !mcsema_real_eip !88
  %_new_gep_209.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_205198.i24, i64 -16
  %_allin_new_bt_210.i = bitcast i8* %_new_gep_209.i to i64*
  %229 = load i64, i64* %_allin_new_bt_210.i, align 8, !mcsema_real_eip !89
  %230 = add i64 %229, 20
  %231 = tail call x86_64_sysvcc i64 @read_bytes(i64 %228, i64 %230, i64 8), !mcsema_real_eip !90
  %_new_gep_212.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_205198.i24, i64 -60
  %232 = trunc i64 %231 to i32, !mcsema_real_eip !91
  %233 = bitcast i8* %_new_gep_212.i to i32*
  store i32 %232, i32* %233, align 4, !mcsema_real_eip !91
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_214200.i25 = load i8*, i8** %71, align 8
  %_new_gep_215.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_214200.i25, i64 -60
  %234 = bitcast i8* %_new_gep_215.i to i32*
  %235 = load i32, i32* %234, align 4, !mcsema_real_eip !92
  %236 = add i32 %235, -3
  store i32 %236, i32* %234, align 4, !mcsema_real_eip !93
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_220201.i26 = load i8*, i8** %71, align 8
  %_new_gep_221.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_220201.i26, i64 -60
  %237 = bitcast i8* %_new_gep_221.i to i32*
  %238 = load i32, i32* %237, align 4, !mcsema_real_eip !94
  %239 = and i32 %238, 7, !mcsema_real_eip !95
  %240 = icmp eq i32 %239, 0, !mcsema_real_eip !95
  br i1 %240, label %block_0x315.i, label %sub_0.exit, !mcsema_real_eip !96

block_0x315.i:                                    ; preds = %block_0x2ce.i
  %241 = xor i32 %238, -2147483648
  store i32 %241, i32* %237, align 4, !mcsema_real_eip !97
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_234202.i27 = load i8*, i8** %71, align 8
  %_new_gep_235.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_234202.i27, i64 -60
  %242 = bitcast i8* %_new_gep_235.i to i32*
  %243 = load i32, i32* %242, align 4, !mcsema_real_eip !98
  %244 = icmp ult i32 %243, 268435456
  br i1 %244, label %block_0x339.i, label %sub_0.exit, !mcsema_real_eip !99

block_0x339.i:                                    ; preds = %block_0x315.i
  %245 = xor i32 %243, 13631488, !mcsema_real_eip !100
  store i32 %245, i32* %242, align 4, !mcsema_real_eip !101
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_246203.i28 = load i8*, i8** %71, align 8
  %_new_gep_247.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_246203.i28, i64 -60
  %246 = bitcast i8* %_new_gep_247.i to i32*
  %247 = load i32, i32* %246, align 4, !mcsema_real_eip !102
  %248 = lshr i32 %247, 4
  store i32 %248, i32* %246, align 4, !mcsema_real_eip !103
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_252204.i29 = load i8*, i8** %71, align 8
  %_new_gep_253.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_252204.i29, i64 -60
  %249 = bitcast i8* %_new_gep_253.i to i32*
  %250 = load i32, i32* %249, align 4, !mcsema_real_eip !104
  %251 = add i32 %250, -226
  store i32 %251, i32* %249, align 4, !mcsema_real_eip !105
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_258205.i30 = load i8*, i8** %71, align 8
  %_new_gep_259.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_258205.i30, i64 -60
  %252 = bitcast i8* %_new_gep_259.i to i32*
  %253 = load i32, i32* %252, align 4, !mcsema_real_eip !106
  %_new_gep_262.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_258205.i30, i64 -68
  %254 = bitcast i8* %_new_gep_262.i to i32*
  store i32 10000, i32* %254, align 4, !mcsema_real_eip !107
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_264206.i31 = load i8*, i8** %71, align 8
  %_new_gep_265.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_264206.i31, i64 -68
  %255 = bitcast i8* %_new_gep_265.i to i32*
  %256 = load i32, i32* %255, align 4, !mcsema_real_eip !108
  %257 = zext i32 %256 to i64, !mcsema_real_eip !108
  %258 = sext i32 %253 to i64
  %259 = udiv i64 %258, %257, !mcsema_real_eip !109
  %_new_gep_268.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_264206.i31, i64 -60
  %260 = trunc i64 %259 to i32, !mcsema_real_eip !110
  %261 = bitcast i8* %_new_gep_268.i to i32*
  store i32 %260, i32* %261, align 4, !mcsema_real_eip !110
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_270207.i32 = load i8*, i8** %71, align 8
  %_new_gep_271.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_270207.i32, i64 -60
  %262 = bitcast i8* %_new_gep_271.i to i32*
  %263 = load i32, i32* %262, align 4, !mcsema_real_eip !111
  %264 = icmp eq i32 %263, 3
  br i1 %264, label %block_0x389.i, label %block_0x37e.i, !mcsema_real_eip !112

block_0x37e.i:                                    ; preds = %block_0x339.i
  %265 = urem i64 %258, %257, !mcsema_real_eip !109
  %266 = and i64 %265, 4294967295
  br label %sub_0.exit, !mcsema_real_eip !113

block_0x389.i:                                    ; preds = %block_0x339.i
  %_new_gep_280.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_270207.i32, i64 -20
  %267 = bitcast i8* %_new_gep_280.i to i32*
  %268 = load i32, i32* %267, align 4, !mcsema_real_eip !114
  %269 = zext i32 %268 to i64, !mcsema_real_eip !114
  %_new_gep_283.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_270207.i32, i64 -16
  %_allin_new_bt_284.i = bitcast i8* %_new_gep_283.i to i64*
  %270 = load i64, i64* %_allin_new_bt_284.i, align 8, !mcsema_real_eip !115
  %271 = add i64 %270, 28
  %272 = tail call x86_64_sysvcc i64 @read_bytes(i64 %269, i64 %271, i64 4), !mcsema_real_eip !116
  %_new_gep_286.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_270207.i32, i64 -64
  %273 = trunc i64 %272 to i32, !mcsema_real_eip !117
  %274 = bitcast i8* %_new_gep_286.i to i32*
  store i32 %273, i32* %274, align 4, !mcsema_real_eip !117
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_288209.i33 = load i8*, i8** %71, align 8
  %_new_gep_289.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_288209.i33, i64 -16
  %_allin_new_bt_290.i = bitcast i8* %_new_gep_289.i to i64*
  %275 = load i64, i64* %_allin_new_bt_290.i, align 8, !mcsema_real_eip !118
  %276 = add i64 %275, 28
  %277 = inttoptr i64 %276 to i8*
  %278 = load i8, i8* %277, align 1, !mcsema_real_eip !119
  %279 = icmp eq i8 %278, 100
  %280 = add i64 %275, 29
  %281 = inttoptr i64 %280 to i8*
  %282 = load i8, i8* %281, align 1
  %283 = icmp eq i8 %282, 100
  %or.cond = and i1 %279, %283
  br i1 %or.cond, label %block_0x3cd.i, label %block_0x3dd.i, !mcsema_real_eip !120

block_0x3dd.i:                                    ; preds = %block_0x389.i
  %284 = icmp eq i8 %278, %282
  br i1 %284, label %block_0x3f5.i, label %block_0x45c.i, !mcsema_real_eip !121

block_0x3f5.i:                                    ; preds = %block_0x3dd.i
  %285 = add i64 %275, 31, !mcsema_real_eip !122
  %286 = inttoptr i64 %285 to i8*
  %287 = load i8, i8* %286, align 1, !mcsema_real_eip !122
  %288 = sext i8 %287 to i32, !mcsema_real_eip !122
  %289 = add i64 %275, 30, !mcsema_real_eip !123
  %290 = inttoptr i64 %289 to i8*
  %291 = load i8, i8* %290, align 1, !mcsema_real_eip !123
  %292 = sext i8 %291 to i32, !mcsema_real_eip !123
  %293 = zext i32 %292 to i64, !mcsema_real_eip !123
  %_new_gep_307.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_288209.i33, i64 -20
  %294 = bitcast i8* %_new_gep_307.i to i32*
  %295 = load i32, i32* %294, align 4, !mcsema_real_eip !124
  %296 = sub nsw i32 15, %288
  %297 = add nsw i32 %296, %292
  %298 = add i32 %297, %295
  store i32 %298, i32* %294, align 4, !mcsema_real_eip !125
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_312212.i35 = load i8*, i8** %71, align 8
  %_new_gep_313.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_312212.i35, i64 -16
  %_allin_new_bt_314.i = bitcast i8* %_new_gep_313.i to i64*
  %299 = load i64, i64* %_allin_new_bt_314.i, align 8, !mcsema_real_eip !126
  %300 = add i64 %299, 28, !mcsema_real_eip !127
  %301 = inttoptr i64 %300 to i8*
  %302 = load i8, i8* %301, align 1, !mcsema_real_eip !127
  %303 = zext i8 %302 to i64
  %304 = tail call x86_64_sysvcc i64 @to_byte(i64 %303), !mcsema_real_eip !128
  %_new_gep_316.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_312212.i35, i64 -20
  %305 = bitcast i8* %_new_gep_316.i to i32*
  %306 = load i32, i32* %305, align 4, !mcsema_real_eip !129
  %307 = trunc i64 %304 to i32, !mcsema_real_eip !130
  %308 = sub i32 %306, %307, !mcsema_real_eip !130
  %309 = zext i32 %308 to i64, !mcsema_real_eip !130
  store i32 %308, i32* %305, align 4, !mcsema_real_eip !131
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_321214.i36 = load i8*, i8** %71, align 8
  %_new_gep_322.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_321214.i36, i64 -20
  %310 = bitcast i8* %_new_gep_322.i to i32*
  %311 = load i32, i32* %310, align 4, !mcsema_real_eip !132
  %312 = icmp eq i32 %311, 0, !mcsema_real_eip !132
  br i1 %312, label %block_0x438.i, label %block_0x467.i, !mcsema_real_eip !133

block_0x45c.i:                                    ; preds = %block_0x3dd.i
  %313 = sext i8 %278 to i64
  %314 = sext i8 %282 to i64
  %315 = and i64 %314, 4294967295
  %316 = and i64 %313, 4294967295
  %_new_gep_325.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_288209.i33, i64 -64
  %317 = bitcast i8* %_new_gep_325.i to i32*
  %318 = load i32, i32* %317, align 4, !mcsema_real_eip !134
  %_new_gep_328.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_288209.i33, i64 -20
  %319 = bitcast i8* %_new_gep_328.i to i32*
  store i32 %318, i32* %319, align 4, !mcsema_real_eip !135
  br label %block_0x467.i, !mcsema_real_eip !136

block_0x3cd.i:                                    ; preds = %block_0x389.i
  %_new_gep_331.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_288209.i33, i64 -64
  %320 = bitcast i8* %_new_gep_331.i to i32*
  %321 = load i32, i32* %320, align 4, !mcsema_real_eip !137
  %_new_gep_334.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_288209.i33, i64 -20
  %322 = bitcast i8* %_new_gep_334.i to i32*
  %323 = load i32, i32* %322, align 4, !mcsema_real_eip !138
  %324 = xor i32 %323, %321, !mcsema_real_eip !139
  %325 = zext i32 %324 to i64, !mcsema_real_eip !139
  store i32 %324, i32* %322, align 4, !mcsema_real_eip !140
  br label %block_0x467.i, !mcsema_real_eip !141

block_0x438.i:                                    ; preds = %block_0x3f5.i
  %_new_gep_340.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_321214.i36, i64 -16
  %_allin_new_bt_341.i = bitcast i8* %_new_gep_340.i to i64*
  %326 = load i64, i64* %_allin_new_bt_341.i, align 8, !mcsema_real_eip !142
  %327 = add i64 %326, 31, !mcsema_real_eip !143
  %328 = inttoptr i64 %327 to i8*
  %329 = load i8, i8* %328, align 1, !mcsema_real_eip !143
  %330 = zext i8 %329 to i64
  %331 = tail call x86_64_sysvcc i64 @to_byte(i64 %330), !mcsema_real_eip !144
  %332 = trunc i64 %331 to i32, !mcsema_real_eip !145
  %333 = icmp eq i32 %332, 4
  br i1 %333, label %block_0x467.i, label %block_0x450.i, !mcsema_real_eip !146

block_0x467.i:                                    ; preds = %block_0x450.i, %block_0x438.i, %block_0x3cd.i, %block_0x45c.i, %block_0x3f5.i
  %RDI_val.1.i = phi i64 [ %269, %block_0x3cd.i ], [ %330, %block_0x438.i ], [ %330, %block_0x450.i ], [ %303, %block_0x3f5.i ], [ %269, %block_0x45c.i ]
  %RSI_val.1.i = phi i64 [ %275, %block_0x3cd.i ], [ %293, %block_0x438.i ], [ %293, %block_0x450.i ], [ %293, %block_0x3f5.i ], [ %275, %block_0x45c.i ]
  %RDX_val.1.i = phi i64 [ 4, %block_0x3cd.i ], [ %309, %block_0x438.i ], [ %309, %block_0x450.i ], [ %309, %block_0x3f5.i ], [ %315, %block_0x45c.i ]
  %RCX_val.2.i = phi i64 [ %325, %block_0x3cd.i ], [ %299, %block_0x438.i ], [ %299, %block_0x450.i ], [ %299, %block_0x3f5.i ], [ %316, %block_0x45c.i ]
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_342211.i34 = load i8*, i8** %71, align 8
  %_new_gep_343.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_342211.i34, i64 -20
  %334 = bitcast i8* %_new_gep_343.i to i32*
  %335 = load i32, i32* %334, align 4, !mcsema_real_eip !147
  br label %sub_0.exit, !mcsema_real_eip !148

block_0x450.i:                                    ; preds = %block_0x438.i
  store i32 -32, i32* %310, align 4, !mcsema_real_eip !148
  br label %block_0x467.i

sub_0.exit:                                       ; preds = %block_0x27.i, %block_0x32.i, %block_0x5f.i, %block_0x83.i, %block_0xb0.i, %block_0x127.i, %block_0x1fa.i, %block_0x2ce.i, %block_0x315.i, %block_0x37e.i, %block_0x467.i
  %_RBP_ptr_.0._load_rbp_ptr_342.sink.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_342211.i34, %block_0x467.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_270207.i32, %block_0x37e.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_139189.i17, %block_0x1fa.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_71178.i10, %block_0x127.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19171.i6, %block_0x27.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33173.i8, %block_0x32.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33173.i8, %block_0x5f.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_60176.i9, %block_0x83.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_71178.i10, %block_0xb0.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_220201.i26, %block_0x2ce.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_234202.i27, %block_0x315.i ]
  %RDI_val.0.i = phi i64 [ %RDI_val.1.i, %block_0x467.i ], [ %228, %block_0x37e.i ], [ %183, %block_0x1fa.i ], [ 2, %block_0x127.i ], [ %72, %block_0x27.i ], [ %72, %block_0x32.i ], [ %91, %block_0x5f.i ], [ %99, %block_0x83.i ], [ 2, %block_0xb0.i ], [ %228, %block_0x2ce.i ], [ %228, %block_0x315.i ]
  %RSI_val.0.i = phi i64 [ %RSI_val.1.i, %block_0x467.i ], [ %230, %block_0x37e.i ], [ %5, %block_0x1fa.i ], [ %5, %block_0x127.i ], [ %5, %block_0x27.i ], [ %5, %block_0x32.i ], [ %5, %block_0x5f.i ], [ %5, %block_0x83.i ], [ %5, %block_0xb0.i ], [ %230, %block_0x2ce.i ], [ %230, %block_0x315.i ]
  %RDX_val.0.i = phi i64 [ %RDX_val.1.i, %block_0x467.i ], [ %266, %block_0x37e.i ], [ %159, %block_0x1fa.i ], [ %123, %block_0x127.i ], [ %4, %block_0x27.i ], [ %4, %block_0x32.i ], [ %4, %block_0x5f.i ], [ %4, %block_0x83.i ], [ %123, %block_0xb0.i ], [ 8, %block_0x2ce.i ], [ 8, %block_0x315.i ]
  %RCX_val.0.i = phi i64 [ %RCX_val.2.i, %block_0x467.i ], [ %257, %block_0x37e.i ], [ %172, %block_0x1fa.i ], [ %RCX_val.1.i, %block_0x127.i ], [ %79, %block_0x27.i ], [ %86, %block_0x32.i ], [ %86, %block_0x5f.i ], [ %86, %block_0x83.i ], [ %86, %block_0xb0.i ], [ %189, %block_0x2ce.i ], [ %189, %block_0x315.i ]
  %.sink.i = phi i32 [ %335, %block_0x467.i ], [ %263, %block_0x37e.i ], [ -7, %block_0x1fa.i ], [ -6, %block_0x127.i ], [ %77, %block_0x27.i ], [ -2, %block_0x32.i ], [ -3, %block_0x5f.i ], [ -4, %block_0x83.i ], [ -5, %block_0xb0.i ], [ -21, %block_0x2ce.i ], [ -22, %block_0x315.i ]
  %_new_gep_346.i = getelementptr i8, i8* %_RBP_ptr_.0._load_rbp_ptr_342.sink.i, i64 -4
  %336 = bitcast i8* %_new_gep_346.i to i32*
  store i32 %.sink.i, i32* %336, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_42172.i7 = load i8*, i8** %71, align 8
  %_new_gep_43.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_42172.i7, i64 -4
  %337 = bitcast i8* %_new_gep_43.i to i32*
  %338 = load i32, i32* %337, align 4, !mcsema_real_eip !149
  %339 = zext i32 %338 to i64, !mcsema_real_eip !149
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_45161.i = load i64, i64* %_RSP_ptr_.sroa.0.i, align 8
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_45161.i, i64 80)
  %340 = extractvalue { i64, i1 } %uadd.i, 0
  %341 = xor i64 %340, %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_45161.i, !mcsema_real_eip !150
  %342 = and i64 %341, 16
  %343 = icmp eq i64 %342, 0
  %344 = icmp slt i64 %340, 0
  %345 = icmp eq i64 %340, 0, !mcsema_real_eip !150
  %346 = xor i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_45161.i, -9223372036854775808, !mcsema_real_eip !150
  %347 = and i64 %341, %346, !mcsema_real_eip !150
  %348 = icmp slt i64 %347, 0
  %349 = trunc i64 %340 to i8, !mcsema_real_eip !150
  %350 = tail call i8 @llvm.ctpop.i8(i8 %349), !mcsema_real_eip !150
  %351 = and i8 %350, 1
  %352 = icmp eq i8 %351, 0
  %353 = extractvalue { i64, i1 } %uadd.i, 1
  store volatile i64 %340, i64* %_RSP_ptr_.sroa.0.i, align 8
  %354 = inttoptr i64 %340 to i64*, !mcsema_real_eip !151
  %355 = load i64, i64* %354, align 8
  store volatile i64 %355, i64* %_RBP_ptr_.sroa.0.i, align 8
  %356 = add i64 %340, 16
  store volatile i64 %356, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %339, i64* %RAX.i, align 8, !mcsema_real_eip !152
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !152
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !152
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !152
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !152
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !152
  store volatile i64 %356, i64* %RSP.i, align 8
  store volatile i64 %355, i64* %RBP.i, align 8
  %357 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %357, align 8
  %358 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %358, align 8
  %359 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %359, align 8
  %360 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %360, align 8
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !152
  store i1 %353, i1* %CF.i, align 1, !mcsema_real_eip !152
  store i1 %352, i1* %PF.i, align 1, !mcsema_real_eip !152
  store i1 %343, i1* %AF.i, align 1, !mcsema_real_eip !152
  store i1 %345, i1* %ZF.i, align 1, !mcsema_real_eip !152
  store i1 %344, i1* %SF.i, align 1, !mcsema_real_eip !152
  store i1 %348, i1* %OF.i, align 1, !mcsema_real_eip !152
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !152
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !152
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !152
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !152
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !152
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !152
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !152
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !152
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !152
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !152
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !152
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !152
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !152
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !152
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !152
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !152
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !152
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !152
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !152
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !152
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !152
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !152
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !152
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !152
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !152
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !152
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !152
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !152
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !152
  store i11 %49, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !152
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !152
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !152
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !152
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !152
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !152
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !152
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !152
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !152
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !152
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !152
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !152
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !152
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !152
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !152
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !152
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !152
  %361 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %361, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 88, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
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
!2 = !{i64 0}
!3 = !{i64 8}
!4 = !{i64 12}
!5 = !{i64 16}
!6 = !{i64 23}
!7 = !{i64 26}
!8 = !{i64 33}
!9 = !{i64 45}
!10 = !{i64 50}
!11 = !{i64 60}
!12 = !{i64 64}
!13 = !{i64 68}
!14 = !{i64 77}
!15 = !{i64 99}
!16 = !{i64 103}
!17 = !{i64 108}
!18 = !{i64 113}
!19 = !{i64 131}
!20 = !{i64 135}
!21 = !{i64 139}
!22 = !{i64 144}
!23 = !{i64 147}
!24 = !{i64 158}
!25 = !{i64 176}
!26 = !{i64 180}
!27 = !{i64 184}
!28 = !{i64 194}
!29 = !{i64 197}
!30 = !{i64 205}
!31 = !{i64 206}
!32 = !{i64 208}
!33 = !{i64 213}
!34 = !{i64 231}
!35 = !{i64 235}
!36 = !{i64 251}
!37 = !{i64 277}
!38 = !{i64 302}
!39 = !{i64 283}
!40 = !{i64 307}
!41 = !{i64 311}
!42 = !{i64 323}
!43 = !{i64 326}
!44 = !{i64 330}
!45 = !{i64 342}
!46 = !{i64 345}
!47 = !{i64 355}
!48 = !{i64 361}
!49 = !{i64 370}
!50 = !{i64 403}
!51 = !{i64 407}
!52 = !{i64 411}
!53 = !{i64 418}
!54 = !{i64 421}
!55 = !{i64 425}
!56 = !{i64 429}
!57 = !{i64 434}
!58 = !{i64 438}
!59 = !{i64 443}
!60 = !{i64 482}
!61 = !{i64 488}
!62 = !{i64 490}
!63 = !{i64 493}
!64 = !{i64 500}
!65 = !{i64 513}
!66 = !{i64 528}
!67 = !{i64 541}
!68 = !{i64 546}
!69 = !{i64 549}
!70 = !{i64 553}
!71 = !{i64 557}
!72 = !{i64 622}
!73 = !{i64 635}
!74 = !{i64 640}
!75 = !{i64 643}
!76 = !{i64 646}
!77 = !{i64 651}
!78 = !{i64 654}
!79 = !{i64 660}
!80 = !{i64 663}
!81 = !{i64 666}
!82 = !{i64 671}
!83 = !{i64 674}
!84 = !{i64 681}
!85 = !{i64 687}
!86 = !{i64 690}
!87 = !{i64 693}
!88 = !{i64 723}
!89 = !{i64 726}
!90 = !{i64 739}
!91 = !{i64 744}
!92 = !{i64 747}
!93 = !{i64 755}
!94 = !{i64 758}
!95 = !{i64 761}
!96 = !{i64 771}
!97 = !{i64 797}
!98 = !{i64 800}
!99 = !{i64 807}
!100 = !{i64 833}
!101 = !{i64 839}
!102 = !{i64 842}
!103 = !{i64 848}
!104 = !{i64 851}
!105 = !{i64 860}
!106 = !{i64 863}
!107 = !{i64 866}
!108 = !{i64 873}
!109 = !{i64 876}
!110 = !{i64 878}
!111 = !{i64 881}
!112 = !{i64 888}
!113 = !{i64 900}
!114 = !{i64 910}
!115 = !{i64 913}
!116 = !{i64 926}
!117 = !{i64 931}
!118 = !{i64 934}
!119 = !{i64 938}
!120 = !{i64 947}
!121 = !{i64 1007}
!122 = !{i64 1022}
!123 = !{i64 1030}
!124 = !{i64 1038}
!125 = !{i64 1043}
!126 = !{i64 1046}
!127 = !{i64 1050}
!128 = !{i64 1054}
!129 = !{i64 1059}
!130 = !{i64 1062}
!131 = !{i64 1064}
!132 = !{i64 1067}
!133 = !{i64 1074}
!134 = !{i64 1116}
!135 = !{i64 1119}
!136 = !{i64 1013}
!137 = !{i64 973}
!138 = !{i64 976}
!139 = !{i64 979}
!140 = !{i64 981}
!141 = !{i64 984}
!142 = !{i64 1080}
!143 = !{i64 1084}
!144 = !{i64 1088}
!145 = !{i64 1093}
!146 = !{i64 1098}
!147 = !{i64 1127}
!148 = !{i64 1104}
!149 = !{i64 1133}
!150 = !{i64 1136}
!151 = !{i64 1140}
!152 = !{i64 1141}
