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
  %_RSP_ptr_.i = alloca i8*, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_2.i = alloca [128 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.i.0..sroa_cast = bitcast i8** %_RSP_ptr_.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 128
  store i8* %_local_stack_end_ptr_.i, i8** %_RSP_ptr_.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
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
  %3 = bitcast i64* %R12.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %5 = bitcast i64* %R14.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %7 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %8 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %10 = bitcast x86_fp80* %9 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %10, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %11 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %12 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %13 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %14 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %26 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %27 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %34 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %35 = bitcast i8* %34 to i64*
  %36 = load i64, i64* %35, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %37 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %38 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %39 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %40 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %41 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %42 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %43 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %44 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %58 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %59 = load <2 x i64>, <2 x i64>* %58, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 120
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3.i, i64* %_allin_new_bt_.i, align 8
  %60 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %60, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 8
  %_trans_p2i_.i = ptrtoint i8* %_new_gep_1.i to i64
  %_trans_xor_.i = xor i64 %_trans_p2i_.i, %60
  %61 = and i64 %_trans_xor_.i, 16
  %62 = icmp eq i64 %61, 0
  %_trans_trunc_.i = trunc i64 %_trans_p2i_.i to i8
  %63 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_.i), !mcsema_real_eip !3
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  %_trans_icmp_ne_7.i = icmp ne i8* %_new_gep_.i, inttoptr (i64 112 to i8*)
  %_trans_xor_9.i = and i64 %_trans_xor_.i, %60
  %66 = icmp slt i64 %_trans_xor_9.i, 0
  store volatile i8* %_new_gep_1.i, i8** %_RSP_ptr_.i, align 8
  %_new_gep_14.i = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 104
  %67 = bitcast i8* %_new_gep_14.i to <4 x i32>*
  store <4 x i32> <i32 10, i32 10, i32 10, i32 0>, <4 x i32>* %67, align 4
  %68 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !4
  %69 = ptrtoint i8* %_new_gep_14.i to i64
  %_new_gep_26.i = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 96
  %_allin_new_bt_27.i = bitcast i8* %_new_gep_26.i to i64*
  store i64 %68, i64* %_allin_new_bt_27.i, align 8, !mcsema_real_eip !5
  %70 = inttoptr i64 %68 to i32*
  store i32 5, i32* %70, align 4, !mcsema_real_eip !6
  %71 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3115.i1 = load i8*, i8** %71, align 8
  %_new_gep_32.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3115.i1, i64 -24
  %_allin_new_bt_33.i = bitcast i8* %_new_gep_32.i to i64*
  %72 = load i64, i64* %_allin_new_bt_33.i, align 8, !mcsema_real_eip !7
  %73 = add i64 %72, 4, !mcsema_real_eip !8
  %74 = inttoptr i64 %73 to i32*
  store i32 5, i32* %74, align 4, !mcsema_real_eip !8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3416.i2 = load i8*, i8** %71, align 8
  %_new_gep_35.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3416.i2, i64 -24
  %_allin_new_bt_36.i = bitcast i8* %_new_gep_35.i to i64*
  %75 = load i64, i64* %_allin_new_bt_36.i, align 8, !mcsema_real_eip !9
  %76 = add i64 %75, 8, !mcsema_real_eip !10
  %77 = inttoptr i64 %76 to i32*
  store i32 5, i32* %77, align 4, !mcsema_real_eip !10
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3717.i3 = load i8*, i8** %71, align 8
  %_new_gep_38.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3717.i3, i64 -24
  %_allin_new_bt_39.i = bitcast i8* %_new_gep_38.i to i64*
  %78 = load i64, i64* %_allin_new_bt_39.i, align 8, !mcsema_real_eip !11
  %_new_gep_41.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3717.i3, i64 -16
  %_allin_new_bt_42.i = bitcast i8* %_new_gep_41.i to i64*
  %79 = load i64, i64* %_allin_new_bt_42.i, align 8, !mcsema_real_eip !12
  %_new_gep_43.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3717.i3, i64 -48
  %_allin_new_bt_44.i = bitcast i8* %_new_gep_43.i to i64*
  store i64 %79, i64* %_allin_new_bt_44.i, align 8, !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4518.i4 = load i8*, i8** %71, align 8
  %_new_gep_46.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4518.i4, i64 -8
  %80 = bitcast i8* %_new_gep_46.i to i32*
  %81 = load i32, i32* %80, align 4, !mcsema_real_eip !14
  %_new_gep_49.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4518.i4, i64 -40
  %82 = bitcast i8* %_new_gep_49.i to i32*
  store i32 %81, i32* %82, align 4, !mcsema_real_eip !15
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5119.i5 = load i8*, i8** %71, align 8
  %_new_gep_52.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5119.i5, i64 -48
  %_allin_new_bt_53.i = bitcast i8* %_new_gep_52.i to i64*
  %83 = load i64, i64* %_allin_new_bt_53.i, align 8, !mcsema_real_eip !16
  %_new_gep_54.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5119.i5, i64 -40
  %84 = bitcast i8* %_new_gep_54.i to i32*
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !17
  %86 = zext i32 %85 to i64, !mcsema_real_eip !17
  %_new_gep_57.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5119.i5, i64 -56
  %_allin_new_bt_58.i = bitcast i8* %_new_gep_57.i to i64*
  store i64 %69, i64* %_allin_new_bt_58.i, align 8, !mcsema_real_eip !18
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5920.i6 = load i8*, i8** %71, align 8
  %_new_gep_60.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5920.i6, i64 -56
  %_allin_new_bt_61.i = bitcast i8* %_new_gep_60.i to i64*
  %87 = load i64, i64* %_allin_new_bt_61.i, align 8, !mcsema_real_eip !19
  %_new_gep_62.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5920.i6, i64 -64
  %_allin_new_bt_63.i = bitcast i8* %_new_gep_62.i to i64*
  store i64 %78, i64* %_allin_new_bt_63.i, align 8, !mcsema_real_eip !20
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6421.i7 = load i8*, i8** %71, align 8
  %_new_gep_65.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6421.i7, i64 -68
  %88 = bitcast i8* %_new_gep_65.i to i32*
  store i32 3, i32* %88, align 4, !mcsema_real_eip !21
  %89 = bitcast i8** %_RSP_ptr_.i to i32**
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_674522.i8 = load i32*, i32** %89, align 8
  store i32 3, i32* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_674522.i8, align 4, !mcsema_real_eip !22
  %90 = inttoptr i64 %87 to i64*, !mcsema_real_eip !23
  %91 = load i64, i64* %90, align 8, !mcsema_real_eip !23
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_69.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_70.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_69.i, i64 8
  %_allin_new_bt_71.i = bitcast i8* %_new_gep_70.i to i64*
  store i64 %91, i64* %_allin_new_bt_71.i, align 8, !mcsema_real_eip !24
  %92 = add i64 %87, 8, !mcsema_real_eip !25
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !25
  %95 = zext i32 %94 to i64, !mcsema_real_eip !25
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_72.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_73.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_72.i, i64 16
  %96 = bitcast i8* %_new_gep_73.i to i32*
  store i32 %94, i32* %96, align 4, !mcsema_real_eip !26
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_75.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_76.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_75.i, i64 24
  %_allin_new_bt_77.i = bitcast i8* %_new_gep_76.i to i64*
  store i64 %87, i64* %_allin_new_bt_77.i, align 8, !mcsema_real_eip !27
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7823.i9 = load i8*, i8** %71, align 8
  %_new_gep_79.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7823.i9, i64 -64
  %_allin_new_bt_80.i = bitcast i8* %_new_gep_79.i to i64*
  %97 = load i64, i64* %_allin_new_bt_80.i, align 8, !mcsema_real_eip !28
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_81.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_82.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_81.i, i64 32
  %_allin_new_bt_83.i = bitcast i8* %_new_gep_82.i to i64*
  store i64 %97, i64* %_allin_new_bt_83.i, align 8, !mcsema_real_eip !29
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_85.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84.i, i64 -8
  %_allin_new_bt_86.i = bitcast i8* %_new_gep_85.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_86.i, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_85.i, i8** %_RSP_ptr_.i, align 8
  store i64 %97, i64* %RAX.i, align 8, !mcsema_real_eip !30
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !30
  store i64 %78, i64* %RCX.i, align 8, !mcsema_real_eip !30
  store i64 %87, i64* %RDX.i, align 8, !mcsema_real_eip !30
  store i64 %86, i64* %RSI.i, align 8, !mcsema_real_eip !30
  store i64 %83, i64* %RDI.i, align 8, !mcsema_real_eip !30
  %_new_ptr2int_88.i = ptrtoint i8* %_new_gep_85.i to i64
  store volatile i64 %_new_ptr2int_88.i, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_896.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_896.i, i64* %RBP.i, align 8
  %98 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %98, align 8
  store i64 %95, i64* %R10.i, align 8, !mcsema_real_eip !30
  store i64 %87, i64* %R11.i, align 8, !mcsema_real_eip !30
  %99 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %99, align 8
  %100 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %100, align 8
  store i64 %7, i64* %RIP.i, align 8, !mcsema_real_eip !30
  store i1 %_trans_icmp_ne_7.i, i1* %CF.i, align 1, !mcsema_real_eip !30
  store i1 %65, i1* %PF.i, align 1, !mcsema_real_eip !30
  store i1 %62, i1* %AF.i, align 1, !mcsema_real_eip !30
  store i1 false, i1* %ZF.i, align 1, !mcsema_real_eip !30
  store i1 true, i1* %SF.i, align 1, !mcsema_real_eip !30
  store i1 %66, i1* %OF.i, align 1, !mcsema_real_eip !30
  store i1 %8, i1* %DF.i, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  store i1 %11, i1* %FPU_B.i, align 1, !mcsema_real_eip !30
  store i1 %12, i1* %FPU_C3.i, align 1, !mcsema_real_eip !30
  store i3 %13, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !30
  store i1 %14, i1* %FPU_C2.i, align 1, !mcsema_real_eip !30
  store i1 %15, i1* %FPU_C1.i, align 1, !mcsema_real_eip !30
  store i1 %16, i1* %FPU_C0.i, align 1, !mcsema_real_eip !30
  store i1 %17, i1* %FPU_ES.i, align 1, !mcsema_real_eip !30
  store i1 %18, i1* %FPU_SF.i, align 1, !mcsema_real_eip !30
  store i1 %19, i1* %FPU_PE.i, align 1, !mcsema_real_eip !30
  store i1 %20, i1* %FPU_UE.i, align 1, !mcsema_real_eip !30
  store i1 %21, i1* %FPU_OE.i, align 1, !mcsema_real_eip !30
  store i1 %22, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !30
  store i1 %23, i1* %FPU_DE.i, align 1, !mcsema_real_eip !30
  store i1 %24, i1* %FPU_IE.i, align 1, !mcsema_real_eip !30
  store i1 %25, i1* %FPU_X.i, align 1, !mcsema_real_eip !30
  store i2 %26, i2* %FPU_RC.i, align 1, !mcsema_real_eip !30
  store i2 %27, i2* %FPU_PC.i, align 1, !mcsema_real_eip !30
  store i1 %28, i1* %FPU_PM.i, align 1, !mcsema_real_eip !30
  store i1 %29, i1* %FPU_UM.i, align 1, !mcsema_real_eip !30
  store i1 %30, i1* %FPU_OM.i, align 1, !mcsema_real_eip !30
  store i1 %31, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !30
  store i1 %32, i1* %FPU_DM.i, align 1, !mcsema_real_eip !30
  store i1 %33, i1* %FPU_IM.i, align 1, !mcsema_real_eip !30
  store i64 %36, i64* %35, align 4
  store i16 %37, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !30
  store i64 %38, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !30
  store i16 %39, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !30
  store i64 %40, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !30
  store i11 %41, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !30
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !30
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !30
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !30
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !30
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !30
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !30
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !30
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !30
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !30
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !30
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !30
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !30
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !30
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !30
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !30
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !30
  %101 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %59, <2 x i64>* %101, align 1
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
!2 = !{i64 256}
!3 = !{i64 260}
!4 = !{i64 302}
!5 = !{i64 328}
!6 = !{i64 336}
!7 = !{i64 342}
!8 = !{i64 346}
!9 = !{i64 353}
!10 = !{i64 357}
!11 = !{i64 364}
!12 = !{i64 372}
!13 = !{i64 376}
!14 = !{i64 380}
!15 = !{i64 384}
!16 = !{i64 388}
!17 = !{i64 392}
!18 = !{i64 396}
!19 = !{i64 406}
!20 = !{i64 410}
!21 = !{i64 417}
!22 = !{i64 423}
!23 = !{i64 430}
!24 = !{i64 433}
!25 = !{i64 438}
!26 = !{i64 442}
!27 = !{i64 447}
!28 = !{i64 452}
!29 = !{i64 456}
!30 = !{i64 461}
