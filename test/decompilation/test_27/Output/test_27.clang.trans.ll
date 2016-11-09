; ModuleID = 'Output/test_27.clang.trans.bc'
source_filename = "Output/test_27.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_100(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 128
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 128
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !2
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %2 = load i64, i64* %R12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %3 = load i64, i64* %R13, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %4 = load i64, i64* %R14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %5 = load i64, i64* %R15, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %6 = load i64, i64* %RIP, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %7 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %9 = bitcast x86_fp80* %8 to i8*, !mcsema_real_eip !2
  %10 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %9, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %11 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %12 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %13 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %14 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %26 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %27 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %34 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %35 = bitcast i8* %34 to i64*
  %36 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %37 = load i64, i64* %35, align 4
  store i64 %37, i64* %36, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %38 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %39 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %40 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %41 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %42 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %43 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %44 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %59 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %60 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -120
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %61 = and i64 %_trans_xor_, 16
  %62 = icmp eq i64 %61, 0
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %63 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !3
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_, 0
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_2, 112
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_2
  %66 = icmp slt i64 %_trans_xor_9, 0
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %67 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %67, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %68 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 10, i32* %68, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %69 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 10, i32* %69, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %70 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 10, i32* %70, !mcsema_real_eip !7
  %71 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %72 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !9
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 %71, i64* %_allin_new_bt_27, !mcsema_real_eip !10
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %73 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !11
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !12
  %75 = bitcast i64* %74 to i32*
  store i32 5, i32* %75, !mcsema_real_eip !12
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %76 = load i64, i64* %_allin_new_bt_33, !mcsema_real_eip !13
  %77 = add i64 %76, 4, !mcsema_real_eip !14
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !14
  %79 = bitcast i64* %78 to i32*
  store i32 5, i32* %79, !mcsema_real_eip !14
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %80 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !15
  %81 = add i64 %80, 8, !mcsema_real_eip !16
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !16
  %83 = bitcast i64* %82 to i32*
  store i32 5, i32* %83, !mcsema_real_eip !16
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %84 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !17
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -16
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %85 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !18
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -48
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  store i64 %85, i64* %_allin_new_bt_44, !mcsema_real_eip !19
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -8
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %86 = bitcast i64* %_allin_new_bt_47 to i32*
  %87 = load i32, i32* %86, !mcsema_real_eip !20
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -40
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %88 = bitcast i64* %_allin_new_bt_50 to i32*
  store i32 %87, i32* %88, !mcsema_real_eip !21
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -48
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %89 = load i64, i64* %_allin_new_bt_53, !mcsema_real_eip !22
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -40
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %90 = bitcast i64* %_allin_new_bt_55 to i32*
  %91 = load i32, i32* %90, !mcsema_real_eip !23
  %92 = zext i32 %91 to i64, !mcsema_real_eip !23
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -56
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  store i64 %72, i64* %_allin_new_bt_58, !mcsema_real_eip !24
  %93 = and i64 %92, 4294967295
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -56
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %94 = load i64, i64* %_allin_new_bt_61, !mcsema_real_eip !25
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -64
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  store i64 %84, i64* %_allin_new_bt_63, !mcsema_real_eip !26
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -68
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %95 = bitcast i64* %_allin_new_bt_66 to i32*
  store i32 3, i32* %95, !mcsema_real_eip !27
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_68 = bitcast i8* %_load_rsp_ptr_67 to i64*
  %96 = bitcast i64* %_allin_new_bt_68 to i32*
  store i32 3, i32* %96, !mcsema_real_eip !28
  %97 = inttoptr i64 %94 to i64*, !mcsema_real_eip !29
  %98 = load i64, i64* %97, !mcsema_real_eip !29
  %_load_rsp_ptr_69 = load i8*, i8** %_RSP_ptr_
  %_new_gep_70 = getelementptr i8, i8* %_load_rsp_ptr_69, i64 8
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  store i64 %98, i64* %_allin_new_bt_71, !mcsema_real_eip !30
  %99 = add i64 %94, 8, !mcsema_real_eip !31
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !31
  %101 = bitcast i64* %100 to i32*
  %102 = load i32, i32* %101, !mcsema_real_eip !31
  %103 = zext i32 %102 to i64, !mcsema_real_eip !31
  %_load_rsp_ptr_72 = load i8*, i8** %_RSP_ptr_
  %_new_gep_73 = getelementptr i8, i8* %_load_rsp_ptr_72, i64 16
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %104 = bitcast i64* %_allin_new_bt_74 to i32*
  store i32 %102, i32* %104, !mcsema_real_eip !32
  %_load_rsp_ptr_75 = load i8*, i8** %_RSP_ptr_
  %_new_gep_76 = getelementptr i8, i8* %_load_rsp_ptr_75, i64 24
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  store i64 %94, i64* %_allin_new_bt_77, !mcsema_real_eip !33
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -64
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %105 = load i64, i64* %_allin_new_bt_80, !mcsema_real_eip !34
  %_load_rsp_ptr_81 = load i8*, i8** %_RSP_ptr_
  %_new_gep_82 = getelementptr i8, i8* %_load_rsp_ptr_81, i64 32
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 %105, i64* %_allin_new_bt_83, !mcsema_real_eip !35
  %_load_rsp_ptr_84 = load i8*, i8** %_RSP_ptr_
  %_new_gep_85 = getelementptr i8, i8* %_load_rsp_ptr_84, i64 -8
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_86, !mcsema_real_eip !36
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %105, i64* %RAX, !mcsema_real_eip !36
  store i64 %1, i64* %RBX, !mcsema_real_eip !36
  store i64 %84, i64* %RCX, !mcsema_real_eip !36
  store i64 %94, i64* %RDX, !mcsema_real_eip !36
  store i64 %93, i64* %RSI, !mcsema_real_eip !36
  store i64 %89, i64* %RDI, !mcsema_real_eip !36
  %_new_ptr2int_88 = ptrtoint i8* %_new_gep_85 to i64
  store volatile i64 %_new_ptr2int_88, i64* %RSP
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_90 = ptrtoint i8* %_load_rbp_ptr_89 to i64
  store volatile i64 %_new_ptr2int_90, i64* %RBP
  store i64 1, i64* %R8, !mcsema_real_eip !36
  store i64 2, i64* %R9, !mcsema_real_eip !36
  store i64 %103, i64* %R10, !mcsema_real_eip !36
  store i64 %94, i64* %R11, !mcsema_real_eip !36
  store i64 %2, i64* %R12, !mcsema_real_eip !36
  store i64 %3, i64* %R13, !mcsema_real_eip !36
  store i64 %4, i64* %R14, !mcsema_real_eip !36
  store i64 %5, i64* %R15, !mcsema_real_eip !36
  store i64 %6, i64* %RIP, !mcsema_real_eip !36
  store i1 %_trans_icmp_ne_7, i1* %CF, align 1, !mcsema_real_eip !36
  store i1 %65, i1* %PF, align 1, !mcsema_real_eip !36
  store i1 %62, i1* %AF, align 1, !mcsema_real_eip !36
  store i1 %_trans_icmp_eq_, i1* %ZF, align 1, !mcsema_real_eip !36
  store i1 %_trans_icmp_ne_, i1* %SF, align 1, !mcsema_real_eip !36
  store i1 %66, i1* %OF, align 1, !mcsema_real_eip !36
  store i1 %7, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  store i1 %11, i1* %FPU_B, align 1, !mcsema_real_eip !36
  store i1 %12, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  store i3 %13, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  store i1 %14, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  store i1 %15, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  store i1 %16, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  store i1 %17, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  store i1 %18, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  store i1 %19, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  store i1 %20, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  store i1 %21, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  store i1 %22, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  store i1 %23, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  store i1 %24, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  store i1 %25, i1* %FPU_X, align 1, !mcsema_real_eip !36
  store i2 %26, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  store i2 %27, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  store i1 %28, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  store i1 %29, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  store i1 %30, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  store i1 %31, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  store i1 %32, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  store i1 %33, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %106 = load i64, i64* %36, align 4
  store i64 %106, i64* %35, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  store i64 %39, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !36
  store i16 %40, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  store i64 %41, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !36
  store i11 %42, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !36
  store i128 %43, i128* %XMM0, align 1, !mcsema_real_eip !36
  store i128 %44, i128* %XMM1, align 1, !mcsema_real_eip !36
  store i128 %45, i128* %XMM2, align 1, !mcsema_real_eip !36
  store i128 %46, i128* %XMM3, align 1, !mcsema_real_eip !36
  store i128 %47, i128* %XMM4, align 1, !mcsema_real_eip !36
  store i128 %48, i128* %XMM5, align 1, !mcsema_real_eip !36
  store i128 %49, i128* %XMM6, align 1, !mcsema_real_eip !36
  store i128 %50, i128* %XMM7, align 1, !mcsema_real_eip !36
  store i128 %51, i128* %XMM8, align 1, !mcsema_real_eip !36
  store i128 %52, i128* %XMM9, align 1, !mcsema_real_eip !36
  store i128 %53, i128* %XMM10, align 1, !mcsema_real_eip !36
  store i128 %54, i128* %XMM11, align 1, !mcsema_real_eip !36
  store i128 %55, i128* %XMM12, align 1, !mcsema_real_eip !36
  store i128 %56, i128* %XMM13, align 1, !mcsema_real_eip !36
  store i128 %57, i128* %XMM14, align 1, !mcsema_real_eip !36
  store i128 %58, i128* %XMM15, align 1, !mcsema_real_eip !36
  store i64 %59, i64* %STACK_BASE, align 1, !mcsema_real_eip !36
  store i64 %60, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !36
  %_load_rbp_ptr_111 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_111)
  %107 = load i64, i64* %RAX, !mcsema_real_eip !36
  %108 = load i64, i64* %RBX, !mcsema_real_eip !36
  %109 = load i64, i64* %RCX, !mcsema_real_eip !36
  %110 = load i64, i64* %RDX, !mcsema_real_eip !36
  %111 = load i64, i64* %RDI, !mcsema_real_eip !36
  %112 = load i64, i64* %R8, !mcsema_real_eip !36
  %113 = load i64, i64* %R9, !mcsema_real_eip !36
  %114 = load i64, i64* %R10, !mcsema_real_eip !36
  %115 = load i64, i64* %R11, !mcsema_real_eip !36
  %116 = load i64, i64* %R12, !mcsema_real_eip !36
  %117 = load i64, i64* %R13, !mcsema_real_eip !36
  %118 = load i64, i64* %R14, !mcsema_real_eip !36
  %119 = load i64, i64* %R15, !mcsema_real_eip !36
  %120 = load i64, i64* %RIP, !mcsema_real_eip !36
  %121 = load i1, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %9, i32 128, i32 4, i1 false), !mcsema_real_eip !36
  %122 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !36
  %123 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  %124 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  %125 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  %126 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  %127 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  %128 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  %129 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  %130 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  %131 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  %132 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  %133 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  %134 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  %135 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  %136 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !36
  %137 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  %138 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  %139 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  %140 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  %141 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  %142 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  %143 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  %144 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %145 = load i64, i64* %35, align 4
  store i64 %145, i64* %36, align 4
  %146 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  %147 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !36
  %148 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  %149 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !36
  %150 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !36
  %151 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !36
  %152 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !36
  %153 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !36
  %154 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !36
  %155 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !36
  %156 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !36
  %157 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !36
  %158 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !36
  %159 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !36
  %160 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !36
  %161 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !36
  %162 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !36
  %163 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !36
  %164 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !36
  %165 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !36
  %166 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !36
  %167 = load i64, i64* %STACK_BASE, !mcsema_real_eip !36
  %168 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !36
  %_load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_91, i64 -32
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  store i64 %107, i64* %_allin_new_bt_93, !mcsema_real_eip !37
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -32
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %169 = load i64, i64* %_allin_new_bt_96, !mcsema_real_eip !38
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !39
  %171 = bitcast i64* %170 to i32*
  %172 = load i32, i32* %171, !mcsema_real_eip !39
  %173 = zext i32 %172 to i64, !mcsema_real_eip !39
  %174 = add i64 %169, 4, !mcsema_real_eip !40
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !40
  %176 = bitcast i64* %175 to i32*
  %177 = load i32, i32* %176, !mcsema_real_eip !40
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %172, i32 %177)
  %178 = extractvalue { i32, i1 } %uadd, 0
  %179 = zext i32 %178 to i64, !mcsema_real_eip !40
  %180 = add i64 %169, 8, !mcsema_real_eip !41
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !41
  %182 = bitcast i64* %181 to i32*
  %183 = load i32, i32* %182, !mcsema_real_eip !41
  %184 = add i32 %178, %183
  %185 = zext i32 %184 to i64, !mcsema_real_eip !41
  %_load_rsp_ptr_103 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_104 = ptrtoint i8* %_load_rsp_ptr_103 to i64
  %uadd212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_104, i64 112)
  %186 = extractvalue { i64, i1 } %uadd212, 0
  %187 = xor i64 %186, %_new_ptr2int_104, !mcsema_real_eip !42
  %188 = and i64 %187, 16
  %189 = icmp eq i64 %188, 0
  %190 = icmp slt i64 %186, 0
  %191 = icmp eq i64 %186, 0, !mcsema_real_eip !42
  %192 = xor i64 %_new_ptr2int_104, -9223372036854775808, !mcsema_real_eip !42
  %193 = and i64 %187, %192, !mcsema_real_eip !42
  %194 = icmp slt i64 %193, 0
  %195 = trunc i64 %186 to i8, !mcsema_real_eip !42
  %196 = tail call i8 @llvm.ctpop.i8(i8 %195), !mcsema_real_eip !42
  %197 = and i8 %196, 1
  %198 = icmp eq i8 %197, 0
  %199 = extractvalue { i64, i1 } %uadd212, 1
  %_new_int2ptr_ = inttoptr i64 %186 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %200 = inttoptr i64 %186 to i64*, !mcsema_real_eip !43
  %201 = load i64, i64* %200, !mcsema_real_eip !43
  %_new_int2ptr_105 = inttoptr i64 %201 to i8*
  store volatile i8* %_new_int2ptr_105, i8** %_RBP_ptr_
  %202 = add i64 %186, 16, !mcsema_real_eip !44
  %_new_int2ptr_106 = inttoptr i64 %202 to i8*
  store volatile i8* %_new_int2ptr_106, i8** %_RSP_ptr_
  store i64 %185, i64* %RAX, !mcsema_real_eip !44
  store i64 %108, i64* %RBX, !mcsema_real_eip !44
  store i64 %109, i64* %RCX, !mcsema_real_eip !44
  store i64 %110, i64* %RDX, !mcsema_real_eip !44
  store i64 %185, i64* %RSI, !mcsema_real_eip !44
  store i64 %111, i64* %RDI, !mcsema_real_eip !44
  store volatile i64 %202, i64* %RSP
  %_load_rbp_ptr_109 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_110 = ptrtoint i8* %_load_rbp_ptr_109 to i64
  store volatile i64 %_new_ptr2int_110, i64* %RBP
  store i64 %112, i64* %R8, !mcsema_real_eip !44
  store i64 %113, i64* %R9, !mcsema_real_eip !44
  store i64 %114, i64* %R10, !mcsema_real_eip !44
  store i64 %115, i64* %R11, !mcsema_real_eip !44
  store i64 %116, i64* %R12, !mcsema_real_eip !44
  store i64 %117, i64* %R13, !mcsema_real_eip !44
  store i64 %118, i64* %R14, !mcsema_real_eip !44
  store i64 %119, i64* %R15, !mcsema_real_eip !44
  store i64 %120, i64* %RIP, !mcsema_real_eip !44
  store i1 %199, i1* %CF, align 1, !mcsema_real_eip !44
  store i1 %198, i1* %PF, align 1, !mcsema_real_eip !44
  store i1 %189, i1* %AF, align 1, !mcsema_real_eip !44
  store i1 %191, i1* %ZF, align 1, !mcsema_real_eip !44
  store i1 %190, i1* %SF, align 1, !mcsema_real_eip !44
  store i1 %194, i1* %OF, align 1, !mcsema_real_eip !44
  store i1 %121, i1* %DF, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 128, i32 8, i1 false), !mcsema_real_eip !44
  store i1 %122, i1* %FPU_B, align 1, !mcsema_real_eip !44
  store i1 %123, i1* %FPU_C3, align 1, !mcsema_real_eip !44
  store i3 %124, i3* %FPU_TOP, align 1, !mcsema_real_eip !44
  store i1 %125, i1* %FPU_C2, align 1, !mcsema_real_eip !44
  store i1 %126, i1* %FPU_C1, align 1, !mcsema_real_eip !44
  store i1 %127, i1* %FPU_C0, align 1, !mcsema_real_eip !44
  store i1 %128, i1* %FPU_ES, align 1, !mcsema_real_eip !44
  store i1 %129, i1* %FPU_SF, align 1, !mcsema_real_eip !44
  store i1 %130, i1* %FPU_PE, align 1, !mcsema_real_eip !44
  store i1 %131, i1* %FPU_UE, align 1, !mcsema_real_eip !44
  store i1 %132, i1* %FPU_OE, align 1, !mcsema_real_eip !44
  store i1 %133, i1* %FPU_ZE, align 1, !mcsema_real_eip !44
  store i1 %134, i1* %FPU_DE, align 1, !mcsema_real_eip !44
  store i1 %135, i1* %FPU_IE, align 1, !mcsema_real_eip !44
  store i1 %136, i1* %FPU_X, align 1, !mcsema_real_eip !44
  store i2 %137, i2* %FPU_RC, align 1, !mcsema_real_eip !44
  store i2 %138, i2* %FPU_PC, align 1, !mcsema_real_eip !44
  store i1 %139, i1* %FPU_PM, align 1, !mcsema_real_eip !44
  store i1 %140, i1* %FPU_UM, align 1, !mcsema_real_eip !44
  store i1 %141, i1* %FPU_OM, align 1, !mcsema_real_eip !44
  store i1 %142, i1* %FPU_ZM, align 1, !mcsema_real_eip !44
  store i1 %143, i1* %FPU_DM, align 1, !mcsema_real_eip !44
  store i1 %144, i1* %FPU_IM, align 1, !mcsema_real_eip !44
  %203 = load i64, i64* %36, align 4
  store i64 %203, i64* %35, align 4
  store i16 %146, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !44
  store i64 %147, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !44
  store i16 %148, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !44
  store i64 %149, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !44
  store i11 %150, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !44
  store i128 %151, i128* %XMM0, align 1, !mcsema_real_eip !44
  store i128 %152, i128* %XMM1, align 1, !mcsema_real_eip !44
  store i128 %153, i128* %XMM2, align 1, !mcsema_real_eip !44
  store i128 %154, i128* %XMM3, align 1, !mcsema_real_eip !44
  store i128 %155, i128* %XMM4, align 1, !mcsema_real_eip !44
  store i128 %156, i128* %XMM5, align 1, !mcsema_real_eip !44
  store i128 %157, i128* %XMM6, align 1, !mcsema_real_eip !44
  store i128 %158, i128* %XMM7, align 1, !mcsema_real_eip !44
  store i128 %159, i128* %XMM8, align 1, !mcsema_real_eip !44
  store i128 %160, i128* %XMM9, align 1, !mcsema_real_eip !44
  store i128 %161, i128* %XMM10, align 1, !mcsema_real_eip !44
  store i128 %162, i128* %XMM11, align 1, !mcsema_real_eip !44
  store i128 %163, i128* %XMM12, align 1, !mcsema_real_eip !44
  store i128 %164, i128* %XMM13, align 1, !mcsema_real_eip !44
  store i128 %165, i128* %XMM14, align 1, !mcsema_real_eip !44
  store i128 %166, i128* %XMM15, align 1, !mcsema_real_eip !44
  store i64 %167, i64* %STACK_BASE, align 1, !mcsema_real_eip !44
  store i64 %168, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
}

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !45
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !45
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !45
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !45
  %1 = load i64, i64* %RBX, !mcsema_real_eip !45
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !45
  %2 = load i64, i64* %RCX, !mcsema_real_eip !45
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !45
  %3 = load i64, i64* %RDX, !mcsema_real_eip !45
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !45
  %4 = load i64, i64* %RSI, !mcsema_real_eip !45
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !45
  %5 = load i64, i64* %RDI, !mcsema_real_eip !45
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !45
  %6 = load i64, i64* %RSP, !mcsema_real_eip !45
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !45
  %7 = load i64, i64* %RBP, !mcsema_real_eip !45
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !45
  %8 = load i64, i64* %R8, !mcsema_real_eip !45
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !45
  %9 = load i64, i64* %R9, !mcsema_real_eip !45
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !45
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !45
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !45
  %10 = load i64, i64* %R12, !mcsema_real_eip !45
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !45
  %11 = load i64, i64* %R13, !mcsema_real_eip !45
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !45
  %12 = load i64, i64* %R14, !mcsema_real_eip !45
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !45
  %13 = load i64, i64* %R15, !mcsema_real_eip !45
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !45
  %14 = load i64, i64* %RIP, !mcsema_real_eip !45
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !45
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !45
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !45
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !45
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !45
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !45
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !45
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !45
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !45
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !45
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !45
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !45
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !45
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !45
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !45
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !45
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !45
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !45
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !45
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !45
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !45
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !45
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !45
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !45
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !45
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !45
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !45
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !45
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !45
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !45
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !45
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !45
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !45
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !45
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !45
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !45
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !45
  %43 = bitcast i8* %42 to i64*
  %44 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %45 = load i64, i64* %43, align 4
  store i64 %45, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !45
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !45
  %47 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !45
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !45
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !45
  %49 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !45
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !45
  %50 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !45
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !45
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !45
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !45
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !45
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !45
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !45
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !45
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !45
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !45
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !45
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !45
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !45
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !45
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !45
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !45
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !45
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !45
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !45
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !45
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !45
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !45
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !45
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !45
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !45
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !45
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !45
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !45
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !45
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !45
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !45
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !45
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !45
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !45
  %67 = load i64, i64* %STACK_BASE, !mcsema_real_eip !45
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !45
  %68 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !45
  %69 = add i64 %6, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !45
  store i64 %7, i64* %70, !mcsema_real_eip !45
  %71 = add i64 %6, -16
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !46
  store i64 %12, i64* %72, !mcsema_real_eip !46
  %73 = add i64 %6, -24
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !47
  store i64 %1, i64* %74, !mcsema_real_eip !47
  %75 = add i64 %6, -120
  %76 = add i64 %69, 48, !mcsema_real_eip !48
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !48
  %78 = load i64, i64* %77, !mcsema_real_eip !48
  %79 = add i64 %69, 40, !mcsema_real_eip !49
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !49
  %81 = load i64, i64* %80, !mcsema_real_eip !49
  %82 = add i64 %69, 24, !mcsema_real_eip !50
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !50
  %84 = add i64 %69, 16, !mcsema_real_eip !51
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !51
  %86 = bitcast i64* %85 to i32*
  %87 = load i32, i32* %86, !mcsema_real_eip !51
  %88 = zext i32 %87 to i64, !mcsema_real_eip !51
  %89 = add i64 %69, -48, !mcsema_real_eip !52
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !52
  store i64 %5, i64* %90, !mcsema_real_eip !52
  %91 = add i64 %69, -40, !mcsema_real_eip !53
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !53
  %93 = trunc i64 %4 to i32, !mcsema_real_eip !53
  %94 = bitcast i64* %92 to i32*
  store i32 %93, i32* %94, !mcsema_real_eip !53
  %95 = load i64, i64* %90, !mcsema_real_eip !54
  %96 = add i64 %69, -32, !mcsema_real_eip !55
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !55
  store i64 %95, i64* %97, !mcsema_real_eip !55
  %98 = load i32, i32* %94, !mcsema_real_eip !56
  %99 = add i64 %69, -24, !mcsema_real_eip !57
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !57
  %101 = bitcast i64* %100 to i32*
  store i32 %98, i32* %101, !mcsema_real_eip !57
  %102 = add i64 %69, -56, !mcsema_real_eip !58
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !58
  store i64 %3, i64* %103, !mcsema_real_eip !58
  %104 = add i64 %69, -64, !mcsema_real_eip !59
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !59
  store i64 %2, i64* %105, !mcsema_real_eip !59
  %106 = add i64 %69, -68, !mcsema_real_eip !60
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !60
  %108 = trunc i64 %8 to i32, !mcsema_real_eip !60
  %109 = bitcast i64* %107 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !60
  %110 = add i64 %69, -72, !mcsema_real_eip !61
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !61
  %112 = trunc i64 %9 to i32, !mcsema_real_eip !61
  %113 = bitcast i64* %111 to i32*
  store i32 %112, i32* %113, !mcsema_real_eip !61
  %114 = add i64 %69, -76, !mcsema_real_eip !62
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !62
  %116 = bitcast i64* %115 to i32*
  store i32 %87, i32* %116, !mcsema_real_eip !62
  %117 = add i64 %69, -88, !mcsema_real_eip !63
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !63
  store i64 %81, i64* %118, !mcsema_real_eip !63
  %119 = add i64 %69, -96, !mcsema_real_eip !64
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !64
  store i64 %78, i64* %120, !mcsema_real_eip !64
  %121 = add i64 %69, -112, !mcsema_real_eip !65
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !65
  store i64 %82, i64* %122, !mcsema_real_eip !65
  %123 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !66
  %124 = add i64 %69, -104, !mcsema_real_eip !67
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !67
  store i64 %123, i64* %125, !mcsema_real_eip !67
  %126 = bitcast i64* %97 to i32*
  %127 = load i32, i32* %126, !mcsema_real_eip !68
  %128 = zext i32 %127 to i64, !mcsema_real_eip !68
  %129 = load i64, i64* %103, !mcsema_real_eip !69
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !70
  %131 = bitcast i64* %130 to i32*
  %132 = load i32, i32* %131, !mcsema_real_eip !70
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %127, i32 %132)
  %133 = extractvalue { i32, i1 } %uadd, 0
  %134 = zext i32 %133 to i64, !mcsema_real_eip !70
  %135 = load i64, i64* %105, !mcsema_real_eip !71
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !72
  %137 = bitcast i64* %136 to i32*
  %138 = load i32, i32* %137, !mcsema_real_eip !72
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %133, i32 %138)
  %139 = extractvalue { i32, i1 } %uadd71, 0
  %140 = zext i32 %139 to i64, !mcsema_real_eip !72
  %141 = load i64, i64* %122, !mcsema_real_eip !73
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !74
  %143 = bitcast i64* %142 to i32*
  %144 = load i32, i32* %143, !mcsema_real_eip !74
  %145 = zext i32 %144 to i64, !mcsema_real_eip !74
  %146 = load i64, i64* %118, !mcsema_real_eip !75
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !76
  %148 = bitcast i64* %147 to i32*
  %149 = load i32, i32* %148, !mcsema_real_eip !76
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %144, i32 %149)
  %150 = extractvalue { i32, i1 } %uadd72, 0
  %151 = zext i32 %150 to i64, !mcsema_real_eip !76
  %152 = load i64, i64* %120, !mcsema_real_eip !77
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !78
  %154 = bitcast i64* %153 to i32*
  %155 = load i32, i32* %154, !mcsema_real_eip !78
  %156 = add i32 %150, %155
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %156, i32 %139)
  %157 = extractvalue { i32, i1 } %uadd74, 0
  %158 = zext i32 %157 to i64, !mcsema_real_eip !79
  %159 = inttoptr i64 %123 to i64*, !mcsema_real_eip !80
  %160 = bitcast i64* %159 to i32*
  store i32 %157, i32* %160, !mcsema_real_eip !80
  %161 = add i64 %69, -28, !mcsema_real_eip !81
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !81
  %163 = bitcast i64* %162 to i32*
  %164 = load i32, i32* %163, !mcsema_real_eip !81
  %165 = zext i32 %164 to i64, !mcsema_real_eip !81
  %166 = load i64, i64* %103, !mcsema_real_eip !82
  %167 = add i64 %166, 4, !mcsema_real_eip !83
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !83
  %169 = bitcast i64* %168 to i32*
  %170 = load i32, i32* %169, !mcsema_real_eip !83
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %164, i32 %170)
  %171 = extractvalue { i32, i1 } %uadd75, 0
  %172 = zext i32 %171 to i64, !mcsema_real_eip !83
  %173 = load i64, i64* %105, !mcsema_real_eip !84
  %174 = add i64 %173, 4, !mcsema_real_eip !85
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !85
  %176 = bitcast i64* %175 to i32*
  %177 = load i32, i32* %176, !mcsema_real_eip !85
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %171, i32 %177)
  %178 = extractvalue { i32, i1 } %uadd76, 0
  %179 = zext i32 %178 to i64, !mcsema_real_eip !85
  %180 = add i64 %141, 4, !mcsema_real_eip !86
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !86
  %182 = bitcast i64* %181 to i32*
  %183 = load i32, i32* %182, !mcsema_real_eip !86
  %184 = zext i32 %183 to i64, !mcsema_real_eip !86
  %185 = load i64, i64* %118, !mcsema_real_eip !87
  %186 = add i64 %185, 4, !mcsema_real_eip !88
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !88
  %188 = bitcast i64* %187 to i32*
  %189 = load i32, i32* %188, !mcsema_real_eip !88
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %183, i32 %189)
  %190 = extractvalue { i32, i1 } %uadd77, 0
  %191 = zext i32 %190 to i64, !mcsema_real_eip !88
  %192 = load i64, i64* %120, !mcsema_real_eip !89
  %193 = add i64 %192, 4, !mcsema_real_eip !90
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !90
  %195 = bitcast i64* %194 to i32*
  %196 = load i32, i32* %195, !mcsema_real_eip !90
  %197 = add i32 %190, %196
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %197, i32 %178)
  %198 = extractvalue { i32, i1 } %uadd79, 0
  %199 = zext i32 %198 to i64, !mcsema_real_eip !91
  %200 = load i64, i64* %125, !mcsema_real_eip !92
  %201 = add i64 %200, 4, !mcsema_real_eip !93
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !93
  %203 = bitcast i64* %202 to i32*
  store i32 %198, i32* %203, !mcsema_real_eip !93
  %204 = load i32, i32* %101, !mcsema_real_eip !94
  %205 = zext i32 %204 to i64, !mcsema_real_eip !94
  %206 = load i64, i64* %103, !mcsema_real_eip !95
  %207 = add i64 %206, 8, !mcsema_real_eip !96
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !96
  %209 = bitcast i64* %208 to i32*
  %210 = load i32, i32* %209, !mcsema_real_eip !96
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %204, i32 %210)
  %211 = extractvalue { i32, i1 } %uadd80, 0
  %212 = zext i32 %211 to i64, !mcsema_real_eip !96
  %213 = load i64, i64* %105, !mcsema_real_eip !97
  %214 = add i64 %213, 8, !mcsema_real_eip !98
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !98
  %216 = bitcast i64* %215 to i32*
  %217 = load i32, i32* %216, !mcsema_real_eip !98
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %211, i32 %217)
  %218 = extractvalue { i32, i1 } %uadd81, 0
  %219 = zext i32 %218 to i64, !mcsema_real_eip !98
  %220 = add i64 %141, 8, !mcsema_real_eip !99
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !99
  %222 = bitcast i64* %221 to i32*
  %223 = load i32, i32* %222, !mcsema_real_eip !99
  %224 = zext i32 %223 to i64, !mcsema_real_eip !99
  %225 = load i64, i64* %118, !mcsema_real_eip !100
  %226 = add i64 %225, 8, !mcsema_real_eip !101
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !101
  %228 = bitcast i64* %227 to i32*
  %229 = load i32, i32* %228, !mcsema_real_eip !101
  %uadd82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %223, i32 %229)
  %230 = extractvalue { i32, i1 } %uadd82, 0
  %231 = zext i32 %230 to i64, !mcsema_real_eip !101
  %232 = load i64, i64* %120, !mcsema_real_eip !102
  %233 = add i64 %232, 8, !mcsema_real_eip !103
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !103
  %235 = bitcast i64* %234 to i32*
  %236 = load i32, i32* %235, !mcsema_real_eip !103
  %237 = add i32 %230, %236
  %238 = zext i32 %237 to i64, !mcsema_real_eip !103
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %218)
  %239 = extractvalue { i32, i1 } %uadd84, 0
  %240 = zext i32 %239 to i64, !mcsema_real_eip !104
  %241 = load i64, i64* %125, !mcsema_real_eip !105
  %242 = add i64 %241, 8, !mcsema_real_eip !106
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !106
  %244 = bitcast i64* %243 to i32*
  store i32 %239, i32* %244, !mcsema_real_eip !106
  %245 = load i64, i64* %125, !mcsema_real_eip !107
  %uadd85 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %75, i64 96)
  %246 = extractvalue { i64, i1 } %uadd85, 0
  %247 = xor i64 %246, %75, !mcsema_real_eip !108
  %248 = and i64 %247, 16, !mcsema_real_eip !108
  %249 = icmp ne i64 %248, 0, !mcsema_real_eip !108
  %250 = icmp slt i64 %246, 0
  %251 = icmp eq i64 %246, 0, !mcsema_real_eip !108
  %252 = xor i64 %75, -9223372036854775808, !mcsema_real_eip !108
  %253 = and i64 %247, %252, !mcsema_real_eip !108
  %254 = icmp slt i64 %253, 0
  %255 = trunc i64 %246 to i8, !mcsema_real_eip !108
  %256 = tail call i8 @llvm.ctpop.i8(i8 %255), !mcsema_real_eip !108
  %257 = and i8 %256, 1
  %258 = icmp eq i8 %257, 0
  %259 = extractvalue { i64, i1 } %uadd85, 1
  %260 = inttoptr i64 %246 to i64*, !mcsema_real_eip !109
  %261 = load i64, i64* %260, !mcsema_real_eip !109
  %262 = add i64 %246, 8, !mcsema_real_eip !109
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !110
  %264 = load i64, i64* %263, !mcsema_real_eip !110
  %265 = add i64 %246, 16, !mcsema_real_eip !110
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !111
  %267 = load i64, i64* %266, !mcsema_real_eip !111
  %268 = add i64 %246, 32, !mcsema_real_eip !112
  store i64 %245, i64* %RAX, !mcsema_real_eip !112
  store i64 %261, i64* %RBX, !mcsema_real_eip !112
  store i64 %241, i64* %RCX, !mcsema_real_eip !112
  store i64 %3, i64* %RDX, !mcsema_real_eip !112
  store i64 %240, i64* %RSI, !mcsema_real_eip !112
  store i64 12, i64* %RDI, !mcsema_real_eip !112
  store i64 %268, i64* %RSP, !mcsema_real_eip !112
  store i64 %267, i64* %RBP, !mcsema_real_eip !112
  store i64 %238, i64* %R8, !mcsema_real_eip !112
  store i64 %9, i64* %R9, !mcsema_real_eip !112
  store i64 %81, i64* %R10, !mcsema_real_eip !112
  store i64 %82, i64* %R11, !mcsema_real_eip !112
  store i64 %10, i64* %R12, !mcsema_real_eip !112
  store i64 %11, i64* %R13, !mcsema_real_eip !112
  store i64 %264, i64* %R14, !mcsema_real_eip !112
  store i64 %13, i64* %R15, !mcsema_real_eip !112
  store i64 %14, i64* %RIP, !mcsema_real_eip !112
  store i1 %259, i1* %CF, align 1, !mcsema_real_eip !112
  store i1 %258, i1* %PF, align 1, !mcsema_real_eip !112
  store i1 %249, i1* %AF, align 1, !mcsema_real_eip !112
  store i1 %251, i1* %ZF, align 1, !mcsema_real_eip !112
  store i1 %250, i1* %SF, align 1, !mcsema_real_eip !112
  store i1 %254, i1* %OF, align 1, !mcsema_real_eip !112
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !112
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !112
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !112
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !112
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !112
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !112
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !112
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !112
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !112
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !112
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !112
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !112
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !112
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !112
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !112
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !112
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !112
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !112
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !112
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !112
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !112
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !112
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !112
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !112
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !112
  %269 = load i64, i64* %44, align 4
  store i64 %269, i64* %43, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !112
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !112
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !112
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !112
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !112
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !112
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !112
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !112
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !112
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !112
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !112
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !112
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !112
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !112
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !112
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !112
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !112
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !112
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !112
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !112
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !112
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !112
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !112
  ret void, !mcsema_real_eip !112
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_100(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 120
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 120
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !45
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !45
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !45
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !45
  %1 = load i64, i64* %RBX, !mcsema_real_eip !45
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !45
  %2 = load i64, i64* %RCX, !mcsema_real_eip !45
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !45
  %3 = load i64, i64* %RDX, !mcsema_real_eip !45
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !45
  %4 = load i64, i64* %RSI, !mcsema_real_eip !45
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !45
  %5 = load i64, i64* %RDI, !mcsema_real_eip !45
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !45
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !45
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !45
  %6 = load i64, i64* %R8, !mcsema_real_eip !45
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !45
  %7 = load i64, i64* %R9, !mcsema_real_eip !45
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !45
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !45
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !45
  %8 = load i64, i64* %R12, !mcsema_real_eip !45
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !45
  %9 = load i64, i64* %R13, !mcsema_real_eip !45
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !45
  %10 = load i64, i64* %R14, !mcsema_real_eip !45
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !45
  %11 = load i64, i64* %R15, !mcsema_real_eip !45
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !45
  %12 = load i64, i64* %RIP, !mcsema_real_eip !45
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !45
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !45
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !45
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !45
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !45
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !45
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !45
  %13 = load i1, i1* %DF, align 1, !mcsema_real_eip !45
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !45
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !45
  %16 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !45
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !45
  %17 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !45
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !45
  %18 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !45
  %19 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !45
  %20 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !45
  %21 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !45
  %22 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !45
  %23 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !45
  %24 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !45
  %25 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !45
  %26 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !45
  %27 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !45
  %28 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !45
  %29 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !45
  %30 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !45
  %31 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !45
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !45
  %32 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !45
  %33 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !45
  %34 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !45
  %35 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !45
  %36 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !45
  %37 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !45
  %38 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !45
  %39 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !45
  %41 = bitcast i8* %40 to i64*
  %42 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_ptr_to_int_ = ptrtoint i64* %41 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %40, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %40, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %40, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %43, label %44

; <label>:43:                                     ; preds = %entry
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %44

; <label>:44:                                     ; preds = %entry, %43
  %45 = phi i64* [ %41, %entry ], [ %_address_in_parent_stack_bt_, %43 ]
  %_new_load_ = load i64, i64* %45
  store i64 %_new_load_, i64* %42, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !45
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !45
  %47 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !45
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !45
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !45
  %49 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !45
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !45
  %50 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !45
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !45
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !45
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !45
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !45
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !45
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !45
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !45
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !45
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !45
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !45
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !45
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !45
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !45
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !45
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !45
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !45
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !45
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !45
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !45
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !45
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !45
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !45
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !45
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !45
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !45
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !45
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !45
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !45
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !45
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !45
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !45
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !45
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !45
  %67 = load i64, i64* %STACK_BASE, !mcsema_real_eip !45
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !45
  %68 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !45
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  store i64 %10, i64* %_allin_new_bt_2, !mcsema_real_eip !46
  %_new_gep_3 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %1, i64* %_allin_new_bt_4, !mcsema_real_eip !47
  %_new_gep_5 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -120
  store volatile i8* %_new_gep_5, i8** %_RSP_ptr_
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 48
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %_ptr_to_int_138 = ptrtoint i64* %_allin_new_bt_16 to i64
  %_offset_above_rbp_141 = sub i64 %_ptr_to_int_138, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_new_gep_15, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_new_gep_15, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_new_gep_15, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  br i1 %_cond1_n_cond2_cond3_149, label %69, label %70

; <label>:69:                                     ; preds = %44
  %_address_in_parent_stack_bt_151 = bitcast i8* %_pot_address_in_parent_stack_142 to i64*
  br label %70

; <label>:70:                                     ; preds = %44, %69
  %71 = phi i64* [ %_allin_new_bt_16, %44 ], [ %_address_in_parent_stack_bt_151, %69 ]
  %_new_load_152 = load i64, i64* %71
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 40
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %_ptr_to_int_153 = ptrtoint i64* %_allin_new_bt_18 to i64
  %_offset_above_rbp_156 = sub i64 %_ptr_to_int_153, %_local_end_to_int_
  %_pot_address_in_parent_stack_157 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_156
  %_cond1_158 = icmp ugt i8* %_new_gep_17, %_local_stack_end_ptr_
  %_cond2_1_159 = icmp ugt i8* %_new_gep_17, %_parent_stack_end_ptr_
  %_cond2_2_160 = icmp ult i8* %_new_gep_17, %_parent_stack_start_ptr_
  %_cond2_161 = or i1 %_cond2_1_159, %_cond2_2_160
  %_cond4_162 = icmp ule i8* %_pot_address_in_parent_stack_157, %_parent_stack_end_ptr_
  %_cond1_n_cond2_163 = and i1 %_cond1_158, %_cond2_161
  %_cond1_n_cond2_cond3_164 = and i1 %_cond1_n_cond2_163, %_cond4_162
  br i1 %_cond1_n_cond2_cond3_164, label %72, label %73

; <label>:72:                                     ; preds = %70
  %_address_in_parent_stack_bt_166 = bitcast i8* %_pot_address_in_parent_stack_157 to i64*
  br label %73

; <label>:73:                                     ; preds = %70, %72
  %74 = phi i64* [ %_allin_new_bt_18, %70 ], [ %_address_in_parent_stack_bt_166, %72 ]
  %_new_load_167 = load i64, i64* %74
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 24
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %75 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !50
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 16
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %76 = bitcast i64* %_allin_new_bt_23 to i32*
  %_ptr_to_int_168 = ptrtoint i32* %76 to i64
  %_ptr_bt_170 = bitcast i32* %76 to i8*
  %_offset_above_rbp_171 = sub i64 %_ptr_to_int_168, %_local_end_to_int_
  %_pot_address_in_parent_stack_172 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_171
  %_cond1_173 = icmp ugt i8* %_ptr_bt_170, %_local_stack_end_ptr_
  %_cond2_1_174 = icmp ugt i8* %_ptr_bt_170, %_parent_stack_end_ptr_
  %_cond2_2_175 = icmp ult i8* %_ptr_bt_170, %_parent_stack_start_ptr_
  %_cond2_176 = or i1 %_cond2_1_174, %_cond2_2_175
  %_cond4_177 = icmp ule i8* %_pot_address_in_parent_stack_172, %_parent_stack_end_ptr_
  %_cond1_n_cond2_178 = and i1 %_cond1_173, %_cond2_176
  %_cond1_n_cond2_cond3_179 = and i1 %_cond1_n_cond2_178, %_cond4_177
  br i1 %_cond1_n_cond2_cond3_179, label %77, label %78

; <label>:77:                                     ; preds = %73
  %_address_in_parent_stack_bt_181 = bitcast i8* %_pot_address_in_parent_stack_172 to i32*
  br label %78

; <label>:78:                                     ; preds = %73, %77
  %79 = phi i32* [ %76, %73 ], [ %_address_in_parent_stack_bt_181, %77 ]
  %_new_load_182 = load i32, i32* %79
  %80 = zext i32 %_new_load_182 to i64, !mcsema_real_eip !51
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -48
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  store i64 %5, i64* %_allin_new_bt_26, !mcsema_real_eip !52
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_27, i64 -40
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %81 = trunc i64 %4 to i32, !mcsema_real_eip !53
  %82 = bitcast i64* %_allin_new_bt_29 to i32*
  store i32 %81, i32* %82, !mcsema_real_eip !53
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -48
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %_ptr_to_int_183 = ptrtoint i64* %_allin_new_bt_32 to i64
  %_offset_above_rbp_186 = sub i64 %_ptr_to_int_183, %_local_end_to_int_
  %_pot_address_in_parent_stack_187 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_186
  %_cond1_188 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_189 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_190 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_191 = or i1 %_cond2_1_189, %_cond2_2_190
  %_cond4_192 = icmp ule i8* %_pot_address_in_parent_stack_187, %_parent_stack_end_ptr_
  %_cond1_n_cond2_193 = and i1 %_cond1_188, %_cond2_191
  %_cond1_n_cond2_cond3_194 = and i1 %_cond1_n_cond2_193, %_cond4_192
  br i1 %_cond1_n_cond2_cond3_194, label %83, label %84

; <label>:83:                                     ; preds = %78
  %_address_in_parent_stack_bt_196 = bitcast i8* %_pot_address_in_parent_stack_187 to i64*
  br label %84

; <label>:84:                                     ; preds = %78, %83
  %85 = phi i64* [ %_allin_new_bt_32, %78 ], [ %_address_in_parent_stack_bt_196, %83 ]
  %_new_load_197 = load i64, i64* %85
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -32
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  store i64 %_new_load_197, i64* %_allin_new_bt_34, !mcsema_real_eip !55
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -40
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %86 = bitcast i64* %_allin_new_bt_37 to i32*
  %_ptr_to_int_198 = ptrtoint i32* %86 to i64
  %_ptr_bt_200 = bitcast i32* %86 to i8*
  %_offset_above_rbp_201 = sub i64 %_ptr_to_int_198, %_local_end_to_int_
  %_pot_address_in_parent_stack_202 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_201
  %_cond1_203 = icmp ugt i8* %_ptr_bt_200, %_local_stack_end_ptr_
  %_cond2_1_204 = icmp ugt i8* %_ptr_bt_200, %_parent_stack_end_ptr_
  %_cond2_2_205 = icmp ult i8* %_ptr_bt_200, %_parent_stack_start_ptr_
  %_cond2_206 = or i1 %_cond2_1_204, %_cond2_2_205
  %_cond4_207 = icmp ule i8* %_pot_address_in_parent_stack_202, %_parent_stack_end_ptr_
  %_cond1_n_cond2_208 = and i1 %_cond1_203, %_cond2_206
  %_cond1_n_cond2_cond3_209 = and i1 %_cond1_n_cond2_208, %_cond4_207
  br i1 %_cond1_n_cond2_cond3_209, label %87, label %88

; <label>:87:                                     ; preds = %84
  %_address_in_parent_stack_bt_211 = bitcast i8* %_pot_address_in_parent_stack_202 to i32*
  br label %88

; <label>:88:                                     ; preds = %84, %87
  %89 = phi i32* [ %86, %84 ], [ %_address_in_parent_stack_bt_211, %87 ]
  %_new_load_212 = load i32, i32* %89
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -24
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %90 = bitcast i64* %_allin_new_bt_40 to i32*
  store i32 %_new_load_212, i32* %90, !mcsema_real_eip !57
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -56
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  store i64 %3, i64* %_allin_new_bt_43, !mcsema_real_eip !58
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -64
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  store i64 %2, i64* %_allin_new_bt_46, !mcsema_real_eip !59
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -68
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %91 = trunc i64 %6 to i32, !mcsema_real_eip !60
  %92 = bitcast i64* %_allin_new_bt_49 to i32*
  store i32 %91, i32* %92, !mcsema_real_eip !60
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -72
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %93 = trunc i64 %7 to i32, !mcsema_real_eip !61
  %94 = bitcast i64* %_allin_new_bt_52 to i32*
  store i32 %93, i32* %94, !mcsema_real_eip !61
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -76
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %95 = bitcast i64* %_allin_new_bt_55 to i32*
  store i32 %_new_load_182, i32* %95, !mcsema_real_eip !62
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -88
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  store i64 %_new_load_167, i64* %_allin_new_bt_58, !mcsema_real_eip !63
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -96
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  store i64 %_new_load_152, i64* %_allin_new_bt_61, !mcsema_real_eip !64
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -112
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  store i64 %75, i64* %_allin_new_bt_64, !mcsema_real_eip !65
  %96 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !66
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -104
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  store i64 %96, i64* %_allin_new_bt_67, !mcsema_real_eip !67
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -32
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %97 = bitcast i64* %_allin_new_bt_70 to i32*
  %_ptr_to_int_213 = ptrtoint i32* %97 to i64
  %_ptr_bt_215 = bitcast i32* %97 to i8*
  %_offset_above_rbp_216 = sub i64 %_ptr_to_int_213, %_local_end_to_int_
  %_pot_address_in_parent_stack_217 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_cond1_218 = icmp ugt i8* %_ptr_bt_215, %_local_stack_end_ptr_
  %_cond2_1_219 = icmp ugt i8* %_ptr_bt_215, %_parent_stack_end_ptr_
  %_cond2_2_220 = icmp ult i8* %_ptr_bt_215, %_parent_stack_start_ptr_
  %_cond2_221 = or i1 %_cond2_1_219, %_cond2_2_220
  %_cond4_222 = icmp ule i8* %_pot_address_in_parent_stack_217, %_parent_stack_end_ptr_
  %_cond1_n_cond2_223 = and i1 %_cond1_218, %_cond2_221
  %_cond1_n_cond2_cond3_224 = and i1 %_cond1_n_cond2_223, %_cond4_222
  br i1 %_cond1_n_cond2_cond3_224, label %98, label %99

; <label>:98:                                     ; preds = %88
  %_address_in_parent_stack_bt_226 = bitcast i8* %_pot_address_in_parent_stack_217 to i32*
  br label %99

; <label>:99:                                     ; preds = %88, %98
  %100 = phi i32* [ %97, %88 ], [ %_address_in_parent_stack_bt_226, %98 ]
  %_new_load_227 = load i32, i32* %100
  %101 = zext i32 %_new_load_227 to i64, !mcsema_real_eip !68
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -56
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %_ptr_to_int_228 = ptrtoint i64* %_allin_new_bt_73 to i64
  %_offset_above_rbp_231 = sub i64 %_ptr_to_int_228, %_local_end_to_int_
  %_pot_address_in_parent_stack_232 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_231
  %_cond1_233 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond2_1_234 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_2_235 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_236 = or i1 %_cond2_1_234, %_cond2_2_235
  %_cond4_237 = icmp ule i8* %_pot_address_in_parent_stack_232, %_parent_stack_end_ptr_
  %_cond1_n_cond2_238 = and i1 %_cond1_233, %_cond2_236
  %_cond1_n_cond2_cond3_239 = and i1 %_cond1_n_cond2_238, %_cond4_237
  br i1 %_cond1_n_cond2_cond3_239, label %102, label %103

; <label>:102:                                    ; preds = %99
  %_address_in_parent_stack_bt_241 = bitcast i8* %_pot_address_in_parent_stack_232 to i64*
  br label %103

; <label>:103:                                    ; preds = %99, %102
  %104 = phi i64* [ %_allin_new_bt_73, %99 ], [ %_address_in_parent_stack_bt_241, %102 ]
  %_new_load_242 = load i64, i64* %104
  %105 = inttoptr i64 %_new_load_242 to i64*, !mcsema_real_eip !70
  %106 = bitcast i64* %105 to i32*
  %_ptr_to_int_243 = ptrtoint i32* %106 to i64
  %_ptr_bt_245 = bitcast i32* %106 to i8*
  %_offset_above_rbp_246 = sub i64 %_ptr_to_int_243, %_local_end_to_int_
  %_pot_address_in_parent_stack_247 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_246
  %_cond1_248 = icmp ugt i8* %_ptr_bt_245, %_local_stack_end_ptr_
  %_cond2_1_249 = icmp ugt i8* %_ptr_bt_245, %_parent_stack_end_ptr_
  %_cond2_2_250 = icmp ult i8* %_ptr_bt_245, %_parent_stack_start_ptr_
  %_cond2_251 = or i1 %_cond2_1_249, %_cond2_2_250
  %_cond4_252 = icmp ule i8* %_pot_address_in_parent_stack_247, %_parent_stack_end_ptr_
  %_cond1_n_cond2_253 = and i1 %_cond1_248, %_cond2_251
  %_cond1_n_cond2_cond3_254 = and i1 %_cond1_n_cond2_253, %_cond4_252
  br i1 %_cond1_n_cond2_cond3_254, label %107, label %108

; <label>:107:                                    ; preds = %103
  %_address_in_parent_stack_bt_256 = bitcast i8* %_pot_address_in_parent_stack_247 to i32*
  br label %108

; <label>:108:                                    ; preds = %103, %107
  %109 = phi i32* [ %106, %103 ], [ %_address_in_parent_stack_bt_256, %107 ]
  %_new_load_257 = load i32, i32* %109
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_227, i32 %_new_load_257)
  %110 = extractvalue { i32, i1 } %uadd, 0
  %111 = zext i32 %110 to i64, !mcsema_real_eip !70
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -64
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %_ptr_to_int_258 = ptrtoint i64* %_allin_new_bt_76 to i64
  %_offset_above_rbp_261 = sub i64 %_ptr_to_int_258, %_local_end_to_int_
  %_pot_address_in_parent_stack_262 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_261
  %_cond1_263 = icmp ugt i8* %_new_gep_75, %_local_stack_end_ptr_
  %_cond2_1_264 = icmp ugt i8* %_new_gep_75, %_parent_stack_end_ptr_
  %_cond2_2_265 = icmp ult i8* %_new_gep_75, %_parent_stack_start_ptr_
  %_cond2_266 = or i1 %_cond2_1_264, %_cond2_2_265
  %_cond4_267 = icmp ule i8* %_pot_address_in_parent_stack_262, %_parent_stack_end_ptr_
  %_cond1_n_cond2_268 = and i1 %_cond1_263, %_cond2_266
  %_cond1_n_cond2_cond3_269 = and i1 %_cond1_n_cond2_268, %_cond4_267
  br i1 %_cond1_n_cond2_cond3_269, label %112, label %113

; <label>:112:                                    ; preds = %108
  %_address_in_parent_stack_bt_271 = bitcast i8* %_pot_address_in_parent_stack_262 to i64*
  br label %113

; <label>:113:                                    ; preds = %108, %112
  %114 = phi i64* [ %_allin_new_bt_76, %108 ], [ %_address_in_parent_stack_bt_271, %112 ]
  %_new_load_272 = load i64, i64* %114
  %115 = inttoptr i64 %_new_load_272 to i64*, !mcsema_real_eip !72
  %116 = bitcast i64* %115 to i32*
  %_ptr_to_int_273 = ptrtoint i32* %116 to i64
  %_ptr_bt_275 = bitcast i32* %116 to i8*
  %_offset_above_rbp_276 = sub i64 %_ptr_to_int_273, %_local_end_to_int_
  %_pot_address_in_parent_stack_277 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_276
  %_cond1_278 = icmp ugt i8* %_ptr_bt_275, %_local_stack_end_ptr_
  %_cond2_1_279 = icmp ugt i8* %_ptr_bt_275, %_parent_stack_end_ptr_
  %_cond2_2_280 = icmp ult i8* %_ptr_bt_275, %_parent_stack_start_ptr_
  %_cond2_281 = or i1 %_cond2_1_279, %_cond2_2_280
  %_cond4_282 = icmp ule i8* %_pot_address_in_parent_stack_277, %_parent_stack_end_ptr_
  %_cond1_n_cond2_283 = and i1 %_cond1_278, %_cond2_281
  %_cond1_n_cond2_cond3_284 = and i1 %_cond1_n_cond2_283, %_cond4_282
  br i1 %_cond1_n_cond2_cond3_284, label %117, label %118

; <label>:117:                                    ; preds = %113
  %_address_in_parent_stack_bt_286 = bitcast i8* %_pot_address_in_parent_stack_277 to i32*
  br label %118

; <label>:118:                                    ; preds = %113, %117
  %119 = phi i32* [ %116, %113 ], [ %_address_in_parent_stack_bt_286, %117 ]
  %_new_load_287 = load i32, i32* %119
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %110, i32 %_new_load_287)
  %120 = extractvalue { i32, i1 } %uadd71, 0
  %121 = zext i32 %120 to i64, !mcsema_real_eip !72
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -112
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %_ptr_to_int_288 = ptrtoint i64* %_allin_new_bt_79 to i64
  %_offset_above_rbp_291 = sub i64 %_ptr_to_int_288, %_local_end_to_int_
  %_pot_address_in_parent_stack_292 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_291
  %_cond1_293 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_294 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_295 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_296 = or i1 %_cond2_1_294, %_cond2_2_295
  %_cond4_297 = icmp ule i8* %_pot_address_in_parent_stack_292, %_parent_stack_end_ptr_
  %_cond1_n_cond2_298 = and i1 %_cond1_293, %_cond2_296
  %_cond1_n_cond2_cond3_299 = and i1 %_cond1_n_cond2_298, %_cond4_297
  br i1 %_cond1_n_cond2_cond3_299, label %122, label %123

; <label>:122:                                    ; preds = %118
  %_address_in_parent_stack_bt_301 = bitcast i8* %_pot_address_in_parent_stack_292 to i64*
  br label %123

; <label>:123:                                    ; preds = %118, %122
  %124 = phi i64* [ %_allin_new_bt_79, %118 ], [ %_address_in_parent_stack_bt_301, %122 ]
  %_new_load_302 = load i64, i64* %124
  %125 = inttoptr i64 %_new_load_302 to i64*, !mcsema_real_eip !74
  %126 = bitcast i64* %125 to i32*
  %_ptr_to_int_303 = ptrtoint i32* %126 to i64
  %_ptr_bt_305 = bitcast i32* %126 to i8*
  %_offset_above_rbp_306 = sub i64 %_ptr_to_int_303, %_local_end_to_int_
  %_pot_address_in_parent_stack_307 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_306
  %_cond1_308 = icmp ugt i8* %_ptr_bt_305, %_local_stack_end_ptr_
  %_cond2_1_309 = icmp ugt i8* %_ptr_bt_305, %_parent_stack_end_ptr_
  %_cond2_2_310 = icmp ult i8* %_ptr_bt_305, %_parent_stack_start_ptr_
  %_cond2_311 = or i1 %_cond2_1_309, %_cond2_2_310
  %_cond4_312 = icmp ule i8* %_pot_address_in_parent_stack_307, %_parent_stack_end_ptr_
  %_cond1_n_cond2_313 = and i1 %_cond1_308, %_cond2_311
  %_cond1_n_cond2_cond3_314 = and i1 %_cond1_n_cond2_313, %_cond4_312
  br i1 %_cond1_n_cond2_cond3_314, label %127, label %128

; <label>:127:                                    ; preds = %123
  %_address_in_parent_stack_bt_316 = bitcast i8* %_pot_address_in_parent_stack_307 to i32*
  br label %128

; <label>:128:                                    ; preds = %123, %127
  %129 = phi i32* [ %126, %123 ], [ %_address_in_parent_stack_bt_316, %127 ]
  %_new_load_317 = load i32, i32* %129
  %130 = zext i32 %_new_load_317 to i64, !mcsema_real_eip !74
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -88
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %_ptr_to_int_318 = ptrtoint i64* %_allin_new_bt_82 to i64
  %_offset_above_rbp_321 = sub i64 %_ptr_to_int_318, %_local_end_to_int_
  %_pot_address_in_parent_stack_322 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_321
  %_cond1_323 = icmp ugt i8* %_new_gep_81, %_local_stack_end_ptr_
  %_cond2_1_324 = icmp ugt i8* %_new_gep_81, %_parent_stack_end_ptr_
  %_cond2_2_325 = icmp ult i8* %_new_gep_81, %_parent_stack_start_ptr_
  %_cond2_326 = or i1 %_cond2_1_324, %_cond2_2_325
  %_cond4_327 = icmp ule i8* %_pot_address_in_parent_stack_322, %_parent_stack_end_ptr_
  %_cond1_n_cond2_328 = and i1 %_cond1_323, %_cond2_326
  %_cond1_n_cond2_cond3_329 = and i1 %_cond1_n_cond2_328, %_cond4_327
  br i1 %_cond1_n_cond2_cond3_329, label %131, label %132

; <label>:131:                                    ; preds = %128
  %_address_in_parent_stack_bt_331 = bitcast i8* %_pot_address_in_parent_stack_322 to i64*
  br label %132

; <label>:132:                                    ; preds = %128, %131
  %133 = phi i64* [ %_allin_new_bt_82, %128 ], [ %_address_in_parent_stack_bt_331, %131 ]
  %_new_load_332 = load i64, i64* %133
  %134 = inttoptr i64 %_new_load_332 to i64*, !mcsema_real_eip !76
  %135 = bitcast i64* %134 to i32*
  %_ptr_to_int_333 = ptrtoint i32* %135 to i64
  %_ptr_bt_335 = bitcast i32* %135 to i8*
  %_offset_above_rbp_336 = sub i64 %_ptr_to_int_333, %_local_end_to_int_
  %_pot_address_in_parent_stack_337 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_336
  %_cond1_338 = icmp ugt i8* %_ptr_bt_335, %_local_stack_end_ptr_
  %_cond2_1_339 = icmp ugt i8* %_ptr_bt_335, %_parent_stack_end_ptr_
  %_cond2_2_340 = icmp ult i8* %_ptr_bt_335, %_parent_stack_start_ptr_
  %_cond2_341 = or i1 %_cond2_1_339, %_cond2_2_340
  %_cond4_342 = icmp ule i8* %_pot_address_in_parent_stack_337, %_parent_stack_end_ptr_
  %_cond1_n_cond2_343 = and i1 %_cond1_338, %_cond2_341
  %_cond1_n_cond2_cond3_344 = and i1 %_cond1_n_cond2_343, %_cond4_342
  br i1 %_cond1_n_cond2_cond3_344, label %136, label %137

; <label>:136:                                    ; preds = %132
  %_address_in_parent_stack_bt_346 = bitcast i8* %_pot_address_in_parent_stack_337 to i32*
  br label %137

; <label>:137:                                    ; preds = %132, %136
  %138 = phi i32* [ %135, %132 ], [ %_address_in_parent_stack_bt_346, %136 ]
  %_new_load_347 = load i32, i32* %138
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_317, i32 %_new_load_347)
  %139 = extractvalue { i32, i1 } %uadd72, 0
  %140 = zext i32 %139 to i64, !mcsema_real_eip !76
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -96
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %_ptr_to_int_348 = ptrtoint i64* %_allin_new_bt_85 to i64
  %_offset_above_rbp_351 = sub i64 %_ptr_to_int_348, %_local_end_to_int_
  %_pot_address_in_parent_stack_352 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_351
  %_cond1_353 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_354 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_355 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_356 = or i1 %_cond2_1_354, %_cond2_2_355
  %_cond4_357 = icmp ule i8* %_pot_address_in_parent_stack_352, %_parent_stack_end_ptr_
  %_cond1_n_cond2_358 = and i1 %_cond1_353, %_cond2_356
  %_cond1_n_cond2_cond3_359 = and i1 %_cond1_n_cond2_358, %_cond4_357
  br i1 %_cond1_n_cond2_cond3_359, label %141, label %142

; <label>:141:                                    ; preds = %137
  %_address_in_parent_stack_bt_361 = bitcast i8* %_pot_address_in_parent_stack_352 to i64*
  br label %142

; <label>:142:                                    ; preds = %137, %141
  %143 = phi i64* [ %_allin_new_bt_85, %137 ], [ %_address_in_parent_stack_bt_361, %141 ]
  %_new_load_362 = load i64, i64* %143
  %144 = inttoptr i64 %_new_load_362 to i64*, !mcsema_real_eip !78
  %145 = bitcast i64* %144 to i32*
  %_ptr_to_int_363 = ptrtoint i32* %145 to i64
  %_ptr_bt_365 = bitcast i32* %145 to i8*
  %_offset_above_rbp_366 = sub i64 %_ptr_to_int_363, %_local_end_to_int_
  %_pot_address_in_parent_stack_367 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_366
  %_cond1_368 = icmp ugt i8* %_ptr_bt_365, %_local_stack_end_ptr_
  %_cond2_1_369 = icmp ugt i8* %_ptr_bt_365, %_parent_stack_end_ptr_
  %_cond2_2_370 = icmp ult i8* %_ptr_bt_365, %_parent_stack_start_ptr_
  %_cond2_371 = or i1 %_cond2_1_369, %_cond2_2_370
  %_cond4_372 = icmp ule i8* %_pot_address_in_parent_stack_367, %_parent_stack_end_ptr_
  %_cond1_n_cond2_373 = and i1 %_cond1_368, %_cond2_371
  %_cond1_n_cond2_cond3_374 = and i1 %_cond1_n_cond2_373, %_cond4_372
  br i1 %_cond1_n_cond2_cond3_374, label %146, label %147

; <label>:146:                                    ; preds = %142
  %_address_in_parent_stack_bt_376 = bitcast i8* %_pot_address_in_parent_stack_367 to i32*
  br label %147

; <label>:147:                                    ; preds = %142, %146
  %148 = phi i32* [ %145, %142 ], [ %_address_in_parent_stack_bt_376, %146 ]
  %_new_load_377 = load i32, i32* %148
  %149 = add i32 %139, %_new_load_377
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %149, i32 %120)
  %150 = extractvalue { i32, i1 } %uadd74, 0
  %151 = zext i32 %150 to i64, !mcsema_real_eip !79
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -104
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %_ptr_to_int_378 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_381 = sub i64 %_ptr_to_int_378, %_local_end_to_int_
  %_pot_address_in_parent_stack_382 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_381
  %_cond1_383 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_384 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_385 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_386 = or i1 %_cond2_1_384, %_cond2_2_385
  %_cond4_387 = icmp ule i8* %_pot_address_in_parent_stack_382, %_parent_stack_end_ptr_
  %_cond1_n_cond2_388 = and i1 %_cond1_383, %_cond2_386
  %_cond1_n_cond2_cond3_389 = and i1 %_cond1_n_cond2_388, %_cond4_387
  br i1 %_cond1_n_cond2_cond3_389, label %152, label %153

; <label>:152:                                    ; preds = %147
  %_address_in_parent_stack_bt_391 = bitcast i8* %_pot_address_in_parent_stack_382 to i64*
  br label %153

; <label>:153:                                    ; preds = %147, %152
  %154 = phi i64* [ %_allin_new_bt_88, %147 ], [ %_address_in_parent_stack_bt_391, %152 ]
  %_new_load_392 = load i64, i64* %154
  %155 = inttoptr i64 %_new_load_392 to i64*, !mcsema_real_eip !80
  %156 = bitcast i64* %155 to i32*
  store i32 %150, i32* %156, !mcsema_real_eip !80
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -28
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %157 = bitcast i64* %_allin_new_bt_91 to i32*
  %_ptr_to_int_393 = ptrtoint i32* %157 to i64
  %_ptr_bt_395 = bitcast i32* %157 to i8*
  %_offset_above_rbp_396 = sub i64 %_ptr_to_int_393, %_local_end_to_int_
  %_pot_address_in_parent_stack_397 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_396
  %_cond1_398 = icmp ugt i8* %_ptr_bt_395, %_local_stack_end_ptr_
  %_cond2_1_399 = icmp ugt i8* %_ptr_bt_395, %_parent_stack_end_ptr_
  %_cond2_2_400 = icmp ult i8* %_ptr_bt_395, %_parent_stack_start_ptr_
  %_cond2_401 = or i1 %_cond2_1_399, %_cond2_2_400
  %_cond4_402 = icmp ule i8* %_pot_address_in_parent_stack_397, %_parent_stack_end_ptr_
  %_cond1_n_cond2_403 = and i1 %_cond1_398, %_cond2_401
  %_cond1_n_cond2_cond3_404 = and i1 %_cond1_n_cond2_403, %_cond4_402
  br i1 %_cond1_n_cond2_cond3_404, label %158, label %159

; <label>:158:                                    ; preds = %153
  %_address_in_parent_stack_bt_406 = bitcast i8* %_pot_address_in_parent_stack_397 to i32*
  br label %159

; <label>:159:                                    ; preds = %153, %158
  %160 = phi i32* [ %157, %153 ], [ %_address_in_parent_stack_bt_406, %158 ]
  %_new_load_407 = load i32, i32* %160
  %161 = zext i32 %_new_load_407 to i64, !mcsema_real_eip !81
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -56
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %_ptr_to_int_408 = ptrtoint i64* %_allin_new_bt_94 to i64
  %_offset_above_rbp_411 = sub i64 %_ptr_to_int_408, %_local_end_to_int_
  %_pot_address_in_parent_stack_412 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_411
  %_cond1_413 = icmp ugt i8* %_new_gep_93, %_local_stack_end_ptr_
  %_cond2_1_414 = icmp ugt i8* %_new_gep_93, %_parent_stack_end_ptr_
  %_cond2_2_415 = icmp ult i8* %_new_gep_93, %_parent_stack_start_ptr_
  %_cond2_416 = or i1 %_cond2_1_414, %_cond2_2_415
  %_cond4_417 = icmp ule i8* %_pot_address_in_parent_stack_412, %_parent_stack_end_ptr_
  %_cond1_n_cond2_418 = and i1 %_cond1_413, %_cond2_416
  %_cond1_n_cond2_cond3_419 = and i1 %_cond1_n_cond2_418, %_cond4_417
  br i1 %_cond1_n_cond2_cond3_419, label %162, label %163

; <label>:162:                                    ; preds = %159
  %_address_in_parent_stack_bt_421 = bitcast i8* %_pot_address_in_parent_stack_412 to i64*
  br label %163

; <label>:163:                                    ; preds = %159, %162
  %164 = phi i64* [ %_allin_new_bt_94, %159 ], [ %_address_in_parent_stack_bt_421, %162 ]
  %_new_load_422 = load i64, i64* %164
  %165 = add i64 %_new_load_422, 4, !mcsema_real_eip !83
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !83
  %167 = bitcast i64* %166 to i32*
  %_ptr_to_int_423 = ptrtoint i32* %167 to i64
  %_ptr_bt_425 = bitcast i32* %167 to i8*
  %_offset_above_rbp_426 = sub i64 %_ptr_to_int_423, %_local_end_to_int_
  %_pot_address_in_parent_stack_427 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_426
  %_cond1_428 = icmp ugt i8* %_ptr_bt_425, %_local_stack_end_ptr_
  %_cond2_1_429 = icmp ugt i8* %_ptr_bt_425, %_parent_stack_end_ptr_
  %_cond2_2_430 = icmp ult i8* %_ptr_bt_425, %_parent_stack_start_ptr_
  %_cond2_431 = or i1 %_cond2_1_429, %_cond2_2_430
  %_cond4_432 = icmp ule i8* %_pot_address_in_parent_stack_427, %_parent_stack_end_ptr_
  %_cond1_n_cond2_433 = and i1 %_cond1_428, %_cond2_431
  %_cond1_n_cond2_cond3_434 = and i1 %_cond1_n_cond2_433, %_cond4_432
  br i1 %_cond1_n_cond2_cond3_434, label %168, label %169

; <label>:168:                                    ; preds = %163
  %_address_in_parent_stack_bt_436 = bitcast i8* %_pot_address_in_parent_stack_427 to i32*
  br label %169

; <label>:169:                                    ; preds = %163, %168
  %170 = phi i32* [ %167, %163 ], [ %_address_in_parent_stack_bt_436, %168 ]
  %_new_load_437 = load i32, i32* %170
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_407, i32 %_new_load_437)
  %171 = extractvalue { i32, i1 } %uadd75, 0
  %172 = zext i32 %171 to i64, !mcsema_real_eip !83
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -64
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %_ptr_to_int_438 = ptrtoint i64* %_allin_new_bt_97 to i64
  %_offset_above_rbp_441 = sub i64 %_ptr_to_int_438, %_local_end_to_int_
  %_pot_address_in_parent_stack_442 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_441
  %_cond1_443 = icmp ugt i8* %_new_gep_96, %_local_stack_end_ptr_
  %_cond2_1_444 = icmp ugt i8* %_new_gep_96, %_parent_stack_end_ptr_
  %_cond2_2_445 = icmp ult i8* %_new_gep_96, %_parent_stack_start_ptr_
  %_cond2_446 = or i1 %_cond2_1_444, %_cond2_2_445
  %_cond4_447 = icmp ule i8* %_pot_address_in_parent_stack_442, %_parent_stack_end_ptr_
  %_cond1_n_cond2_448 = and i1 %_cond1_443, %_cond2_446
  %_cond1_n_cond2_cond3_449 = and i1 %_cond1_n_cond2_448, %_cond4_447
  br i1 %_cond1_n_cond2_cond3_449, label %173, label %174

; <label>:173:                                    ; preds = %169
  %_address_in_parent_stack_bt_451 = bitcast i8* %_pot_address_in_parent_stack_442 to i64*
  br label %174

; <label>:174:                                    ; preds = %169, %173
  %175 = phi i64* [ %_allin_new_bt_97, %169 ], [ %_address_in_parent_stack_bt_451, %173 ]
  %_new_load_452 = load i64, i64* %175
  %176 = add i64 %_new_load_452, 4, !mcsema_real_eip !85
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !85
  %178 = bitcast i64* %177 to i32*
  %_ptr_to_int_453 = ptrtoint i32* %178 to i64
  %_ptr_bt_455 = bitcast i32* %178 to i8*
  %_offset_above_rbp_456 = sub i64 %_ptr_to_int_453, %_local_end_to_int_
  %_pot_address_in_parent_stack_457 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_456
  %_cond1_458 = icmp ugt i8* %_ptr_bt_455, %_local_stack_end_ptr_
  %_cond2_1_459 = icmp ugt i8* %_ptr_bt_455, %_parent_stack_end_ptr_
  %_cond2_2_460 = icmp ult i8* %_ptr_bt_455, %_parent_stack_start_ptr_
  %_cond2_461 = or i1 %_cond2_1_459, %_cond2_2_460
  %_cond4_462 = icmp ule i8* %_pot_address_in_parent_stack_457, %_parent_stack_end_ptr_
  %_cond1_n_cond2_463 = and i1 %_cond1_458, %_cond2_461
  %_cond1_n_cond2_cond3_464 = and i1 %_cond1_n_cond2_463, %_cond4_462
  br i1 %_cond1_n_cond2_cond3_464, label %179, label %180

; <label>:179:                                    ; preds = %174
  %_address_in_parent_stack_bt_466 = bitcast i8* %_pot_address_in_parent_stack_457 to i32*
  br label %180

; <label>:180:                                    ; preds = %174, %179
  %181 = phi i32* [ %178, %174 ], [ %_address_in_parent_stack_bt_466, %179 ]
  %_new_load_467 = load i32, i32* %181
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %171, i32 %_new_load_467)
  %182 = extractvalue { i32, i1 } %uadd76, 0
  %183 = zext i32 %182 to i64, !mcsema_real_eip !85
  %184 = add i64 %_new_load_302, 4, !mcsema_real_eip !86
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !86
  %186 = bitcast i64* %185 to i32*
  %_ptr_to_int_468 = ptrtoint i32* %186 to i64
  %_ptr_bt_470 = bitcast i32* %186 to i8*
  %_offset_above_rbp_471 = sub i64 %_ptr_to_int_468, %_local_end_to_int_
  %_pot_address_in_parent_stack_472 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_471
  %_cond1_473 = icmp ugt i8* %_ptr_bt_470, %_local_stack_end_ptr_
  %_cond2_1_474 = icmp ugt i8* %_ptr_bt_470, %_parent_stack_end_ptr_
  %_cond2_2_475 = icmp ult i8* %_ptr_bt_470, %_parent_stack_start_ptr_
  %_cond2_476 = or i1 %_cond2_1_474, %_cond2_2_475
  %_cond4_477 = icmp ule i8* %_pot_address_in_parent_stack_472, %_parent_stack_end_ptr_
  %_cond1_n_cond2_478 = and i1 %_cond1_473, %_cond2_476
  %_cond1_n_cond2_cond3_479 = and i1 %_cond1_n_cond2_478, %_cond4_477
  br i1 %_cond1_n_cond2_cond3_479, label %187, label %188

; <label>:187:                                    ; preds = %180
  %_address_in_parent_stack_bt_481 = bitcast i8* %_pot_address_in_parent_stack_472 to i32*
  br label %188

; <label>:188:                                    ; preds = %180, %187
  %189 = phi i32* [ %186, %180 ], [ %_address_in_parent_stack_bt_481, %187 ]
  %_new_load_482 = load i32, i32* %189
  %190 = zext i32 %_new_load_482 to i64, !mcsema_real_eip !86
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -88
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %_ptr_to_int_483 = ptrtoint i64* %_allin_new_bt_100 to i64
  %_offset_above_rbp_486 = sub i64 %_ptr_to_int_483, %_local_end_to_int_
  %_pot_address_in_parent_stack_487 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_486
  %_cond1_488 = icmp ugt i8* %_new_gep_99, %_local_stack_end_ptr_
  %_cond2_1_489 = icmp ugt i8* %_new_gep_99, %_parent_stack_end_ptr_
  %_cond2_2_490 = icmp ult i8* %_new_gep_99, %_parent_stack_start_ptr_
  %_cond2_491 = or i1 %_cond2_1_489, %_cond2_2_490
  %_cond4_492 = icmp ule i8* %_pot_address_in_parent_stack_487, %_parent_stack_end_ptr_
  %_cond1_n_cond2_493 = and i1 %_cond1_488, %_cond2_491
  %_cond1_n_cond2_cond3_494 = and i1 %_cond1_n_cond2_493, %_cond4_492
  br i1 %_cond1_n_cond2_cond3_494, label %191, label %192

; <label>:191:                                    ; preds = %188
  %_address_in_parent_stack_bt_496 = bitcast i8* %_pot_address_in_parent_stack_487 to i64*
  br label %192

; <label>:192:                                    ; preds = %188, %191
  %193 = phi i64* [ %_allin_new_bt_100, %188 ], [ %_address_in_parent_stack_bt_496, %191 ]
  %_new_load_497 = load i64, i64* %193
  %194 = add i64 %_new_load_497, 4, !mcsema_real_eip !88
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !88
  %196 = bitcast i64* %195 to i32*
  %_ptr_to_int_498 = ptrtoint i32* %196 to i64
  %_ptr_bt_500 = bitcast i32* %196 to i8*
  %_offset_above_rbp_501 = sub i64 %_ptr_to_int_498, %_local_end_to_int_
  %_pot_address_in_parent_stack_502 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_501
  %_cond1_503 = icmp ugt i8* %_ptr_bt_500, %_local_stack_end_ptr_
  %_cond2_1_504 = icmp ugt i8* %_ptr_bt_500, %_parent_stack_end_ptr_
  %_cond2_2_505 = icmp ult i8* %_ptr_bt_500, %_parent_stack_start_ptr_
  %_cond2_506 = or i1 %_cond2_1_504, %_cond2_2_505
  %_cond4_507 = icmp ule i8* %_pot_address_in_parent_stack_502, %_parent_stack_end_ptr_
  %_cond1_n_cond2_508 = and i1 %_cond1_503, %_cond2_506
  %_cond1_n_cond2_cond3_509 = and i1 %_cond1_n_cond2_508, %_cond4_507
  br i1 %_cond1_n_cond2_cond3_509, label %197, label %198

; <label>:197:                                    ; preds = %192
  %_address_in_parent_stack_bt_511 = bitcast i8* %_pot_address_in_parent_stack_502 to i32*
  br label %198

; <label>:198:                                    ; preds = %192, %197
  %199 = phi i32* [ %196, %192 ], [ %_address_in_parent_stack_bt_511, %197 ]
  %_new_load_512 = load i32, i32* %199
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_482, i32 %_new_load_512)
  %200 = extractvalue { i32, i1 } %uadd77, 0
  %201 = zext i32 %200 to i64, !mcsema_real_eip !88
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -96
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %_ptr_to_int_513 = ptrtoint i64* %_allin_new_bt_103 to i64
  %_offset_above_rbp_516 = sub i64 %_ptr_to_int_513, %_local_end_to_int_
  %_pot_address_in_parent_stack_517 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_516
  %_cond1_518 = icmp ugt i8* %_new_gep_102, %_local_stack_end_ptr_
  %_cond2_1_519 = icmp ugt i8* %_new_gep_102, %_parent_stack_end_ptr_
  %_cond2_2_520 = icmp ult i8* %_new_gep_102, %_parent_stack_start_ptr_
  %_cond2_521 = or i1 %_cond2_1_519, %_cond2_2_520
  %_cond4_522 = icmp ule i8* %_pot_address_in_parent_stack_517, %_parent_stack_end_ptr_
  %_cond1_n_cond2_523 = and i1 %_cond1_518, %_cond2_521
  %_cond1_n_cond2_cond3_524 = and i1 %_cond1_n_cond2_523, %_cond4_522
  br i1 %_cond1_n_cond2_cond3_524, label %202, label %203

; <label>:202:                                    ; preds = %198
  %_address_in_parent_stack_bt_526 = bitcast i8* %_pot_address_in_parent_stack_517 to i64*
  br label %203

; <label>:203:                                    ; preds = %198, %202
  %204 = phi i64* [ %_allin_new_bt_103, %198 ], [ %_address_in_parent_stack_bt_526, %202 ]
  %_new_load_527 = load i64, i64* %204
  %205 = add i64 %_new_load_527, 4, !mcsema_real_eip !90
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !90
  %207 = bitcast i64* %206 to i32*
  %_ptr_to_int_528 = ptrtoint i32* %207 to i64
  %_ptr_bt_530 = bitcast i32* %207 to i8*
  %_offset_above_rbp_531 = sub i64 %_ptr_to_int_528, %_local_end_to_int_
  %_pot_address_in_parent_stack_532 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_531
  %_cond1_533 = icmp ugt i8* %_ptr_bt_530, %_local_stack_end_ptr_
  %_cond2_1_534 = icmp ugt i8* %_ptr_bt_530, %_parent_stack_end_ptr_
  %_cond2_2_535 = icmp ult i8* %_ptr_bt_530, %_parent_stack_start_ptr_
  %_cond2_536 = or i1 %_cond2_1_534, %_cond2_2_535
  %_cond4_537 = icmp ule i8* %_pot_address_in_parent_stack_532, %_parent_stack_end_ptr_
  %_cond1_n_cond2_538 = and i1 %_cond1_533, %_cond2_536
  %_cond1_n_cond2_cond3_539 = and i1 %_cond1_n_cond2_538, %_cond4_537
  br i1 %_cond1_n_cond2_cond3_539, label %208, label %209

; <label>:208:                                    ; preds = %203
  %_address_in_parent_stack_bt_541 = bitcast i8* %_pot_address_in_parent_stack_532 to i32*
  br label %209

; <label>:209:                                    ; preds = %203, %208
  %210 = phi i32* [ %207, %203 ], [ %_address_in_parent_stack_bt_541, %208 ]
  %_new_load_542 = load i32, i32* %210
  %211 = add i32 %200, %_new_load_542
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %211, i32 %182)
  %212 = extractvalue { i32, i1 } %uadd79, 0
  %213 = zext i32 %212 to i64, !mcsema_real_eip !91
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -104
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %_ptr_to_int_543 = ptrtoint i64* %_allin_new_bt_106 to i64
  %_offset_above_rbp_546 = sub i64 %_ptr_to_int_543, %_local_end_to_int_
  %_pot_address_in_parent_stack_547 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_546
  %_cond1_548 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_549 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_550 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_551 = or i1 %_cond2_1_549, %_cond2_2_550
  %_cond4_552 = icmp ule i8* %_pot_address_in_parent_stack_547, %_parent_stack_end_ptr_
  %_cond1_n_cond2_553 = and i1 %_cond1_548, %_cond2_551
  %_cond1_n_cond2_cond3_554 = and i1 %_cond1_n_cond2_553, %_cond4_552
  br i1 %_cond1_n_cond2_cond3_554, label %214, label %215

; <label>:214:                                    ; preds = %209
  %_address_in_parent_stack_bt_556 = bitcast i8* %_pot_address_in_parent_stack_547 to i64*
  br label %215

; <label>:215:                                    ; preds = %209, %214
  %216 = phi i64* [ %_allin_new_bt_106, %209 ], [ %_address_in_parent_stack_bt_556, %214 ]
  %_new_load_557 = load i64, i64* %216
  %217 = add i64 %_new_load_557, 4, !mcsema_real_eip !93
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !93
  %219 = bitcast i64* %218 to i32*
  store i32 %212, i32* %219, !mcsema_real_eip !93
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -24
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %220 = bitcast i64* %_allin_new_bt_109 to i32*
  %_ptr_to_int_558 = ptrtoint i32* %220 to i64
  %_ptr_bt_560 = bitcast i32* %220 to i8*
  %_offset_above_rbp_561 = sub i64 %_ptr_to_int_558, %_local_end_to_int_
  %_pot_address_in_parent_stack_562 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_561
  %_cond1_563 = icmp ugt i8* %_ptr_bt_560, %_local_stack_end_ptr_
  %_cond2_1_564 = icmp ugt i8* %_ptr_bt_560, %_parent_stack_end_ptr_
  %_cond2_2_565 = icmp ult i8* %_ptr_bt_560, %_parent_stack_start_ptr_
  %_cond2_566 = or i1 %_cond2_1_564, %_cond2_2_565
  %_cond4_567 = icmp ule i8* %_pot_address_in_parent_stack_562, %_parent_stack_end_ptr_
  %_cond1_n_cond2_568 = and i1 %_cond1_563, %_cond2_566
  %_cond1_n_cond2_cond3_569 = and i1 %_cond1_n_cond2_568, %_cond4_567
  br i1 %_cond1_n_cond2_cond3_569, label %221, label %222

; <label>:221:                                    ; preds = %215
  %_address_in_parent_stack_bt_571 = bitcast i8* %_pot_address_in_parent_stack_562 to i32*
  br label %222

; <label>:222:                                    ; preds = %215, %221
  %223 = phi i32* [ %220, %215 ], [ %_address_in_parent_stack_bt_571, %221 ]
  %_new_load_572 = load i32, i32* %223
  %224 = zext i32 %_new_load_572 to i64, !mcsema_real_eip !94
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -56
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %_ptr_to_int_573 = ptrtoint i64* %_allin_new_bt_112 to i64
  %_offset_above_rbp_576 = sub i64 %_ptr_to_int_573, %_local_end_to_int_
  %_pot_address_in_parent_stack_577 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_576
  %_cond1_578 = icmp ugt i8* %_new_gep_111, %_local_stack_end_ptr_
  %_cond2_1_579 = icmp ugt i8* %_new_gep_111, %_parent_stack_end_ptr_
  %_cond2_2_580 = icmp ult i8* %_new_gep_111, %_parent_stack_start_ptr_
  %_cond2_581 = or i1 %_cond2_1_579, %_cond2_2_580
  %_cond4_582 = icmp ule i8* %_pot_address_in_parent_stack_577, %_parent_stack_end_ptr_
  %_cond1_n_cond2_583 = and i1 %_cond1_578, %_cond2_581
  %_cond1_n_cond2_cond3_584 = and i1 %_cond1_n_cond2_583, %_cond4_582
  br i1 %_cond1_n_cond2_cond3_584, label %225, label %226

; <label>:225:                                    ; preds = %222
  %_address_in_parent_stack_bt_586 = bitcast i8* %_pot_address_in_parent_stack_577 to i64*
  br label %226

; <label>:226:                                    ; preds = %222, %225
  %227 = phi i64* [ %_allin_new_bt_112, %222 ], [ %_address_in_parent_stack_bt_586, %225 ]
  %_new_load_587 = load i64, i64* %227
  %228 = add i64 %_new_load_587, 8, !mcsema_real_eip !96
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !96
  %230 = bitcast i64* %229 to i32*
  %_ptr_to_int_588 = ptrtoint i32* %230 to i64
  %_ptr_bt_590 = bitcast i32* %230 to i8*
  %_offset_above_rbp_591 = sub i64 %_ptr_to_int_588, %_local_end_to_int_
  %_pot_address_in_parent_stack_592 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_591
  %_cond1_593 = icmp ugt i8* %_ptr_bt_590, %_local_stack_end_ptr_
  %_cond2_1_594 = icmp ugt i8* %_ptr_bt_590, %_parent_stack_end_ptr_
  %_cond2_2_595 = icmp ult i8* %_ptr_bt_590, %_parent_stack_start_ptr_
  %_cond2_596 = or i1 %_cond2_1_594, %_cond2_2_595
  %_cond4_597 = icmp ule i8* %_pot_address_in_parent_stack_592, %_parent_stack_end_ptr_
  %_cond1_n_cond2_598 = and i1 %_cond1_593, %_cond2_596
  %_cond1_n_cond2_cond3_599 = and i1 %_cond1_n_cond2_598, %_cond4_597
  br i1 %_cond1_n_cond2_cond3_599, label %231, label %232

; <label>:231:                                    ; preds = %226
  %_address_in_parent_stack_bt_601 = bitcast i8* %_pot_address_in_parent_stack_592 to i32*
  br label %232

; <label>:232:                                    ; preds = %226, %231
  %233 = phi i32* [ %230, %226 ], [ %_address_in_parent_stack_bt_601, %231 ]
  %_new_load_602 = load i32, i32* %233
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_572, i32 %_new_load_602)
  %234 = extractvalue { i32, i1 } %uadd80, 0
  %235 = zext i32 %234 to i64, !mcsema_real_eip !96
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -64
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %_ptr_to_int_603 = ptrtoint i64* %_allin_new_bt_115 to i64
  %_offset_above_rbp_606 = sub i64 %_ptr_to_int_603, %_local_end_to_int_
  %_pot_address_in_parent_stack_607 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_606
  %_cond1_608 = icmp ugt i8* %_new_gep_114, %_local_stack_end_ptr_
  %_cond2_1_609 = icmp ugt i8* %_new_gep_114, %_parent_stack_end_ptr_
  %_cond2_2_610 = icmp ult i8* %_new_gep_114, %_parent_stack_start_ptr_
  %_cond2_611 = or i1 %_cond2_1_609, %_cond2_2_610
  %_cond4_612 = icmp ule i8* %_pot_address_in_parent_stack_607, %_parent_stack_end_ptr_
  %_cond1_n_cond2_613 = and i1 %_cond1_608, %_cond2_611
  %_cond1_n_cond2_cond3_614 = and i1 %_cond1_n_cond2_613, %_cond4_612
  br i1 %_cond1_n_cond2_cond3_614, label %236, label %237

; <label>:236:                                    ; preds = %232
  %_address_in_parent_stack_bt_616 = bitcast i8* %_pot_address_in_parent_stack_607 to i64*
  br label %237

; <label>:237:                                    ; preds = %232, %236
  %238 = phi i64* [ %_allin_new_bt_115, %232 ], [ %_address_in_parent_stack_bt_616, %236 ]
  %_new_load_617 = load i64, i64* %238
  %239 = add i64 %_new_load_617, 8, !mcsema_real_eip !98
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !98
  %241 = bitcast i64* %240 to i32*
  %_ptr_to_int_618 = ptrtoint i32* %241 to i64
  %_ptr_bt_620 = bitcast i32* %241 to i8*
  %_offset_above_rbp_621 = sub i64 %_ptr_to_int_618, %_local_end_to_int_
  %_pot_address_in_parent_stack_622 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_621
  %_cond1_623 = icmp ugt i8* %_ptr_bt_620, %_local_stack_end_ptr_
  %_cond2_1_624 = icmp ugt i8* %_ptr_bt_620, %_parent_stack_end_ptr_
  %_cond2_2_625 = icmp ult i8* %_ptr_bt_620, %_parent_stack_start_ptr_
  %_cond2_626 = or i1 %_cond2_1_624, %_cond2_2_625
  %_cond4_627 = icmp ule i8* %_pot_address_in_parent_stack_622, %_parent_stack_end_ptr_
  %_cond1_n_cond2_628 = and i1 %_cond1_623, %_cond2_626
  %_cond1_n_cond2_cond3_629 = and i1 %_cond1_n_cond2_628, %_cond4_627
  br i1 %_cond1_n_cond2_cond3_629, label %242, label %243

; <label>:242:                                    ; preds = %237
  %_address_in_parent_stack_bt_631 = bitcast i8* %_pot_address_in_parent_stack_622 to i32*
  br label %243

; <label>:243:                                    ; preds = %237, %242
  %244 = phi i32* [ %241, %237 ], [ %_address_in_parent_stack_bt_631, %242 ]
  %_new_load_632 = load i32, i32* %244
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 %_new_load_632)
  %245 = extractvalue { i32, i1 } %uadd81, 0
  %246 = zext i32 %245 to i64, !mcsema_real_eip !98
  %247 = add i64 %_new_load_302, 8, !mcsema_real_eip !99
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !99
  %249 = bitcast i64* %248 to i32*
  %_ptr_to_int_633 = ptrtoint i32* %249 to i64
  %_ptr_bt_635 = bitcast i32* %249 to i8*
  %_offset_above_rbp_636 = sub i64 %_ptr_to_int_633, %_local_end_to_int_
  %_pot_address_in_parent_stack_637 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_636
  %_cond1_638 = icmp ugt i8* %_ptr_bt_635, %_local_stack_end_ptr_
  %_cond2_1_639 = icmp ugt i8* %_ptr_bt_635, %_parent_stack_end_ptr_
  %_cond2_2_640 = icmp ult i8* %_ptr_bt_635, %_parent_stack_start_ptr_
  %_cond2_641 = or i1 %_cond2_1_639, %_cond2_2_640
  %_cond4_642 = icmp ule i8* %_pot_address_in_parent_stack_637, %_parent_stack_end_ptr_
  %_cond1_n_cond2_643 = and i1 %_cond1_638, %_cond2_641
  %_cond1_n_cond2_cond3_644 = and i1 %_cond1_n_cond2_643, %_cond4_642
  br i1 %_cond1_n_cond2_cond3_644, label %250, label %251

; <label>:250:                                    ; preds = %243
  %_address_in_parent_stack_bt_646 = bitcast i8* %_pot_address_in_parent_stack_637 to i32*
  br label %251

; <label>:251:                                    ; preds = %243, %250
  %252 = phi i32* [ %249, %243 ], [ %_address_in_parent_stack_bt_646, %250 ]
  %_new_load_647 = load i32, i32* %252
  %253 = zext i32 %_new_load_647 to i64, !mcsema_real_eip !99
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -88
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %_ptr_to_int_648 = ptrtoint i64* %_allin_new_bt_118 to i64
  %_offset_above_rbp_651 = sub i64 %_ptr_to_int_648, %_local_end_to_int_
  %_pot_address_in_parent_stack_652 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_651
  %_cond1_653 = icmp ugt i8* %_new_gep_117, %_local_stack_end_ptr_
  %_cond2_1_654 = icmp ugt i8* %_new_gep_117, %_parent_stack_end_ptr_
  %_cond2_2_655 = icmp ult i8* %_new_gep_117, %_parent_stack_start_ptr_
  %_cond2_656 = or i1 %_cond2_1_654, %_cond2_2_655
  %_cond4_657 = icmp ule i8* %_pot_address_in_parent_stack_652, %_parent_stack_end_ptr_
  %_cond1_n_cond2_658 = and i1 %_cond1_653, %_cond2_656
  %_cond1_n_cond2_cond3_659 = and i1 %_cond1_n_cond2_658, %_cond4_657
  br i1 %_cond1_n_cond2_cond3_659, label %254, label %255

; <label>:254:                                    ; preds = %251
  %_address_in_parent_stack_bt_661 = bitcast i8* %_pot_address_in_parent_stack_652 to i64*
  br label %255

; <label>:255:                                    ; preds = %251, %254
  %256 = phi i64* [ %_allin_new_bt_118, %251 ], [ %_address_in_parent_stack_bt_661, %254 ]
  %_new_load_662 = load i64, i64* %256
  %257 = add i64 %_new_load_662, 8, !mcsema_real_eip !101
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !101
  %259 = bitcast i64* %258 to i32*
  %_ptr_to_int_663 = ptrtoint i32* %259 to i64
  %_ptr_bt_665 = bitcast i32* %259 to i8*
  %_offset_above_rbp_666 = sub i64 %_ptr_to_int_663, %_local_end_to_int_
  %_pot_address_in_parent_stack_667 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_666
  %_cond1_668 = icmp ugt i8* %_ptr_bt_665, %_local_stack_end_ptr_
  %_cond2_1_669 = icmp ugt i8* %_ptr_bt_665, %_parent_stack_end_ptr_
  %_cond2_2_670 = icmp ult i8* %_ptr_bt_665, %_parent_stack_start_ptr_
  %_cond2_671 = or i1 %_cond2_1_669, %_cond2_2_670
  %_cond4_672 = icmp ule i8* %_pot_address_in_parent_stack_667, %_parent_stack_end_ptr_
  %_cond1_n_cond2_673 = and i1 %_cond1_668, %_cond2_671
  %_cond1_n_cond2_cond3_674 = and i1 %_cond1_n_cond2_673, %_cond4_672
  br i1 %_cond1_n_cond2_cond3_674, label %260, label %261

; <label>:260:                                    ; preds = %255
  %_address_in_parent_stack_bt_676 = bitcast i8* %_pot_address_in_parent_stack_667 to i32*
  br label %261

; <label>:261:                                    ; preds = %255, %260
  %262 = phi i32* [ %259, %255 ], [ %_address_in_parent_stack_bt_676, %260 ]
  %_new_load_677 = load i32, i32* %262
  %uadd82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_647, i32 %_new_load_677)
  %263 = extractvalue { i32, i1 } %uadd82, 0
  %264 = zext i32 %263 to i64, !mcsema_real_eip !101
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -96
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %_ptr_to_int_678 = ptrtoint i64* %_allin_new_bt_121 to i64
  %_offset_above_rbp_681 = sub i64 %_ptr_to_int_678, %_local_end_to_int_
  %_pot_address_in_parent_stack_682 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_681
  %_cond1_683 = icmp ugt i8* %_new_gep_120, %_local_stack_end_ptr_
  %_cond2_1_684 = icmp ugt i8* %_new_gep_120, %_parent_stack_end_ptr_
  %_cond2_2_685 = icmp ult i8* %_new_gep_120, %_parent_stack_start_ptr_
  %_cond2_686 = or i1 %_cond2_1_684, %_cond2_2_685
  %_cond4_687 = icmp ule i8* %_pot_address_in_parent_stack_682, %_parent_stack_end_ptr_
  %_cond1_n_cond2_688 = and i1 %_cond1_683, %_cond2_686
  %_cond1_n_cond2_cond3_689 = and i1 %_cond1_n_cond2_688, %_cond4_687
  br i1 %_cond1_n_cond2_cond3_689, label %265, label %266

; <label>:265:                                    ; preds = %261
  %_address_in_parent_stack_bt_691 = bitcast i8* %_pot_address_in_parent_stack_682 to i64*
  br label %266

; <label>:266:                                    ; preds = %261, %265
  %267 = phi i64* [ %_allin_new_bt_121, %261 ], [ %_address_in_parent_stack_bt_691, %265 ]
  %_new_load_692 = load i64, i64* %267
  %268 = add i64 %_new_load_692, 8, !mcsema_real_eip !103
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !103
  %270 = bitcast i64* %269 to i32*
  %_ptr_to_int_693 = ptrtoint i32* %270 to i64
  %_ptr_bt_695 = bitcast i32* %270 to i8*
  %_offset_above_rbp_696 = sub i64 %_ptr_to_int_693, %_local_end_to_int_
  %_pot_address_in_parent_stack_697 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_696
  %_cond1_698 = icmp ugt i8* %_ptr_bt_695, %_local_stack_end_ptr_
  %_cond2_1_699 = icmp ugt i8* %_ptr_bt_695, %_parent_stack_end_ptr_
  %_cond2_2_700 = icmp ult i8* %_ptr_bt_695, %_parent_stack_start_ptr_
  %_cond2_701 = or i1 %_cond2_1_699, %_cond2_2_700
  %_cond4_702 = icmp ule i8* %_pot_address_in_parent_stack_697, %_parent_stack_end_ptr_
  %_cond1_n_cond2_703 = and i1 %_cond1_698, %_cond2_701
  %_cond1_n_cond2_cond3_704 = and i1 %_cond1_n_cond2_703, %_cond4_702
  br i1 %_cond1_n_cond2_cond3_704, label %271, label %272

; <label>:271:                                    ; preds = %266
  %_address_in_parent_stack_bt_706 = bitcast i8* %_pot_address_in_parent_stack_697 to i32*
  br label %272

; <label>:272:                                    ; preds = %266, %271
  %273 = phi i32* [ %270, %266 ], [ %_address_in_parent_stack_bt_706, %271 ]
  %_new_load_707 = load i32, i32* %273
  %274 = add i32 %263, %_new_load_707
  %275 = zext i32 %274 to i64, !mcsema_real_eip !103
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %274, i32 %245)
  %276 = extractvalue { i32, i1 } %uadd84, 0
  %277 = zext i32 %276 to i64, !mcsema_real_eip !104
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -104
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %_ptr_to_int_708 = ptrtoint i64* %_allin_new_bt_124 to i64
  %_offset_above_rbp_711 = sub i64 %_ptr_to_int_708, %_local_end_to_int_
  %_pot_address_in_parent_stack_712 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_711
  %_cond1_713 = icmp ugt i8* %_new_gep_123, %_local_stack_end_ptr_
  %_cond2_1_714 = icmp ugt i8* %_new_gep_123, %_parent_stack_end_ptr_
  %_cond2_2_715 = icmp ult i8* %_new_gep_123, %_parent_stack_start_ptr_
  %_cond2_716 = or i1 %_cond2_1_714, %_cond2_2_715
  %_cond4_717 = icmp ule i8* %_pot_address_in_parent_stack_712, %_parent_stack_end_ptr_
  %_cond1_n_cond2_718 = and i1 %_cond1_713, %_cond2_716
  %_cond1_n_cond2_cond3_719 = and i1 %_cond1_n_cond2_718, %_cond4_717
  br i1 %_cond1_n_cond2_cond3_719, label %278, label %279

; <label>:278:                                    ; preds = %272
  %_address_in_parent_stack_bt_721 = bitcast i8* %_pot_address_in_parent_stack_712 to i64*
  br label %279

; <label>:279:                                    ; preds = %272, %278
  %280 = phi i64* [ %_allin_new_bt_124, %272 ], [ %_address_in_parent_stack_bt_721, %278 ]
  %_new_load_722 = load i64, i64* %280
  %281 = add i64 %_new_load_722, 8, !mcsema_real_eip !106
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !106
  %283 = bitcast i64* %282 to i32*
  store i32 %276, i32* %283, !mcsema_real_eip !106
  %_load_rbp_ptr_125 = load i8*, i8** %_RBP_ptr_
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -104
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %_ptr_to_int_723 = ptrtoint i64* %_allin_new_bt_127 to i64
  %_offset_above_rbp_726 = sub i64 %_ptr_to_int_723, %_local_end_to_int_
  %_pot_address_in_parent_stack_727 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_726
  %_cond1_728 = icmp ugt i8* %_new_gep_126, %_local_stack_end_ptr_
  %_cond2_1_729 = icmp ugt i8* %_new_gep_126, %_parent_stack_end_ptr_
  %_cond2_2_730 = icmp ult i8* %_new_gep_126, %_parent_stack_start_ptr_
  %_cond2_731 = or i1 %_cond2_1_729, %_cond2_2_730
  %_cond4_732 = icmp ule i8* %_pot_address_in_parent_stack_727, %_parent_stack_end_ptr_
  %_cond1_n_cond2_733 = and i1 %_cond1_728, %_cond2_731
  %_cond1_n_cond2_cond3_734 = and i1 %_cond1_n_cond2_733, %_cond4_732
  br i1 %_cond1_n_cond2_cond3_734, label %284, label %285

; <label>:284:                                    ; preds = %279
  %_address_in_parent_stack_bt_736 = bitcast i8* %_pot_address_in_parent_stack_727 to i64*
  br label %285

; <label>:285:                                    ; preds = %279, %284
  %286 = phi i64* [ %_allin_new_bt_127, %279 ], [ %_address_in_parent_stack_bt_736, %284 ]
  %_new_load_737 = load i64, i64* %286
  %_load_rsp_ptr_128 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_129 = ptrtoint i8* %_load_rsp_ptr_128 to i64
  %uadd85 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_129, i64 96)
  %287 = extractvalue { i64, i1 } %uadd85, 0
  %288 = xor i64 %287, %_new_ptr2int_129, !mcsema_real_eip !108
  %289 = and i64 %288, 16, !mcsema_real_eip !108
  %290 = icmp ne i64 %289, 0, !mcsema_real_eip !108
  %291 = icmp slt i64 %287, 0
  %292 = icmp eq i64 %287, 0, !mcsema_real_eip !108
  %293 = xor i64 %_new_ptr2int_129, -9223372036854775808, !mcsema_real_eip !108
  %294 = and i64 %288, %293, !mcsema_real_eip !108
  %295 = icmp slt i64 %294, 0
  %296 = trunc i64 %287 to i8, !mcsema_real_eip !108
  %297 = tail call i8 @llvm.ctpop.i8(i8 %296), !mcsema_real_eip !108
  %298 = and i8 %297, 1
  %299 = icmp eq i8 %298, 0
  %300 = extractvalue { i64, i1 } %uadd85, 1
  %_new_int2ptr_ = inttoptr i64 %287 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %301 = inttoptr i64 %287 to i64*, !mcsema_real_eip !109
  %_ptr_bt_740 = bitcast i64* %301 to i8*
  %_offset_above_rbp_741 = sub i64 %287, %_local_end_to_int_
  %_pot_address_in_parent_stack_742 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_741
  %_cond1_743 = icmp ugt i8* %_ptr_bt_740, %_local_stack_end_ptr_
  %_cond2_1_744 = icmp ugt i8* %_ptr_bt_740, %_parent_stack_end_ptr_
  %_cond2_2_745 = icmp ult i8* %_ptr_bt_740, %_parent_stack_start_ptr_
  %_cond2_746 = or i1 %_cond2_1_744, %_cond2_2_745
  %_cond4_747 = icmp ule i8* %_pot_address_in_parent_stack_742, %_parent_stack_end_ptr_
  %_cond1_n_cond2_748 = and i1 %_cond1_743, %_cond2_746
  %_cond1_n_cond2_cond3_749 = and i1 %_cond1_n_cond2_748, %_cond4_747
  br i1 %_cond1_n_cond2_cond3_749, label %302, label %303

; <label>:302:                                    ; preds = %285
  %_address_in_parent_stack_bt_751 = bitcast i8* %_pot_address_in_parent_stack_742 to i64*
  br label %303

; <label>:303:                                    ; preds = %285, %302
  %304 = phi i64* [ %301, %285 ], [ %_address_in_parent_stack_bt_751, %302 ]
  %_new_load_752 = load i64, i64* %304
  %305 = add i64 %287, 8, !mcsema_real_eip !109
  %_new_int2ptr_130 = inttoptr i64 %305 to i8*
  store volatile i8* %_new_int2ptr_130, i8** %_RSP_ptr_
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !110
  %_ptr_bt_755 = bitcast i64* %306 to i8*
  %_offset_above_rbp_756 = sub i64 %305, %_local_end_to_int_
  %_pot_address_in_parent_stack_757 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_756
  %_cond1_758 = icmp ugt i8* %_ptr_bt_755, %_local_stack_end_ptr_
  %_cond2_1_759 = icmp ugt i8* %_ptr_bt_755, %_parent_stack_end_ptr_
  %_cond2_2_760 = icmp ult i8* %_ptr_bt_755, %_parent_stack_start_ptr_
  %_cond2_761 = or i1 %_cond2_1_759, %_cond2_2_760
  %_cond4_762 = icmp ule i8* %_pot_address_in_parent_stack_757, %_parent_stack_end_ptr_
  %_cond1_n_cond2_763 = and i1 %_cond1_758, %_cond2_761
  %_cond1_n_cond2_cond3_764 = and i1 %_cond1_n_cond2_763, %_cond4_762
  br i1 %_cond1_n_cond2_cond3_764, label %307, label %308

; <label>:307:                                    ; preds = %303
  %_address_in_parent_stack_bt_766 = bitcast i8* %_pot_address_in_parent_stack_757 to i64*
  br label %308

; <label>:308:                                    ; preds = %303, %307
  %309 = phi i64* [ %306, %303 ], [ %_address_in_parent_stack_bt_766, %307 ]
  %_new_load_767 = load i64, i64* %309
  %310 = add i64 %287, 16, !mcsema_real_eip !110
  %_new_int2ptr_131 = inttoptr i64 %310 to i8*
  store volatile i8* %_new_int2ptr_131, i8** %_RSP_ptr_
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !111
  %_ptr_bt_770 = bitcast i64* %311 to i8*
  %_offset_above_rbp_771 = sub i64 %310, %_local_end_to_int_
  %_pot_address_in_parent_stack_772 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_771
  %_cond1_773 = icmp ugt i8* %_ptr_bt_770, %_local_stack_end_ptr_
  %_cond2_1_774 = icmp ugt i8* %_ptr_bt_770, %_parent_stack_end_ptr_
  %_cond2_2_775 = icmp ult i8* %_ptr_bt_770, %_parent_stack_start_ptr_
  %_cond2_776 = or i1 %_cond2_1_774, %_cond2_2_775
  %_cond4_777 = icmp ule i8* %_pot_address_in_parent_stack_772, %_parent_stack_end_ptr_
  %_cond1_n_cond2_778 = and i1 %_cond1_773, %_cond2_776
  %_cond1_n_cond2_cond3_779 = and i1 %_cond1_n_cond2_778, %_cond4_777
  br i1 %_cond1_n_cond2_cond3_779, label %312, label %313

; <label>:312:                                    ; preds = %308
  %_address_in_parent_stack_bt_781 = bitcast i8* %_pot_address_in_parent_stack_772 to i64*
  br label %313

; <label>:313:                                    ; preds = %308, %312
  %314 = phi i64* [ %311, %308 ], [ %_address_in_parent_stack_bt_781, %312 ]
  %_new_load_782 = load i64, i64* %314
  %_new_int2ptr_132 = inttoptr i64 %_new_load_782 to i8*
  store volatile i8* %_new_int2ptr_132, i8** %_RBP_ptr_
  %315 = add i64 %287, 32, !mcsema_real_eip !112
  %_new_int2ptr_133 = inttoptr i64 %315 to i8*
  store volatile i8* %_new_int2ptr_133, i8** %_RSP_ptr_
  store i64 %_new_load_737, i64* %RAX, !mcsema_real_eip !112
  store i64 %_new_load_752, i64* %RBX, !mcsema_real_eip !112
  store i64 %_new_load_722, i64* %RCX, !mcsema_real_eip !112
  store i64 %3, i64* %RDX, !mcsema_real_eip !112
  store i64 %277, i64* %RSI, !mcsema_real_eip !112
  store i64 12, i64* %RDI, !mcsema_real_eip !112
  store volatile i64 %315, i64* %RSP
  %_load_rbp_ptr_136 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_137 = ptrtoint i8* %_load_rbp_ptr_136 to i64
  store volatile i64 %_new_ptr2int_137, i64* %RBP
  store i64 %275, i64* %R8, !mcsema_real_eip !112
  store i64 %7, i64* %R9, !mcsema_real_eip !112
  store i64 %_new_load_167, i64* %R10, !mcsema_real_eip !112
  store i64 %75, i64* %R11, !mcsema_real_eip !112
  store i64 %8, i64* %R12, !mcsema_real_eip !112
  store i64 %9, i64* %R13, !mcsema_real_eip !112
  store i64 %_new_load_767, i64* %R14, !mcsema_real_eip !112
  store i64 %11, i64* %R15, !mcsema_real_eip !112
  store i64 %12, i64* %RIP, !mcsema_real_eip !112
  store i1 %300, i1* %CF, align 1, !mcsema_real_eip !112
  store i1 %299, i1* %PF, align 1, !mcsema_real_eip !112
  store i1 %290, i1* %AF, align 1, !mcsema_real_eip !112
  store i1 %292, i1* %ZF, align 1, !mcsema_real_eip !112
  store i1 %291, i1* %SF, align 1, !mcsema_real_eip !112
  store i1 %295, i1* %OF, align 1, !mcsema_real_eip !112
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !112
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 128, i32 8, i1 false), !mcsema_real_eip !112
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !112
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !112
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !112
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !112
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !112
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !112
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !112
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !112
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !112
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !112
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !112
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !112
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !112
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !112
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !112
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !112
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !112
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !112
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !112
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !112
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !112
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !112
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !112
  %_ptr_to_int_783 = ptrtoint i64* %42 to i64
  %_ptr_bt_785 = bitcast i64* %42 to i8*
  %_offset_above_rbp_786 = sub i64 %_ptr_to_int_783, %_local_end_to_int_
  %_pot_address_in_parent_stack_787 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_786
  %_cond1_788 = icmp ugt i8* %_ptr_bt_785, %_local_stack_end_ptr_
  %_cond2_1_789 = icmp ugt i8* %_ptr_bt_785, %_parent_stack_end_ptr_
  %_cond2_2_790 = icmp ult i8* %_ptr_bt_785, %_parent_stack_start_ptr_
  %_cond2_791 = or i1 %_cond2_1_789, %_cond2_2_790
  %_cond4_792 = icmp ule i8* %_pot_address_in_parent_stack_787, %_parent_stack_end_ptr_
  %_cond1_n_cond2_793 = and i1 %_cond1_788, %_cond2_791
  %_cond1_n_cond2_cond3_794 = and i1 %_cond1_n_cond2_793, %_cond4_792
  br i1 %_cond1_n_cond2_cond3_794, label %316, label %317

; <label>:316:                                    ; preds = %313
  %_address_in_parent_stack_bt_796 = bitcast i8* %_pot_address_in_parent_stack_787 to i64*
  br label %317

; <label>:317:                                    ; preds = %313, %316
  %318 = phi i64* [ %42, %313 ], [ %_address_in_parent_stack_bt_796, %316 ]
  %_new_load_797 = load i64, i64* %318
  store i64 %_new_load_797, i64* %41, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !112
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !112
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !112
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !112
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !112
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !112
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !112
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !112
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !112
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !112
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !112
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !112
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !112
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !112
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !112
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !112
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !112
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !112
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !112
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !112
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !112
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !112
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !112
  ret void, !mcsema_real_eip !112
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 256}
!3 = !{i64 260}
!4 = !{i64 274}
!5 = !{i64 281}
!6 = !{i64 288}
!7 = !{i64 295}
!8 = !{i64 302}
!9 = !{i64 307}
!10 = !{i64 328}
!11 = !{i64 332}
!12 = !{i64 336}
!13 = !{i64 342}
!14 = !{i64 346}
!15 = !{i64 353}
!16 = !{i64 357}
!17 = !{i64 364}
!18 = !{i64 372}
!19 = !{i64 376}
!20 = !{i64 380}
!21 = !{i64 384}
!22 = !{i64 388}
!23 = !{i64 392}
!24 = !{i64 396}
!25 = !{i64 406}
!26 = !{i64 410}
!27 = !{i64 417}
!28 = !{i64 423}
!29 = !{i64 430}
!30 = !{i64 433}
!31 = !{i64 438}
!32 = !{i64 442}
!33 = !{i64 447}
!34 = !{i64 452}
!35 = !{i64 456}
!36 = !{i64 461}
!37 = !{i64 466}
!38 = !{i64 470}
!39 = !{i64 474}
!40 = !{i64 480}
!41 = !{i64 487}
!42 = !{i64 492}
!43 = !{i64 496}
!44 = !{i64 497}
!45 = !{i64 0}
!46 = !{i64 4}
!47 = !{i64 6}
!48 = !{i64 11}
!49 = !{i64 15}
!50 = !{i64 19}
!51 = !{i64 23}
!52 = !{i64 36}
!53 = !{i64 40}
!54 = !{i64 43}
!55 = !{i64 47}
!56 = !{i64 51}
!57 = !{i64 54}
!58 = !{i64 57}
!59 = !{i64 61}
!60 = !{i64 65}
!61 = !{i64 69}
!62 = !{i64 73}
!63 = !{i64 76}
!64 = !{i64 80}
!65 = !{i64 87}
!66 = !{i64 91}
!67 = !{i64 96}
!68 = !{i64 100}
!69 = !{i64 103}
!70 = !{i64 107}
!71 = !{i64 109}
!72 = !{i64 113}
!73 = !{i64 115}
!74 = !{i64 119}
!75 = !{i64 122}
!76 = !{i64 126}
!77 = !{i64 129}
!78 = !{i64 133}
!79 = !{i64 136}
!80 = !{i64 143}
!81 = !{i64 145}
!82 = !{i64 148}
!83 = !{i64 152}
!84 = !{i64 155}
!85 = !{i64 159}
!86 = !{i64 162}
!87 = !{i64 166}
!88 = !{i64 170}
!89 = !{i64 174}
!90 = !{i64 178}
!91 = !{i64 182}
!92 = !{i64 185}
!93 = !{i64 189}
!94 = !{i64 192}
!95 = !{i64 195}
!96 = !{i64 199}
!97 = !{i64 202}
!98 = !{i64 206}
!99 = !{i64 209}
!100 = !{i64 213}
!101 = !{i64 217}
!102 = !{i64 221}
!103 = !{i64 225}
!104 = !{i64 229}
!105 = !{i64 232}
!106 = !{i64 236}
!107 = !{i64 239}
!108 = !{i64 243}
!109 = !{i64 247}
!110 = !{i64 248}
!111 = !{i64 250}
!112 = !{i64 251}
