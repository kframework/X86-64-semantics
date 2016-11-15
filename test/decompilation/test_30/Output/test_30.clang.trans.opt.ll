; ModuleID = 'Output/test_30.clang.trans.opt.bc'
source_filename = "Output/test_30.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [4 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@stderr = external local_unnamed_addr global [8 x i8]
@data_0x36 = internal constant %0 <{ [4 x i8] c"%s\0A\00" }>, align 64

declare x86_64_sysvcc i64 @fprintf(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_1.i = alloca [24 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [24 x i8], [24 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [24 x i8], [24 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 24
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %4 = load i64, i64* %RDI.i, align 8
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %5 = bitcast i64* %R8.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %7 = bitcast i64* %R10.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %9 = bitcast i64* %R12.i to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %11 = bitcast i64* %R14.i to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %13 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %14 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %19 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %32 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %33 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %43 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %44 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %45 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %46 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %47 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %64 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %65 = load <2 x i64>, <2 x i64>* %64, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [24 x i8], [24 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 16
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2.i, i64* %_allin_new_bt_.i, align 8
  %66 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %66, i64* %_RBP_ptr_.sroa.0.i, align 8
  %67 = ptrtoint [24 x i8]* %_local_stack_start_ptr_1.i to i64
  store volatile i64 %67, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_11.i = getelementptr inbounds [24 x i8], [24 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 8
  %_allin_new_bt_12.i = bitcast i8* %_new_gep_11.i to i64*
  store i64 %4, i64* %_allin_new_bt_12.i, align 8, !mcsema_real_eip !3
  %68 = load i64, i64* bitcast ([8 x i8]* @stderr to i64*), align 8, !mcsema_real_eip !4
  %69 = tail call x86_64_sysvcc i64 @fprintf(i64 %68, i64 ptrtoint (%0* @data_0x36 to i64), i64 %4), !mcsema_real_eip !5
  %_new_gep_17.i = getelementptr inbounds [24 x i8], [24 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 4
  %70 = trunc i64 %69 to i32, !mcsema_real_eip !6
  %71 = bitcast i8* %_new_gep_17.i to i32*
  store i32 %70, i32* %71, align 4, !mcsema_real_eip !6
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %67, i64 16)
  %72 = extractvalue { i64, i1 } %uadd.i, 0
  %73 = xor i64 %72, %67, !mcsema_real_eip !7
  %74 = and i64 %73, 16
  %75 = icmp eq i64 %74, 0
  %76 = icmp slt i64 %72, 0
  %77 = icmp eq i64 %72, 0, !mcsema_real_eip !7
  %78 = xor i64 %67, -9223372036854775808, !mcsema_real_eip !7
  %79 = and i64 %73, %78, !mcsema_real_eip !7
  %80 = icmp slt i64 %79, 0
  %81 = trunc i64 %72 to i8, !mcsema_real_eip !7
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !7
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i64, i1 } %uadd.i, 1
  store volatile i64 %72, i64* %_RSP_ptr_.sroa.0.i, align 8
  %86 = inttoptr i64 %72 to i64*, !mcsema_real_eip !8
  %87 = load i64, i64* %86, align 8
  store volatile i64 %87, i64* %_RBP_ptr_.sroa.0.i, align 8
  %88 = add i64 %72, 16, !mcsema_real_eip !9
  store volatile i64 %88, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !9
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !9
  store i64 0, i64* %RCX.i, align 8, !mcsema_real_eip !9
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !9
  store i64 ptrtoint (%0* @data_0x36 to i64), i64* %RSI.i, align 8, !mcsema_real_eip !9
  store i64 %68, i64* %RDI.i, align 8, !mcsema_real_eip !9
  store volatile i64 %88, i64* %RSP.i, align 8
  store volatile i64 %87, i64* %RBP.i, align 8
  %89 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %89, align 8
  %90 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %90, align 8
  %91 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %92, align 8
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !9
  store i1 %85, i1* %CF.i, align 1, !mcsema_real_eip !9
  store i1 %84, i1* %PF.i, align 1, !mcsema_real_eip !9
  store i1 %75, i1* %AF.i, align 1, !mcsema_real_eip !9
  store i1 %77, i1* %ZF.i, align 1, !mcsema_real_eip !9
  store i1 %76, i1* %SF.i, align 1, !mcsema_real_eip !9
  store i1 %80, i1* %OF.i, align 1, !mcsema_real_eip !9
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !9
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !9
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !9
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !9
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !9
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !9
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !9
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !9
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !9
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !9
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !9
  store i11 %47, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !9
  store i128 %48, i128* %XMM0.i, align 1, !mcsema_real_eip !9
  store i128 %49, i128* %XMM1.i, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM2.i, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM3.i, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM4.i, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM5.i, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM6.i, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM7.i, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM8.i, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM9.i, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM10.i, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM11.i, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM12.i, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM13.i, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM14.i, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM15.i, align 1, !mcsema_real_eip !9
  %93 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %65, <2 x i64>* %93, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1)
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
!3 = !{i64 18}
!4 = !{i64 22}
!5 = !{i64 36}
!6 = !{i64 43}
!7 = !{i64 48}
!8 = !{i64 52}
!9 = !{i64 53}
