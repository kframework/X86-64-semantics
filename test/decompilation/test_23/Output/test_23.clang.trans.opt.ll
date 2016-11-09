; ModuleID = 'Output/test_23.clang.trans.opt.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x330 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_93.i = alloca [104 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_93.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 104, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_93.i, i64 0, i64 104
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %6 = bitcast i64* %R10.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %8 = bitcast i64* %R12.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %10 = bitcast i64* %R14.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %12 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %13 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %18 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %31 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %32 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %39 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %42 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %43 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %44 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %45 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %46 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %63 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %64 = load <2 x i64>, <2 x i64>* %63, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %65 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_102.i4 = load i8*, i8** %65, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_102.i4, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94.i, i64* %_allin_new_bt_.i, align 8
  %66 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %66, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_102.i4, i64 -104
  %67 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %67, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_11.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_102.i4, i64 -72
  %68 = ptrtoint i8* %_new_gep_11.i to i64
  %_new_gep_13.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_102.i4, i64 -12
  %69 = bitcast i8* %_new_gep_13.i to i32*
  store i32 0, i32* %69, align 4, !mcsema_real_eip !3
  %70 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15103.i5 = load i8*, i8** %70, align 8
  %_new_gep_16.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15103.i5, i64 -8
  %71 = trunc i64 %5 to i32, !mcsema_real_eip !4
  %72 = bitcast i8* %_new_gep_16.i to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18104.i6 = load i8*, i8** %70, align 8
  %_new_gep_19.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18104.i6, i64 -16
  %_allin_new_bt_20.i = bitcast i8* %_new_gep_19.i to i64*
  store i64 %4, i64* %_allin_new_bt_20.i, align 8, !mcsema_real_eip !5
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_21105.i7 = load i8*, i8** %70, align 8
  %_new_gep_22.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_21105.i7, i64 -36
  %73 = bitcast i8* %_new_gep_22.i to i32*
  store i32 0, i32* %73, align 4, !mcsema_real_eip !6
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_24106.i8 = load i8*, i8** %70, align 8
  %_new_gep_25.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_24106.i8, i64 -20
  %74 = bitcast i8* %_new_gep_25.i to i32*
  store i32 1, i32* %74, align 4, !mcsema_real_eip !7
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27107.i9 = load i8*, i8** %70, align 8
  %_new_gep_28.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27107.i9, i64 -24
  %75 = bitcast i8* %_new_gep_28.i to i32*
  store i32 1, i32* %75, align 4, !mcsema_real_eip !8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30108.i10 = load i8*, i8** %70, align 8
  %_new_gep_31.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30108.i10, i64 -20
  %76 = bitcast i8* %_new_gep_31.i to i32*
  %77 = load i32, i32* %76, align 4, !mcsema_real_eip !9
  %78 = sext i32 %77 to i64, !mcsema_real_eip !9
  %_new_gep_34.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30108.i10, i64 -24
  %79 = bitcast i8* %_new_gep_34.i to i32*
  %80 = load i32, i32* %79, align 4, !mcsema_real_eip !10
  %81 = sext i32 %80 to i64, !mcsema_real_eip !10
  %82 = mul nsw i64 %81, 11, !mcsema_real_eip !11
  %83 = add i64 %82, ptrtoint (%0* @data_0x330 to i64)
  %84 = add i64 %83, %78, !mcsema_real_eip !12
  %85 = inttoptr i64 %84 to i8*
  store i8 88, i8* %85, align 1, !mcsema_real_eip !12
  %86 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %68, i64 28), !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36109.i11 = load i8*, i8** %70, align 8
  %_new_gep_37.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36109.i11, i64 -72
  %_allin_new_bt_38.i = bitcast i8* %_new_gep_37.i to i64*
  store i64 %86, i64* %_allin_new_bt_38.i, align 8, !mcsema_real_eip !14
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39110128.i12 = load i8*, i8** %70, align 8
  %_new_gep_40129.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39110128.i12, i64 -36
  %87 = bitcast i8* %_new_gep_40129.i to i32*
  %88 = load i32, i32* %87, align 4, !mcsema_real_eip !15
  %89 = add i32 %88, -28
  %90 = icmp slt i32 %89, 0
  %91 = sub i32 27, %88
  %92 = and i32 %91, %88
  %93 = icmp slt i32 %92, 0
  %tmp130.i = xor i1 %90, %93
  br i1 %tmp130.i, label %block_0x13a.i.preheader, label %sub_c0.exit, !mcsema_real_eip !16

block_0x13a.i.preheader:                          ; preds = %driverBlockRaw
  br label %block_0x13a.i

block_0x13a.i:                                    ; preds = %block_0x13a.i.preheader, %block_0x2e8.i
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39110132.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39110.i23, %block_0x2e8.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39110128.i12, %block_0x13a.i.preheader ]
  %RSI_val.0131.i = phi i64 [ %168, %block_0x2e8.i ], [ %68, %block_0x13a.i.preheader ]
  %_new_gep_43.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39110132.i, i64 -20
  %94 = bitcast i8* %_new_gep_43.i to i32*
  %95 = load i32, i32* %94, align 4, !mcsema_real_eip !17
  %_new_gep_46.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39110132.i, i64 -28
  %96 = bitcast i8* %_new_gep_46.i to i32*
  store i32 %95, i32* %96, align 4, !mcsema_real_eip !18
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48112.i14 = load i8*, i8** %70, align 8
  %_new_gep_49.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48112.i14, i64 -24
  %97 = bitcast i8* %_new_gep_49.i to i32*
  %98 = load i32, i32* %97, align 4, !mcsema_real_eip !19
  %_new_gep_52.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_48112.i14, i64 -32
  %99 = bitcast i8* %_new_gep_52.i to i32*
  store i32 %98, i32* %99, align 4, !mcsema_real_eip !20
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_54113.i15 = load i8*, i8** %70, align 8
  %_new_gep_55.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_54113.i15, i64 -36
  %100 = bitcast i8* %_new_gep_55.i to i32*
  %101 = load i32, i32* %100, align 4, !mcsema_real_eip !21
  %102 = sext i32 %101 to i64, !mcsema_real_eip !21
  %_new_gep_58.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_54113.i15, i64 -64
  %_new_gep_59.i = getelementptr i8, i8* %_new_gep_58.i, i64 %102
  %103 = load i8, i8* %_new_gep_59.i, align 1, !mcsema_real_eip !22
  %104 = sext i8 %103 to i32, !mcsema_real_eip !22
  %105 = add nsw i32 %104, -114
  %106 = icmp eq i32 %105, 0, !mcsema_real_eip !23
  %107 = icmp slt i8 %103, 114
  %108 = sub nsw i32 113, %104
  %109 = and i32 %108, %104
  %110 = icmp slt i32 %109, 0
  %_new_gep_62.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_54113.i15, i64 -76
  %111 = bitcast i8* %_new_gep_62.i to i32*
  store i32 %104, i32* %111, align 4, !mcsema_real_eip !24
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_64114.i16 = load i8*, i8** %70, align 8
  %_new_gep_65.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_64114.i16, i64 -80
  %112 = bitcast i8* %_new_gep_65.i to i32*
  store i32 %105, i32* %112, align 4, !mcsema_real_eip !25
  %tmp71.i = xor i1 %107, %110
  %.demorgan.i = or i1 %106, %tmp71.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67115.i17 = load i8*, i8** %70, align 8
  %_new_gep_68.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67115.i17, i64 -76
  %113 = bitcast i8* %_new_gep_68.i to i32*
  %114 = load i32, i32* %113, align 4, !mcsema_real_eip !26
  br i1 %.demorgan.i, label %block_0x165.i, label %block_0x18d.i, !mcsema_real_eip !27

block_0x2d0.block_0x320.loopexit_crit_edge.i:     ; preds = %block_0x2d0.i
  %115 = sext i8 %136 to i64
  %116 = and i64 %115, 4294967295
  br label %sub_c0.exit

block_0x18d.i:                                    ; preds = %block_0x13a.i
  %117 = add i32 %114, -115
  %118 = icmp eq i32 %117, 0, !mcsema_real_eip !28
  %_new_gep_84.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67115.i17, i64 -92
  %119 = bitcast i8* %_new_gep_84.i to i32*
  store i32 %117, i32* %119, align 4, !mcsema_real_eip !29
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_86116.i18 = load i8*, i8** %70, align 8
  br i1 %118, label %block_0x1c5.i, label %block_0x1a1.i, !mcsema_real_eip !30

block_0x1c5.i:                                    ; preds = %block_0x18d.i
  %_new_gep_87.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_86116.i18, i64 -24
  br label %block_0x201.i, !mcsema_real_eip !31

block_0x165.i:                                    ; preds = %block_0x13a.i
  %120 = add i32 %114, -97
  %121 = icmp eq i32 %120, 0, !mcsema_real_eip !32
  %_new_gep_93.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67115.i17, i64 -84
  %122 = bitcast i8* %_new_gep_93.i to i32*
  store i32 %120, i32* %122, align 4, !mcsema_real_eip !33
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_95124.i26 = load i8*, i8** %70, align 8
  br i1 %121, label %block_0x1d5.i, label %block_0x179.i, !mcsema_real_eip !34

block_0x201.i:                                    ; preds = %block_0x1e5.i, %block_0x1b5.i, %block_0x1d5.i, %block_0x1c5.i
  %_new_gep_145.sink.i = phi i8* [ %_new_gep_145.i, %block_0x1e5.i ], [ %_new_gep_139.i, %block_0x1b5.i ], [ %_new_gep_107.i, %block_0x1d5.i ], [ %_new_gep_87.i, %block_0x1c5.i ]
  %.sink99.i = phi i32 [ 1, %block_0x1e5.i ], [ -1, %block_0x1b5.i ], [ -1, %block_0x1d5.i ], [ 1, %block_0x1c5.i ]
  %123 = bitcast i8* %_new_gep_145.sink.i to i32*
  %124 = load i32, i32* %123, align 4
  %125 = add i32 %124, %.sink99.i
  store i32 %125, i32* %123, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_96119.i21 = load i8*, i8** %70, align 8
  %_new_gep_97.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_96119.i21, i64 -20
  %126 = bitcast i8* %_new_gep_97.i to i32*
  %127 = load i32, i32* %126, align 4, !mcsema_real_eip !35
  %128 = sext i32 %127 to i64, !mcsema_real_eip !35
  %_new_gep_100.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_96119.i21, i64 -24
  %129 = bitcast i8* %_new_gep_100.i to i32*
  %130 = load i32, i32* %129, align 4, !mcsema_real_eip !36
  %131 = sext i32 %130 to i64, !mcsema_real_eip !36
  %132 = mul nsw i64 %131, 11, !mcsema_real_eip !37
  %133 = add i64 %128, ptrtoint (%0* @data_0x330 to i64)
  %134 = add i64 %133, %132, !mcsema_real_eip !38
  %135 = inttoptr i64 %134 to i8*
  %136 = load i8, i8* %135, align 1, !mcsema_real_eip !38
  switch i8 %136, label %block_0x265.i [
    i8 35, label %sub_c0.exit.loopexit
    i8 32, label %block_0x2c4.i
  ]

block_0x1a1.i:                                    ; preds = %block_0x18d.i
  %_new_gep_102.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_86116.i18, i64 -76
  %137 = bitcast i8* %_new_gep_102.i to i32*
  %138 = load i32, i32* %137, align 4, !mcsema_real_eip !39
  %139 = add i32 %138, -119
  %140 = icmp eq i32 %139, 0, !mcsema_real_eip !40
  %_new_gep_105.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_86116.i18, i64 -96
  %141 = bitcast i8* %_new_gep_105.i to i32*
  store i32 %139, i32* %141, align 4, !mcsema_real_eip !41
  br i1 %140, label %block_0x1b5.i, label %block_0x1f5.i, !mcsema_real_eip !42

block_0x1d5.i:                                    ; preds = %block_0x165.i
  %_new_gep_107.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_95124.i26, i64 -20
  br label %block_0x201.i, !mcsema_real_eip !43

block_0x1f5.i:                                    ; preds = %block_0x179.i, %block_0x1a1.i
  %142 = zext i32 %105 to i64, !mcsema_real_eip !23
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_121117.i19 = load i8*, i8** %70, align 8
  br label %sub_c0.exit, !mcsema_real_eip !44

block_0x179.i:                                    ; preds = %block_0x165.i
  %_new_gep_124.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_95124.i26, i64 -76
  %143 = bitcast i8* %_new_gep_124.i to i32*
  %144 = load i32, i32* %143, align 4, !mcsema_real_eip !45
  %145 = add i32 %144, -100
  %146 = icmp eq i32 %145, 0, !mcsema_real_eip !46
  %_new_gep_127.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_95124.i26, i64 -88
  %147 = bitcast i8* %_new_gep_127.i to i32*
  store i32 %145, i32* %147, align 4, !mcsema_real_eip !47
  br i1 %146, label %block_0x1e5.i, label %block_0x1f5.i, !mcsema_real_eip !48

block_0x265.i:                                    ; preds = %block_0x201.i
  %notlhs.i = icmp ne i32 %130, 2
  %notrhs.i = icmp ne i8 %136, 124
  %or.cond.not.i = or i1 %notlhs.i, %notrhs.i
  %148 = icmp slt i32 %127, 1
  %or.cond101.i = or i1 %148, %or.cond.not.i
  br i1 %or.cond101.i, label %block_0x2b8.i, label %block_0x2ab.i, !mcsema_real_eip !49

block_0x2c4.i:                                    ; preds = %block_0x2ab.i, %block_0x2b8.i, %block_0x201.i
  %149 = phi i32 [ %127, %block_0x201.i ], [ %127, %block_0x2ab.i ], [ %.pre.i, %block_0x2b8.i ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132120.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_96119.i21, %block_0x201.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_96119.i21, %block_0x2ab.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132120.pre.i25, %block_0x2b8.i ]
  %_new_gep_133.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132120.i, i64 -28
  %150 = bitcast i8* %_new_gep_133.i to i32*
  %151 = load i32, i32* %150, align 4, !mcsema_real_eip !50
  %152 = icmp eq i32 %151, %149
  br i1 %152, label %block_0x2d0.i, label %block_0x2c4.block_0x2e8_crit_edge.i, !mcsema_real_eip !51

block_0x2c4.block_0x2e8_crit_edge.i:              ; preds = %block_0x2c4.i
  %_new_gep_160.phi.trans.insert.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132120.i, i64 -24
  %.phi.trans.insert178.i = bitcast i8* %_new_gep_160.phi.trans.insert.i to i32*
  %.pre179.i = load i32, i32* %.phi.trans.insert178.i, align 4
  br label %block_0x2e8.i

block_0x1b5.i:                                    ; preds = %block_0x1a1.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_138118.i20 = load i8*, i8** %70, align 8
  %_new_gep_139.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_138118.i20, i64 -24
  br label %block_0x201.i, !mcsema_real_eip !52

block_0x1e5.i:                                    ; preds = %block_0x179.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_144125.i27 = load i8*, i8** %70, align 8
  %_new_gep_145.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_144125.i27, i64 -20
  br label %block_0x201.i, !mcsema_real_eip !53

block_0x2d0.i:                                    ; preds = %block_0x2c4.i
  %_new_gep_151.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132120.i, i64 -32
  %153 = bitcast i8* %_new_gep_151.i to i32*
  %154 = load i32, i32* %153, align 4, !mcsema_real_eip !54
  %_new_gep_154.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132120.i, i64 -24
  %155 = bitcast i8* %_new_gep_154.i to i32*
  %156 = load i32, i32* %155, align 4, !mcsema_real_eip !55
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %block_0x2d0.block_0x320.loopexit_crit_edge.i, label %block_0x2e8.i, !mcsema_real_eip !56

block_0x2e8.i:                                    ; preds = %block_0x2d0.i, %block_0x2c4.block_0x2e8_crit_edge.i
  %158 = phi i32 [ %.pre179.i, %block_0x2c4.block_0x2e8_crit_edge.i ], [ %156, %block_0x2d0.i ]
  %159 = sext i32 %149 to i64, !mcsema_real_eip !57
  %160 = sext i32 %158 to i64, !mcsema_real_eip !58
  %161 = mul nsw i64 %160, 11, !mcsema_real_eip !59
  %162 = add i64 %159, ptrtoint (%0* @data_0x330 to i64)
  %163 = add i64 %162, %161, !mcsema_real_eip !60
  %164 = inttoptr i64 %163 to i8*
  store i8 88, i8* %164, align 1, !mcsema_real_eip !60
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162121.i22 = load i8*, i8** %70, align 8
  %_new_gep_163.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162121.i22, i64 -36
  %165 = bitcast i8* %_new_gep_163.i to i32*
  %166 = load i32, i32* %165, align 4, !mcsema_real_eip !61
  %167 = add i32 %166, 1
  %168 = zext i32 %167 to i64, !mcsema_real_eip !62
  store i32 %167, i32* %165, align 4, !mcsema_real_eip !63
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39110.i23 = load i8*, i8** %70, align 8
  %_new_gep_40.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39110.i23, i64 -36
  %169 = bitcast i8* %_new_gep_40.i to i32*
  %170 = load i32, i32* %169, align 4, !mcsema_real_eip !15
  %171 = add i32 %170, -28
  %172 = icmp slt i32 %171, 0
  %173 = sub i32 27, %170
  %174 = and i32 %173, %170
  %175 = icmp slt i32 %174, 0
  %tmp.i = xor i1 %172, %175
  br i1 %tmp.i, label %block_0x13a.i, label %sub_c0.exit.loopexit, !mcsema_real_eip !16

block_0x2b8.i:                                    ; preds = %block_0x2ab.i, %block_0x265.i
  %_new_gep_175.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_96119.i21, i64 -28
  %176 = bitcast i8* %_new_gep_175.i to i32*
  %177 = load i32, i32* %176, align 4, !mcsema_real_eip !64
  store i32 %177, i32* %126, align 4, !mcsema_real_eip !65
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_180123.i24 = load i8*, i8** %70, align 8
  %_new_gep_181.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_180123.i24, i64 -32
  %178 = bitcast i8* %_new_gep_181.i to i32*
  %179 = load i32, i32* %178, align 4, !mcsema_real_eip !66
  %_new_gep_184.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_180123.i24, i64 -24
  %180 = bitcast i8* %_new_gep_184.i to i32*
  store i32 %179, i32* %180, align 4, !mcsema_real_eip !67
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132120.pre.i25 = load i8*, i8** %70, align 8
  %_new_gep_136.phi.trans.insert.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132120.pre.i25, i64 -20
  %.phi.trans.insert.i = bitcast i8* %_new_gep_136.phi.trans.insert.i to i32*
  %.pre.i = load i32, i32* %.phi.trans.insert.i, align 4
  br label %block_0x2c4.i, !mcsema_real_eip !68

block_0x2ab.i:                                    ; preds = %block_0x265.i
  %181 = add i32 %127, -11
  %182 = icmp slt i32 %181, 0
  %183 = sub i32 10, %127
  %184 = and i32 %183, %127
  %185 = icmp slt i32 %184, 0
  %186 = xor i1 %182, %185
  br i1 %186, label %block_0x2c4.i, label %block_0x2b8.i, !mcsema_real_eip !69

sub_c0.exit.loopexit:                             ; preds = %block_0x2e8.i, %block_0x201.i
  %_RBP_ptr_.0._load_rbp_ptr_132.sink.i.ph = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_96119.i21, %block_0x201.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39110.i23, %block_0x2e8.i ]
  %RSI_val.1.i.ph = phi i64 [ 35, %block_0x201.i ], [ %168, %block_0x2e8.i ]
  %RDX_val.1.i.ph = phi i64 [ %132, %block_0x201.i ], [ %161, %block_0x2e8.i ]
  %RCX_val.1.i.ph = phi i64 [ %128, %block_0x201.i ], [ %159, %block_0x2e8.i ]
  %.sink.i.ph = phi i32 [ 0, %block_0x201.i ], [ 1, %block_0x2e8.i ]
  br label %sub_c0.exit

sub_c0.exit:                                      ; preds = %sub_c0.exit.loopexit, %driverBlockRaw, %block_0x2d0.block_0x320.loopexit_crit_edge.i, %block_0x1f5.i
  %_RBP_ptr_.0._load_rbp_ptr_132.sink.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_121117.i19, %block_0x1f5.i ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132120.i, %block_0x2d0.block_0x320.loopexit_crit_edge.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39110128.i12, %driverBlockRaw ], [ %_RBP_ptr_.0._load_rbp_ptr_132.sink.i.ph, %sub_c0.exit.loopexit ]
  %RSI_val.1.i = phi i64 [ %RSI_val.0131.i, %block_0x1f5.i ], [ %116, %block_0x2d0.block_0x320.loopexit_crit_edge.i ], [ %68, %driverBlockRaw ], [ %RSI_val.1.i.ph, %sub_c0.exit.loopexit ]
  %RDX_val.1.i = phi i64 [ %142, %block_0x1f5.i ], [ %132, %block_0x2d0.block_0x320.loopexit_crit_edge.i ], [ 28, %driverBlockRaw ], [ %RDX_val.1.i.ph, %sub_c0.exit.loopexit ]
  %RCX_val.1.i = phi i64 [ %102, %block_0x1f5.i ], [ %128, %block_0x2d0.block_0x320.loopexit_crit_edge.i ], [ %68, %driverBlockRaw ], [ %RCX_val.1.i.ph, %sub_c0.exit.loopexit ]
  %.sink.i = phi i32 [ 1, %block_0x1f5.i ], [ 2, %block_0x2d0.block_0x320.loopexit_crit_edge.i ], [ 1, %driverBlockRaw ], [ %.sink.i.ph, %sub_c0.exit.loopexit ]
  %_new_gep_187.i = getelementptr i8, i8* %_RBP_ptr_.0._load_rbp_ptr_132.sink.i, i64 -4
  %187 = bitcast i8* %_new_gep_187.i to i32*
  store i32 %.sink.i, i32* %187, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_72111.i13 = load i8*, i8** %70, align 8
  %_new_gep_73.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_72111.i13, i64 -4
  %188 = bitcast i8* %_new_gep_73.i to i32*
  %189 = load i32, i32* %188, align 4, !mcsema_real_eip !70
  %190 = zext i32 %189 to i64, !mcsema_real_eip !70
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_7595.i = load i64, i64* %_RSP_ptr_.sroa.0.i, align 8
  %uadd73.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_7595.i, i64 96)
  %191 = extractvalue { i64, i1 } %uadd73.i, 0
  %192 = xor i64 %191, %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_7595.i, !mcsema_real_eip !71
  %193 = and i64 %192, 16, !mcsema_real_eip !71
  %194 = icmp ne i64 %193, 0, !mcsema_real_eip !71
  %195 = icmp slt i64 %191, 0
  %196 = icmp eq i64 %191, 0, !mcsema_real_eip !71
  %197 = xor i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_7595.i, -9223372036854775808, !mcsema_real_eip !71
  %198 = and i64 %192, %197, !mcsema_real_eip !71
  %199 = icmp slt i64 %198, 0
  %200 = trunc i64 %191 to i8, !mcsema_real_eip !71
  %201 = tail call i8 @llvm.ctpop.i8(i8 %200), !mcsema_real_eip !71
  %202 = and i8 %201, 1
  %203 = icmp eq i8 %202, 0
  %204 = extractvalue { i64, i1 } %uadd73.i, 1
  store volatile i64 %191, i64* %_RSP_ptr_.sroa.0.i, align 8
  %205 = inttoptr i64 %191 to i64*, !mcsema_real_eip !72
  %206 = load i64, i64* %205, align 8
  store volatile i64 %206, i64* %_RBP_ptr_.sroa.0.i, align 8
  %207 = add i64 %191, 16
  store volatile i64 %207, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %190, i64* %RAX.i, align 8, !mcsema_real_eip !73
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !73
  store i64 %RCX_val.1.i, i64* %RCX.i, align 8, !mcsema_real_eip !73
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !73
  store i64 %RSI_val.1.i, i64* %RSI.i, align 8, !mcsema_real_eip !73
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !73
  store volatile i64 %207, i64* %RSP.i, align 8
  store volatile i64 %206, i64* %RBP.i, align 8
  store i64 %83, i64* %R8.i, align 8, !mcsema_real_eip !73
  store i64 %82, i64* %R9.i, align 8, !mcsema_real_eip !73
  %208 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %208, align 8
  %209 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %209, align 8
  %210 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %210, align 8
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !73
  store i1 %204, i1* %CF.i, align 1, !mcsema_real_eip !73
  store i1 %203, i1* %PF.i, align 1, !mcsema_real_eip !73
  store i1 %194, i1* %AF.i, align 1, !mcsema_real_eip !73
  store i1 %196, i1* %ZF.i, align 1, !mcsema_real_eip !73
  store i1 %195, i1* %SF.i, align 1, !mcsema_real_eip !73
  store i1 %199, i1* %OF.i, align 1, !mcsema_real_eip !73
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !73
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !73
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !73
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !73
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !73
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !73
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !73
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !73
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !73
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !73
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !73
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !73
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !73
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !73
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !73
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !73
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !73
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !73
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !73
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !73
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !73
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !73
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !73
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !73
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !73
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !73
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !73
  store i11 %46, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !73
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !73
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !73
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !73
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !73
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !73
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !73
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !73
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !73
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !73
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !73
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !73
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !73
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !73
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !73
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !73
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !73
  %211 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %64, <2 x i64>* %211, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 104, i8* nonnull %1)
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
!2 = !{i64 192}
!3 = !{i64 229}
!4 = !{i64 236}
!5 = !{i64 239}
!6 = !{i64 243}
!7 = !{i64 250}
!8 = !{i64 257}
!9 = !{i64 264}
!10 = !{i64 268}
!11 = !{i64 272}
!12 = !{i64 282}
!13 = !{i64 292}
!14 = !{i64 297}
!15 = !{i64 301}
!16 = !{i64 308}
!17 = !{i64 314}
!18 = !{i64 317}
!19 = !{i64 320}
!20 = !{i64 323}
!21 = !{i64 326}
!22 = !{i64 330}
!23 = !{i64 337}
!24 = !{i64 340}
!25 = !{i64 343}
!26 = !{i64 397}
!27 = !{i64 346}
!28 = !{i64 400}
!29 = !{i64 403}
!30 = !{i64 406}
!31 = !{i64 464}
!32 = !{i64 360}
!33 = !{i64 363}
!34 = !{i64 366}
!35 = !{i64 523}
!36 = !{i64 527}
!37 = !{i64 531}
!38 = !{i64 541}
!39 = !{i64 417}
!40 = !{i64 420}
!41 = !{i64 423}
!42 = !{i64 426}
!43 = !{i64 480}
!44 = !{i64 508}
!45 = !{i64 377}
!46 = !{i64 380}
!47 = !{i64 383}
!48 = !{i64 386}
!49 = !{i64 620}
!50 = !{i64 708}
!51 = !{i64 714}
!52 = !{i64 448}
!53 = !{i64 496}
!54 = !{i64 720}
!55 = !{i64 723}
!56 = !{i64 726}
!57 = !{i64 754}
!58 = !{i64 758}
!59 = !{i64 762}
!60 = !{i64 772}
!61 = !{i64 776}
!62 = !{i64 779}
!63 = !{i64 785}
!64 = !{i64 696}
!65 = !{i64 699}
!66 = !{i64 702}
!67 = !{i64 705}
!68 = !{i64 626}
!69 = !{i64 690}
!70 = !{i64 800}
!71 = !{i64 803}
!72 = !{i64 807}
!73 = !{i64 808}
