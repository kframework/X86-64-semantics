; ModuleID = 'Output/test_4.clang.trans.opt.bc'
source_filename = "Output/test_4.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [88 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x1ed = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noreturn
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_RSP_ptr_130.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_131.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_132.i = alloca [256 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_130.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_130.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_130.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_131.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_131.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_131.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_132.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_132.i, i64 0, i64 256
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_130.sroa.0.i, align 8
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
  %6 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %7 = bitcast i64* %R12.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
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
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_133.i = load i64, i64* %_RBP_ptr_131.sroa.0.i, align 8
  %63 = bitcast i64* %_RSP_ptr_130.sroa.0.i to i8**
  %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_141.i1 = load i8*, i8** %63, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_141.i1, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_133.i, i64* %_allin_new_bt_.i, align 8
  %64 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %64, i64* %_RBP_ptr_131.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_141.i1, i64 -24
  %65 = bitcast i8* %_new_gep_3.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %65, align 8
  %_new_gep_7.i = getelementptr i8, i8* %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_141.i1, i64 -40
  %66 = bitcast i8* %_new_gep_7.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %66, align 8
  %_new_gep_9.i = getelementptr i8, i8* %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_141.i1, i64 -48
  %67 = add i64 %6, -48
  %_allin_new_bt_10.i = bitcast i8* %_new_gep_9.i to i64*
  store i64 %3, i64* %_allin_new_bt_10.i, align 8, !mcsema_real_eip !3
  %_new_gep_11.i = getelementptr i8, i8* %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_141.i1, i64 -248
  %68 = add i64 %6, -248
  %69 = xor i64 %68, %67, !mcsema_real_eip !4
  %70 = and i64 %69, 16, !mcsema_real_eip !4
  %71 = icmp ne i64 %70, 0, !mcsema_real_eip !4
  %72 = trunc i64 %68 to i8, !mcsema_real_eip !4
  %73 = tail call i8 @llvm.ctpop.i8(i8 %72), !mcsema_real_eip !4
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  %76 = icmp eq i64 %68, 0, !mcsema_real_eip !4
  %77 = icmp slt i64 %68, 0
  %78 = icmp ult i64 %67, 200, !mcsema_real_eip !4
  %79 = and i64 %69, %67, !mcsema_real_eip !4
  %80 = icmp slt i64 %79, 0
  %81 = ptrtoint i8* %_new_gep_11.i to i64
  store volatile i64 %81, i64* %_RSP_ptr_130.sroa.0.i, align 8
  %82 = bitcast i64* %_RBP_ptr_131.sroa.0.i to i8**
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_12142.i2 = load i8*, i8** %82, align 8
  %_new_gep_13.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_12142.i2, i64 -144
  %83 = ptrtoint i8* %_new_gep_13.i to i64
  %_new_gep_15.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_12142.i2, i64 -96
  %84 = ptrtoint i8* %_new_gep_15.i to i64
  %_new_gep_18.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_12142.i2, i64 -44
  %85 = bitcast i8* %_new_gep_18.i to i32*
  store i32 0, i32* %85, align 4, !mcsema_real_eip !5
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_20143.i3 = load i8*, i8** %82, align 8
  %_new_gep_21.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_20143.i3, i64 -48
  %86 = trunc i64 %5 to i32, !mcsema_real_eip !6
  %87 = bitcast i8* %_new_gep_21.i to i32*
  store i32 %86, i32* %87, align 4, !mcsema_real_eip !6
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_23144.i4 = load i8*, i8** %82, align 8
  %_new_gep_24.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_23144.i4, i64 -56
  %_allin_new_bt_25.i = bitcast i8* %_new_gep_24.i to i64*
  store i64 %4, i64* %_allin_new_bt_25.i, align 8, !mcsema_real_eip !7
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_26145.i5 = load i8*, i8** %82, align 8
  %_new_gep_27.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_26145.i5, i64 -148
  %88 = bitcast i8* %_new_gep_27.i to i32*
  store i32 300, i32* %88, align 4, !mcsema_real_eip !8
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_29146.i6 = load i8*, i8** %82, align 8
  %_new_gep_30.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_29146.i6, i64 -160
  %_allin_new_bt_31.i = bitcast i8* %_new_gep_30.i to i64*
  store i64 add (i64 ptrtoint (%0* @data_0x1ed to i64), i64 48), i64* %_allin_new_bt_31.i, align 8, !mcsema_real_eip !9
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_32147.i7 = load i8*, i8** %82, align 8
  %_new_gep_33.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_32147.i7, i64 -168
  %_allin_new_bt_34.i = bitcast i8* %_new_gep_33.i to i64*
  store i64 40, i64* %_allin_new_bt_34.i, align 8, !mcsema_real_eip !10
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_35148.i8 = load i8*, i8** %82, align 8
  %_new_gep_36.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_35148.i8, i64 -172
  %89 = bitcast i8* %_new_gep_36.i to i32*
  store i32 100, i32* %89, align 4, !mcsema_real_eip !11
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_38149.i9 = load i8*, i8** %82, align 8
  %_new_gep_39.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_38149.i9, i64 -176
  %90 = bitcast i8* %_new_gep_39.i to i32*
  store i32 200, i32* %90, align 4, !mcsema_real_eip !12
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_41150.i10 = load i8*, i8** %82, align 8
  %_new_gep_42.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_41150.i10, i64 -184
  %_allin_new_bt_43.i = bitcast i8* %_new_gep_42.i to i64*
  store i64 %84, i64* %_allin_new_bt_43.i, align 8, !mcsema_real_eip !13
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_44151.i11 = load i8*, i8** %82, align 8
  %_new_gep_45.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_44151.i11, i64 -188
  %91 = bitcast i8* %_new_gep_45.i to i32*
  store i32 400, i32* %91, align 4, !mcsema_real_eip !14
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_47152.i12 = load i8*, i8** %82, align 8
  %_new_gep_48.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_47152.i12, i64 -192
  %92 = bitcast i8* %_new_gep_48.i to i32*
  store i32 500, i32* %92, align 4, !mcsema_real_eip !15
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_50153.i13 = load i8*, i8** %82, align 8
  %_new_gep_51.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_50153.i13, i64 -196
  %93 = bitcast i8* %_new_gep_51.i to i32*
  store i32 600, i32* %93, align 4, !mcsema_real_eip !16
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_53154.i14 = load i8*, i8** %82, align 8
  %_new_gep_54.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_53154.i14, i64 -200
  %94 = bitcast i8* %_new_gep_54.i to i32*
  store i32 10, i32* %94, align 4, !mcsema_real_eip !17
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_56155.i15 = load i8*, i8** %82, align 8
  %_new_gep_57.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_56155.i15, i64 -208
  %_allin_new_bt_58.i = bitcast i8* %_new_gep_57.i to i64*
  store i64 %83, i64* %_allin_new_bt_58.i, align 8, !mcsema_real_eip !18
  %95 = tail call x86_64_sysvcc i64 @memcpy(i64 %84, i64 ptrtoint (%0* @data_0x1ed to i64), i64 40), !mcsema_real_eip !19
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_59156.i16 = load i8*, i8** %82, align 8
  %_new_gep_60.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_59156.i16, i64 -208
  %_allin_new_bt_61.i = bitcast i8* %_new_gep_60.i to i64*
  %96 = load i64, i64* %_allin_new_bt_61.i, align 8, !mcsema_real_eip !20
  %_new_gep_62.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_59156.i16, i64 -160
  %_allin_new_bt_63.i = bitcast i8* %_new_gep_62.i to i64*
  %97 = load i64, i64* %_allin_new_bt_63.i, align 8, !mcsema_real_eip !21
  %_new_gep_65.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_59156.i16, i64 -168
  %_allin_new_bt_66.i = bitcast i8* %_new_gep_65.i to i64*
  %98 = load i64, i64* %_allin_new_bt_66.i, align 8, !mcsema_real_eip !22
  %99 = tail call x86_64_sysvcc i64 @memcpy(i64 %96, i64 %97, i64 %98), !mcsema_real_eip !23
  %_new_gep_71.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_59156.i16, i64 -176
  %100 = bitcast i8* %_new_gep_71.i to <2 x i32>*
  %101 = load <2 x i32>, <2 x i32>* %100, align 4
  %102 = zext <2 x i32> %101 to <2 x i64>
  %_new_gep_74.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_59156.i16, i64 -148
  %103 = bitcast i8* %_new_gep_74.i to i32*
  %104 = load i32, i32* %103, align 4, !mcsema_real_eip !24
  %105 = zext i32 %104 to i64, !mcsema_real_eip !24
  %_new_gep_77.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_59156.i16, i64 -188
  %106 = bitcast i8* %_new_gep_77.i to i32*
  %107 = load i32, i32* %106, align 4, !mcsema_real_eip !25
  %108 = zext i32 %107 to i64, !mcsema_real_eip !25
  %_new_gep_80.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_59156.i16, i64 -192
  %109 = bitcast i8* %_new_gep_80.i to i32*
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !26
  %111 = zext i32 %110 to i64, !mcsema_real_eip !26
  %_new_gep_83.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_59156.i16, i64 -196
  %112 = bitcast i8* %_new_gep_83.i to i32*
  %113 = load i32, i32* %112, align 4, !mcsema_real_eip !27
  %114 = zext i32 %113 to i64, !mcsema_real_eip !27
  %115 = bitcast i64* %_RSP_ptr_130.sroa.0.i to i32**
  %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_85134135158.i17 = load i32*, i32** %115, align 8
  store i32 10, i32* %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_85134135158.i17, align 4, !mcsema_real_eip !28
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_87159.i18 = load i8*, i8** %82, align 8
  %_new_gep_88.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_87159.i18, i64 -184
  %_allin_new_bt_89.i = bitcast i8* %_new_gep_88.i to i64*
  %116 = load i64, i64* %_allin_new_bt_89.i, align 8, !mcsema_real_eip !29
  %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_90160.i19 = load i8*, i8** %63, align 8
  %_new_gep_91.i = getelementptr i8, i8* %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_90160.i19, i64 8
  %_allin_new_bt_92.i = bitcast i8* %_new_gep_91.i to i64*
  store i64 %116, i64* %_allin_new_bt_92.i, align 8, !mcsema_real_eip !30
  %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_93161.i20 = load i8*, i8** %63, align 8
  %_new_gep_94.i = getelementptr i8, i8* %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_93161.i20, i64 16
  %117 = bitcast i8* %_new_gep_94.i to i32*
  store i32 10, i32* %117, align 4, !mcsema_real_eip !31
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_96162.i21 = load i8*, i8** %82, align 8
  %_new_gep_97.i = getelementptr i8, i8* %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_96162.i21, i64 -208
  %_allin_new_bt_98.i = bitcast i8* %_new_gep_97.i to i64*
  %118 = load i64, i64* %_allin_new_bt_98.i, align 8, !mcsema_real_eip !32
  %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_99163.i22 = load i8*, i8** %63, align 8
  %_new_gep_100.i = getelementptr i8, i8* %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_99163.i22, i64 24
  %_allin_new_bt_101.i = bitcast i8* %_new_gep_100.i to i64*
  store i64 %118, i64* %_allin_new_bt_101.i, align 8, !mcsema_real_eip !33
  %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_102164.i23 = load i8*, i8** %63, align 8
  %_new_gep_103.i = getelementptr i8, i8* %_RSP_ptr_130.sroa.0.i.0._RSP_ptr_130.sroa.0.0._RSP_ptr_130.sroa.0.0._load_rsp_ptr_102164.i23, i64 -8
  %_allin_new_bt_104.i = bitcast i8* %_new_gep_103.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_104.i, align 8, !mcsema_real_eip !34
  %119 = ptrtoint i8* %_new_gep_103.i to i64
  store volatile i64 %119, i64* %_RSP_ptr_130.sroa.0.i, align 8
  store i64 %99, i64* %RAX.i, align 8, !mcsema_real_eip !34
  store i64 %116, i64* %RBX.i, align 8, !mcsema_real_eip !34
  store i64 %108, i64* %RCX.i, align 8, !mcsema_real_eip !34
  store i64 %105, i64* %RDX.i, align 8, !mcsema_real_eip !34
  %120 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> %102, <2 x i64>* %120, align 8
  store volatile i64 %119, i64* %RSP.i, align 8
  %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_107137.i = load i64, i64* %_RBP_ptr_131.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_131.sroa.0.i.0._RBP_ptr_131.sroa.0.0._RBP_ptr_131.sroa.0.0._load_rbp_ptr_107137.i, i64* %RBP.i, align 8
  store i64 %111, i64* %R8.i, align 8, !mcsema_real_eip !34
  store i64 %114, i64* %R9.i, align 8, !mcsema_real_eip !34
  %121 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %121, align 8
  %122 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (%0* @data_0x1ed to i64), i64 40>, <2 x i64>* %122, align 8
  store i64 %118, i64* %R14.i, align 8, !mcsema_real_eip !34
  store i64 add (i64 ptrtoint (%0* @data_0x1ed to i64), i64 48), i64* %R15.i, align 8, !mcsema_real_eip !34
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !34
  store i1 %78, i1* %CF.i, align 1, !mcsema_real_eip !34
  store i1 %75, i1* %PF.i, align 1, !mcsema_real_eip !34
  store i1 %71, i1* %AF.i, align 1, !mcsema_real_eip !34
  store i1 %76, i1* %ZF.i, align 1, !mcsema_real_eip !34
  store i1 %77, i1* %SF.i, align 1, !mcsema_real_eip !34
  store i1 %80, i1* %OF.i, align 1, !mcsema_real_eip !34
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !34
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !34
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !34
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !34
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !34
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !34
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !34
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !34
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !34
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !34
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !34
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !34
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !34
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !34
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !34
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !34
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !34
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !34
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !34
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !34
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !34
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !34
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !34
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !34
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !34
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !34
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !34
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !34
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !34
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !34
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !34
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !34
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !34
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !34
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !34
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !34
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !34
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !34
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !34
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !34
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !34
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !34
  %123 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %123, align 1
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
!2 = !{i64 160, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 172, [12 x i8] c"\09pushq\09%rbx\00"}
!4 = !{i64 173, [17 x i8] c"\09subq\09$200, %rsp\00"}
!5 = !{i64 259, [20 x i8] c"\09movl\09$0, -44(%rbp)\00"}
!6 = !{i64 266, [22 x i8] c"\09movl\09%edi, -48(%rbp)\00"}
!7 = !{i64 269, [22 x i8] c"\09movq\09%rsi, -56(%rbp)\00"}
!8 = !{i64 282, [23 x i8] c"\09movl\09%edx, -148(%rbp)\00"}
!9 = !{i64 291, [23 x i8] c"\09movq\09%r15, -160(%rbp)\00"}
!10 = !{i64 298, [23 x i8] c"\09movq\09%r13, -168(%rbp)\00"}
!11 = !{i64 305, [23 x i8] c"\09movl\09%eax, -172(%rbp)\00"}
!12 = !{i64 311, [23 x i8] c"\09movl\09%ecx, -176(%rbp)\00"}
!13 = !{i64 317, [23 x i8] c"\09movq\09%r14, -184(%rbp)\00"}
!14 = !{i64 324, [23 x i8] c"\09movl\09%r8d, -188(%rbp)\00"}
!15 = !{i64 331, [23 x i8] c"\09movl\09%r9d, -192(%rbp)\00"}
!16 = !{i64 338, [24 x i8] c"\09movl\09%r10d, -196(%rbp)\00"}
!17 = !{i64 345, [24 x i8] c"\09movl\09%r11d, -200(%rbp)\00"}
!18 = !{i64 352, [23 x i8] c"\09movq\09%rbx, -208(%rbp)\00"}
!19 = !{i64 359, [9 x i8] c"\09callq\090\00"}
!20 = !{i64 364, [23 x i8] c"\09movq\09-208(%rbp), %rdx\00"}
!21 = !{i64 374, [23 x i8] c"\09movq\09-160(%rbp), %rsi\00"}
!22 = !{i64 381, [23 x i8] c"\09movq\09-168(%rbp), %rdx\00"}
!23 = !{i64 388, [9 x i8] c"\09callq\090\00"}
!24 = !{i64 405, [23 x i8] c"\09movl\09-148(%rbp), %edx\00"}
!25 = !{i64 411, [23 x i8] c"\09movl\09-188(%rbp), %ecx\00"}
!26 = !{i64 417, [23 x i8] c"\09movl\09-192(%rbp), %r8d\00"}
!27 = !{i64 424, [23 x i8] c"\09movl\09-196(%rbp), %r9d\00"}
!28 = !{i64 431, [18 x i8] c"\09movl\09$10, (%rsp)\00"}
!29 = !{i64 438, [23 x i8] c"\09movq\09-184(%rbp), %rbx\00"}
!30 = !{i64 445, [20 x i8] c"\09movq\09%rbx, 8(%rsp)\00"}
!31 = !{i64 450, [20 x i8] c"\09movl\09$10, 16(%rsp)\00"}
!32 = !{i64 458, [23 x i8] c"\09movq\09-208(%rbp), %r14\00"}
!33 = !{i64 465, [21 x i8] c"\09movq\09%r14, 24(%rsp)\00"}
!34 = !{i64 470, [12 x i8] c"\09callq\09-475\00"}
