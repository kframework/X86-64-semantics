; ModuleID = 'Output/test_1.clang.trans.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_70(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !2
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %1 = load i64, i64* %RAX, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64, i64* %RCX, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64, i64* %RDX, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %5 = load i64, i64* %R8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %6 = load i64, i64* %R9, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %7 = load i64, i64* %R10, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %8 = load i64, i64* %R11, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %9 = load i64, i64* %R12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %10 = load i64, i64* %R13, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %11 = load i64, i64* %R14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %12 = load i64, i64* %R15, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %13 = load i64, i64* %RIP, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !2
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %42 = bitcast i8* %41 to i64*
  %43 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %44 = load i64, i64* %42, align 4
  store i64 %44, i64* %43, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %45 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %46 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %47 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %48 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %49 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
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
  %66 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %67 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %68 = and i64 %_trans_xor_, 16
  %69 = icmp eq i64 %68, 0
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %70 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !3
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_, 0
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_2, 16
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_2
  %73 = icmp slt i64 %_trans_xor_9, 0
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %74 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %74, !mcsema_real_eip !4
  %_load_rsp_ptr_13 = load i8*, i8** %_RSP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rsp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_15, !mcsema_real_eip !5
  store volatile i8* %_new_gep_14, i8** %_RSP_ptr_
  store i64 %1, i64* %RAX, !mcsema_real_eip !5
  store i64 %2, i64* %RBX, !mcsema_real_eip !5
  store i64 %3, i64* %RCX, !mcsema_real_eip !5
  store i64 %4, i64* %RDX, !mcsema_real_eip !5
  store i64 20, i64* %RSI, !mcsema_real_eip !5
  store i64 10, i64* %RDI, !mcsema_real_eip !5
  %_new_ptr2int_17 = ptrtoint i8* %_new_gep_14 to i64
  store volatile i64 %_new_ptr2int_17, i64* %RSP
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_19 = ptrtoint i8* %_load_rbp_ptr_18 to i64
  store volatile i64 %_new_ptr2int_19, i64* %RBP
  store i64 %5, i64* %R8, !mcsema_real_eip !5
  store i64 %6, i64* %R9, !mcsema_real_eip !5
  store i64 %7, i64* %R10, !mcsema_real_eip !5
  store i64 %8, i64* %R11, !mcsema_real_eip !5
  store i64 %9, i64* %R12, !mcsema_real_eip !5
  store i64 %10, i64* %R13, !mcsema_real_eip !5
  store i64 %11, i64* %R14, !mcsema_real_eip !5
  store i64 %12, i64* %R15, !mcsema_real_eip !5
  store i64 %13, i64* %RIP, !mcsema_real_eip !5
  store i1 %_trans_icmp_ne_7, i1* %CF, align 1, !mcsema_real_eip !5
  store i1 %72, i1* %PF, align 1, !mcsema_real_eip !5
  store i1 %69, i1* %AF, align 1, !mcsema_real_eip !5
  store i1 %_trans_icmp_eq_, i1* %ZF, align 1, !mcsema_real_eip !5
  store i1 %_trans_icmp_ne_, i1* %SF, align 1, !mcsema_real_eip !5
  store i1 %73, i1* %OF, align 1, !mcsema_real_eip !5
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !5
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !5
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !5
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !5
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !5
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !5
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !5
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !5
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !5
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !5
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !5
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !5
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !5
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !5
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !5
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !5
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !5
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !5
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !5
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !5
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !5
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !5
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !5
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !5
  %75 = load i64, i64* %43, align 4
  store i64 %75, i64* %42, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !5
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !5
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !5
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !5
  store i11 %49, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !5
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !5
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !5
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !5
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !5
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !5
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !5
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !5
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !5
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !5
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !5
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !5
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !5
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !5
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !5
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !5
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !5
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !5
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !5
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_34)
  %76 = load i64, i64* %RAX, !mcsema_real_eip !5
  %77 = load i64, i64* %RBX, !mcsema_real_eip !5
  %78 = load i64, i64* %RCX, !mcsema_real_eip !5
  %79 = load i64, i64* %RDX, !mcsema_real_eip !5
  %80 = load i64, i64* %RSI, !mcsema_real_eip !5
  %81 = load i64, i64* %RDI, !mcsema_real_eip !5
  %82 = load i64, i64* %R8, !mcsema_real_eip !5
  %83 = load i64, i64* %R9, !mcsema_real_eip !5
  %84 = load i64, i64* %R10, !mcsema_real_eip !5
  %85 = load i64, i64* %R11, !mcsema_real_eip !5
  %86 = load i64, i64* %R12, !mcsema_real_eip !5
  %87 = load i64, i64* %R13, !mcsema_real_eip !5
  %88 = load i64, i64* %R14, !mcsema_real_eip !5
  %89 = load i64, i64* %R15, !mcsema_real_eip !5
  %90 = load i64, i64* %RIP, !mcsema_real_eip !5
  %91 = load i1, i1* %DF, align 1, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !5
  %92 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !5
  %93 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !5
  %94 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !5
  %95 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !5
  %96 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !5
  %97 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !5
  %98 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !5
  %99 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !5
  %100 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !5
  %101 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !5
  %102 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !5
  %103 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !5
  %104 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !5
  %105 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !5
  %106 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !5
  %107 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !5
  %108 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !5
  %109 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !5
  %110 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !5
  %111 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !5
  %112 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !5
  %113 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !5
  %114 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !5
  %115 = load i64, i64* %42, align 4
  store i64 %115, i64* %43, align 4
  %116 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !5
  %117 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !5
  %118 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !5
  %119 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !5
  %120 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !5
  %121 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !5
  %122 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !5
  %123 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !5
  %124 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !5
  %125 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !5
  %126 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !5
  %127 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !5
  %128 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !5
  %129 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !5
  %130 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !5
  %131 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !5
  %132 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !5
  %133 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !5
  %134 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !5
  %135 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !5
  %136 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !5
  %137 = load i64, i64* %STACK_BASE, !mcsema_real_eip !5
  %138 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !5
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %139 = trunc i64 %76 to i32, !mcsema_real_eip !6
  %140 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 %139, i32* %140, !mcsema_real_eip !6
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -8
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %141 = bitcast i64* %_allin_new_bt_25 to i32*
  %142 = load i32, i32* %141, !mcsema_real_eip !7
  %143 = zext i32 %142 to i64, !mcsema_real_eip !7
  %_load_rsp_ptr_26 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_27 = ptrtoint i8* %_load_rsp_ptr_26 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_27, i64 16)
  %144 = extractvalue { i64, i1 } %uadd, 0
  %145 = xor i64 %144, %_new_ptr2int_27, !mcsema_real_eip !8
  %146 = and i64 %145, 16
  %147 = icmp eq i64 %146, 0
  %148 = icmp slt i64 %144, 0
  %149 = icmp eq i64 %144, 0, !mcsema_real_eip !8
  %150 = xor i64 %_new_ptr2int_27, -9223372036854775808, !mcsema_real_eip !8
  %151 = and i64 %145, %150, !mcsema_real_eip !8
  %152 = icmp slt i64 %151, 0
  %153 = trunc i64 %144 to i8, !mcsema_real_eip !8
  %154 = tail call i8 @llvm.ctpop.i8(i8 %153), !mcsema_real_eip !8
  %155 = and i8 %154, 1
  %156 = icmp eq i8 %155, 0
  %157 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %144 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %158 = inttoptr i64 %144 to i64*, !mcsema_real_eip !9
  %159 = load i64, i64* %158, !mcsema_real_eip !9
  %_new_int2ptr_28 = inttoptr i64 %159 to i8*
  store volatile i8* %_new_int2ptr_28, i8** %_RBP_ptr_
  %160 = add i64 %144, 16, !mcsema_real_eip !10
  %_new_int2ptr_29 = inttoptr i64 %160 to i8*
  store volatile i8* %_new_int2ptr_29, i8** %_RSP_ptr_
  store i64 %143, i64* %RAX, !mcsema_real_eip !10
  store i64 %77, i64* %RBX, !mcsema_real_eip !10
  store i64 %78, i64* %RCX, !mcsema_real_eip !10
  store i64 %79, i64* %RDX, !mcsema_real_eip !10
  store i64 %80, i64* %RSI, !mcsema_real_eip !10
  store i64 %81, i64* %RDI, !mcsema_real_eip !10
  store volatile i64 %160, i64* %RSP
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_33 = ptrtoint i8* %_load_rbp_ptr_32 to i64
  store volatile i64 %_new_ptr2int_33, i64* %RBP
  store i64 %82, i64* %R8, !mcsema_real_eip !10
  store i64 %83, i64* %R9, !mcsema_real_eip !10
  store i64 %84, i64* %R10, !mcsema_real_eip !10
  store i64 %85, i64* %R11, !mcsema_real_eip !10
  store i64 %86, i64* %R12, !mcsema_real_eip !10
  store i64 %87, i64* %R13, !mcsema_real_eip !10
  store i64 %88, i64* %R14, !mcsema_real_eip !10
  store i64 %89, i64* %R15, !mcsema_real_eip !10
  store i64 %90, i64* %RIP, !mcsema_real_eip !10
  store i1 %157, i1* %CF, align 1, !mcsema_real_eip !10
  store i1 %156, i1* %PF, align 1, !mcsema_real_eip !10
  store i1 %147, i1* %AF, align 1, !mcsema_real_eip !10
  store i1 %149, i1* %ZF, align 1, !mcsema_real_eip !10
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !10
  store i1 %152, i1* %OF, align 1, !mcsema_real_eip !10
  store i1 %91, i1* %DF, align 1, !mcsema_real_eip !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !10
  store i1 %92, i1* %FPU_B, align 1, !mcsema_real_eip !10
  store i1 %93, i1* %FPU_C3, align 1, !mcsema_real_eip !10
  store i3 %94, i3* %FPU_TOP, align 1, !mcsema_real_eip !10
  store i1 %95, i1* %FPU_C2, align 1, !mcsema_real_eip !10
  store i1 %96, i1* %FPU_C1, align 1, !mcsema_real_eip !10
  store i1 %97, i1* %FPU_C0, align 1, !mcsema_real_eip !10
  store i1 %98, i1* %FPU_ES, align 1, !mcsema_real_eip !10
  store i1 %99, i1* %FPU_SF, align 1, !mcsema_real_eip !10
  store i1 %100, i1* %FPU_PE, align 1, !mcsema_real_eip !10
  store i1 %101, i1* %FPU_UE, align 1, !mcsema_real_eip !10
  store i1 %102, i1* %FPU_OE, align 1, !mcsema_real_eip !10
  store i1 %103, i1* %FPU_ZE, align 1, !mcsema_real_eip !10
  store i1 %104, i1* %FPU_DE, align 1, !mcsema_real_eip !10
  store i1 %105, i1* %FPU_IE, align 1, !mcsema_real_eip !10
  store i1 %106, i1* %FPU_X, align 1, !mcsema_real_eip !10
  store i2 %107, i2* %FPU_RC, align 1, !mcsema_real_eip !10
  store i2 %108, i2* %FPU_PC, align 1, !mcsema_real_eip !10
  store i1 %109, i1* %FPU_PM, align 1, !mcsema_real_eip !10
  store i1 %110, i1* %FPU_UM, align 1, !mcsema_real_eip !10
  store i1 %111, i1* %FPU_OM, align 1, !mcsema_real_eip !10
  store i1 %112, i1* %FPU_ZM, align 1, !mcsema_real_eip !10
  store i1 %113, i1* %FPU_DM, align 1, !mcsema_real_eip !10
  store i1 %114, i1* %FPU_IM, align 1, !mcsema_real_eip !10
  %161 = load i64, i64* %43, align 4
  store i64 %161, i64* %42, align 4
  store i16 %116, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !10
  store i64 %117, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !10
  store i16 %118, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !10
  store i64 %119, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !10
  store i11 %120, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !10
  store i128 %121, i128* %XMM0, align 1, !mcsema_real_eip !10
  store i128 %122, i128* %XMM1, align 1, !mcsema_real_eip !10
  store i128 %123, i128* %XMM2, align 1, !mcsema_real_eip !10
  store i128 %124, i128* %XMM3, align 1, !mcsema_real_eip !10
  store i128 %125, i128* %XMM4, align 1, !mcsema_real_eip !10
  store i128 %126, i128* %XMM5, align 1, !mcsema_real_eip !10
  store i128 %127, i128* %XMM6, align 1, !mcsema_real_eip !10
  store i128 %128, i128* %XMM7, align 1, !mcsema_real_eip !10
  store i128 %129, i128* %XMM8, align 1, !mcsema_real_eip !10
  store i128 %130, i128* %XMM9, align 1, !mcsema_real_eip !10
  store i128 %131, i128* %XMM10, align 1, !mcsema_real_eip !10
  store i128 %132, i128* %XMM11, align 1, !mcsema_real_eip !10
  store i128 %133, i128* %XMM12, align 1, !mcsema_real_eip !10
  store i128 %134, i128* %XMM13, align 1, !mcsema_real_eip !10
  store i128 %135, i128* %XMM14, align 1, !mcsema_real_eip !10
  store i128 %136, i128* %XMM15, align 1, !mcsema_real_eip !10
  store i64 %137, i64* %STACK_BASE, align 1, !mcsema_real_eip !10
  store i64 %138, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !10
  ret void, !mcsema_real_eip !10
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !11
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !11
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !11
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !11
  %1 = load i64, i64* %RBX, !mcsema_real_eip !11
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !11
  %2 = load i64, i64* %RCX, !mcsema_real_eip !11
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !11
  %3 = load i64, i64* %RDX, !mcsema_real_eip !11
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !11
  %4 = load i64, i64* %RSI, !mcsema_real_eip !11
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !11
  %5 = load i64, i64* %RDI, !mcsema_real_eip !11
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !11
  %6 = load i64, i64* %RSP, !mcsema_real_eip !11
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !11
  %7 = load i64, i64* %RBP, !mcsema_real_eip !11
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !11
  %8 = load i64, i64* %R8, !mcsema_real_eip !11
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !11
  %9 = load i64, i64* %R9, !mcsema_real_eip !11
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !11
  %10 = load i64, i64* %R10, !mcsema_real_eip !11
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !11
  %11 = load i64, i64* %R11, !mcsema_real_eip !11
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !11
  %12 = load i64, i64* %R12, !mcsema_real_eip !11
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !11
  %13 = load i64, i64* %R13, !mcsema_real_eip !11
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !11
  %14 = load i64, i64* %R14, !mcsema_real_eip !11
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !11
  %15 = load i64, i64* %R15, !mcsema_real_eip !11
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !11
  %16 = load i64, i64* %RIP, !mcsema_real_eip !11
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !11
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !11
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !11
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !11
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !11
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !11
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !11
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !11
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !11
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !11
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !11
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !11
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !11
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !11
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !11
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !11
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !11
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !11
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !11
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !11
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !11
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !11
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !11
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !11
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !11
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !11
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !11
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !11
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !11
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !11
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !11
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !11
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !11
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !11
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !11
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !11
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !11
  %45 = bitcast i8* %44 to i64*
  %46 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %47 = load i64, i64* %45, align 4
  store i64 %47, i64* %46, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !11
  %48 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !11
  %49 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !11
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !11
  %50 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !11
  %51 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !11
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !11
  %52 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !11
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !11
  %53 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !11
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !11
  %54 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !11
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !11
  %55 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !11
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !11
  %56 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !11
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !11
  %57 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !11
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !11
  %58 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !11
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !11
  %59 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !11
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !11
  %60 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !11
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !11
  %61 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !11
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !11
  %62 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !11
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !11
  %63 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !11
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !11
  %64 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !11
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !11
  %65 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !11
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !11
  %66 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !11
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !11
  %67 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !11
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !11
  %68 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !11
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !11
  %69 = load i64, i64* %STACK_BASE, !mcsema_real_eip !11
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !11
  %70 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !11
  %71 = add i64 %6, -8
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !11
  store i64 %7, i64* %72, !mcsema_real_eip !11
  %73 = add i64 %6, -12, !mcsema_real_eip !12
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !12
  %75 = trunc i64 %5 to i32, !mcsema_real_eip !12
  %76 = bitcast i64* %74 to i32*
  store i32 %75, i32* %76, !mcsema_real_eip !12
  %77 = add i64 %71, -8, !mcsema_real_eip !13
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !13
  %79 = trunc i64 %4 to i32, !mcsema_real_eip !13
  %80 = bitcast i64* %78 to i32*
  store i32 %79, i32* %80, !mcsema_real_eip !13
  %81 = add i64 %71, -4, !mcsema_real_eip !14
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !14
  %83 = bitcast i64* %82 to i32*
  %84 = load i32, i32* %83, !mcsema_real_eip !14
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %84, i32 %79)
  %85 = extractvalue { i32, i1 } %uadd, 0
  %86 = zext i32 %85 to i64, !mcsema_real_eip !15
  %87 = add i64 %71, -12, !mcsema_real_eip !16
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !16
  %89 = bitcast i64* %88 to i32*
  store i32 %85, i32* %89, !mcsema_real_eip !16
  br label %block_0x13, !mcsema_real_eip !17

block_0x13:                                       ; preds = %block_0x5a, %entry
  %RDX_val.0 = phi i64 [ %3, %entry ], [ %108, %block_0x5a ]
  %RCX_val.0 = phi i64 [ %2, %entry ], [ 2, %block_0x5a ]
  %90 = load i32, i32* %83, !mcsema_real_eip !17
  %91 = trunc i32 %90 to i8, !mcsema_real_eip !17
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !17
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  %95 = icmp eq i32 %90, 0, !mcsema_real_eip !17
  %96 = icmp slt i32 %90, 0
  br i1 %96, label %block_0x6a, label %block_0x20, !mcsema_real_eip !18

block_0x20:                                       ; preds = %block_0x13
  %97 = zext i32 %90 to i64, !mcsema_real_eip !19
  %98 = add i64 %71, -20, !mcsema_real_eip !20
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !20
  %100 = bitcast i64* %99 to i32*
  store i32 2, i32* %100, !mcsema_real_eip !20
  %101 = and i64 %97, 4294967295
  %102 = shl i64 %97, 32
  %sext = ashr i64 %102, 63
  %103 = and i64 %sext, 4294967295
  %104 = shl i64 %103, 32, !mcsema_real_eip !21
  %sext71 = shl i64 %101, 32
  %105 = ashr exact i64 %sext71, 32
  %106 = or i64 %104, %105, !mcsema_real_eip !21
  %107 = srem i64 %106, 2, !mcsema_real_eip !21
  %108 = and i64 %107, 4294967295
  %109 = trunc i64 %107 to i32, !mcsema_real_eip !22
  %110 = icmp eq i32 %109, 0, !mcsema_real_eip !22
  %111 = load i32, i32* %89, !mcsema_real_eip !23
  br i1 %110, label %block_0x3f, label %block_0x4f, !mcsema_real_eip !24

block_0x6a:                                       ; preds = %block_0x13
  %112 = add i64 %71, -16, !mcsema_real_eip !25
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !25
  %114 = bitcast i64* %113 to i32*
  %115 = load i32, i32* %114, !mcsema_real_eip !25
  %116 = zext i32 %115 to i64, !mcsema_real_eip !25
  %117 = load i64, i64* %72, !mcsema_real_eip !26
  %118 = add i64 %71, 16, !mcsema_real_eip !27
  store i64 %116, i64* %RAX, !mcsema_real_eip !27
  store i64 %1, i64* %RBX, !mcsema_real_eip !27
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !27
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !27
  store i64 %86, i64* %RSI, !mcsema_real_eip !27
  store i64 %5, i64* %RDI, !mcsema_real_eip !27
  store i64 %118, i64* %RSP, !mcsema_real_eip !27
  store i64 %117, i64* %RBP, !mcsema_real_eip !27
  store i64 %8, i64* %R8, !mcsema_real_eip !27
  store i64 %9, i64* %R9, !mcsema_real_eip !27
  store i64 %10, i64* %R10, !mcsema_real_eip !27
  store i64 %11, i64* %R11, !mcsema_real_eip !27
  store i64 %12, i64* %R12, !mcsema_real_eip !27
  store i64 %13, i64* %R13, !mcsema_real_eip !27
  store i64 %14, i64* %R14, !mcsema_real_eip !27
  store i64 %15, i64* %R15, !mcsema_real_eip !27
  store i64 %16, i64* %RIP, !mcsema_real_eip !27
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !27
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !27
  store i1 %95, i1* %ZF, align 1, !mcsema_real_eip !27
  store i1 true, i1* %SF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !27
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !27
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !27
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %119 = load i64, i64* %46, align 4
  store i64 %119, i64* %45, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !27
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !27
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !27
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !27
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !27
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !27
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !27
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !27
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !27
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !27
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !27
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !27
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !27
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !27
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !27
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !27
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !27
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x3f:                                       ; preds = %block_0x20
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %111, i32 10)
  %120 = extractvalue { i32, i1 } %uadd72, 0
  %121 = add i64 %71, -16, !mcsema_real_eip !28
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !28
  %123 = bitcast i64* %122 to i32*
  store i32 %120, i32* %123, !mcsema_real_eip !28
  br label %block_0x5a, !mcsema_real_eip !29

block_0x4f:                                       ; preds = %block_0x20
  %124 = add i32 %111, -10
  store i32 %124, i32* %89, !mcsema_real_eip !30
  br label %block_0x5a, !mcsema_real_eip !31

block_0x5a:                                       ; preds = %block_0x4f, %block_0x3f
  %125 = load i32, i32* %83, !mcsema_real_eip !32
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %125, i32 -1)
  %126 = extractvalue { i32, i1 } %uadd73, 0
  store i32 %126, i32* %83, !mcsema_real_eip !33
  br label %block_0x13, !mcsema_real_eip !34
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
  %_local_stack_start_ptr_ = alloca i8, i64 28
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 28
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !11
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !11
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !11
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !11
  %1 = load i64, i64* %RBX, !mcsema_real_eip !11
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !11
  %2 = load i64, i64* %RCX, !mcsema_real_eip !11
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !11
  %3 = load i64, i64* %RDX, !mcsema_real_eip !11
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !11
  %4 = load i64, i64* %RSI, !mcsema_real_eip !11
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !11
  %5 = load i64, i64* %RDI, !mcsema_real_eip !11
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !11
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !11
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !11
  %6 = load i64, i64* %R8, !mcsema_real_eip !11
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !11
  %7 = load i64, i64* %R9, !mcsema_real_eip !11
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !11
  %8 = load i64, i64* %R10, !mcsema_real_eip !11
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !11
  %9 = load i64, i64* %R11, !mcsema_real_eip !11
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !11
  %10 = load i64, i64* %R12, !mcsema_real_eip !11
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !11
  %11 = load i64, i64* %R13, !mcsema_real_eip !11
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !11
  %12 = load i64, i64* %R14, !mcsema_real_eip !11
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !11
  %13 = load i64, i64* %R15, !mcsema_real_eip !11
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !11
  %14 = load i64, i64* %RIP, !mcsema_real_eip !11
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !11
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !11
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !11
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !11
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !11
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !11
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !11
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !11
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !11
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !11
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !11
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !11
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !11
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !11
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !11
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !11
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !11
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !11
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !11
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !11
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !11
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !11
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !11
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !11
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !11
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !11
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !11
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !11
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !11
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !11
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !11
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !11
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !11
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !11
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !11
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !11
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !11
  %43 = bitcast i8* %42 to i64*
  %44 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_ptr_to_int_ = ptrtoint i64* %43 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %42, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %42, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %42, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %45, label %46

; <label>:45:                                     ; preds = %entry
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %46

; <label>:46:                                     ; preds = %entry, %45
  %47 = phi i64* [ %43, %entry ], [ %_address_in_parent_stack_bt_, %45 ]
  %_new_load_ = load i64, i64* %47
  store i64 %_new_load_, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !11
  %48 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !11
  %49 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !11
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !11
  %50 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !11
  %51 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !11
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !11
  %52 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !11
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !11
  %53 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !11
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !11
  %54 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !11
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !11
  %55 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !11
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !11
  %56 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !11
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !11
  %57 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !11
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !11
  %58 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !11
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !11
  %59 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !11
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !11
  %60 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !11
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !11
  %61 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !11
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !11
  %62 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !11
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !11
  %63 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !11
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !11
  %64 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !11
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !11
  %65 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !11
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !11
  %66 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !11
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !11
  %67 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !11
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !11
  %68 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !11
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !11
  %69 = load i64, i64* %STACK_BASE, !mcsema_real_eip !11
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !11
  %70 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !11
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -12
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %71 = trunc i64 %5 to i32, !mcsema_real_eip !12
  %72 = bitcast i64* %_allin_new_bt_2 to i32*
  store i32 %71, i32* %72, !mcsema_real_eip !12
  %_new_gep_4 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %73 = trunc i64 %4 to i32, !mcsema_real_eip !13
  %74 = bitcast i64* %_allin_new_bt_5 to i32*
  store i32 %73, i32* %74, !mcsema_real_eip !13
  %_new_gep_7 = getelementptr i8, i8* %_new_gep_, i64 -4
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %75 = bitcast i64* %_allin_new_bt_8 to i32*
  %_ptr_to_int_52 = ptrtoint i32* %75 to i64
  %_ptr_bt_54 = bitcast i32* %75 to i8*
  %_offset_above_rbp_55 = sub i64 %_ptr_to_int_52, %_local_end_to_int_
  %_pot_address_in_parent_stack_56 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_55
  %_cond1_57 = icmp ugt i8* %_ptr_bt_54, %_local_stack_end_ptr_
  %_cond2_1_58 = icmp ugt i8* %_ptr_bt_54, %_parent_stack_end_ptr_
  %_cond2_2_59 = icmp ult i8* %_ptr_bt_54, %_parent_stack_start_ptr_
  %_cond2_60 = or i1 %_cond2_1_58, %_cond2_2_59
  %_cond4_61 = icmp ule i8* %_pot_address_in_parent_stack_56, %_parent_stack_end_ptr_
  %_cond1_n_cond2_62 = and i1 %_cond1_57, %_cond2_60
  %_cond1_n_cond2_cond3_63 = and i1 %_cond1_n_cond2_62, %_cond4_61
  br i1 %_cond1_n_cond2_cond3_63, label %76, label %77

; <label>:76:                                     ; preds = %46
  %_address_in_parent_stack_bt_65 = bitcast i8* %_pot_address_in_parent_stack_56 to i32*
  br label %77

; <label>:77:                                     ; preds = %46, %76
  %78 = phi i32* [ %75, %46 ], [ %_address_in_parent_stack_bt_65, %76 ]
  %_new_load_66 = load i32, i32* %78
  %_ptr_to_int_67 = ptrtoint i32* %74 to i64
  %_ptr_bt_69 = bitcast i32* %74 to i8*
  %_offset_above_rbp_70 = sub i64 %_ptr_to_int_67, %_local_end_to_int_
  %_pot_address_in_parent_stack_71 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_70
  %_cond1_72 = icmp ugt i8* %_ptr_bt_69, %_local_stack_end_ptr_
  %_cond2_1_73 = icmp ugt i8* %_ptr_bt_69, %_parent_stack_end_ptr_
  %_cond2_2_74 = icmp ult i8* %_ptr_bt_69, %_parent_stack_start_ptr_
  %_cond2_75 = or i1 %_cond2_1_73, %_cond2_2_74
  %_cond4_76 = icmp ule i8* %_pot_address_in_parent_stack_71, %_parent_stack_end_ptr_
  %_cond1_n_cond2_77 = and i1 %_cond1_72, %_cond2_75
  %_cond1_n_cond2_cond3_78 = and i1 %_cond1_n_cond2_77, %_cond4_76
  br i1 %_cond1_n_cond2_cond3_78, label %79, label %80

; <label>:79:                                     ; preds = %77
  %_address_in_parent_stack_bt_80 = bitcast i8* %_pot_address_in_parent_stack_71 to i32*
  br label %80

; <label>:80:                                     ; preds = %77, %79
  %81 = phi i32* [ %74, %77 ], [ %_address_in_parent_stack_bt_80, %79 ]
  %_new_load_81 = load i32, i32* %81
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_66, i32 %_new_load_81)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = zext i32 %82 to i64, !mcsema_real_eip !15
  %_new_gep_13 = getelementptr i8, i8* %_new_gep_, i64 -12
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %84 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 %82, i32* %84, !mcsema_real_eip !16
  br label %block_0x13, !mcsema_real_eip !17

block_0x13:                                       ; preds = %136, %80
  %RDX_val.0 = phi i64 [ %3, %80 ], [ %113, %136 ]
  %RCX_val.0 = phi i64 [ %2, %80 ], [ %107, %136 ]
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -4
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %85 = bitcast i64* %_allin_new_bt_17 to i32*
  %_ptr_to_int_82 = ptrtoint i32* %85 to i64
  %_ptr_bt_84 = bitcast i32* %85 to i8*
  %_offset_above_rbp_85 = sub i64 %_ptr_to_int_82, %_local_end_to_int_
  %_pot_address_in_parent_stack_86 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_85
  %_cond1_87 = icmp ugt i8* %_ptr_bt_84, %_local_stack_end_ptr_
  %_cond2_1_88 = icmp ugt i8* %_ptr_bt_84, %_parent_stack_end_ptr_
  %_cond2_2_89 = icmp ult i8* %_ptr_bt_84, %_parent_stack_start_ptr_
  %_cond2_90 = or i1 %_cond2_1_88, %_cond2_2_89
  %_cond4_91 = icmp ule i8* %_pot_address_in_parent_stack_86, %_parent_stack_end_ptr_
  %_cond1_n_cond2_92 = and i1 %_cond1_87, %_cond2_90
  %_cond1_n_cond2_cond3_93 = and i1 %_cond1_n_cond2_92, %_cond4_91
  br i1 %_cond1_n_cond2_cond3_93, label %86, label %87

; <label>:86:                                     ; preds = %block_0x13
  %_address_in_parent_stack_bt_95 = bitcast i8* %_pot_address_in_parent_stack_86 to i32*
  br label %87

; <label>:87:                                     ; preds = %block_0x13, %86
  %88 = phi i32* [ %85, %block_0x13 ], [ %_address_in_parent_stack_bt_95, %86 ]
  %_new_load_96 = load i32, i32* %88
  %89 = trunc i32 %_new_load_96 to i8, !mcsema_real_eip !17
  %90 = tail call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !17
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  %93 = icmp eq i32 %_new_load_96, 0, !mcsema_real_eip !17
  %94 = icmp slt i32 %_new_load_96, 0
  br i1 %94, label %block_0x6a, label %block_0x20, !mcsema_real_eip !18

block_0x20:                                       ; preds = %87
  br i1 %_cond1_n_cond2_cond3_93, label %95, label %96

; <label>:95:                                     ; preds = %block_0x20
  %_address_in_parent_stack_bt_110 = bitcast i8* %_pot_address_in_parent_stack_86 to i32*
  br label %96

; <label>:96:                                     ; preds = %block_0x20, %95
  %97 = phi i32* [ %85, %block_0x20 ], [ %_address_in_parent_stack_bt_110, %95 ]
  %_new_load_111 = load i32, i32* %97
  %98 = zext i32 %_new_load_111 to i64, !mcsema_real_eip !19
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -20
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %99 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 2, i32* %99, !mcsema_real_eip !20
  %100 = and i64 %98, 4294967295
  %101 = shl i64 %98, 32
  %sext = ashr i64 %101, 63
  %102 = and i64 %sext, 4294967295
  %_load_rbp_ptr_24 = load i8*, i8** %_RBP_ptr_
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -20
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %103 = bitcast i64* %_allin_new_bt_26 to i32*
  %_ptr_to_int_112 = ptrtoint i32* %103 to i64
  %_ptr_bt_114 = bitcast i32* %103 to i8*
  %_offset_above_rbp_115 = sub i64 %_ptr_to_int_112, %_local_end_to_int_
  %_pot_address_in_parent_stack_116 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_115
  %_cond1_117 = icmp ugt i8* %_ptr_bt_114, %_local_stack_end_ptr_
  %_cond2_1_118 = icmp ugt i8* %_ptr_bt_114, %_parent_stack_end_ptr_
  %_cond2_2_119 = icmp ult i8* %_ptr_bt_114, %_parent_stack_start_ptr_
  %_cond2_120 = or i1 %_cond2_1_118, %_cond2_2_119
  %_cond4_121 = icmp ule i8* %_pot_address_in_parent_stack_116, %_parent_stack_end_ptr_
  %_cond1_n_cond2_122 = and i1 %_cond1_117, %_cond2_120
  %_cond1_n_cond2_cond3_123 = and i1 %_cond1_n_cond2_122, %_cond4_121
  br i1 %_cond1_n_cond2_cond3_123, label %104, label %105

; <label>:104:                                    ; preds = %96
  %_address_in_parent_stack_bt_125 = bitcast i8* %_pot_address_in_parent_stack_116 to i32*
  br label %105

; <label>:105:                                    ; preds = %96, %104
  %106 = phi i32* [ %103, %96 ], [ %_address_in_parent_stack_bt_125, %104 ]
  %_new_load_126 = load i32, i32* %106
  %107 = zext i32 %_new_load_126 to i64, !mcsema_real_eip !35
  %108 = shl i64 %102, 32, !mcsema_real_eip !21
  %sext71 = shl i64 %100, 32
  %109 = ashr exact i64 %sext71, 32
  %110 = or i64 %108, %109, !mcsema_real_eip !21
  %111 = sext i32 %_new_load_126 to i64, !mcsema_real_eip !21
  %112 = srem i64 %110, %111, !mcsema_real_eip !21
  %113 = and i64 %112, 4294967295
  %114 = trunc i64 %112 to i32, !mcsema_real_eip !22
  %115 = icmp eq i32 %114, 0, !mcsema_real_eip !22
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -12
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %116 = bitcast i64* %_allin_new_bt_29 to i32*
  %_ptr_to_int_127 = ptrtoint i32* %116 to i64
  %_ptr_bt_129 = bitcast i32* %116 to i8*
  %_offset_above_rbp_130 = sub i64 %_ptr_to_int_127, %_local_end_to_int_
  %_pot_address_in_parent_stack_131 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_130
  %_cond1_132 = icmp ugt i8* %_ptr_bt_129, %_local_stack_end_ptr_
  %_cond2_1_133 = icmp ugt i8* %_ptr_bt_129, %_parent_stack_end_ptr_
  %_cond2_2_134 = icmp ult i8* %_ptr_bt_129, %_parent_stack_start_ptr_
  %_cond2_135 = or i1 %_cond2_1_133, %_cond2_2_134
  %_cond4_136 = icmp ule i8* %_pot_address_in_parent_stack_131, %_parent_stack_end_ptr_
  %_cond1_n_cond2_137 = and i1 %_cond1_132, %_cond2_135
  %_cond1_n_cond2_cond3_138 = and i1 %_cond1_n_cond2_137, %_cond4_136
  br i1 %_cond1_n_cond2_cond3_138, label %117, label %118

; <label>:117:                                    ; preds = %105
  %_address_in_parent_stack_bt_140 = bitcast i8* %_pot_address_in_parent_stack_131 to i32*
  br label %118

; <label>:118:                                    ; preds = %105, %117
  %119 = phi i32* [ %116, %105 ], [ %_address_in_parent_stack_bt_140, %117 ]
  %_new_load_141 = load i32, i32* %119
  br i1 %115, label %block_0x3f, label %block_0x4f, !mcsema_real_eip !24

block_0x6a:                                       ; preds = %87
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -16
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %120 = bitcast i64* %_allin_new_bt_32 to i32*
  %_ptr_to_int_142 = ptrtoint i32* %120 to i64
  %_ptr_bt_144 = bitcast i32* %120 to i8*
  %_offset_above_rbp_145 = sub i64 %_ptr_to_int_142, %_local_end_to_int_
  %_pot_address_in_parent_stack_146 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_145
  %_cond1_147 = icmp ugt i8* %_ptr_bt_144, %_local_stack_end_ptr_
  %_cond2_1_148 = icmp ugt i8* %_ptr_bt_144, %_parent_stack_end_ptr_
  %_cond2_2_149 = icmp ult i8* %_ptr_bt_144, %_parent_stack_start_ptr_
  %_cond2_150 = or i1 %_cond2_1_148, %_cond2_2_149
  %_cond4_151 = icmp ule i8* %_pot_address_in_parent_stack_146, %_parent_stack_end_ptr_
  %_cond1_n_cond2_152 = and i1 %_cond1_147, %_cond2_150
  %_cond1_n_cond2_cond3_153 = and i1 %_cond1_n_cond2_152, %_cond4_151
  br i1 %_cond1_n_cond2_cond3_153, label %121, label %122

; <label>:121:                                    ; preds = %block_0x6a
  %_address_in_parent_stack_bt_155 = bitcast i8* %_pot_address_in_parent_stack_146 to i32*
  br label %122

; <label>:122:                                    ; preds = %block_0x6a, %121
  %123 = phi i32* [ %120, %block_0x6a ], [ %_address_in_parent_stack_bt_155, %121 ]
  %_new_load_156 = load i32, i32* %123
  %124 = zext i32 %_new_load_156 to i64, !mcsema_real_eip !25
  %_load_rsp_ptr_33 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_34 = bitcast i8* %_load_rsp_ptr_33 to i64*
  %_ptr_to_int_157 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_160 = sub i64 %_ptr_to_int_157, %_local_end_to_int_
  %_pot_address_in_parent_stack_161 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_160
  %_cond1_162 = icmp ugt i8* %_load_rsp_ptr_33, %_local_stack_end_ptr_
  %_cond2_1_163 = icmp ugt i8* %_load_rsp_ptr_33, %_parent_stack_end_ptr_
  %_cond2_2_164 = icmp ult i8* %_load_rsp_ptr_33, %_parent_stack_start_ptr_
  %_cond2_165 = or i1 %_cond2_1_163, %_cond2_2_164
  %_cond4_166 = icmp ule i8* %_pot_address_in_parent_stack_161, %_parent_stack_end_ptr_
  %_cond1_n_cond2_167 = and i1 %_cond1_162, %_cond2_165
  %_cond1_n_cond2_cond3_168 = and i1 %_cond1_n_cond2_167, %_cond4_166
  br i1 %_cond1_n_cond2_cond3_168, label %125, label %126

; <label>:125:                                    ; preds = %122
  %_address_in_parent_stack_bt_170 = bitcast i8* %_pot_address_in_parent_stack_161 to i64*
  br label %126

; <label>:126:                                    ; preds = %122, %125
  %127 = phi i64* [ %_allin_new_bt_34, %122 ], [ %_address_in_parent_stack_bt_170, %125 ]
  %_new_load_171 = load i64, i64* %127
  %_new_int2ptr_ = inttoptr i64 %_new_load_171 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rsp_ptr_33, i64 16
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_
  store i64 %124, i64* %RAX, !mcsema_real_eip !27
  store i64 %1, i64* %RBX, !mcsema_real_eip !27
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !27
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !27
  store i64 %83, i64* %RSI, !mcsema_real_eip !27
  store i64 %5, i64* %RDI, !mcsema_real_eip !27
  %_new_ptr2int_37 = ptrtoint i8* %_new_gep_35 to i64
  store volatile i64 %_new_ptr2int_37, i64* %RSP
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_39 = ptrtoint i8* %_load_rbp_ptr_38 to i64
  store volatile i64 %_new_ptr2int_39, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !27
  store i64 %7, i64* %R9, !mcsema_real_eip !27
  store i64 %8, i64* %R10, !mcsema_real_eip !27
  store i64 %9, i64* %R11, !mcsema_real_eip !27
  store i64 %10, i64* %R12, !mcsema_real_eip !27
  store i64 %11, i64* %R13, !mcsema_real_eip !27
  store i64 %12, i64* %R14, !mcsema_real_eip !27
  store i64 %13, i64* %R15, !mcsema_real_eip !27
  store i64 %14, i64* %RIP, !mcsema_real_eip !27
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !27
  store i1 %92, i1* %PF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !27
  store i1 %93, i1* %ZF, align 1, !mcsema_real_eip !27
  store i1 true, i1* %SF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !27
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !27
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !27
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %_ptr_to_int_172 = ptrtoint i64* %44 to i64
  %_ptr_bt_174 = bitcast i64* %44 to i8*
  %_offset_above_rbp_175 = sub i64 %_ptr_to_int_172, %_local_end_to_int_
  %_pot_address_in_parent_stack_176 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_175
  %_cond1_177 = icmp ugt i8* %_ptr_bt_174, %_local_stack_end_ptr_
  %_cond2_1_178 = icmp ugt i8* %_ptr_bt_174, %_parent_stack_end_ptr_
  %_cond2_2_179 = icmp ult i8* %_ptr_bt_174, %_parent_stack_start_ptr_
  %_cond2_180 = or i1 %_cond2_1_178, %_cond2_2_179
  %_cond4_181 = icmp ule i8* %_pot_address_in_parent_stack_176, %_parent_stack_end_ptr_
  %_cond1_n_cond2_182 = and i1 %_cond1_177, %_cond2_180
  %_cond1_n_cond2_cond3_183 = and i1 %_cond1_n_cond2_182, %_cond4_181
  br i1 %_cond1_n_cond2_cond3_183, label %128, label %129

; <label>:128:                                    ; preds = %126
  %_address_in_parent_stack_bt_185 = bitcast i8* %_pot_address_in_parent_stack_176 to i64*
  br label %129

; <label>:129:                                    ; preds = %126, %128
  %130 = phi i64* [ %44, %126 ], [ %_address_in_parent_stack_bt_185, %128 ]
  %_new_load_186 = load i64, i64* %130
  store i64 %_new_load_186, i64* %43, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !27
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !27
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !27
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !27
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !27
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !27
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !27
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !27
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !27
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !27
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !27
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !27
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !27
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !27
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !27
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !27
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !27
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x3f:                                       ; preds = %118
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_141, i32 10)
  %131 = extractvalue { i32, i1 } %uadd72, 0
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -16
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %132 = bitcast i64* %_allin_new_bt_42 to i32*
  store i32 %131, i32* %132, !mcsema_real_eip !28
  br label %block_0x5a, !mcsema_real_eip !29

block_0x4f:                                       ; preds = %118
  %133 = add i32 %_new_load_141, -10
  store i32 %133, i32* %116, !mcsema_real_eip !30
  br label %block_0x5a, !mcsema_real_eip !31

block_0x5a:                                       ; preds = %block_0x4f, %block_0x3f
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -4
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %134 = bitcast i64* %_allin_new_bt_48 to i32*
  %_ptr_to_int_187 = ptrtoint i32* %134 to i64
  %_ptr_bt_189 = bitcast i32* %134 to i8*
  %_offset_above_rbp_190 = sub i64 %_ptr_to_int_187, %_local_end_to_int_
  %_pot_address_in_parent_stack_191 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_190
  %_cond1_192 = icmp ugt i8* %_ptr_bt_189, %_local_stack_end_ptr_
  %_cond2_1_193 = icmp ugt i8* %_ptr_bt_189, %_parent_stack_end_ptr_
  %_cond2_2_194 = icmp ult i8* %_ptr_bt_189, %_parent_stack_start_ptr_
  %_cond2_195 = or i1 %_cond2_1_193, %_cond2_2_194
  %_cond4_196 = icmp ule i8* %_pot_address_in_parent_stack_191, %_parent_stack_end_ptr_
  %_cond1_n_cond2_197 = and i1 %_cond1_192, %_cond2_195
  %_cond1_n_cond2_cond3_198 = and i1 %_cond1_n_cond2_197, %_cond4_196
  br i1 %_cond1_n_cond2_cond3_198, label %135, label %136

; <label>:135:                                    ; preds = %block_0x5a
  %_address_in_parent_stack_bt_200 = bitcast i8* %_pot_address_in_parent_stack_191 to i32*
  br label %136

; <label>:136:                                    ; preds = %block_0x5a, %135
  %137 = phi i32* [ %134, %block_0x5a ], [ %_address_in_parent_stack_bt_200, %135 ]
  %_new_load_201 = load i32, i32* %137
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_201, i32 -1)
  %138 = extractvalue { i32, i1 } %uadd73, 0
  store i32 %138, i32* %134, !mcsema_real_eip !33
  br label %block_0x13, !mcsema_real_eip !34
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 112}
!3 = !{i64 116}
!4 = !{i64 130}
!5 = !{i64 137}
!6 = !{i64 142}
!7 = !{i64 145}
!8 = !{i64 148}
!9 = !{i64 152}
!10 = !{i64 153}
!11 = !{i64 0}
!12 = !{i64 4}
!13 = !{i64 7}
!14 = !{i64 10}
!15 = !{i64 13}
!16 = !{i64 16}
!17 = !{i64 19}
!18 = !{i64 26}
!19 = !{i64 37}
!20 = !{i64 40}
!21 = !{i64 49}
!22 = !{i64 51}
!23 = !{i64 79}
!24 = !{i64 57}
!25 = !{i64 106}
!26 = !{i64 109}
!27 = !{i64 110}
!28 = !{i64 71}
!29 = !{i64 74}
!30 = !{i64 87}
!31 = !{i64 63}
!32 = !{i64 90}
!33 = !{i64 98}
!34 = !{i64 101}
!35 = !{i64 46}
