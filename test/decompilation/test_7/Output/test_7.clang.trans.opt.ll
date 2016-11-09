; ModuleID = 'Output/test_7.clang.trans.opt.bc'
source_filename = "Output/test_7.clang.bc"
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
  %_local_stack_start_ptr_2.i = alloca [176 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.i.0..sroa_cast = bitcast i8** %_RSP_ptr_.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 176, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 176
  store i8* %_local_stack_end_ptr_.i, i8** %_RSP_ptr_.i, align 8
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %3 = bitcast i64* %R12.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %5 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %6 = bitcast i64* %R15.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
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
  %_new_gep_.i = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 168
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3.i, i64* %_allin_new_bt_.i, align 8
  %60 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %60, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 160
  %_allin_new_bt_2.i = bitcast i8* %_new_gep_1.i to i64*
  store i64 %5, i64* %_allin_new_bt_2.i, align 8, !mcsema_real_eip !3
  %_new_gep_3.i = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 152
  %_allin_new_bt_4.i = bitcast i8* %_new_gep_3.i to i64*
  store i64 %2, i64* %_allin_new_bt_4.i, align 8, !mcsema_real_eip !4
  %_new_gep_5.i = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 8
  store volatile i8* %_new_gep_5.i, i8** %_RSP_ptr_.i, align 8
  %_new_gep_15.i = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 148
  %61 = bitcast i8* %_new_gep_15.i to i32*
  store i32 0, i32* %61, align 4, !mcsema_real_eip !5
  %_new_gep_18.i = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 144
  %62 = bitcast i8* %_new_gep_18.i to i32*
  store i32 1, i32* %62, align 4, !mcsema_real_eip !6
  %_new_gep_21.i = getelementptr inbounds [176 x i8], [176 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 100
  %63 = bitcast i8* %_new_gep_21.i to i32*
  store i32 0, i32* %63, align 4, !mcsema_real_eip !7
  %64 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  br label %block_0x190.i

block_0x190.i:                                    ; preds = %block_0x190.i, %driverBlockRaw
  %65 = phi i32 [ 0, %driverBlockRaw ], [ %74, %block_0x190.i ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_231241.i = phi i8* [ %_new_gep_.i, %driverBlockRaw ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2312.i2, %block_0x190.i ]
  %66 = add i32 %65, 1
  %67 = sext i32 %65 to i64, !mcsema_real_eip !8
  %_new_gep_33.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_231241.i, i64 -64
  %68 = shl nsw i64 %67, 2
  %_new_gep_34.i = getelementptr i8, i8* %_new_gep_33.i, i64 %68
  %69 = bitcast i8* %_new_gep_34.i to i32*
  store i32 %66, i32* %69, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3624.i1 = load i8*, i8** %64, align 8
  %_new_gep_37.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3624.i1, i64 -68
  %70 = bitcast i8* %_new_gep_37.i to i32*
  %71 = load i32, i32* %70, align 4, !mcsema_real_eip !10
  %72 = add i32 %71, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2312.i2 = load i8*, i8** %64, align 8
  %_new_gep_24.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2312.i2, i64 -68
  %73 = bitcast i8* %_new_gep_24.i to i32*
  %74 = load i32, i32* %73, align 4, !mcsema_real_eip !12
  %75 = add i32 %74, -10
  %76 = icmp slt i32 %75, 0
  %77 = sub i32 9, %74
  %78 = and i32 %77, %74
  %79 = icmp slt i32 %78, 0
  %tmp.i = xor i1 %76, %79
  br i1 %tmp.i, label %block_0x190.i, label %block_0x1b0.i, !mcsema_real_eip !13

block_0x1b0.i:                                    ; preds = %block_0x190.i
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %_new_gep_43.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2312.i2, i64 -24
  %80 = ptrtoint i8* %_new_gep_43.i to i64
  %_new_gep_45.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2312.i2, i64 -80
  %_allin_new_bt_46.i = bitcast i8* %_new_gep_45.i to i64*
  store i64 %80, i64* %_allin_new_bt_46.i, align 8, !mcsema_real_eip !14
  %81 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !15
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4713.i3 = load i8*, i8** %64, align 8
  %_new_gep_48.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4713.i3, i64 -88
  %_allin_new_bt_49.i = bitcast i8* %_new_gep_48.i to i64*
  store i64 %81, i64* %_allin_new_bt_49.i, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5014.i4 = load i8*, i8** %64, align 8
  %_new_gep_51.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5014.i4, i64 -92
  %82 = bitcast i8* %_new_gep_51.i to i32*
  store i32 0, i32* %82, align 4, !mcsema_real_eip !17
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_531529.i5 = load i8*, i8** %64, align 8
  %_new_gep_5430.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_531529.i5, i64 -92
  %83 = bitcast i8* %_new_gep_5430.i to i32*
  %84 = load i32, i32* %83, align 4, !mcsema_real_eip !18
  %85 = add i32 %84, -10
  %86 = xor i32 %85, %84, !mcsema_real_eip !18
  %87 = icmp slt i32 %85, 0
  %88 = and i32 %86, %84, !mcsema_real_eip !18
  %89 = icmp slt i32 %88, 0
  %tmp21231.i = xor i1 %87, %89
  br i1 %tmp21231.i, label %block_0x1df.i.preheader, label %block_0x202.i, !mcsema_real_eip !19

block_0x1df.i.preheader:                          ; preds = %block_0x1b0.i
  br label %block_0x1df.i

block_0x1df.i:                                    ; preds = %block_0x1df.i.preheader, %block_0x1df.i
  %90 = phi i32 [ %101, %block_0x1df.i ], [ %84, %block_0x1df.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_531532.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5315.i14, %block_0x1df.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_531529.i5, %block_0x1df.i.preheader ]
  %91 = add i32 %90, 1
  %92 = sext i32 %90 to i64, !mcsema_real_eip !20
  %_new_gep_63.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_531532.i, i64 -88
  %_allin_new_bt_64.i = bitcast i8* %_new_gep_63.i to i64*
  %93 = load i64, i64* %_allin_new_bt_64.i, align 8, !mcsema_real_eip !21
  %94 = shl nsw i64 %92, 2
  %95 = add i64 %93, %94, !mcsema_real_eip !22
  %96 = inttoptr i64 %95 to i32*
  store i32 %91, i32* %96, align 4, !mcsema_real_eip !22
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6523.i13 = load i8*, i8** %64, align 8
  %_new_gep_66.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6523.i13, i64 -92
  %97 = bitcast i8* %_new_gep_66.i to i32*
  %98 = load i32, i32* %97, align 4, !mcsema_real_eip !23
  %99 = add i32 %98, 1
  store i32 %99, i32* %97, align 4, !mcsema_real_eip !24
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5315.i14 = load i8*, i8** %64, align 8
  %_new_gep_54.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5315.i14, i64 -92
  %100 = bitcast i8* %_new_gep_54.i to i32*
  %101 = load i32, i32* %100, align 4, !mcsema_real_eip !18
  %102 = add i32 %101, -10
  %103 = xor i32 %102, %101, !mcsema_real_eip !18
  %104 = icmp slt i32 %102, 0
  %105 = and i32 %103, %101, !mcsema_real_eip !18
  %106 = icmp slt i32 %105, 0
  %tmp212.i = xor i1 %104, %106
  br i1 %tmp212.i, label %block_0x1df.i, label %block_0x202.i.loopexit, !mcsema_real_eip !19

block_0x202.i.loopexit:                           ; preds = %block_0x1df.i
  br label %block_0x202.i

block_0x202.i:                                    ; preds = %block_0x202.i.loopexit, %block_0x1b0.i
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5315.lcssa.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_531529.i5, %block_0x1b0.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5315.i14, %block_0x202.i.loopexit ]
  %.lcssa28.i = phi i32 [ %84, %block_0x1b0.i ], [ %101, %block_0x202.i.loopexit ]
  %.lcssa27.i = phi i32 [ %85, %block_0x1b0.i ], [ %102, %block_0x202.i.loopexit ]
  %.lcssa26.i = phi i32 [ %86, %block_0x1b0.i ], [ %103, %block_0x202.i.loopexit ]
  %.lcssa25.i = phi i1 [ %87, %block_0x1b0.i ], [ %104, %block_0x202.i.loopexit ]
  %.lcssa.i = phi i1 [ %89, %block_0x1b0.i ], [ %106, %block_0x202.i.loopexit ]
  %107 = icmp ult i32 %.lcssa28.i, 10, !mcsema_real_eip !18
  %108 = icmp eq i32 %.lcssa27.i, 0, !mcsema_real_eip !18
  %109 = trunc i32 %.lcssa27.i to i8, !mcsema_real_eip !18
  %110 = tail call i8 @llvm.ctpop.i8(i8 %109), !mcsema_real_eip !18
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  %113 = and i32 %.lcssa26.i, 16, !mcsema_real_eip !18
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !18
  %_new_gep_72.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5315.lcssa.i, i64 -64
  %115 = ptrtoint i8* %_new_gep_72.i to i64
  %_new_gep_74.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5315.lcssa.i, i64 -24
  %116 = bitcast i8* %_new_gep_74.i to i32*
  %117 = load i32, i32* %116, align 4, !mcsema_real_eip !25
  %118 = zext i32 %117 to i64, !mcsema_real_eip !25
  %_new_gep_77.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5315.lcssa.i, i64 -80
  %_allin_new_bt_78.i = bitcast i8* %_new_gep_77.i to i64*
  %119 = load i64, i64* %_allin_new_bt_78.i, align 8, !mcsema_real_eip !26
  %_new_gep_79.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5315.lcssa.i, i64 -88
  %_allin_new_bt_80.i = bitcast i8* %_new_gep_79.i to i64*
  %120 = load i64, i64* %_allin_new_bt_80.i, align 8, !mcsema_real_eip !27
  %_new_gep_90.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5315.lcssa.i, i64 -104
  %_allin_new_bt_91.i = bitcast i8* %_new_gep_90.i to i64*
  store i64 %120, i64* %_allin_new_bt_91.i, align 8, !mcsema_real_eip !28
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9216.i6 = load i8*, i8** %64, align 8
  %_new_gep_93.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9216.i6, i64 -104
  %_allin_new_bt_94.i = bitcast i8* %_new_gep_93.i to i64*
  %121 = load i64, i64* %_allin_new_bt_94.i, align 8, !mcsema_real_eip !29
  %_new_gep_95.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9216.i6, i64 -112
  %_allin_new_bt_96.i = bitcast i8* %_new_gep_95.i to i64*
  store i64 %115, i64* %_allin_new_bt_96.i, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9717.i7 = load i8*, i8** %64, align 8
  %_new_gep_98.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9717.i7, i64 -116
  %122 = bitcast i8* %_new_gep_98.i to i32*
  store i32 %117, i32* %122, align 4, !mcsema_real_eip !31
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10018.i8 = load i8*, i8** %64, align 8
  %_new_gep_101.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10018.i8, i64 -128
  %_allin_new_bt_102.i = bitcast i8* %_new_gep_101.i to i64*
  store i64 %119, i64* %_allin_new_bt_102.i, align 8, !mcsema_real_eip !32
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10319.i9 = load i8*, i8** %64, align 8
  %_new_gep_104.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10319.i9, i64 -116
  %123 = bitcast i8* %_new_gep_104.i to i32*
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !33
  %125 = zext i32 %124 to i64, !mcsema_real_eip !33
  %126 = bitcast i8** %_RSP_ptr_.i to i32**
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_1064520.i10 = load i32*, i32** %126, align 8
  store i32 %124, i32* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_1064520.i10, align 4, !mcsema_real_eip !34
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10821.i11 = load i8*, i8** %64, align 8
  %_new_gep_109.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10821.i11, i64 -112
  %_allin_new_bt_110.i = bitcast i8* %_new_gep_109.i to i64*
  %127 = load i64, i64* %_allin_new_bt_110.i, align 8, !mcsema_real_eip !35
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_111.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_112.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_111.i, i64 8
  %_allin_new_bt_113.i = bitcast i8* %_new_gep_112.i to i64*
  store i64 %127, i64* %_allin_new_bt_113.i, align 8, !mcsema_real_eip !36
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11422.i12 = load i8*, i8** %64, align 8
  %_new_gep_115.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11422.i12, i64 -128
  %_allin_new_bt_116.i = bitcast i8* %_new_gep_115.i to i64*
  %128 = load i64, i64* %_allin_new_bt_116.i, align 8, !mcsema_real_eip !37
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_117.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_118.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_117.i, i64 16
  %_allin_new_bt_119.i = bitcast i8* %_new_gep_118.i to i64*
  store i64 %128, i64* %_allin_new_bt_119.i, align 8, !mcsema_real_eip !38
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_120.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_121.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_120.i, i64 24
  %_allin_new_bt_122.i = bitcast i8* %_new_gep_121.i to i64*
  store i64 %120, i64* %_allin_new_bt_122.i, align 8, !mcsema_real_eip !39
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_123.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_new_gep_124.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_123.i, i64 -8
  %_allin_new_bt_125.i = bitcast i8* %_new_gep_124.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_125.i, align 8, !mcsema_real_eip !40
  store volatile i8* %_new_gep_124.i, i8** %_RSP_ptr_.i, align 8
  store i64 %125, i64* %RAX.i, align 8, !mcsema_real_eip !40
  store i64 %127, i64* %RBX.i, align 8, !mcsema_real_eip !40
  store i64 %121, i64* %RCX.i, align 8, !mcsema_real_eip !40
  store i64 %119, i64* %RDX.i, align 8, !mcsema_real_eip !40
  store i64 %115, i64* %RSI.i, align 8, !mcsema_real_eip !40
  store i64 %118, i64* %RDI.i, align 8, !mcsema_real_eip !40
  %_new_ptr2int_127.i = ptrtoint i8* %_new_gep_124.i to i64
  store volatile i64 %_new_ptr2int_127.i, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1286.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1286.i, i64* %RBP.i, align 8
  %129 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %129, align 8
  store i64 %120, i64* %R10.i, align 8, !mcsema_real_eip !40
  store i64 %121, i64* %R11.i, align 8, !mcsema_real_eip !40
  %130 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %130, align 8
  store i64 %128, i64* %R14.i, align 8, !mcsema_real_eip !40
  %131 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %131, align 8
  store i1 %107, i1* %CF.i, align 1, !mcsema_real_eip !40
  store i1 %112, i1* %PF.i, align 1, !mcsema_real_eip !40
  store i1 %114, i1* %AF.i, align 1, !mcsema_real_eip !40
  store i1 %108, i1* %ZF.i, align 1, !mcsema_real_eip !40
  store i1 %.lcssa25.i, i1* %SF.i, align 1, !mcsema_real_eip !40
  store i1 %.lcssa.i, i1* %OF.i, align 1, !mcsema_real_eip !40
  store i1 %8, i1* %DF.i, align 1, !mcsema_real_eip !40
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !40
  store i1 %11, i1* %FPU_B.i, align 1, !mcsema_real_eip !40
  store i1 %12, i1* %FPU_C3.i, align 1, !mcsema_real_eip !40
  store i3 %13, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !40
  store i1 %14, i1* %FPU_C2.i, align 1, !mcsema_real_eip !40
  store i1 %15, i1* %FPU_C1.i, align 1, !mcsema_real_eip !40
  store i1 %16, i1* %FPU_C0.i, align 1, !mcsema_real_eip !40
  store i1 %17, i1* %FPU_ES.i, align 1, !mcsema_real_eip !40
  store i1 %18, i1* %FPU_SF.i, align 1, !mcsema_real_eip !40
  store i1 %19, i1* %FPU_PE.i, align 1, !mcsema_real_eip !40
  store i1 %20, i1* %FPU_UE.i, align 1, !mcsema_real_eip !40
  store i1 %21, i1* %FPU_OE.i, align 1, !mcsema_real_eip !40
  store i1 %22, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !40
  store i1 %23, i1* %FPU_DE.i, align 1, !mcsema_real_eip !40
  store i1 %24, i1* %FPU_IE.i, align 1, !mcsema_real_eip !40
  store i1 %25, i1* %FPU_X.i, align 1, !mcsema_real_eip !40
  store i2 %26, i2* %FPU_RC.i, align 1, !mcsema_real_eip !40
  store i2 %27, i2* %FPU_PC.i, align 1, !mcsema_real_eip !40
  store i1 %28, i1* %FPU_PM.i, align 1, !mcsema_real_eip !40
  store i1 %29, i1* %FPU_UM.i, align 1, !mcsema_real_eip !40
  store i1 %30, i1* %FPU_OM.i, align 1, !mcsema_real_eip !40
  store i1 %31, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !40
  store i1 %32, i1* %FPU_DM.i, align 1, !mcsema_real_eip !40
  store i1 %33, i1* %FPU_IM.i, align 1, !mcsema_real_eip !40
  store i64 %36, i64* %35, align 4
  store i16 %37, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !40
  store i64 %38, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !40
  store i16 %39, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !40
  store i64 %40, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !40
  store i11 %41, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !40
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !40
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !40
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !40
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !40
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !40
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !40
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !40
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !40
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !40
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !40
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !40
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !40
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !40
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !40
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !40
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !40
  %132 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %59, <2 x i64>* %132, align 1
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
!2 = !{i64 352}
!3 = !{i64 356}
!4 = !{i64 358}
!5 = !{i64 366}
!6 = !{i64 373}
!7 = !{i64 380}
!8 = !{i64 408}
!9 = !{i64 412}
!10 = !{i64 416}
!11 = !{i64 424}
!12 = !{i64 387}
!13 = !{i64 394}
!14 = !{i64 446}
!15 = !{i64 450}
!16 = !{i64 455}
!17 = !{i64 459}
!18 = !{i64 466}
!19 = !{i64 473}
!20 = !{i64 487}
!21 = !{i64 491}
!22 = !{i64 495}
!23 = !{i64 498}
!24 = !{i64 506}
!25 = !{i64 523}
!26 = !{i64 526}
!27 = !{i64 530}
!28 = !{i64 546}
!29 = !{i64 553}
!30 = !{i64 557}
!31 = !{i64 564}
!32 = !{i64 571}
!33 = !{i64 578}
!34 = !{i64 581}
!35 = !{i64 584}
!36 = !{i64 588}
!37 = !{i64 593}
!38 = !{i64 597}
!39 = !{i64 602}
!40 = !{i64 607}
