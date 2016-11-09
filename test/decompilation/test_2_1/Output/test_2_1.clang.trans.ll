; ModuleID = 'Output/test_2_1.clang.trans.bc'
source_filename = "Output/test_2_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_40(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !2
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %2 = load i64, i64* %RSI, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %3 = load i64, i64* %RDI, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %4 = load i64, i64* %R12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %5 = load i64, i64* %R13, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %6 = load i64, i64* %R14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %7 = load i64, i64* %R15, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %8 = load i64, i64* %RIP, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %9 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %11 = bitcast x86_fp80* %10 to i8*, !mcsema_real_eip !2
  %12 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %13 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %14 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %15 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %28 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %29 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %36 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %37 = bitcast i8* %36 to i64*
  %38 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %39 = load i64, i64* %37, align 4
  store i64 %39, i64* %38, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %40 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %41 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %42 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %43 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %44 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %61 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %62 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  store i64 %1, i64* %_allin_new_bt_2, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -56
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_1 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %63 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %64 = icmp ne i64 %63, 0, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %65 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_, 0
  %_trans_icmp_ne_9 = icmp ne i64 %_trans_p2i_4, 40
  %_trans_xor_11 = and i64 %_trans_xor_, %_trans_p2i_4
  %68 = icmp slt i64 %_trans_xor_11, 0
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  %_load_rbp_ptr_12 = load i8*, i8** %_RBP_ptr_
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -12
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %69 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 0, i32* %69, !mcsema_real_eip !5
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -16
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %70 = trunc i64 %3 to i32, !mcsema_real_eip !6
  %71 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 %70, i32* %71, !mcsema_real_eip !6
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -24
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  store i64 %2, i64* %_allin_new_bt_20, !mcsema_real_eip !7
  %_load_rsp_ptr_21 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_22 = bitcast i8* %_load_rsp_ptr_21 to i64*
  %72 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 10, i32* %72, !mcsema_real_eip !8
  %_load_rsp_ptr_23 = load i8*, i8** %_RSP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 8
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %73 = bitcast i64* %_allin_new_bt_25 to i32*
  store i32 20, i32* %73, !mcsema_real_eip !9
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -28
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %74 = bitcast i64* %_allin_new_bt_28 to i32*
  store i32 20, i32* %74, !mcsema_real_eip !10
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -32
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %75 = bitcast i64* %_allin_new_bt_31 to i32*
  store i32 10, i32* %75, !mcsema_real_eip !11
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rsp_ptr_32, i64 -8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_34, !mcsema_real_eip !12
  store volatile i8* %_new_gep_33, i8** %_RSP_ptr_
  store i64 100, i64* %RAX, !mcsema_real_eip !12
  store i64 20, i64* %RBX, !mcsema_real_eip !12
  store i64 400, i64* %RCX, !mcsema_real_eip !12
  store i64 300, i64* %RDX, !mcsema_real_eip !12
  store i64 200, i64* %RSI, !mcsema_real_eip !12
  store i64 100, i64* %RDI, !mcsema_real_eip !12
  %_new_ptr2int_36 = ptrtoint i8* %_new_gep_33 to i64
  store volatile i64 %_new_ptr2int_36, i64* %RSP
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_38 = ptrtoint i8* %_load_rbp_ptr_37 to i64
  store volatile i64 %_new_ptr2int_38, i64* %RBP
  store i64 500, i64* %R8, !mcsema_real_eip !12
  store i64 600, i64* %R9, !mcsema_real_eip !12
  store i64 600, i64* %R10, !mcsema_real_eip !12
  store i64 10, i64* %R11, !mcsema_real_eip !12
  store i64 %4, i64* %R12, !mcsema_real_eip !12
  store i64 %5, i64* %R13, !mcsema_real_eip !12
  store i64 %6, i64* %R14, !mcsema_real_eip !12
  store i64 %7, i64* %R15, !mcsema_real_eip !12
  store i64 %8, i64* %RIP, !mcsema_real_eip !12
  store i1 %_trans_icmp_ne_9, i1* %CF, align 1, !mcsema_real_eip !12
  store i1 %67, i1* %PF, align 1, !mcsema_real_eip !12
  store i1 %64, i1* %AF, align 1, !mcsema_real_eip !12
  store i1 %_trans_icmp_eq_, i1* %ZF, align 1, !mcsema_real_eip !12
  store i1 %_trans_icmp_ne_, i1* %SF, align 1, !mcsema_real_eip !12
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !12
  store i1 %9, i1* %DF, align 1, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 128, i32 8, i1 false), !mcsema_real_eip !12
  store i1 %13, i1* %FPU_B, align 1, !mcsema_real_eip !12
  store i1 %14, i1* %FPU_C3, align 1, !mcsema_real_eip !12
  store i3 %15, i3* %FPU_TOP, align 1, !mcsema_real_eip !12
  store i1 %16, i1* %FPU_C2, align 1, !mcsema_real_eip !12
  store i1 %17, i1* %FPU_C1, align 1, !mcsema_real_eip !12
  store i1 %18, i1* %FPU_C0, align 1, !mcsema_real_eip !12
  store i1 %19, i1* %FPU_ES, align 1, !mcsema_real_eip !12
  store i1 %20, i1* %FPU_SF, align 1, !mcsema_real_eip !12
  store i1 %21, i1* %FPU_PE, align 1, !mcsema_real_eip !12
  store i1 %22, i1* %FPU_UE, align 1, !mcsema_real_eip !12
  store i1 %23, i1* %FPU_OE, align 1, !mcsema_real_eip !12
  store i1 %24, i1* %FPU_ZE, align 1, !mcsema_real_eip !12
  store i1 %25, i1* %FPU_DE, align 1, !mcsema_real_eip !12
  store i1 %26, i1* %FPU_IE, align 1, !mcsema_real_eip !12
  store i1 %27, i1* %FPU_X, align 1, !mcsema_real_eip !12
  store i2 %28, i2* %FPU_RC, align 1, !mcsema_real_eip !12
  store i2 %29, i2* %FPU_PC, align 1, !mcsema_real_eip !12
  store i1 %30, i1* %FPU_PM, align 1, !mcsema_real_eip !12
  store i1 %31, i1* %FPU_UM, align 1, !mcsema_real_eip !12
  store i1 %32, i1* %FPU_OM, align 1, !mcsema_real_eip !12
  store i1 %33, i1* %FPU_ZM, align 1, !mcsema_real_eip !12
  store i1 %34, i1* %FPU_DM, align 1, !mcsema_real_eip !12
  store i1 %35, i1* %FPU_IM, align 1, !mcsema_real_eip !12
  %76 = load i64, i64* %38, align 4
  store i64 %76, i64* %37, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !12
  store i64 %41, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !12
  store i16 %42, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !12
  store i64 %43, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !12
  store i11 %44, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !12
  store i128 %45, i128* %XMM0, align 1, !mcsema_real_eip !12
  store i128 %46, i128* %XMM1, align 1, !mcsema_real_eip !12
  store i128 %47, i128* %XMM2, align 1, !mcsema_real_eip !12
  store i128 %48, i128* %XMM3, align 1, !mcsema_real_eip !12
  store i128 %49, i128* %XMM4, align 1, !mcsema_real_eip !12
  store i128 %50, i128* %XMM5, align 1, !mcsema_real_eip !12
  store i128 %51, i128* %XMM6, align 1, !mcsema_real_eip !12
  store i128 %52, i128* %XMM7, align 1, !mcsema_real_eip !12
  store i128 %53, i128* %XMM8, align 1, !mcsema_real_eip !12
  store i128 %54, i128* %XMM9, align 1, !mcsema_real_eip !12
  store i128 %55, i128* %XMM10, align 1, !mcsema_real_eip !12
  store i128 %56, i128* %XMM11, align 1, !mcsema_real_eip !12
  store i128 %57, i128* %XMM12, align 1, !mcsema_real_eip !12
  store i128 %58, i128* %XMM13, align 1, !mcsema_real_eip !12
  store i128 %59, i128* %XMM14, align 1, !mcsema_real_eip !12
  store i128 %60, i128* %XMM15, align 1, !mcsema_real_eip !12
  store i64 %61, i64* %STACK_BASE, align 1, !mcsema_real_eip !12
  store i64 %62, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !12
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_48)
  %77 = load i64, i64* %RAX, !mcsema_real_eip !12
  %78 = load i64, i64* %RCX, !mcsema_real_eip !12
  %79 = load i64, i64* %RDX, !mcsema_real_eip !12
  %80 = load i64, i64* %RSI, !mcsema_real_eip !12
  %81 = load i64, i64* %RDI, !mcsema_real_eip !12
  %82 = load i64, i64* %R8, !mcsema_real_eip !12
  %83 = load i64, i64* %R9, !mcsema_real_eip !12
  %84 = load i64, i64* %R10, !mcsema_real_eip !12
  %85 = load i64, i64* %R11, !mcsema_real_eip !12
  %86 = load i64, i64* %R12, !mcsema_real_eip !12
  %87 = load i64, i64* %R13, !mcsema_real_eip !12
  %88 = load i64, i64* %R14, !mcsema_real_eip !12
  %89 = load i64, i64* %R15, !mcsema_real_eip !12
  %90 = load i64, i64* %RIP, !mcsema_real_eip !12
  %91 = load i1, i1* %DF, align 1, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !12
  %92 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !12
  %93 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !12
  %94 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !12
  %95 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !12
  %96 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !12
  %97 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !12
  %98 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !12
  %99 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !12
  %100 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !12
  %101 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !12
  %102 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !12
  %103 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !12
  %104 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !12
  %105 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !12
  %106 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !12
  %107 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !12
  %108 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !12
  %109 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !12
  %110 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !12
  %111 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !12
  %112 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !12
  %113 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !12
  %114 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !12
  %115 = load i64, i64* %37, align 4
  store i64 %115, i64* %38, align 4
  %116 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !12
  %117 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !12
  %118 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !12
  %119 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !12
  %120 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !12
  %121 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !12
  %122 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !12
  %123 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !12
  %124 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !12
  %125 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !12
  %126 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !12
  %127 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !12
  %128 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !12
  %129 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !12
  %130 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !12
  %131 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !12
  %132 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !12
  %133 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !12
  %134 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !12
  %135 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !12
  %136 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !12
  %137 = load i64, i64* %STACK_BASE, !mcsema_real_eip !12
  %138 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !12
  %_load_rsp_ptr_39 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_40 = ptrtoint i8* %_load_rsp_ptr_39 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_40, i64 40)
  %139 = extractvalue { i64, i1 } %uadd, 0
  %140 = xor i64 %139, %_new_ptr2int_40, !mcsema_real_eip !13
  %141 = and i64 %140, 16, !mcsema_real_eip !13
  %142 = icmp ne i64 %141, 0, !mcsema_real_eip !13
  %143 = icmp slt i64 %139, 0
  %144 = icmp eq i64 %139, 0, !mcsema_real_eip !13
  %145 = xor i64 %_new_ptr2int_40, -9223372036854775808, !mcsema_real_eip !13
  %146 = and i64 %140, %145, !mcsema_real_eip !13
  %147 = icmp slt i64 %146, 0
  %148 = trunc i64 %139 to i8, !mcsema_real_eip !13
  %149 = tail call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !13
  %150 = and i8 %149, 1
  %151 = icmp eq i8 %150, 0
  %152 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %139 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %153 = inttoptr i64 %139 to i64*, !mcsema_real_eip !14
  %154 = load i64, i64* %153, !mcsema_real_eip !14
  %155 = add i64 %139, 8, !mcsema_real_eip !14
  %_new_int2ptr_41 = inttoptr i64 %155 to i8*
  store volatile i8* %_new_int2ptr_41, i8** %_RSP_ptr_
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !15
  %157 = load i64, i64* %156, !mcsema_real_eip !15
  %_new_int2ptr_42 = inttoptr i64 %157 to i8*
  store volatile i8* %_new_int2ptr_42, i8** %_RBP_ptr_
  %158 = add i64 %139, 24, !mcsema_real_eip !16
  %_new_int2ptr_43 = inttoptr i64 %158 to i8*
  store volatile i8* %_new_int2ptr_43, i8** %_RSP_ptr_
  store i64 %77, i64* %RAX, !mcsema_real_eip !16
  store i64 %154, i64* %RBX, !mcsema_real_eip !16
  store i64 %78, i64* %RCX, !mcsema_real_eip !16
  store i64 %79, i64* %RDX, !mcsema_real_eip !16
  store i64 %80, i64* %RSI, !mcsema_real_eip !16
  store i64 %81, i64* %RDI, !mcsema_real_eip !16
  store volatile i64 %158, i64* %RSP
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_47 = ptrtoint i8* %_load_rbp_ptr_46 to i64
  store volatile i64 %_new_ptr2int_47, i64* %RBP
  store i64 %82, i64* %R8, !mcsema_real_eip !16
  store i64 %83, i64* %R9, !mcsema_real_eip !16
  store i64 %84, i64* %R10, !mcsema_real_eip !16
  store i64 %85, i64* %R11, !mcsema_real_eip !16
  store i64 %86, i64* %R12, !mcsema_real_eip !16
  store i64 %87, i64* %R13, !mcsema_real_eip !16
  store i64 %88, i64* %R14, !mcsema_real_eip !16
  store i64 %89, i64* %R15, !mcsema_real_eip !16
  store i64 %90, i64* %RIP, !mcsema_real_eip !16
  store i1 %152, i1* %CF, align 1, !mcsema_real_eip !16
  store i1 %151, i1* %PF, align 1, !mcsema_real_eip !16
  store i1 %142, i1* %AF, align 1, !mcsema_real_eip !16
  store i1 %144, i1* %ZF, align 1, !mcsema_real_eip !16
  store i1 %143, i1* %SF, align 1, !mcsema_real_eip !16
  store i1 %147, i1* %OF, align 1, !mcsema_real_eip !16
  store i1 %91, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  store i1 %92, i1* %FPU_B, align 1, !mcsema_real_eip !16
  store i1 %93, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  store i3 %94, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  store i1 %95, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  store i1 %96, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  store i1 %97, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  store i1 %98, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  store i1 %99, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  store i1 %100, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  store i1 %101, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  store i1 %102, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  store i1 %103, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  store i1 %104, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  store i1 %105, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  store i1 %106, i1* %FPU_X, align 1, !mcsema_real_eip !16
  store i2 %107, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  store i2 %108, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  store i1 %109, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  store i1 %110, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  store i1 %111, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  store i1 %112, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  store i1 %113, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  store i1 %114, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %159 = load i64, i64* %38, align 4
  store i64 %159, i64* %37, align 4
  store i16 %116, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  store i64 %117, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  store i16 %118, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  store i64 %119, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  store i11 %120, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !16
  store i128 %121, i128* %XMM0, align 1, !mcsema_real_eip !16
  store i128 %122, i128* %XMM1, align 1, !mcsema_real_eip !16
  store i128 %123, i128* %XMM2, align 1, !mcsema_real_eip !16
  store i128 %124, i128* %XMM3, align 1, !mcsema_real_eip !16
  store i128 %125, i128* %XMM4, align 1, !mcsema_real_eip !16
  store i128 %126, i128* %XMM5, align 1, !mcsema_real_eip !16
  store i128 %127, i128* %XMM6, align 1, !mcsema_real_eip !16
  store i128 %128, i128* %XMM7, align 1, !mcsema_real_eip !16
  store i128 %129, i128* %XMM8, align 1, !mcsema_real_eip !16
  store i128 %130, i128* %XMM9, align 1, !mcsema_real_eip !16
  store i128 %131, i128* %XMM10, align 1, !mcsema_real_eip !16
  store i128 %132, i128* %XMM11, align 1, !mcsema_real_eip !16
  store i128 %133, i128* %XMM12, align 1, !mcsema_real_eip !16
  store i128 %134, i128* %XMM13, align 1, !mcsema_real_eip !16
  store i128 %135, i128* %XMM14, align 1, !mcsema_real_eip !16
  store i128 %136, i128* %XMM15, align 1, !mcsema_real_eip !16
  store i64 %137, i64* %STACK_BASE, align 1, !mcsema_real_eip !16
  store i64 %138, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !17
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !17
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !17
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !17
  %1 = load i64, i64* %RBX, !mcsema_real_eip !17
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !17
  %2 = load i64, i64* %RCX, !mcsema_real_eip !17
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !17
  %3 = load i64, i64* %RDX, !mcsema_real_eip !17
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !17
  %4 = load i64, i64* %RSI, !mcsema_real_eip !17
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !17
  %5 = load i64, i64* %RDI, !mcsema_real_eip !17
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !17
  %6 = load i64, i64* %RSP, !mcsema_real_eip !17
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !17
  %7 = load i64, i64* %RBP, !mcsema_real_eip !17
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !17
  %8 = load i64, i64* %R8, !mcsema_real_eip !17
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !17
  %9 = load i64, i64* %R9, !mcsema_real_eip !17
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !17
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !17
  %10 = load i64, i64* %R11, !mcsema_real_eip !17
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !17
  %11 = load i64, i64* %R12, !mcsema_real_eip !17
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !17
  %12 = load i64, i64* %R13, !mcsema_real_eip !17
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !17
  %13 = load i64, i64* %R14, !mcsema_real_eip !17
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !17
  %14 = load i64, i64* %R15, !mcsema_real_eip !17
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !17
  %15 = load i64, i64* %RIP, !mcsema_real_eip !17
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !17
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !17
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !17
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !17
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !17
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !17
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !17
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !17
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !17
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !17
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !17
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !17
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !17
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !17
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !17
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !17
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !17
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !17
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !17
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !17
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !17
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !17
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !17
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !17
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !17
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !17
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !17
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !17
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !17
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !17
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !17
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !17
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !17
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !17
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !17
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !17
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !17
  %44 = bitcast i8* %43 to i64*
  %45 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %46 = load i64, i64* %44, align 4
  store i64 %46, i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !17
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !17
  %48 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !17
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !17
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !17
  %50 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !17
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !17
  %51 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !17
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !17
  %52 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !17
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !17
  %53 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !17
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !17
  %54 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !17
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !17
  %55 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !17
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !17
  %56 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !17
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !17
  %57 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !17
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !17
  %58 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !17
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !17
  %59 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !17
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !17
  %60 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !17
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !17
  %61 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !17
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !17
  %62 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !17
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !17
  %63 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !17
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !17
  %64 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !17
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !17
  %65 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !17
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !17
  %66 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !17
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !17
  %67 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !17
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !17
  %68 = load i64, i64* %STACK_BASE, !mcsema_real_eip !17
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !17
  %69 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !17
  %70 = add i64 %6, -8
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !17
  store i64 %7, i64* %71, !mcsema_real_eip !17
  %72 = add i64 %6, 16, !mcsema_real_eip !18
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !18
  %74 = bitcast i64* %73 to i32*
  %75 = load i32, i32* %74, !mcsema_real_eip !18
  %76 = zext i32 %75 to i64, !mcsema_real_eip !18
  %77 = add i64 %70, 16, !mcsema_real_eip !19
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !19
  %79 = bitcast i64* %78 to i32*
  %80 = load i32, i32* %79, !mcsema_real_eip !19
  %81 = zext i32 %80 to i64, !mcsema_real_eip !19
  %82 = add i64 %70, -4, !mcsema_real_eip !20
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !20
  %84 = trunc i64 %5 to i32, !mcsema_real_eip !20
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !20
  %86 = add i64 %70, -8, !mcsema_real_eip !21
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !21
  %88 = trunc i64 %4 to i32, !mcsema_real_eip !21
  %89 = bitcast i64* %87 to i32*
  store i32 %88, i32* %89, !mcsema_real_eip !21
  %90 = add i64 %70, -12, !mcsema_real_eip !22
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !22
  %92 = trunc i64 %3 to i32, !mcsema_real_eip !22
  %93 = bitcast i64* %91 to i32*
  store i32 %92, i32* %93, !mcsema_real_eip !22
  %94 = add i64 %70, -16, !mcsema_real_eip !23
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !23
  %96 = trunc i64 %2 to i32, !mcsema_real_eip !23
  %97 = bitcast i64* %95 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !23
  %98 = add i64 %70, -20, !mcsema_real_eip !24
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !24
  %100 = trunc i64 %8 to i32, !mcsema_real_eip !24
  %101 = bitcast i64* %99 to i32*
  store i32 %100, i32* %101, !mcsema_real_eip !24
  %102 = add i64 %70, -24, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = trunc i64 %9 to i32, !mcsema_real_eip !25
  %105 = bitcast i64* %103 to i32*
  store i32 %104, i32* %105, !mcsema_real_eip !25
  %106 = add i64 %70, -28, !mcsema_real_eip !26
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !26
  %108 = bitcast i64* %107 to i32*
  store i32 %80, i32* %108, !mcsema_real_eip !26
  %109 = add i64 %70, -32, !mcsema_real_eip !27
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !27
  %111 = bitcast i64* %110 to i32*
  store i32 %75, i32* %111, !mcsema_real_eip !27
  %112 = load i32, i32* %108, !mcsema_real_eip !28
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %112, i32 %75)
  %113 = extractvalue { i32, i1 } %uadd, 0
  %114 = xor i32 %113, %75, !mcsema_real_eip !29
  %115 = xor i32 %114, %112, !mcsema_real_eip !29
  %116 = and i32 %115, 16, !mcsema_real_eip !29
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !29
  %118 = icmp slt i32 %113, 0
  %119 = icmp eq i32 %113, 0, !mcsema_real_eip !29
  %120 = xor i32 %112, -2147483648, !mcsema_real_eip !29
  %121 = xor i32 %120, %75, !mcsema_real_eip !29
  %122 = and i32 %114, %121, !mcsema_real_eip !29
  %123 = icmp slt i32 %122, 0
  %124 = trunc i32 %113 to i8, !mcsema_real_eip !29
  %125 = tail call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !29
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  %128 = extractvalue { i32, i1 } %uadd, 1
  %129 = add i64 %70, -36, !mcsema_real_eip !30
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !30
  %131 = bitcast i64* %130 to i32*
  store i32 %113, i32* %131, !mcsema_real_eip !30
  %132 = zext i32 %113 to i64, !mcsema_real_eip !31
  %133 = load i64, i64* %71, !mcsema_real_eip !32
  store i64 %132, i64* %RAX, !mcsema_real_eip !33
  store i64 %1, i64* %RBX, !mcsema_real_eip !33
  store i64 %2, i64* %RCX, !mcsema_real_eip !33
  store i64 %3, i64* %RDX, !mcsema_real_eip !33
  store i64 %4, i64* %RSI, !mcsema_real_eip !33
  store i64 %5, i64* %RDI, !mcsema_real_eip !33
  store i64 %77, i64* %RSP, !mcsema_real_eip !33
  store i64 %133, i64* %RBP, !mcsema_real_eip !33
  store i64 %8, i64* %R8, !mcsema_real_eip !33
  store i64 %9, i64* %R9, !mcsema_real_eip !33
  store i64 %81, i64* %R10, !mcsema_real_eip !33
  store i64 %10, i64* %R11, !mcsema_real_eip !33
  store i64 %11, i64* %R12, !mcsema_real_eip !33
  store i64 %12, i64* %R13, !mcsema_real_eip !33
  store i64 %13, i64* %R14, !mcsema_real_eip !33
  store i64 %14, i64* %R15, !mcsema_real_eip !33
  store i64 %15, i64* %RIP, !mcsema_real_eip !33
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !33
  store i1 %127, i1* %PF, align 1, !mcsema_real_eip !33
  store i1 %117, i1* %AF, align 1, !mcsema_real_eip !33
  store i1 %119, i1* %ZF, align 1, !mcsema_real_eip !33
  store i1 %118, i1* %SF, align 1, !mcsema_real_eip !33
  store i1 %123, i1* %OF, align 1, !mcsema_real_eip !33
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !33
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !33
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %134 = load i64, i64* %45, align 4
  store i64 %134, i64* %44, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !33
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !33
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !33
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !33
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !33
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !33
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !33
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !33
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !33
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !33
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !33
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !33
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !33
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !33
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !33
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !33
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !33
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !33
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !33
  store i64 %68, i64* %STACK_BASE, align 1, !mcsema_real_eip !33
  store i64 %69, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_40(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 44
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 44
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !17
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !17
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !17
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !17
  %1 = load i64, i64* %RBX, !mcsema_real_eip !17
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !17
  %2 = load i64, i64* %RCX, !mcsema_real_eip !17
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !17
  %3 = load i64, i64* %RDX, !mcsema_real_eip !17
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !17
  %4 = load i64, i64* %RSI, !mcsema_real_eip !17
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !17
  %5 = load i64, i64* %RDI, !mcsema_real_eip !17
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !17
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !17
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !17
  %6 = load i64, i64* %R8, !mcsema_real_eip !17
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !17
  %7 = load i64, i64* %R9, !mcsema_real_eip !17
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !17
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !17
  %8 = load i64, i64* %R11, !mcsema_real_eip !17
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !17
  %9 = load i64, i64* %R12, !mcsema_real_eip !17
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !17
  %10 = load i64, i64* %R13, !mcsema_real_eip !17
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !17
  %11 = load i64, i64* %R14, !mcsema_real_eip !17
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !17
  %12 = load i64, i64* %R15, !mcsema_real_eip !17
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !17
  %13 = load i64, i64* %RIP, !mcsema_real_eip !17
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !17
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !17
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !17
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !17
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !17
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !17
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !17
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !17
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !17
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !17
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !17
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !17
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !17
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !17
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !17
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !17
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !17
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !17
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !17
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !17
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !17
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !17
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !17
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !17
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !17
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !17
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !17
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !17
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !17
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !17
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !17
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !17
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !17
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !17
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !17
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !17
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !17
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !17
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !17
  %48 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !17
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !17
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !17
  %50 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !17
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !17
  %51 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !17
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !17
  %52 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !17
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !17
  %53 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !17
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !17
  %54 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !17
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !17
  %55 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !17
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !17
  %56 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !17
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !17
  %57 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !17
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !17
  %58 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !17
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !17
  %59 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !17
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !17
  %60 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !17
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !17
  %61 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !17
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !17
  %62 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !17
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !17
  %63 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !17
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !17
  %64 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !17
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !17
  %65 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !17
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !17
  %66 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !17
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !17
  %67 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !17
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !17
  %68 = load i64, i64* %STACK_BASE, !mcsema_real_eip !17
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !17
  %69 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !17
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %70 = bitcast i64* %_allin_new_bt_2 to i32*
  %_ptr_to_int_49 = ptrtoint i32* %70 to i64
  %_ptr_bt_51 = bitcast i32* %70 to i8*
  %_offset_above_rbp_52 = sub i64 %_ptr_to_int_49, %_local_end_to_int_
  %_pot_address_in_parent_stack_53 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_52
  %_cond1_54 = icmp ugt i8* %_ptr_bt_51, %_local_stack_end_ptr_
  %_cond2_1_55 = icmp ugt i8* %_ptr_bt_51, %_parent_stack_end_ptr_
  %_cond2_2_56 = icmp ult i8* %_ptr_bt_51, %_parent_stack_start_ptr_
  %_cond2_57 = or i1 %_cond2_1_55, %_cond2_2_56
  %_cond4_58 = icmp ule i8* %_pot_address_in_parent_stack_53, %_parent_stack_end_ptr_
  %_cond1_n_cond2_59 = and i1 %_cond1_54, %_cond2_57
  %_cond1_n_cond2_cond3_60 = and i1 %_cond1_n_cond2_59, %_cond4_58
  br i1 %_cond1_n_cond2_cond3_60, label %71, label %72

; <label>:71:                                     ; preds = %45
  %_address_in_parent_stack_bt_62 = bitcast i8* %_pot_address_in_parent_stack_53 to i32*
  br label %72

; <label>:72:                                     ; preds = %45, %71
  %73 = phi i32* [ %70, %45 ], [ %_address_in_parent_stack_bt_62, %71 ]
  %_new_load_63 = load i32, i32* %73
  %74 = zext i32 %_new_load_63 to i64, !mcsema_real_eip !18
  %_new_gep_4 = getelementptr i8, i8* %_new_gep_, i64 16
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %75 = bitcast i64* %_allin_new_bt_5 to i32*
  %_ptr_to_int_64 = ptrtoint i32* %75 to i64
  %_ptr_bt_66 = bitcast i32* %75 to i8*
  %_offset_above_rbp_67 = sub i64 %_ptr_to_int_64, %_local_end_to_int_
  %_pot_address_in_parent_stack_68 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_67
  %_cond1_69 = icmp ugt i8* %_ptr_bt_66, %_local_stack_end_ptr_
  %_cond2_1_70 = icmp ugt i8* %_ptr_bt_66, %_parent_stack_end_ptr_
  %_cond2_2_71 = icmp ult i8* %_ptr_bt_66, %_parent_stack_start_ptr_
  %_cond2_72 = or i1 %_cond2_1_70, %_cond2_2_71
  %_cond4_73 = icmp ule i8* %_pot_address_in_parent_stack_68, %_parent_stack_end_ptr_
  %_cond1_n_cond2_74 = and i1 %_cond1_69, %_cond2_72
  %_cond1_n_cond2_cond3_75 = and i1 %_cond1_n_cond2_74, %_cond4_73
  br i1 %_cond1_n_cond2_cond3_75, label %76, label %77

; <label>:76:                                     ; preds = %72
  %_address_in_parent_stack_bt_77 = bitcast i8* %_pot_address_in_parent_stack_68 to i32*
  br label %77

; <label>:77:                                     ; preds = %72, %76
  %78 = phi i32* [ %75, %72 ], [ %_address_in_parent_stack_bt_77, %76 ]
  %_new_load_78 = load i32, i32* %78
  %79 = zext i32 %_new_load_78 to i64, !mcsema_real_eip !19
  %_new_gep_7 = getelementptr i8, i8* %_new_gep_, i64 -4
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %80 = trunc i64 %5 to i32, !mcsema_real_eip !20
  %81 = bitcast i64* %_allin_new_bt_8 to i32*
  store i32 %80, i32* %81, !mcsema_real_eip !20
  %_new_gep_10 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %82 = trunc i64 %4 to i32, !mcsema_real_eip !21
  %83 = bitcast i64* %_allin_new_bt_11 to i32*
  store i32 %82, i32* %83, !mcsema_real_eip !21
  %_new_gep_13 = getelementptr i8, i8* %_new_gep_, i64 -12
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %84 = trunc i64 %3 to i32, !mcsema_real_eip !22
  %85 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !22
  %_new_gep_16 = getelementptr i8, i8* %_new_gep_, i64 -16
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %86 = trunc i64 %2 to i32, !mcsema_real_eip !23
  %87 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 %86, i32* %87, !mcsema_real_eip !23
  %_new_gep_19 = getelementptr i8, i8* %_new_gep_, i64 -20
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %88 = trunc i64 %6 to i32, !mcsema_real_eip !24
  %89 = bitcast i64* %_allin_new_bt_20 to i32*
  store i32 %88, i32* %89, !mcsema_real_eip !24
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_, i64 -24
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %90 = trunc i64 %7 to i32, !mcsema_real_eip !25
  %91 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !25
  %_new_gep_25 = getelementptr i8, i8* %_new_gep_, i64 -28
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %92 = bitcast i64* %_allin_new_bt_26 to i32*
  store i32 %_new_load_78, i32* %92, !mcsema_real_eip !26
  %_new_gep_28 = getelementptr i8, i8* %_new_gep_, i64 -32
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %93 = bitcast i64* %_allin_new_bt_29 to i32*
  store i32 %_new_load_63, i32* %93, !mcsema_real_eip !27
  %_ptr_to_int_79 = ptrtoint i32* %92 to i64
  %_ptr_bt_81 = bitcast i32* %92 to i8*
  %_offset_above_rbp_82 = sub i64 %_ptr_to_int_79, %_local_end_to_int_
  %_pot_address_in_parent_stack_83 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_82
  %_cond1_84 = icmp ugt i8* %_ptr_bt_81, %_local_stack_end_ptr_
  %_cond2_1_85 = icmp ugt i8* %_ptr_bt_81, %_parent_stack_end_ptr_
  %_cond2_2_86 = icmp ult i8* %_ptr_bt_81, %_parent_stack_start_ptr_
  %_cond2_87 = or i1 %_cond2_1_85, %_cond2_2_86
  %_cond4_88 = icmp ule i8* %_pot_address_in_parent_stack_83, %_parent_stack_end_ptr_
  %_cond1_n_cond2_89 = and i1 %_cond1_84, %_cond2_87
  %_cond1_n_cond2_cond3_90 = and i1 %_cond1_n_cond2_89, %_cond4_88
  br i1 %_cond1_n_cond2_cond3_90, label %94, label %95

; <label>:94:                                     ; preds = %77
  %_address_in_parent_stack_bt_92 = bitcast i8* %_pot_address_in_parent_stack_83 to i32*
  br label %95

; <label>:95:                                     ; preds = %77, %94
  %96 = phi i32* [ %92, %77 ], [ %_address_in_parent_stack_bt_92, %94 ]
  %_new_load_93 = load i32, i32* %96
  %_ptr_to_int_94 = ptrtoint i32* %93 to i64
  %_ptr_bt_96 = bitcast i32* %93 to i8*
  %_offset_above_rbp_97 = sub i64 %_ptr_to_int_94, %_local_end_to_int_
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %_ptr_bt_96, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %_ptr_bt_96, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %_ptr_bt_96, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond1_n_cond2_104, %_cond4_103
  br i1 %_cond1_n_cond2_cond3_105, label %97, label %98

; <label>:97:                                     ; preds = %95
  %_address_in_parent_stack_bt_107 = bitcast i8* %_pot_address_in_parent_stack_98 to i32*
  br label %98

; <label>:98:                                     ; preds = %95, %97
  %99 = phi i32* [ %93, %95 ], [ %_address_in_parent_stack_bt_107, %97 ]
  %_new_load_108 = load i32, i32* %99
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_93, i32 %_new_load_108)
  %100 = extractvalue { i32, i1 } %uadd, 0
  %101 = xor i32 %100, %_new_load_108, !mcsema_real_eip !29
  %102 = xor i32 %101, %_new_load_93, !mcsema_real_eip !29
  %103 = and i32 %102, 16, !mcsema_real_eip !29
  %104 = icmp ne i32 %103, 0, !mcsema_real_eip !29
  %105 = icmp slt i32 %100, 0
  %106 = icmp eq i32 %100, 0, !mcsema_real_eip !29
  %107 = xor i32 %_new_load_93, -2147483648, !mcsema_real_eip !29
  %108 = xor i32 %107, %_new_load_108, !mcsema_real_eip !29
  %109 = and i32 %101, %108, !mcsema_real_eip !29
  %110 = icmp slt i32 %109, 0
  %111 = trunc i32 %100 to i8, !mcsema_real_eip !29
  %112 = tail call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !29
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  %115 = extractvalue { i32, i1 } %uadd, 1
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_, i64 -36
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %116 = bitcast i64* %_allin_new_bt_38 to i32*
  store i32 %100, i32* %116, !mcsema_real_eip !30
  %_ptr_to_int_109 = ptrtoint i32* %116 to i64
  %_ptr_bt_111 = bitcast i32* %116 to i8*
  %_offset_above_rbp_112 = sub i64 %_ptr_to_int_109, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %_ptr_bt_111, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %_ptr_bt_111, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %_ptr_bt_111, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  br i1 %_cond1_n_cond2_cond3_120, label %117, label %118

; <label>:117:                                    ; preds = %98
  %_address_in_parent_stack_bt_122 = bitcast i8* %_pot_address_in_parent_stack_113 to i32*
  br label %118

; <label>:118:                                    ; preds = %98, %117
  %119 = phi i32* [ %116, %98 ], [ %_address_in_parent_stack_bt_122, %117 ]
  %_new_load_123 = load i32, i32* %119
  %120 = zext i32 %_new_load_123 to i64, !mcsema_real_eip !31
  %_load_rsp_ptr_42 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_43 = bitcast i8* %_load_rsp_ptr_42 to i64*
  %_ptr_to_int_124 = ptrtoint i64* %_allin_new_bt_43 to i64
  %_offset_above_rbp_127 = sub i64 %_ptr_to_int_124, %_local_end_to_int_
  %_pot_address_in_parent_stack_128 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_cond1_129 = icmp ugt i8* %_load_rsp_ptr_42, %_local_stack_end_ptr_
  %_cond2_1_130 = icmp ugt i8* %_load_rsp_ptr_42, %_parent_stack_end_ptr_
  %_cond2_2_131 = icmp ult i8* %_load_rsp_ptr_42, %_parent_stack_start_ptr_
  %_cond2_132 = or i1 %_cond2_1_130, %_cond2_2_131
  %_cond4_133 = icmp ule i8* %_pot_address_in_parent_stack_128, %_parent_stack_end_ptr_
  %_cond1_n_cond2_134 = and i1 %_cond1_129, %_cond2_132
  %_cond1_n_cond2_cond3_135 = and i1 %_cond1_n_cond2_134, %_cond4_133
  br i1 %_cond1_n_cond2_cond3_135, label %121, label %122

; <label>:121:                                    ; preds = %118
  %_address_in_parent_stack_bt_137 = bitcast i8* %_pot_address_in_parent_stack_128 to i64*
  br label %122

; <label>:122:                                    ; preds = %118, %121
  %123 = phi i64* [ %_allin_new_bt_43, %118 ], [ %_address_in_parent_stack_bt_137, %121 ]
  %_new_load_138 = load i64, i64* %123
  %_new_int2ptr_ = inttoptr i64 %_new_load_138 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rsp_ptr_42, i64 16
  store volatile i8* %_new_gep_44, i8** %_RSP_ptr_
  store i64 %120, i64* %RAX, !mcsema_real_eip !33
  store i64 %1, i64* %RBX, !mcsema_real_eip !33
  store i64 %2, i64* %RCX, !mcsema_real_eip !33
  store i64 %3, i64* %RDX, !mcsema_real_eip !33
  store i64 %4, i64* %RSI, !mcsema_real_eip !33
  store i64 %5, i64* %RDI, !mcsema_real_eip !33
  %_new_ptr2int_46 = ptrtoint i8* %_new_gep_44 to i64
  store volatile i64 %_new_ptr2int_46, i64* %RSP
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_48 = ptrtoint i8* %_load_rbp_ptr_47 to i64
  store volatile i64 %_new_ptr2int_48, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !33
  store i64 %7, i64* %R9, !mcsema_real_eip !33
  store i64 %79, i64* %R10, !mcsema_real_eip !33
  store i64 %8, i64* %R11, !mcsema_real_eip !33
  store i64 %9, i64* %R12, !mcsema_real_eip !33
  store i64 %10, i64* %R13, !mcsema_real_eip !33
  store i64 %11, i64* %R14, !mcsema_real_eip !33
  store i64 %12, i64* %R15, !mcsema_real_eip !33
  store i64 %13, i64* %RIP, !mcsema_real_eip !33
  store i1 %115, i1* %CF, align 1, !mcsema_real_eip !33
  store i1 %114, i1* %PF, align 1, !mcsema_real_eip !33
  store i1 %104, i1* %AF, align 1, !mcsema_real_eip !33
  store i1 %106, i1* %ZF, align 1, !mcsema_real_eip !33
  store i1 %105, i1* %SF, align 1, !mcsema_real_eip !33
  store i1 %110, i1* %OF, align 1, !mcsema_real_eip !33
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !33
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !33
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %_ptr_to_int_139 = ptrtoint i64* %43 to i64
  %_ptr_bt_141 = bitcast i64* %43 to i8*
  %_offset_above_rbp_142 = sub i64 %_ptr_to_int_139, %_local_end_to_int_
  %_pot_address_in_parent_stack_143 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_142
  %_cond1_144 = icmp ugt i8* %_ptr_bt_141, %_local_stack_end_ptr_
  %_cond2_1_145 = icmp ugt i8* %_ptr_bt_141, %_parent_stack_end_ptr_
  %_cond2_2_146 = icmp ult i8* %_ptr_bt_141, %_parent_stack_start_ptr_
  %_cond2_147 = or i1 %_cond2_1_145, %_cond2_2_146
  %_cond4_148 = icmp ule i8* %_pot_address_in_parent_stack_143, %_parent_stack_end_ptr_
  %_cond1_n_cond2_149 = and i1 %_cond1_144, %_cond2_147
  %_cond1_n_cond2_cond3_150 = and i1 %_cond1_n_cond2_149, %_cond4_148
  br i1 %_cond1_n_cond2_cond3_150, label %124, label %125

; <label>:124:                                    ; preds = %122
  %_address_in_parent_stack_bt_152 = bitcast i8* %_pot_address_in_parent_stack_143 to i64*
  br label %125

; <label>:125:                                    ; preds = %122, %124
  %126 = phi i64* [ %43, %122 ], [ %_address_in_parent_stack_bt_152, %124 ]
  %_new_load_153 = load i64, i64* %126
  store i64 %_new_load_153, i64* %42, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !33
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !33
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !33
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !33
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !33
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !33
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !33
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !33
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !33
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !33
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !33
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !33
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !33
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !33
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !33
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !33
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !33
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !33
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !33
  store i64 %68, i64* %STACK_BASE, align 1, !mcsema_real_eip !33
  store i64 %69, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 64}
!3 = !{i64 68}
!4 = !{i64 69}
!5 = !{i64 117}
!6 = !{i64 124}
!7 = !{i64 127}
!8 = !{i64 144}
!9 = !{i64 151}
!10 = !{i64 159}
!11 = !{i64 162}
!12 = !{i64 166}
!13 = !{i64 171}
!14 = !{i64 175}
!15 = !{i64 176}
!16 = !{i64 177}
!17 = !{i64 0}
!18 = !{i64 4}
!19 = !{i64 7}
!20 = !{i64 11}
!21 = !{i64 14}
!22 = !{i64 17}
!23 = !{i64 20}
!24 = !{i64 23}
!25 = !{i64 27}
!26 = !{i64 31}
!27 = !{i64 35}
!28 = !{i64 38}
!29 = !{i64 41}
!30 = !{i64 44}
!31 = !{i64 47}
!32 = !{i64 50}
!33 = !{i64 51}
