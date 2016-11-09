; ModuleID = 'Output/test_26_1.clang.trans.bc'
source_filename = "Output/test_26_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_80(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !2
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !2
  %RDI_val = alloca i64, !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %2 = load i64, i64* %RDI, !mcsema_real_eip !2
  store i64 %2, i64* %RDI_val, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %3 = load i64, i64* %R10, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %4 = load i64, i64* %R11, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %5 = load i64, i64* %R12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %6 = load i64, i64* %R13, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %7 = load i64, i64* %R14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %8 = load i64, i64* %R15, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %9 = load i64, i64* %RIP, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %10 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %12 = bitcast x86_fp80* %11 to i8*, !mcsema_real_eip !2
  %13 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %12, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %14 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %16 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %29 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %30 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %37 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %38 = bitcast i8* %37 to i64*
  %39 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %40 = load i64, i64* %38, align 4
  store i64 %40, i64* %39, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %41 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %42 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %43 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %44 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %45 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %62 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %63 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -88
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %64 = and i64 %_trans_xor_, 16
  %65 = icmp eq i64 %64, 0
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %66 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !3
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_, 0
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_2, 80
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_2
  %69 = icmp slt i64 %_trans_xor_9, 0
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %70 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %70, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  store i64 42949672970, i64* %_allin_new_bt_15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %71 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 10, i32* %71, !mcsema_real_eip !6
  store i64 24, i64* %RDI_val, !mcsema_real_eip !7
  %72 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !8
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -24
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 %72, i64* %_allin_new_bt_21, !mcsema_real_eip !9
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !10
  %74 = bitcast i64* %73 to i32*
  store i32 5, i32* %74, !mcsema_real_eip !10
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %75 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !11
  %76 = add i64 %75, 4, !mcsema_real_eip !12
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !12
  %78 = bitcast i64* %77 to i32*
  store i32 5, i32* %78, !mcsema_real_eip !12
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %79 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !13
  %80 = add i64 %79, 8, !mcsema_real_eip !14
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !14
  %82 = bitcast i64* %81 to i32*
  store i32 5, i32* %82, !mcsema_real_eip !14
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %83 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !15
  %_load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_32 = ptrtoint i8* %_load_rsp_ptr_31 to i64
  store volatile i64 %_new_ptr2int_32, i64* %RDI_val
  %_new_gep_33 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  store i64 %83, i64* %_allin_new_bt_34, !mcsema_real_eip !16
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -16
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %84 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !17
  %85 = load i64, i64* %RDI_val, !mcsema_real_eip !18
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !18
  store i64 %84, i64* %86, !mcsema_real_eip !18
  store i64 1, i64* %RDI_val, !mcsema_real_eip !19
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -60
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %87 = bitcast i64* %_allin_new_bt_40 to i32*
  store i32 3, i32* %87, !mcsema_real_eip !20
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -60
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %88 = bitcast i64* %_allin_new_bt_43 to i32*
  %89 = load i32, i32* %88, !mcsema_real_eip !21
  %90 = zext i32 %89 to i64, !mcsema_real_eip !21
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -64
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %91 = bitcast i64* %_allin_new_bt_46 to i32*
  store i32 2, i32* %91, !mcsema_real_eip !22
  %92 = and i64 %90, 4294967295
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -64
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %93 = bitcast i64* %_allin_new_bt_49 to i32*
  %94 = load i32, i32* %93, !mcsema_real_eip !23
  %95 = zext i32 %94 to i64, !mcsema_real_eip !23
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -60
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %96 = bitcast i64* %_allin_new_bt_52 to i32*
  %97 = load i32, i32* %96, !mcsema_real_eip !24
  %98 = zext i32 %97 to i64, !mcsema_real_eip !24
  %_load_rsp_ptr_53 = load i8*, i8** %_RSP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rsp_ptr_53, i64 -8
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_55, !mcsema_real_eip !25
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_
  store i64 %84, i64* %RAX, !mcsema_real_eip !25
  store i64 %1, i64* %RBX, !mcsema_real_eip !25
  store i64 1, i64* %RCX, !mcsema_real_eip !25
  store i64 %92, i64* %RDX, !mcsema_real_eip !25
  store i64 2, i64* %RSI, !mcsema_real_eip !25
  %99 = load i64, i64* %RDI_val, !mcsema_real_eip !25
  store i64 %99, i64* %RDI, !mcsema_real_eip !25
  %_new_ptr2int_57 = ptrtoint i8* %_new_gep_54 to i64
  store volatile i64 %_new_ptr2int_57, i64* %RSP
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_59 = ptrtoint i8* %_load_rbp_ptr_58 to i64
  store volatile i64 %_new_ptr2int_59, i64* %RBP
  store i64 %95, i64* %R8, !mcsema_real_eip !25
  store i64 %98, i64* %R9, !mcsema_real_eip !25
  store i64 %3, i64* %R10, !mcsema_real_eip !25
  store i64 %4, i64* %R11, !mcsema_real_eip !25
  store i64 %5, i64* %R12, !mcsema_real_eip !25
  store i64 %6, i64* %R13, !mcsema_real_eip !25
  store i64 %7, i64* %R14, !mcsema_real_eip !25
  store i64 %8, i64* %R15, !mcsema_real_eip !25
  store i64 %9, i64* %RIP, !mcsema_real_eip !25
  store i1 %_trans_icmp_ne_7, i1* %CF, align 1, !mcsema_real_eip !25
  store i1 %68, i1* %PF, align 1, !mcsema_real_eip !25
  store i1 %65, i1* %AF, align 1, !mcsema_real_eip !25
  store i1 %_trans_icmp_eq_, i1* %ZF, align 1, !mcsema_real_eip !25
  store i1 %_trans_icmp_ne_, i1* %SF, align 1, !mcsema_real_eip !25
  store i1 %69, i1* %OF, align 1, !mcsema_real_eip !25
  store i1 %10, i1* %DF, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 128, i32 8, i1 false), !mcsema_real_eip !25
  store i1 %14, i1* %FPU_B, align 1, !mcsema_real_eip !25
  store i1 %15, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  store i3 %16, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  store i1 %17, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  store i1 %18, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  store i1 %19, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  store i1 %20, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  store i1 %21, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  store i1 %22, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  store i1 %23, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  store i1 %24, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  store i1 %25, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  store i1 %26, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  store i1 %27, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  store i1 %28, i1* %FPU_X, align 1, !mcsema_real_eip !25
  store i2 %29, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  store i2 %30, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  store i1 %31, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  store i1 %32, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  store i1 %33, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  store i1 %34, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  store i1 %35, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  store i1 %36, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %100 = load i64, i64* %39, align 4
  store i64 %100, i64* %38, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  store i64 %42, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !25
  store i16 %43, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  store i64 %44, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !25
  store i11 %45, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !25
  store i128 %46, i128* %XMM0, align 1, !mcsema_real_eip !25
  store i128 %47, i128* %XMM1, align 1, !mcsema_real_eip !25
  store i128 %48, i128* %XMM2, align 1, !mcsema_real_eip !25
  store i128 %49, i128* %XMM3, align 1, !mcsema_real_eip !25
  store i128 %50, i128* %XMM4, align 1, !mcsema_real_eip !25
  store i128 %51, i128* %XMM5, align 1, !mcsema_real_eip !25
  store i128 %52, i128* %XMM6, align 1, !mcsema_real_eip !25
  store i128 %53, i128* %XMM7, align 1, !mcsema_real_eip !25
  store i128 %54, i128* %XMM8, align 1, !mcsema_real_eip !25
  store i128 %55, i128* %XMM9, align 1, !mcsema_real_eip !25
  store i128 %56, i128* %XMM10, align 1, !mcsema_real_eip !25
  store i128 %57, i128* %XMM11, align 1, !mcsema_real_eip !25
  store i128 %58, i128* %XMM12, align 1, !mcsema_real_eip !25
  store i128 %59, i128* %XMM13, align 1, !mcsema_real_eip !25
  store i128 %60, i128* %XMM14, align 1, !mcsema_real_eip !25
  store i128 %61, i128* %XMM15, align 1, !mcsema_real_eip !25
  store i64 %62, i64* %STACK_BASE, align 1, !mcsema_real_eip !25
  store i64 %63, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !25
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_94)
  %101 = load i64, i64* %RAX, !mcsema_real_eip !25
  %102 = load i64, i64* %RBX, !mcsema_real_eip !25
  %103 = load i64, i64* %RDX, !mcsema_real_eip !25
  %104 = load i64, i64* %RSI, !mcsema_real_eip !25
  %105 = load i64, i64* %RDI, !mcsema_real_eip !25
  store i64 %105, i64* %RDI_val, !mcsema_real_eip !25
  %106 = load i64, i64* %R8, !mcsema_real_eip !25
  %107 = load i64, i64* %R9, !mcsema_real_eip !25
  %108 = load i64, i64* %R10, !mcsema_real_eip !25
  %109 = load i64, i64* %R11, !mcsema_real_eip !25
  %110 = load i64, i64* %R12, !mcsema_real_eip !25
  %111 = load i64, i64* %R13, !mcsema_real_eip !25
  %112 = load i64, i64* %R14, !mcsema_real_eip !25
  %113 = load i64, i64* %R15, !mcsema_real_eip !25
  %114 = load i64, i64* %RIP, !mcsema_real_eip !25
  %115 = load i1, i1* %DF, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %12, i32 128, i32 4, i1 false), !mcsema_real_eip !25
  %116 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !25
  %117 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  %118 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  %119 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  %120 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  %121 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  %122 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  %123 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  %124 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  %125 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  %126 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  %127 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  %128 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  %129 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  %130 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !25
  %131 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  %132 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  %133 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  %134 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  %135 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  %136 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  %137 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  %138 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %139 = load i64, i64* %38, align 4
  store i64 %139, i64* %39, align 4
  %140 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  %141 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !25
  %142 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  %143 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !25
  %144 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !25
  %145 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !25
  %146 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !25
  %147 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !25
  %148 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !25
  %149 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !25
  %150 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !25
  %151 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !25
  %152 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !25
  %153 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !25
  %154 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !25
  %155 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !25
  %156 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !25
  %157 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !25
  %158 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !25
  %159 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !25
  %160 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !25
  %161 = load i64, i64* %STACK_BASE, !mcsema_real_eip !25
  %162 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !25
  %_load_rbp_ptr_60 = load i8*, i8** %_RBP_ptr_
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -48
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %163 = trunc i64 %103 to i32, !mcsema_real_eip !26
  %164 = bitcast i64* %_allin_new_bt_62 to i32*
  store i32 %163, i32* %164, !mcsema_real_eip !26
  %_load_rbp_ptr_63 = load i8*, i8** %_RBP_ptr_
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -56
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  store i64 %101, i64* %_allin_new_bt_65, !mcsema_real_eip !27
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -56
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %165 = load i64, i64* %_allin_new_bt_68, !mcsema_real_eip !28
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -40
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %165, i64* %_allin_new_bt_70, !mcsema_real_eip !29
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -48
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %166 = bitcast i64* %_allin_new_bt_73 to i32*
  %167 = load i32, i32* %166, !mcsema_real_eip !30
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -32
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %168 = bitcast i64* %_allin_new_bt_76 to i32*
  store i32 %167, i32* %168, !mcsema_real_eip !31
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -40
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %169 = bitcast i64* %_allin_new_bt_79 to i32*
  %170 = load i32, i32* %169, !mcsema_real_eip !32
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -36
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %171 = bitcast i64* %_allin_new_bt_82 to i32*
  %172 = load i32, i32* %171, !mcsema_real_eip !33
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %170, i32 %172)
  %173 = extractvalue { i32, i1 } %uadd, 0
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -32
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %174 = bitcast i64* %_allin_new_bt_85 to i32*
  %175 = load i32, i32* %174, !mcsema_real_eip !34
  %176 = add i32 %173, %175
  %177 = zext i32 %176 to i64, !mcsema_real_eip !34
  %_load_rsp_ptr_86 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_87 = ptrtoint i8* %_load_rsp_ptr_86 to i64
  %uadd212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_87, i64 80)
  %178 = extractvalue { i64, i1 } %uadd212, 0
  %179 = xor i64 %178, %_new_ptr2int_87, !mcsema_real_eip !35
  %180 = and i64 %179, 16
  %181 = icmp eq i64 %180, 0
  %182 = icmp slt i64 %178, 0
  %183 = icmp eq i64 %178, 0, !mcsema_real_eip !35
  %184 = xor i64 %_new_ptr2int_87, -9223372036854775808, !mcsema_real_eip !35
  %185 = and i64 %179, %184, !mcsema_real_eip !35
  %186 = icmp slt i64 %185, 0
  %187 = trunc i64 %178 to i8, !mcsema_real_eip !35
  %188 = tail call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !35
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  %191 = extractvalue { i64, i1 } %uadd212, 1
  %_new_int2ptr_ = inttoptr i64 %178 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %192 = inttoptr i64 %178 to i64*, !mcsema_real_eip !36
  %193 = load i64, i64* %192, !mcsema_real_eip !36
  %_new_int2ptr_88 = inttoptr i64 %193 to i8*
  store volatile i8* %_new_int2ptr_88, i8** %_RBP_ptr_
  %194 = add i64 %178, 16, !mcsema_real_eip !37
  %_new_int2ptr_89 = inttoptr i64 %194 to i8*
  store volatile i8* %_new_int2ptr_89, i8** %_RSP_ptr_
  store i64 %177, i64* %RAX, !mcsema_real_eip !37
  store i64 %102, i64* %RBX, !mcsema_real_eip !37
  store i64 %177, i64* %RCX, !mcsema_real_eip !37
  store i64 %103, i64* %RDX, !mcsema_real_eip !37
  store i64 %104, i64* %RSI, !mcsema_real_eip !37
  %195 = load i64, i64* %RDI_val, !mcsema_real_eip !37
  store i64 %195, i64* %RDI, !mcsema_real_eip !37
  store volatile i64 %194, i64* %RSP
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_93 = ptrtoint i8* %_load_rbp_ptr_92 to i64
  store volatile i64 %_new_ptr2int_93, i64* %RBP
  store i64 %106, i64* %R8, !mcsema_real_eip !37
  store i64 %107, i64* %R9, !mcsema_real_eip !37
  store i64 %108, i64* %R10, !mcsema_real_eip !37
  store i64 %109, i64* %R11, !mcsema_real_eip !37
  store i64 %110, i64* %R12, !mcsema_real_eip !37
  store i64 %111, i64* %R13, !mcsema_real_eip !37
  store i64 %112, i64* %R14, !mcsema_real_eip !37
  store i64 %113, i64* %R15, !mcsema_real_eip !37
  store i64 %114, i64* %RIP, !mcsema_real_eip !37
  store i1 %191, i1* %CF, align 1, !mcsema_real_eip !37
  store i1 %190, i1* %PF, align 1, !mcsema_real_eip !37
  store i1 %181, i1* %AF, align 1, !mcsema_real_eip !37
  store i1 %183, i1* %ZF, align 1, !mcsema_real_eip !37
  store i1 %182, i1* %SF, align 1, !mcsema_real_eip !37
  store i1 %186, i1* %OF, align 1, !mcsema_real_eip !37
  store i1 %115, i1* %DF, align 1, !mcsema_real_eip !37
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 128, i32 8, i1 false), !mcsema_real_eip !37
  store i1 %116, i1* %FPU_B, align 1, !mcsema_real_eip !37
  store i1 %117, i1* %FPU_C3, align 1, !mcsema_real_eip !37
  store i3 %118, i3* %FPU_TOP, align 1, !mcsema_real_eip !37
  store i1 %119, i1* %FPU_C2, align 1, !mcsema_real_eip !37
  store i1 %120, i1* %FPU_C1, align 1, !mcsema_real_eip !37
  store i1 %121, i1* %FPU_C0, align 1, !mcsema_real_eip !37
  store i1 %122, i1* %FPU_ES, align 1, !mcsema_real_eip !37
  store i1 %123, i1* %FPU_SF, align 1, !mcsema_real_eip !37
  store i1 %124, i1* %FPU_PE, align 1, !mcsema_real_eip !37
  store i1 %125, i1* %FPU_UE, align 1, !mcsema_real_eip !37
  store i1 %126, i1* %FPU_OE, align 1, !mcsema_real_eip !37
  store i1 %127, i1* %FPU_ZE, align 1, !mcsema_real_eip !37
  store i1 %128, i1* %FPU_DE, align 1, !mcsema_real_eip !37
  store i1 %129, i1* %FPU_IE, align 1, !mcsema_real_eip !37
  store i1 %130, i1* %FPU_X, align 1, !mcsema_real_eip !37
  store i2 %131, i2* %FPU_RC, align 1, !mcsema_real_eip !37
  store i2 %132, i2* %FPU_PC, align 1, !mcsema_real_eip !37
  store i1 %133, i1* %FPU_PM, align 1, !mcsema_real_eip !37
  store i1 %134, i1* %FPU_UM, align 1, !mcsema_real_eip !37
  store i1 %135, i1* %FPU_OM, align 1, !mcsema_real_eip !37
  store i1 %136, i1* %FPU_ZM, align 1, !mcsema_real_eip !37
  store i1 %137, i1* %FPU_DM, align 1, !mcsema_real_eip !37
  store i1 %138, i1* %FPU_IM, align 1, !mcsema_real_eip !37
  %196 = load i64, i64* %39, align 4
  store i64 %196, i64* %38, align 4
  store i16 %140, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !37
  store i64 %141, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !37
  store i16 %142, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !37
  store i64 %143, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !37
  store i11 %144, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !37
  store i128 %145, i128* %XMM0, align 1, !mcsema_real_eip !37
  store i128 %146, i128* %XMM1, align 1, !mcsema_real_eip !37
  store i128 %147, i128* %XMM2, align 1, !mcsema_real_eip !37
  store i128 %148, i128* %XMM3, align 1, !mcsema_real_eip !37
  store i128 %149, i128* %XMM4, align 1, !mcsema_real_eip !37
  store i128 %150, i128* %XMM5, align 1, !mcsema_real_eip !37
  store i128 %151, i128* %XMM6, align 1, !mcsema_real_eip !37
  store i128 %152, i128* %XMM7, align 1, !mcsema_real_eip !37
  store i128 %153, i128* %XMM8, align 1, !mcsema_real_eip !37
  store i128 %154, i128* %XMM9, align 1, !mcsema_real_eip !37
  store i128 %155, i128* %XMM10, align 1, !mcsema_real_eip !37
  store i128 %156, i128* %XMM11, align 1, !mcsema_real_eip !37
  store i128 %157, i128* %XMM12, align 1, !mcsema_real_eip !37
  store i128 %158, i128* %XMM13, align 1, !mcsema_real_eip !37
  store i128 %159, i128* %XMM14, align 1, !mcsema_real_eip !37
  store i128 %160, i128* %XMM15, align 1, !mcsema_real_eip !37
  store i64 %161, i64* %STACK_BASE, align 1, !mcsema_real_eip !37
  store i64 %162, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !37
  ret void, !mcsema_real_eip !37
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !38
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !38
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !38
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !38
  %1 = load i64, i64* %RBX, !mcsema_real_eip !38
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !38
  %2 = load i64, i64* %RCX, !mcsema_real_eip !38
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !38
  %3 = load i64, i64* %RDX, !mcsema_real_eip !38
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !38
  %4 = load i64, i64* %RSI, !mcsema_real_eip !38
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !38
  %5 = load i64, i64* %RDI, !mcsema_real_eip !38
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !38
  %6 = load i64, i64* %RSP, !mcsema_real_eip !38
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !38
  %7 = load i64, i64* %RBP, !mcsema_real_eip !38
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !38
  %8 = load i64, i64* %R8, !mcsema_real_eip !38
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !38
  %9 = load i64, i64* %R9, !mcsema_real_eip !38
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !38
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !38
  %10 = load i64, i64* %R11, !mcsema_real_eip !38
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !38
  %11 = load i64, i64* %R12, !mcsema_real_eip !38
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !38
  %12 = load i64, i64* %R13, !mcsema_real_eip !38
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !38
  %13 = load i64, i64* %R14, !mcsema_real_eip !38
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !38
  %14 = load i64, i64* %R15, !mcsema_real_eip !38
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !38
  %15 = load i64, i64* %RIP, !mcsema_real_eip !38
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !38
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !38
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !38
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !38
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !38
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !38
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !38
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !38
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !38
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !38
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !38
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !38
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !38
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !38
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !38
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !38
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !38
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !38
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !38
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !38
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !38
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !38
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !38
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !38
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !38
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !38
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !38
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !38
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !38
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !38
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !38
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !38
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !38
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !38
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !38
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !38
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !38
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !38
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !38
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !38
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !38
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !38
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !38
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !38
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !38
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !38
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !38
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !38
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !38
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !38
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !38
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !38
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !38
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !38
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !38
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !38
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !38
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !38
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !38
  %44 = bitcast i8* %43 to i64*
  %45 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %46 = load i64, i64* %44, align 4
  store i64 %46, i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !38
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !38
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !38
  %48 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !38
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !38
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !38
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !38
  %50 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !38
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !38
  %51 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !38
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !38
  %52 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !38
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !38
  %53 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !38
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !38
  %54 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !38
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !38
  %55 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !38
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !38
  %56 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !38
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !38
  %57 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !38
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !38
  %58 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !38
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !38
  %59 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !38
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !38
  %60 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !38
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !38
  %61 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !38
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !38
  %62 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !38
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !38
  %63 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !38
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !38
  %64 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !38
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !38
  %65 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !38
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !38
  %66 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !38
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !38
  %67 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !38
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !38
  %68 = load i64, i64* %STACK_BASE, !mcsema_real_eip !38
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !38
  %69 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !38
  %70 = add i64 %6, -8
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !38
  store i64 %7, i64* %71, !mcsema_real_eip !38
  %72 = add i64 %6, 16, !mcsema_real_eip !39
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !39
  %74 = load i64, i64* %73, !mcsema_real_eip !39
  %75 = add i64 %6, 8, !mcsema_real_eip !40
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !40
  %77 = load i64, i64* %76, !mcsema_real_eip !40
  %78 = add i64 %70, -20, !mcsema_real_eip !41
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !41
  %80 = trunc i64 %5 to i32, !mcsema_real_eip !41
  %81 = bitcast i64* %79 to i32*
  store i32 %80, i32* %81, !mcsema_real_eip !41
  %82 = add i64 %70, -24, !mcsema_real_eip !42
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !42
  %84 = trunc i64 %4 to i32, !mcsema_real_eip !42
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !42
  %86 = add i64 %70, -28, !mcsema_real_eip !43
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !43
  %88 = trunc i64 %3 to i32, !mcsema_real_eip !43
  %89 = bitcast i64* %87 to i32*
  store i32 %88, i32* %89, !mcsema_real_eip !43
  %90 = add i64 %70, -32, !mcsema_real_eip !44
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !44
  %92 = trunc i64 %2 to i32, !mcsema_real_eip !44
  %93 = bitcast i64* %91 to i32*
  store i32 %92, i32* %93, !mcsema_real_eip !44
  %94 = add i64 %70, -36, !mcsema_real_eip !45
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !45
  %96 = trunc i64 %8 to i32, !mcsema_real_eip !45
  %97 = bitcast i64* %95 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !45
  %98 = add i64 %70, -40, !mcsema_real_eip !46
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !46
  %100 = trunc i64 %9 to i32, !mcsema_real_eip !46
  %101 = bitcast i64* %99 to i32*
  store i32 %100, i32* %101, !mcsema_real_eip !46
  %102 = add i64 %70, -48, !mcsema_real_eip !47
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !47
  store i64 %77, i64* %103, !mcsema_real_eip !47
  %104 = add i64 %70, -56, !mcsema_real_eip !48
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !48
  store i64 %74, i64* %105, !mcsema_real_eip !48
  %106 = load i64, i64* %103, !mcsema_real_eip !49
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !50
  %108 = bitcast i64* %107 to i32*
  %109 = load i32, i32* %108, !mcsema_real_eip !50
  %110 = zext i32 %109 to i64, !mcsema_real_eip !50
  %111 = inttoptr i64 %74 to i64*, !mcsema_real_eip !51
  %112 = bitcast i64* %111 to i32*
  %113 = load i32, i32* %112, !mcsema_real_eip !51
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %113, i32 %109)
  %114 = extractvalue { i32, i1 } %uadd, 0
  %115 = add i64 %70, -72, !mcsema_real_eip !52
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !52
  %117 = bitcast i64* %116 to i32*
  store i32 %114, i32* %117, !mcsema_real_eip !52
  %118 = load i64, i64* %103, !mcsema_real_eip !53
  %119 = add i64 %118, 4, !mcsema_real_eip !54
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !54
  %121 = bitcast i64* %120 to i32*
  %122 = load i32, i32* %121, !mcsema_real_eip !54
  %123 = zext i32 %122 to i64, !mcsema_real_eip !54
  %124 = load i64, i64* %105, !mcsema_real_eip !55
  %125 = add i64 %124, 4, !mcsema_real_eip !56
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !56
  %127 = bitcast i64* %126 to i32*
  %128 = load i32, i32* %127, !mcsema_real_eip !56
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %128, i32 %122)
  %129 = extractvalue { i32, i1 } %uadd71, 0
  %130 = add i64 %70, -68, !mcsema_real_eip !57
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !57
  %132 = bitcast i64* %131 to i32*
  store i32 %129, i32* %132, !mcsema_real_eip !57
  %133 = load i64, i64* %103, !mcsema_real_eip !58
  %134 = add i64 %133, 8, !mcsema_real_eip !59
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !59
  %136 = bitcast i64* %135 to i32*
  %137 = load i32, i32* %136, !mcsema_real_eip !59
  %138 = zext i32 %137 to i64, !mcsema_real_eip !59
  %139 = load i64, i64* %105, !mcsema_real_eip !60
  %140 = add i64 %139, 8, !mcsema_real_eip !61
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !61
  %142 = bitcast i64* %141 to i32*
  %143 = load i32, i32* %142, !mcsema_real_eip !61
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %143, i32 %137)
  %144 = extractvalue { i32, i1 } %uadd72, 0
  %145 = xor i32 %144, %137, !mcsema_real_eip !62
  %146 = xor i32 %145, %143, !mcsema_real_eip !62
  %147 = and i32 %146, 16, !mcsema_real_eip !62
  %148 = icmp ne i32 %147, 0, !mcsema_real_eip !62
  %149 = icmp slt i32 %144, 0
  %150 = icmp eq i32 %144, 0, !mcsema_real_eip !62
  %151 = xor i32 %143, -2147483648, !mcsema_real_eip !62
  %152 = xor i32 %151, %137, !mcsema_real_eip !62
  %153 = and i32 %145, %152, !mcsema_real_eip !62
  %154 = icmp slt i32 %153, 0
  %155 = trunc i32 %144 to i8, !mcsema_real_eip !62
  %156 = tail call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !62
  %157 = and i8 %156, 1
  %158 = icmp eq i8 %157, 0
  %159 = extractvalue { i32, i1 } %uadd72, 1
  %160 = zext i32 %144 to i64, !mcsema_real_eip !62
  %161 = add i64 %70, -64, !mcsema_real_eip !63
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !63
  %163 = bitcast i64* %162 to i32*
  store i32 %144, i32* %163, !mcsema_real_eip !63
  %164 = add i64 %70, -8, !mcsema_real_eip !64
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !64
  %166 = bitcast i64* %165 to i32*
  store i32 %144, i32* %166, !mcsema_real_eip !64
  %167 = load i64, i64* %116, !mcsema_real_eip !65
  %168 = add i64 %70, -16, !mcsema_real_eip !66
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !66
  store i64 %167, i64* %169, !mcsema_real_eip !66
  %170 = load i32, i32* %166, !mcsema_real_eip !67
  %171 = zext i32 %170 to i64, !mcsema_real_eip !67
  %172 = add i64 %70, -80, !mcsema_real_eip !68
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !68
  %174 = bitcast i64* %173 to i32*
  store i32 %170, i32* %174, !mcsema_real_eip !68
  %175 = load i64, i64* %169, !mcsema_real_eip !69
  %176 = add i64 %70, -88, !mcsema_real_eip !70
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !70
  store i64 %175, i64* %177, !mcsema_real_eip !70
  %178 = load i32, i32* %174, !mcsema_real_eip !71
  %179 = zext i32 %178 to i64, !mcsema_real_eip !71
  %180 = load i64, i64* %71, !mcsema_real_eip !72
  %181 = add i64 %70, 16, !mcsema_real_eip !73
  store i64 %175, i64* %RAX, !mcsema_real_eip !73
  store i64 %1, i64* %RBX, !mcsema_real_eip !73
  store i64 %171, i64* %RCX, !mcsema_real_eip !73
  store i64 %179, i64* %RDX, !mcsema_real_eip !73
  store i64 %4, i64* %RSI, !mcsema_real_eip !73
  store i64 %5, i64* %RDI, !mcsema_real_eip !73
  store i64 %181, i64* %RSP, !mcsema_real_eip !73
  store i64 %180, i64* %RBP, !mcsema_real_eip !73
  store i64 %8, i64* %R8, !mcsema_real_eip !73
  store i64 %9, i64* %R9, !mcsema_real_eip !73
  store i64 %106, i64* %R10, !mcsema_real_eip !73
  store i64 %10, i64* %R11, !mcsema_real_eip !73
  store i64 %11, i64* %R12, !mcsema_real_eip !73
  store i64 %12, i64* %R13, !mcsema_real_eip !73
  store i64 %13, i64* %R14, !mcsema_real_eip !73
  store i64 %14, i64* %R15, !mcsema_real_eip !73
  store i64 %15, i64* %RIP, !mcsema_real_eip !73
  store i1 %159, i1* %CF, align 1, !mcsema_real_eip !73
  store i1 %158, i1* %PF, align 1, !mcsema_real_eip !73
  store i1 %148, i1* %AF, align 1, !mcsema_real_eip !73
  store i1 %150, i1* %ZF, align 1, !mcsema_real_eip !73
  store i1 %149, i1* %SF, align 1, !mcsema_real_eip !73
  store i1 %154, i1* %OF, align 1, !mcsema_real_eip !73
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !73
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !73
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !73
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !73
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !73
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !73
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !73
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !73
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !73
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !73
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !73
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !73
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !73
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !73
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !73
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !73
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !73
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !73
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !73
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !73
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !73
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !73
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !73
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !73
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !73
  %182 = load i64, i64* %45, align 4
  store i64 %182, i64* %44, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !73
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !73
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !73
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !73
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !73
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !73
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !73
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !73
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !73
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !73
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !73
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !73
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !73
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !73
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !73
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !73
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !73
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !73
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !73
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !73
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !73
  store i64 %68, i64* %STACK_BASE, align 1, !mcsema_real_eip !73
  store i64 %69, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !73
  ret void, !mcsema_real_eip !73
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_80(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !38
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !38
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !38
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !38
  %1 = load i64, i64* %RBX, !mcsema_real_eip !38
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !38
  %2 = load i64, i64* %RCX, !mcsema_real_eip !38
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !38
  %3 = load i64, i64* %RDX, !mcsema_real_eip !38
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !38
  %4 = load i64, i64* %RSI, !mcsema_real_eip !38
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !38
  %5 = load i64, i64* %RDI, !mcsema_real_eip !38
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !38
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !38
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !38
  %6 = load i64, i64* %R8, !mcsema_real_eip !38
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !38
  %7 = load i64, i64* %R9, !mcsema_real_eip !38
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !38
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !38
  %8 = load i64, i64* %R11, !mcsema_real_eip !38
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !38
  %9 = load i64, i64* %R12, !mcsema_real_eip !38
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !38
  %10 = load i64, i64* %R13, !mcsema_real_eip !38
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !38
  %11 = load i64, i64* %R14, !mcsema_real_eip !38
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !38
  %12 = load i64, i64* %R15, !mcsema_real_eip !38
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !38
  %13 = load i64, i64* %RIP, !mcsema_real_eip !38
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !38
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !38
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !38
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !38
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !38
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !38
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !38
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !38
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !38
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !38
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !38
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !38
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !38
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !38
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !38
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !38
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !38
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !38
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !38
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !38
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !38
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !38
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !38
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !38
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !38
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !38
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !38
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !38
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !38
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !38
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !38
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !38
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !38
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !38
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !38
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !38
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !38
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !38
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !38
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !38
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !38
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !38
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !38
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !38
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !38
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !38
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !38
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !38
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !38
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !38
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !38
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !38
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !38
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !38
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !38
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !38
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !38
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !38
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !38
  %42 = bitcast i8* %41 to i64*
  %43 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_ptr_to_int_ = ptrtoint i64* %42 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %44, label %45

; <label>:44:                                     ; preds = %entry
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %45

; <label>:45:                                     ; preds = %entry, %44
  %46 = phi i64* [ %42, %entry ], [ %_address_in_parent_stack_bt_, %44 ]
  %_new_load_ = load i64, i64* %46
  store i64 %_new_load_, i64* %43, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !38
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !38
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !38
  %48 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !38
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !38
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !38
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !38
  %50 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !38
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !38
  %51 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !38
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !38
  %52 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !38
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !38
  %53 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !38
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !38
  %54 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !38
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !38
  %55 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !38
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !38
  %56 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !38
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !38
  %57 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !38
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !38
  %58 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !38
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !38
  %59 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !38
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !38
  %60 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !38
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !38
  %61 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !38
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !38
  %62 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !38
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !38
  %63 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !38
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !38
  %64 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !38
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !38
  %65 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !38
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !38
  %66 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !38
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !38
  %67 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !38
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !38
  %68 = load i64, i64* %STACK_BASE, !mcsema_real_eip !38
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !38
  %69 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !38
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %_ptr_to_int_84 = ptrtoint i64* %_allin_new_bt_2 to i64
  %_offset_above_rbp_87 = sub i64 %_ptr_to_int_84, %_local_end_to_int_
  %_pot_address_in_parent_stack_88 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_87
  %_cond1_89 = icmp ugt i8* %_new_gep_1, %_local_stack_end_ptr_
  %_cond2_1_90 = icmp ugt i8* %_new_gep_1, %_parent_stack_end_ptr_
  %_cond2_2_91 = icmp ult i8* %_new_gep_1, %_parent_stack_start_ptr_
  %_cond2_92 = or i1 %_cond2_1_90, %_cond2_2_91
  %_cond4_93 = icmp ule i8* %_pot_address_in_parent_stack_88, %_parent_stack_end_ptr_
  %_cond1_n_cond2_94 = and i1 %_cond1_89, %_cond2_92
  %_cond1_n_cond2_cond3_95 = and i1 %_cond1_n_cond2_94, %_cond4_93
  br i1 %_cond1_n_cond2_cond3_95, label %70, label %71

; <label>:70:                                     ; preds = %45
  %_address_in_parent_stack_bt_97 = bitcast i8* %_pot_address_in_parent_stack_88 to i64*
  br label %71

; <label>:71:                                     ; preds = %45, %70
  %72 = phi i64* [ %_allin_new_bt_2, %45 ], [ %_address_in_parent_stack_bt_97, %70 ]
  %_new_load_98 = load i64, i64* %72
  %_new_gep_3 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 8
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %_ptr_to_int_99 = ptrtoint i64* %_allin_new_bt_4 to i64
  %_offset_above_rbp_102 = sub i64 %_ptr_to_int_99, %_local_end_to_int_
  %_pot_address_in_parent_stack_103 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_cond1_104 = icmp ugt i8* %_new_gep_3, %_local_stack_end_ptr_
  %_cond2_1_105 = icmp ugt i8* %_new_gep_3, %_parent_stack_end_ptr_
  %_cond2_2_106 = icmp ult i8* %_new_gep_3, %_parent_stack_start_ptr_
  %_cond2_107 = or i1 %_cond2_1_105, %_cond2_2_106
  %_cond4_108 = icmp ule i8* %_pot_address_in_parent_stack_103, %_parent_stack_end_ptr_
  %_cond1_n_cond2_109 = and i1 %_cond1_104, %_cond2_107
  %_cond1_n_cond2_cond3_110 = and i1 %_cond1_n_cond2_109, %_cond4_108
  br i1 %_cond1_n_cond2_cond3_110, label %73, label %74

; <label>:73:                                     ; preds = %71
  %_address_in_parent_stack_bt_112 = bitcast i8* %_pot_address_in_parent_stack_103 to i64*
  br label %74

; <label>:74:                                     ; preds = %71, %73
  %75 = phi i64* [ %_allin_new_bt_4, %71 ], [ %_address_in_parent_stack_bt_112, %73 ]
  %_new_load_113 = load i64, i64* %75
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_, i64 -20
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %76 = trunc i64 %5 to i32, !mcsema_real_eip !41
  %77 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 %76, i32* %77, !mcsema_real_eip !41
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_, i64 -24
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %78 = trunc i64 %4 to i32, !mcsema_real_eip !42
  %79 = bitcast i64* %_allin_new_bt_10 to i32*
  store i32 %78, i32* %79, !mcsema_real_eip !42
  %_new_gep_12 = getelementptr i8, i8* %_new_gep_, i64 -28
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %80 = trunc i64 %3 to i32, !mcsema_real_eip !43
  %81 = bitcast i64* %_allin_new_bt_13 to i32*
  store i32 %80, i32* %81, !mcsema_real_eip !43
  %_new_gep_15 = getelementptr i8, i8* %_new_gep_, i64 -32
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %82 = trunc i64 %2 to i32, !mcsema_real_eip !44
  %83 = bitcast i64* %_allin_new_bt_16 to i32*
  store i32 %82, i32* %83, !mcsema_real_eip !44
  %_new_gep_18 = getelementptr i8, i8* %_new_gep_, i64 -36
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %84 = trunc i64 %6 to i32, !mcsema_real_eip !45
  %85 = bitcast i64* %_allin_new_bt_19 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !45
  %_new_gep_21 = getelementptr i8, i8* %_new_gep_, i64 -40
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %86 = trunc i64 %7 to i32, !mcsema_real_eip !46
  %87 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 %86, i32* %87, !mcsema_real_eip !46
  %_new_gep_24 = getelementptr i8, i8* %_new_gep_, i64 -48
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  store i64 %_new_load_113, i64* %_allin_new_bt_25, !mcsema_real_eip !47
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_, i64 -56
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  store i64 %_new_load_98, i64* %_allin_new_bt_28, !mcsema_real_eip !48
  %_ptr_to_int_114 = ptrtoint i64* %_allin_new_bt_25 to i64
  %_offset_above_rbp_117 = sub i64 %_ptr_to_int_114, %_local_end_to_int_
  %_pot_address_in_parent_stack_118 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_cond1_119 = icmp ugt i8* %_new_gep_24, %_local_stack_end_ptr_
  %_cond2_1_120 = icmp ugt i8* %_new_gep_24, %_parent_stack_end_ptr_
  %_cond2_2_121 = icmp ult i8* %_new_gep_24, %_parent_stack_start_ptr_
  %_cond2_122 = or i1 %_cond2_1_120, %_cond2_2_121
  %_cond4_123 = icmp ule i8* %_pot_address_in_parent_stack_118, %_parent_stack_end_ptr_
  %_cond1_n_cond2_124 = and i1 %_cond1_119, %_cond2_122
  %_cond1_n_cond2_cond3_125 = and i1 %_cond1_n_cond2_124, %_cond4_123
  br i1 %_cond1_n_cond2_cond3_125, label %88, label %89

; <label>:88:                                     ; preds = %74
  %_address_in_parent_stack_bt_127 = bitcast i8* %_pot_address_in_parent_stack_118 to i64*
  br label %89

; <label>:89:                                     ; preds = %74, %88
  %90 = phi i64* [ %_allin_new_bt_25, %74 ], [ %_address_in_parent_stack_bt_127, %88 ]
  %_new_load_128 = load i64, i64* %90
  %91 = inttoptr i64 %_new_load_128 to i64*, !mcsema_real_eip !50
  %92 = bitcast i64* %91 to i32*
  %_ptr_to_int_129 = ptrtoint i32* %92 to i64
  %_ptr_bt_131 = bitcast i32* %92 to i8*
  %_offset_above_rbp_132 = sub i64 %_ptr_to_int_129, %_local_end_to_int_
  %_pot_address_in_parent_stack_133 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_132
  %_cond1_134 = icmp ugt i8* %_ptr_bt_131, %_local_stack_end_ptr_
  %_cond2_1_135 = icmp ugt i8* %_ptr_bt_131, %_parent_stack_end_ptr_
  %_cond2_2_136 = icmp ult i8* %_ptr_bt_131, %_parent_stack_start_ptr_
  %_cond2_137 = or i1 %_cond2_1_135, %_cond2_2_136
  %_cond4_138 = icmp ule i8* %_pot_address_in_parent_stack_133, %_parent_stack_end_ptr_
  %_cond1_n_cond2_139 = and i1 %_cond1_134, %_cond2_137
  %_cond1_n_cond2_cond3_140 = and i1 %_cond1_n_cond2_139, %_cond4_138
  br i1 %_cond1_n_cond2_cond3_140, label %93, label %94

; <label>:93:                                     ; preds = %89
  %_address_in_parent_stack_bt_142 = bitcast i8* %_pot_address_in_parent_stack_133 to i32*
  br label %94

; <label>:94:                                     ; preds = %89, %93
  %95 = phi i32* [ %92, %89 ], [ %_address_in_parent_stack_bt_142, %93 ]
  %_new_load_143 = load i32, i32* %95
  %96 = zext i32 %_new_load_143 to i64, !mcsema_real_eip !50
  %97 = inttoptr i64 %_new_load_98 to i64*, !mcsema_real_eip !51
  %98 = bitcast i64* %97 to i32*
  %_ptr_to_int_144 = ptrtoint i32* %98 to i64
  %_ptr_bt_146 = bitcast i32* %98 to i8*
  %_offset_above_rbp_147 = sub i64 %_ptr_to_int_144, %_local_end_to_int_
  %_pot_address_in_parent_stack_148 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_147
  %_cond1_149 = icmp ugt i8* %_ptr_bt_146, %_local_stack_end_ptr_
  %_cond2_1_150 = icmp ugt i8* %_ptr_bt_146, %_parent_stack_end_ptr_
  %_cond2_2_151 = icmp ult i8* %_ptr_bt_146, %_parent_stack_start_ptr_
  %_cond2_152 = or i1 %_cond2_1_150, %_cond2_2_151
  %_cond4_153 = icmp ule i8* %_pot_address_in_parent_stack_148, %_parent_stack_end_ptr_
  %_cond1_n_cond2_154 = and i1 %_cond1_149, %_cond2_152
  %_cond1_n_cond2_cond3_155 = and i1 %_cond1_n_cond2_154, %_cond4_153
  br i1 %_cond1_n_cond2_cond3_155, label %99, label %100

; <label>:99:                                     ; preds = %94
  %_address_in_parent_stack_bt_157 = bitcast i8* %_pot_address_in_parent_stack_148 to i32*
  br label %100

; <label>:100:                                    ; preds = %94, %99
  %101 = phi i32* [ %98, %94 ], [ %_address_in_parent_stack_bt_157, %99 ]
  %_new_load_158 = load i32, i32* %101
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_158, i32 %_new_load_143)
  %102 = extractvalue { i32, i1 } %uadd, 0
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_, i64 -72
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %103 = bitcast i64* %_allin_new_bt_34 to i32*
  store i32 %102, i32* %103, !mcsema_real_eip !52
  br i1 %_cond1_n_cond2_cond3_125, label %104, label %105

; <label>:104:                                    ; preds = %100
  %_address_in_parent_stack_bt_172 = bitcast i8* %_pot_address_in_parent_stack_118 to i64*
  br label %105

; <label>:105:                                    ; preds = %100, %104
  %106 = phi i64* [ %_allin_new_bt_25, %100 ], [ %_address_in_parent_stack_bt_172, %104 ]
  %_new_load_173 = load i64, i64* %106
  %107 = add i64 %_new_load_173, 4, !mcsema_real_eip !54
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !54
  %109 = bitcast i64* %108 to i32*
  %_ptr_to_int_174 = ptrtoint i32* %109 to i64
  %_ptr_bt_176 = bitcast i32* %109 to i8*
  %_offset_above_rbp_177 = sub i64 %_ptr_to_int_174, %_local_end_to_int_
  %_pot_address_in_parent_stack_178 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_177
  %_cond1_179 = icmp ugt i8* %_ptr_bt_176, %_local_stack_end_ptr_
  %_cond2_1_180 = icmp ugt i8* %_ptr_bt_176, %_parent_stack_end_ptr_
  %_cond2_2_181 = icmp ult i8* %_ptr_bt_176, %_parent_stack_start_ptr_
  %_cond2_182 = or i1 %_cond2_1_180, %_cond2_2_181
  %_cond4_183 = icmp ule i8* %_pot_address_in_parent_stack_178, %_parent_stack_end_ptr_
  %_cond1_n_cond2_184 = and i1 %_cond1_179, %_cond2_182
  %_cond1_n_cond2_cond3_185 = and i1 %_cond1_n_cond2_184, %_cond4_183
  br i1 %_cond1_n_cond2_cond3_185, label %110, label %111

; <label>:110:                                    ; preds = %105
  %_address_in_parent_stack_bt_187 = bitcast i8* %_pot_address_in_parent_stack_178 to i32*
  br label %111

; <label>:111:                                    ; preds = %105, %110
  %112 = phi i32* [ %109, %105 ], [ %_address_in_parent_stack_bt_187, %110 ]
  %_new_load_188 = load i32, i32* %112
  %113 = zext i32 %_new_load_188 to i64, !mcsema_real_eip !54
  %_ptr_to_int_189 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_192 = sub i64 %_ptr_to_int_189, %_local_end_to_int_
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  br i1 %_cond1_n_cond2_cond3_200, label %114, label %115

; <label>:114:                                    ; preds = %111
  %_address_in_parent_stack_bt_202 = bitcast i8* %_pot_address_in_parent_stack_193 to i64*
  br label %115

; <label>:115:                                    ; preds = %111, %114
  %116 = phi i64* [ %_allin_new_bt_28, %111 ], [ %_address_in_parent_stack_bt_202, %114 ]
  %_new_load_203 = load i64, i64* %116
  %117 = add i64 %_new_load_203, 4, !mcsema_real_eip !56
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !56
  %119 = bitcast i64* %118 to i32*
  %_ptr_to_int_204 = ptrtoint i32* %119 to i64
  %_ptr_bt_206 = bitcast i32* %119 to i8*
  %_offset_above_rbp_207 = sub i64 %_ptr_to_int_204, %_local_end_to_int_
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_ptr_bt_206, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_ptr_bt_206, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_ptr_bt_206, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  br i1 %_cond1_n_cond2_cond3_215, label %120, label %121

; <label>:120:                                    ; preds = %115
  %_address_in_parent_stack_bt_217 = bitcast i8* %_pot_address_in_parent_stack_208 to i32*
  br label %121

; <label>:121:                                    ; preds = %115, %120
  %122 = phi i32* [ %119, %115 ], [ %_address_in_parent_stack_bt_217, %120 ]
  %_new_load_218 = load i32, i32* %122
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_218, i32 %_new_load_188)
  %123 = extractvalue { i32, i1 } %uadd71, 0
  %_new_gep_42 = getelementptr i8, i8* %_new_gep_, i64 -68
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %124 = bitcast i64* %_allin_new_bt_43 to i32*
  store i32 %123, i32* %124, !mcsema_real_eip !57
  br i1 %_cond1_n_cond2_cond3_125, label %125, label %126

; <label>:125:                                    ; preds = %121
  %_address_in_parent_stack_bt_232 = bitcast i8* %_pot_address_in_parent_stack_118 to i64*
  br label %126

; <label>:126:                                    ; preds = %121, %125
  %127 = phi i64* [ %_allin_new_bt_25, %121 ], [ %_address_in_parent_stack_bt_232, %125 ]
  %_new_load_233 = load i64, i64* %127
  %128 = add i64 %_new_load_233, 8, !mcsema_real_eip !59
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !59
  %130 = bitcast i64* %129 to i32*
  %_ptr_to_int_234 = ptrtoint i32* %130 to i64
  %_ptr_bt_236 = bitcast i32* %130 to i8*
  %_offset_above_rbp_237 = sub i64 %_ptr_to_int_234, %_local_end_to_int_
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* %_ptr_bt_236, %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* %_ptr_bt_236, %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* %_ptr_bt_236, %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond1_n_cond2_244, %_cond4_243
  br i1 %_cond1_n_cond2_cond3_245, label %131, label %132

; <label>:131:                                    ; preds = %126
  %_address_in_parent_stack_bt_247 = bitcast i8* %_pot_address_in_parent_stack_238 to i32*
  br label %132

; <label>:132:                                    ; preds = %126, %131
  %133 = phi i32* [ %130, %126 ], [ %_address_in_parent_stack_bt_247, %131 ]
  %_new_load_248 = load i32, i32* %133
  %134 = zext i32 %_new_load_248 to i64, !mcsema_real_eip !59
  br i1 %_cond1_n_cond2_cond3_200, label %135, label %136

; <label>:135:                                    ; preds = %132
  %_address_in_parent_stack_bt_262 = bitcast i8* %_pot_address_in_parent_stack_193 to i64*
  br label %136

; <label>:136:                                    ; preds = %132, %135
  %137 = phi i64* [ %_allin_new_bt_28, %132 ], [ %_address_in_parent_stack_bt_262, %135 ]
  %_new_load_263 = load i64, i64* %137
  %138 = add i64 %_new_load_263, 8, !mcsema_real_eip !61
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !61
  %140 = bitcast i64* %139 to i32*
  %_ptr_to_int_264 = ptrtoint i32* %140 to i64
  %_ptr_bt_266 = bitcast i32* %140 to i8*
  %_offset_above_rbp_267 = sub i64 %_ptr_to_int_264, %_local_end_to_int_
  %_pot_address_in_parent_stack_268 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_267
  %_cond1_269 = icmp ugt i8* %_ptr_bt_266, %_local_stack_end_ptr_
  %_cond2_1_270 = icmp ugt i8* %_ptr_bt_266, %_parent_stack_end_ptr_
  %_cond2_2_271 = icmp ult i8* %_ptr_bt_266, %_parent_stack_start_ptr_
  %_cond2_272 = or i1 %_cond2_1_270, %_cond2_2_271
  %_cond4_273 = icmp ule i8* %_pot_address_in_parent_stack_268, %_parent_stack_end_ptr_
  %_cond1_n_cond2_274 = and i1 %_cond1_269, %_cond2_272
  %_cond1_n_cond2_cond3_275 = and i1 %_cond1_n_cond2_274, %_cond4_273
  br i1 %_cond1_n_cond2_cond3_275, label %141, label %142

; <label>:141:                                    ; preds = %136
  %_address_in_parent_stack_bt_277 = bitcast i8* %_pot_address_in_parent_stack_268 to i32*
  br label %142

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i32* [ %140, %136 ], [ %_address_in_parent_stack_bt_277, %141 ]
  %_new_load_278 = load i32, i32* %143
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_278, i32 %_new_load_248)
  %144 = extractvalue { i32, i1 } %uadd72, 0
  %145 = xor i32 %144, %_new_load_248, !mcsema_real_eip !62
  %146 = xor i32 %145, %_new_load_278, !mcsema_real_eip !62
  %147 = and i32 %146, 16, !mcsema_real_eip !62
  %148 = icmp ne i32 %147, 0, !mcsema_real_eip !62
  %149 = icmp slt i32 %144, 0
  %150 = icmp eq i32 %144, 0, !mcsema_real_eip !62
  %151 = xor i32 %_new_load_278, -2147483648, !mcsema_real_eip !62
  %152 = xor i32 %151, %_new_load_248, !mcsema_real_eip !62
  %153 = and i32 %145, %152, !mcsema_real_eip !62
  %154 = icmp slt i32 %153, 0
  %155 = trunc i32 %144 to i8, !mcsema_real_eip !62
  %156 = tail call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !62
  %157 = and i8 %156, 1
  %158 = icmp eq i8 %157, 0
  %159 = extractvalue { i32, i1 } %uadd72, 1
  %160 = zext i32 %144 to i64, !mcsema_real_eip !62
  %_new_gep_51 = getelementptr i8, i8* %_new_gep_, i64 -64
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %161 = bitcast i64* %_allin_new_bt_52 to i32*
  store i32 %144, i32* %161, !mcsema_real_eip !63
  %_new_gep_54 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %162 = bitcast i64* %_allin_new_bt_55 to i32*
  store i32 %144, i32* %162, !mcsema_real_eip !64
  %_ptr_to_int_279 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_282 = sub i64 %_ptr_to_int_279, %_local_end_to_int_
  %_pot_address_in_parent_stack_283 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_282
  %_cond1_284 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_285 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_286 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_287 = or i1 %_cond2_1_285, %_cond2_2_286
  %_cond4_288 = icmp ule i8* %_pot_address_in_parent_stack_283, %_parent_stack_end_ptr_
  %_cond1_n_cond2_289 = and i1 %_cond1_284, %_cond2_287
  %_cond1_n_cond2_cond3_290 = and i1 %_cond1_n_cond2_289, %_cond4_288
  br i1 %_cond1_n_cond2_cond3_290, label %163, label %164

; <label>:163:                                    ; preds = %142
  %_address_in_parent_stack_bt_292 = bitcast i8* %_pot_address_in_parent_stack_283 to i64*
  br label %164

; <label>:164:                                    ; preds = %142, %163
  %165 = phi i64* [ %_allin_new_bt_34, %142 ], [ %_address_in_parent_stack_bt_292, %163 ]
  %_new_load_293 = load i64, i64* %165
  %_new_gep_59 = getelementptr i8, i8* %_new_gep_, i64 -16
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  store i64 %_new_load_293, i64* %_allin_new_bt_60, !mcsema_real_eip !66
  %_ptr_to_int_294 = ptrtoint i32* %162 to i64
  %_ptr_bt_296 = bitcast i32* %162 to i8*
  %_offset_above_rbp_297 = sub i64 %_ptr_to_int_294, %_local_end_to_int_
  %_pot_address_in_parent_stack_298 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_297
  %_cond1_299 = icmp ugt i8* %_ptr_bt_296, %_local_stack_end_ptr_
  %_cond2_1_300 = icmp ugt i8* %_ptr_bt_296, %_parent_stack_end_ptr_
  %_cond2_2_301 = icmp ult i8* %_ptr_bt_296, %_parent_stack_start_ptr_
  %_cond2_302 = or i1 %_cond2_1_300, %_cond2_2_301
  %_cond4_303 = icmp ule i8* %_pot_address_in_parent_stack_298, %_parent_stack_end_ptr_
  %_cond1_n_cond2_304 = and i1 %_cond1_299, %_cond2_302
  %_cond1_n_cond2_cond3_305 = and i1 %_cond1_n_cond2_304, %_cond4_303
  br i1 %_cond1_n_cond2_cond3_305, label %166, label %167

; <label>:166:                                    ; preds = %164
  %_address_in_parent_stack_bt_307 = bitcast i8* %_pot_address_in_parent_stack_298 to i32*
  br label %167

; <label>:167:                                    ; preds = %164, %166
  %168 = phi i32* [ %162, %164 ], [ %_address_in_parent_stack_bt_307, %166 ]
  %_new_load_308 = load i32, i32* %168
  %169 = zext i32 %_new_load_308 to i64, !mcsema_real_eip !67
  %_new_gep_65 = getelementptr i8, i8* %_new_gep_, i64 -80
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %170 = bitcast i64* %_allin_new_bt_66 to i32*
  store i32 %_new_load_308, i32* %170, !mcsema_real_eip !68
  %_ptr_to_int_309 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_312 = sub i64 %_ptr_to_int_309, %_local_end_to_int_
  %_pot_address_in_parent_stack_313 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_312
  %_cond1_314 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_315 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_316 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_317 = or i1 %_cond2_1_315, %_cond2_2_316
  %_cond4_318 = icmp ule i8* %_pot_address_in_parent_stack_313, %_parent_stack_end_ptr_
  %_cond1_n_cond2_319 = and i1 %_cond1_314, %_cond2_317
  %_cond1_n_cond2_cond3_320 = and i1 %_cond1_n_cond2_319, %_cond4_318
  br i1 %_cond1_n_cond2_cond3_320, label %171, label %172

; <label>:171:                                    ; preds = %167
  %_address_in_parent_stack_bt_322 = bitcast i8* %_pot_address_in_parent_stack_313 to i64*
  br label %172

; <label>:172:                                    ; preds = %167, %171
  %173 = phi i64* [ %_allin_new_bt_60, %167 ], [ %_address_in_parent_stack_bt_322, %171 ]
  %_new_load_323 = load i64, i64* %173
  %_new_gep_70 = getelementptr i8, i8* %_new_gep_, i64 -88
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  store i64 %_new_load_323, i64* %_allin_new_bt_71, !mcsema_real_eip !70
  %_ptr_to_int_324 = ptrtoint i64* %_allin_new_bt_71 to i64
  %_offset_above_rbp_327 = sub i64 %_ptr_to_int_324, %_local_end_to_int_
  %_pot_address_in_parent_stack_328 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_327
  %_cond1_329 = icmp ugt i8* %_new_gep_70, %_local_stack_end_ptr_
  %_cond2_1_330 = icmp ugt i8* %_new_gep_70, %_parent_stack_end_ptr_
  %_cond2_2_331 = icmp ult i8* %_new_gep_70, %_parent_stack_start_ptr_
  %_cond2_332 = or i1 %_cond2_1_330, %_cond2_2_331
  %_cond4_333 = icmp ule i8* %_pot_address_in_parent_stack_328, %_parent_stack_end_ptr_
  %_cond1_n_cond2_334 = and i1 %_cond1_329, %_cond2_332
  %_cond1_n_cond2_cond3_335 = and i1 %_cond1_n_cond2_334, %_cond4_333
  br i1 %_cond1_n_cond2_cond3_335, label %174, label %175

; <label>:174:                                    ; preds = %172
  %_address_in_parent_stack_bt_337 = bitcast i8* %_pot_address_in_parent_stack_328 to i64*
  br label %175

; <label>:175:                                    ; preds = %172, %174
  %176 = phi i64* [ %_allin_new_bt_71, %172 ], [ %_address_in_parent_stack_bt_337, %174 ]
  %_new_load_338 = load i64, i64* %176
  %_ptr_to_int_339 = ptrtoint i32* %170 to i64
  %_ptr_bt_341 = bitcast i32* %170 to i8*
  %_offset_above_rbp_342 = sub i64 %_ptr_to_int_339, %_local_end_to_int_
  %_pot_address_in_parent_stack_343 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_342
  %_cond1_344 = icmp ugt i8* %_ptr_bt_341, %_local_stack_end_ptr_
  %_cond2_1_345 = icmp ugt i8* %_ptr_bt_341, %_parent_stack_end_ptr_
  %_cond2_2_346 = icmp ult i8* %_ptr_bt_341, %_parent_stack_start_ptr_
  %_cond2_347 = or i1 %_cond2_1_345, %_cond2_2_346
  %_cond4_348 = icmp ule i8* %_pot_address_in_parent_stack_343, %_parent_stack_end_ptr_
  %_cond1_n_cond2_349 = and i1 %_cond1_344, %_cond2_347
  %_cond1_n_cond2_cond3_350 = and i1 %_cond1_n_cond2_349, %_cond4_348
  br i1 %_cond1_n_cond2_cond3_350, label %177, label %178

; <label>:177:                                    ; preds = %175
  %_address_in_parent_stack_bt_352 = bitcast i8* %_pot_address_in_parent_stack_343 to i32*
  br label %178

; <label>:178:                                    ; preds = %175, %177
  %179 = phi i32* [ %170, %175 ], [ %_address_in_parent_stack_bt_352, %177 ]
  %_new_load_353 = load i32, i32* %179
  %180 = zext i32 %_new_load_353 to i64, !mcsema_real_eip !71
  %_load_rsp_ptr_77 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_78 = bitcast i8* %_load_rsp_ptr_77 to i64*
  %_ptr_to_int_354 = ptrtoint i64* %_allin_new_bt_78 to i64
  %_offset_above_rbp_357 = sub i64 %_ptr_to_int_354, %_local_end_to_int_
  %_pot_address_in_parent_stack_358 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_357
  %_cond1_359 = icmp ugt i8* %_load_rsp_ptr_77, %_local_stack_end_ptr_
  %_cond2_1_360 = icmp ugt i8* %_load_rsp_ptr_77, %_parent_stack_end_ptr_
  %_cond2_2_361 = icmp ult i8* %_load_rsp_ptr_77, %_parent_stack_start_ptr_
  %_cond2_362 = or i1 %_cond2_1_360, %_cond2_2_361
  %_cond4_363 = icmp ule i8* %_pot_address_in_parent_stack_358, %_parent_stack_end_ptr_
  %_cond1_n_cond2_364 = and i1 %_cond1_359, %_cond2_362
  %_cond1_n_cond2_cond3_365 = and i1 %_cond1_n_cond2_364, %_cond4_363
  br i1 %_cond1_n_cond2_cond3_365, label %181, label %182

; <label>:181:                                    ; preds = %178
  %_address_in_parent_stack_bt_367 = bitcast i8* %_pot_address_in_parent_stack_358 to i64*
  br label %182

; <label>:182:                                    ; preds = %178, %181
  %183 = phi i64* [ %_allin_new_bt_78, %178 ], [ %_address_in_parent_stack_bt_367, %181 ]
  %_new_load_368 = load i64, i64* %183
  %_new_int2ptr_ = inttoptr i64 %_new_load_368 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_79 = getelementptr i8, i8* %_load_rsp_ptr_77, i64 16
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_
  store i64 %_new_load_338, i64* %RAX, !mcsema_real_eip !73
  store i64 %1, i64* %RBX, !mcsema_real_eip !73
  store i64 %169, i64* %RCX, !mcsema_real_eip !73
  store i64 %180, i64* %RDX, !mcsema_real_eip !73
  store i64 %4, i64* %RSI, !mcsema_real_eip !73
  store i64 %5, i64* %RDI, !mcsema_real_eip !73
  %_new_ptr2int_81 = ptrtoint i8* %_new_gep_79 to i64
  store volatile i64 %_new_ptr2int_81, i64* %RSP
  %_load_rbp_ptr_82 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_83 = ptrtoint i8* %_load_rbp_ptr_82 to i64
  store volatile i64 %_new_ptr2int_83, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !73
  store i64 %7, i64* %R9, !mcsema_real_eip !73
  store i64 %_new_load_128, i64* %R10, !mcsema_real_eip !73
  store i64 %8, i64* %R11, !mcsema_real_eip !73
  store i64 %9, i64* %R12, !mcsema_real_eip !73
  store i64 %10, i64* %R13, !mcsema_real_eip !73
  store i64 %11, i64* %R14, !mcsema_real_eip !73
  store i64 %12, i64* %R15, !mcsema_real_eip !73
  store i64 %13, i64* %RIP, !mcsema_real_eip !73
  store i1 %159, i1* %CF, align 1, !mcsema_real_eip !73
  store i1 %158, i1* %PF, align 1, !mcsema_real_eip !73
  store i1 %148, i1* %AF, align 1, !mcsema_real_eip !73
  store i1 %150, i1* %ZF, align 1, !mcsema_real_eip !73
  store i1 %149, i1* %SF, align 1, !mcsema_real_eip !73
  store i1 %154, i1* %OF, align 1, !mcsema_real_eip !73
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !73
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !73
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !73
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !73
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !73
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !73
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !73
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !73
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !73
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !73
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !73
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !73
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !73
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !73
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !73
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !73
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !73
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !73
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !73
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !73
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !73
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !73
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !73
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !73
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !73
  %_ptr_to_int_369 = ptrtoint i64* %43 to i64
  %_ptr_bt_371 = bitcast i64* %43 to i8*
  %_offset_above_rbp_372 = sub i64 %_ptr_to_int_369, %_local_end_to_int_
  %_pot_address_in_parent_stack_373 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_372
  %_cond1_374 = icmp ugt i8* %_ptr_bt_371, %_local_stack_end_ptr_
  %_cond2_1_375 = icmp ugt i8* %_ptr_bt_371, %_parent_stack_end_ptr_
  %_cond2_2_376 = icmp ult i8* %_ptr_bt_371, %_parent_stack_start_ptr_
  %_cond2_377 = or i1 %_cond2_1_375, %_cond2_2_376
  %_cond4_378 = icmp ule i8* %_pot_address_in_parent_stack_373, %_parent_stack_end_ptr_
  %_cond1_n_cond2_379 = and i1 %_cond1_374, %_cond2_377
  %_cond1_n_cond2_cond3_380 = and i1 %_cond1_n_cond2_379, %_cond4_378
  br i1 %_cond1_n_cond2_cond3_380, label %184, label %185

; <label>:184:                                    ; preds = %182
  %_address_in_parent_stack_bt_382 = bitcast i8* %_pot_address_in_parent_stack_373 to i64*
  br label %185

; <label>:185:                                    ; preds = %182, %184
  %186 = phi i64* [ %43, %182 ], [ %_address_in_parent_stack_bt_382, %184 ]
  %_new_load_383 = load i64, i64* %186
  store i64 %_new_load_383, i64* %42, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !73
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !73
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !73
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !73
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !73
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !73
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !73
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !73
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !73
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !73
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !73
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !73
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !73
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !73
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !73
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !73
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !73
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !73
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !73
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !73
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !73
  store i64 %68, i64* %STACK_BASE, align 1, !mcsema_real_eip !73
  store i64 %69, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !73
  ret void, !mcsema_real_eip !73
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 128}
!3 = !{i64 132}
!4 = !{i64 136}
!5 = !{i64 153}
!6 = !{i64 157}
!7 = !{i64 169}
!8 = !{i64 171}
!9 = !{i64 176}
!10 = !{i64 180}
!11 = !{i64 186}
!12 = !{i64 190}
!13 = !{i64 197}
!14 = !{i64 201}
!15 = !{i64 208}
!16 = !{i64 215}
!17 = !{i64 219}
!18 = !{i64 223}
!19 = !{i64 241}
!20 = !{i64 243}
!21 = !{i64 248}
!22 = !{i64 252}
!23 = !{i64 258}
!24 = !{i64 262}
!25 = !{i64 266}
!26 = !{i64 271}
!27 = !{i64 274}
!28 = !{i64 278}
!29 = !{i64 282}
!30 = !{i64 286}
!31 = !{i64 289}
!32 = !{i64 292}
!33 = !{i64 295}
!34 = !{i64 298}
!35 = !{i64 303}
!36 = !{i64 307}
!37 = !{i64 308}
!38 = !{i64 0}
!39 = !{i64 4}
!40 = !{i64 8}
!41 = !{i64 12}
!42 = !{i64 15}
!43 = !{i64 18}
!44 = !{i64 21}
!45 = !{i64 24}
!46 = !{i64 28}
!47 = !{i64 32}
!48 = !{i64 36}
!49 = !{i64 40}
!50 = !{i64 44}
!51 = !{i64 47}
!52 = !{i64 51}
!53 = !{i64 54}
!54 = !{i64 58}
!55 = !{i64 61}
!56 = !{i64 65}
!57 = !{i64 70}
!58 = !{i64 73}
!59 = !{i64 77}
!60 = !{i64 80}
!61 = !{i64 84}
!62 = !{i64 87}
!63 = !{i64 89}
!64 = !{i64 92}
!65 = !{i64 95}
!66 = !{i64 99}
!67 = !{i64 103}
!68 = !{i64 106}
!69 = !{i64 109}
!70 = !{i64 113}
!71 = !{i64 121}
!72 = !{i64 124}
!73 = !{i64 125}
