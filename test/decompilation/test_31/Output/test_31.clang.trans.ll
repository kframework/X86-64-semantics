; ModuleID = 'Output/test_31.clang.trans.bc'
source_filename = "Output/test_31.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [4 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0xb1 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_70(%struct.regs*) {
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
  %5 = load i64, i64* %RSI, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %6 = load i64, i64* %R8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %7 = load i64, i64* %R9, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %8 = load i64, i64* %R10, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %9 = load i64, i64* %R11, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %10 = load i64, i64* %R12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %11 = load i64, i64* %R13, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %12 = load i64, i64* %R14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %13 = load i64, i64* %R15, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %14 = load i64, i64* %RIP, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !2
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %43 = bitcast i8* %42 to i64*
  %44 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %45 = load i64, i64* %43, align 4
  store i64 %45, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %47 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %49 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %50 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %67 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %68 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
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
  %69 = and i64 %_trans_xor_, 16
  %70 = icmp eq i64 %69, 0
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %71 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !3
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_, 0
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_2, 16
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_2
  %74 = icmp slt i64 %_trans_xor_9, 0
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %75 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %75, !mcsema_real_eip !4
  %_load_rsp_ptr_13 = load i8*, i8** %_RSP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rsp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_15, !mcsema_real_eip !5
  store volatile i8* %_new_gep_14, i8** %_RSP_ptr_
  store i64 %1, i64* %RAX, !mcsema_real_eip !5
  store i64 %2, i64* %RBX, !mcsema_real_eip !5
  store i64 %3, i64* %RCX, !mcsema_real_eip !5
  store i64 %4, i64* %RDX, !mcsema_real_eip !5
  store i64 %5, i64* %RSI, !mcsema_real_eip !5
  store i64 5, i64* %RDI, !mcsema_real_eip !5
  %_new_ptr2int_17 = ptrtoint i8* %_new_gep_14 to i64
  store volatile i64 %_new_ptr2int_17, i64* %RSP
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_19 = ptrtoint i8* %_load_rbp_ptr_18 to i64
  store volatile i64 %_new_ptr2int_19, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !5
  store i64 %7, i64* %R9, !mcsema_real_eip !5
  store i64 %8, i64* %R10, !mcsema_real_eip !5
  store i64 %9, i64* %R11, !mcsema_real_eip !5
  store i64 %10, i64* %R12, !mcsema_real_eip !5
  store i64 %11, i64* %R13, !mcsema_real_eip !5
  store i64 %12, i64* %R14, !mcsema_real_eip !5
  store i64 %13, i64* %R15, !mcsema_real_eip !5
  store i64 %14, i64* %RIP, !mcsema_real_eip !5
  store i1 %_trans_icmp_ne_7, i1* %CF, align 1, !mcsema_real_eip !5
  store i1 %73, i1* %PF, align 1, !mcsema_real_eip !5
  store i1 %70, i1* %AF, align 1, !mcsema_real_eip !5
  store i1 %_trans_icmp_eq_, i1* %ZF, align 1, !mcsema_real_eip !5
  store i1 %_trans_icmp_ne_, i1* %SF, align 1, !mcsema_real_eip !5
  store i1 %74, i1* %OF, align 1, !mcsema_real_eip !5
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !5
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !5
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !5
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !5
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !5
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !5
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !5
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !5
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !5
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !5
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !5
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !5
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !5
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !5
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !5
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !5
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !5
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !5
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !5
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !5
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !5
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !5
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !5
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !5
  %76 = load i64, i64* %44, align 4
  store i64 %76, i64* %43, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !5
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !5
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !5
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !5
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !5
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !5
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !5
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !5
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !5
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !5
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !5
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !5
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !5
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !5
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !5
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !5
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !5
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !5
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !5
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !5
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !5
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !5
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !5
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_43)
  %77 = load i64, i64* %RAX, !mcsema_real_eip !5
  %78 = load i64, i64* %RBX, !mcsema_real_eip !5
  %79 = load i64, i64* %RCX, !mcsema_real_eip !5
  %80 = load i64, i64* %RDX, !mcsema_real_eip !5
  %81 = load i64, i64* %R8, !mcsema_real_eip !5
  %82 = load i64, i64* %R9, !mcsema_real_eip !5
  %83 = load i64, i64* %R10, !mcsema_real_eip !5
  %84 = load i64, i64* %R11, !mcsema_real_eip !5
  %85 = load i64, i64* %R12, !mcsema_real_eip !5
  %86 = load i64, i64* %R13, !mcsema_real_eip !5
  %87 = load i64, i64* %R14, !mcsema_real_eip !5
  %88 = load i64, i64* %R15, !mcsema_real_eip !5
  %89 = load i64, i64* %RIP, !mcsema_real_eip !5
  %90 = load i1, i1* %DF, align 1, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !5
  %91 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !5
  %92 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !5
  %93 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !5
  %94 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !5
  %95 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !5
  %96 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !5
  %97 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !5
  %98 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !5
  %99 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !5
  %100 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !5
  %101 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !5
  %102 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !5
  %103 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !5
  %104 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !5
  %105 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !5
  %106 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !5
  %107 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !5
  %108 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !5
  %109 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !5
  %110 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !5
  %111 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !5
  %112 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !5
  %113 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !5
  %114 = load i64, i64* %43, align 4
  store i64 %114, i64* %44, align 4
  %115 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !5
  %116 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !5
  %117 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !5
  %118 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !5
  %119 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !5
  %120 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !5
  %121 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !5
  %122 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !5
  %123 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !5
  %124 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !5
  %125 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !5
  %126 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !5
  %127 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !5
  %128 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !5
  %129 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !5
  %130 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !5
  %131 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !5
  %132 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !5
  %133 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !5
  %134 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !5
  %135 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !5
  %136 = load i64, i64* %STACK_BASE, !mcsema_real_eip !5
  %137 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !5
  %138 = and i64 %77, 4294967295
  %_load_rsp_ptr_20 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_21 = bitcast i8* %_load_rsp_ptr_20 to i64*
  %139 = load i64, i64* %_allin_new_bt_21, !mcsema_real_eip !6
  %_new_gep_22 = getelementptr i8, i8* %_load_rsp_ptr_20, i64 8
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %140 = load i64, i64* %_allin_new_bt_23, !mcsema_real_eip !6
  %_new_gep_24 = getelementptr i8, i8* %_load_rsp_ptr_20, i64 16
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %141 = load i64, i64* %_allin_new_bt_25, !mcsema_real_eip !6
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_20, i64 24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %142 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !6
  %_new_gep_28 = getelementptr i8, i8* %_load_rsp_ptr_20, i64 32
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %143 = load i64, i64* %_allin_new_bt_29, !mcsema_real_eip !6
  %_new_gep_30 = getelementptr i8, i8* %_load_rsp_ptr_20, i64 40
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %144 = load i64, i64* %_allin_new_bt_31, !mcsema_real_eip !6
  %145 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0xb1 to i64), i64 %138, i64 %80, i64 %79, i64 %81, i64 %82, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144), !mcsema_real_eip !6
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %146 = trunc i64 %145 to i32, !mcsema_real_eip !7
  %147 = bitcast i64* %_allin_new_bt_34 to i32*
  store i32 %146, i32* %147, !mcsema_real_eip !7
  %_load_rsp_ptr_35 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_36 = ptrtoint i8* %_load_rsp_ptr_35 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_36, i64 16)
  %148 = extractvalue { i64, i1 } %uadd, 0
  %149 = xor i64 %148, %_new_ptr2int_36, !mcsema_real_eip !8
  %150 = and i64 %149, 16
  %151 = icmp eq i64 %150, 0
  %152 = icmp slt i64 %148, 0
  %153 = icmp eq i64 %148, 0, !mcsema_real_eip !8
  %154 = xor i64 %_new_ptr2int_36, -9223372036854775808, !mcsema_real_eip !8
  %155 = and i64 %149, %154, !mcsema_real_eip !8
  %156 = icmp slt i64 %155, 0
  %157 = trunc i64 %148 to i8, !mcsema_real_eip !8
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !8
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  %161 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %148 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %162 = inttoptr i64 %148 to i64*, !mcsema_real_eip !9
  %163 = load i64, i64* %162, !mcsema_real_eip !9
  %_new_int2ptr_37 = inttoptr i64 %163 to i8*
  store volatile i8* %_new_int2ptr_37, i8** %_RBP_ptr_
  %164 = add i64 %148, 16, !mcsema_real_eip !10
  %_new_int2ptr_38 = inttoptr i64 %164 to i8*
  store volatile i8* %_new_int2ptr_38, i8** %_RSP_ptr_
  store i64 0, i64* %RAX, !mcsema_real_eip !10
  store i64 %78, i64* %RBX, !mcsema_real_eip !10
  store i64 %79, i64* %RCX, !mcsema_real_eip !10
  store i64 %80, i64* %RDX, !mcsema_real_eip !10
  store i64 0, i64* %RSI, !mcsema_real_eip !10
  store i64 ptrtoint (%0* @data_0xb1 to i64), i64* %RDI, !mcsema_real_eip !10
  store volatile i64 %164, i64* %RSP
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_42 = ptrtoint i8* %_load_rbp_ptr_41 to i64
  store volatile i64 %_new_ptr2int_42, i64* %RBP
  store i64 %81, i64* %R8, !mcsema_real_eip !10
  store i64 %82, i64* %R9, !mcsema_real_eip !10
  store i64 %83, i64* %R10, !mcsema_real_eip !10
  store i64 %84, i64* %R11, !mcsema_real_eip !10
  store i64 %85, i64* %R12, !mcsema_real_eip !10
  store i64 %86, i64* %R13, !mcsema_real_eip !10
  store i64 %87, i64* %R14, !mcsema_real_eip !10
  store i64 %88, i64* %R15, !mcsema_real_eip !10
  store i64 %89, i64* %RIP, !mcsema_real_eip !10
  store i1 %161, i1* %CF, align 1, !mcsema_real_eip !10
  store i1 %160, i1* %PF, align 1, !mcsema_real_eip !10
  store i1 %151, i1* %AF, align 1, !mcsema_real_eip !10
  store i1 %153, i1* %ZF, align 1, !mcsema_real_eip !10
  store i1 %152, i1* %SF, align 1, !mcsema_real_eip !10
  store i1 %156, i1* %OF, align 1, !mcsema_real_eip !10
  store i1 %90, i1* %DF, align 1, !mcsema_real_eip !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !10
  store i1 %91, i1* %FPU_B, align 1, !mcsema_real_eip !10
  store i1 %92, i1* %FPU_C3, align 1, !mcsema_real_eip !10
  store i3 %93, i3* %FPU_TOP, align 1, !mcsema_real_eip !10
  store i1 %94, i1* %FPU_C2, align 1, !mcsema_real_eip !10
  store i1 %95, i1* %FPU_C1, align 1, !mcsema_real_eip !10
  store i1 %96, i1* %FPU_C0, align 1, !mcsema_real_eip !10
  store i1 %97, i1* %FPU_ES, align 1, !mcsema_real_eip !10
  store i1 %98, i1* %FPU_SF, align 1, !mcsema_real_eip !10
  store i1 %99, i1* %FPU_PE, align 1, !mcsema_real_eip !10
  store i1 %100, i1* %FPU_UE, align 1, !mcsema_real_eip !10
  store i1 %101, i1* %FPU_OE, align 1, !mcsema_real_eip !10
  store i1 %102, i1* %FPU_ZE, align 1, !mcsema_real_eip !10
  store i1 %103, i1* %FPU_DE, align 1, !mcsema_real_eip !10
  store i1 %104, i1* %FPU_IE, align 1, !mcsema_real_eip !10
  store i1 %105, i1* %FPU_X, align 1, !mcsema_real_eip !10
  store i2 %106, i2* %FPU_RC, align 1, !mcsema_real_eip !10
  store i2 %107, i2* %FPU_PC, align 1, !mcsema_real_eip !10
  store i1 %108, i1* %FPU_PM, align 1, !mcsema_real_eip !10
  store i1 %109, i1* %FPU_UM, align 1, !mcsema_real_eip !10
  store i1 %110, i1* %FPU_OM, align 1, !mcsema_real_eip !10
  store i1 %111, i1* %FPU_ZM, align 1, !mcsema_real_eip !10
  store i1 %112, i1* %FPU_DM, align 1, !mcsema_real_eip !10
  store i1 %113, i1* %FPU_IM, align 1, !mcsema_real_eip !10
  %165 = load i64, i64* %44, align 4
  store i64 %165, i64* %43, align 4
  store i16 %115, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !10
  store i64 %116, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !10
  store i16 %117, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !10
  store i64 %118, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !10
  store i11 %119, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !10
  store i128 %120, i128* %XMM0, align 1, !mcsema_real_eip !10
  store i128 %121, i128* %XMM1, align 1, !mcsema_real_eip !10
  store i128 %122, i128* %XMM2, align 1, !mcsema_real_eip !10
  store i128 %123, i128* %XMM3, align 1, !mcsema_real_eip !10
  store i128 %124, i128* %XMM4, align 1, !mcsema_real_eip !10
  store i128 %125, i128* %XMM5, align 1, !mcsema_real_eip !10
  store i128 %126, i128* %XMM6, align 1, !mcsema_real_eip !10
  store i128 %127, i128* %XMM7, align 1, !mcsema_real_eip !10
  store i128 %128, i128* %XMM8, align 1, !mcsema_real_eip !10
  store i128 %129, i128* %XMM9, align 1, !mcsema_real_eip !10
  store i128 %130, i128* %XMM10, align 1, !mcsema_real_eip !10
  store i128 %131, i128* %XMM11, align 1, !mcsema_real_eip !10
  store i128 %132, i128* %XMM12, align 1, !mcsema_real_eip !10
  store i128 %133, i128* %XMM13, align 1, !mcsema_real_eip !10
  store i128 %134, i128* %XMM14, align 1, !mcsema_real_eip !10
  store i128 %135, i128* %XMM15, align 1, !mcsema_real_eip !10
  store i64 %136, i64* %STACK_BASE, align 1, !mcsema_real_eip !10
  store i64 %137, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !10
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
  %73 = add i64 %6, -24
  %74 = add i64 %71, -8, !mcsema_real_eip !12
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !12
  %76 = trunc i64 %5 to i32, !mcsema_real_eip !12
  %77 = bitcast i64* %75 to i32*
  store i32 %76, i32* %77, !mcsema_real_eip !12
  %78 = icmp eq i32 1, %76
  br i1 %78, label %block_0x27, label %block_0x19, !mcsema_real_eip !13

block_0x19:                                       ; preds = %entry
  %79 = icmp eq i32 %76, 0
  br i1 %79, label %block_0x27, label %block_0x33, !mcsema_real_eip !14

block_0x27:                                       ; preds = %block_0x19, %entry
  %80 = add i64 %71, -4, !mcsema_real_eip !15
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !15
  %82 = bitcast i64* %81 to i32*
  store i32 1, i32* %82, !mcsema_real_eip !15
  br label %block_0x5b, !mcsema_real_eip !16

block_0x5b:                                       ; preds = %block_0x33, %block_0x27
  %RBX_val.0 = phi i64 [ %1, %block_0x27 ], [ %212, %block_0x33 ]
  %RCX_val.0 = phi i64 [ %2, %block_0x27 ], [ %213, %block_0x33 ]
  %RDX_val.0 = phi i64 [ %3, %block_0x27 ], [ %214, %block_0x33 ]
  %RSI_val.0 = phi i64 [ %4, %block_0x27 ], [ %215, %block_0x33 ]
  %RDI_val.0 = phi i64 [ %5, %block_0x27 ], [ %281, %block_0x33 ]
  %RBP_val.0 = phi i64 [ %71, %block_0x27 ], [ %217, %block_0x33 ]
  %RSP_val.0 = phi i64 [ %73, %block_0x27 ], [ %216, %block_0x33 ]
  %R8_val.0 = phi i64 [ %8, %block_0x27 ], [ %218, %block_0x33 ]
  %R9_val.0 = phi i64 [ %9, %block_0x27 ], [ %219, %block_0x33 ]
  %R10_val.0 = phi i64 [ %10, %block_0x27 ], [ %220, %block_0x33 ]
  %R11_val.0 = phi i64 [ %11, %block_0x27 ], [ %221, %block_0x33 ]
  %R12_val.0 = phi i64 [ %12, %block_0x27 ], [ %222, %block_0x33 ]
  %R13_val.0 = phi i64 [ %13, %block_0x27 ], [ %223, %block_0x33 ]
  %R14_val.0 = phi i64 [ %14, %block_0x27 ], [ %224, %block_0x33 ]
  %RIP_val.0 = phi i64 [ %16, %block_0x27 ], [ %226, %block_0x33 ]
  %DF_val.0 = phi i1 [ %17, %block_0x27 ], [ %227, %block_0x33 ]
  %FPU_B_val.0 = phi i1 [ %21, %block_0x27 ], [ %228, %block_0x33 ]
  %FPU_C3_val.0 = phi i1 [ %22, %block_0x27 ], [ %229, %block_0x33 ]
  %FPU_TOP_val.0 = phi i3 [ %23, %block_0x27 ], [ %230, %block_0x33 ]
  %FPU_C2_val.0 = phi i1 [ %24, %block_0x27 ], [ %231, %block_0x33 ]
  %FPU_C1_val.0 = phi i1 [ %25, %block_0x27 ], [ %232, %block_0x33 ]
  %FPU_C0_val.0 = phi i1 [ %26, %block_0x27 ], [ %233, %block_0x33 ]
  %FPU_ES_val.0 = phi i1 [ %27, %block_0x27 ], [ %234, %block_0x33 ]
  %FPU_SF_val.0 = phi i1 [ %28, %block_0x27 ], [ %235, %block_0x33 ]
  %FPU_PE_val.0 = phi i1 [ %29, %block_0x27 ], [ %236, %block_0x33 ]
  %FPU_UE_val.0 = phi i1 [ %30, %block_0x27 ], [ %237, %block_0x33 ]
  %FPU_OE_val.0 = phi i1 [ %31, %block_0x27 ], [ %238, %block_0x33 ]
  %FPU_ZE_val.0 = phi i1 [ %32, %block_0x27 ], [ %239, %block_0x33 ]
  %FPU_DE_val.0 = phi i1 [ %33, %block_0x27 ], [ %240, %block_0x33 ]
  %FPU_IE_val.0 = phi i1 [ %34, %block_0x27 ], [ %241, %block_0x33 ]
  %FPU_X_val.0 = phi i1 [ %35, %block_0x27 ], [ %242, %block_0x33 ]
  %FPU_RC_val.0 = phi i2 [ %36, %block_0x27 ], [ %243, %block_0x33 ]
  %FPU_PC_val.0 = phi i2 [ %37, %block_0x27 ], [ %244, %block_0x33 ]
  %FPU_PM_val.0 = phi i1 [ %38, %block_0x27 ], [ %245, %block_0x33 ]
  %FPU_UM_val.0 = phi i1 [ %39, %block_0x27 ], [ %246, %block_0x33 ]
  %FPU_OM_val.0 = phi i1 [ %40, %block_0x27 ], [ %247, %block_0x33 ]
  %FPU_ZM_val.0 = phi i1 [ %41, %block_0x27 ], [ %248, %block_0x33 ]
  %FPU_DM_val.0 = phi i1 [ %42, %block_0x27 ], [ %249, %block_0x33 ]
  %FPU_IM_val.0 = phi i1 [ %43, %block_0x27 ], [ %250, %block_0x33 ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %48, %block_0x27 ], [ %252, %block_0x33 ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %49, %block_0x27 ], [ %253, %block_0x33 ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %50, %block_0x27 ], [ %254, %block_0x33 ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %51, %block_0x27 ], [ %255, %block_0x33 ]
  %FPU_FOPCODE_val.0 = phi i11 [ %52, %block_0x27 ], [ %256, %block_0x33 ]
  %XMM0_val.0 = phi i128 [ %53, %block_0x27 ], [ %257, %block_0x33 ]
  %XMM1_val.0 = phi i128 [ %54, %block_0x27 ], [ %258, %block_0x33 ]
  %XMM2_val.0 = phi i128 [ %55, %block_0x27 ], [ %259, %block_0x33 ]
  %XMM3_val.0 = phi i128 [ %56, %block_0x27 ], [ %260, %block_0x33 ]
  %XMM4_val.0 = phi i128 [ %57, %block_0x27 ], [ %261, %block_0x33 ]
  %XMM5_val.0 = phi i128 [ %58, %block_0x27 ], [ %262, %block_0x33 ]
  %XMM6_val.0 = phi i128 [ %59, %block_0x27 ], [ %263, %block_0x33 ]
  %XMM7_val.0 = phi i128 [ %60, %block_0x27 ], [ %264, %block_0x33 ]
  %XMM8_val.0 = phi i128 [ %61, %block_0x27 ], [ %265, %block_0x33 ]
  %XMM9_val.0 = phi i128 [ %62, %block_0x27 ], [ %266, %block_0x33 ]
  %XMM10_val.0 = phi i128 [ %63, %block_0x27 ], [ %267, %block_0x33 ]
  %XMM11_val.0 = phi i128 [ %64, %block_0x27 ], [ %268, %block_0x33 ]
  %XMM12_val.0 = phi i128 [ %65, %block_0x27 ], [ %269, %block_0x33 ]
  %XMM13_val.0 = phi i128 [ %66, %block_0x27 ], [ %270, %block_0x33 ]
  %XMM14_val.0 = phi i128 [ %67, %block_0x27 ], [ %271, %block_0x33 ]
  %XMM15_val.0 = phi i128 [ %68, %block_0x27 ], [ %272, %block_0x33 ]
  %STACK_BASE_val.0 = phi i64 [ %69, %block_0x27 ], [ %273, %block_0x33 ]
  %STACK_LIMIT_val.0 = phi i64 [ %70, %block_0x27 ], [ %274, %block_0x33 ]
  %R15_val.0 = phi i64 [ %15, %block_0x27 ], [ %225, %block_0x33 ]
  %83 = add i64 %RBP_val.0, -4, !mcsema_real_eip !17
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !17
  %85 = bitcast i64* %84 to i32*
  %86 = load i32, i32* %85, !mcsema_real_eip !17
  %87 = zext i32 %86 to i64, !mcsema_real_eip !17
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0, i64 16)
  %88 = extractvalue { i64, i1 } %uadd, 0
  %89 = xor i64 %88, %RSP_val.0, !mcsema_real_eip !18
  %90 = and i64 %89, 16
  %91 = icmp eq i64 %90, 0
  %92 = icmp slt i64 %88, 0
  %93 = icmp eq i64 %88, 0, !mcsema_real_eip !18
  %94 = xor i64 %RSP_val.0, -9223372036854775808, !mcsema_real_eip !18
  %95 = and i64 %89, %94, !mcsema_real_eip !18
  %96 = icmp slt i64 %95, 0
  %97 = trunc i64 %88 to i8, !mcsema_real_eip !18
  %98 = tail call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !18
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  %101 = extractvalue { i64, i1 } %uadd, 1
  %102 = inttoptr i64 %88 to i64*, !mcsema_real_eip !19
  %103 = load i64, i64* %102, !mcsema_real_eip !19
  %104 = add i64 %88, 16, !mcsema_real_eip !20
  store i64 %87, i64* %RAX, !mcsema_real_eip !20
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !20
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !20
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !20
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !20
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !20
  store i64 %104, i64* %RSP, !mcsema_real_eip !20
  store i64 %103, i64* %RBP, !mcsema_real_eip !20
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !20
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !20
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !20
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !20
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !20
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !20
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !20
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !20
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !20
  store i1 %101, i1* %CF, align 1, !mcsema_real_eip !20
  store i1 %100, i1* %PF, align 1, !mcsema_real_eip !20
  store i1 %91, i1* %AF, align 1, !mcsema_real_eip !20
  store i1 %93, i1* %ZF, align 1, !mcsema_real_eip !20
  store i1 %92, i1* %SF, align 1, !mcsema_real_eip !20
  store i1 %96, i1* %OF, align 1, !mcsema_real_eip !20
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !20
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !20
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %105 = load i64, i64* %46, align 4
  store i64 %105, i64* %45, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !20
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !20
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !20
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !20
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !20
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !20
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !20
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !20
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !20
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !20
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !20
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !20
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !20
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !20
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !20
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !20
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !20
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20

block_0x33:                                       ; preds = %block_0x19
  %106 = add i32 %76, -1
  %107 = xor i32 %106, %76, !mcsema_real_eip !21
  %108 = and i32 %107, 16, !mcsema_real_eip !21
  %109 = icmp ne i32 %108, 0, !mcsema_real_eip !21
  %110 = trunc i32 %106 to i8, !mcsema_real_eip !21
  %111 = tail call i8 @llvm.ctpop.i8(i8 %110), !mcsema_real_eip !21
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  %114 = icmp eq i32 %106, 0, !mcsema_real_eip !21
  %115 = icmp slt i32 %106, 0
  %116 = and i32 %107, %76, !mcsema_real_eip !21
  %117 = icmp slt i32 %116, 0
  %118 = zext i32 %106 to i64, !mcsema_real_eip !21
  %119 = add i64 %73, -8
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !22
  store i64 -4981261766360305936, i64* %120, !mcsema_real_eip !22
  store i64 %118, i64* %RAX, !mcsema_real_eip !22
  store i64 %1, i64* %RBX, !mcsema_real_eip !22
  store i64 %2, i64* %RCX, !mcsema_real_eip !22
  store i64 %3, i64* %RDX, !mcsema_real_eip !22
  store i64 %4, i64* %RSI, !mcsema_real_eip !22
  store i64 %118, i64* %RDI, !mcsema_real_eip !22
  store i64 %119, i64* %RSP, !mcsema_real_eip !22
  store i64 %71, i64* %RBP, !mcsema_real_eip !22
  store i64 %8, i64* %R8, !mcsema_real_eip !22
  store i64 %9, i64* %R9, !mcsema_real_eip !22
  store i64 %10, i64* %R10, !mcsema_real_eip !22
  store i64 %11, i64* %R11, !mcsema_real_eip !22
  store i64 %12, i64* %R12, !mcsema_real_eip !22
  store i64 %13, i64* %R13, !mcsema_real_eip !22
  store i64 %14, i64* %R14, !mcsema_real_eip !22
  store i64 %15, i64* %R15, !mcsema_real_eip !22
  store i64 %16, i64* %RIP, !mcsema_real_eip !22
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !22
  store i1 %113, i1* %PF, align 1, !mcsema_real_eip !22
  store i1 %109, i1* %AF, align 1, !mcsema_real_eip !22
  store i1 %114, i1* %ZF, align 1, !mcsema_real_eip !22
  store i1 %115, i1* %SF, align 1, !mcsema_real_eip !22
  store i1 %117, i1* %OF, align 1, !mcsema_real_eip !22
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !22
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !22
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !22
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %121 = load i64, i64* %46, align 4
  store i64 %121, i64* %45, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !22
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !22
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !22
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !22
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !22
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !22
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !22
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !22
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !22
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !22
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !22
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !22
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !22
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !22
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !22
  %122 = load i64, i64* %RAX, !mcsema_real_eip !22
  %123 = load i64, i64* %RBX, !mcsema_real_eip !22
  %124 = load i64, i64* %RCX, !mcsema_real_eip !22
  %125 = load i64, i64* %RDX, !mcsema_real_eip !22
  %126 = load i64, i64* %RSI, !mcsema_real_eip !22
  %127 = load i64, i64* %RSP, !mcsema_real_eip !22
  %128 = load i64, i64* %RBP, !mcsema_real_eip !22
  %129 = load i64, i64* %R8, !mcsema_real_eip !22
  %130 = load i64, i64* %R9, !mcsema_real_eip !22
  %131 = load i64, i64* %R10, !mcsema_real_eip !22
  %132 = load i64, i64* %R11, !mcsema_real_eip !22
  %133 = load i64, i64* %R12, !mcsema_real_eip !22
  %134 = load i64, i64* %R13, !mcsema_real_eip !22
  %135 = load i64, i64* %R14, !mcsema_real_eip !22
  %136 = load i64, i64* %R15, !mcsema_real_eip !22
  %137 = load i64, i64* %RIP, !mcsema_real_eip !22
  %138 = load i1, i1* %DF, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !22
  %139 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !22
  %140 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  %141 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  %142 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  %143 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  %144 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  %145 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  %146 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  %147 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  %148 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  %149 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  %150 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  %151 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  %152 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  %153 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !22
  %154 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  %155 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  %156 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  %157 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  %158 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  %159 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  %160 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  %161 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %162 = load i64, i64* %45, align 4
  store i64 %162, i64* %46, align 4
  %163 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  %164 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !22
  %165 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  %166 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !22
  %167 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !22
  %168 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !22
  %169 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !22
  %170 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !22
  %171 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !22
  %172 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !22
  %173 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !22
  %174 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !22
  %175 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !22
  %176 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !22
  %177 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !22
  %178 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !22
  %179 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !22
  %180 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !22
  %181 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !22
  %182 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !22
  %183 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !22
  %184 = load i64, i64* %STACK_BASE, !mcsema_real_eip !22
  %185 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !22
  %186 = add i64 %128, -8, !mcsema_real_eip !23
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !23
  %188 = bitcast i64* %187 to i32*
  %189 = load i32, i32* %188, !mcsema_real_eip !23
  %190 = add i32 %189, -2
  %191 = xor i32 %190, %189, !mcsema_real_eip !24
  %192 = and i32 %191, 16, !mcsema_real_eip !24
  %193 = icmp ne i32 %192, 0, !mcsema_real_eip !24
  %194 = trunc i32 %190 to i8, !mcsema_real_eip !24
  %195 = tail call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !24
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  %198 = icmp eq i32 %190, 0, !mcsema_real_eip !24
  %199 = icmp slt i32 %190, 0
  %200 = icmp ult i32 %189, 2, !mcsema_real_eip !24
  %201 = and i32 %191, %189, !mcsema_real_eip !24
  %202 = icmp slt i32 %201, 0
  %203 = zext i32 %190 to i64, !mcsema_real_eip !24
  %204 = add i64 %128, -12, !mcsema_real_eip !25
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !25
  %206 = trunc i64 %122 to i32, !mcsema_real_eip !25
  %207 = bitcast i64* %205 to i32*
  store i32 %206, i32* %207, !mcsema_real_eip !25
  %208 = add i64 %127, -8
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %209, !mcsema_real_eip !26
  store i64 %122, i64* %RAX, !mcsema_real_eip !26
  store i64 %123, i64* %RBX, !mcsema_real_eip !26
  store i64 %124, i64* %RCX, !mcsema_real_eip !26
  store i64 %125, i64* %RDX, !mcsema_real_eip !26
  store i64 %126, i64* %RSI, !mcsema_real_eip !26
  store i64 %203, i64* %RDI, !mcsema_real_eip !26
  store i64 %208, i64* %RSP, !mcsema_real_eip !26
  store i64 %128, i64* %RBP, !mcsema_real_eip !26
  store i64 %129, i64* %R8, !mcsema_real_eip !26
  store i64 %130, i64* %R9, !mcsema_real_eip !26
  store i64 %131, i64* %R10, !mcsema_real_eip !26
  store i64 %132, i64* %R11, !mcsema_real_eip !26
  store i64 %133, i64* %R12, !mcsema_real_eip !26
  store i64 %134, i64* %R13, !mcsema_real_eip !26
  store i64 %135, i64* %R14, !mcsema_real_eip !26
  store i64 %136, i64* %R15, !mcsema_real_eip !26
  store i64 %137, i64* %RIP, !mcsema_real_eip !26
  store i1 %200, i1* %CF, align 1, !mcsema_real_eip !26
  store i1 %197, i1* %PF, align 1, !mcsema_real_eip !26
  store i1 %193, i1* %AF, align 1, !mcsema_real_eip !26
  store i1 %198, i1* %ZF, align 1, !mcsema_real_eip !26
  store i1 %199, i1* %SF, align 1, !mcsema_real_eip !26
  store i1 %202, i1* %OF, align 1, !mcsema_real_eip !26
  store i1 %138, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  store i1 %139, i1* %FPU_B, align 1, !mcsema_real_eip !26
  store i1 %140, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  store i3 %141, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  store i1 %142, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  store i1 %143, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  store i1 %144, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  store i1 %145, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  store i1 %146, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  store i1 %147, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  store i1 %148, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  store i1 %149, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  store i1 %150, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  store i1 %151, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  store i1 %152, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  store i1 %153, i1* %FPU_X, align 1, !mcsema_real_eip !26
  store i2 %154, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  store i2 %155, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  store i1 %156, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  store i1 %157, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  store i1 %158, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  store i1 %159, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  store i1 %160, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  store i1 %161, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %210 = load i64, i64* %46, align 4
  store i64 %210, i64* %45, align 4
  store i16 %163, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  store i64 %164, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !26
  store i16 %165, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  store i64 %166, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !26
  store i11 %167, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  store i128 %168, i128* %XMM0, align 1, !mcsema_real_eip !26
  store i128 %169, i128* %XMM1, align 1, !mcsema_real_eip !26
  store i128 %170, i128* %XMM2, align 1, !mcsema_real_eip !26
  store i128 %171, i128* %XMM3, align 1, !mcsema_real_eip !26
  store i128 %172, i128* %XMM4, align 1, !mcsema_real_eip !26
  store i128 %173, i128* %XMM5, align 1, !mcsema_real_eip !26
  store i128 %174, i128* %XMM6, align 1, !mcsema_real_eip !26
  store i128 %175, i128* %XMM7, align 1, !mcsema_real_eip !26
  store i128 %176, i128* %XMM8, align 1, !mcsema_real_eip !26
  store i128 %177, i128* %XMM9, align 1, !mcsema_real_eip !26
  store i128 %178, i128* %XMM10, align 1, !mcsema_real_eip !26
  store i128 %179, i128* %XMM11, align 1, !mcsema_real_eip !26
  store i128 %180, i128* %XMM12, align 1, !mcsema_real_eip !26
  store i128 %181, i128* %XMM13, align 1, !mcsema_real_eip !26
  store i128 %182, i128* %XMM14, align 1, !mcsema_real_eip !26
  store i128 %183, i128* %XMM15, align 1, !mcsema_real_eip !26
  store i64 %184, i64* %STACK_BASE, align 1, !mcsema_real_eip !26
  store i64 %185, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !26
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !26
  %211 = load i64, i64* %RAX, !mcsema_real_eip !26
  %212 = load i64, i64* %RBX, !mcsema_real_eip !26
  %213 = load i64, i64* %RCX, !mcsema_real_eip !26
  %214 = load i64, i64* %RDX, !mcsema_real_eip !26
  %215 = load i64, i64* %RSI, !mcsema_real_eip !26
  %216 = load i64, i64* %RSP, !mcsema_real_eip !26
  %217 = load i64, i64* %RBP, !mcsema_real_eip !26
  %218 = load i64, i64* %R8, !mcsema_real_eip !26
  %219 = load i64, i64* %R9, !mcsema_real_eip !26
  %220 = load i64, i64* %R10, !mcsema_real_eip !26
  %221 = load i64, i64* %R11, !mcsema_real_eip !26
  %222 = load i64, i64* %R12, !mcsema_real_eip !26
  %223 = load i64, i64* %R13, !mcsema_real_eip !26
  %224 = load i64, i64* %R14, !mcsema_real_eip !26
  %225 = load i64, i64* %R15, !mcsema_real_eip !26
  %226 = load i64, i64* %RIP, !mcsema_real_eip !26
  %227 = load i1, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !26
  %228 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !26
  %229 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  %230 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  %231 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  %232 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  %233 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  %234 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  %235 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  %236 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  %237 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  %238 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  %239 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  %240 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  %241 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  %242 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !26
  %243 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  %244 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  %245 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  %246 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  %247 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  %248 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  %249 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  %250 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %251 = load i64, i64* %45, align 4
  store i64 %251, i64* %46, align 4
  %252 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  %253 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !26
  %254 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  %255 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !26
  %256 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  %257 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !26
  %258 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !26
  %259 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !26
  %260 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !26
  %261 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !26
  %262 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !26
  %263 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !26
  %264 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !26
  %265 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !26
  %266 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !26
  %267 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !26
  %268 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !26
  %269 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !26
  %270 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !26
  %271 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !26
  %272 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !26
  %273 = load i64, i64* %STACK_BASE, !mcsema_real_eip !26
  %274 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !26
  %275 = add i64 %217, -12, !mcsema_real_eip !27
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !27
  %277 = bitcast i64* %276 to i32*
  %278 = load i32, i32* %277, !mcsema_real_eip !27
  %279 = trunc i64 %211 to i32, !mcsema_real_eip !28
  %uadd351 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %279, i32 %278)
  %280 = extractvalue { i32, i1 } %uadd351, 0
  %281 = zext i32 %280 to i64, !mcsema_real_eip !28
  %282 = add i64 %217, -4, !mcsema_real_eip !29
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !29
  %284 = bitcast i64* %283 to i32*
  store i32 %280, i32* %284, !mcsema_real_eip !29
  br label %block_0x5b
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
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
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
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
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -24
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -8
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %71 = trunc i64 %5 to i32, !mcsema_real_eip !12
  %72 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 %71, i32* %72, !mcsema_real_eip !12
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %73 = bitcast i64* %_allin_new_bt_15 to i32*
  %_ptr_to_int_64 = ptrtoint i32* %73 to i64
  %_ptr_bt_66 = bitcast i32* %73 to i8*
  %_offset_above_rbp_67 = sub i64 %_ptr_to_int_64, %_local_end_to_int_
  %_pot_address_in_parent_stack_68 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_67
  %_cond1_69 = icmp ugt i8* %_ptr_bt_66, %_local_stack_end_ptr_
  %_cond2_1_70 = icmp ugt i8* %_ptr_bt_66, %_parent_stack_end_ptr_
  %_cond2_2_71 = icmp ult i8* %_ptr_bt_66, %_parent_stack_start_ptr_
  %_cond2_72 = or i1 %_cond2_1_70, %_cond2_2_71
  %_cond4_73 = icmp ule i8* %_pot_address_in_parent_stack_68, %_parent_stack_end_ptr_
  %_cond1_n_cond2_74 = and i1 %_cond1_69, %_cond2_72
  %_cond1_n_cond2_cond3_75 = and i1 %_cond1_n_cond2_74, %_cond4_73
  br i1 %_cond1_n_cond2_cond3_75, label %74, label %75

; <label>:74:                                     ; preds = %46
  %_address_in_parent_stack_bt_77 = bitcast i8* %_pot_address_in_parent_stack_68 to i32*
  br label %75

; <label>:75:                                     ; preds = %46, %74
  %76 = phi i32* [ %73, %46 ], [ %_address_in_parent_stack_bt_77, %74 ]
  %_new_load_78 = load i32, i32* %76
  %77 = icmp eq i32 1, %_new_load_78
  br i1 %77, label %block_0x27, label %block_0x19, !mcsema_real_eip !13

block_0x19:                                       ; preds = %75
  br i1 %_cond1_n_cond2_cond3_75, label %78, label %79

; <label>:78:                                     ; preds = %block_0x19
  %_address_in_parent_stack_bt_92 = bitcast i8* %_pot_address_in_parent_stack_68 to i32*
  br label %79

; <label>:79:                                     ; preds = %block_0x19, %78
  %80 = phi i32* [ %73, %block_0x19 ], [ %_address_in_parent_stack_bt_92, %78 ]
  %_new_load_93 = load i32, i32* %80
  %81 = icmp eq i32 %_new_load_93, 0
  br i1 %81, label %block_0x27, label %block_0x33, !mcsema_real_eip !14

block_0x27:                                       ; preds = %79, %75
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %82 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 1, i32* %82, !mcsema_real_eip !15
  br label %block_0x5b, !mcsema_real_eip !16

block_0x5b:                                       ; preds = %283, %block_0x27
  %RBX_val.0 = phi i64 [ %1, %block_0x27 ], [ %218, %283 ]
  %RCX_val.0 = phi i64 [ %2, %block_0x27 ], [ %219, %283 ]
  %RDX_val.0 = phi i64 [ %3, %block_0x27 ], [ %220, %283 ]
  %RSI_val.0 = phi i64 [ %4, %block_0x27 ], [ %221, %283 ]
  %RDI_val.0 = phi i64 [ %5, %block_0x27 ], [ %287, %283 ]
  %R8_val.0 = phi i64 [ %6, %block_0x27 ], [ %222, %283 ]
  %R9_val.0 = phi i64 [ %7, %block_0x27 ], [ %223, %283 ]
  %R10_val.0 = phi i64 [ %8, %block_0x27 ], [ %224, %283 ]
  %R11_val.0 = phi i64 [ %9, %block_0x27 ], [ %225, %283 ]
  %R12_val.0 = phi i64 [ %10, %block_0x27 ], [ %226, %283 ]
  %R13_val.0 = phi i64 [ %11, %block_0x27 ], [ %227, %283 ]
  %R14_val.0 = phi i64 [ %12, %block_0x27 ], [ %228, %283 ]
  %RIP_val.0 = phi i64 [ %14, %block_0x27 ], [ %230, %283 ]
  %DF_val.0 = phi i1 [ %15, %block_0x27 ], [ %231, %283 ]
  %FPU_B_val.0 = phi i1 [ %19, %block_0x27 ], [ %232, %283 ]
  %FPU_C3_val.0 = phi i1 [ %20, %block_0x27 ], [ %233, %283 ]
  %FPU_TOP_val.0 = phi i3 [ %21, %block_0x27 ], [ %234, %283 ]
  %FPU_C2_val.0 = phi i1 [ %22, %block_0x27 ], [ %235, %283 ]
  %FPU_C1_val.0 = phi i1 [ %23, %block_0x27 ], [ %236, %283 ]
  %FPU_C0_val.0 = phi i1 [ %24, %block_0x27 ], [ %237, %283 ]
  %FPU_ES_val.0 = phi i1 [ %25, %block_0x27 ], [ %238, %283 ]
  %FPU_SF_val.0 = phi i1 [ %26, %block_0x27 ], [ %239, %283 ]
  %FPU_PE_val.0 = phi i1 [ %27, %block_0x27 ], [ %240, %283 ]
  %FPU_UE_val.0 = phi i1 [ %28, %block_0x27 ], [ %241, %283 ]
  %FPU_OE_val.0 = phi i1 [ %29, %block_0x27 ], [ %242, %283 ]
  %FPU_ZE_val.0 = phi i1 [ %30, %block_0x27 ], [ %243, %283 ]
  %FPU_DE_val.0 = phi i1 [ %31, %block_0x27 ], [ %244, %283 ]
  %FPU_IE_val.0 = phi i1 [ %32, %block_0x27 ], [ %245, %283 ]
  %FPU_X_val.0 = phi i1 [ %33, %block_0x27 ], [ %246, %283 ]
  %FPU_RC_val.0 = phi i2 [ %34, %block_0x27 ], [ %247, %283 ]
  %FPU_PC_val.0 = phi i2 [ %35, %block_0x27 ], [ %248, %283 ]
  %FPU_PM_val.0 = phi i1 [ %36, %block_0x27 ], [ %249, %283 ]
  %FPU_UM_val.0 = phi i1 [ %37, %block_0x27 ], [ %250, %283 ]
  %FPU_OM_val.0 = phi i1 [ %38, %block_0x27 ], [ %251, %283 ]
  %FPU_ZM_val.0 = phi i1 [ %39, %block_0x27 ], [ %252, %283 ]
  %FPU_DM_val.0 = phi i1 [ %40, %block_0x27 ], [ %253, %283 ]
  %FPU_IM_val.0 = phi i1 [ %41, %block_0x27 ], [ %254, %283 ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %48, %block_0x27 ], [ %258, %283 ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %49, %block_0x27 ], [ %259, %283 ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %50, %block_0x27 ], [ %260, %283 ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %51, %block_0x27 ], [ %261, %283 ]
  %FPU_FOPCODE_val.0 = phi i11 [ %52, %block_0x27 ], [ %262, %283 ]
  %XMM0_val.0 = phi i128 [ %53, %block_0x27 ], [ %263, %283 ]
  %XMM1_val.0 = phi i128 [ %54, %block_0x27 ], [ %264, %283 ]
  %XMM2_val.0 = phi i128 [ %55, %block_0x27 ], [ %265, %283 ]
  %XMM3_val.0 = phi i128 [ %56, %block_0x27 ], [ %266, %283 ]
  %XMM4_val.0 = phi i128 [ %57, %block_0x27 ], [ %267, %283 ]
  %XMM5_val.0 = phi i128 [ %58, %block_0x27 ], [ %268, %283 ]
  %XMM6_val.0 = phi i128 [ %59, %block_0x27 ], [ %269, %283 ]
  %XMM7_val.0 = phi i128 [ %60, %block_0x27 ], [ %270, %283 ]
  %XMM8_val.0 = phi i128 [ %61, %block_0x27 ], [ %271, %283 ]
  %XMM9_val.0 = phi i128 [ %62, %block_0x27 ], [ %272, %283 ]
  %XMM10_val.0 = phi i128 [ %63, %block_0x27 ], [ %273, %283 ]
  %XMM11_val.0 = phi i128 [ %64, %block_0x27 ], [ %274, %283 ]
  %XMM12_val.0 = phi i128 [ %65, %block_0x27 ], [ %275, %283 ]
  %XMM13_val.0 = phi i128 [ %66, %block_0x27 ], [ %276, %283 ]
  %XMM14_val.0 = phi i128 [ %67, %block_0x27 ], [ %277, %283 ]
  %XMM15_val.0 = phi i128 [ %68, %block_0x27 ], [ %278, %283 ]
  %STACK_BASE_val.0 = phi i64 [ %69, %block_0x27 ], [ %279, %283 ]
  %STACK_LIMIT_val.0 = phi i64 [ %70, %block_0x27 ], [ %280, %283 ]
  %R15_val.0 = phi i64 [ %13, %block_0x27 ], [ %229, %283 ]
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -4
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %83 = bitcast i64* %_allin_new_bt_24 to i32*
  %_ptr_to_int_94 = ptrtoint i32* %83 to i64
  %_ptr_bt_96 = bitcast i32* %83 to i8*
  %_offset_above_rbp_97 = sub i64 %_ptr_to_int_94, %_local_end_to_int_
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %_ptr_bt_96, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %_ptr_bt_96, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %_ptr_bt_96, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond1_n_cond2_104, %_cond4_103
  br i1 %_cond1_n_cond2_cond3_105, label %84, label %85

; <label>:84:                                     ; preds = %block_0x5b
  %_address_in_parent_stack_bt_107 = bitcast i8* %_pot_address_in_parent_stack_98 to i32*
  br label %85

; <label>:85:                                     ; preds = %block_0x5b, %84
  %86 = phi i32* [ %83, %block_0x5b ], [ %_address_in_parent_stack_bt_107, %84 ]
  %_new_load_108 = load i32, i32* %86
  %87 = zext i32 %_new_load_108 to i64, !mcsema_real_eip !17
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_26 = ptrtoint i8* %_load_rsp_ptr_25 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_26, i64 16)
  %88 = extractvalue { i64, i1 } %uadd, 0
  %89 = xor i64 %88, %_new_ptr2int_26, !mcsema_real_eip !18
  %90 = and i64 %89, 16
  %91 = icmp eq i64 %90, 0
  %92 = icmp slt i64 %88, 0
  %93 = icmp eq i64 %88, 0, !mcsema_real_eip !18
  %94 = xor i64 %_new_ptr2int_26, -9223372036854775808, !mcsema_real_eip !18
  %95 = and i64 %89, %94, !mcsema_real_eip !18
  %96 = icmp slt i64 %95, 0
  %97 = trunc i64 %88 to i8, !mcsema_real_eip !18
  %98 = tail call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !18
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  %101 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %88 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %102 = inttoptr i64 %88 to i64*, !mcsema_real_eip !19
  %_ptr_bt_111 = bitcast i64* %102 to i8*
  %_offset_above_rbp_112 = sub i64 %88, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %_ptr_bt_111, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %_ptr_bt_111, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %_ptr_bt_111, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  br i1 %_cond1_n_cond2_cond3_120, label %103, label %104

; <label>:103:                                    ; preds = %85
  %_address_in_parent_stack_bt_122 = bitcast i8* %_pot_address_in_parent_stack_113 to i64*
  br label %104

; <label>:104:                                    ; preds = %85, %103
  %105 = phi i64* [ %102, %85 ], [ %_address_in_parent_stack_bt_122, %103 ]
  %_new_load_123 = load i64, i64* %105
  %_new_int2ptr_27 = inttoptr i64 %_new_load_123 to i8*
  store volatile i8* %_new_int2ptr_27, i8** %_RBP_ptr_
  %106 = add i64 %88, 16, !mcsema_real_eip !20
  %_new_int2ptr_28 = inttoptr i64 %106 to i8*
  store volatile i8* %_new_int2ptr_28, i8** %_RSP_ptr_
  store i64 %87, i64* %RAX, !mcsema_real_eip !20
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !20
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !20
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !20
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !20
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !20
  store volatile i64 %106, i64* %RSP
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_32 = ptrtoint i8* %_load_rbp_ptr_31 to i64
  store volatile i64 %_new_ptr2int_32, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !20
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !20
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !20
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !20
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !20
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !20
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !20
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !20
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !20
  store i1 %101, i1* %CF, align 1, !mcsema_real_eip !20
  store i1 %100, i1* %PF, align 1, !mcsema_real_eip !20
  store i1 %91, i1* %AF, align 1, !mcsema_real_eip !20
  store i1 %93, i1* %ZF, align 1, !mcsema_real_eip !20
  store i1 %92, i1* %SF, align 1, !mcsema_real_eip !20
  store i1 %96, i1* %OF, align 1, !mcsema_real_eip !20
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !20
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !20
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %_ptr_to_int_124 = ptrtoint i64* %44 to i64
  %_ptr_bt_126 = bitcast i64* %44 to i8*
  %_offset_above_rbp_127 = sub i64 %_ptr_to_int_124, %_local_end_to_int_
  %_pot_address_in_parent_stack_128 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_cond1_129 = icmp ugt i8* %_ptr_bt_126, %_local_stack_end_ptr_
  %_cond2_1_130 = icmp ugt i8* %_ptr_bt_126, %_parent_stack_end_ptr_
  %_cond2_2_131 = icmp ult i8* %_ptr_bt_126, %_parent_stack_start_ptr_
  %_cond2_132 = or i1 %_cond2_1_130, %_cond2_2_131
  %_cond4_133 = icmp ule i8* %_pot_address_in_parent_stack_128, %_parent_stack_end_ptr_
  %_cond1_n_cond2_134 = and i1 %_cond1_129, %_cond2_132
  %_cond1_n_cond2_cond3_135 = and i1 %_cond1_n_cond2_134, %_cond4_133
  br i1 %_cond1_n_cond2_cond3_135, label %107, label %108

; <label>:107:                                    ; preds = %104
  %_address_in_parent_stack_bt_137 = bitcast i8* %_pot_address_in_parent_stack_128 to i64*
  br label %108

; <label>:108:                                    ; preds = %104, %107
  %109 = phi i64* [ %44, %104 ], [ %_address_in_parent_stack_bt_137, %107 ]
  %_new_load_138 = load i64, i64* %109
  store i64 %_new_load_138, i64* %43, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !20
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !20
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !20
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !20
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !20
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !20
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !20
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !20
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !20
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !20
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !20
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !20
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !20
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !20
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !20
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !20
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !20
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20

block_0x33:                                       ; preds = %79
  br i1 %_cond1_n_cond2_cond3_75, label %110, label %111

; <label>:110:                                    ; preds = %block_0x33
  %_address_in_parent_stack_bt_152 = bitcast i8* %_pot_address_in_parent_stack_68 to i32*
  br label %111

; <label>:111:                                    ; preds = %block_0x33, %110
  %112 = phi i32* [ %73, %block_0x33 ], [ %_address_in_parent_stack_bt_152, %110 ]
  %_new_load_153 = load i32, i32* %112
  %113 = add i32 %_new_load_153, -1
  %114 = xor i32 %113, %_new_load_153, !mcsema_real_eip !21
  %115 = and i32 %114, 16, !mcsema_real_eip !21
  %116 = icmp ne i32 %115, 0, !mcsema_real_eip !21
  %117 = trunc i32 %113 to i8, !mcsema_real_eip !21
  %118 = tail call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !21
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  %121 = icmp eq i32 %113, 0, !mcsema_real_eip !21
  %122 = icmp slt i32 %113, 0
  %123 = icmp eq i32 %_new_load_153, 0
  %124 = and i32 %114, %_new_load_153, !mcsema_real_eip !21
  %125 = icmp slt i32 %124, 0
  %126 = zext i32 %113 to i64, !mcsema_real_eip !21
  %_load_rsp_ptr_36 = load i8*, i8** %_RSP_ptr_
  %_new_gep_37 = getelementptr i8, i8* %_load_rsp_ptr_36, i64 -8
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_38, !mcsema_real_eip !22
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_
  store i64 %126, i64* %RAX, !mcsema_real_eip !22
  store i64 %1, i64* %RBX, !mcsema_real_eip !22
  store i64 %2, i64* %RCX, !mcsema_real_eip !22
  store i64 %3, i64* %RDX, !mcsema_real_eip !22
  store i64 %4, i64* %RSI, !mcsema_real_eip !22
  store i64 %126, i64* %RDI, !mcsema_real_eip !22
  %_new_ptr2int_40 = ptrtoint i8* %_new_gep_37 to i64
  store volatile i64 %_new_ptr2int_40, i64* %RSP
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_42 = ptrtoint i8* %_load_rbp_ptr_41 to i64
  store volatile i64 %_new_ptr2int_42, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !22
  store i64 %7, i64* %R9, !mcsema_real_eip !22
  store i64 %8, i64* %R10, !mcsema_real_eip !22
  store i64 %9, i64* %R11, !mcsema_real_eip !22
  store i64 %10, i64* %R12, !mcsema_real_eip !22
  store i64 %11, i64* %R13, !mcsema_real_eip !22
  store i64 %12, i64* %R14, !mcsema_real_eip !22
  store i64 %13, i64* %R15, !mcsema_real_eip !22
  store i64 %14, i64* %RIP, !mcsema_real_eip !22
  store i1 %123, i1* %CF, align 1, !mcsema_real_eip !22
  store i1 %120, i1* %PF, align 1, !mcsema_real_eip !22
  store i1 %116, i1* %AF, align 1, !mcsema_real_eip !22
  store i1 %121, i1* %ZF, align 1, !mcsema_real_eip !22
  store i1 %122, i1* %SF, align 1, !mcsema_real_eip !22
  store i1 %125, i1* %OF, align 1, !mcsema_real_eip !22
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !22
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !22
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !22
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %_ptr_to_int_154 = ptrtoint i64* %44 to i64
  %_ptr_bt_156 = bitcast i64* %44 to i8*
  %_offset_above_rbp_157 = sub i64 %_ptr_to_int_154, %_local_end_to_int_
  %_pot_address_in_parent_stack_158 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_157
  %_cond1_159 = icmp ugt i8* %_ptr_bt_156, %_local_stack_end_ptr_
  %_cond2_1_160 = icmp ugt i8* %_ptr_bt_156, %_parent_stack_end_ptr_
  %_cond2_2_161 = icmp ult i8* %_ptr_bt_156, %_parent_stack_start_ptr_
  %_cond2_162 = or i1 %_cond2_1_160, %_cond2_2_161
  %_cond4_163 = icmp ule i8* %_pot_address_in_parent_stack_158, %_parent_stack_end_ptr_
  %_cond1_n_cond2_164 = and i1 %_cond1_159, %_cond2_162
  %_cond1_n_cond2_cond3_165 = and i1 %_cond1_n_cond2_164, %_cond4_163
  br i1 %_cond1_n_cond2_cond3_165, label %127, label %128

; <label>:127:                                    ; preds = %111
  %_address_in_parent_stack_bt_167 = bitcast i8* %_pot_address_in_parent_stack_158 to i64*
  br label %128

; <label>:128:                                    ; preds = %111, %127
  %129 = phi i64* [ %44, %111 ], [ %_address_in_parent_stack_bt_167, %127 ]
  %_new_load_168 = load i64, i64* %129
  store i64 %_new_load_168, i64* %43, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !22
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !22
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !22
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !22
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !22
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !22
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !22
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !22
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !22
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !22
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !22
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !22
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !22
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !22
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_62)
  %130 = load i64, i64* %RAX, !mcsema_real_eip !22
  %131 = load i64, i64* %RBX, !mcsema_real_eip !22
  %132 = load i64, i64* %RCX, !mcsema_real_eip !22
  %133 = load i64, i64* %RDX, !mcsema_real_eip !22
  %134 = load i64, i64* %RSI, !mcsema_real_eip !22
  %135 = load i64, i64* %R8, !mcsema_real_eip !22
  %136 = load i64, i64* %R9, !mcsema_real_eip !22
  %137 = load i64, i64* %R10, !mcsema_real_eip !22
  %138 = load i64, i64* %R11, !mcsema_real_eip !22
  %139 = load i64, i64* %R12, !mcsema_real_eip !22
  %140 = load i64, i64* %R13, !mcsema_real_eip !22
  %141 = load i64, i64* %R14, !mcsema_real_eip !22
  %142 = load i64, i64* %R15, !mcsema_real_eip !22
  %143 = load i64, i64* %RIP, !mcsema_real_eip !22
  %144 = load i1, i1* %DF, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !22
  %145 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !22
  %146 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  %147 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  %148 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  %149 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  %150 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  %151 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  %152 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  %153 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  %154 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  %155 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  %156 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  %157 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  %158 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  %159 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !22
  %160 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  %161 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  %162 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  %163 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  %164 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  %165 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  %166 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  %167 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  br i1 %_cond1_n_cond2_cond3_, label %168, label %169

; <label>:168:                                    ; preds = %128
  %_address_in_parent_stack_bt_182 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %169

; <label>:169:                                    ; preds = %128, %168
  %170 = phi i64* [ %43, %128 ], [ %_address_in_parent_stack_bt_182, %168 ]
  %_new_load_183 = load i64, i64* %170
  store i64 %_new_load_183, i64* %44, align 4
  %171 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  %172 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !22
  %173 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  %174 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !22
  %175 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !22
  %176 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !22
  %177 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !22
  %178 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !22
  %179 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !22
  %180 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !22
  %181 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !22
  %182 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !22
  %183 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !22
  %184 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !22
  %185 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !22
  %186 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !22
  %187 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !22
  %188 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !22
  %189 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !22
  %190 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !22
  %191 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !22
  %192 = load i64, i64* %STACK_BASE, !mcsema_real_eip !22
  %193 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !22
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %194 = bitcast i64* %_allin_new_bt_45 to i32*
  %_ptr_to_int_184 = ptrtoint i32* %194 to i64
  %_ptr_bt_186 = bitcast i32* %194 to i8*
  %_offset_above_rbp_187 = sub i64 %_ptr_to_int_184, %_local_end_to_int_
  %_pot_address_in_parent_stack_188 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_187
  %_cond1_189 = icmp ugt i8* %_ptr_bt_186, %_local_stack_end_ptr_
  %_cond2_1_190 = icmp ugt i8* %_ptr_bt_186, %_parent_stack_end_ptr_
  %_cond2_2_191 = icmp ult i8* %_ptr_bt_186, %_parent_stack_start_ptr_
  %_cond2_192 = or i1 %_cond2_1_190, %_cond2_2_191
  %_cond4_193 = icmp ule i8* %_pot_address_in_parent_stack_188, %_parent_stack_end_ptr_
  %_cond1_n_cond2_194 = and i1 %_cond1_189, %_cond2_192
  %_cond1_n_cond2_cond3_195 = and i1 %_cond1_n_cond2_194, %_cond4_193
  br i1 %_cond1_n_cond2_cond3_195, label %195, label %196

; <label>:195:                                    ; preds = %169
  %_address_in_parent_stack_bt_197 = bitcast i8* %_pot_address_in_parent_stack_188 to i32*
  br label %196

; <label>:196:                                    ; preds = %169, %195
  %197 = phi i32* [ %194, %169 ], [ %_address_in_parent_stack_bt_197, %195 ]
  %_new_load_198 = load i32, i32* %197
  %198 = add i32 %_new_load_198, -2
  %199 = xor i32 %198, %_new_load_198, !mcsema_real_eip !24
  %200 = and i32 %199, 16, !mcsema_real_eip !24
  %201 = icmp ne i32 %200, 0, !mcsema_real_eip !24
  %202 = trunc i32 %198 to i8, !mcsema_real_eip !24
  %203 = tail call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !24
  %204 = and i8 %203, 1
  %205 = icmp eq i8 %204, 0
  %206 = icmp eq i32 %198, 0, !mcsema_real_eip !24
  %207 = icmp slt i32 %198, 0
  %208 = icmp ult i32 %_new_load_198, 2, !mcsema_real_eip !24
  %209 = and i32 %199, %_new_load_198, !mcsema_real_eip !24
  %210 = icmp slt i32 %209, 0
  %211 = zext i32 %198 to i64, !mcsema_real_eip !24
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -12
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %212 = trunc i64 %130 to i32, !mcsema_real_eip !25
  %213 = bitcast i64* %_allin_new_bt_48 to i32*
  store i32 %212, i32* %213, !mcsema_real_eip !25
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_51, !mcsema_real_eip !26
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %130, i64* %RAX, !mcsema_real_eip !26
  store i64 %131, i64* %RBX, !mcsema_real_eip !26
  store i64 %132, i64* %RCX, !mcsema_real_eip !26
  store i64 %133, i64* %RDX, !mcsema_real_eip !26
  store i64 %134, i64* %RSI, !mcsema_real_eip !26
  store i64 %211, i64* %RDI, !mcsema_real_eip !26
  %_new_ptr2int_53 = ptrtoint i8* %_new_gep_50 to i64
  store volatile i64 %_new_ptr2int_53, i64* %RSP
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_55 = ptrtoint i8* %_load_rbp_ptr_54 to i64
  store volatile i64 %_new_ptr2int_55, i64* %RBP
  store i64 %135, i64* %R8, !mcsema_real_eip !26
  store i64 %136, i64* %R9, !mcsema_real_eip !26
  store i64 %137, i64* %R10, !mcsema_real_eip !26
  store i64 %138, i64* %R11, !mcsema_real_eip !26
  store i64 %139, i64* %R12, !mcsema_real_eip !26
  store i64 %140, i64* %R13, !mcsema_real_eip !26
  store i64 %141, i64* %R14, !mcsema_real_eip !26
  store i64 %142, i64* %R15, !mcsema_real_eip !26
  store i64 %143, i64* %RIP, !mcsema_real_eip !26
  store i1 %208, i1* %CF, align 1, !mcsema_real_eip !26
  store i1 %205, i1* %PF, align 1, !mcsema_real_eip !26
  store i1 %201, i1* %AF, align 1, !mcsema_real_eip !26
  store i1 %206, i1* %ZF, align 1, !mcsema_real_eip !26
  store i1 %207, i1* %SF, align 1, !mcsema_real_eip !26
  store i1 %210, i1* %OF, align 1, !mcsema_real_eip !26
  store i1 %144, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  store i1 %145, i1* %FPU_B, align 1, !mcsema_real_eip !26
  store i1 %146, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  store i3 %147, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  store i1 %148, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  store i1 %149, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  store i1 %150, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  store i1 %151, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  store i1 %152, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  store i1 %153, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  store i1 %154, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  store i1 %155, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  store i1 %156, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  store i1 %157, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  store i1 %158, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  store i1 %159, i1* %FPU_X, align 1, !mcsema_real_eip !26
  store i2 %160, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  store i2 %161, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  store i1 %162, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  store i1 %163, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  store i1 %164, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  store i1 %165, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  store i1 %166, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  store i1 %167, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  br i1 %_cond1_n_cond2_cond3_165, label %214, label %215

; <label>:214:                                    ; preds = %196
  %_address_in_parent_stack_bt_212 = bitcast i8* %_pot_address_in_parent_stack_158 to i64*
  br label %215

; <label>:215:                                    ; preds = %196, %214
  %216 = phi i64* [ %44, %196 ], [ %_address_in_parent_stack_bt_212, %214 ]
  %_new_load_213 = load i64, i64* %216
  store i64 %_new_load_213, i64* %43, align 4
  store i16 %171, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  store i64 %172, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !26
  store i16 %173, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  store i64 %174, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !26
  store i11 %175, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  store i128 %176, i128* %XMM0, align 1, !mcsema_real_eip !26
  store i128 %177, i128* %XMM1, align 1, !mcsema_real_eip !26
  store i128 %178, i128* %XMM2, align 1, !mcsema_real_eip !26
  store i128 %179, i128* %XMM3, align 1, !mcsema_real_eip !26
  store i128 %180, i128* %XMM4, align 1, !mcsema_real_eip !26
  store i128 %181, i128* %XMM5, align 1, !mcsema_real_eip !26
  store i128 %182, i128* %XMM6, align 1, !mcsema_real_eip !26
  store i128 %183, i128* %XMM7, align 1, !mcsema_real_eip !26
  store i128 %184, i128* %XMM8, align 1, !mcsema_real_eip !26
  store i128 %185, i128* %XMM9, align 1, !mcsema_real_eip !26
  store i128 %186, i128* %XMM10, align 1, !mcsema_real_eip !26
  store i128 %187, i128* %XMM11, align 1, !mcsema_real_eip !26
  store i128 %188, i128* %XMM12, align 1, !mcsema_real_eip !26
  store i128 %189, i128* %XMM13, align 1, !mcsema_real_eip !26
  store i128 %190, i128* %XMM14, align 1, !mcsema_real_eip !26
  store i128 %191, i128* %XMM15, align 1, !mcsema_real_eip !26
  store i64 %192, i64* %STACK_BASE, align 1, !mcsema_real_eip !26
  store i64 %193, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !26
  %_load_rbp_ptr_63 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_63)
  %217 = load i64, i64* %RAX, !mcsema_real_eip !26
  %218 = load i64, i64* %RBX, !mcsema_real_eip !26
  %219 = load i64, i64* %RCX, !mcsema_real_eip !26
  %220 = load i64, i64* %RDX, !mcsema_real_eip !26
  %221 = load i64, i64* %RSI, !mcsema_real_eip !26
  %222 = load i64, i64* %R8, !mcsema_real_eip !26
  %223 = load i64, i64* %R9, !mcsema_real_eip !26
  %224 = load i64, i64* %R10, !mcsema_real_eip !26
  %225 = load i64, i64* %R11, !mcsema_real_eip !26
  %226 = load i64, i64* %R12, !mcsema_real_eip !26
  %227 = load i64, i64* %R13, !mcsema_real_eip !26
  %228 = load i64, i64* %R14, !mcsema_real_eip !26
  %229 = load i64, i64* %R15, !mcsema_real_eip !26
  %230 = load i64, i64* %RIP, !mcsema_real_eip !26
  %231 = load i1, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !26
  %232 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !26
  %233 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  %234 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  %235 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  %236 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  %237 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  %238 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  %239 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  %240 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  %241 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  %242 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  %243 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  %244 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  %245 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  %246 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !26
  %247 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  %248 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  %249 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  %250 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  %251 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  %252 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  %253 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  %254 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  br i1 %_cond1_n_cond2_cond3_, label %255, label %256

; <label>:255:                                    ; preds = %215
  %_address_in_parent_stack_bt_227 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %256

; <label>:256:                                    ; preds = %215, %255
  %257 = phi i64* [ %43, %215 ], [ %_address_in_parent_stack_bt_227, %255 ]
  %_new_load_228 = load i64, i64* %257
  store i64 %_new_load_228, i64* %44, align 4
  %258 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  %259 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !26
  %260 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  %261 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !26
  %262 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  %263 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !26
  %264 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !26
  %265 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !26
  %266 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !26
  %267 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !26
  %268 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !26
  %269 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !26
  %270 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !26
  %271 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !26
  %272 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !26
  %273 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !26
  %274 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !26
  %275 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !26
  %276 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !26
  %277 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !26
  %278 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !26
  %279 = load i64, i64* %STACK_BASE, !mcsema_real_eip !26
  %280 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !26
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -12
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %281 = bitcast i64* %_allin_new_bt_58 to i32*
  %_ptr_to_int_229 = ptrtoint i32* %281 to i64
  %_ptr_bt_231 = bitcast i32* %281 to i8*
  %_offset_above_rbp_232 = sub i64 %_ptr_to_int_229, %_local_end_to_int_
  %_pot_address_in_parent_stack_233 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_232
  %_cond1_234 = icmp ugt i8* %_ptr_bt_231, %_local_stack_end_ptr_
  %_cond2_1_235 = icmp ugt i8* %_ptr_bt_231, %_parent_stack_end_ptr_
  %_cond2_2_236 = icmp ult i8* %_ptr_bt_231, %_parent_stack_start_ptr_
  %_cond2_237 = or i1 %_cond2_1_235, %_cond2_2_236
  %_cond4_238 = icmp ule i8* %_pot_address_in_parent_stack_233, %_parent_stack_end_ptr_
  %_cond1_n_cond2_239 = and i1 %_cond1_234, %_cond2_237
  %_cond1_n_cond2_cond3_240 = and i1 %_cond1_n_cond2_239, %_cond4_238
  br i1 %_cond1_n_cond2_cond3_240, label %282, label %283

; <label>:282:                                    ; preds = %256
  %_address_in_parent_stack_bt_242 = bitcast i8* %_pot_address_in_parent_stack_233 to i32*
  br label %283

; <label>:283:                                    ; preds = %256, %282
  %284 = phi i32* [ %281, %256 ], [ %_address_in_parent_stack_bt_242, %282 ]
  %_new_load_243 = load i32, i32* %284
  %285 = trunc i64 %217 to i32, !mcsema_real_eip !28
  %uadd351 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %285, i32 %_new_load_243)
  %286 = extractvalue { i32, i1 } %uadd351, 0
  %287 = zext i32 %286 to i64, !mcsema_real_eip !28
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -4
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %288 = bitcast i64* %_allin_new_bt_61 to i32*
  store i32 %286, i32* %288, !mcsema_real_eip !29
  br label %block_0x5b
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 112}
!3 = !{i64 116}
!4 = !{i64 125}
!5 = !{i64 132}
!6 = !{i64 151}
!7 = !{i64 161}
!8 = !{i64 166}
!9 = !{i64 170}
!10 = !{i64 171}
!11 = !{i64 0}
!12 = !{i64 13}
!13 = !{i64 19}
!14 = !{i64 33}
!15 = !{i64 39}
!16 = !{i64 46}
!17 = !{i64 91}
!18 = !{i64 94}
!19 = !{i64 98}
!20 = !{i64 99}
!21 = !{i64 54}
!22 = !{i64 61}
!23 = !{i64 66}
!24 = !{i64 69}
!25 = !{i64 75}
!26 = !{i64 78}
!27 = !{i64 83}
!28 = !{i64 86}
!29 = !{i64 88}
