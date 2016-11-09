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
  %_local_stack_start_ptr_6.i = alloca [104 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 104, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 104
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
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 96
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7.i, i64* %_allin_new_bt_.i, align 8
  %65 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %65, i64* %_RBP_ptr_.sroa.0.i, align 8
  %66 = ptrtoint [104 x i8]* %_local_stack_start_ptr_6.i to i64
  store volatile i64 %66, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_11.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 32
  %67 = ptrtoint i8* %_new_gep_11.i to i64
  %_new_gep_13.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 92
  %68 = bitcast i8* %_new_gep_13.i to i32*
  store i32 0, i32* %68, align 4, !mcsema_real_eip !3
  %_new_gep_16.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 88
  %69 = trunc i64 %5 to i32, !mcsema_real_eip !4
  %70 = bitcast i8* %_new_gep_16.i to i32*
  store i32 %69, i32* %70, align 4, !mcsema_real_eip !4
  %_new_gep_19.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 80
  %_allin_new_bt_20.i = bitcast i8* %_new_gep_19.i to i64*
  store i64 %4, i64* %_allin_new_bt_20.i, align 8, !mcsema_real_eip !5
  %_new_gep_22.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 60
  %71 = bitcast i8* %_new_gep_22.i to i32*
  store i32 0, i32* %71, align 4, !mcsema_real_eip !6
  %_new_gep_25.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 76
  %72 = bitcast i8* %_new_gep_25.i to i32*
  store i32 1, i32* %72, align 4, !mcsema_real_eip !7
  %_new_gep_28.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 72
  %73 = bitcast i8* %_new_gep_28.i to i32*
  store i32 1, i32* %73, align 4, !mcsema_real_eip !8
  store i8 88, i8* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x330 to i64), i64 12) to i8*), align 4, !mcsema_real_eip !9
  %74 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %67, i64 28), !mcsema_real_eip !10
  %_new_gep_37.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 24
  %_allin_new_bt_38.i = bitcast i8* %_new_gep_37.i to i64*
  store i64 %74, i64* %_allin_new_bt_38.i, align 8, !mcsema_real_eip !11
  %75 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  br label %block_0x13a.i

block_0x13a.i:                                    ; preds = %block_0x2e8.block_0x13a_crit_edge.i, %driverBlockRaw
  %76 = phi i32 [ 1, %driverBlockRaw ], [ %.pre87.i, %block_0x2e8.block_0x13a_crit_edge.i ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_391738.i = phi i8* [ %_new_gep_.i, %driverBlockRaw ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3917.i14, %block_0x2e8.block_0x13a_crit_edge.i ]
  %RSI_val.037.i = phi i64 [ %67, %driverBlockRaw ], [ %155, %block_0x2e8.block_0x13a_crit_edge.i ]
  %_new_gep_46.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_391738.i, i64 -28
  %77 = bitcast i8* %_new_gep_46.i to i32*
  store i32 %76, i32* %77, align 4, !mcsema_real_eip !12
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4819.i4 = load i8*, i8** %75, align 8
  %_new_gep_49.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4819.i4, i64 -24
  %78 = bitcast i8* %_new_gep_49.i to i32*
  %79 = load i32, i32* %78, align 4, !mcsema_real_eip !13
  %_new_gep_52.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4819.i4, i64 -32
  %80 = bitcast i8* %_new_gep_52.i to i32*
  store i32 %79, i32* %80, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5420.i5 = load i8*, i8** %75, align 8
  %_new_gep_55.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5420.i5, i64 -36
  %81 = bitcast i8* %_new_gep_55.i to i32*
  %82 = load i32, i32* %81, align 4, !mcsema_real_eip !15
  %83 = sext i32 %82 to i64, !mcsema_real_eip !15
  %_new_gep_58.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5420.i5, i64 -64
  %_new_gep_59.i = getelementptr i8, i8* %_new_gep_58.i, i64 %83
  %84 = load i8, i8* %_new_gep_59.i, align 1, !mcsema_real_eip !16
  %85 = sext i8 %84 to i32, !mcsema_real_eip !16
  %86 = add nsw i32 %85, -114
  %87 = icmp eq i32 %86, 0, !mcsema_real_eip !17
  %88 = icmp slt i8 %84, 114
  %89 = sub nsw i32 113, %85
  %90 = and i32 %89, %85
  %91 = icmp slt i32 %90, 0
  %_new_gep_62.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5420.i5, i64 -76
  %92 = bitcast i8* %_new_gep_62.i to i32*
  store i32 %85, i32* %92, align 4, !mcsema_real_eip !18
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6421.i6 = load i8*, i8** %75, align 8
  %_new_gep_65.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6421.i6, i64 -80
  %93 = bitcast i8* %_new_gep_65.i to i32*
  store i32 %86, i32* %93, align 4, !mcsema_real_eip !19
  %tmp71.i = xor i1 %88, %91
  %.demorgan.i = or i1 %87, %tmp71.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6722.i7 = load i8*, i8** %75, align 8
  %_new_gep_68.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6722.i7, i64 -76
  %94 = bitcast i8* %_new_gep_68.i to i32*
  %95 = load i32, i32* %94, align 4, !mcsema_real_eip !20
  br i1 %.demorgan.i, label %block_0x165.i, label %block_0x18d.i, !mcsema_real_eip !21

block_0x2d0.block_0x320.loopexit_crit_edge.i:     ; preds = %block_0x2d0.i
  %96 = sext i8 %117 to i64
  %97 = and i64 %96, 4294967295
  br label %sub_c0.exit

block_0x18d.i:                                    ; preds = %block_0x13a.i
  %98 = add i32 %95, -115
  %99 = icmp eq i32 %98, 0, !mcsema_real_eip !22
  %_new_gep_84.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6722.i7, i64 -92
  %100 = bitcast i8* %_new_gep_84.i to i32*
  store i32 %98, i32* %100, align 4, !mcsema_real_eip !23
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8623.i8 = load i8*, i8** %75, align 8
  br i1 %99, label %block_0x1c5.i, label %block_0x1a1.i, !mcsema_real_eip !24

block_0x1c5.i:                                    ; preds = %block_0x18d.i
  %_new_gep_87.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8623.i8, i64 -24
  %101 = bitcast i8* %_new_gep_87.i to i32*
  %102 = load i32, i32* %101, align 4, !mcsema_real_eip !25
  %uadd92.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %102, i32 1)
  br label %block_0x201.i, !mcsema_real_eip !26

block_0x165.i:                                    ; preds = %block_0x13a.i
  %103 = add i32 %95, -97
  %104 = icmp eq i32 %103, 0, !mcsema_real_eip !27
  %_new_gep_93.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6722.i7, i64 -84
  %105 = bitcast i8* %_new_gep_93.i to i32*
  store i32 %103, i32* %105, align 4, !mcsema_real_eip !28
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9530.i17 = load i8*, i8** %75, align 8
  br i1 %104, label %block_0x1d5.i, label %block_0x179.i, !mcsema_real_eip !29

block_0x201.i:                                    ; preds = %block_0x1e5.i, %block_0x1b5.i, %block_0x1d5.i, %block_0x1c5.i
  %uadd74.sink.i = phi { i32, i1 } [ %uadd74.i, %block_0x1e5.i ], [ %uadd91.i, %block_0x1b5.i ], [ %uadd89.i, %block_0x1d5.i ], [ %uadd92.i, %block_0x1c5.i ]
  %.sink3.i = phi i32* [ %138, %block_0x1e5.i ], [ %136, %block_0x1b5.i ], [ %123, %block_0x1d5.i ], [ %101, %block_0x1c5.i ]
  %106 = extractvalue { i32, i1 } %uadd74.sink.i, 0
  store i32 %106, i32* %.sink3.i, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9626.i12 = load i8*, i8** %75, align 8
  %_new_gep_97.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9626.i12, i64 -20
  %107 = bitcast i8* %_new_gep_97.i to i32*
  %108 = load i32, i32* %107, align 4, !mcsema_real_eip !30
  %109 = sext i32 %108 to i64, !mcsema_real_eip !30
  %_new_gep_100.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9626.i12, i64 -24
  %110 = bitcast i8* %_new_gep_100.i to i32*
  %111 = load i32, i32* %110, align 4, !mcsema_real_eip !31
  %112 = sext i32 %111 to i64, !mcsema_real_eip !31
  %113 = mul nsw i64 %112, 11, !mcsema_real_eip !32
  %114 = add i64 %109, ptrtoint (%0* @data_0x330 to i64)
  %115 = add i64 %114, %113, !mcsema_real_eip !33
  %116 = inttoptr i64 %115 to i8*
  %117 = load i8, i8* %116, align 1, !mcsema_real_eip !33
  switch i8 %117, label %block_0x265.i [
    i8 35, label %sub_c0.exit.loopexit
    i8 32, label %block_0x2c4.i
  ]

block_0x1a1.i:                                    ; preds = %block_0x18d.i
  %_new_gep_102.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8623.i8, i64 -76
  %118 = bitcast i8* %_new_gep_102.i to i32*
  %119 = load i32, i32* %118, align 4, !mcsema_real_eip !34
  %120 = add i32 %119, -119
  %121 = icmp eq i32 %120, 0, !mcsema_real_eip !35
  %_new_gep_105.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8623.i8, i64 -96
  %122 = bitcast i8* %_new_gep_105.i to i32*
  store i32 %120, i32* %122, align 4, !mcsema_real_eip !36
  br i1 %121, label %block_0x1b5.i, label %block_0x1f5.i, !mcsema_real_eip !37

block_0x1d5.i:                                    ; preds = %block_0x165.i
  %_new_gep_107.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9530.i17, i64 -20
  %123 = bitcast i8* %_new_gep_107.i to i32*
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !38
  %uadd89.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %124, i32 -1)
  br label %block_0x201.i, !mcsema_real_eip !39

block_0x1f5.i:                                    ; preds = %block_0x179.i, %block_0x1a1.i
  %125 = zext i32 %86 to i64, !mcsema_real_eip !17
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12124.i9 = load i8*, i8** %75, align 8
  br label %sub_c0.exit, !mcsema_real_eip !40

block_0x179.i:                                    ; preds = %block_0x165.i
  %_new_gep_124.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9530.i17, i64 -76
  %126 = bitcast i8* %_new_gep_124.i to i32*
  %127 = load i32, i32* %126, align 4, !mcsema_real_eip !41
  %128 = add i32 %127, -100
  %129 = icmp eq i32 %128, 0, !mcsema_real_eip !42
  %_new_gep_127.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9530.i17, i64 -88
  %130 = bitcast i8* %_new_gep_127.i to i32*
  store i32 %128, i32* %130, align 4, !mcsema_real_eip !43
  br i1 %129, label %block_0x1e5.i, label %block_0x1f5.i, !mcsema_real_eip !44

block_0x265.i:                                    ; preds = %block_0x201.i
  %notlhs.i = icmp ne i32 %111, 2
  %notrhs.i = icmp ne i8 %117, 124
  %or.cond.not.i = or i1 %notlhs.i, %notrhs.i
  %131 = icmp slt i32 %108, 1
  %or.cond5.i = or i1 %131, %or.cond.not.i
  br i1 %or.cond5.i, label %block_0x2b8.i, label %block_0x2ab.i, !mcsema_real_eip !45

block_0x2c4.i:                                    ; preds = %block_0x2ab.i, %block_0x2b8.i, %block_0x201.i
  %132 = phi i32 [ %108, %block_0x201.i ], [ %108, %block_0x2ab.i ], [ %.pre.i, %block_0x2b8.i ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13227.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9626.i12, %block_0x201.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9626.i12, %block_0x2ab.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13227.pre.i16, %block_0x2b8.i ]
  %_new_gep_133.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13227.i, i64 -28
  %133 = bitcast i8* %_new_gep_133.i to i32*
  %134 = load i32, i32* %133, align 4, !mcsema_real_eip !46
  %135 = icmp eq i32 %134, %132
  br i1 %135, label %block_0x2d0.i, label %block_0x2c4.block_0x2e8_crit_edge.i, !mcsema_real_eip !47

block_0x2c4.block_0x2e8_crit_edge.i:              ; preds = %block_0x2c4.i
  %_new_gep_160.phi.trans.insert.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13227.i, i64 -24
  %.phi.trans.insert84.i = bitcast i8* %_new_gep_160.phi.trans.insert.i to i32*
  %.pre85.i = load i32, i32* %.phi.trans.insert84.i, align 4
  br label %block_0x2e8.i

block_0x1b5.i:                                    ; preds = %block_0x1a1.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13825.i11 = load i8*, i8** %75, align 8
  %_new_gep_139.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13825.i11, i64 -24
  %136 = bitcast i8* %_new_gep_139.i to i32*
  %137 = load i32, i32* %136, align 4, !mcsema_real_eip !48
  %uadd91.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %137, i32 -1)
  br label %block_0x201.i, !mcsema_real_eip !49

block_0x1e5.i:                                    ; preds = %block_0x179.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14431.i18 = load i8*, i8** %75, align 8
  %_new_gep_145.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14431.i18, i64 -20
  %138 = bitcast i8* %_new_gep_145.i to i32*
  %139 = load i32, i32* %138, align 4, !mcsema_real_eip !50
  %uadd74.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %139, i32 1)
  br label %block_0x201.i, !mcsema_real_eip !51

block_0x2d0.i:                                    ; preds = %block_0x2c4.i
  %_new_gep_151.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13227.i, i64 -32
  %140 = bitcast i8* %_new_gep_151.i to i32*
  %141 = load i32, i32* %140, align 4, !mcsema_real_eip !52
  %_new_gep_154.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13227.i, i64 -24
  %142 = bitcast i8* %_new_gep_154.i to i32*
  %143 = load i32, i32* %142, align 4, !mcsema_real_eip !53
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %block_0x2d0.block_0x320.loopexit_crit_edge.i, label %block_0x2e8.i, !mcsema_real_eip !54

block_0x2e8.i:                                    ; preds = %block_0x2d0.i, %block_0x2c4.block_0x2e8_crit_edge.i
  %145 = phi i32 [ %.pre85.i, %block_0x2c4.block_0x2e8_crit_edge.i ], [ %143, %block_0x2d0.i ]
  %146 = sext i32 %132 to i64, !mcsema_real_eip !55
  %147 = sext i32 %145 to i64, !mcsema_real_eip !56
  %148 = mul nsw i64 %147, 11, !mcsema_real_eip !57
  %149 = add i64 %146, ptrtoint (%0* @data_0x330 to i64)
  %150 = add i64 %149, %148, !mcsema_real_eip !58
  %151 = inttoptr i64 %150 to i8*
  store i8 88, i8* %151, align 1, !mcsema_real_eip !58
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16228.i13 = load i8*, i8** %75, align 8
  %_new_gep_163.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16228.i13, i64 -36
  %152 = bitcast i8* %_new_gep_163.i to i32*
  %153 = load i32, i32* %152, align 4, !mcsema_real_eip !59
  %154 = add i32 %153, 1
  %155 = zext i32 %154 to i64, !mcsema_real_eip !60
  store i32 %154, i32* %152, align 4, !mcsema_real_eip !61
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3917.i14 = load i8*, i8** %75, align 8
  %_new_gep_40.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3917.i14, i64 -36
  %156 = bitcast i8* %_new_gep_40.i to i32*
  %157 = load i32, i32* %156, align 4, !mcsema_real_eip !62
  %158 = add i32 %157, -28
  %159 = icmp slt i32 %158, 0
  %160 = sub i32 27, %157
  %161 = and i32 %160, %157
  %162 = icmp slt i32 %161, 0
  %tmp.i = xor i1 %159, %162
  br i1 %tmp.i, label %block_0x2e8.block_0x13a_crit_edge.i, label %sub_c0.exit.loopexit, !mcsema_real_eip !63

block_0x2e8.block_0x13a_crit_edge.i:              ; preds = %block_0x2e8.i
  %_new_gep_43.phi.trans.insert.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3917.i14, i64 -20
  %.phi.trans.insert86.i = bitcast i8* %_new_gep_43.phi.trans.insert.i to i32*
  %.pre87.i = load i32, i32* %.phi.trans.insert86.i, align 4
  br label %block_0x13a.i

block_0x2b8.i:                                    ; preds = %block_0x2ab.i, %block_0x265.i
  %_new_gep_175.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9626.i12, i64 -28
  %163 = bitcast i8* %_new_gep_175.i to i32*
  %164 = load i32, i32* %163, align 4, !mcsema_real_eip !64
  store i32 %164, i32* %107, align 4, !mcsema_real_eip !65
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18029.i15 = load i8*, i8** %75, align 8
  %_new_gep_181.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18029.i15, i64 -32
  %165 = bitcast i8* %_new_gep_181.i to i32*
  %166 = load i32, i32* %165, align 4, !mcsema_real_eip !66
  %_new_gep_184.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18029.i15, i64 -24
  %167 = bitcast i8* %_new_gep_184.i to i32*
  store i32 %166, i32* %167, align 4, !mcsema_real_eip !67
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13227.pre.i16 = load i8*, i8** %75, align 8
  %_new_gep_136.phi.trans.insert.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13227.pre.i16, i64 -20
  %.phi.trans.insert.i = bitcast i8* %_new_gep_136.phi.trans.insert.i to i32*
  %.pre.i = load i32, i32* %.phi.trans.insert.i, align 4
  br label %block_0x2c4.i, !mcsema_real_eip !68

block_0x2ab.i:                                    ; preds = %block_0x265.i
  %168 = add i32 %108, -11
  %169 = icmp slt i32 %168, 0
  %170 = sub i32 10, %108
  %171 = and i32 %170, %108
  %172 = icmp slt i32 %171, 0
  %173 = xor i1 %169, %172
  br i1 %173, label %block_0x2c4.i, label %block_0x2b8.i, !mcsema_real_eip !69

sub_c0.exit.loopexit:                             ; preds = %block_0x2e8.i, %block_0x201.i
  %_load_rbp_ptr_132.sink.i.ph = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9626.i12, %block_0x201.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3917.i14, %block_0x2e8.i ]
  %.sink.i.ph = phi i32 [ 0, %block_0x201.i ], [ 1, %block_0x2e8.i ]
  %RSI_val.1.i.ph = phi i64 [ 35, %block_0x201.i ], [ %155, %block_0x2e8.i ]
  %RDX_val.1.i.ph = phi i64 [ %113, %block_0x201.i ], [ %148, %block_0x2e8.i ]
  %RCX_val.1.i.ph = phi i64 [ %109, %block_0x201.i ], [ %146, %block_0x2e8.i ]
  br label %sub_c0.exit

sub_c0.exit:                                      ; preds = %sub_c0.exit.loopexit, %block_0x2d0.block_0x320.loopexit_crit_edge.i, %block_0x1f5.i
  %_load_rbp_ptr_132.sink.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12124.i9, %block_0x1f5.i ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13227.i, %block_0x2d0.block_0x320.loopexit_crit_edge.i ], [ %_load_rbp_ptr_132.sink.i.ph, %sub_c0.exit.loopexit ]
  %.sink.i = phi i32 [ 1, %block_0x1f5.i ], [ 2, %block_0x2d0.block_0x320.loopexit_crit_edge.i ], [ %.sink.i.ph, %sub_c0.exit.loopexit ]
  %RSI_val.1.i = phi i64 [ %RSI_val.037.i, %block_0x1f5.i ], [ %97, %block_0x2d0.block_0x320.loopexit_crit_edge.i ], [ %RSI_val.1.i.ph, %sub_c0.exit.loopexit ]
  %RDX_val.1.i = phi i64 [ %125, %block_0x1f5.i ], [ %113, %block_0x2d0.block_0x320.loopexit_crit_edge.i ], [ %RDX_val.1.i.ph, %sub_c0.exit.loopexit ]
  %RCX_val.1.i = phi i64 [ %83, %block_0x1f5.i ], [ %109, %block_0x2d0.block_0x320.loopexit_crit_edge.i ], [ %RCX_val.1.i.ph, %sub_c0.exit.loopexit ]
  %_new_gep_187.i = getelementptr i8, i8* %_load_rbp_ptr_132.sink.i, i64 -4
  %174 = bitcast i8* %_new_gep_187.i to i32*
  store i32 %.sink.i, i32* %174, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7218.i10 = load i8*, i8** %75, align 8
  %_new_gep_73.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7218.i10, i64 -4
  %175 = bitcast i8* %_new_gep_73.i to i32*
  %176 = load i32, i32* %175, align 4, !mcsema_real_eip !70
  %177 = zext i32 %176 to i64, !mcsema_real_eip !70
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_758.i = load i64, i64* %_RSP_ptr_.sroa.0.i, align 8
  %uadd73.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_758.i, i64 96)
  %178 = extractvalue { i64, i1 } %uadd73.i, 0
  %179 = xor i64 %178, %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_758.i, !mcsema_real_eip !71
  %180 = and i64 %179, 16, !mcsema_real_eip !71
  %181 = icmp ne i64 %180, 0, !mcsema_real_eip !71
  %182 = icmp slt i64 %178, 0
  %183 = icmp eq i64 %178, 0, !mcsema_real_eip !71
  %184 = xor i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_758.i, -9223372036854775808, !mcsema_real_eip !71
  %185 = and i64 %179, %184, !mcsema_real_eip !71
  %186 = icmp slt i64 %185, 0
  %187 = trunc i64 %178 to i8, !mcsema_real_eip !71
  %188 = tail call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !71
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  %191 = extractvalue { i64, i1 } %uadd73.i, 1
  store volatile i64 %178, i64* %_RSP_ptr_.sroa.0.i, align 8
  %192 = inttoptr i64 %178 to i64*, !mcsema_real_eip !72
  %193 = load i64, i64* %192, align 8
  store volatile i64 %193, i64* %_RBP_ptr_.sroa.0.i, align 8
  %194 = add i64 %178, 16, !mcsema_real_eip !73
  store volatile i64 %194, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %177, i64* %RAX.i, align 8, !mcsema_real_eip !73
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !73
  store i64 %RCX_val.1.i, i64* %RCX.i, align 8, !mcsema_real_eip !73
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !73
  store i64 %RSI_val.1.i, i64* %RSI.i, align 8, !mcsema_real_eip !73
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !73
  store volatile i64 %194, i64* %RSP.i, align 8
  store volatile i64 %193, i64* %RBP.i, align 8
  %195 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 add (i64 ptrtoint (%0* @data_0x330 to i64), i64 11), i64 11>, <2 x i64>* %195, align 8
  %196 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %196, align 8
  %197 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %197, align 8
  %198 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %198, align 8
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !73
  store i1 %191, i1* %CF.i, align 1, !mcsema_real_eip !73
  store i1 %190, i1* %PF.i, align 1, !mcsema_real_eip !73
  store i1 %181, i1* %AF.i, align 1, !mcsema_real_eip !73
  store i1 %183, i1* %ZF.i, align 1, !mcsema_real_eip !73
  store i1 %182, i1* %SF.i, align 1, !mcsema_real_eip !73
  store i1 %186, i1* %OF.i, align 1, !mcsema_real_eip !73
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
  %199 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %64, <2 x i64>* %199, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 104, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
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
!2 = !{i64 192}
!3 = !{i64 229}
!4 = !{i64 236}
!5 = !{i64 239}
!6 = !{i64 243}
!7 = !{i64 250}
!8 = !{i64 257}
!9 = !{i64 282}
!10 = !{i64 292}
!11 = !{i64 297}
!12 = !{i64 317}
!13 = !{i64 320}
!14 = !{i64 323}
!15 = !{i64 326}
!16 = !{i64 330}
!17 = !{i64 337}
!18 = !{i64 340}
!19 = !{i64 343}
!20 = !{i64 397}
!21 = !{i64 346}
!22 = !{i64 400}
!23 = !{i64 403}
!24 = !{i64 406}
!25 = !{i64 453}
!26 = !{i64 464}
!27 = !{i64 360}
!28 = !{i64 363}
!29 = !{i64 366}
!30 = !{i64 523}
!31 = !{i64 527}
!32 = !{i64 531}
!33 = !{i64 541}
!34 = !{i64 417}
!35 = !{i64 420}
!36 = !{i64 423}
!37 = !{i64 426}
!38 = !{i64 469}
!39 = !{i64 480}
!40 = !{i64 508}
!41 = !{i64 377}
!42 = !{i64 380}
!43 = !{i64 383}
!44 = !{i64 386}
!45 = !{i64 620}
!46 = !{i64 708}
!47 = !{i64 714}
!48 = !{i64 437}
!49 = !{i64 448}
!50 = !{i64 485}
!51 = !{i64 496}
!52 = !{i64 720}
!53 = !{i64 723}
!54 = !{i64 726}
!55 = !{i64 754}
!56 = !{i64 758}
!57 = !{i64 762}
!58 = !{i64 772}
!59 = !{i64 776}
!60 = !{i64 779}
!61 = !{i64 785}
!62 = !{i64 301}
!63 = !{i64 308}
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
