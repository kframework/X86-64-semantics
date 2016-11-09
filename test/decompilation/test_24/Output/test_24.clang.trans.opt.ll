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
  %_local_stack_start_ptr_6.i = alloca [88 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 88, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 88
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
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 80
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7.i, i64* %_allin_new_bt_.i, align 8
  %68 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %68, i64* %_RBP_ptr_.sroa.0.i, align 8
  %69 = ptrtoint [88 x i8]* %_local_stack_start_ptr_6.i to i64
  store volatile i64 %69, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_11.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 64
  %_allin_new_bt_12.i = bitcast i8* %_new_gep_11.i to i64*
  store i64 %6, i64* %_allin_new_bt_12.i, align 8, !mcsema_real_eip !3
  %70 = tail call x86_64_sysvcc i64 @strlen(i64 %6), !mcsema_real_eip !4
  %71 = and i64 %70, 4294967295
  %_new_gep_17.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 48
  %72 = trunc i64 %70 to i32
  %73 = bitcast i8* %_new_gep_17.i to i32*
  store i32 %72, i32* %73, align 4, !mcsema_real_eip !5
  %74 = icmp eq i32 %72, 37
  br i1 %74, label %block_0x32.i, label %sub_0.exit, !mcsema_real_eip !6

block_0x32.i:                                     ; preds = %driverBlockRaw
  %75 = add i64 %6, 4
  store i64 %75, i64* %_allin_new_bt_12.i, align 8, !mcsema_real_eip !7
  %76 = inttoptr i64 %75 to i8*
  %77 = load i8, i8* %76, align 1, !mcsema_real_eip !8
  %78 = sext i8 %77 to i64
  %79 = and i64 %78, 4294967295
  %80 = icmp eq i8 %77, 100
  br i1 %80, label %block_0x5f.i, label %sub_0.exit, !mcsema_real_eip !9

block_0x5f.i:                                     ; preds = %block_0x32.i
  %81 = add i64 %6, 5, !mcsema_real_eip !10
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8, i8* %82, align 1, !mcsema_real_eip !10
  %84 = zext i8 %83 to i64
  %85 = tail call x86_64_sysvcc i64 @to_byte(i64 %84), !mcsema_real_eip !11
  %86 = trunc i64 %85 to i32, !mcsema_real_eip !12
  %87 = icmp eq i32 %86, 9
  br i1 %87, label %block_0x83.i, label %sub_0.exit, !mcsema_real_eip !13

block_0x83.i:                                     ; preds = %block_0x5f.i
  %88 = add i64 %6, 6, !mcsema_real_eip !14
  %89 = inttoptr i64 %88 to i8*
  %90 = load i8, i8* %89, align 1, !mcsema_real_eip !14
  %91 = zext i8 %90 to i64
  %92 = tail call x86_64_sysvcc i64 @to_byte(i64 %91), !mcsema_real_eip !15
  %_new_gep_58.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 56
  %93 = trunc i64 %92 to i32
  %94 = bitcast i8* %_new_gep_58.i to i32*
  store i32 %93, i32* %94, align 4, !mcsema_real_eip !16
  %.mask.i = and i32 %93, 2147483647
  %95 = icmp eq i32 %.mask.i, 13
  br i1 %95, label %block_0xb0.i, label %sub_0.exit, !mcsema_real_eip !17

block_0xb0.i:                                     ; preds = %block_0x83.i
  %96 = add i64 %6, 7, !mcsema_real_eip !18
  %97 = inttoptr i64 %96 to i8*
  %98 = load i8, i8* %97, align 1, !mcsema_real_eip !18
  %99 = zext i8 %98 to i64
  %100 = tail call x86_64_sysvcc i64 @to_byte(i64 %99), !mcsema_real_eip !19
  %_new_gep_69.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 52
  %101 = trunc i64 %100 to i32
  %102 = bitcast i8* %_new_gep_69.i to i32*
  store i32 %101, i32* %102, align 4, !mcsema_real_eip !20
  %103 = add i32 %101, 1
  %.lobit.i = ashr i32 %103, 31
  %104 = zext i32 %.lobit.i to i64, !mcsema_real_eip !21
  %105 = shl nuw i64 %104, 32, !mcsema_real_eip !22
  %106 = sext i32 %103 to i64, !mcsema_real_eip !22
  %107 = or i64 %105, %106, !mcsema_real_eip !22
  %108 = sdiv i64 %107, 2, !mcsema_real_eip !22
  %109 = srem i64 %107, 2, !mcsema_real_eip !22
  %110 = and i64 %109, 4294967295
  %111 = trunc i64 %108 to i32, !mcsema_real_eip !23
  %112 = icmp eq i32 %111, 7
  br i1 %112, label %block_0xe7.i, label %sub_0.exit, !mcsema_real_eip !24

block_0xe7.i:                                     ; preds = %block_0xb0.i
  %113 = add i64 %6, 8, !mcsema_real_eip !25
  %114 = inttoptr i64 %113 to i8*
  %115 = load i8, i8* %114, align 1, !mcsema_real_eip !25
  %116 = and i8 %115, 15
  %117 = zext i8 %116 to i64
  %118 = icmp eq i8 %116, 1
  br i1 %118, label %block_0x101.i, label %sub_0.exit, !mcsema_real_eip !26

block_0x101.i:                                    ; preds = %block_0xe7.i
  %119 = and i8 %115, -16
  %120 = zext i8 %119 to i64
  %121 = icmp eq i8 %119, 48
  br i1 %121, label %block_0x11b.i, label %sub_0.exit, !mcsema_real_eip !27

block_0x11b.i:                                    ; preds = %block_0x101.i
  %_new_gep_86.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 60
  %122 = bitcast i8* %_new_gep_86.i to i32*
  store i32 -4, i32* %122, align 4, !mcsema_real_eip !28
  %123 = add i64 %6, 9
  %124 = inttoptr i64 %123 to i8*
  %125 = load i8, i8* %124, align 1, !mcsema_real_eip !29
  %126 = and i8 %125, 15
  %_new_gep_92.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 47
  store i8 %126, i8* %_new_gep_92.i, align 1, !mcsema_real_eip !30
  %127 = load i8, i8* %124, align 1, !mcsema_real_eip !31
  %128 = and i8 %127, -16
  %_new_gep_98.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 46
  store i8 %128, i8* %_new_gep_98.i, align 1, !mcsema_real_eip !32
  %129 = icmp eq i8 %126, 3
  %130 = icmp eq i8 %128, 96
  %or.cond43.i = and i1 %129, %130
  %uadd73.sink.i = select i1 %or.cond43.i, { i32, i1 } { i32 0, i1 true }, { i32, i1 } { i32 1, i1 true }
  %131 = extractvalue { i32, i1 } %uadd73.sink.i, 0
  store i32 %131, i32* %122, align 4
  %132 = add i64 %6, 10, !mcsema_real_eip !33
  %133 = inttoptr i64 %132 to i8*
  %134 = load i8, i8* %133, align 1, !mcsema_real_eip !33
  %135 = zext i8 %134 to i64
  %136 = tail call x86_64_sysvcc i64 @to_byte(i64 %135), !mcsema_real_eip !34
  %_new_gep_116.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 45
  %137 = trunc i64 %136 to i8
  store i8 %137, i8* %_new_gep_116.i, align 1, !mcsema_real_eip !35
  %138 = add i64 %6, 11, !mcsema_real_eip !36
  %139 = inttoptr i64 %138 to i8*
  %140 = load i8, i8* %139, align 1, !mcsema_real_eip !36
  %141 = zext i8 %140 to i64
  %142 = tail call x86_64_sysvcc i64 @to_byte(i64 %141), !mcsema_real_eip !37
  %143 = trunc i64 %136 to i32
  %144 = and i32 %143, 255
  %145 = trunc i64 %142 to i32, !mcsema_real_eip !38
  %146 = or i32 %145, %144, !mcsema_real_eip !38
  %147 = trunc i32 %146 to i8, !mcsema_real_eip !38
  %148 = zext i32 %146 to i64, !mcsema_real_eip !38
  store i8 %147, i8* %_new_gep_116.i, align 1, !mcsema_real_eip !39
  %149 = zext i32 %131 to i64, !mcsema_real_eip !40
  %150 = and i32 %131, 31, !mcsema_real_eip !41
  %151 = add i32 %131, -1
  %152 = icmp ne i32 %150, 0, !mcsema_real_eip !41
  %153 = select i1 %152, i32 %151, i32 0, !mcsema_real_eip !41
  %154 = zext i1 %152 to i32
  %155 = shl i32 %131, %153, !mcsema_real_eip !41
  %156 = shl i32 %155, %154
  store i32 %156, i32* %122, align 4, !mcsema_real_eip !42
  %157 = icmp eq i32 %156, 0, !mcsema_real_eip !43
  br i1 %157, label %block_0x206.i, label %sub_0.exit, !mcsema_real_eip !44

block_0x206.i:                                    ; preds = %block_0x11b.i
  %158 = add i64 %6, 12
  %159 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %158, i64 4), !mcsema_real_eip !45
  %160 = and i64 %159, 65535
  %161 = and i64 %149, 4294901760, !mcsema_real_eip !46
  %162 = or i64 %160, %161
  %_new_gep_155.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 42
  %163 = trunc i64 %159 to i16
  %164 = bitcast i8* %_new_gep_155.i to i16*
  store i16 %163, i16* %164, align 2, !mcsema_real_eip !47
  %165 = trunc i64 %159 to i32
  %166 = and i32 %165, 65535
  %167 = or i32 %166, 21845, !mcsema_real_eip !48
  %168 = icmp eq i32 %167, 56663
  %169 = or i32 %166, 43690
  %170 = icmp eq i32 %169, 65211
  %or.cond.i = and i1 %168, %170
  %.sink4.i = select i1 %or.cond.i, i32 43690, i32 48059
  %171 = add i64 %6, 16
  %172 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %171, i64 8), !mcsema_real_eip !49
  %_new_gep_170.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 36
  %173 = trunc i64 %172 to i32
  %174 = bitcast i8* %_new_gep_170.i to i32*
  store i32 %173, i32* %174, align 4, !mcsema_real_eip !50
  %175 = xor i32 %173, -1534560611
  %_new_gep_176.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 32
  %176 = bitcast i8* %_new_gep_176.i to i32*
  store i32 %175, i32* %176, align 4, !mcsema_real_eip !51
  %177 = lshr i32 %175, 16
  %_new_gep_182.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 28
  %178 = bitcast i8* %_new_gep_182.i to i32*
  store i32 %177, i32* %178, align 4, !mcsema_real_eip !52
  %179 = and i32 %175, 65535, !mcsema_real_eip !53
  %_new_gep_188.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 24
  %180 = bitcast i8* %_new_gep_188.i to i32*
  store i32 %179, i32* %180, align 4, !mcsema_real_eip !54
  %181 = icmp eq i32 %177, 79
  %182 = icmp eq i32 %179, %.sink4.i
  %or.cond44.i = and i1 %181, %182
  %storemerge.i = select i1 %or.cond44.i, i32 0, i32 48351
  store i32 %storemerge.i, i32* %122, align 4
  %183 = zext i32 %storemerge.i to i64
  %184 = add i64 %6, 24
  %185 = tail call x86_64_sysvcc i64 @read_bytes(i64 %183, i64 %184, i64 8), !mcsema_real_eip !55
  %_new_gep_212.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 20
  %186 = trunc i64 %185 to i32
  %187 = bitcast i8* %_new_gep_212.i to i32*
  %188 = add i32 %186, -3
  store i32 %188, i32* %187, align 4, !mcsema_real_eip !56
  %189 = and i32 %188, 7, !mcsema_real_eip !57
  %190 = icmp eq i32 %189, 0, !mcsema_real_eip !57
  br i1 %190, label %block_0x315.i, label %sub_0.exit, !mcsema_real_eip !58

block_0x315.i:                                    ; preds = %block_0x206.i
  %191 = add i32 %186, 2147483645
  store i32 %191, i32* %187, align 4, !mcsema_real_eip !59
  %192 = icmp ult i32 %191, 268435456
  br i1 %192, label %block_0x339.i, label %sub_0.exit, !mcsema_real_eip !60

block_0x339.i:                                    ; preds = %block_0x315.i
  %193 = lshr i32 %191, 4
  %194 = xor i32 %193, 851968
  %195 = add nsw i32 %194, -226
  %_new_gep_262.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 12
  %196 = bitcast i8* %_new_gep_262.i to i32*
  store i32 10000, i32* %196, align 4, !mcsema_real_eip !61
  %197 = sext i32 %195 to i64
  %198 = udiv i64 %197, 10000, !mcsema_real_eip !62
  %199 = urem i64 %197, 10000, !mcsema_real_eip !62
  %200 = and i64 %199, 16383
  %201 = trunc i64 %198 to i32
  store i32 %201, i32* %187, align 4, !mcsema_real_eip !63
  %202 = icmp eq i32 %201, 3
  br i1 %202, label %block_0x389.i, label %sub_0.exit, !mcsema_real_eip !64

block_0x389.i:                                    ; preds = %block_0x339.i
  %203 = add i64 %6, 32
  %204 = tail call x86_64_sysvcc i64 @read_bytes(i64 %183, i64 %203, i64 4), !mcsema_real_eip !65
  %_new_gep_286.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 16
  %205 = trunc i64 %204 to i32, !mcsema_real_eip !66
  %206 = bitcast i8* %_new_gep_286.i to i32*
  store i32 %205, i32* %206, align 4, !mcsema_real_eip !66
  %207 = inttoptr i64 %203 to i8*
  %208 = load i8, i8* %207, align 1, !mcsema_real_eip !67
  %209 = sext i8 %208 to i64
  %210 = icmp eq i8 %208, 100
  %211 = add i64 %6, 33
  %212 = inttoptr i64 %211 to i8*
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i64
  %215 = icmp eq i8 %213, 100
  %or.cond11.i = and i1 %210, %215
  br i1 %or.cond11.i, label %block_0x3cd.i, label %block_0x3dd.i, !mcsema_real_eip !68

block_0x3dd.i:                                    ; preds = %block_0x389.i
  %216 = icmp eq i8 %208, %213
  br i1 %216, label %block_0x3f5.i, label %block_0x45c.i, !mcsema_real_eip !69

block_0x3f5.i:                                    ; preds = %block_0x3dd.i
  %217 = add i64 %6, 35
  %218 = inttoptr i64 %217 to i8*
  %219 = load i8, i8* %218, align 1, !mcsema_real_eip !70
  %220 = sext i8 %219 to i32, !mcsema_real_eip !70
  %221 = add i64 %6, 34, !mcsema_real_eip !71
  %222 = inttoptr i64 %221 to i8*
  %223 = load i8, i8* %222, align 1, !mcsema_real_eip !71
  %224 = sext i8 %223 to i32, !mcsema_real_eip !71
  %225 = zext i32 %224 to i64, !mcsema_real_eip !71
  %226 = add nuw nsw i32 %storemerge.i, 15
  %227 = sub nsw i32 %226, %220
  %228 = add nsw i32 %227, %224
  store i32 %228, i32* %122, align 4, !mcsema_real_eip !72
  %229 = load i8, i8* %207, align 1, !mcsema_real_eip !73
  %230 = zext i8 %229 to i64
  %231 = tail call x86_64_sysvcc i64 @to_byte(i64 %230), !mcsema_real_eip !74
  %232 = trunc i64 %231 to i32, !mcsema_real_eip !75
  %233 = sub i32 %228, %232
  %234 = zext i32 %233 to i64, !mcsema_real_eip !75
  store i32 %233, i32* %122, align 4, !mcsema_real_eip !76
  %235 = icmp eq i32 %233, 0, !mcsema_real_eip !77
  br i1 %235, label %block_0x438.i, label %sub_0.exit, !mcsema_real_eip !78

block_0x45c.i:                                    ; preds = %block_0x3dd.i
  %236 = and i64 %214, 4294967295
  %237 = and i64 %209, 4294967295
  store i32 %205, i32* %122, align 4, !mcsema_real_eip !79
  br label %sub_0.exit, !mcsema_real_eip !80

block_0x3cd.i:                                    ; preds = %block_0x389.i
  %238 = xor i32 %205, %storemerge.i, !mcsema_real_eip !81
  %239 = zext i32 %238 to i64, !mcsema_real_eip !81
  store i32 %238, i32* %122, align 4, !mcsema_real_eip !82
  br label %sub_0.exit, !mcsema_real_eip !83

block_0x438.i:                                    ; preds = %block_0x3f5.i
  %240 = load i8, i8* %218, align 1, !mcsema_real_eip !84
  %241 = zext i8 %240 to i64
  %242 = tail call x86_64_sysvcc i64 @to_byte(i64 %241), !mcsema_real_eip !85
  %243 = trunc i64 %242 to i32, !mcsema_real_eip !86
  %244 = icmp eq i32 %243, 4
  br i1 %244, label %sub_0.exit, label %block_0x450.i, !mcsema_real_eip !87

block_0x450.i:                                    ; preds = %block_0x438.i
  store i32 -32, i32* %122, align 4, !mcsema_real_eip !88
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %driverBlockRaw, %block_0x32.i, %block_0x5f.i, %block_0x83.i, %block_0xb0.i, %block_0xe7.i, %block_0x101.i, %block_0x11b.i, %block_0x206.i, %block_0x315.i, %block_0x339.i, %block_0x3f5.i, %block_0x45c.i, %block_0x3cd.i, %block_0x438.i, %block_0x450.i
  %.sink.i = phi i32 [ -2, %block_0x32.i ], [ -3, %block_0x5f.i ], [ -4, %block_0x83.i ], [ -5, %block_0xb0.i ], [ -6, %block_0x101.i ], [ -6, %block_0xe7.i ], [ -7, %block_0x11b.i ], [ -21, %block_0x206.i ], [ -22, %block_0x315.i ], [ %201, %block_0x339.i ], [ %72, %driverBlockRaw ], [ %238, %block_0x3cd.i ], [ 0, %block_0x438.i ], [ -32, %block_0x450.i ], [ %233, %block_0x3f5.i ], [ %205, %block_0x45c.i ]
  %RDI_val.0.i = phi i64 [ %6, %block_0x32.i ], [ %84, %block_0x5f.i ], [ %91, %block_0x83.i ], [ 2, %block_0xb0.i ], [ 2, %block_0x101.i ], [ 2, %block_0xe7.i ], [ %148, %block_0x11b.i ], [ %183, %block_0x206.i ], [ %183, %block_0x315.i ], [ %183, %block_0x339.i ], [ %6, %driverBlockRaw ], [ %183, %block_0x3cd.i ], [ %241, %block_0x438.i ], [ %241, %block_0x450.i ], [ %230, %block_0x3f5.i ], [ %183, %block_0x45c.i ]
  %RSI_val.0.i = phi i64 [ %5, %block_0x32.i ], [ %5, %block_0x5f.i ], [ %5, %block_0x83.i ], [ %5, %block_0xb0.i ], [ %5, %block_0x101.i ], [ %5, %block_0xe7.i ], [ %5, %block_0x11b.i ], [ %184, %block_0x206.i ], [ %184, %block_0x315.i ], [ %184, %block_0x339.i ], [ %5, %driverBlockRaw ], [ %75, %block_0x3cd.i ], [ %225, %block_0x438.i ], [ %225, %block_0x450.i ], [ %225, %block_0x3f5.i ], [ %75, %block_0x45c.i ]
  %RDX_val.0.i = phi i64 [ %4, %block_0x32.i ], [ %4, %block_0x5f.i ], [ %4, %block_0x83.i ], [ %110, %block_0xb0.i ], [ %110, %block_0x101.i ], [ %110, %block_0xe7.i ], [ %75, %block_0x11b.i ], [ 8, %block_0x206.i ], [ 8, %block_0x315.i ], [ %200, %block_0x339.i ], [ %4, %driverBlockRaw ], [ 4, %block_0x3cd.i ], [ %234, %block_0x438.i ], [ %234, %block_0x450.i ], [ %234, %block_0x3f5.i ], [ %236, %block_0x45c.i ]
  %RCX_val.0.i = phi i64 [ %79, %block_0x32.i ], [ %79, %block_0x5f.i ], [ %79, %block_0x83.i ], [ %79, %block_0xb0.i ], [ %120, %block_0x101.i ], [ %117, %block_0xe7.i ], [ %149, %block_0x11b.i ], [ %162, %block_0x206.i ], [ %162, %block_0x315.i ], [ 10000, %block_0x339.i ], [ %71, %driverBlockRaw ], [ %239, %block_0x3cd.i ], [ %75, %block_0x438.i ], [ %75, %block_0x450.i ], [ %75, %block_0x3f5.i ], [ %237, %block_0x45c.i ]
  %_new_gep_346.i = getelementptr inbounds [88 x i8], [88 x i8]* %_local_stack_start_ptr_6.i, i64 0, i64 76
  %245 = bitcast i8* %_new_gep_346.i to i32*
  store i32 %.sink.i, i32* %245, align 4
  %246 = zext i32 %.sink.i to i64, !mcsema_real_eip !89
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %69, i64 80)
  %247 = extractvalue { i64, i1 } %uadd.i, 0
  %248 = xor i64 %247, %69, !mcsema_real_eip !90
  %249 = and i64 %248, 16
  %250 = icmp eq i64 %249, 0
  %251 = icmp slt i64 %247, 0
  %252 = icmp eq i64 %247, 0, !mcsema_real_eip !90
  %253 = xor i64 %69, -9223372036854775808, !mcsema_real_eip !90
  %254 = and i64 %248, %253, !mcsema_real_eip !90
  %255 = icmp slt i64 %254, 0
  %256 = trunc i64 %247 to i8, !mcsema_real_eip !90
  %257 = tail call i8 @llvm.ctpop.i8(i8 %256), !mcsema_real_eip !90
  %258 = and i8 %257, 1
  %259 = icmp eq i8 %258, 0
  %260 = extractvalue { i64, i1 } %uadd.i, 1
  store volatile i64 %247, i64* %_RSP_ptr_.sroa.0.i, align 8
  %261 = inttoptr i64 %247 to i64*, !mcsema_real_eip !91
  %262 = load i64, i64* %261, align 8
  store volatile i64 %262, i64* %_RBP_ptr_.sroa.0.i, align 8
  %263 = add i64 %247, 16, !mcsema_real_eip !92
  store volatile i64 %263, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %246, i64* %RAX.i, align 8, !mcsema_real_eip !92
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !92
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !92
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !92
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !92
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !92
  store volatile i64 %263, i64* %RSP.i, align 8
  store volatile i64 %262, i64* %RBP.i, align 8
  %264 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %264, align 8
  %265 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %265, align 8
  %266 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %266, align 8
  %267 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %267, align 8
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !92
  store i1 %260, i1* %CF.i, align 1, !mcsema_real_eip !92
  store i1 %259, i1* %PF.i, align 1, !mcsema_real_eip !92
  store i1 %250, i1* %AF.i, align 1, !mcsema_real_eip !92
  store i1 %252, i1* %ZF.i, align 1, !mcsema_real_eip !92
  store i1 %251, i1* %SF.i, align 1, !mcsema_real_eip !92
  store i1 %255, i1* %OF.i, align 1, !mcsema_real_eip !92
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !92
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !92
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !92
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !92
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !92
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !92
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !92
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !92
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !92
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !92
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !92
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !92
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !92
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !92
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !92
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !92
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !92
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !92
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !92
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !92
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !92
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !92
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !92
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !92
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !92
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !92
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !92
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !92
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !92
  store i11 %49, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !92
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !92
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !92
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !92
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !92
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !92
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !92
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !92
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !92
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !92
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !92
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !92
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !92
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !92
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !92
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !92
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !92
  %268 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %268, align 1
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
!4 = !{i64 16}
!5 = !{i64 23}
!6 = !{i64 33}
!7 = !{i64 60}
!8 = !{i64 68}
!9 = !{i64 77}
!10 = !{i64 99}
!11 = !{i64 103}
!12 = !{i64 108}
!13 = !{i64 113}
!14 = !{i64 135}
!15 = !{i64 139}
!16 = !{i64 144}
!17 = !{i64 158}
!18 = !{i64 180}
!19 = !{i64 184}
!20 = !{i64 194}
!21 = !{i64 205}
!22 = !{i64 206}
!23 = !{i64 208}
!24 = !{i64 213}
!25 = !{i64 235}
!26 = !{i64 251}
!27 = !{i64 277}
!28 = !{i64 283}
!29 = !{i64 311}
!30 = !{i64 323}
!31 = !{i64 330}
!32 = !{i64 342}
!33 = !{i64 407}
!34 = !{i64 411}
!35 = !{i64 418}
!36 = !{i64 425}
!37 = !{i64 429}
!38 = !{i64 438}
!39 = !{i64 443}
!40 = !{i64 482}
!41 = !{i64 488}
!42 = !{i64 490}
!43 = !{i64 493}
!44 = !{i64 500}
!45 = !{i64 541}
!46 = !{i64 546}
!47 = !{i64 549}
!48 = !{i64 557}
!49 = !{i64 635}
!50 = !{i64 640}
!51 = !{i64 651}
!52 = !{i64 660}
!53 = !{i64 666}
!54 = !{i64 671}
!55 = !{i64 739}
!56 = !{i64 755}
!57 = !{i64 761}
!58 = !{i64 771}
!59 = !{i64 797}
!60 = !{i64 807}
!61 = !{i64 866}
!62 = !{i64 876}
!63 = !{i64 878}
!64 = !{i64 888}
!65 = !{i64 926}
!66 = !{i64 931}
!67 = !{i64 938}
!68 = !{i64 947}
!69 = !{i64 1007}
!70 = !{i64 1022}
!71 = !{i64 1030}
!72 = !{i64 1043}
!73 = !{i64 1050}
!74 = !{i64 1054}
!75 = !{i64 1062}
!76 = !{i64 1064}
!77 = !{i64 1067}
!78 = !{i64 1074}
!79 = !{i64 1119}
!80 = !{i64 1013}
!81 = !{i64 979}
!82 = !{i64 981}
!83 = !{i64 984}
!84 = !{i64 1084}
!85 = !{i64 1088}
!86 = !{i64 1093}
!87 = !{i64 1098}
!88 = !{i64 1104}
!89 = !{i64 1133}
!90 = !{i64 1136}
!91 = !{i64 1140}
!92 = !{i64 1141}
