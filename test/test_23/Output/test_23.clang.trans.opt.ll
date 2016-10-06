; ModuleID = 'Output/test_23.clang.trans.opt.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, [1 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x8c = internal constant %0 <{ void (%struct.regs*)* @sub_5c, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_61, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_57, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_66, void (%struct.regs*)* @sub_52, [1 x i8] c"w" }>, align 64

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_5c(%struct.regs*) #0 {
entry:
  %_RSP_ptr_227.sroa.0 = alloca i64, align 8
  %_RBP_ptr_228.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_229 = alloca [28 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_229, i64 0, i64 28
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_227.sroa.0, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %2 = bitcast i64* %RBX to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64, i64* %RDX, align 8, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64, i64* %RSI, align 8, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64, i64* %RDI, align 8, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %7 = load i64, i64* %R8, align 8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %8 = load i64, i64* %R9, align 8, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %9 = load i64, i64* %R10, align 8, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %10 = load i64, i64* %R11, align 8, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %11 = load i64, i64* %R12, align 8, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %12 = load i64, i64* %R13, align 8, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %13 = load i64, i64* %R14, align 8, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %14 = load i64, i64* %R15, align 8, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %15 = load i64, i64* %RIP, align 8, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !2
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %47 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %49 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %66 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %67 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !2
  %68 = bitcast i64* %_RBP_ptr_228.sroa.0 to i8**
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_238 = load i8*, i8** %68, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_238, i64 -8
  %69 = bitcast i8* %_new_gep_ to i32*
  %70 = load i32, i32* %69, align 4, !mcsema_real_eip !3
  %71 = add i32 %70, 1
  store i32 %71, i32* %69, align 4, !mcsema_real_eip !4
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239 = load i8*, i8** %68, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -8
  %72 = bitcast i8* %_new_gep_5 to i32*
  %73 = load i32, i32* %72, align 4, !mcsema_real_eip !5
  %74 = add i32 %73, -1
  %75 = xor i32 %74, %73, !mcsema_real_eip !5
  %76 = icmp slt i32 %74, 0
  %77 = and i32 %75, %73, !mcsema_real_eip !5
  %78 = icmp slt i32 %77, 0
  %tmp = xor i1 %76, %78
  br i1 %tmp, label %block_0x26, label %block_0x80, !mcsema_real_eip !6

block_0x80:                                       ; preds = %entry
  %79 = icmp eq i32 %73, 0
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !5
  %81 = trunc i32 %74 to i8, !mcsema_real_eip !5
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !5
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = and i32 %75, 16, !mcsema_real_eip !5
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !5
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -4
  %87 = bitcast i8* %_new_gep_8 to i32*
  store i32 1, i32* %87, align 4, !mcsema_real_eip !7
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_10240 = load i8*, i8** %68, align 8
  %_new_gep_11 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_10240, i64 -4
  %88 = bitcast i8* %_new_gep_11 to i32*
  %89 = load i32, i32* %88, align 4, !mcsema_real_eip !8
  %90 = zext i32 %89 to i64, !mcsema_real_eip !8
  %91 = bitcast i64* %_RSP_ptr_227.sroa.0 to i8**
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241 = load i8*, i8** %91, align 8
  %_allin_new_bt_13 = bitcast i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241 to i64*
  %92 = load i64, i64* %_allin_new_bt_13, align 8
  store volatile i64 %92, i64* %_RBP_ptr_228.sroa.0, align 8
  %_new_gep_14 = getelementptr i8, i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241, i64 16
  %93 = ptrtoint i8* %_new_gep_14 to i64
  store volatile i64 %93, i64* %_RSP_ptr_227.sroa.0, align 8
  store i64 %90, i64* %RAX, align 8, !mcsema_real_eip !9
  %94 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %94, align 8
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !9
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !9
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !9
  store volatile i64 %93, i64* %RSP, align 8
  store volatile i64 %92, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !9
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !9
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !9
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !9
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !9
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !9
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !9
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !9
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !9
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9

block_0x26:                                       ; preds = %entry
  %95 = sext i32 %73 to i64, !mcsema_real_eip !10
  %_new_gep_21 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -9
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_21, i64 %95
  %96 = load i8, i8* %_new_gep_22, align 1, !mcsema_real_eip !11
  %97 = sext i8 %96 to i32, !mcsema_real_eip !11
  %98 = add nsw i32 %97, -97
  %99 = zext i32 %98 to i64, !mcsema_real_eip !12
  %100 = add nsw i32 %97, -119
  %101 = xor i32 %100, %98, !mcsema_real_eip !13
  %102 = and i32 %101, 16
  %103 = icmp eq i32 %102, 0
  %104 = trunc i32 %100 to i8, !mcsema_real_eip !13
  %105 = tail call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !13
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  %108 = icmp eq i32 %100, 0, !mcsema_real_eip !13
  %109 = icmp slt i8 %96, 119
  %110 = icmp ult i32 %98, 22, !mcsema_real_eip !13
  %111 = and i32 %101, %98, !mcsema_real_eip !13
  %112 = icmp slt i32 %111, 0
  %_new_gep_25 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -24
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  store i64 %99, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !14
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_27242 = load i8*, i8** %68, align 8
  %_new_gep_28 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_27242, i64 -28
  %113 = bitcast i8* %_new_gep_28 to i32*
  store i32 %100, i32* %113, align 4, !mcsema_real_eip !15
  %.demorgan = or i1 %110, %108
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243 = load i8*, i8** %68, align 8
  br i1 %.demorgan, label %block_0x44, label %block_0x66, !mcsema_real_eip !16

block_0x66:                                       ; preds = %block_0x26
  %114 = zext i32 %100 to i64, !mcsema_real_eip !13
  %_new_gep_31 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243, i64 -4
  %115 = bitcast i8* %_new_gep_31 to i32*
  store i32 1, i32* %115, align 4, !mcsema_real_eip !17
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_33244 = load i8*, i8** %68, align 8
  %_new_gep_34 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_33244, i64 -4
  %116 = bitcast i8* %_new_gep_34 to i32*
  %117 = load i32, i32* %116, align 4, !mcsema_real_eip !8
  %118 = zext i32 %117 to i64, !mcsema_real_eip !8
  %119 = bitcast i64* %_RSP_ptr_227.sroa.0 to i8**
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245 = load i8*, i8** %119, align 8
  %_allin_new_bt_37 = bitcast i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245 to i64*
  %120 = load i64, i64* %_allin_new_bt_37, align 8
  store volatile i64 %120, i64* %_RBP_ptr_228.sroa.0, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245, i64 16
  %121 = ptrtoint i8* %_new_gep_39 to i64
  store volatile i64 %121, i64* %_RSP_ptr_227.sroa.0, align 8
  store i64 %118, i64* %RAX, align 8, !mcsema_real_eip !9
  %122 = extractelement <2 x i64> %3, i32 0
  store i64 %122, i64* %RBX, align 8, !mcsema_real_eip !9
  store i64 %114, i64* %RCX, align 8, !mcsema_real_eip !9
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !9
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !9
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !9
  store volatile i64 %121, i64* %RSP, align 8
  store volatile i64 %120, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !9
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !9
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !9
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !9
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !9
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !9
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !9
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !9
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %103, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !9
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9

block_0x44:                                       ; preds = %block_0x26
  %123 = ptrtoint i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243 to i64
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %124 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !18
  %125 = shl i64 %124, 3
  %126 = add i64 %125, ptrtoint (%0* @data_0x8c to i64), !mcsema_real_eip !19
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !19
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !19
  store i64 %124, i64* %RAX, align 8, !mcsema_real_eip !20
  %129 = extractelement <2 x i64> %3, i32 0
  store i64 %129, i64* %RBX, align 8, !mcsema_real_eip !20
  store i64 %128, i64* %RCX, align 8, !mcsema_real_eip !20
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !20
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !20
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !20
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_46234 = load i64, i64* %_RSP_ptr_227.sroa.0, align 8
  store volatile i64 %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_46234, i64* %RSP, align 8
  store volatile i64 %123, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !20
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !20
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !20
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !20
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !20
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !20
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !20
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !20
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !20
  store i1 %110, i1* %CF, align 1, !mcsema_real_eip !20
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !20
  store i1 %103, i1* %AF, align 1, !mcsema_real_eip !20
  store i1 %108, i1* %ZF, align 1, !mcsema_real_eip !20
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !20
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !20
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !20
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !20
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !20
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !20
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !20
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !20
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !20
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !20
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !20
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !20
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !20
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !20
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !20
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !20
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !20
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !20
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !20
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !20
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_66(%struct.regs*) #0 {
entry:
  %_RSP_ptr_4.sroa.0 = alloca i64, align 8
  %_RBP_ptr_5.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_6 = alloca [4 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [4 x i8], [4 x i8]* %_local_stack_start_ptr_6, i64 0, i64 4
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_4.sroa.0, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !17
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !17
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !17
  %2 = bitcast i64* %RBX to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !17
  %4 = bitcast i64* %RDX to <2 x i64>*
  %5 = load <2 x i64>, <2 x i64>* %4, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !17
  %6 = load i64, i64* %RDI, align 8, !mcsema_real_eip !17
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !17
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !17
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !17
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !17
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !17
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !17
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>, <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !17
  %15 = load i64, i64* %RIP, align 8, !mcsema_real_eip !17
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !17
  %16 = load i1, i1* %CF, align 1, !mcsema_real_eip !17
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !17
  %17 = load i1, i1* %PF, align 1, !mcsema_real_eip !17
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !17
  %18 = load i1, i1* %AF, align 1, !mcsema_real_eip !17
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !17
  %19 = load i1, i1* %ZF, align 1, !mcsema_real_eip !17
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !17
  %20 = load i1, i1* %SF, align 1, !mcsema_real_eip !17
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !17
  %21 = load i1, i1* %OF, align 1, !mcsema_real_eip !17
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !17
  %22 = load i1, i1* %DF, align 1, !mcsema_real_eip !17
  %23 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !17
  %24 = bitcast x86_fp80* %23 to i8*, !mcsema_real_eip !17
  %25 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %25, i8* %24, i32 128, i32 4, i1 false), !mcsema_real_eip !17
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !17
  %26 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !17
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !17
  %27 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !17
  %28 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !17
  %29 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !17
  %30 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !17
  %31 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !17
  %32 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !17
  %33 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !17
  %34 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !17
  %35 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !17
  %36 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !17
  %37 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !17
  %38 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !17
  %39 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !17
  %40 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !17
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !17
  %41 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !17
  %42 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !17
  %43 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !17
  %44 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !17
  %45 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !17
  %46 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !17
  %47 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !17
  %48 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %49 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !17
  %50 = bitcast i8* %49 to i64*
  %51 = load i64, i64* %50, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !17
  %52 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !17
  %53 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !17
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !17
  %54 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !17
  %55 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !17
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !17
  %56 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !17
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !17
  %57 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !17
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !17
  %58 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !17
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !17
  %59 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !17
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !17
  %60 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !17
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !17
  %61 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !17
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !17
  %62 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !17
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !17
  %63 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !17
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !17
  %64 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !17
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !17
  %65 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !17
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !17
  %66 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !17
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !17
  %67 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !17
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !17
  %68 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !17
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !17
  %69 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !17
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !17
  %70 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !17
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !17
  %71 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !17
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !17
  %72 = bitcast i64* %STACK_BASE to <2 x i64>*
  %73 = load <2 x i64>, <2 x i64>* %72, align 8
  %74 = bitcast i64* %_RBP_ptr_5.sroa.0 to i8**
  %_RBP_ptr_5.sroa.0.0._RBP_ptr_5.sroa.0.0._load_rbp_ptr_9 = load i8*, i8** %74, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_5.sroa.0.0._RBP_ptr_5.sroa.0.0._load_rbp_ptr_9, i64 -4
  %75 = bitcast i8* %_new_gep_ to i32*
  store i32 1, i32* %75, align 4, !mcsema_real_eip !17
  %_RBP_ptr_5.sroa.0.0._RBP_ptr_5.sroa.0.0._load_rbp_ptr_110 = load i8*, i8** %74, align 8
  %_new_gep_2 = getelementptr i8, i8* %_RBP_ptr_5.sroa.0.0._RBP_ptr_5.sroa.0.0._load_rbp_ptr_110, i64 -4
  %76 = bitcast i8* %_new_gep_2 to i32*
  %77 = load i32, i32* %76, align 4, !mcsema_real_eip !8
  %78 = zext i32 %77 to i64, !mcsema_real_eip !8
  %79 = bitcast i64* %_RSP_ptr_4.sroa.0 to i8**
  %_RSP_ptr_4.sroa.0.0._RSP_ptr_4.sroa.0.0._load_rsp_ptr_11 = load i8*, i8** %79, align 8
  %_allin_new_bt_4 = bitcast i8* %_RSP_ptr_4.sroa.0.0._RSP_ptr_4.sroa.0.0._load_rsp_ptr_11 to i64*
  %80 = load i64, i64* %_allin_new_bt_4, align 8
  store volatile i64 %80, i64* %_RBP_ptr_5.sroa.0, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RSP_ptr_4.sroa.0.0._RSP_ptr_4.sroa.0.0._load_rsp_ptr_11, i64 16
  %81 = ptrtoint i8* %_new_gep_5 to i64
  store volatile i64 %81, i64* %_RSP_ptr_4.sroa.0, align 8
  store i64 %78, i64* %RAX, align 8, !mcsema_real_eip !9
  %82 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %82, align 8
  %83 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %83, align 8
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !9
  store volatile i64 %81, i64* %RSP, align 8
  store volatile i64 %80, i64* %RBP, align 8
  %84 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %84, align 8
  %85 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %85, align 8
  %86 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %86, align 8
  %87 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %87, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !9
  store i1 %16, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %17, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 %19, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %20, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %22, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* nonnull %25, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %26, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %28, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %35, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %36, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %41, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %42, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %43, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %44, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %45, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %46, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %47, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %48, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i64 %51, i64* %50, align 4
  store i16 %52, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %53, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %54, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %55, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %66, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %67, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %68, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %69, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %70, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %71, i128* %XMM15, align 1, !mcsema_real_eip !9
  %88 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %73, <2 x i64>* %88, align 1
  ret void, !mcsema_real_eip !9
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_61(%struct.regs*) #0 {
entry:
  %_RSP_ptr_227.sroa.0 = alloca i64, align 8
  %_RBP_ptr_228.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_229 = alloca [28 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_229, i64 0, i64 28
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_227.sroa.0, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !21
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !21
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !21
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !21
  %2 = bitcast i64* %RBX to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !21
  %4 = load i64, i64* %RDX, align 8, !mcsema_real_eip !21
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !21
  %5 = load i64, i64* %RSI, align 8, !mcsema_real_eip !21
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !21
  %6 = load i64, i64* %RDI, align 8, !mcsema_real_eip !21
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !21
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !21
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !21
  %7 = load i64, i64* %R8, align 8, !mcsema_real_eip !21
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !21
  %8 = load i64, i64* %R9, align 8, !mcsema_real_eip !21
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !21
  %9 = load i64, i64* %R10, align 8, !mcsema_real_eip !21
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !21
  %10 = load i64, i64* %R11, align 8, !mcsema_real_eip !21
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !21
  %11 = load i64, i64* %R12, align 8, !mcsema_real_eip !21
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !21
  %12 = load i64, i64* %R13, align 8, !mcsema_real_eip !21
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !21
  %13 = load i64, i64* %R14, align 8, !mcsema_real_eip !21
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !21
  %14 = load i64, i64* %R15, align 8, !mcsema_real_eip !21
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !21
  %15 = load i64, i64* %RIP, align 8, !mcsema_real_eip !21
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !21
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !21
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !21
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !21
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !21
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !21
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !21
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !21
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !21
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !21
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !21
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !21
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !21
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !21
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !21
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !21
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !21
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !21
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !21
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !21
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !21
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !21
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !21
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !21
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !21
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !21
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !21
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !21
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !21
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !21
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !21
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !21
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !21
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !21
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !21
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !21
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !21
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !21
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !21
  %47 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !21
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !21
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !21
  %49 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !21
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !21
  %50 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !21
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !21
  %51 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !21
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !21
  %52 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !21
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !21
  %53 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !21
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !21
  %54 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !21
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !21
  %55 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !21
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !21
  %56 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !21
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !21
  %57 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !21
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !21
  %58 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !21
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !21
  %59 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !21
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !21
  %60 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !21
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !21
  %61 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !21
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !21
  %62 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !21
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !21
  %63 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !21
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !21
  %64 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !21
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !21
  %65 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !21
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !21
  %66 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !21
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !21
  %67 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !21
  %68 = bitcast i64* %_RBP_ptr_228.sroa.0 to i8**
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_238 = load i8*, i8** %68, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_238, i64 -8
  %69 = bitcast i8* %_new_gep_ to i32*
  %70 = load i32, i32* %69, align 4, !mcsema_real_eip !3
  %71 = add i32 %70, 1
  store i32 %71, i32* %69, align 4, !mcsema_real_eip !4
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239 = load i8*, i8** %68, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -8
  %72 = bitcast i8* %_new_gep_5 to i32*
  %73 = load i32, i32* %72, align 4, !mcsema_real_eip !5
  %74 = add i32 %73, -1
  %75 = xor i32 %74, %73, !mcsema_real_eip !5
  %76 = icmp slt i32 %74, 0
  %77 = and i32 %75, %73, !mcsema_real_eip !5
  %78 = icmp slt i32 %77, 0
  %tmp = xor i1 %76, %78
  br i1 %tmp, label %block_0x26, label %block_0x80, !mcsema_real_eip !6

block_0x80:                                       ; preds = %entry
  %79 = icmp eq i32 %73, 0
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !5
  %81 = trunc i32 %74 to i8, !mcsema_real_eip !5
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !5
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = and i32 %75, 16, !mcsema_real_eip !5
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !5
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -4
  %87 = bitcast i8* %_new_gep_8 to i32*
  store i32 1, i32* %87, align 4, !mcsema_real_eip !7
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_10240 = load i8*, i8** %68, align 8
  %_new_gep_11 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_10240, i64 -4
  %88 = bitcast i8* %_new_gep_11 to i32*
  %89 = load i32, i32* %88, align 4, !mcsema_real_eip !8
  %90 = zext i32 %89 to i64, !mcsema_real_eip !8
  %91 = bitcast i64* %_RSP_ptr_227.sroa.0 to i8**
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241 = load i8*, i8** %91, align 8
  %_allin_new_bt_13 = bitcast i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241 to i64*
  %92 = load i64, i64* %_allin_new_bt_13, align 8
  store volatile i64 %92, i64* %_RBP_ptr_228.sroa.0, align 8
  %_new_gep_14 = getelementptr i8, i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241, i64 16
  %93 = ptrtoint i8* %_new_gep_14 to i64
  store volatile i64 %93, i64* %_RSP_ptr_227.sroa.0, align 8
  store i64 %90, i64* %RAX, align 8, !mcsema_real_eip !9
  %94 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %94, align 8
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !9
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !9
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !9
  store volatile i64 %93, i64* %RSP, align 8
  store volatile i64 %92, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !9
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !9
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !9
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !9
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !9
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !9
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !9
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !9
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !9
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9

block_0x26:                                       ; preds = %entry
  %95 = sext i32 %73 to i64, !mcsema_real_eip !10
  %_new_gep_21 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -9
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_21, i64 %95
  %96 = load i8, i8* %_new_gep_22, align 1, !mcsema_real_eip !11
  %97 = sext i8 %96 to i32, !mcsema_real_eip !11
  %98 = add nsw i32 %97, -97
  %99 = zext i32 %98 to i64, !mcsema_real_eip !12
  %100 = add nsw i32 %97, -119
  %101 = xor i32 %100, %98, !mcsema_real_eip !13
  %102 = and i32 %101, 16
  %103 = icmp eq i32 %102, 0
  %104 = trunc i32 %100 to i8, !mcsema_real_eip !13
  %105 = tail call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !13
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  %108 = icmp eq i32 %100, 0, !mcsema_real_eip !13
  %109 = icmp slt i8 %96, 119
  %110 = icmp ult i32 %98, 22, !mcsema_real_eip !13
  %111 = and i32 %101, %98, !mcsema_real_eip !13
  %112 = icmp slt i32 %111, 0
  %_new_gep_25 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -24
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  store i64 %99, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !14
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_27242 = load i8*, i8** %68, align 8
  %_new_gep_28 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_27242, i64 -28
  %113 = bitcast i8* %_new_gep_28 to i32*
  store i32 %100, i32* %113, align 4, !mcsema_real_eip !15
  %.demorgan = or i1 %110, %108
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243 = load i8*, i8** %68, align 8
  br i1 %.demorgan, label %block_0x44, label %block_0x66, !mcsema_real_eip !16

block_0x66:                                       ; preds = %block_0x26
  %114 = zext i32 %100 to i64, !mcsema_real_eip !13
  %_new_gep_31 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243, i64 -4
  %115 = bitcast i8* %_new_gep_31 to i32*
  store i32 1, i32* %115, align 4, !mcsema_real_eip !17
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_33244 = load i8*, i8** %68, align 8
  %_new_gep_34 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_33244, i64 -4
  %116 = bitcast i8* %_new_gep_34 to i32*
  %117 = load i32, i32* %116, align 4, !mcsema_real_eip !8
  %118 = zext i32 %117 to i64, !mcsema_real_eip !8
  %119 = bitcast i64* %_RSP_ptr_227.sroa.0 to i8**
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245 = load i8*, i8** %119, align 8
  %_allin_new_bt_37 = bitcast i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245 to i64*
  %120 = load i64, i64* %_allin_new_bt_37, align 8
  store volatile i64 %120, i64* %_RBP_ptr_228.sroa.0, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245, i64 16
  %121 = ptrtoint i8* %_new_gep_39 to i64
  store volatile i64 %121, i64* %_RSP_ptr_227.sroa.0, align 8
  store i64 %118, i64* %RAX, align 8, !mcsema_real_eip !9
  %122 = extractelement <2 x i64> %3, i32 0
  store i64 %122, i64* %RBX, align 8, !mcsema_real_eip !9
  store i64 %114, i64* %RCX, align 8, !mcsema_real_eip !9
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !9
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !9
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !9
  store volatile i64 %121, i64* %RSP, align 8
  store volatile i64 %120, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !9
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !9
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !9
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !9
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !9
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !9
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !9
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !9
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %103, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !9
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9

block_0x44:                                       ; preds = %block_0x26
  %123 = ptrtoint i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243 to i64
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %124 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !18
  %125 = shl i64 %124, 3
  %126 = add i64 %125, ptrtoint (%0* @data_0x8c to i64), !mcsema_real_eip !19
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !19
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !19
  store i64 %124, i64* %RAX, align 8, !mcsema_real_eip !20
  %129 = extractelement <2 x i64> %3, i32 0
  store i64 %129, i64* %RBX, align 8, !mcsema_real_eip !20
  store i64 %128, i64* %RCX, align 8, !mcsema_real_eip !20
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !20
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !20
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !20
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_46234 = load i64, i64* %_RSP_ptr_227.sroa.0, align 8
  store volatile i64 %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_46234, i64* %RSP, align 8
  store volatile i64 %123, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !20
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !20
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !20
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !20
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !20
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !20
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !20
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !20
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !20
  store i1 %110, i1* %CF, align 1, !mcsema_real_eip !20
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !20
  store i1 %103, i1* %AF, align 1, !mcsema_real_eip !20
  store i1 %108, i1* %ZF, align 1, !mcsema_real_eip !20
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !20
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !20
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !20
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !20
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !20
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !20
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !20
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !20
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !20
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !20
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !20
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !20
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !20
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !20
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !20
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !20
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !20
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !20
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !20
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !20
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_57(%struct.regs*) #0 {
entry:
  %_RSP_ptr_227.sroa.0 = alloca i64, align 8
  %_RBP_ptr_228.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_229 = alloca [28 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_229, i64 0, i64 28
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_227.sroa.0, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !22
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !22
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !22
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !22
  %2 = bitcast i64* %RBX to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !22
  %4 = load i64, i64* %RDX, align 8, !mcsema_real_eip !22
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !22
  %5 = load i64, i64* %RSI, align 8, !mcsema_real_eip !22
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !22
  %6 = load i64, i64* %RDI, align 8, !mcsema_real_eip !22
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !22
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !22
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !22
  %7 = load i64, i64* %R8, align 8, !mcsema_real_eip !22
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !22
  %8 = load i64, i64* %R9, align 8, !mcsema_real_eip !22
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !22
  %9 = load i64, i64* %R10, align 8, !mcsema_real_eip !22
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !22
  %10 = load i64, i64* %R11, align 8, !mcsema_real_eip !22
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !22
  %11 = load i64, i64* %R12, align 8, !mcsema_real_eip !22
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !22
  %12 = load i64, i64* %R13, align 8, !mcsema_real_eip !22
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !22
  %13 = load i64, i64* %R14, align 8, !mcsema_real_eip !22
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !22
  %14 = load i64, i64* %R15, align 8, !mcsema_real_eip !22
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !22
  %15 = load i64, i64* %RIP, align 8, !mcsema_real_eip !22
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !22
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !22
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !22
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !22
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !22
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !22
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !22
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !22
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !22
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !22
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !22
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !22
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !22
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !22
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !22
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !22
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !22
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !22
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !22
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !22
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !22
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !22
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !22
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !22
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !22
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !22
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !22
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !22
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !22
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !22
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !22
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !22
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !22
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !22
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !22
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !22
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !22
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !22
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !22
  %47 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !22
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !22
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !22
  %49 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !22
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !22
  %50 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !22
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !22
  %51 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !22
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !22
  %52 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !22
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !22
  %53 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !22
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !22
  %54 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !22
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !22
  %55 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !22
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !22
  %56 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !22
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !22
  %57 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !22
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !22
  %58 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !22
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !22
  %59 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !22
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !22
  %60 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !22
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !22
  %61 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !22
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !22
  %62 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !22
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !22
  %63 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !22
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !22
  %64 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !22
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !22
  %65 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !22
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !22
  %66 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !22
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !22
  %67 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !22
  %68 = bitcast i64* %_RBP_ptr_228.sroa.0 to i8**
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_238 = load i8*, i8** %68, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_238, i64 -8
  %69 = bitcast i8* %_new_gep_ to i32*
  %70 = load i32, i32* %69, align 4, !mcsema_real_eip !3
  %71 = add i32 %70, 1
  store i32 %71, i32* %69, align 4, !mcsema_real_eip !4
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239 = load i8*, i8** %68, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -8
  %72 = bitcast i8* %_new_gep_5 to i32*
  %73 = load i32, i32* %72, align 4, !mcsema_real_eip !5
  %74 = add i32 %73, -1
  %75 = xor i32 %74, %73, !mcsema_real_eip !5
  %76 = icmp slt i32 %74, 0
  %77 = and i32 %75, %73, !mcsema_real_eip !5
  %78 = icmp slt i32 %77, 0
  %tmp = xor i1 %76, %78
  br i1 %tmp, label %block_0x26, label %block_0x80, !mcsema_real_eip !6

block_0x80:                                       ; preds = %entry
  %79 = icmp eq i32 %73, 0
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !5
  %81 = trunc i32 %74 to i8, !mcsema_real_eip !5
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !5
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = and i32 %75, 16, !mcsema_real_eip !5
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !5
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -4
  %87 = bitcast i8* %_new_gep_8 to i32*
  store i32 1, i32* %87, align 4, !mcsema_real_eip !7
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_10240 = load i8*, i8** %68, align 8
  %_new_gep_11 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_10240, i64 -4
  %88 = bitcast i8* %_new_gep_11 to i32*
  %89 = load i32, i32* %88, align 4, !mcsema_real_eip !8
  %90 = zext i32 %89 to i64, !mcsema_real_eip !8
  %91 = bitcast i64* %_RSP_ptr_227.sroa.0 to i8**
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241 = load i8*, i8** %91, align 8
  %_allin_new_bt_13 = bitcast i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241 to i64*
  %92 = load i64, i64* %_allin_new_bt_13, align 8
  store volatile i64 %92, i64* %_RBP_ptr_228.sroa.0, align 8
  %_new_gep_14 = getelementptr i8, i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241, i64 16
  %93 = ptrtoint i8* %_new_gep_14 to i64
  store volatile i64 %93, i64* %_RSP_ptr_227.sroa.0, align 8
  store i64 %90, i64* %RAX, align 8, !mcsema_real_eip !9
  %94 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %94, align 8
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !9
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !9
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !9
  store volatile i64 %93, i64* %RSP, align 8
  store volatile i64 %92, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !9
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !9
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !9
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !9
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !9
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !9
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !9
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !9
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !9
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9

block_0x26:                                       ; preds = %entry
  %95 = sext i32 %73 to i64, !mcsema_real_eip !10
  %_new_gep_21 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -9
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_21, i64 %95
  %96 = load i8, i8* %_new_gep_22, align 1, !mcsema_real_eip !11
  %97 = sext i8 %96 to i32, !mcsema_real_eip !11
  %98 = add nsw i32 %97, -97
  %99 = zext i32 %98 to i64, !mcsema_real_eip !12
  %100 = add nsw i32 %97, -119
  %101 = xor i32 %100, %98, !mcsema_real_eip !13
  %102 = and i32 %101, 16
  %103 = icmp eq i32 %102, 0
  %104 = trunc i32 %100 to i8, !mcsema_real_eip !13
  %105 = tail call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !13
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  %108 = icmp eq i32 %100, 0, !mcsema_real_eip !13
  %109 = icmp slt i8 %96, 119
  %110 = icmp ult i32 %98, 22, !mcsema_real_eip !13
  %111 = and i32 %101, %98, !mcsema_real_eip !13
  %112 = icmp slt i32 %111, 0
  %_new_gep_25 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -24
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  store i64 %99, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !14
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_27242 = load i8*, i8** %68, align 8
  %_new_gep_28 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_27242, i64 -28
  %113 = bitcast i8* %_new_gep_28 to i32*
  store i32 %100, i32* %113, align 4, !mcsema_real_eip !15
  %.demorgan = or i1 %110, %108
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243 = load i8*, i8** %68, align 8
  br i1 %.demorgan, label %block_0x44, label %block_0x66, !mcsema_real_eip !16

block_0x66:                                       ; preds = %block_0x26
  %114 = zext i32 %100 to i64, !mcsema_real_eip !13
  %_new_gep_31 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243, i64 -4
  %115 = bitcast i8* %_new_gep_31 to i32*
  store i32 1, i32* %115, align 4, !mcsema_real_eip !17
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_33244 = load i8*, i8** %68, align 8
  %_new_gep_34 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_33244, i64 -4
  %116 = bitcast i8* %_new_gep_34 to i32*
  %117 = load i32, i32* %116, align 4, !mcsema_real_eip !8
  %118 = zext i32 %117 to i64, !mcsema_real_eip !8
  %119 = bitcast i64* %_RSP_ptr_227.sroa.0 to i8**
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245 = load i8*, i8** %119, align 8
  %_allin_new_bt_37 = bitcast i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245 to i64*
  %120 = load i64, i64* %_allin_new_bt_37, align 8
  store volatile i64 %120, i64* %_RBP_ptr_228.sroa.0, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245, i64 16
  %121 = ptrtoint i8* %_new_gep_39 to i64
  store volatile i64 %121, i64* %_RSP_ptr_227.sroa.0, align 8
  store i64 %118, i64* %RAX, align 8, !mcsema_real_eip !9
  %122 = extractelement <2 x i64> %3, i32 0
  store i64 %122, i64* %RBX, align 8, !mcsema_real_eip !9
  store i64 %114, i64* %RCX, align 8, !mcsema_real_eip !9
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !9
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !9
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !9
  store volatile i64 %121, i64* %RSP, align 8
  store volatile i64 %120, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !9
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !9
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !9
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !9
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !9
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !9
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !9
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !9
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %103, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !9
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9

block_0x44:                                       ; preds = %block_0x26
  %123 = ptrtoint i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243 to i64
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %124 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !18
  %125 = shl i64 %124, 3
  %126 = add i64 %125, ptrtoint (%0* @data_0x8c to i64), !mcsema_real_eip !19
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !19
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !19
  store i64 %124, i64* %RAX, align 8, !mcsema_real_eip !20
  %129 = extractelement <2 x i64> %3, i32 0
  store i64 %129, i64* %RBX, align 8, !mcsema_real_eip !20
  store i64 %128, i64* %RCX, align 8, !mcsema_real_eip !20
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !20
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !20
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !20
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_46234 = load i64, i64* %_RSP_ptr_227.sroa.0, align 8
  store volatile i64 %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_46234, i64* %RSP, align 8
  store volatile i64 %123, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !20
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !20
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !20
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !20
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !20
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !20
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !20
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !20
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !20
  store i1 %110, i1* %CF, align 1, !mcsema_real_eip !20
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !20
  store i1 %103, i1* %AF, align 1, !mcsema_real_eip !20
  store i1 %108, i1* %ZF, align 1, !mcsema_real_eip !20
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !20
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !20
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !20
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !20
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !20
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !20
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !20
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !20
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !20
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !20
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !20
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !20
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !20
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !20
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !20
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !20
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !20
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !20
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !20
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !20
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_52(%struct.regs*) #0 {
entry:
  %_RSP_ptr_227.sroa.0 = alloca i64, align 8
  %_RBP_ptr_228.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_229 = alloca [28 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_229, i64 0, i64 28
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_227.sroa.0, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !23
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !23
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !23
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !23
  %2 = bitcast i64* %RBX to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !23
  %4 = load i64, i64* %RDX, align 8, !mcsema_real_eip !23
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !23
  %5 = load i64, i64* %RSI, align 8, !mcsema_real_eip !23
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !23
  %6 = load i64, i64* %RDI, align 8, !mcsema_real_eip !23
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !23
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !23
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !23
  %7 = load i64, i64* %R8, align 8, !mcsema_real_eip !23
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !23
  %8 = load i64, i64* %R9, align 8, !mcsema_real_eip !23
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !23
  %9 = load i64, i64* %R10, align 8, !mcsema_real_eip !23
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !23
  %10 = load i64, i64* %R11, align 8, !mcsema_real_eip !23
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !23
  %11 = load i64, i64* %R12, align 8, !mcsema_real_eip !23
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !23
  %12 = load i64, i64* %R13, align 8, !mcsema_real_eip !23
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !23
  %13 = load i64, i64* %R14, align 8, !mcsema_real_eip !23
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !23
  %14 = load i64, i64* %R15, align 8, !mcsema_real_eip !23
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !23
  %15 = load i64, i64* %RIP, align 8, !mcsema_real_eip !23
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !23
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !23
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !23
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !23
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !23
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !23
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !23
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !23
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !23
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !23
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !23
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !23
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !23
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !23
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !23
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !23
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !23
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !23
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !23
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !23
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !23
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !23
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !23
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !23
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !23
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !23
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !23
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !23
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !23
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !23
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !23
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !23
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !23
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !23
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !23
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !23
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !23
  %47 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !23
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !23
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !23
  %49 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !23
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !23
  %50 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !23
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !23
  %51 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !23
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !23
  %52 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !23
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !23
  %53 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !23
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !23
  %54 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !23
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !23
  %55 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !23
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !23
  %56 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !23
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !23
  %57 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !23
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !23
  %58 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !23
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !23
  %59 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !23
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !23
  %60 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !23
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !23
  %61 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !23
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !23
  %62 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !23
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !23
  %63 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !23
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !23
  %64 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !23
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !23
  %65 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !23
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !23
  %66 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !23
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !23
  %67 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !23
  %68 = bitcast i64* %_RBP_ptr_228.sroa.0 to i8**
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_238 = load i8*, i8** %68, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_238, i64 -8
  %69 = bitcast i8* %_new_gep_ to i32*
  %70 = load i32, i32* %69, align 4, !mcsema_real_eip !3
  %71 = add i32 %70, 1
  store i32 %71, i32* %69, align 4, !mcsema_real_eip !4
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239 = load i8*, i8** %68, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -8
  %72 = bitcast i8* %_new_gep_5 to i32*
  %73 = load i32, i32* %72, align 4, !mcsema_real_eip !5
  %74 = add i32 %73, -1
  %75 = xor i32 %74, %73, !mcsema_real_eip !5
  %76 = icmp slt i32 %74, 0
  %77 = and i32 %75, %73, !mcsema_real_eip !5
  %78 = icmp slt i32 %77, 0
  %tmp = xor i1 %76, %78
  br i1 %tmp, label %block_0x26, label %block_0x80, !mcsema_real_eip !6

block_0x80:                                       ; preds = %entry
  %79 = icmp eq i32 %73, 0
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !5
  %81 = trunc i32 %74 to i8, !mcsema_real_eip !5
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !5
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = and i32 %75, 16, !mcsema_real_eip !5
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !5
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -4
  %87 = bitcast i8* %_new_gep_8 to i32*
  store i32 1, i32* %87, align 4, !mcsema_real_eip !7
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_10240 = load i8*, i8** %68, align 8
  %_new_gep_11 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_10240, i64 -4
  %88 = bitcast i8* %_new_gep_11 to i32*
  %89 = load i32, i32* %88, align 4, !mcsema_real_eip !8
  %90 = zext i32 %89 to i64, !mcsema_real_eip !8
  %91 = bitcast i64* %_RSP_ptr_227.sroa.0 to i8**
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241 = load i8*, i8** %91, align 8
  %_allin_new_bt_13 = bitcast i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241 to i64*
  %92 = load i64, i64* %_allin_new_bt_13, align 8
  store volatile i64 %92, i64* %_RBP_ptr_228.sroa.0, align 8
  %_new_gep_14 = getelementptr i8, i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_241, i64 16
  %93 = ptrtoint i8* %_new_gep_14 to i64
  store volatile i64 %93, i64* %_RSP_ptr_227.sroa.0, align 8
  store i64 %90, i64* %RAX, align 8, !mcsema_real_eip !9
  %94 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %94, align 8
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !9
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !9
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !9
  store volatile i64 %93, i64* %RSP, align 8
  store volatile i64 %92, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !9
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !9
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !9
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !9
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !9
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !9
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !9
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !9
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !9
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9

block_0x26:                                       ; preds = %entry
  %95 = sext i32 %73 to i64, !mcsema_real_eip !10
  %_new_gep_21 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -9
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_21, i64 %95
  %96 = load i8, i8* %_new_gep_22, align 1, !mcsema_real_eip !11
  %97 = sext i8 %96 to i32, !mcsema_real_eip !11
  %98 = add nsw i32 %97, -97
  %99 = zext i32 %98 to i64, !mcsema_real_eip !12
  %100 = add nsw i32 %97, -119
  %101 = xor i32 %100, %98, !mcsema_real_eip !13
  %102 = and i32 %101, 16
  %103 = icmp eq i32 %102, 0
  %104 = trunc i32 %100 to i8, !mcsema_real_eip !13
  %105 = tail call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !13
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  %108 = icmp eq i32 %100, 0, !mcsema_real_eip !13
  %109 = icmp slt i8 %96, 119
  %110 = icmp ult i32 %98, 22, !mcsema_real_eip !13
  %111 = and i32 %101, %98, !mcsema_real_eip !13
  %112 = icmp slt i32 %111, 0
  %_new_gep_25 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_4239, i64 -24
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  store i64 %99, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !14
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_27242 = load i8*, i8** %68, align 8
  %_new_gep_28 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_27242, i64 -28
  %113 = bitcast i8* %_new_gep_28 to i32*
  store i32 %100, i32* %113, align 4, !mcsema_real_eip !15
  %.demorgan = or i1 %110, %108
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243 = load i8*, i8** %68, align 8
  br i1 %.demorgan, label %block_0x44, label %block_0x66, !mcsema_real_eip !16

block_0x66:                                       ; preds = %block_0x26
  %114 = zext i32 %100 to i64, !mcsema_real_eip !13
  %_new_gep_31 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243, i64 -4
  %115 = bitcast i8* %_new_gep_31 to i32*
  store i32 1, i32* %115, align 4, !mcsema_real_eip !17
  %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_33244 = load i8*, i8** %68, align 8
  %_new_gep_34 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_33244, i64 -4
  %116 = bitcast i8* %_new_gep_34 to i32*
  %117 = load i32, i32* %116, align 4, !mcsema_real_eip !8
  %118 = zext i32 %117 to i64, !mcsema_real_eip !8
  %119 = bitcast i64* %_RSP_ptr_227.sroa.0 to i8**
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245 = load i8*, i8** %119, align 8
  %_allin_new_bt_37 = bitcast i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245 to i64*
  %120 = load i64, i64* %_allin_new_bt_37, align 8
  store volatile i64 %120, i64* %_RBP_ptr_228.sroa.0, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_36245, i64 16
  %121 = ptrtoint i8* %_new_gep_39 to i64
  store volatile i64 %121, i64* %_RSP_ptr_227.sroa.0, align 8
  store i64 %118, i64* %RAX, align 8, !mcsema_real_eip !9
  %122 = extractelement <2 x i64> %3, i32 0
  store i64 %122, i64* %RBX, align 8, !mcsema_real_eip !9
  store i64 %114, i64* %RCX, align 8, !mcsema_real_eip !9
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !9
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !9
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !9
  store volatile i64 %121, i64* %RSP, align 8
  store volatile i64 %120, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !9
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !9
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !9
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !9
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !9
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !9
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !9
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !9
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %103, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !9
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9

block_0x44:                                       ; preds = %block_0x26
  %123 = ptrtoint i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243 to i64
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_228.sroa.0.0._RBP_ptr_228.sroa.0.0._load_rbp_ptr_30243, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %124 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !18
  %125 = shl i64 %124, 3
  %126 = add i64 %125, ptrtoint (%0* @data_0x8c to i64), !mcsema_real_eip !19
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !19
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !19
  store i64 %124, i64* %RAX, align 8, !mcsema_real_eip !20
  %129 = extractelement <2 x i64> %3, i32 0
  store i64 %129, i64* %RBX, align 8, !mcsema_real_eip !20
  store i64 %128, i64* %RCX, align 8, !mcsema_real_eip !20
  store i64 %4, i64* %RDX, align 8, !mcsema_real_eip !20
  store i64 %5, i64* %RSI, align 8, !mcsema_real_eip !20
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !20
  %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_46234 = load i64, i64* %_RSP_ptr_227.sroa.0, align 8
  store volatile i64 %_RSP_ptr_227.sroa.0.0._RSP_ptr_227.sroa.0.0._load_rsp_ptr_46234, i64* %RSP, align 8
  store volatile i64 %123, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !20
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !20
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !20
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !20
  store i64 %11, i64* %R12, align 8, !mcsema_real_eip !20
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !20
  store i64 %13, i64* %R14, align 8, !mcsema_real_eip !20
  store i64 %14, i64* %R15, align 8, !mcsema_real_eip !20
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !20
  store i1 %110, i1* %CF, align 1, !mcsema_real_eip !20
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !20
  store i1 %103, i1* %AF, align 1, !mcsema_real_eip !20
  store i1 %108, i1* %ZF, align 1, !mcsema_real_eip !20
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !20
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !20
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !20
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !20
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !20
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !20
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !20
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !20
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !20
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !20
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !20
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !20
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !20
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !20
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !20
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !20
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !20
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !20
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !20
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !20
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  call void @llvm.trap()
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #0 {
driverBlockRaw:
  %_RSP_ptr_230.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_231.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_232.i = alloca [36 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !24
  %_RSP_ptr_230.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_230.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_230.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_231.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_231.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_231.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [36 x i8], [36 x i8]* %_local_stack_start_ptr_232.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 36, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [36 x i8], [36 x i8]* %_local_stack_start_ptr_232.i, i64 0, i64 36
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_230.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !24
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !24
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !24
  %3 = bitcast i64* %RBX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !24
  %5 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !24
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !24
  %6 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !24
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !24
  %7 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !24
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !24
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !24
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !24
  %8 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !24
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !24
  %9 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !24
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !24
  %10 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !24
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !24
  %11 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !24
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !24
  %12 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !24
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !24
  %13 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !24
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !24
  %14 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !24
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !24
  %15 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !24
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !24
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !24
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !24
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !24
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !24
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !24
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !24
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !24
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !24
  %17 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !24
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !24
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !24
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !24
  %20 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !24
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !24
  %21 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !24
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !24
  %22 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !24
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !24
  %23 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !24
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !24
  %24 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !24
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !24
  %25 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !24
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !24
  %26 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !24
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !24
  %27 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !24
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !24
  %28 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !24
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !24
  %29 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !24
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !24
  %30 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !24
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !24
  %31 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !24
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !24
  %32 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !24
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !24
  %33 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !24
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !24
  %34 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !24
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !24
  %35 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !24
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !24
  %36 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !24
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !24
  %37 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !24
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !24
  %38 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !24
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !24
  %39 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !24
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !24
  %40 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !24
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !24
  %41 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !24
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !24
  %42 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !24
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !24
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !24
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !24
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !24
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !24
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !24
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !24
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !24
  %50 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !24
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !24
  %51 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !24
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !24
  %52 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !24
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !24
  %53 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !24
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !24
  %54 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !24
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !24
  %55 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !24
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !24
  %56 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !24
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !24
  %57 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !24
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !24
  %58 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !24
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !24
  %59 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !24
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !24
  %60 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !24
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !24
  %61 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !24
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !24
  %62 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !24
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !24
  %63 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !24
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !24
  %64 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !24
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !24
  %65 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !24
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !24
  %66 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !24
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !24
  %67 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !24
  %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_233.i = load i64, i64* %_RBP_ptr_231.sroa.0.i, align 8
  %68 = bitcast i64* %_RSP_ptr_230.sroa.0.i to i8**
  %_RSP_ptr_230.sroa.0.i.0._RSP_ptr_230.sroa.0.0._RSP_ptr_230.sroa.0.0._load_rsp_ptr_242.i7 = load i8*, i8** %68, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_230.sroa.0.i.0._RSP_ptr_230.sroa.0.0._RSP_ptr_230.sroa.0.0._load_rsp_ptr_242.i7, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_233.i, i64* %_allin_new_bt_.i, align 8
  %69 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %69, i64* %_RSP_ptr_230.sroa.0.i, align 8
  store volatile i64 %69, i64* %_RBP_ptr_231.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_230.sroa.0.i.0._RSP_ptr_230.sroa.0.0._RSP_ptr_230.sroa.0.0._load_rsp_ptr_242.i7, i64 -12
  %70 = bitcast i8* %_new_gep_1.i to i32*
  store i32 0, i32* %70, align 4, !mcsema_real_eip !25
  %71 = bitcast i64* %_RBP_ptr_231.sroa.0.i to i8**
  %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_3243.i8 = load i8*, i8** %71, align 8
  %_new_gep_4.i = getelementptr i8, i8* %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_3243.i8, i64 -8
  %72 = bitcast i8* %_new_gep_4.i to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !26
  %73 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x8c to i64), i64 184) to i8*), align 8, !mcsema_real_eip !27
  %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_6244.i9 = load i8*, i8** %71, align 8
  %_new_gep_7.i = getelementptr i8, i8* %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_6244.i9, i64 -9
  store i8 %73, i8* %_new_gep_7.i, align 1, !mcsema_real_eip !28
  %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_9245.i10 = load i8*, i8** %71, align 8
  %_new_gep_10.i = getelementptr i8, i8* %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_9245.i10, i64 -8
  %74 = bitcast i8* %_new_gep_10.i to i32*
  %75 = load i32, i32* %74, align 4, !mcsema_real_eip !5
  %76 = add i32 %75, -1
  %77 = xor i32 %76, %75, !mcsema_real_eip !5
  %78 = icmp slt i32 %76, 0
  %79 = and i32 %77, %75, !mcsema_real_eip !5
  %80 = icmp slt i32 %79, 0
  %tmp.i = xor i1 %78, %80
  br i1 %tmp.i, label %block_0x26.i, label %block_0x80.i, !mcsema_real_eip !6

block_0x80.i:                                     ; preds = %driverBlockRaw
  %81 = icmp eq i32 %75, 0
  %82 = icmp eq i32 %76, 0, !mcsema_real_eip !5
  %83 = trunc i32 %76 to i8, !mcsema_real_eip !5
  %84 = tail call i8 @llvm.ctpop.i8(i8 %83) #0, !mcsema_real_eip !5
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  %87 = and i32 %77, 16, !mcsema_real_eip !5
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !5
  %_new_gep_13.i = getelementptr i8, i8* %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_9245.i10, i64 -4
  %89 = bitcast i8* %_new_gep_13.i to i32*
  store i32 1, i32* %89, align 4, !mcsema_real_eip !7
  %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_15246.i11 = load i8*, i8** %71, align 8
  %_new_gep_16.i = getelementptr i8, i8* %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_15246.i11, i64 -4
  %90 = bitcast i8* %_new_gep_16.i to i32*
  %91 = load i32, i32* %90, align 4, !mcsema_real_eip !8
  %92 = zext i32 %91 to i64, !mcsema_real_eip !8
  %_RSP_ptr_230.sroa.0.i.0._RSP_ptr_230.sroa.0.0._RSP_ptr_230.sroa.0.0._load_rsp_ptr_18247.i12 = load i8*, i8** %68, align 8
  %_allin_new_bt_19.i = bitcast i8* %_RSP_ptr_230.sroa.0.i.0._RSP_ptr_230.sroa.0.0._RSP_ptr_230.sroa.0.0._load_rsp_ptr_18247.i12 to i64*
  %93 = load i64, i64* %_allin_new_bt_19.i, align 8
  store volatile i64 %93, i64* %_RBP_ptr_231.sroa.0.i, align 8
  %_new_gep_20.i = getelementptr i8, i8* %_RSP_ptr_230.sroa.0.i.0._RSP_ptr_230.sroa.0.0._RSP_ptr_230.sroa.0.0._load_rsp_ptr_18247.i12, i64 16
  %94 = ptrtoint i8* %_new_gep_20.i to i64
  store volatile i64 %94, i64* %_RSP_ptr_230.sroa.0.i, align 8
  store i64 %92, i64* %RAX.i, align 8, !mcsema_real_eip !9
  %95 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %95, align 8
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !9
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !9
  store i64 %7, i64* %RDI.i, align 8, !mcsema_real_eip !9
  store volatile i64 %94, i64* %RSP.i, align 8
  store volatile i64 %93, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !9
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !9
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !9
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !9
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !9
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !9
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !9
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !9
  store i1 %81, i1* %CF.i, align 1, !mcsema_real_eip !9
  store i1 %86, i1* %PF.i, align 1, !mcsema_real_eip !9
  store i1 %88, i1* %AF.i, align 1, !mcsema_real_eip !9
  store i1 %82, i1* %ZF.i, align 1, !mcsema_real_eip !9
  store i1 %78, i1* %SF.i, align 1, !mcsema_real_eip !9
  store i1 %80, i1* %OF.i, align 1, !mcsema_real_eip !9
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !9
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !9
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !9
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !9
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !9
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !9
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !9
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_230.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_231.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 36, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x26.i:                                     ; preds = %driverBlockRaw
  %96 = sext i32 %75 to i64, !mcsema_real_eip !10
  %_new_gep_28.i = getelementptr i8, i8* %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_9245.i10, i64 -9
  %_new_gep_29.i = getelementptr i8, i8* %_new_gep_28.i, i64 %96
  %97 = load i8, i8* %_new_gep_29.i, align 1, !mcsema_real_eip !11
  %98 = sext i8 %97 to i32, !mcsema_real_eip !11
  %99 = add nsw i32 %98, -97
  %100 = zext i32 %99 to i64, !mcsema_real_eip !12
  %101 = add nsw i32 %98, -119
  %102 = xor i32 %101, %99, !mcsema_real_eip !13
  %103 = and i32 %102, 16
  %104 = icmp eq i32 %103, 0
  %105 = trunc i32 %101 to i8, !mcsema_real_eip !13
  %106 = tail call i8 @llvm.ctpop.i8(i8 %105) #0, !mcsema_real_eip !13
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  %109 = icmp eq i32 %101, 0, !mcsema_real_eip !13
  %110 = icmp slt i8 %97, 119
  %111 = icmp ult i32 %99, 22, !mcsema_real_eip !13
  %112 = and i32 %102, %99, !mcsema_real_eip !13
  %113 = icmp slt i32 %112, 0
  %_new_gep_32.i = getelementptr i8, i8* %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_9245.i10, i64 -24
  %_allin_new_bt_33.i = bitcast i8* %_new_gep_32.i to i64*
  store i64 %100, i64* %_allin_new_bt_33.i, align 8, !mcsema_real_eip !14
  %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_34248.i13 = load i8*, i8** %71, align 8
  %_new_gep_35.i = getelementptr i8, i8* %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_34248.i13, i64 -28
  %114 = bitcast i8* %_new_gep_35.i to i32*
  store i32 %101, i32* %114, align 4, !mcsema_real_eip !15
  %.demorgan.i = or i1 %111, %109
  %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_37249.i = load i64, i64* %_RBP_ptr_231.sroa.0.i, align 8
  %115 = inttoptr i64 %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_37249.i to i8*
  br i1 %.demorgan.i, label %block_0x44.i, label %block_0x66.i, !mcsema_real_eip !16

block_0x66.i:                                     ; preds = %block_0x26.i
  %116 = zext i32 %101 to i64, !mcsema_real_eip !13
  %_new_gep_38.i = getelementptr i8, i8* %115, i64 -4
  %117 = bitcast i8* %_new_gep_38.i to i32*
  store i32 1, i32* %117, align 4, !mcsema_real_eip !17
  %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_40250.i14 = load i8*, i8** %71, align 8
  %_new_gep_41.i = getelementptr i8, i8* %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_40250.i14, i64 -4
  %118 = bitcast i8* %_new_gep_41.i to i32*
  %119 = load i32, i32* %118, align 4, !mcsema_real_eip !8
  %120 = zext i32 %119 to i64, !mcsema_real_eip !8
  %_RSP_ptr_230.sroa.0.i.0._RSP_ptr_230.sroa.0.0._RSP_ptr_230.sroa.0.0._load_rsp_ptr_43251.i15 = load i8*, i8** %68, align 8
  %_allin_new_bt_44.i = bitcast i8* %_RSP_ptr_230.sroa.0.i.0._RSP_ptr_230.sroa.0.0._RSP_ptr_230.sroa.0.0._load_rsp_ptr_43251.i15 to i64*
  %121 = load i64, i64* %_allin_new_bt_44.i, align 8
  store volatile i64 %121, i64* %_RBP_ptr_231.sroa.0.i, align 8
  %_new_gep_46.i = getelementptr i8, i8* %_RSP_ptr_230.sroa.0.i.0._RSP_ptr_230.sroa.0.0._RSP_ptr_230.sroa.0.0._load_rsp_ptr_43251.i15, i64 16
  %122 = ptrtoint i8* %_new_gep_46.i to i64
  store volatile i64 %122, i64* %_RSP_ptr_230.sroa.0.i, align 8
  store i64 %120, i64* %RAX.i, align 8, !mcsema_real_eip !9
  %123 = extractelement <2 x i64> %4, i32 0
  store i64 %123, i64* %RBX.i, align 8, !mcsema_real_eip !9
  store i64 %116, i64* %RCX.i, align 8, !mcsema_real_eip !9
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !9
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !9
  store i64 %7, i64* %RDI.i, align 8, !mcsema_real_eip !9
  store volatile i64 %122, i64* %RSP.i, align 8
  store volatile i64 %121, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !9
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !9
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !9
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !9
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !9
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !9
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !9
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !9
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !9
  store i1 %108, i1* %PF.i, align 1, !mcsema_real_eip !9
  store i1 %104, i1* %AF.i, align 1, !mcsema_real_eip !9
  store i1 false, i1* %ZF.i, align 1, !mcsema_real_eip !9
  store i1 %110, i1* %SF.i, align 1, !mcsema_real_eip !9
  store i1 %113, i1* %OF.i, align 1, !mcsema_real_eip !9
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !9
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !9
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !9
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !9
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !9
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !9
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !9
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_230.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_231.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 36, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x44.i:                                     ; preds = %block_0x26.i
  %_new_gep_51.i = getelementptr i8, i8* %115, i64 -24
  %_allin_new_bt_52.i = bitcast i8* %_new_gep_51.i to i64*
  %124 = load i64, i64* %_allin_new_bt_52.i, align 8, !mcsema_real_eip !18
  %125 = shl i64 %124, 3
  %126 = add i64 %125, ptrtoint (%0* @data_0x8c to i64), !mcsema_real_eip !19
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !19
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !19
  store i64 %124, i64* %RAX.i, align 8, !mcsema_real_eip !20
  %129 = extractelement <2 x i64> %4, i32 0
  store i64 %129, i64* %RBX.i, align 8, !mcsema_real_eip !20
  store i64 %128, i64* %RCX.i, align 8, !mcsema_real_eip !20
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !20
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !20
  store i64 %7, i64* %RDI.i, align 8, !mcsema_real_eip !20
  %_RSP_ptr_230.sroa.0.i.0._RSP_ptr_230.sroa.0.0._RSP_ptr_230.sroa.0.0._load_rsp_ptr_53238.i = load i64, i64* %_RSP_ptr_230.sroa.0.i, align 8
  store volatile i64 %_RSP_ptr_230.sroa.0.i.0._RSP_ptr_230.sroa.0.0._RSP_ptr_230.sroa.0.0._load_rsp_ptr_53238.i, i64* %RSP.i, align 8
  store volatile i64 %_RBP_ptr_231.sroa.0.i.0._RBP_ptr_231.sroa.0.0._RBP_ptr_231.sroa.0.0._load_rbp_ptr_37249.i, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !20
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !20
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !20
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !20
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !20
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !20
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !20
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !20
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !20
  store i1 %111, i1* %CF.i, align 1, !mcsema_real_eip !20
  store i1 %108, i1* %PF.i, align 1, !mcsema_real_eip !20
  store i1 %104, i1* %AF.i, align 1, !mcsema_real_eip !20
  store i1 %109, i1* %ZF.i, align 1, !mcsema_real_eip !20
  store i1 %110, i1* %SF.i, align 1, !mcsema_real_eip !20
  store i1 %113, i1* %OF.i, align 1, !mcsema_real_eip !20
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !20
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !20
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !20
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !20
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !20
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !20
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !20
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !20
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !20
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !20
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !20
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !20
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !20
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !20
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !20
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !20
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !20
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !20
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !20
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !20
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !20
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !20
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !20
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !20
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !20
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !20
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !20
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !20
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !20
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !20
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !20
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !20
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !20
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !20
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !20
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !20
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !20
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !20
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !20
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !20
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !20
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !20
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !20
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !20
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !20
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !20
  call void @llvm.trap() #0
  unreachable

sub_0.exit:                                       ; preds = %block_0x66.i, %block_0x80.i
  ret void
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 92, [8 x i8] c"\09jmp\0917\00"}
!3 = !{i64 114, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!4 = !{i64 120, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!5 = !{i64 28, [19 x i8] c"\09cmpl\09$1, -8(%rbp)\00"}
!6 = !{i64 32, [8 x i8] c"\09jge\0990\00"}
!7 = !{i64 128, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!8 = !{i64 135, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!9 = !{i64 139, [6 x i8] c"\09retq\00"}
!10 = !{i64 38, [23 x i8] c"\09movslq\09-8(%rbp), %rax\00"}
!11 = !{i64 42, [28 x i8] c"\09movsbl\09-9(%rbp,%rax), %ecx\00"}
!12 = !{i64 47, [17 x i8] c"\09addl\09$-97, %ecx\00"}
!13 = !{i64 52, [16 x i8] c"\09subl\09$22, %ecx\00"}
!14 = !{i64 55, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!15 = !{i64 59, [22 x i8] c"\09movl\09%ecx, -28(%rbp)\00"}
!16 = !{i64 62, [7 x i8] c"\09ja\0934\00"}
!17 = !{i64 102, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!18 = !{i64 68, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!19 = !{i64 72, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!20 = !{i64 80, [12 x i8] c"\09jmpq\09*%rcx\00"}
!21 = !{i64 97, [8 x i8] c"\09jmp\0912\00"}
!22 = !{i64 87, [8 x i8] c"\09jmp\0922\00"}
!23 = !{i64 82, [8 x i8] c"\09jmp\0927\00"}
!24 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!25 = !{i64 4, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!26 = !{i64 11, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!27 = !{i64 18, [13 x i8] c"\09movb\090, %al\00"}
!28 = !{i64 25, [20 x i8] c"\09movb\09%al, -9(%rbp)\00"}
