; ModuleID = 'Output/test_2.clang.trans.bc'
source_filename = "Output/test_2.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_70(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
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
  %2 = load i64, i64* %R11, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %3 = load i64, i64* %R12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %4 = load i64, i64* %R13, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %5 = load i64, i64* %R14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %6 = load i64, i64* %R15, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %7 = load i64, i64* %RIP, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %8 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %10 = bitcast x86_fp80* %9 to i8*, !mcsema_real_eip !2
  %11 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %10, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %12 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %13 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %14 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %27 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %28 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %35 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %36 = bitcast i8* %35 to i64*
  %37 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %38 = load i64, i64* %36, align 4
  store i64 %38, i64* %37, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %39 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %40 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %41 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %42 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %43 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %44 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %60 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %61 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %62 = and i64 %_trans_xor_, 16, !mcsema_real_eip !3
  %63 = icmp ne i64 %62, 0, !mcsema_real_eip !3
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %64 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !3
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_, 0
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_2, 32
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_2
  %67 = icmp slt i64 %_trans_xor_9, 0
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %68 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %68, !mcsema_real_eip !4
  %_load_rsp_ptr_13 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_14 = bitcast i8* %_load_rsp_ptr_13 to i64*
  %69 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 70, i32* %69, !mcsema_real_eip !5
  %_load_rsp_ptr_15 = load i8*, i8** %_RSP_ptr_
  %_new_gep_16 = getelementptr i8, i8* %_load_rsp_ptr_15, i64 8
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %70 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 80, i32* %70, !mcsema_real_eip !6
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -12
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %71 = bitcast i64* %_allin_new_bt_20 to i32*
  store i32 80, i32* %71, !mcsema_real_eip !7
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -16
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %72 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 70, i32* %72, !mcsema_real_eip !8
  %_load_rsp_ptr_24 = load i8*, i8** %_RSP_ptr_
  %_new_gep_25 = getelementptr i8, i8* %_load_rsp_ptr_24, i64 -8
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_26, !mcsema_real_eip !9
  store volatile i8* %_new_gep_25, i8** %_RSP_ptr_
  store i64 70, i64* %RAX, !mcsema_real_eip !9
  store i64 %1, i64* %RBX, !mcsema_real_eip !9
  store i64 40, i64* %RCX, !mcsema_real_eip !9
  store i64 30, i64* %RDX, !mcsema_real_eip !9
  store i64 20, i64* %RSI, !mcsema_real_eip !9
  store i64 10, i64* %RDI, !mcsema_real_eip !9
  %_new_ptr2int_28 = ptrtoint i8* %_new_gep_25 to i64
  store volatile i64 %_new_ptr2int_28, i64* %RSP
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_30 = ptrtoint i8* %_load_rbp_ptr_29 to i64
  store volatile i64 %_new_ptr2int_30, i64* %RBP
  store i64 50, i64* %R8, !mcsema_real_eip !9
  store i64 60, i64* %R9, !mcsema_real_eip !9
  store i64 80, i64* %R10, !mcsema_real_eip !9
  store i64 %2, i64* %R11, !mcsema_real_eip !9
  store i64 %3, i64* %R12, !mcsema_real_eip !9
  store i64 %4, i64* %R13, !mcsema_real_eip !9
  store i64 %5, i64* %R14, !mcsema_real_eip !9
  store i64 %6, i64* %R15, !mcsema_real_eip !9
  store i64 %7, i64* %RIP, !mcsema_real_eip !9
  store i1 %_trans_icmp_ne_7, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %66, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %63, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 %_trans_icmp_eq_, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %_trans_icmp_ne_, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %67, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %8, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %12, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %13, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %14, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %15, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %16, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %17, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %18, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %19, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %20, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %22, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %27, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %28, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  %73 = load i64, i64* %37, align 4
  store i64 %73, i64* %36, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %40, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %41, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %42, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i11 %43, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !9
  store i128 %44, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %45, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %46, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %47, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %48, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %49, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM15, align 1, !mcsema_real_eip !9
  store i64 %60, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  store i64 %61, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_45)
  %74 = load i64, i64* %RAX, !mcsema_real_eip !9
  %75 = load i64, i64* %RBX, !mcsema_real_eip !9
  %76 = load i64, i64* %RCX, !mcsema_real_eip !9
  %77 = load i64, i64* %RDX, !mcsema_real_eip !9
  %78 = load i64, i64* %RSI, !mcsema_real_eip !9
  %79 = load i64, i64* %RDI, !mcsema_real_eip !9
  %80 = load i64, i64* %R8, !mcsema_real_eip !9
  %81 = load i64, i64* %R9, !mcsema_real_eip !9
  %82 = load i64, i64* %R10, !mcsema_real_eip !9
  %83 = load i64, i64* %R11, !mcsema_real_eip !9
  %84 = load i64, i64* %R12, !mcsema_real_eip !9
  %85 = load i64, i64* %R13, !mcsema_real_eip !9
  %86 = load i64, i64* %R14, !mcsema_real_eip !9
  %87 = load i64, i64* %R15, !mcsema_real_eip !9
  %88 = load i64, i64* %RIP, !mcsema_real_eip !9
  %89 = load i1, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %10, i32 128, i32 4, i1 false), !mcsema_real_eip !9
  %90 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !9
  %91 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  %92 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  %93 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  %94 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  %95 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  %96 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  %97 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  %98 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  %99 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  %100 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  %101 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  %102 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  %103 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  %104 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !9
  %105 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  %106 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  %107 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  %108 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  %109 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  %110 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  %111 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  %112 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  %113 = load i64, i64* %36, align 4
  store i64 %113, i64* %37, align 4
  %114 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  %115 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !9
  %116 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  %117 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !9
  %118 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !9
  %119 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !9
  %120 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !9
  %121 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !9
  %122 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !9
  %123 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !9
  %124 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !9
  %125 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !9
  %126 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !9
  %127 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !9
  %128 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !9
  %129 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !9
  %130 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !9
  %131 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !9
  %132 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !9
  %133 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !9
  %134 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !9
  %135 = load i64, i64* %STACK_BASE, !mcsema_real_eip !9
  %136 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !9
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %137 = trunc i64 %74 to i32, !mcsema_real_eip !10
  %138 = bitcast i64* %_allin_new_bt_33 to i32*
  store i32 %137, i32* %138, !mcsema_real_eip !10
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %139 = bitcast i64* %_allin_new_bt_36 to i32*
  %140 = load i32, i32* %139, !mcsema_real_eip !11
  %141 = zext i32 %140 to i64, !mcsema_real_eip !11
  %_load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_38 = ptrtoint i8* %_load_rsp_ptr_37 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_38, i64 32)
  %142 = extractvalue { i64, i1 } %uadd, 0
  %143 = xor i64 %142, %_new_ptr2int_38, !mcsema_real_eip !12
  %144 = and i64 %143, 16, !mcsema_real_eip !12
  %145 = icmp ne i64 %144, 0, !mcsema_real_eip !12
  %146 = icmp slt i64 %142, 0
  %147 = icmp eq i64 %142, 0, !mcsema_real_eip !12
  %148 = xor i64 %_new_ptr2int_38, -9223372036854775808, !mcsema_real_eip !12
  %149 = and i64 %143, %148, !mcsema_real_eip !12
  %150 = icmp slt i64 %149, 0
  %151 = trunc i64 %142 to i8, !mcsema_real_eip !12
  %152 = tail call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !12
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  %155 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %142 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %156 = inttoptr i64 %142 to i64*, !mcsema_real_eip !13
  %157 = load i64, i64* %156, !mcsema_real_eip !13
  %_new_int2ptr_39 = inttoptr i64 %157 to i8*
  store volatile i8* %_new_int2ptr_39, i8** %_RBP_ptr_
  %158 = add i64 %142, 16, !mcsema_real_eip !14
  %_new_int2ptr_40 = inttoptr i64 %158 to i8*
  store volatile i8* %_new_int2ptr_40, i8** %_RSP_ptr_
  store i64 %141, i64* %RAX, !mcsema_real_eip !14
  store i64 %75, i64* %RBX, !mcsema_real_eip !14
  store i64 %76, i64* %RCX, !mcsema_real_eip !14
  store i64 %77, i64* %RDX, !mcsema_real_eip !14
  store i64 %78, i64* %RSI, !mcsema_real_eip !14
  store i64 %79, i64* %RDI, !mcsema_real_eip !14
  store volatile i64 %158, i64* %RSP
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_44 = ptrtoint i8* %_load_rbp_ptr_43 to i64
  store volatile i64 %_new_ptr2int_44, i64* %RBP
  store i64 %80, i64* %R8, !mcsema_real_eip !14
  store i64 %81, i64* %R9, !mcsema_real_eip !14
  store i64 %82, i64* %R10, !mcsema_real_eip !14
  store i64 %83, i64* %R11, !mcsema_real_eip !14
  store i64 %84, i64* %R12, !mcsema_real_eip !14
  store i64 %85, i64* %R13, !mcsema_real_eip !14
  store i64 %86, i64* %R14, !mcsema_real_eip !14
  store i64 %87, i64* %R15, !mcsema_real_eip !14
  store i64 %88, i64* %RIP, !mcsema_real_eip !14
  store i1 %155, i1* %CF, align 1, !mcsema_real_eip !14
  store i1 %154, i1* %PF, align 1, !mcsema_real_eip !14
  store i1 %145, i1* %AF, align 1, !mcsema_real_eip !14
  store i1 %147, i1* %ZF, align 1, !mcsema_real_eip !14
  store i1 %146, i1* %SF, align 1, !mcsema_real_eip !14
  store i1 %150, i1* %OF, align 1, !mcsema_real_eip !14
  store i1 %89, i1* %DF, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 128, i32 8, i1 false), !mcsema_real_eip !14
  store i1 %90, i1* %FPU_B, align 1, !mcsema_real_eip !14
  store i1 %91, i1* %FPU_C3, align 1, !mcsema_real_eip !14
  store i3 %92, i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  store i1 %93, i1* %FPU_C2, align 1, !mcsema_real_eip !14
  store i1 %94, i1* %FPU_C1, align 1, !mcsema_real_eip !14
  store i1 %95, i1* %FPU_C0, align 1, !mcsema_real_eip !14
  store i1 %96, i1* %FPU_ES, align 1, !mcsema_real_eip !14
  store i1 %97, i1* %FPU_SF, align 1, !mcsema_real_eip !14
  store i1 %98, i1* %FPU_PE, align 1, !mcsema_real_eip !14
  store i1 %99, i1* %FPU_UE, align 1, !mcsema_real_eip !14
  store i1 %100, i1* %FPU_OE, align 1, !mcsema_real_eip !14
  store i1 %101, i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  store i1 %102, i1* %FPU_DE, align 1, !mcsema_real_eip !14
  store i1 %103, i1* %FPU_IE, align 1, !mcsema_real_eip !14
  store i1 %104, i1* %FPU_X, align 1, !mcsema_real_eip !14
  store i2 %105, i2* %FPU_RC, align 1, !mcsema_real_eip !14
  store i2 %106, i2* %FPU_PC, align 1, !mcsema_real_eip !14
  store i1 %107, i1* %FPU_PM, align 1, !mcsema_real_eip !14
  store i1 %108, i1* %FPU_UM, align 1, !mcsema_real_eip !14
  store i1 %109, i1* %FPU_OM, align 1, !mcsema_real_eip !14
  store i1 %110, i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  store i1 %111, i1* %FPU_DM, align 1, !mcsema_real_eip !14
  store i1 %112, i1* %FPU_IM, align 1, !mcsema_real_eip !14
  %159 = load i64, i64* %37, align 4
  store i64 %159, i64* %36, align 4
  store i16 %114, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  store i64 %115, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !14
  store i16 %116, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  store i64 %117, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !14
  store i11 %118, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !14
  store i128 %119, i128* %XMM0, align 1, !mcsema_real_eip !14
  store i128 %120, i128* %XMM1, align 1, !mcsema_real_eip !14
  store i128 %121, i128* %XMM2, align 1, !mcsema_real_eip !14
  store i128 %122, i128* %XMM3, align 1, !mcsema_real_eip !14
  store i128 %123, i128* %XMM4, align 1, !mcsema_real_eip !14
  store i128 %124, i128* %XMM5, align 1, !mcsema_real_eip !14
  store i128 %125, i128* %XMM6, align 1, !mcsema_real_eip !14
  store i128 %126, i128* %XMM7, align 1, !mcsema_real_eip !14
  store i128 %127, i128* %XMM8, align 1, !mcsema_real_eip !14
  store i128 %128, i128* %XMM9, align 1, !mcsema_real_eip !14
  store i128 %129, i128* %XMM10, align 1, !mcsema_real_eip !14
  store i128 %130, i128* %XMM11, align 1, !mcsema_real_eip !14
  store i128 %131, i128* %XMM12, align 1, !mcsema_real_eip !14
  store i128 %132, i128* %XMM13, align 1, !mcsema_real_eip !14
  store i128 %133, i128* %XMM14, align 1, !mcsema_real_eip !14
  store i128 %134, i128* %XMM15, align 1, !mcsema_real_eip !14
  store i64 %135, i64* %STACK_BASE, align 1, !mcsema_real_eip !14
  store i64 %136, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !15
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !15
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !15
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !15
  %1 = load i64, i64* %RBX, !mcsema_real_eip !15
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !15
  %2 = load i64, i64* %RCX, !mcsema_real_eip !15
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !15
  %3 = load i64, i64* %RDX, !mcsema_real_eip !15
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !15
  %4 = load i64, i64* %RSI, !mcsema_real_eip !15
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !15
  %5 = load i64, i64* %RDI, !mcsema_real_eip !15
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !15
  %6 = load i64, i64* %RSP, !mcsema_real_eip !15
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !15
  %7 = load i64, i64* %RBP, !mcsema_real_eip !15
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !15
  %8 = load i64, i64* %R8, !mcsema_real_eip !15
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !15
  %9 = load i64, i64* %R9, !mcsema_real_eip !15
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !15
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !15
  %10 = load i64, i64* %R11, !mcsema_real_eip !15
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !15
  %11 = load i64, i64* %R12, !mcsema_real_eip !15
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !15
  %12 = load i64, i64* %R13, !mcsema_real_eip !15
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !15
  %13 = load i64, i64* %R14, !mcsema_real_eip !15
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !15
  %14 = load i64, i64* %R15, !mcsema_real_eip !15
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !15
  %15 = load i64, i64* %RIP, !mcsema_real_eip !15
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !15
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !15
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !15
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !15
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !15
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !15
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !15
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !15
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !15
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !15
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !15
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !15
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !15
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !15
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !15
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !15
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !15
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !15
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !15
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !15
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !15
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !15
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !15
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !15
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !15
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !15
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !15
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !15
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !15
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !15
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !15
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !15
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !15
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !15
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !15
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !15
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !15
  %44 = bitcast i8* %43 to i64*
  %45 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %46 = load i64, i64* %44, align 4
  store i64 %46, i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !15
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !15
  %48 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !15
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !15
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !15
  %50 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !15
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !15
  %51 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !15
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !15
  %52 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !15
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !15
  %53 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !15
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !15
  %54 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !15
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !15
  %55 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !15
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !15
  %56 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !15
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !15
  %57 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !15
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !15
  %58 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !15
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !15
  %59 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !15
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !15
  %60 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !15
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !15
  %61 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !15
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !15
  %62 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !15
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !15
  %63 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !15
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !15
  %64 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !15
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !15
  %65 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !15
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !15
  %66 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !15
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !15
  %67 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !15
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !15
  %68 = load i64, i64* %STACK_BASE, !mcsema_real_eip !15
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !15
  %69 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !15
  %70 = add i64 %6, -8
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !15
  store i64 %7, i64* %71, !mcsema_real_eip !15
  %72 = add i64 %6, 16, !mcsema_real_eip !16
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !16
  %74 = bitcast i64* %73 to i32*
  %75 = load i32, i32* %74, !mcsema_real_eip !16
  %76 = zext i32 %75 to i64, !mcsema_real_eip !16
  %77 = add i64 %70, 16, !mcsema_real_eip !17
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !17
  %79 = bitcast i64* %78 to i32*
  %80 = load i32, i32* %79, !mcsema_real_eip !17
  %81 = zext i32 %80 to i64, !mcsema_real_eip !17
  %82 = add i64 %70, -4, !mcsema_real_eip !18
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !18
  %84 = trunc i64 %5 to i32, !mcsema_real_eip !18
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !18
  %86 = add i64 %70, -8, !mcsema_real_eip !19
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !19
  %88 = trunc i64 %4 to i32, !mcsema_real_eip !19
  %89 = bitcast i64* %87 to i32*
  store i32 %88, i32* %89, !mcsema_real_eip !19
  %90 = add i64 %70, -12, !mcsema_real_eip !20
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !20
  %92 = trunc i64 %3 to i32, !mcsema_real_eip !20
  %93 = bitcast i64* %91 to i32*
  store i32 %92, i32* %93, !mcsema_real_eip !20
  %94 = add i64 %70, -16, !mcsema_real_eip !21
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !21
  %96 = trunc i64 %2 to i32, !mcsema_real_eip !21
  %97 = bitcast i64* %95 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !21
  %98 = add i64 %70, -20, !mcsema_real_eip !22
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !22
  %100 = trunc i64 %8 to i32, !mcsema_real_eip !22
  %101 = bitcast i64* %99 to i32*
  store i32 %100, i32* %101, !mcsema_real_eip !22
  %102 = add i64 %70, -24, !mcsema_real_eip !23
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !23
  %104 = trunc i64 %9 to i32, !mcsema_real_eip !23
  %105 = bitcast i64* %103 to i32*
  store i32 %104, i32* %105, !mcsema_real_eip !23
  %106 = add i64 %70, -28, !mcsema_real_eip !24
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !24
  %108 = bitcast i64* %107 to i32*
  store i32 %80, i32* %108, !mcsema_real_eip !24
  %109 = add i64 %70, -32, !mcsema_real_eip !25
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !25
  %111 = bitcast i64* %110 to i32*
  store i32 %75, i32* %111, !mcsema_real_eip !25
  %112 = load i32, i32* %85, !mcsema_real_eip !26
  %113 = load i32, i32* %89, !mcsema_real_eip !27
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %112, i32 %113)
  %114 = extractvalue { i32, i1 } %uadd, 0
  %115 = load i32, i32* %93, !mcsema_real_eip !28
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %114, i32 %115)
  %116 = extractvalue { i32, i1 } %uadd71, 0
  %117 = load i32, i32* %97, !mcsema_real_eip !29
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %116, i32 %117)
  %118 = extractvalue { i32, i1 } %uadd72, 0
  %119 = load i32, i32* %101, !mcsema_real_eip !30
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %118, i32 %119)
  %120 = extractvalue { i32, i1 } %uadd73, 0
  %121 = load i32, i32* %105, !mcsema_real_eip !31
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %120, i32 %121)
  %122 = extractvalue { i32, i1 } %uadd74, 0
  %123 = load i32, i32* %108, !mcsema_real_eip !32
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %122, i32 %123)
  %124 = extractvalue { i32, i1 } %uadd75, 0
  %125 = add i64 %70, -36, !mcsema_real_eip !33
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !33
  %127 = bitcast i64* %126 to i32*
  store i32 %124, i32* %127, !mcsema_real_eip !33
  %128 = add i32 %124, -40
  %129 = xor i32 %128, %124, !mcsema_real_eip !34
  %130 = icmp eq i32 %128, 0, !mcsema_real_eip !34
  %131 = icmp slt i32 %128, 0
  %132 = and i32 %129, %124, !mcsema_real_eip !34
  %133 = icmp slt i32 %132, 0
  %134 = xor i1 %131, %133
  %135 = or i1 %130, %134, !mcsema_real_eip !35
  %136 = load i32, i32* %111, !mcsema_real_eip !36
  br i1 %135, label %block_0x59, label %block_0x4b, !mcsema_real_eip !35

block_0x4b:                                       ; preds = %entry
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %124, i32 %136)
  %137 = extractvalue { i32, i1 } %uadd77, 0
  %138 = xor i32 %137, %136, !mcsema_real_eip !37
  %139 = xor i32 %138, %124, !mcsema_real_eip !37
  %140 = and i32 %139, 16, !mcsema_real_eip !37
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !37
  %142 = icmp slt i32 %137, 0
  %143 = icmp eq i32 %137, 0, !mcsema_real_eip !37
  %144 = xor i32 %124, -2147483648, !mcsema_real_eip !37
  %145 = xor i32 %144, %136, !mcsema_real_eip !37
  %146 = and i32 %138, %145, !mcsema_real_eip !37
  %147 = icmp slt i32 %146, 0
  %148 = trunc i32 %137 to i8, !mcsema_real_eip !37
  %149 = tail call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !37
  %150 = and i8 %149, 1
  %151 = icmp eq i8 %150, 0
  %152 = extractvalue { i32, i1 } %uadd77, 1
  %153 = add i64 %70, -40, !mcsema_real_eip !38
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !38
  %155 = bitcast i64* %154 to i32*
  store i32 %137, i32* %155, !mcsema_real_eip !38
  br label %block_0x62, !mcsema_real_eip !39

block_0x59:                                       ; preds = %entry
  %156 = sub i32 %124, %136, !mcsema_real_eip !36
  %157 = xor i32 %156, %124, !mcsema_real_eip !36
  %158 = xor i32 %157, %136, !mcsema_real_eip !36
  %159 = and i32 %158, 16, !mcsema_real_eip !36
  %160 = icmp ne i32 %159, 0, !mcsema_real_eip !36
  %161 = trunc i32 %156 to i8, !mcsema_real_eip !36
  %162 = tail call i8 @llvm.ctpop.i8(i8 %161), !mcsema_real_eip !36
  %163 = and i8 %162, 1
  %164 = icmp eq i8 %163, 0
  %165 = icmp eq i32 %124, %136
  %166 = icmp slt i32 %156, 0
  %167 = icmp ult i32 %124, %136, !mcsema_real_eip !36
  %168 = xor i32 %136, %124, !mcsema_real_eip !36
  %169 = and i32 %157, %168, !mcsema_real_eip !36
  %170 = icmp slt i32 %169, 0
  %171 = add i64 %70, -40, !mcsema_real_eip !40
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !40
  %173 = bitcast i64* %172 to i32*
  store i32 %156, i32* %173, !mcsema_real_eip !40
  br label %block_0x62, !mcsema_real_eip !41

block_0x62:                                       ; preds = %block_0x59, %block_0x4b
  %OF_val.0 = phi i1 [ %170, %block_0x59 ], [ %147, %block_0x4b ]
  %SF_val.0 = phi i1 [ %166, %block_0x59 ], [ %142, %block_0x4b ]
  %CF_val.0 = phi i1 [ %167, %block_0x59 ], [ %152, %block_0x4b ]
  %AF_val.0 = phi i1 [ %160, %block_0x59 ], [ %141, %block_0x4b ]
  %PF_val.0 = phi i1 [ %164, %block_0x59 ], [ %151, %block_0x4b ]
  %ZF_val.0 = phi i1 [ %165, %block_0x59 ], [ %143, %block_0x4b ]
  %174 = add i64 %70, -40, !mcsema_real_eip !42
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !42
  %176 = bitcast i64* %175 to i32*
  %177 = load i32, i32* %176, !mcsema_real_eip !42
  %178 = zext i32 %177 to i64, !mcsema_real_eip !42
  %179 = load i64, i64* %71, !mcsema_real_eip !43
  store i64 %178, i64* %RAX, !mcsema_real_eip !44
  store i64 %1, i64* %RBX, !mcsema_real_eip !44
  store i64 %2, i64* %RCX, !mcsema_real_eip !44
  store i64 %3, i64* %RDX, !mcsema_real_eip !44
  store i64 %4, i64* %RSI, !mcsema_real_eip !44
  store i64 %5, i64* %RDI, !mcsema_real_eip !44
  store i64 %77, i64* %RSP, !mcsema_real_eip !44
  store i64 %179, i64* %RBP, !mcsema_real_eip !44
  store i64 %8, i64* %R8, !mcsema_real_eip !44
  store i64 %9, i64* %R9, !mcsema_real_eip !44
  store i64 %81, i64* %R10, !mcsema_real_eip !44
  store i64 %10, i64* %R11, !mcsema_real_eip !44
  store i64 %11, i64* %R12, !mcsema_real_eip !44
  store i64 %12, i64* %R13, !mcsema_real_eip !44
  store i64 %13, i64* %R14, !mcsema_real_eip !44
  store i64 %14, i64* %R15, !mcsema_real_eip !44
  store i64 %15, i64* %RIP, !mcsema_real_eip !44
  store i1 %CF_val.0, i1* %CF, align 1, !mcsema_real_eip !44
  store i1 %PF_val.0, i1* %PF, align 1, !mcsema_real_eip !44
  store i1 %AF_val.0, i1* %AF, align 1, !mcsema_real_eip !44
  store i1 %ZF_val.0, i1* %ZF, align 1, !mcsema_real_eip !44
  store i1 %SF_val.0, i1* %SF, align 1, !mcsema_real_eip !44
  store i1 %OF_val.0, i1* %OF, align 1, !mcsema_real_eip !44
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !44
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !44
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !44
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !44
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !44
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !44
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !44
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !44
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !44
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !44
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !44
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !44
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !44
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !44
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !44
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !44
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !44
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !44
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !44
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !44
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !44
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !44
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !44
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !44
  %180 = load i64, i64* %45, align 4
  store i64 %180, i64* %44, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !44
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !44
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !44
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !44
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !44
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !44
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !44
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !44
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !44
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !44
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !44
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !44
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !44
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !44
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !44
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !44
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !44
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !44
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !44
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !44
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !44
  store i64 %68, i64* %STACK_BASE, align 1, !mcsema_real_eip !44
  store i64 %69, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_70(%struct.regs* %0)
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
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !15
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !15
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !15
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !15
  %1 = load i64, i64* %RBX, !mcsema_real_eip !15
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !15
  %2 = load i64, i64* %RCX, !mcsema_real_eip !15
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !15
  %3 = load i64, i64* %RDX, !mcsema_real_eip !15
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !15
  %4 = load i64, i64* %RSI, !mcsema_real_eip !15
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !15
  %5 = load i64, i64* %RDI, !mcsema_real_eip !15
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !15
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !15
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !15
  %6 = load i64, i64* %R8, !mcsema_real_eip !15
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !15
  %7 = load i64, i64* %R9, !mcsema_real_eip !15
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !15
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !15
  %8 = load i64, i64* %R11, !mcsema_real_eip !15
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !15
  %9 = load i64, i64* %R12, !mcsema_real_eip !15
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !15
  %10 = load i64, i64* %R13, !mcsema_real_eip !15
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !15
  %11 = load i64, i64* %R14, !mcsema_real_eip !15
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !15
  %12 = load i64, i64* %R15, !mcsema_real_eip !15
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !15
  %13 = load i64, i64* %RIP, !mcsema_real_eip !15
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !15
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !15
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !15
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !15
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !15
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !15
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !15
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !15
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !15
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !15
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !15
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !15
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !15
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !15
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !15
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !15
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !15
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !15
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !15
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !15
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !15
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !15
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !15
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !15
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !15
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !15
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !15
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !15
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !15
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !15
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !15
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !15
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !15
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !15
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !15
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !15
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !15
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !15
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !15
  %48 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !15
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !15
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !15
  %50 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !15
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !15
  %51 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !15
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !15
  %52 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !15
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !15
  %53 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !15
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !15
  %54 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !15
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !15
  %55 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !15
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !15
  %56 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !15
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !15
  %57 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !15
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !15
  %58 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !15
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !15
  %59 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !15
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !15
  %60 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !15
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !15
  %61 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !15
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !15
  %62 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !15
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !15
  %63 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !15
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !15
  %64 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !15
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !15
  %65 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !15
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !15
  %66 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !15
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !15
  %67 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !15
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !15
  %68 = load i64, i64* %STACK_BASE, !mcsema_real_eip !15
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !15
  %69 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !15
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %70 = bitcast i64* %_allin_new_bt_2 to i32*
  %_ptr_to_int_79 = ptrtoint i32* %70 to i64
  %_ptr_bt_81 = bitcast i32* %70 to i8*
  %_offset_above_rbp_82 = sub i64 %_ptr_to_int_79, %_local_end_to_int_
  %_pot_address_in_parent_stack_83 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_82
  %_cond1_84 = icmp ugt i8* %_ptr_bt_81, %_local_stack_end_ptr_
  %_cond2_1_85 = icmp ugt i8* %_ptr_bt_81, %_parent_stack_end_ptr_
  %_cond2_2_86 = icmp ult i8* %_ptr_bt_81, %_parent_stack_start_ptr_
  %_cond2_87 = or i1 %_cond2_1_85, %_cond2_2_86
  %_cond4_88 = icmp ule i8* %_pot_address_in_parent_stack_83, %_parent_stack_end_ptr_
  %_cond1_n_cond2_89 = and i1 %_cond1_84, %_cond2_87
  %_cond1_n_cond2_cond3_90 = and i1 %_cond1_n_cond2_89, %_cond4_88
  br i1 %_cond1_n_cond2_cond3_90, label %71, label %72

; <label>:71:                                     ; preds = %45
  %_address_in_parent_stack_bt_92 = bitcast i8* %_pot_address_in_parent_stack_83 to i32*
  br label %72

; <label>:72:                                     ; preds = %45, %71
  %73 = phi i32* [ %70, %45 ], [ %_address_in_parent_stack_bt_92, %71 ]
  %_new_load_93 = load i32, i32* %73
  %74 = zext i32 %_new_load_93 to i64, !mcsema_real_eip !16
  %_new_gep_4 = getelementptr i8, i8* %_new_gep_, i64 16
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %75 = bitcast i64* %_allin_new_bt_5 to i32*
  %_ptr_to_int_94 = ptrtoint i32* %75 to i64
  %_ptr_bt_96 = bitcast i32* %75 to i8*
  %_offset_above_rbp_97 = sub i64 %_ptr_to_int_94, %_local_end_to_int_
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %_ptr_bt_96, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %_ptr_bt_96, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %_ptr_bt_96, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond1_n_cond2_104, %_cond4_103
  br i1 %_cond1_n_cond2_cond3_105, label %76, label %77

; <label>:76:                                     ; preds = %72
  %_address_in_parent_stack_bt_107 = bitcast i8* %_pot_address_in_parent_stack_98 to i32*
  br label %77

; <label>:77:                                     ; preds = %72, %76
  %78 = phi i32* [ %75, %72 ], [ %_address_in_parent_stack_bt_107, %76 ]
  %_new_load_108 = load i32, i32* %78
  %79 = zext i32 %_new_load_108 to i64, !mcsema_real_eip !17
  %_new_gep_7 = getelementptr i8, i8* %_new_gep_, i64 -4
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %80 = trunc i64 %5 to i32, !mcsema_real_eip !18
  %81 = bitcast i64* %_allin_new_bt_8 to i32*
  store i32 %80, i32* %81, !mcsema_real_eip !18
  %_new_gep_10 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %82 = trunc i64 %4 to i32, !mcsema_real_eip !19
  %83 = bitcast i64* %_allin_new_bt_11 to i32*
  store i32 %82, i32* %83, !mcsema_real_eip !19
  %_new_gep_13 = getelementptr i8, i8* %_new_gep_, i64 -12
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %84 = trunc i64 %3 to i32, !mcsema_real_eip !20
  %85 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !20
  %_new_gep_16 = getelementptr i8, i8* %_new_gep_, i64 -16
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %86 = trunc i64 %2 to i32, !mcsema_real_eip !21
  %87 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 %86, i32* %87, !mcsema_real_eip !21
  %_new_gep_19 = getelementptr i8, i8* %_new_gep_, i64 -20
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %88 = trunc i64 %6 to i32, !mcsema_real_eip !22
  %89 = bitcast i64* %_allin_new_bt_20 to i32*
  store i32 %88, i32* %89, !mcsema_real_eip !22
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_, i64 -24
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %90 = trunc i64 %7 to i32, !mcsema_real_eip !23
  %91 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !23
  %_new_gep_25 = getelementptr i8, i8* %_new_gep_, i64 -28
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %92 = bitcast i64* %_allin_new_bt_26 to i32*
  store i32 %_new_load_108, i32* %92, !mcsema_real_eip !24
  %_new_gep_28 = getelementptr i8, i8* %_new_gep_, i64 -32
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %93 = bitcast i64* %_allin_new_bt_29 to i32*
  store i32 %_new_load_93, i32* %93, !mcsema_real_eip !25
  %_ptr_to_int_109 = ptrtoint i32* %81 to i64
  %_ptr_bt_111 = bitcast i32* %81 to i8*
  %_offset_above_rbp_112 = sub i64 %_ptr_to_int_109, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %_ptr_bt_111, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %_ptr_bt_111, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %_ptr_bt_111, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  br i1 %_cond1_n_cond2_cond3_120, label %94, label %95

; <label>:94:                                     ; preds = %77
  %_address_in_parent_stack_bt_122 = bitcast i8* %_pot_address_in_parent_stack_113 to i32*
  br label %95

; <label>:95:                                     ; preds = %77, %94
  %96 = phi i32* [ %81, %77 ], [ %_address_in_parent_stack_bt_122, %94 ]
  %_new_load_123 = load i32, i32* %96
  %_ptr_to_int_124 = ptrtoint i32* %83 to i64
  %_ptr_bt_126 = bitcast i32* %83 to i8*
  %_offset_above_rbp_127 = sub i64 %_ptr_to_int_124, %_local_end_to_int_
  %_pot_address_in_parent_stack_128 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_cond1_129 = icmp ugt i8* %_ptr_bt_126, %_local_stack_end_ptr_
  %_cond2_1_130 = icmp ugt i8* %_ptr_bt_126, %_parent_stack_end_ptr_
  %_cond2_2_131 = icmp ult i8* %_ptr_bt_126, %_parent_stack_start_ptr_
  %_cond2_132 = or i1 %_cond2_1_130, %_cond2_2_131
  %_cond4_133 = icmp ule i8* %_pot_address_in_parent_stack_128, %_parent_stack_end_ptr_
  %_cond1_n_cond2_134 = and i1 %_cond1_129, %_cond2_132
  %_cond1_n_cond2_cond3_135 = and i1 %_cond1_n_cond2_134, %_cond4_133
  br i1 %_cond1_n_cond2_cond3_135, label %97, label %98

; <label>:97:                                     ; preds = %95
  %_address_in_parent_stack_bt_137 = bitcast i8* %_pot_address_in_parent_stack_128 to i32*
  br label %98

; <label>:98:                                     ; preds = %95, %97
  %99 = phi i32* [ %83, %95 ], [ %_address_in_parent_stack_bt_137, %97 ]
  %_new_load_138 = load i32, i32* %99
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_123, i32 %_new_load_138)
  %100 = extractvalue { i32, i1 } %uadd, 0
  %_ptr_to_int_139 = ptrtoint i32* %85 to i64
  %_ptr_bt_141 = bitcast i32* %85 to i8*
  %_offset_above_rbp_142 = sub i64 %_ptr_to_int_139, %_local_end_to_int_
  %_pot_address_in_parent_stack_143 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_142
  %_cond1_144 = icmp ugt i8* %_ptr_bt_141, %_local_stack_end_ptr_
  %_cond2_1_145 = icmp ugt i8* %_ptr_bt_141, %_parent_stack_end_ptr_
  %_cond2_2_146 = icmp ult i8* %_ptr_bt_141, %_parent_stack_start_ptr_
  %_cond2_147 = or i1 %_cond2_1_145, %_cond2_2_146
  %_cond4_148 = icmp ule i8* %_pot_address_in_parent_stack_143, %_parent_stack_end_ptr_
  %_cond1_n_cond2_149 = and i1 %_cond1_144, %_cond2_147
  %_cond1_n_cond2_cond3_150 = and i1 %_cond1_n_cond2_149, %_cond4_148
  br i1 %_cond1_n_cond2_cond3_150, label %101, label %102

; <label>:101:                                    ; preds = %98
  %_address_in_parent_stack_bt_152 = bitcast i8* %_pot_address_in_parent_stack_143 to i32*
  br label %102

; <label>:102:                                    ; preds = %98, %101
  %103 = phi i32* [ %85, %98 ], [ %_address_in_parent_stack_bt_152, %101 ]
  %_new_load_153 = load i32, i32* %103
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %100, i32 %_new_load_153)
  %104 = extractvalue { i32, i1 } %uadd71, 0
  %_ptr_to_int_154 = ptrtoint i32* %87 to i64
  %_ptr_bt_156 = bitcast i32* %87 to i8*
  %_offset_above_rbp_157 = sub i64 %_ptr_to_int_154, %_local_end_to_int_
  %_pot_address_in_parent_stack_158 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_157
  %_cond1_159 = icmp ugt i8* %_ptr_bt_156, %_local_stack_end_ptr_
  %_cond2_1_160 = icmp ugt i8* %_ptr_bt_156, %_parent_stack_end_ptr_
  %_cond2_2_161 = icmp ult i8* %_ptr_bt_156, %_parent_stack_start_ptr_
  %_cond2_162 = or i1 %_cond2_1_160, %_cond2_2_161
  %_cond4_163 = icmp ule i8* %_pot_address_in_parent_stack_158, %_parent_stack_end_ptr_
  %_cond1_n_cond2_164 = and i1 %_cond1_159, %_cond2_162
  %_cond1_n_cond2_cond3_165 = and i1 %_cond1_n_cond2_164, %_cond4_163
  br i1 %_cond1_n_cond2_cond3_165, label %105, label %106

; <label>:105:                                    ; preds = %102
  %_address_in_parent_stack_bt_167 = bitcast i8* %_pot_address_in_parent_stack_158 to i32*
  br label %106

; <label>:106:                                    ; preds = %102, %105
  %107 = phi i32* [ %87, %102 ], [ %_address_in_parent_stack_bt_167, %105 ]
  %_new_load_168 = load i32, i32* %107
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 %_new_load_168)
  %108 = extractvalue { i32, i1 } %uadd72, 0
  %_ptr_to_int_169 = ptrtoint i32* %89 to i64
  %_ptr_bt_171 = bitcast i32* %89 to i8*
  %_offset_above_rbp_172 = sub i64 %_ptr_to_int_169, %_local_end_to_int_
  %_pot_address_in_parent_stack_173 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_172
  %_cond1_174 = icmp ugt i8* %_ptr_bt_171, %_local_stack_end_ptr_
  %_cond2_1_175 = icmp ugt i8* %_ptr_bt_171, %_parent_stack_end_ptr_
  %_cond2_2_176 = icmp ult i8* %_ptr_bt_171, %_parent_stack_start_ptr_
  %_cond2_177 = or i1 %_cond2_1_175, %_cond2_2_176
  %_cond4_178 = icmp ule i8* %_pot_address_in_parent_stack_173, %_parent_stack_end_ptr_
  %_cond1_n_cond2_179 = and i1 %_cond1_174, %_cond2_177
  %_cond1_n_cond2_cond3_180 = and i1 %_cond1_n_cond2_179, %_cond4_178
  br i1 %_cond1_n_cond2_cond3_180, label %109, label %110

; <label>:109:                                    ; preds = %106
  %_address_in_parent_stack_bt_182 = bitcast i8* %_pot_address_in_parent_stack_173 to i32*
  br label %110

; <label>:110:                                    ; preds = %106, %109
  %111 = phi i32* [ %89, %106 ], [ %_address_in_parent_stack_bt_182, %109 ]
  %_new_load_183 = load i32, i32* %111
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %108, i32 %_new_load_183)
  %112 = extractvalue { i32, i1 } %uadd73, 0
  %_ptr_to_int_184 = ptrtoint i32* %91 to i64
  %_ptr_bt_186 = bitcast i32* %91 to i8*
  %_offset_above_rbp_187 = sub i64 %_ptr_to_int_184, %_local_end_to_int_
  %_pot_address_in_parent_stack_188 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_187
  %_cond1_189 = icmp ugt i8* %_ptr_bt_186, %_local_stack_end_ptr_
  %_cond2_1_190 = icmp ugt i8* %_ptr_bt_186, %_parent_stack_end_ptr_
  %_cond2_2_191 = icmp ult i8* %_ptr_bt_186, %_parent_stack_start_ptr_
  %_cond2_192 = or i1 %_cond2_1_190, %_cond2_2_191
  %_cond4_193 = icmp ule i8* %_pot_address_in_parent_stack_188, %_parent_stack_end_ptr_
  %_cond1_n_cond2_194 = and i1 %_cond1_189, %_cond2_192
  %_cond1_n_cond2_cond3_195 = and i1 %_cond1_n_cond2_194, %_cond4_193
  br i1 %_cond1_n_cond2_cond3_195, label %113, label %114

; <label>:113:                                    ; preds = %110
  %_address_in_parent_stack_bt_197 = bitcast i8* %_pot_address_in_parent_stack_188 to i32*
  br label %114

; <label>:114:                                    ; preds = %110, %113
  %115 = phi i32* [ %91, %110 ], [ %_address_in_parent_stack_bt_197, %113 ]
  %_new_load_198 = load i32, i32* %115
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %112, i32 %_new_load_198)
  %116 = extractvalue { i32, i1 } %uadd74, 0
  %_ptr_to_int_199 = ptrtoint i32* %92 to i64
  %_ptr_bt_201 = bitcast i32* %92 to i8*
  %_offset_above_rbp_202 = sub i64 %_ptr_to_int_199, %_local_end_to_int_
  %_pot_address_in_parent_stack_203 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_202
  %_cond1_204 = icmp ugt i8* %_ptr_bt_201, %_local_stack_end_ptr_
  %_cond2_1_205 = icmp ugt i8* %_ptr_bt_201, %_parent_stack_end_ptr_
  %_cond2_2_206 = icmp ult i8* %_ptr_bt_201, %_parent_stack_start_ptr_
  %_cond2_207 = or i1 %_cond2_1_205, %_cond2_2_206
  %_cond4_208 = icmp ule i8* %_pot_address_in_parent_stack_203, %_parent_stack_end_ptr_
  %_cond1_n_cond2_209 = and i1 %_cond1_204, %_cond2_207
  %_cond1_n_cond2_cond3_210 = and i1 %_cond1_n_cond2_209, %_cond4_208
  br i1 %_cond1_n_cond2_cond3_210, label %117, label %118

; <label>:117:                                    ; preds = %114
  %_address_in_parent_stack_bt_212 = bitcast i8* %_pot_address_in_parent_stack_203 to i32*
  br label %118

; <label>:118:                                    ; preds = %114, %117
  %119 = phi i32* [ %92, %114 ], [ %_address_in_parent_stack_bt_212, %117 ]
  %_new_load_213 = load i32, i32* %119
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %116, i32 %_new_load_213)
  %120 = extractvalue { i32, i1 } %uadd75, 0
  %_new_gep_52 = getelementptr i8, i8* %_new_gep_, i64 -36
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %121 = bitcast i64* %_allin_new_bt_53 to i32*
  store i32 %120, i32* %121, !mcsema_real_eip !33
  %_ptr_to_int_214 = ptrtoint i32* %121 to i64
  %_ptr_bt_216 = bitcast i32* %121 to i8*
  %_offset_above_rbp_217 = sub i64 %_ptr_to_int_214, %_local_end_to_int_
  %_pot_address_in_parent_stack_218 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_217
  %_cond1_219 = icmp ugt i8* %_ptr_bt_216, %_local_stack_end_ptr_
  %_cond2_1_220 = icmp ugt i8* %_ptr_bt_216, %_parent_stack_end_ptr_
  %_cond2_2_221 = icmp ult i8* %_ptr_bt_216, %_parent_stack_start_ptr_
  %_cond2_222 = or i1 %_cond2_1_220, %_cond2_2_221
  %_cond4_223 = icmp ule i8* %_pot_address_in_parent_stack_218, %_parent_stack_end_ptr_
  %_cond1_n_cond2_224 = and i1 %_cond1_219, %_cond2_222
  %_cond1_n_cond2_cond3_225 = and i1 %_cond1_n_cond2_224, %_cond4_223
  br i1 %_cond1_n_cond2_cond3_225, label %122, label %123

; <label>:122:                                    ; preds = %118
  %_address_in_parent_stack_bt_227 = bitcast i8* %_pot_address_in_parent_stack_218 to i32*
  br label %123

; <label>:123:                                    ; preds = %118, %122
  %124 = phi i32* [ %121, %118 ], [ %_address_in_parent_stack_bt_227, %122 ]
  %_new_load_228 = load i32, i32* %124
  %125 = add i32 %_new_load_228, -40
  %126 = xor i32 %125, %_new_load_228, !mcsema_real_eip !34
  %127 = icmp eq i32 %125, 0, !mcsema_real_eip !34
  %128 = icmp slt i32 %125, 0
  %129 = and i32 %126, %_new_load_228, !mcsema_real_eip !34
  %130 = icmp slt i32 %129, 0
  %131 = xor i1 %128, %130
  %132 = or i1 %127, %131, !mcsema_real_eip !35
  br i1 %_cond1_n_cond2_cond3_225, label %133, label %134

; <label>:133:                                    ; preds = %123
  %_address_in_parent_stack_bt_242 = bitcast i8* %_pot_address_in_parent_stack_218 to i32*
  br label %134

; <label>:134:                                    ; preds = %123, %133
  %135 = phi i32* [ %121, %123 ], [ %_address_in_parent_stack_bt_242, %133 ]
  %_new_load_243 = load i32, i32* %135
  %_ptr_to_int_244 = ptrtoint i32* %93 to i64
  %_ptr_bt_246 = bitcast i32* %93 to i8*
  %_offset_above_rbp_247 = sub i64 %_ptr_to_int_244, %_local_end_to_int_
  %_pot_address_in_parent_stack_248 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_247
  %_cond1_249 = icmp ugt i8* %_ptr_bt_246, %_local_stack_end_ptr_
  %_cond2_1_250 = icmp ugt i8* %_ptr_bt_246, %_parent_stack_end_ptr_
  %_cond2_2_251 = icmp ult i8* %_ptr_bt_246, %_parent_stack_start_ptr_
  %_cond2_252 = or i1 %_cond2_1_250, %_cond2_2_251
  %_cond4_253 = icmp ule i8* %_pot_address_in_parent_stack_248, %_parent_stack_end_ptr_
  %_cond1_n_cond2_254 = and i1 %_cond1_249, %_cond2_252
  %_cond1_n_cond2_cond3_255 = and i1 %_cond1_n_cond2_254, %_cond4_253
  br i1 %_cond1_n_cond2_cond3_255, label %136, label %137

; <label>:136:                                    ; preds = %134
  %_address_in_parent_stack_bt_257 = bitcast i8* %_pot_address_in_parent_stack_248 to i32*
  br label %137

; <label>:137:                                    ; preds = %134, %136
  %138 = phi i32* [ %93, %134 ], [ %_address_in_parent_stack_bt_257, %136 ]
  %_new_load_258 = load i32, i32* %138
  br i1 %132, label %block_0x59, label %block_0x4b, !mcsema_real_eip !35

block_0x4b:                                       ; preds = %137
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_243, i32 %_new_load_258)
  %139 = extractvalue { i32, i1 } %uadd77, 0
  %140 = xor i32 %139, %_new_load_258, !mcsema_real_eip !37
  %141 = xor i32 %140, %_new_load_243, !mcsema_real_eip !37
  %142 = and i32 %141, 16, !mcsema_real_eip !37
  %143 = icmp ne i32 %142, 0, !mcsema_real_eip !37
  %144 = icmp slt i32 %139, 0
  %145 = icmp eq i32 %139, 0, !mcsema_real_eip !37
  %146 = xor i32 %_new_load_243, -2147483648, !mcsema_real_eip !37
  %147 = xor i32 %146, %_new_load_258, !mcsema_real_eip !37
  %148 = and i32 %140, %147, !mcsema_real_eip !37
  %149 = icmp slt i32 %148, 0
  %150 = trunc i32 %139 to i8, !mcsema_real_eip !37
  %151 = tail call i8 @llvm.ctpop.i8(i8 %150), !mcsema_real_eip !37
  %152 = and i8 %151, 1
  %153 = icmp eq i8 %152, 0
  %154 = extractvalue { i32, i1 } %uadd77, 1
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_, i64 -40
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %155 = bitcast i64* %_allin_new_bt_65 to i32*
  store i32 %139, i32* %155, !mcsema_real_eip !38
  br label %block_0x62, !mcsema_real_eip !39

block_0x59:                                       ; preds = %137
  %156 = sub i32 %_new_load_243, %_new_load_258, !mcsema_real_eip !36
  %157 = xor i32 %156, %_new_load_243, !mcsema_real_eip !36
  %158 = xor i32 %157, %_new_load_258, !mcsema_real_eip !36
  %159 = and i32 %158, 16, !mcsema_real_eip !36
  %160 = icmp ne i32 %159, 0, !mcsema_real_eip !36
  %161 = trunc i32 %156 to i8, !mcsema_real_eip !36
  %162 = tail call i8 @llvm.ctpop.i8(i8 %161), !mcsema_real_eip !36
  %163 = and i8 %162, 1
  %164 = icmp eq i8 %163, 0
  %165 = icmp eq i32 %_new_load_243, %_new_load_258
  %166 = icmp slt i32 %156, 0
  %167 = icmp ult i32 %_new_load_243, %_new_load_258, !mcsema_real_eip !36
  %168 = xor i32 %_new_load_258, %_new_load_243, !mcsema_real_eip !36
  %169 = and i32 %157, %168, !mcsema_real_eip !36
  %170 = icmp slt i32 %169, 0
  %_new_gep_67 = getelementptr i8, i8* %_new_gep_, i64 -40
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %171 = bitcast i64* %_allin_new_bt_68 to i32*
  store i32 %156, i32* %171, !mcsema_real_eip !40
  br label %block_0x62, !mcsema_real_eip !41

block_0x62:                                       ; preds = %block_0x59, %block_0x4b
  %OF_val.0 = phi i1 [ %170, %block_0x59 ], [ %149, %block_0x4b ]
  %SF_val.0 = phi i1 [ %166, %block_0x59 ], [ %144, %block_0x4b ]
  %CF_val.0 = phi i1 [ %167, %block_0x59 ], [ %154, %block_0x4b ]
  %AF_val.0 = phi i1 [ %160, %block_0x59 ], [ %143, %block_0x4b ]
  %PF_val.0 = phi i1 [ %164, %block_0x59 ], [ %153, %block_0x4b ]
  %ZF_val.0 = phi i1 [ %165, %block_0x59 ], [ %145, %block_0x4b ]
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_69, i64 -40
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %172 = bitcast i64* %_allin_new_bt_71 to i32*
  %_ptr_to_int_259 = ptrtoint i32* %172 to i64
  %_ptr_bt_261 = bitcast i32* %172 to i8*
  %_offset_above_rbp_262 = sub i64 %_ptr_to_int_259, %_local_end_to_int_
  %_pot_address_in_parent_stack_263 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_262
  %_cond1_264 = icmp ugt i8* %_ptr_bt_261, %_local_stack_end_ptr_
  %_cond2_1_265 = icmp ugt i8* %_ptr_bt_261, %_parent_stack_end_ptr_
  %_cond2_2_266 = icmp ult i8* %_ptr_bt_261, %_parent_stack_start_ptr_
  %_cond2_267 = or i1 %_cond2_1_265, %_cond2_2_266
  %_cond4_268 = icmp ule i8* %_pot_address_in_parent_stack_263, %_parent_stack_end_ptr_
  %_cond1_n_cond2_269 = and i1 %_cond1_264, %_cond2_267
  %_cond1_n_cond2_cond3_270 = and i1 %_cond1_n_cond2_269, %_cond4_268
  br i1 %_cond1_n_cond2_cond3_270, label %173, label %174

; <label>:173:                                    ; preds = %block_0x62
  %_address_in_parent_stack_bt_272 = bitcast i8* %_pot_address_in_parent_stack_263 to i32*
  br label %174

; <label>:174:                                    ; preds = %block_0x62, %173
  %175 = phi i32* [ %172, %block_0x62 ], [ %_address_in_parent_stack_bt_272, %173 ]
  %_new_load_273 = load i32, i32* %175
  %176 = zext i32 %_new_load_273 to i64, !mcsema_real_eip !42
  %_load_rsp_ptr_72 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_73 = bitcast i8* %_load_rsp_ptr_72 to i64*
  %_ptr_to_int_274 = ptrtoint i64* %_allin_new_bt_73 to i64
  %_offset_above_rbp_277 = sub i64 %_ptr_to_int_274, %_local_end_to_int_
  %_pot_address_in_parent_stack_278 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_277
  %_cond1_279 = icmp ugt i8* %_load_rsp_ptr_72, %_local_stack_end_ptr_
  %_cond2_1_280 = icmp ugt i8* %_load_rsp_ptr_72, %_parent_stack_end_ptr_
  %_cond2_2_281 = icmp ult i8* %_load_rsp_ptr_72, %_parent_stack_start_ptr_
  %_cond2_282 = or i1 %_cond2_1_280, %_cond2_2_281
  %_cond4_283 = icmp ule i8* %_pot_address_in_parent_stack_278, %_parent_stack_end_ptr_
  %_cond1_n_cond2_284 = and i1 %_cond1_279, %_cond2_282
  %_cond1_n_cond2_cond3_285 = and i1 %_cond1_n_cond2_284, %_cond4_283
  br i1 %_cond1_n_cond2_cond3_285, label %177, label %178

; <label>:177:                                    ; preds = %174
  %_address_in_parent_stack_bt_287 = bitcast i8* %_pot_address_in_parent_stack_278 to i64*
  br label %178

; <label>:178:                                    ; preds = %174, %177
  %179 = phi i64* [ %_allin_new_bt_73, %174 ], [ %_address_in_parent_stack_bt_287, %177 ]
  %_new_load_288 = load i64, i64* %179
  %_new_int2ptr_ = inttoptr i64 %_new_load_288 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_74 = getelementptr i8, i8* %_load_rsp_ptr_72, i64 16
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_
  store i64 %176, i64* %RAX, !mcsema_real_eip !44
  store i64 %1, i64* %RBX, !mcsema_real_eip !44
  store i64 %2, i64* %RCX, !mcsema_real_eip !44
  store i64 %3, i64* %RDX, !mcsema_real_eip !44
  store i64 %4, i64* %RSI, !mcsema_real_eip !44
  store i64 %5, i64* %RDI, !mcsema_real_eip !44
  %_new_ptr2int_76 = ptrtoint i8* %_new_gep_74 to i64
  store volatile i64 %_new_ptr2int_76, i64* %RSP
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_78 = ptrtoint i8* %_load_rbp_ptr_77 to i64
  store volatile i64 %_new_ptr2int_78, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !44
  store i64 %7, i64* %R9, !mcsema_real_eip !44
  store i64 %79, i64* %R10, !mcsema_real_eip !44
  store i64 %8, i64* %R11, !mcsema_real_eip !44
  store i64 %9, i64* %R12, !mcsema_real_eip !44
  store i64 %10, i64* %R13, !mcsema_real_eip !44
  store i64 %11, i64* %R14, !mcsema_real_eip !44
  store i64 %12, i64* %R15, !mcsema_real_eip !44
  store i64 %13, i64* %RIP, !mcsema_real_eip !44
  store i1 %CF_val.0, i1* %CF, align 1, !mcsema_real_eip !44
  store i1 %PF_val.0, i1* %PF, align 1, !mcsema_real_eip !44
  store i1 %AF_val.0, i1* %AF, align 1, !mcsema_real_eip !44
  store i1 %ZF_val.0, i1* %ZF, align 1, !mcsema_real_eip !44
  store i1 %SF_val.0, i1* %SF, align 1, !mcsema_real_eip !44
  store i1 %OF_val.0, i1* %OF, align 1, !mcsema_real_eip !44
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !44
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !44
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !44
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !44
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !44
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !44
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !44
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !44
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !44
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !44
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !44
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !44
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !44
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !44
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !44
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !44
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !44
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !44
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !44
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !44
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !44
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !44
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !44
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !44
  %_ptr_to_int_289 = ptrtoint i64* %43 to i64
  %_ptr_bt_291 = bitcast i64* %43 to i8*
  %_offset_above_rbp_292 = sub i64 %_ptr_to_int_289, %_local_end_to_int_
  %_pot_address_in_parent_stack_293 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_292
  %_cond1_294 = icmp ugt i8* %_ptr_bt_291, %_local_stack_end_ptr_
  %_cond2_1_295 = icmp ugt i8* %_ptr_bt_291, %_parent_stack_end_ptr_
  %_cond2_2_296 = icmp ult i8* %_ptr_bt_291, %_parent_stack_start_ptr_
  %_cond2_297 = or i1 %_cond2_1_295, %_cond2_2_296
  %_cond4_298 = icmp ule i8* %_pot_address_in_parent_stack_293, %_parent_stack_end_ptr_
  %_cond1_n_cond2_299 = and i1 %_cond1_294, %_cond2_297
  %_cond1_n_cond2_cond3_300 = and i1 %_cond1_n_cond2_299, %_cond4_298
  br i1 %_cond1_n_cond2_cond3_300, label %180, label %181

; <label>:180:                                    ; preds = %178
  %_address_in_parent_stack_bt_302 = bitcast i8* %_pot_address_in_parent_stack_293 to i64*
  br label %181

; <label>:181:                                    ; preds = %178, %180
  %182 = phi i64* [ %43, %178 ], [ %_address_in_parent_stack_bt_302, %180 ]
  %_new_load_303 = load i64, i64* %182
  store i64 %_new_load_303, i64* %42, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !44
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !44
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !44
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !44
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !44
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !44
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !44
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !44
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !44
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !44
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !44
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !44
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !44
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !44
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !44
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !44
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !44
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !44
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !44
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !44
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !44
  store i64 %68, i64* %STACK_BASE, align 1, !mcsema_real_eip !44
  store i64 %69, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 112}
!3 = !{i64 116}
!4 = !{i64 163}
!5 = !{i64 170}
!6 = !{i64 177}
!7 = !{i64 185}
!8 = !{i64 189}
!9 = !{i64 192}
!10 = !{i64 197}
!11 = !{i64 200}
!12 = !{i64 203}
!13 = !{i64 207}
!14 = !{i64 208}
!15 = !{i64 0}
!16 = !{i64 4}
!17 = !{i64 7}
!18 = !{i64 11}
!19 = !{i64 14}
!20 = !{i64 17}
!21 = !{i64 20}
!22 = !{i64 23}
!23 = !{i64 27}
!24 = !{i64 31}
!25 = !{i64 35}
!26 = !{i64 38}
!27 = !{i64 41}
!28 = !{i64 44}
!29 = !{i64 47}
!30 = !{i64 50}
!31 = !{i64 53}
!32 = !{i64 56}
!33 = !{i64 59}
!34 = !{i64 62}
!35 = !{i64 69}
!36 = !{i64 92}
!37 = !{i64 78}
!38 = !{i64 81}
!39 = !{i64 84}
!40 = !{i64 95}
!41 = !{i64 75}
!42 = !{i64 98}
!43 = !{i64 101}
!44 = !{i64 102}
