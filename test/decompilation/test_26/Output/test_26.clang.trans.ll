; ModuleID = 'Output/test_26.clang.trans.bc'
source_filename = "Output/test_26.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_110(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 144
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 144
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !2
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !2
  %RDX_val = alloca i64, !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %2 = load i64, i64* %RDX, !mcsema_real_eip !2
  store i64 %2, i64* %RDX_val, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
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
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -136
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %64 = and i64 %_trans_xor_, 16, !mcsema_real_eip !3
  %65 = icmp ne i64 %64, 0, !mcsema_real_eip !3
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %66 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !3
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_, 0
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_2, 128
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
  %72 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !7
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -24
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 %72, i64* %_allin_new_bt_21, !mcsema_real_eip !8
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !9
  %74 = bitcast i64* %73 to i32*
  store i32 5, i32* %74, !mcsema_real_eip !9
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %75 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !10
  %76 = add i64 %75, 4, !mcsema_real_eip !11
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !11
  %78 = bitcast i64* %77 to i32*
  store i32 5, i32* %78, !mcsema_real_eip !11
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %79 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !12
  %80 = add i64 %79, 8, !mcsema_real_eip !13
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !13
  %82 = bitcast i64* %81 to i32*
  store i32 5, i32* %82, !mcsema_real_eip !13
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %83 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !14
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -8
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %84 = bitcast i64* %_allin_new_bt_32 to i32*
  %85 = load i32, i32* %84, !mcsema_real_eip !15
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -48
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %86 = bitcast i64* %_allin_new_bt_35 to i32*
  store i32 %85, i32* %86, !mcsema_real_eip !16
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -16
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %87 = load i64, i64* %_allin_new_bt_38, !mcsema_real_eip !17
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -56
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  store i64 %87, i64* %_allin_new_bt_40, !mcsema_real_eip !18
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -56
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %88 = load i64, i64* %_allin_new_bt_43, !mcsema_real_eip !19
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -48
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %89 = bitcast i64* %_allin_new_bt_45 to i32*
  %90 = load i32, i32* %89, !mcsema_real_eip !20
  %91 = zext i32 %90 to i64, !mcsema_real_eip !20
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %92 = bitcast i64* %_allin_new_bt_48 to i32*
  %93 = load i32, i32* %92, !mcsema_real_eip !21
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_50 = ptrtoint i8* %_load_rsp_ptr_49 to i64
  store volatile i64 %_new_ptr2int_50, i64* %RDX_val
  %_new_gep_51 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 16
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %94 = bitcast i64* %_allin_new_bt_52 to i32*
  store i32 %93, i32* %94, !mcsema_real_eip !22
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -16
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %95 = load i64, i64* %_allin_new_bt_55, !mcsema_real_eip !23
  %96 = load i64, i64* %RDX_val, !mcsema_real_eip !24
  %97 = add i64 %96, 8, !mcsema_real_eip !24
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !24
  store i64 %95, i64* %98, !mcsema_real_eip !24
  %99 = load i64, i64* %RDX_val, !mcsema_real_eip !25
  %100 = add i64 %99, 32, !mcsema_real_eip !25
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !25
  store i64 %83, i64* %101, !mcsema_real_eip !25
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -16
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %102 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !26
  %103 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  %104 = add i64 %103, 24, !mcsema_real_eip !27
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !27
  store i64 %102, i64* %105, !mcsema_real_eip !27
  %106 = load i64, i64* %RDX_val, !mcsema_real_eip !28
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !28
  %108 = bitcast i64* %107 to i32*
  store i32 3, i32* %108, !mcsema_real_eip !28
  store i64 %102, i64* %RDX_val, !mcsema_real_eip !29
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -76
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %109 = bitcast i64* %_allin_new_bt_61 to i32*
  store i32 1, i32* %109, !mcsema_real_eip !30
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -76
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %110 = bitcast i64* %_allin_new_bt_64 to i32*
  %111 = load i32, i32* %110, !mcsema_real_eip !31
  %112 = zext i32 %111 to i64, !mcsema_real_eip !31
  %_load_rsp_ptr_65 = load i8*, i8** %_RSP_ptr_
  %_new_gep_66 = getelementptr i8, i8* %_load_rsp_ptr_65, i64 -8
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_67, !mcsema_real_eip !32
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_
  store i64 %83, i64* %RAX, !mcsema_real_eip !32
  store i64 %1, i64* %RBX, !mcsema_real_eip !32
  store i64 %83, i64* %RCX, !mcsema_real_eip !32
  %113 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  store i64 %113, i64* %RDX, !mcsema_real_eip !32
  store i64 %91, i64* %RSI, !mcsema_real_eip !32
  store i64 %88, i64* %RDI, !mcsema_real_eip !32
  %_new_ptr2int_69 = ptrtoint i8* %_new_gep_66 to i64
  store volatile i64 %_new_ptr2int_69, i64* %RSP
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_71 = ptrtoint i8* %_load_rbp_ptr_70 to i64
  store volatile i64 %_new_ptr2int_71, i64* %RBP
  store i64 %112, i64* %R8, !mcsema_real_eip !32
  store i64 2, i64* %R9, !mcsema_real_eip !32
  store i64 %3, i64* %R10, !mcsema_real_eip !32
  store i64 %4, i64* %R11, !mcsema_real_eip !32
  store i64 %5, i64* %R12, !mcsema_real_eip !32
  store i64 %6, i64* %R13, !mcsema_real_eip !32
  store i64 %7, i64* %R14, !mcsema_real_eip !32
  store i64 %8, i64* %R15, !mcsema_real_eip !32
  store i64 %9, i64* %RIP, !mcsema_real_eip !32
  store i1 %_trans_icmp_ne_7, i1* %CF, align 1, !mcsema_real_eip !32
  store i1 %68, i1* %PF, align 1, !mcsema_real_eip !32
  store i1 %65, i1* %AF, align 1, !mcsema_real_eip !32
  store i1 %_trans_icmp_eq_, i1* %ZF, align 1, !mcsema_real_eip !32
  store i1 %_trans_icmp_ne_, i1* %SF, align 1, !mcsema_real_eip !32
  store i1 %69, i1* %OF, align 1, !mcsema_real_eip !32
  store i1 %10, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  store i1 %14, i1* %FPU_B, align 1, !mcsema_real_eip !32
  store i1 %15, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  store i3 %16, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  store i1 %17, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  store i1 %18, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  store i1 %19, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  store i1 %20, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  store i1 %21, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  store i1 %22, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  store i1 %23, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  store i1 %24, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  store i1 %25, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  store i1 %26, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  store i1 %27, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  store i1 %28, i1* %FPU_X, align 1, !mcsema_real_eip !32
  store i2 %29, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  store i2 %30, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  store i1 %31, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  store i1 %32, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  store i1 %33, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  store i1 %34, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  store i1 %35, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  store i1 %36, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %114 = load i64, i64* %39, align 4
  store i64 %114, i64* %38, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  store i64 %42, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  store i16 %43, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  store i64 %44, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  store i11 %45, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !32
  store i128 %46, i128* %XMM0, align 1, !mcsema_real_eip !32
  store i128 %47, i128* %XMM1, align 1, !mcsema_real_eip !32
  store i128 %48, i128* %XMM2, align 1, !mcsema_real_eip !32
  store i128 %49, i128* %XMM3, align 1, !mcsema_real_eip !32
  store i128 %50, i128* %XMM4, align 1, !mcsema_real_eip !32
  store i128 %51, i128* %XMM5, align 1, !mcsema_real_eip !32
  store i128 %52, i128* %XMM6, align 1, !mcsema_real_eip !32
  store i128 %53, i128* %XMM7, align 1, !mcsema_real_eip !32
  store i128 %54, i128* %XMM8, align 1, !mcsema_real_eip !32
  store i128 %55, i128* %XMM9, align 1, !mcsema_real_eip !32
  store i128 %56, i128* %XMM10, align 1, !mcsema_real_eip !32
  store i128 %57, i128* %XMM11, align 1, !mcsema_real_eip !32
  store i128 %58, i128* %XMM12, align 1, !mcsema_real_eip !32
  store i128 %59, i128* %XMM13, align 1, !mcsema_real_eip !32
  store i128 %60, i128* %XMM14, align 1, !mcsema_real_eip !32
  store i128 %61, i128* %XMM15, align 1, !mcsema_real_eip !32
  store i64 %62, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  store i64 %63, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  %_load_rbp_ptr_106 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_106)
  %115 = load i64, i64* %RAX, !mcsema_real_eip !32
  %116 = load i64, i64* %RBX, !mcsema_real_eip !32
  %117 = load i64, i64* %RCX, !mcsema_real_eip !32
  %118 = load i64, i64* %RDX, !mcsema_real_eip !32
  store i64 %118, i64* %RDX_val, !mcsema_real_eip !32
  %119 = load i64, i64* %RSI, !mcsema_real_eip !32
  %120 = load i64, i64* %RDI, !mcsema_real_eip !32
  %121 = load i64, i64* %R8, !mcsema_real_eip !32
  %122 = load i64, i64* %R9, !mcsema_real_eip !32
  %123 = load i64, i64* %R10, !mcsema_real_eip !32
  %124 = load i64, i64* %R11, !mcsema_real_eip !32
  %125 = load i64, i64* %R12, !mcsema_real_eip !32
  %126 = load i64, i64* %R13, !mcsema_real_eip !32
  %127 = load i64, i64* %R14, !mcsema_real_eip !32
  %128 = load i64, i64* %R15, !mcsema_real_eip !32
  %129 = load i64, i64* %RIP, !mcsema_real_eip !32
  %130 = load i1, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %12, i32 128, i32 4, i1 false), !mcsema_real_eip !32
  %131 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !32
  %132 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  %133 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  %134 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  %135 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  %136 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  %137 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  %138 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  %139 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  %140 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  %141 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  %142 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  %143 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  %144 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  %145 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !32
  %146 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  %147 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  %148 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  %149 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  %150 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  %151 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  %152 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  %153 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %154 = load i64, i64* %38, align 4
  store i64 %154, i64* %39, align 4
  %155 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  %156 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !32
  %157 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  %158 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !32
  %159 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !32
  %160 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !32
  %161 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !32
  %162 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !32
  %163 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !32
  %164 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !32
  %165 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !32
  %166 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !32
  %167 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !32
  %168 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !32
  %169 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !32
  %170 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !32
  %171 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !32
  %172 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !32
  %173 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !32
  %174 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !32
  %175 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !32
  %176 = load i64, i64* %STACK_BASE, !mcsema_real_eip !32
  %177 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !32
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -64
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %178 = trunc i64 %118 to i32, !mcsema_real_eip !33
  %179 = bitcast i64* %_allin_new_bt_74 to i32*
  store i32 %178, i32* %179, !mcsema_real_eip !33
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -72
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  store i64 %115, i64* %_allin_new_bt_77, !mcsema_real_eip !34
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -72
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %180 = load i64, i64* %_allin_new_bt_80, !mcsema_real_eip !35
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -40
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  store i64 %180, i64* %_allin_new_bt_82, !mcsema_real_eip !36
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -64
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %181 = bitcast i64* %_allin_new_bt_85 to i32*
  %182 = load i32, i32* %181, !mcsema_real_eip !37
  %183 = zext i32 %182 to i64, !mcsema_real_eip !37
  store i64 %183, i64* %RDX_val, !mcsema_real_eip !37
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -32
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %184 = bitcast i64* %_allin_new_bt_88 to i32*
  store i32 %182, i32* %184, !mcsema_real_eip !38
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -40
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %185 = bitcast i64* %_allin_new_bt_91 to i32*
  %186 = load i32, i32* %185, !mcsema_real_eip !39
  %187 = zext i32 %186 to i64, !mcsema_real_eip !39
  store i64 %187, i64* %RDX_val, !mcsema_real_eip !39
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -36
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %188 = bitcast i64* %_allin_new_bt_94 to i32*
  %189 = load i32, i32* %188, !mcsema_real_eip !40
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %186, i32 %189)
  %190 = extractvalue { i32, i1 } %uadd, 0
  %191 = zext i32 %190 to i64, !mcsema_real_eip !40
  store i64 %191, i64* %RDX_val, !mcsema_real_eip !40
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -32
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %192 = bitcast i64* %_allin_new_bt_97 to i32*
  %193 = load i32, i32* %192, !mcsema_real_eip !41
  %194 = add i32 %190, %193
  %195 = zext i32 %194 to i64, !mcsema_real_eip !41
  store i64 %195, i64* %RDX_val, !mcsema_real_eip !41
  %_load_rsp_ptr_98 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_99 = ptrtoint i8* %_load_rsp_ptr_98 to i64
  %uadd212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_99, i64 128)
  %196 = extractvalue { i64, i1 } %uadd212, 0
  %197 = xor i64 %196, %_new_ptr2int_99, !mcsema_real_eip !42
  %198 = and i64 %197, 16, !mcsema_real_eip !42
  %199 = icmp ne i64 %198, 0, !mcsema_real_eip !42
  %200 = icmp slt i64 %196, 0
  %201 = icmp eq i64 %196, 0, !mcsema_real_eip !42
  %202 = xor i64 %_new_ptr2int_99, -9223372036854775808, !mcsema_real_eip !42
  %203 = and i64 %197, %202, !mcsema_real_eip !42
  %204 = icmp slt i64 %203, 0
  %205 = trunc i64 %196 to i8, !mcsema_real_eip !42
  %206 = tail call i8 @llvm.ctpop.i8(i8 %205), !mcsema_real_eip !42
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  %209 = extractvalue { i64, i1 } %uadd212, 1
  %_new_int2ptr_ = inttoptr i64 %196 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %210 = inttoptr i64 %196 to i64*, !mcsema_real_eip !43
  %211 = load i64, i64* %210, !mcsema_real_eip !43
  %_new_int2ptr_100 = inttoptr i64 %211 to i8*
  store volatile i8* %_new_int2ptr_100, i8** %_RBP_ptr_
  %212 = add i64 %196, 16, !mcsema_real_eip !44
  %_new_int2ptr_101 = inttoptr i64 %212 to i8*
  store volatile i8* %_new_int2ptr_101, i8** %_RSP_ptr_
  store i64 %195, i64* %RAX, !mcsema_real_eip !44
  store i64 %116, i64* %RBX, !mcsema_real_eip !44
  store i64 %117, i64* %RCX, !mcsema_real_eip !44
  %213 = load i64, i64* %RDX_val, !mcsema_real_eip !44
  store i64 %213, i64* %RDX, !mcsema_real_eip !44
  store i64 %119, i64* %RSI, !mcsema_real_eip !44
  store i64 %120, i64* %RDI, !mcsema_real_eip !44
  store volatile i64 %212, i64* %RSP
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_105 = ptrtoint i8* %_load_rbp_ptr_104 to i64
  store volatile i64 %_new_ptr2int_105, i64* %RBP
  store i64 %121, i64* %R8, !mcsema_real_eip !44
  store i64 %122, i64* %R9, !mcsema_real_eip !44
  store i64 %123, i64* %R10, !mcsema_real_eip !44
  store i64 %124, i64* %R11, !mcsema_real_eip !44
  store i64 %125, i64* %R12, !mcsema_real_eip !44
  store i64 %126, i64* %R13, !mcsema_real_eip !44
  store i64 %127, i64* %R14, !mcsema_real_eip !44
  store i64 %128, i64* %R15, !mcsema_real_eip !44
  store i64 %129, i64* %RIP, !mcsema_real_eip !44
  store i1 %209, i1* %CF, align 1, !mcsema_real_eip !44
  store i1 %208, i1* %PF, align 1, !mcsema_real_eip !44
  store i1 %199, i1* %AF, align 1, !mcsema_real_eip !44
  store i1 %201, i1* %ZF, align 1, !mcsema_real_eip !44
  store i1 %200, i1* %SF, align 1, !mcsema_real_eip !44
  store i1 %204, i1* %OF, align 1, !mcsema_real_eip !44
  store i1 %130, i1* %DF, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 128, i32 8, i1 false), !mcsema_real_eip !44
  store i1 %131, i1* %FPU_B, align 1, !mcsema_real_eip !44
  store i1 %132, i1* %FPU_C3, align 1, !mcsema_real_eip !44
  store i3 %133, i3* %FPU_TOP, align 1, !mcsema_real_eip !44
  store i1 %134, i1* %FPU_C2, align 1, !mcsema_real_eip !44
  store i1 %135, i1* %FPU_C1, align 1, !mcsema_real_eip !44
  store i1 %136, i1* %FPU_C0, align 1, !mcsema_real_eip !44
  store i1 %137, i1* %FPU_ES, align 1, !mcsema_real_eip !44
  store i1 %138, i1* %FPU_SF, align 1, !mcsema_real_eip !44
  store i1 %139, i1* %FPU_PE, align 1, !mcsema_real_eip !44
  store i1 %140, i1* %FPU_UE, align 1, !mcsema_real_eip !44
  store i1 %141, i1* %FPU_OE, align 1, !mcsema_real_eip !44
  store i1 %142, i1* %FPU_ZE, align 1, !mcsema_real_eip !44
  store i1 %143, i1* %FPU_DE, align 1, !mcsema_real_eip !44
  store i1 %144, i1* %FPU_IE, align 1, !mcsema_real_eip !44
  store i1 %145, i1* %FPU_X, align 1, !mcsema_real_eip !44
  store i2 %146, i2* %FPU_RC, align 1, !mcsema_real_eip !44
  store i2 %147, i2* %FPU_PC, align 1, !mcsema_real_eip !44
  store i1 %148, i1* %FPU_PM, align 1, !mcsema_real_eip !44
  store i1 %149, i1* %FPU_UM, align 1, !mcsema_real_eip !44
  store i1 %150, i1* %FPU_OM, align 1, !mcsema_real_eip !44
  store i1 %151, i1* %FPU_ZM, align 1, !mcsema_real_eip !44
  store i1 %152, i1* %FPU_DM, align 1, !mcsema_real_eip !44
  store i1 %153, i1* %FPU_IM, align 1, !mcsema_real_eip !44
  %214 = load i64, i64* %39, align 4
  store i64 %214, i64* %38, align 4
  store i16 %155, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !44
  store i64 %156, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !44
  store i16 %157, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !44
  store i64 %158, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !44
  store i11 %159, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !44
  store i128 %160, i128* %XMM0, align 1, !mcsema_real_eip !44
  store i128 %161, i128* %XMM1, align 1, !mcsema_real_eip !44
  store i128 %162, i128* %XMM2, align 1, !mcsema_real_eip !44
  store i128 %163, i128* %XMM3, align 1, !mcsema_real_eip !44
  store i128 %164, i128* %XMM4, align 1, !mcsema_real_eip !44
  store i128 %165, i128* %XMM5, align 1, !mcsema_real_eip !44
  store i128 %166, i128* %XMM6, align 1, !mcsema_real_eip !44
  store i128 %167, i128* %XMM7, align 1, !mcsema_real_eip !44
  store i128 %168, i128* %XMM8, align 1, !mcsema_real_eip !44
  store i128 %169, i128* %XMM9, align 1, !mcsema_real_eip !44
  store i128 %170, i128* %XMM10, align 1, !mcsema_real_eip !44
  store i128 %171, i128* %XMM11, align 1, !mcsema_real_eip !44
  store i128 %172, i128* %XMM12, align 1, !mcsema_real_eip !44
  store i128 %173, i128* %XMM13, align 1, !mcsema_real_eip !44
  store i128 %174, i128* %XMM14, align 1, !mcsema_real_eip !44
  store i128 %175, i128* %XMM15, align 1, !mcsema_real_eip !44
  store i64 %176, i64* %STACK_BASE, align 1, !mcsema_real_eip !44
  store i64 %177, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
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
  store i64 %1, i64* %72, !mcsema_real_eip !46
  %73 = add i64 %69, 48, !mcsema_real_eip !47
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !47
  %75 = load i64, i64* %74, !mcsema_real_eip !47
  %76 = add i64 %69, 40, !mcsema_real_eip !48
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !48
  %78 = load i64, i64* %77, !mcsema_real_eip !48
  %79 = add i64 %69, 24, !mcsema_real_eip !49
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !49
  %81 = add i64 %69, 16, !mcsema_real_eip !50
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !50
  %83 = bitcast i64* %82 to i32*
  %84 = load i32, i32* %83, !mcsema_real_eip !50
  %85 = zext i32 %84 to i64, !mcsema_real_eip !50
  %86 = add i64 %69, -56, !mcsema_real_eip !51
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !51
  store i64 %5, i64* %87, !mcsema_real_eip !51
  %88 = add i64 %69, -48, !mcsema_real_eip !52
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !52
  %90 = trunc i64 %4 to i32, !mcsema_real_eip !52
  %91 = bitcast i64* %89 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !52
  %92 = add i64 %69, -32, !mcsema_real_eip !53
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !53
  %94 = bitcast i64* %93 to i32*
  store i32 %90, i32* %94, !mcsema_real_eip !53
  %95 = load i64, i64* %87, !mcsema_real_eip !54
  %96 = add i64 %69, -40, !mcsema_real_eip !55
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !55
  store i64 %95, i64* %97, !mcsema_real_eip !55
  %98 = add i64 %69, -64, !mcsema_real_eip !56
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !56
  store i64 %3, i64* %99, !mcsema_real_eip !56
  %100 = add i64 %69, -72, !mcsema_real_eip !57
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !57
  store i64 %2, i64* %101, !mcsema_real_eip !57
  %102 = add i64 %69, -76, !mcsema_real_eip !58
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !58
  %104 = trunc i64 %8 to i32, !mcsema_real_eip !58
  %105 = bitcast i64* %103 to i32*
  store i32 %104, i32* %105, !mcsema_real_eip !58
  %106 = add i64 %69, -80, !mcsema_real_eip !59
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !59
  %108 = trunc i64 %9 to i32, !mcsema_real_eip !59
  %109 = bitcast i64* %107 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !59
  %110 = add i64 %69, -84, !mcsema_real_eip !60
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !60
  %112 = bitcast i64* %111 to i32*
  store i32 %84, i32* %112, !mcsema_real_eip !60
  %113 = add i64 %69, -96, !mcsema_real_eip !61
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !61
  store i64 %78, i64* %114, !mcsema_real_eip !61
  %115 = add i64 %69, -104, !mcsema_real_eip !62
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !62
  store i64 %75, i64* %116, !mcsema_real_eip !62
  %117 = bitcast i64* %97 to i32*
  %118 = load i32, i32* %117, !mcsema_real_eip !63
  %119 = zext i32 %118 to i64, !mcsema_real_eip !63
  %120 = load i64, i64* %99, !mcsema_real_eip !64
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !65
  %122 = bitcast i64* %121 to i32*
  %123 = load i32, i32* %122, !mcsema_real_eip !65
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %123, i32 %118)
  %124 = extractvalue { i32, i1 } %uadd, 0
  %125 = zext i32 %124 to i64, !mcsema_real_eip !66
  %126 = load i64, i64* %101, !mcsema_real_eip !67
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !68
  %128 = bitcast i64* %127 to i32*
  %129 = load i32, i32* %128, !mcsema_real_eip !68
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %129, i32 %124)
  %130 = extractvalue { i32, i1 } %uadd71, 0
  %131 = zext i32 %130 to i64, !mcsema_real_eip !69
  %132 = bitcast i64* %80 to i32*
  %133 = load i32, i32* %132, !mcsema_real_eip !70
  %134 = zext i32 %133 to i64, !mcsema_real_eip !70
  %135 = load i64, i64* %114, !mcsema_real_eip !71
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !72
  %137 = bitcast i64* %136 to i32*
  %138 = load i32, i32* %137, !mcsema_real_eip !72
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %138, i32 %133)
  %139 = extractvalue { i32, i1 } %uadd72, 0
  %140 = zext i32 %139 to i64, !mcsema_real_eip !73
  %141 = inttoptr i64 %75 to i64*, !mcsema_real_eip !74
  %142 = bitcast i64* %141 to i32*
  %143 = load i32, i32* %142, !mcsema_real_eip !74
  %144 = add i32 %143, %139
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %144, i32 %130)
  %145 = extractvalue { i32, i1 } %uadd74, 0
  %146 = add i64 %69, -120, !mcsema_real_eip !75
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !75
  %148 = bitcast i64* %147 to i32*
  store i32 %145, i32* %148, !mcsema_real_eip !75
  %149 = add i64 %69, -36, !mcsema_real_eip !76
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !76
  %151 = bitcast i64* %150 to i32*
  %152 = load i32, i32* %151, !mcsema_real_eip !76
  %153 = zext i32 %152 to i64, !mcsema_real_eip !76
  %154 = load i64, i64* %99, !mcsema_real_eip !77
  %155 = add i64 %154, 4, !mcsema_real_eip !78
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !78
  %157 = bitcast i64* %156 to i32*
  %158 = load i32, i32* %157, !mcsema_real_eip !78
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %158, i32 %152)
  %159 = extractvalue { i32, i1 } %uadd75, 0
  %160 = zext i32 %159 to i64, !mcsema_real_eip !79
  %161 = load i64, i64* %101, !mcsema_real_eip !80
  %162 = add i64 %161, 4, !mcsema_real_eip !81
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !81
  %164 = bitcast i64* %163 to i32*
  %165 = load i32, i32* %164, !mcsema_real_eip !81
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %165, i32 %159)
  %166 = extractvalue { i32, i1 } %uadd76, 0
  %167 = zext i32 %166 to i64, !mcsema_real_eip !82
  %168 = add i64 %79, 4, !mcsema_real_eip !83
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !83
  %170 = bitcast i64* %169 to i32*
  %171 = load i32, i32* %170, !mcsema_real_eip !83
  %172 = zext i32 %171 to i64, !mcsema_real_eip !83
  %173 = load i64, i64* %114, !mcsema_real_eip !84
  %174 = add i64 %173, 4, !mcsema_real_eip !85
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !85
  %176 = bitcast i64* %175 to i32*
  %177 = load i32, i32* %176, !mcsema_real_eip !85
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %177, i32 %171)
  %178 = extractvalue { i32, i1 } %uadd77, 0
  %179 = zext i32 %178 to i64, !mcsema_real_eip !86
  %180 = load i64, i64* %116, !mcsema_real_eip !87
  %181 = add i64 %180, 4, !mcsema_real_eip !88
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !88
  %183 = bitcast i64* %182 to i32*
  %184 = load i32, i32* %183, !mcsema_real_eip !88
  %185 = add i32 %184, %178
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %185, i32 %166)
  %186 = extractvalue { i32, i1 } %uadd79, 0
  %187 = add i64 %69, -116, !mcsema_real_eip !89
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !89
  %189 = bitcast i64* %188 to i32*
  store i32 %186, i32* %189, !mcsema_real_eip !89
  %190 = load i32, i32* %94, !mcsema_real_eip !90
  %191 = zext i32 %190 to i64, !mcsema_real_eip !90
  %192 = load i64, i64* %99, !mcsema_real_eip !91
  %193 = add i64 %192, 8, !mcsema_real_eip !92
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !92
  %195 = bitcast i64* %194 to i32*
  %196 = load i32, i32* %195, !mcsema_real_eip !92
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %196, i32 %190)
  %197 = extractvalue { i32, i1 } %uadd80, 0
  %198 = zext i32 %197 to i64, !mcsema_real_eip !93
  %199 = load i64, i64* %101, !mcsema_real_eip !94
  %200 = add i64 %199, 8, !mcsema_real_eip !95
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !95
  %202 = bitcast i64* %201 to i32*
  %203 = load i32, i32* %202, !mcsema_real_eip !95
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %203, i32 %197)
  %204 = extractvalue { i32, i1 } %uadd81, 0
  %205 = zext i32 %204 to i64, !mcsema_real_eip !96
  %206 = add i64 %79, 8, !mcsema_real_eip !97
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !97
  %208 = bitcast i64* %207 to i32*
  %209 = load i32, i32* %208, !mcsema_real_eip !97
  %210 = zext i32 %209 to i64, !mcsema_real_eip !97
  %211 = load i64, i64* %114, !mcsema_real_eip !98
  %212 = add i64 %211, 8, !mcsema_real_eip !99
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !99
  %214 = bitcast i64* %213 to i32*
  %215 = load i32, i32* %214, !mcsema_real_eip !99
  %uadd82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %215, i32 %209)
  %216 = extractvalue { i32, i1 } %uadd82, 0
  %217 = zext i32 %216 to i64, !mcsema_real_eip !100
  %218 = load i64, i64* %116, !mcsema_real_eip !101
  %219 = add i64 %218, 8, !mcsema_real_eip !102
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !102
  %221 = bitcast i64* %220 to i32*
  %222 = load i32, i32* %221, !mcsema_real_eip !102
  %223 = zext i32 %222 to i64, !mcsema_real_eip !102
  %224 = add i32 %222, %216
  %225 = zext i32 %224 to i64, !mcsema_real_eip !103
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %204)
  %226 = extractvalue { i32, i1 } %uadd84, 0
  %227 = xor i32 %226, %204, !mcsema_real_eip !104
  %228 = xor i32 %227, %224, !mcsema_real_eip !104
  %229 = and i32 %228, 16, !mcsema_real_eip !104
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !104
  %231 = icmp slt i32 %226, 0
  %232 = icmp eq i32 %226, 0, !mcsema_real_eip !104
  %233 = xor i32 %224, -2147483648, !mcsema_real_eip !104
  %234 = xor i32 %233, %204, !mcsema_real_eip !104
  %235 = and i32 %227, %234, !mcsema_real_eip !104
  %236 = icmp slt i32 %235, 0
  %237 = trunc i32 %226 to i8, !mcsema_real_eip !104
  %238 = tail call i8 @llvm.ctpop.i8(i8 %237), !mcsema_real_eip !104
  %239 = and i8 %238, 1
  %240 = icmp eq i8 %239, 0
  %241 = extractvalue { i32, i1 } %uadd84, 1
  %242 = zext i32 %226 to i64, !mcsema_real_eip !104
  %243 = add i64 %69, -112, !mcsema_real_eip !105
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !105
  %245 = bitcast i64* %244 to i32*
  store i32 %226, i32* %245, !mcsema_real_eip !105
  %246 = add i64 %69, -16, !mcsema_real_eip !106
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !106
  %248 = bitcast i64* %247 to i32*
  store i32 %226, i32* %248, !mcsema_real_eip !106
  %249 = load i64, i64* %147, !mcsema_real_eip !107
  %250 = add i64 %69, -24, !mcsema_real_eip !108
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !108
  store i64 %249, i64* %251, !mcsema_real_eip !108
  %252 = load i32, i32* %248, !mcsema_real_eip !109
  %253 = zext i32 %252 to i64, !mcsema_real_eip !109
  %254 = add i64 %69, -128, !mcsema_real_eip !110
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !110
  %256 = bitcast i64* %255 to i32*
  store i32 %252, i32* %256, !mcsema_real_eip !110
  %257 = load i64, i64* %251, !mcsema_real_eip !111
  %258 = add i64 %69, -136, !mcsema_real_eip !112
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !112
  store i64 %257, i64* %259, !mcsema_real_eip !112
  %260 = load i32, i32* %256, !mcsema_real_eip !113
  %261 = zext i32 %260 to i64, !mcsema_real_eip !113
  %262 = load i64, i64* %72, !mcsema_real_eip !114
  %263 = add i64 %71, 8, !mcsema_real_eip !114
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !115
  %265 = load i64, i64* %264, !mcsema_real_eip !115
  %266 = add i64 %71, 24, !mcsema_real_eip !116
  store i64 %257, i64* %RAX, !mcsema_real_eip !116
  store i64 %262, i64* %RBX, !mcsema_real_eip !116
  store i64 %135, i64* %RCX, !mcsema_real_eip !116
  store i64 %261, i64* %RDX, !mcsema_real_eip !116
  store i64 %253, i64* %RSI, !mcsema_real_eip !116
  store i64 %95, i64* %RDI, !mcsema_real_eip !116
  store i64 %266, i64* %RSP, !mcsema_real_eip !116
  store i64 %265, i64* %RBP, !mcsema_real_eip !116
  store i64 %225, i64* %R8, !mcsema_real_eip !116
  store i64 %223, i64* %R9, !mcsema_real_eip !116
  store i64 %78, i64* %R10, !mcsema_real_eip !116
  store i64 %79, i64* %R11, !mcsema_real_eip !116
  store i64 %10, i64* %R12, !mcsema_real_eip !116
  store i64 %11, i64* %R13, !mcsema_real_eip !116
  store i64 %12, i64* %R14, !mcsema_real_eip !116
  store i64 %13, i64* %R15, !mcsema_real_eip !116
  store i64 %14, i64* %RIP, !mcsema_real_eip !116
  store i1 %241, i1* %CF, align 1, !mcsema_real_eip !116
  store i1 %240, i1* %PF, align 1, !mcsema_real_eip !116
  store i1 %230, i1* %AF, align 1, !mcsema_real_eip !116
  store i1 %232, i1* %ZF, align 1, !mcsema_real_eip !116
  store i1 %231, i1* %SF, align 1, !mcsema_real_eip !116
  store i1 %236, i1* %OF, align 1, !mcsema_real_eip !116
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !116
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !116
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !116
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !116
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !116
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !116
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !116
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !116
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !116
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !116
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !116
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !116
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !116
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !116
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !116
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !116
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !116
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !116
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !116
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !116
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !116
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !116
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !116
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !116
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !116
  %267 = load i64, i64* %44, align 4
  store i64 %267, i64* %43, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !116
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !116
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !116
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !116
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !116
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !116
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !116
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !116
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !116
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !116
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !116
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !116
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !116
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !116
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !116
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !116
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !116
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !116
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !116
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !116
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !116
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !116
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !116
  ret void, !mcsema_real_eip !116
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_110(%struct.regs* %0)
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
  %_local_stack_start_ptr_ = alloca i8, i64 144
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 144
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
  store i64 %1, i64* %_allin_new_bt_2, !mcsema_real_eip !46
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 48
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %_ptr_to_int_132 = ptrtoint i64* %_allin_new_bt_5 to i64
  %_offset_above_rbp_135 = sub i64 %_ptr_to_int_132, %_local_end_to_int_
  %_pot_address_in_parent_stack_136 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_135
  %_cond1_137 = icmp ugt i8* %_new_gep_4, %_local_stack_end_ptr_
  %_cond2_1_138 = icmp ugt i8* %_new_gep_4, %_parent_stack_end_ptr_
  %_cond2_2_139 = icmp ult i8* %_new_gep_4, %_parent_stack_start_ptr_
  %_cond2_140 = or i1 %_cond2_1_138, %_cond2_2_139
  %_cond4_141 = icmp ule i8* %_pot_address_in_parent_stack_136, %_parent_stack_end_ptr_
  %_cond1_n_cond2_142 = and i1 %_cond1_137, %_cond2_140
  %_cond1_n_cond2_cond3_143 = and i1 %_cond1_n_cond2_142, %_cond4_141
  br i1 %_cond1_n_cond2_cond3_143, label %69, label %70

; <label>:69:                                     ; preds = %44
  %_address_in_parent_stack_bt_145 = bitcast i8* %_pot_address_in_parent_stack_136 to i64*
  br label %70

; <label>:70:                                     ; preds = %44, %69
  %71 = phi i64* [ %_allin_new_bt_5, %44 ], [ %_address_in_parent_stack_bt_145, %69 ]
  %_new_load_146 = load i64, i64* %71
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 40
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %_ptr_to_int_147 = ptrtoint i64* %_allin_new_bt_7 to i64
  %_offset_above_rbp_150 = sub i64 %_ptr_to_int_147, %_local_end_to_int_
  %_pot_address_in_parent_stack_151 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_150
  %_cond1_152 = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_153 = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_154 = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_155 = or i1 %_cond2_1_153, %_cond2_2_154
  %_cond4_156 = icmp ule i8* %_pot_address_in_parent_stack_151, %_parent_stack_end_ptr_
  %_cond1_n_cond2_157 = and i1 %_cond1_152, %_cond2_155
  %_cond1_n_cond2_cond3_158 = and i1 %_cond1_n_cond2_157, %_cond4_156
  br i1 %_cond1_n_cond2_cond3_158, label %72, label %73

; <label>:72:                                     ; preds = %70
  %_address_in_parent_stack_bt_160 = bitcast i8* %_pot_address_in_parent_stack_151 to i64*
  br label %73

; <label>:73:                                     ; preds = %70, %72
  %74 = phi i64* [ %_allin_new_bt_7, %70 ], [ %_address_in_parent_stack_bt_160, %72 ]
  %_new_load_161 = load i64, i64* %74
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 24
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %75 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !49
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 16
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %76 = bitcast i64* %_allin_new_bt_12 to i32*
  %_ptr_to_int_162 = ptrtoint i32* %76 to i64
  %_ptr_bt_164 = bitcast i32* %76 to i8*
  %_offset_above_rbp_165 = sub i64 %_ptr_to_int_162, %_local_end_to_int_
  %_pot_address_in_parent_stack_166 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_165
  %_cond1_167 = icmp ugt i8* %_ptr_bt_164, %_local_stack_end_ptr_
  %_cond2_1_168 = icmp ugt i8* %_ptr_bt_164, %_parent_stack_end_ptr_
  %_cond2_2_169 = icmp ult i8* %_ptr_bt_164, %_parent_stack_start_ptr_
  %_cond2_170 = or i1 %_cond2_1_168, %_cond2_2_169
  %_cond4_171 = icmp ule i8* %_pot_address_in_parent_stack_166, %_parent_stack_end_ptr_
  %_cond1_n_cond2_172 = and i1 %_cond1_167, %_cond2_170
  %_cond1_n_cond2_cond3_173 = and i1 %_cond1_n_cond2_172, %_cond4_171
  br i1 %_cond1_n_cond2_cond3_173, label %77, label %78

; <label>:77:                                     ; preds = %73
  %_address_in_parent_stack_bt_175 = bitcast i8* %_pot_address_in_parent_stack_166 to i32*
  br label %78

; <label>:78:                                     ; preds = %73, %77
  %79 = phi i32* [ %76, %73 ], [ %_address_in_parent_stack_bt_175, %77 ]
  %_new_load_176 = load i32, i32* %79
  %80 = zext i32 %_new_load_176 to i64, !mcsema_real_eip !50
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -56
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  store i64 %5, i64* %_allin_new_bt_15, !mcsema_real_eip !51
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -48
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %81 = trunc i64 %4 to i32, !mcsema_real_eip !52
  %82 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 %81, i32* %82, !mcsema_real_eip !52
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %83 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 %81, i32* %83, !mcsema_real_eip !53
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -56
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %_ptr_to_int_177 = ptrtoint i64* %_allin_new_bt_24 to i64
  %_offset_above_rbp_180 = sub i64 %_ptr_to_int_177, %_local_end_to_int_
  %_pot_address_in_parent_stack_181 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_180
  %_cond1_182 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_183 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_184 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_185 = or i1 %_cond2_1_183, %_cond2_2_184
  %_cond4_186 = icmp ule i8* %_pot_address_in_parent_stack_181, %_parent_stack_end_ptr_
  %_cond1_n_cond2_187 = and i1 %_cond1_182, %_cond2_185
  %_cond1_n_cond2_cond3_188 = and i1 %_cond1_n_cond2_187, %_cond4_186
  br i1 %_cond1_n_cond2_cond3_188, label %84, label %85

; <label>:84:                                     ; preds = %78
  %_address_in_parent_stack_bt_190 = bitcast i8* %_pot_address_in_parent_stack_181 to i64*
  br label %85

; <label>:85:                                     ; preds = %78, %84
  %86 = phi i64* [ %_allin_new_bt_24, %78 ], [ %_address_in_parent_stack_bt_190, %84 ]
  %_new_load_191 = load i64, i64* %86
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -40
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  store i64 %_new_load_191, i64* %_allin_new_bt_26, !mcsema_real_eip !55
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_27, i64 -64
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  store i64 %3, i64* %_allin_new_bt_29, !mcsema_real_eip !56
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -72
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  store i64 %2, i64* %_allin_new_bt_32, !mcsema_real_eip !57
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -76
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %87 = trunc i64 %6 to i32, !mcsema_real_eip !58
  %88 = bitcast i64* %_allin_new_bt_35 to i32*
  store i32 %87, i32* %88, !mcsema_real_eip !58
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -80
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %89 = trunc i64 %7 to i32, !mcsema_real_eip !59
  %90 = bitcast i64* %_allin_new_bt_38 to i32*
  store i32 %89, i32* %90, !mcsema_real_eip !59
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -84
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %91 = bitcast i64* %_allin_new_bt_41 to i32*
  store i32 %_new_load_176, i32* %91, !mcsema_real_eip !60
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -96
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  store i64 %_new_load_161, i64* %_allin_new_bt_44, !mcsema_real_eip !61
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -104
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  store i64 %_new_load_146, i64* %_allin_new_bt_47, !mcsema_real_eip !62
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -40
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %92 = bitcast i64* %_allin_new_bt_50 to i32*
  %_ptr_to_int_192 = ptrtoint i32* %92 to i64
  %_ptr_bt_194 = bitcast i32* %92 to i8*
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_ptr_bt_194, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_ptr_bt_194, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_ptr_bt_194, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  br i1 %_cond1_n_cond2_cond3_203, label %93, label %94

; <label>:93:                                     ; preds = %85
  %_address_in_parent_stack_bt_205 = bitcast i8* %_pot_address_in_parent_stack_196 to i32*
  br label %94

; <label>:94:                                     ; preds = %85, %93
  %95 = phi i32* [ %92, %85 ], [ %_address_in_parent_stack_bt_205, %93 ]
  %_new_load_206 = load i32, i32* %95
  %96 = zext i32 %_new_load_206 to i64, !mcsema_real_eip !63
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -64
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %_ptr_to_int_207 = ptrtoint i64* %_allin_new_bt_53 to i64
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_207, %_local_end_to_int_
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_52, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_52, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_52, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  br i1 %_cond1_n_cond2_cond3_218, label %97, label %98

; <label>:97:                                     ; preds = %94
  %_address_in_parent_stack_bt_220 = bitcast i8* %_pot_address_in_parent_stack_211 to i64*
  br label %98

; <label>:98:                                     ; preds = %94, %97
  %99 = phi i64* [ %_allin_new_bt_53, %94 ], [ %_address_in_parent_stack_bt_220, %97 ]
  %_new_load_221 = load i64, i64* %99
  %100 = inttoptr i64 %_new_load_221 to i64*, !mcsema_real_eip !65
  %101 = bitcast i64* %100 to i32*
  %_ptr_to_int_222 = ptrtoint i32* %101 to i64
  %_ptr_bt_224 = bitcast i32* %101 to i8*
  %_offset_above_rbp_225 = sub i64 %_ptr_to_int_222, %_local_end_to_int_
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_ptr_bt_224, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_ptr_bt_224, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_ptr_bt_224, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  br i1 %_cond1_n_cond2_cond3_233, label %102, label %103

; <label>:102:                                    ; preds = %98
  %_address_in_parent_stack_bt_235 = bitcast i8* %_pot_address_in_parent_stack_226 to i32*
  br label %103

; <label>:103:                                    ; preds = %98, %102
  %104 = phi i32* [ %101, %98 ], [ %_address_in_parent_stack_bt_235, %102 ]
  %_new_load_236 = load i32, i32* %104
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_236, i32 %_new_load_206)
  %105 = extractvalue { i32, i1 } %uadd, 0
  %106 = zext i32 %105 to i64, !mcsema_real_eip !66
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -72
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %_ptr_to_int_237 = ptrtoint i64* %_allin_new_bt_56 to i64
  %_offset_above_rbp_240 = sub i64 %_ptr_to_int_237, %_local_end_to_int_
  %_pot_address_in_parent_stack_241 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_240
  %_cond1_242 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_243 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_244 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_245 = or i1 %_cond2_1_243, %_cond2_2_244
  %_cond4_246 = icmp ule i8* %_pot_address_in_parent_stack_241, %_parent_stack_end_ptr_
  %_cond1_n_cond2_247 = and i1 %_cond1_242, %_cond2_245
  %_cond1_n_cond2_cond3_248 = and i1 %_cond1_n_cond2_247, %_cond4_246
  br i1 %_cond1_n_cond2_cond3_248, label %107, label %108

; <label>:107:                                    ; preds = %103
  %_address_in_parent_stack_bt_250 = bitcast i8* %_pot_address_in_parent_stack_241 to i64*
  br label %108

; <label>:108:                                    ; preds = %103, %107
  %109 = phi i64* [ %_allin_new_bt_56, %103 ], [ %_address_in_parent_stack_bt_250, %107 ]
  %_new_load_251 = load i64, i64* %109
  %110 = inttoptr i64 %_new_load_251 to i64*, !mcsema_real_eip !68
  %111 = bitcast i64* %110 to i32*
  %_ptr_to_int_252 = ptrtoint i32* %111 to i64
  %_ptr_bt_254 = bitcast i32* %111 to i8*
  %_offset_above_rbp_255 = sub i64 %_ptr_to_int_252, %_local_end_to_int_
  %_pot_address_in_parent_stack_256 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_255
  %_cond1_257 = icmp ugt i8* %_ptr_bt_254, %_local_stack_end_ptr_
  %_cond2_1_258 = icmp ugt i8* %_ptr_bt_254, %_parent_stack_end_ptr_
  %_cond2_2_259 = icmp ult i8* %_ptr_bt_254, %_parent_stack_start_ptr_
  %_cond2_260 = or i1 %_cond2_1_258, %_cond2_2_259
  %_cond4_261 = icmp ule i8* %_pot_address_in_parent_stack_256, %_parent_stack_end_ptr_
  %_cond1_n_cond2_262 = and i1 %_cond1_257, %_cond2_260
  %_cond1_n_cond2_cond3_263 = and i1 %_cond1_n_cond2_262, %_cond4_261
  br i1 %_cond1_n_cond2_cond3_263, label %112, label %113

; <label>:112:                                    ; preds = %108
  %_address_in_parent_stack_bt_265 = bitcast i8* %_pot_address_in_parent_stack_256 to i32*
  br label %113

; <label>:113:                                    ; preds = %108, %112
  %114 = phi i32* [ %111, %108 ], [ %_address_in_parent_stack_bt_265, %112 ]
  %_new_load_266 = load i32, i32* %114
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_266, i32 %105)
  %115 = extractvalue { i32, i1 } %uadd71, 0
  %116 = zext i32 %115 to i64, !mcsema_real_eip !69
  %117 = bitcast i64* %_allin_new_bt_10 to i32*
  %_ptr_to_int_267 = ptrtoint i32* %117 to i64
  %_ptr_bt_269 = bitcast i32* %117 to i8*
  %_offset_above_rbp_270 = sub i64 %_ptr_to_int_267, %_local_end_to_int_
  %_pot_address_in_parent_stack_271 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_270
  %_cond1_272 = icmp ugt i8* %_ptr_bt_269, %_local_stack_end_ptr_
  %_cond2_1_273 = icmp ugt i8* %_ptr_bt_269, %_parent_stack_end_ptr_
  %_cond2_2_274 = icmp ult i8* %_ptr_bt_269, %_parent_stack_start_ptr_
  %_cond2_275 = or i1 %_cond2_1_273, %_cond2_2_274
  %_cond4_276 = icmp ule i8* %_pot_address_in_parent_stack_271, %_parent_stack_end_ptr_
  %_cond1_n_cond2_277 = and i1 %_cond1_272, %_cond2_275
  %_cond1_n_cond2_cond3_278 = and i1 %_cond1_n_cond2_277, %_cond4_276
  br i1 %_cond1_n_cond2_cond3_278, label %118, label %119

; <label>:118:                                    ; preds = %113
  %_address_in_parent_stack_bt_280 = bitcast i8* %_pot_address_in_parent_stack_271 to i32*
  br label %119

; <label>:119:                                    ; preds = %113, %118
  %120 = phi i32* [ %117, %113 ], [ %_address_in_parent_stack_bt_280, %118 ]
  %_new_load_281 = load i32, i32* %120
  %121 = zext i32 %_new_load_281 to i64, !mcsema_real_eip !70
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -96
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %_ptr_to_int_282 = ptrtoint i64* %_allin_new_bt_59 to i64
  %_offset_above_rbp_285 = sub i64 %_ptr_to_int_282, %_local_end_to_int_
  %_pot_address_in_parent_stack_286 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_285
  %_cond1_287 = icmp ugt i8* %_new_gep_58, %_local_stack_end_ptr_
  %_cond2_1_288 = icmp ugt i8* %_new_gep_58, %_parent_stack_end_ptr_
  %_cond2_2_289 = icmp ult i8* %_new_gep_58, %_parent_stack_start_ptr_
  %_cond2_290 = or i1 %_cond2_1_288, %_cond2_2_289
  %_cond4_291 = icmp ule i8* %_pot_address_in_parent_stack_286, %_parent_stack_end_ptr_
  %_cond1_n_cond2_292 = and i1 %_cond1_287, %_cond2_290
  %_cond1_n_cond2_cond3_293 = and i1 %_cond1_n_cond2_292, %_cond4_291
  br i1 %_cond1_n_cond2_cond3_293, label %122, label %123

; <label>:122:                                    ; preds = %119
  %_address_in_parent_stack_bt_295 = bitcast i8* %_pot_address_in_parent_stack_286 to i64*
  br label %123

; <label>:123:                                    ; preds = %119, %122
  %124 = phi i64* [ %_allin_new_bt_59, %119 ], [ %_address_in_parent_stack_bt_295, %122 ]
  %_new_load_296 = load i64, i64* %124
  %125 = inttoptr i64 %_new_load_296 to i64*, !mcsema_real_eip !72
  %126 = bitcast i64* %125 to i32*
  %_ptr_to_int_297 = ptrtoint i32* %126 to i64
  %_ptr_bt_299 = bitcast i32* %126 to i8*
  %_offset_above_rbp_300 = sub i64 %_ptr_to_int_297, %_local_end_to_int_
  %_pot_address_in_parent_stack_301 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_300
  %_cond1_302 = icmp ugt i8* %_ptr_bt_299, %_local_stack_end_ptr_
  %_cond2_1_303 = icmp ugt i8* %_ptr_bt_299, %_parent_stack_end_ptr_
  %_cond2_2_304 = icmp ult i8* %_ptr_bt_299, %_parent_stack_start_ptr_
  %_cond2_305 = or i1 %_cond2_1_303, %_cond2_2_304
  %_cond4_306 = icmp ule i8* %_pot_address_in_parent_stack_301, %_parent_stack_end_ptr_
  %_cond1_n_cond2_307 = and i1 %_cond1_302, %_cond2_305
  %_cond1_n_cond2_cond3_308 = and i1 %_cond1_n_cond2_307, %_cond4_306
  br i1 %_cond1_n_cond2_cond3_308, label %127, label %128

; <label>:127:                                    ; preds = %123
  %_address_in_parent_stack_bt_310 = bitcast i8* %_pot_address_in_parent_stack_301 to i32*
  br label %128

; <label>:128:                                    ; preds = %123, %127
  %129 = phi i32* [ %126, %123 ], [ %_address_in_parent_stack_bt_310, %127 ]
  %_new_load_311 = load i32, i32* %129
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_311, i32 %_new_load_281)
  %130 = extractvalue { i32, i1 } %uadd72, 0
  %131 = zext i32 %130 to i64, !mcsema_real_eip !73
  %132 = inttoptr i64 %_new_load_146 to i64*, !mcsema_real_eip !74
  %133 = bitcast i64* %132 to i32*
  %_ptr_to_int_312 = ptrtoint i32* %133 to i64
  %_ptr_bt_314 = bitcast i32* %133 to i8*
  %_offset_above_rbp_315 = sub i64 %_ptr_to_int_312, %_local_end_to_int_
  %_pot_address_in_parent_stack_316 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_315
  %_cond1_317 = icmp ugt i8* %_ptr_bt_314, %_local_stack_end_ptr_
  %_cond2_1_318 = icmp ugt i8* %_ptr_bt_314, %_parent_stack_end_ptr_
  %_cond2_2_319 = icmp ult i8* %_ptr_bt_314, %_parent_stack_start_ptr_
  %_cond2_320 = or i1 %_cond2_1_318, %_cond2_2_319
  %_cond4_321 = icmp ule i8* %_pot_address_in_parent_stack_316, %_parent_stack_end_ptr_
  %_cond1_n_cond2_322 = and i1 %_cond1_317, %_cond2_320
  %_cond1_n_cond2_cond3_323 = and i1 %_cond1_n_cond2_322, %_cond4_321
  br i1 %_cond1_n_cond2_cond3_323, label %134, label %135

; <label>:134:                                    ; preds = %128
  %_address_in_parent_stack_bt_325 = bitcast i8* %_pot_address_in_parent_stack_316 to i32*
  br label %135

; <label>:135:                                    ; preds = %128, %134
  %136 = phi i32* [ %133, %128 ], [ %_address_in_parent_stack_bt_325, %134 ]
  %_new_load_326 = load i32, i32* %136
  %137 = add i32 %_new_load_326, %130
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %137, i32 %115)
  %138 = extractvalue { i32, i1 } %uadd74, 0
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -120
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %139 = bitcast i64* %_allin_new_bt_62 to i32*
  store i32 %138, i32* %139, !mcsema_real_eip !75
  %_load_rbp_ptr_63 = load i8*, i8** %_RBP_ptr_
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -36
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %140 = bitcast i64* %_allin_new_bt_65 to i32*
  %_ptr_to_int_327 = ptrtoint i32* %140 to i64
  %_ptr_bt_329 = bitcast i32* %140 to i8*
  %_offset_above_rbp_330 = sub i64 %_ptr_to_int_327, %_local_end_to_int_
  %_pot_address_in_parent_stack_331 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_330
  %_cond1_332 = icmp ugt i8* %_ptr_bt_329, %_local_stack_end_ptr_
  %_cond2_1_333 = icmp ugt i8* %_ptr_bt_329, %_parent_stack_end_ptr_
  %_cond2_2_334 = icmp ult i8* %_ptr_bt_329, %_parent_stack_start_ptr_
  %_cond2_335 = or i1 %_cond2_1_333, %_cond2_2_334
  %_cond4_336 = icmp ule i8* %_pot_address_in_parent_stack_331, %_parent_stack_end_ptr_
  %_cond1_n_cond2_337 = and i1 %_cond1_332, %_cond2_335
  %_cond1_n_cond2_cond3_338 = and i1 %_cond1_n_cond2_337, %_cond4_336
  br i1 %_cond1_n_cond2_cond3_338, label %141, label %142

; <label>:141:                                    ; preds = %135
  %_address_in_parent_stack_bt_340 = bitcast i8* %_pot_address_in_parent_stack_331 to i32*
  br label %142

; <label>:142:                                    ; preds = %135, %141
  %143 = phi i32* [ %140, %135 ], [ %_address_in_parent_stack_bt_340, %141 ]
  %_new_load_341 = load i32, i32* %143
  %144 = zext i32 %_new_load_341 to i64, !mcsema_real_eip !76
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -64
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %_ptr_to_int_342 = ptrtoint i64* %_allin_new_bt_68 to i64
  %_offset_above_rbp_345 = sub i64 %_ptr_to_int_342, %_local_end_to_int_
  %_pot_address_in_parent_stack_346 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_345
  %_cond1_347 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_348 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_349 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_350 = or i1 %_cond2_1_348, %_cond2_2_349
  %_cond4_351 = icmp ule i8* %_pot_address_in_parent_stack_346, %_parent_stack_end_ptr_
  %_cond1_n_cond2_352 = and i1 %_cond1_347, %_cond2_350
  %_cond1_n_cond2_cond3_353 = and i1 %_cond1_n_cond2_352, %_cond4_351
  br i1 %_cond1_n_cond2_cond3_353, label %145, label %146

; <label>:145:                                    ; preds = %142
  %_address_in_parent_stack_bt_355 = bitcast i8* %_pot_address_in_parent_stack_346 to i64*
  br label %146

; <label>:146:                                    ; preds = %142, %145
  %147 = phi i64* [ %_allin_new_bt_68, %142 ], [ %_address_in_parent_stack_bt_355, %145 ]
  %_new_load_356 = load i64, i64* %147
  %148 = add i64 %_new_load_356, 4, !mcsema_real_eip !78
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !78
  %150 = bitcast i64* %149 to i32*
  %_ptr_to_int_357 = ptrtoint i32* %150 to i64
  %_ptr_bt_359 = bitcast i32* %150 to i8*
  %_offset_above_rbp_360 = sub i64 %_ptr_to_int_357, %_local_end_to_int_
  %_pot_address_in_parent_stack_361 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_360
  %_cond1_362 = icmp ugt i8* %_ptr_bt_359, %_local_stack_end_ptr_
  %_cond2_1_363 = icmp ugt i8* %_ptr_bt_359, %_parent_stack_end_ptr_
  %_cond2_2_364 = icmp ult i8* %_ptr_bt_359, %_parent_stack_start_ptr_
  %_cond2_365 = or i1 %_cond2_1_363, %_cond2_2_364
  %_cond4_366 = icmp ule i8* %_pot_address_in_parent_stack_361, %_parent_stack_end_ptr_
  %_cond1_n_cond2_367 = and i1 %_cond1_362, %_cond2_365
  %_cond1_n_cond2_cond3_368 = and i1 %_cond1_n_cond2_367, %_cond4_366
  br i1 %_cond1_n_cond2_cond3_368, label %151, label %152

; <label>:151:                                    ; preds = %146
  %_address_in_parent_stack_bt_370 = bitcast i8* %_pot_address_in_parent_stack_361 to i32*
  br label %152

; <label>:152:                                    ; preds = %146, %151
  %153 = phi i32* [ %150, %146 ], [ %_address_in_parent_stack_bt_370, %151 ]
  %_new_load_371 = load i32, i32* %153
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_371, i32 %_new_load_341)
  %154 = extractvalue { i32, i1 } %uadd75, 0
  %155 = zext i32 %154 to i64, !mcsema_real_eip !79
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -72
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %_ptr_to_int_372 = ptrtoint i64* %_allin_new_bt_71 to i64
  %_offset_above_rbp_375 = sub i64 %_ptr_to_int_372, %_local_end_to_int_
  %_pot_address_in_parent_stack_376 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_375
  %_cond1_377 = icmp ugt i8* %_new_gep_70, %_local_stack_end_ptr_
  %_cond2_1_378 = icmp ugt i8* %_new_gep_70, %_parent_stack_end_ptr_
  %_cond2_2_379 = icmp ult i8* %_new_gep_70, %_parent_stack_start_ptr_
  %_cond2_380 = or i1 %_cond2_1_378, %_cond2_2_379
  %_cond4_381 = icmp ule i8* %_pot_address_in_parent_stack_376, %_parent_stack_end_ptr_
  %_cond1_n_cond2_382 = and i1 %_cond1_377, %_cond2_380
  %_cond1_n_cond2_cond3_383 = and i1 %_cond1_n_cond2_382, %_cond4_381
  br i1 %_cond1_n_cond2_cond3_383, label %156, label %157

; <label>:156:                                    ; preds = %152
  %_address_in_parent_stack_bt_385 = bitcast i8* %_pot_address_in_parent_stack_376 to i64*
  br label %157

; <label>:157:                                    ; preds = %152, %156
  %158 = phi i64* [ %_allin_new_bt_71, %152 ], [ %_address_in_parent_stack_bt_385, %156 ]
  %_new_load_386 = load i64, i64* %158
  %159 = add i64 %_new_load_386, 4, !mcsema_real_eip !81
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !81
  %161 = bitcast i64* %160 to i32*
  %_ptr_to_int_387 = ptrtoint i32* %161 to i64
  %_ptr_bt_389 = bitcast i32* %161 to i8*
  %_offset_above_rbp_390 = sub i64 %_ptr_to_int_387, %_local_end_to_int_
  %_pot_address_in_parent_stack_391 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_cond1_392 = icmp ugt i8* %_ptr_bt_389, %_local_stack_end_ptr_
  %_cond2_1_393 = icmp ugt i8* %_ptr_bt_389, %_parent_stack_end_ptr_
  %_cond2_2_394 = icmp ult i8* %_ptr_bt_389, %_parent_stack_start_ptr_
  %_cond2_395 = or i1 %_cond2_1_393, %_cond2_2_394
  %_cond4_396 = icmp ule i8* %_pot_address_in_parent_stack_391, %_parent_stack_end_ptr_
  %_cond1_n_cond2_397 = and i1 %_cond1_392, %_cond2_395
  %_cond1_n_cond2_cond3_398 = and i1 %_cond1_n_cond2_397, %_cond4_396
  br i1 %_cond1_n_cond2_cond3_398, label %162, label %163

; <label>:162:                                    ; preds = %157
  %_address_in_parent_stack_bt_400 = bitcast i8* %_pot_address_in_parent_stack_391 to i32*
  br label %163

; <label>:163:                                    ; preds = %157, %162
  %164 = phi i32* [ %161, %157 ], [ %_address_in_parent_stack_bt_400, %162 ]
  %_new_load_401 = load i32, i32* %164
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_401, i32 %154)
  %165 = extractvalue { i32, i1 } %uadd76, 0
  %166 = zext i32 %165 to i64, !mcsema_real_eip !82
  %167 = add i64 %75, 4, !mcsema_real_eip !83
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !83
  %169 = bitcast i64* %168 to i32*
  %_ptr_to_int_402 = ptrtoint i32* %169 to i64
  %_ptr_bt_404 = bitcast i32* %169 to i8*
  %_offset_above_rbp_405 = sub i64 %_ptr_to_int_402, %_local_end_to_int_
  %_pot_address_in_parent_stack_406 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_cond1_407 = icmp ugt i8* %_ptr_bt_404, %_local_stack_end_ptr_
  %_cond2_1_408 = icmp ugt i8* %_ptr_bt_404, %_parent_stack_end_ptr_
  %_cond2_2_409 = icmp ult i8* %_ptr_bt_404, %_parent_stack_start_ptr_
  %_cond2_410 = or i1 %_cond2_1_408, %_cond2_2_409
  %_cond4_411 = icmp ule i8* %_pot_address_in_parent_stack_406, %_parent_stack_end_ptr_
  %_cond1_n_cond2_412 = and i1 %_cond1_407, %_cond2_410
  %_cond1_n_cond2_cond3_413 = and i1 %_cond1_n_cond2_412, %_cond4_411
  br i1 %_cond1_n_cond2_cond3_413, label %170, label %171

; <label>:170:                                    ; preds = %163
  %_address_in_parent_stack_bt_415 = bitcast i8* %_pot_address_in_parent_stack_406 to i32*
  br label %171

; <label>:171:                                    ; preds = %163, %170
  %172 = phi i32* [ %169, %163 ], [ %_address_in_parent_stack_bt_415, %170 ]
  %_new_load_416 = load i32, i32* %172
  %173 = zext i32 %_new_load_416 to i64, !mcsema_real_eip !83
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -96
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %_ptr_to_int_417 = ptrtoint i64* %_allin_new_bt_74 to i64
  %_offset_above_rbp_420 = sub i64 %_ptr_to_int_417, %_local_end_to_int_
  %_pot_address_in_parent_stack_421 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_420
  %_cond1_422 = icmp ugt i8* %_new_gep_73, %_local_stack_end_ptr_
  %_cond2_1_423 = icmp ugt i8* %_new_gep_73, %_parent_stack_end_ptr_
  %_cond2_2_424 = icmp ult i8* %_new_gep_73, %_parent_stack_start_ptr_
  %_cond2_425 = or i1 %_cond2_1_423, %_cond2_2_424
  %_cond4_426 = icmp ule i8* %_pot_address_in_parent_stack_421, %_parent_stack_end_ptr_
  %_cond1_n_cond2_427 = and i1 %_cond1_422, %_cond2_425
  %_cond1_n_cond2_cond3_428 = and i1 %_cond1_n_cond2_427, %_cond4_426
  br i1 %_cond1_n_cond2_cond3_428, label %174, label %175

; <label>:174:                                    ; preds = %171
  %_address_in_parent_stack_bt_430 = bitcast i8* %_pot_address_in_parent_stack_421 to i64*
  br label %175

; <label>:175:                                    ; preds = %171, %174
  %176 = phi i64* [ %_allin_new_bt_74, %171 ], [ %_address_in_parent_stack_bt_430, %174 ]
  %_new_load_431 = load i64, i64* %176
  %177 = add i64 %_new_load_431, 4, !mcsema_real_eip !85
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !85
  %179 = bitcast i64* %178 to i32*
  %_ptr_to_int_432 = ptrtoint i32* %179 to i64
  %_ptr_bt_434 = bitcast i32* %179 to i8*
  %_offset_above_rbp_435 = sub i64 %_ptr_to_int_432, %_local_end_to_int_
  %_pot_address_in_parent_stack_436 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_435
  %_cond1_437 = icmp ugt i8* %_ptr_bt_434, %_local_stack_end_ptr_
  %_cond2_1_438 = icmp ugt i8* %_ptr_bt_434, %_parent_stack_end_ptr_
  %_cond2_2_439 = icmp ult i8* %_ptr_bt_434, %_parent_stack_start_ptr_
  %_cond2_440 = or i1 %_cond2_1_438, %_cond2_2_439
  %_cond4_441 = icmp ule i8* %_pot_address_in_parent_stack_436, %_parent_stack_end_ptr_
  %_cond1_n_cond2_442 = and i1 %_cond1_437, %_cond2_440
  %_cond1_n_cond2_cond3_443 = and i1 %_cond1_n_cond2_442, %_cond4_441
  br i1 %_cond1_n_cond2_cond3_443, label %180, label %181

; <label>:180:                                    ; preds = %175
  %_address_in_parent_stack_bt_445 = bitcast i8* %_pot_address_in_parent_stack_436 to i32*
  br label %181

; <label>:181:                                    ; preds = %175, %180
  %182 = phi i32* [ %179, %175 ], [ %_address_in_parent_stack_bt_445, %180 ]
  %_new_load_446 = load i32, i32* %182
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_446, i32 %_new_load_416)
  %183 = extractvalue { i32, i1 } %uadd77, 0
  %184 = zext i32 %183 to i64, !mcsema_real_eip !86
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -104
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %_ptr_to_int_447 = ptrtoint i64* %_allin_new_bt_77 to i64
  %_offset_above_rbp_450 = sub i64 %_ptr_to_int_447, %_local_end_to_int_
  %_pot_address_in_parent_stack_451 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_450
  %_cond1_452 = icmp ugt i8* %_new_gep_76, %_local_stack_end_ptr_
  %_cond2_1_453 = icmp ugt i8* %_new_gep_76, %_parent_stack_end_ptr_
  %_cond2_2_454 = icmp ult i8* %_new_gep_76, %_parent_stack_start_ptr_
  %_cond2_455 = or i1 %_cond2_1_453, %_cond2_2_454
  %_cond4_456 = icmp ule i8* %_pot_address_in_parent_stack_451, %_parent_stack_end_ptr_
  %_cond1_n_cond2_457 = and i1 %_cond1_452, %_cond2_455
  %_cond1_n_cond2_cond3_458 = and i1 %_cond1_n_cond2_457, %_cond4_456
  br i1 %_cond1_n_cond2_cond3_458, label %185, label %186

; <label>:185:                                    ; preds = %181
  %_address_in_parent_stack_bt_460 = bitcast i8* %_pot_address_in_parent_stack_451 to i64*
  br label %186

; <label>:186:                                    ; preds = %181, %185
  %187 = phi i64* [ %_allin_new_bt_77, %181 ], [ %_address_in_parent_stack_bt_460, %185 ]
  %_new_load_461 = load i64, i64* %187
  %188 = add i64 %_new_load_461, 4, !mcsema_real_eip !88
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !88
  %190 = bitcast i64* %189 to i32*
  %_ptr_to_int_462 = ptrtoint i32* %190 to i64
  %_ptr_bt_464 = bitcast i32* %190 to i8*
  %_offset_above_rbp_465 = sub i64 %_ptr_to_int_462, %_local_end_to_int_
  %_pot_address_in_parent_stack_466 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_465
  %_cond1_467 = icmp ugt i8* %_ptr_bt_464, %_local_stack_end_ptr_
  %_cond2_1_468 = icmp ugt i8* %_ptr_bt_464, %_parent_stack_end_ptr_
  %_cond2_2_469 = icmp ult i8* %_ptr_bt_464, %_parent_stack_start_ptr_
  %_cond2_470 = or i1 %_cond2_1_468, %_cond2_2_469
  %_cond4_471 = icmp ule i8* %_pot_address_in_parent_stack_466, %_parent_stack_end_ptr_
  %_cond1_n_cond2_472 = and i1 %_cond1_467, %_cond2_470
  %_cond1_n_cond2_cond3_473 = and i1 %_cond1_n_cond2_472, %_cond4_471
  br i1 %_cond1_n_cond2_cond3_473, label %191, label %192

; <label>:191:                                    ; preds = %186
  %_address_in_parent_stack_bt_475 = bitcast i8* %_pot_address_in_parent_stack_466 to i32*
  br label %192

; <label>:192:                                    ; preds = %186, %191
  %193 = phi i32* [ %190, %186 ], [ %_address_in_parent_stack_bt_475, %191 ]
  %_new_load_476 = load i32, i32* %193
  %194 = add i32 %_new_load_476, %183
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %194, i32 %165)
  %195 = extractvalue { i32, i1 } %uadd79, 0
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -116
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %196 = bitcast i64* %_allin_new_bt_80 to i32*
  store i32 %195, i32* %196, !mcsema_real_eip !89
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -32
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %197 = bitcast i64* %_allin_new_bt_83 to i32*
  %_ptr_to_int_477 = ptrtoint i32* %197 to i64
  %_ptr_bt_479 = bitcast i32* %197 to i8*
  %_offset_above_rbp_480 = sub i64 %_ptr_to_int_477, %_local_end_to_int_
  %_pot_address_in_parent_stack_481 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_480
  %_cond1_482 = icmp ugt i8* %_ptr_bt_479, %_local_stack_end_ptr_
  %_cond2_1_483 = icmp ugt i8* %_ptr_bt_479, %_parent_stack_end_ptr_
  %_cond2_2_484 = icmp ult i8* %_ptr_bt_479, %_parent_stack_start_ptr_
  %_cond2_485 = or i1 %_cond2_1_483, %_cond2_2_484
  %_cond4_486 = icmp ule i8* %_pot_address_in_parent_stack_481, %_parent_stack_end_ptr_
  %_cond1_n_cond2_487 = and i1 %_cond1_482, %_cond2_485
  %_cond1_n_cond2_cond3_488 = and i1 %_cond1_n_cond2_487, %_cond4_486
  br i1 %_cond1_n_cond2_cond3_488, label %198, label %199

; <label>:198:                                    ; preds = %192
  %_address_in_parent_stack_bt_490 = bitcast i8* %_pot_address_in_parent_stack_481 to i32*
  br label %199

; <label>:199:                                    ; preds = %192, %198
  %200 = phi i32* [ %197, %192 ], [ %_address_in_parent_stack_bt_490, %198 ]
  %_new_load_491 = load i32, i32* %200
  %201 = zext i32 %_new_load_491 to i64, !mcsema_real_eip !90
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -64
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %_ptr_to_int_492 = ptrtoint i64* %_allin_new_bt_86 to i64
  %_offset_above_rbp_495 = sub i64 %_ptr_to_int_492, %_local_end_to_int_
  %_pot_address_in_parent_stack_496 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_495
  %_cond1_497 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_498 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_499 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_500 = or i1 %_cond2_1_498, %_cond2_2_499
  %_cond4_501 = icmp ule i8* %_pot_address_in_parent_stack_496, %_parent_stack_end_ptr_
  %_cond1_n_cond2_502 = and i1 %_cond1_497, %_cond2_500
  %_cond1_n_cond2_cond3_503 = and i1 %_cond1_n_cond2_502, %_cond4_501
  br i1 %_cond1_n_cond2_cond3_503, label %202, label %203

; <label>:202:                                    ; preds = %199
  %_address_in_parent_stack_bt_505 = bitcast i8* %_pot_address_in_parent_stack_496 to i64*
  br label %203

; <label>:203:                                    ; preds = %199, %202
  %204 = phi i64* [ %_allin_new_bt_86, %199 ], [ %_address_in_parent_stack_bt_505, %202 ]
  %_new_load_506 = load i64, i64* %204
  %205 = add i64 %_new_load_506, 8, !mcsema_real_eip !92
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !92
  %207 = bitcast i64* %206 to i32*
  %_ptr_to_int_507 = ptrtoint i32* %207 to i64
  %_ptr_bt_509 = bitcast i32* %207 to i8*
  %_offset_above_rbp_510 = sub i64 %_ptr_to_int_507, %_local_end_to_int_
  %_pot_address_in_parent_stack_511 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_510
  %_cond1_512 = icmp ugt i8* %_ptr_bt_509, %_local_stack_end_ptr_
  %_cond2_1_513 = icmp ugt i8* %_ptr_bt_509, %_parent_stack_end_ptr_
  %_cond2_2_514 = icmp ult i8* %_ptr_bt_509, %_parent_stack_start_ptr_
  %_cond2_515 = or i1 %_cond2_1_513, %_cond2_2_514
  %_cond4_516 = icmp ule i8* %_pot_address_in_parent_stack_511, %_parent_stack_end_ptr_
  %_cond1_n_cond2_517 = and i1 %_cond1_512, %_cond2_515
  %_cond1_n_cond2_cond3_518 = and i1 %_cond1_n_cond2_517, %_cond4_516
  br i1 %_cond1_n_cond2_cond3_518, label %208, label %209

; <label>:208:                                    ; preds = %203
  %_address_in_parent_stack_bt_520 = bitcast i8* %_pot_address_in_parent_stack_511 to i32*
  br label %209

; <label>:209:                                    ; preds = %203, %208
  %210 = phi i32* [ %207, %203 ], [ %_address_in_parent_stack_bt_520, %208 ]
  %_new_load_521 = load i32, i32* %210
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_521, i32 %_new_load_491)
  %211 = extractvalue { i32, i1 } %uadd80, 0
  %212 = zext i32 %211 to i64, !mcsema_real_eip !93
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -72
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %_ptr_to_int_522 = ptrtoint i64* %_allin_new_bt_89 to i64
  %_offset_above_rbp_525 = sub i64 %_ptr_to_int_522, %_local_end_to_int_
  %_pot_address_in_parent_stack_526 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_525
  %_cond1_527 = icmp ugt i8* %_new_gep_88, %_local_stack_end_ptr_
  %_cond2_1_528 = icmp ugt i8* %_new_gep_88, %_parent_stack_end_ptr_
  %_cond2_2_529 = icmp ult i8* %_new_gep_88, %_parent_stack_start_ptr_
  %_cond2_530 = or i1 %_cond2_1_528, %_cond2_2_529
  %_cond4_531 = icmp ule i8* %_pot_address_in_parent_stack_526, %_parent_stack_end_ptr_
  %_cond1_n_cond2_532 = and i1 %_cond1_527, %_cond2_530
  %_cond1_n_cond2_cond3_533 = and i1 %_cond1_n_cond2_532, %_cond4_531
  br i1 %_cond1_n_cond2_cond3_533, label %213, label %214

; <label>:213:                                    ; preds = %209
  %_address_in_parent_stack_bt_535 = bitcast i8* %_pot_address_in_parent_stack_526 to i64*
  br label %214

; <label>:214:                                    ; preds = %209, %213
  %215 = phi i64* [ %_allin_new_bt_89, %209 ], [ %_address_in_parent_stack_bt_535, %213 ]
  %_new_load_536 = load i64, i64* %215
  %216 = add i64 %_new_load_536, 8, !mcsema_real_eip !95
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !95
  %218 = bitcast i64* %217 to i32*
  %_ptr_to_int_537 = ptrtoint i32* %218 to i64
  %_ptr_bt_539 = bitcast i32* %218 to i8*
  %_offset_above_rbp_540 = sub i64 %_ptr_to_int_537, %_local_end_to_int_
  %_pot_address_in_parent_stack_541 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_540
  %_cond1_542 = icmp ugt i8* %_ptr_bt_539, %_local_stack_end_ptr_
  %_cond2_1_543 = icmp ugt i8* %_ptr_bt_539, %_parent_stack_end_ptr_
  %_cond2_2_544 = icmp ult i8* %_ptr_bt_539, %_parent_stack_start_ptr_
  %_cond2_545 = or i1 %_cond2_1_543, %_cond2_2_544
  %_cond4_546 = icmp ule i8* %_pot_address_in_parent_stack_541, %_parent_stack_end_ptr_
  %_cond1_n_cond2_547 = and i1 %_cond1_542, %_cond2_545
  %_cond1_n_cond2_cond3_548 = and i1 %_cond1_n_cond2_547, %_cond4_546
  br i1 %_cond1_n_cond2_cond3_548, label %219, label %220

; <label>:219:                                    ; preds = %214
  %_address_in_parent_stack_bt_550 = bitcast i8* %_pot_address_in_parent_stack_541 to i32*
  br label %220

; <label>:220:                                    ; preds = %214, %219
  %221 = phi i32* [ %218, %214 ], [ %_address_in_parent_stack_bt_550, %219 ]
  %_new_load_551 = load i32, i32* %221
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_551, i32 %211)
  %222 = extractvalue { i32, i1 } %uadd81, 0
  %223 = zext i32 %222 to i64, !mcsema_real_eip !96
  %224 = add i64 %75, 8, !mcsema_real_eip !97
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !97
  %226 = bitcast i64* %225 to i32*
  %_ptr_to_int_552 = ptrtoint i32* %226 to i64
  %_ptr_bt_554 = bitcast i32* %226 to i8*
  %_offset_above_rbp_555 = sub i64 %_ptr_to_int_552, %_local_end_to_int_
  %_pot_address_in_parent_stack_556 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_555
  %_cond1_557 = icmp ugt i8* %_ptr_bt_554, %_local_stack_end_ptr_
  %_cond2_1_558 = icmp ugt i8* %_ptr_bt_554, %_parent_stack_end_ptr_
  %_cond2_2_559 = icmp ult i8* %_ptr_bt_554, %_parent_stack_start_ptr_
  %_cond2_560 = or i1 %_cond2_1_558, %_cond2_2_559
  %_cond4_561 = icmp ule i8* %_pot_address_in_parent_stack_556, %_parent_stack_end_ptr_
  %_cond1_n_cond2_562 = and i1 %_cond1_557, %_cond2_560
  %_cond1_n_cond2_cond3_563 = and i1 %_cond1_n_cond2_562, %_cond4_561
  br i1 %_cond1_n_cond2_cond3_563, label %227, label %228

; <label>:227:                                    ; preds = %220
  %_address_in_parent_stack_bt_565 = bitcast i8* %_pot_address_in_parent_stack_556 to i32*
  br label %228

; <label>:228:                                    ; preds = %220, %227
  %229 = phi i32* [ %226, %220 ], [ %_address_in_parent_stack_bt_565, %227 ]
  %_new_load_566 = load i32, i32* %229
  %230 = zext i32 %_new_load_566 to i64, !mcsema_real_eip !97
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -96
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %_ptr_to_int_567 = ptrtoint i64* %_allin_new_bt_92 to i64
  %_offset_above_rbp_570 = sub i64 %_ptr_to_int_567, %_local_end_to_int_
  %_pot_address_in_parent_stack_571 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_570
  %_cond1_572 = icmp ugt i8* %_new_gep_91, %_local_stack_end_ptr_
  %_cond2_1_573 = icmp ugt i8* %_new_gep_91, %_parent_stack_end_ptr_
  %_cond2_2_574 = icmp ult i8* %_new_gep_91, %_parent_stack_start_ptr_
  %_cond2_575 = or i1 %_cond2_1_573, %_cond2_2_574
  %_cond4_576 = icmp ule i8* %_pot_address_in_parent_stack_571, %_parent_stack_end_ptr_
  %_cond1_n_cond2_577 = and i1 %_cond1_572, %_cond2_575
  %_cond1_n_cond2_cond3_578 = and i1 %_cond1_n_cond2_577, %_cond4_576
  br i1 %_cond1_n_cond2_cond3_578, label %231, label %232

; <label>:231:                                    ; preds = %228
  %_address_in_parent_stack_bt_580 = bitcast i8* %_pot_address_in_parent_stack_571 to i64*
  br label %232

; <label>:232:                                    ; preds = %228, %231
  %233 = phi i64* [ %_allin_new_bt_92, %228 ], [ %_address_in_parent_stack_bt_580, %231 ]
  %_new_load_581 = load i64, i64* %233
  %234 = add i64 %_new_load_581, 8, !mcsema_real_eip !99
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !99
  %236 = bitcast i64* %235 to i32*
  %_ptr_to_int_582 = ptrtoint i32* %236 to i64
  %_ptr_bt_584 = bitcast i32* %236 to i8*
  %_offset_above_rbp_585 = sub i64 %_ptr_to_int_582, %_local_end_to_int_
  %_pot_address_in_parent_stack_586 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_585
  %_cond1_587 = icmp ugt i8* %_ptr_bt_584, %_local_stack_end_ptr_
  %_cond2_1_588 = icmp ugt i8* %_ptr_bt_584, %_parent_stack_end_ptr_
  %_cond2_2_589 = icmp ult i8* %_ptr_bt_584, %_parent_stack_start_ptr_
  %_cond2_590 = or i1 %_cond2_1_588, %_cond2_2_589
  %_cond4_591 = icmp ule i8* %_pot_address_in_parent_stack_586, %_parent_stack_end_ptr_
  %_cond1_n_cond2_592 = and i1 %_cond1_587, %_cond2_590
  %_cond1_n_cond2_cond3_593 = and i1 %_cond1_n_cond2_592, %_cond4_591
  br i1 %_cond1_n_cond2_cond3_593, label %237, label %238

; <label>:237:                                    ; preds = %232
  %_address_in_parent_stack_bt_595 = bitcast i8* %_pot_address_in_parent_stack_586 to i32*
  br label %238

; <label>:238:                                    ; preds = %232, %237
  %239 = phi i32* [ %236, %232 ], [ %_address_in_parent_stack_bt_595, %237 ]
  %_new_load_596 = load i32, i32* %239
  %uadd82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_596, i32 %_new_load_566)
  %240 = extractvalue { i32, i1 } %uadd82, 0
  %241 = zext i32 %240 to i64, !mcsema_real_eip !100
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -104
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %_ptr_to_int_597 = ptrtoint i64* %_allin_new_bt_95 to i64
  %_offset_above_rbp_600 = sub i64 %_ptr_to_int_597, %_local_end_to_int_
  %_pot_address_in_parent_stack_601 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_600
  %_cond1_602 = icmp ugt i8* %_new_gep_94, %_local_stack_end_ptr_
  %_cond2_1_603 = icmp ugt i8* %_new_gep_94, %_parent_stack_end_ptr_
  %_cond2_2_604 = icmp ult i8* %_new_gep_94, %_parent_stack_start_ptr_
  %_cond2_605 = or i1 %_cond2_1_603, %_cond2_2_604
  %_cond4_606 = icmp ule i8* %_pot_address_in_parent_stack_601, %_parent_stack_end_ptr_
  %_cond1_n_cond2_607 = and i1 %_cond1_602, %_cond2_605
  %_cond1_n_cond2_cond3_608 = and i1 %_cond1_n_cond2_607, %_cond4_606
  br i1 %_cond1_n_cond2_cond3_608, label %242, label %243

; <label>:242:                                    ; preds = %238
  %_address_in_parent_stack_bt_610 = bitcast i8* %_pot_address_in_parent_stack_601 to i64*
  br label %243

; <label>:243:                                    ; preds = %238, %242
  %244 = phi i64* [ %_allin_new_bt_95, %238 ], [ %_address_in_parent_stack_bt_610, %242 ]
  %_new_load_611 = load i64, i64* %244
  %245 = add i64 %_new_load_611, 8, !mcsema_real_eip !102
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !102
  %247 = bitcast i64* %246 to i32*
  %_ptr_to_int_612 = ptrtoint i32* %247 to i64
  %_ptr_bt_614 = bitcast i32* %247 to i8*
  %_offset_above_rbp_615 = sub i64 %_ptr_to_int_612, %_local_end_to_int_
  %_pot_address_in_parent_stack_616 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_615
  %_cond1_617 = icmp ugt i8* %_ptr_bt_614, %_local_stack_end_ptr_
  %_cond2_1_618 = icmp ugt i8* %_ptr_bt_614, %_parent_stack_end_ptr_
  %_cond2_2_619 = icmp ult i8* %_ptr_bt_614, %_parent_stack_start_ptr_
  %_cond2_620 = or i1 %_cond2_1_618, %_cond2_2_619
  %_cond4_621 = icmp ule i8* %_pot_address_in_parent_stack_616, %_parent_stack_end_ptr_
  %_cond1_n_cond2_622 = and i1 %_cond1_617, %_cond2_620
  %_cond1_n_cond2_cond3_623 = and i1 %_cond1_n_cond2_622, %_cond4_621
  br i1 %_cond1_n_cond2_cond3_623, label %248, label %249

; <label>:248:                                    ; preds = %243
  %_address_in_parent_stack_bt_625 = bitcast i8* %_pot_address_in_parent_stack_616 to i32*
  br label %249

; <label>:249:                                    ; preds = %243, %248
  %250 = phi i32* [ %247, %243 ], [ %_address_in_parent_stack_bt_625, %248 ]
  %_new_load_626 = load i32, i32* %250
  %251 = zext i32 %_new_load_626 to i64, !mcsema_real_eip !102
  %252 = add i32 %_new_load_626, %240
  %253 = zext i32 %252 to i64, !mcsema_real_eip !103
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %252, i32 %222)
  %254 = extractvalue { i32, i1 } %uadd84, 0
  %255 = xor i32 %254, %222, !mcsema_real_eip !104
  %256 = xor i32 %255, %252, !mcsema_real_eip !104
  %257 = and i32 %256, 16, !mcsema_real_eip !104
  %258 = icmp ne i32 %257, 0, !mcsema_real_eip !104
  %259 = icmp slt i32 %254, 0
  %260 = icmp eq i32 %254, 0, !mcsema_real_eip !104
  %261 = xor i32 %252, -2147483648, !mcsema_real_eip !104
  %262 = xor i32 %261, %222, !mcsema_real_eip !104
  %263 = and i32 %255, %262, !mcsema_real_eip !104
  %264 = icmp slt i32 %263, 0
  %265 = trunc i32 %254 to i8, !mcsema_real_eip !104
  %266 = tail call i8 @llvm.ctpop.i8(i8 %265), !mcsema_real_eip !104
  %267 = and i8 %266, 1
  %268 = icmp eq i8 %267, 0
  %269 = extractvalue { i32, i1 } %uadd84, 1
  %270 = zext i32 %254 to i64, !mcsema_real_eip !104
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -112
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %271 = bitcast i64* %_allin_new_bt_98 to i32*
  store i32 %254, i32* %271, !mcsema_real_eip !105
  %_load_rbp_ptr_99 = load i8*, i8** %_RBP_ptr_
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_99, i64 -16
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %272 = bitcast i64* %_allin_new_bt_101 to i32*
  store i32 %254, i32* %272, !mcsema_real_eip !106
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -120
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %_ptr_to_int_627 = ptrtoint i64* %_allin_new_bt_104 to i64
  %_offset_above_rbp_630 = sub i64 %_ptr_to_int_627, %_local_end_to_int_
  %_pot_address_in_parent_stack_631 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_630
  %_cond1_632 = icmp ugt i8* %_new_gep_103, %_local_stack_end_ptr_
  %_cond2_1_633 = icmp ugt i8* %_new_gep_103, %_parent_stack_end_ptr_
  %_cond2_2_634 = icmp ult i8* %_new_gep_103, %_parent_stack_start_ptr_
  %_cond2_635 = or i1 %_cond2_1_633, %_cond2_2_634
  %_cond4_636 = icmp ule i8* %_pot_address_in_parent_stack_631, %_parent_stack_end_ptr_
  %_cond1_n_cond2_637 = and i1 %_cond1_632, %_cond2_635
  %_cond1_n_cond2_cond3_638 = and i1 %_cond1_n_cond2_637, %_cond4_636
  br i1 %_cond1_n_cond2_cond3_638, label %273, label %274

; <label>:273:                                    ; preds = %249
  %_address_in_parent_stack_bt_640 = bitcast i8* %_pot_address_in_parent_stack_631 to i64*
  br label %274

; <label>:274:                                    ; preds = %249, %273
  %275 = phi i64* [ %_allin_new_bt_104, %249 ], [ %_address_in_parent_stack_bt_640, %273 ]
  %_new_load_641 = load i64, i64* %275
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -24
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  store i64 %_new_load_641, i64* %_allin_new_bt_106, !mcsema_real_eip !108
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -16
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %276 = bitcast i64* %_allin_new_bt_109 to i32*
  %_ptr_to_int_642 = ptrtoint i32* %276 to i64
  %_ptr_bt_644 = bitcast i32* %276 to i8*
  %_offset_above_rbp_645 = sub i64 %_ptr_to_int_642, %_local_end_to_int_
  %_pot_address_in_parent_stack_646 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_645
  %_cond1_647 = icmp ugt i8* %_ptr_bt_644, %_local_stack_end_ptr_
  %_cond2_1_648 = icmp ugt i8* %_ptr_bt_644, %_parent_stack_end_ptr_
  %_cond2_2_649 = icmp ult i8* %_ptr_bt_644, %_parent_stack_start_ptr_
  %_cond2_650 = or i1 %_cond2_1_648, %_cond2_2_649
  %_cond4_651 = icmp ule i8* %_pot_address_in_parent_stack_646, %_parent_stack_end_ptr_
  %_cond1_n_cond2_652 = and i1 %_cond1_647, %_cond2_650
  %_cond1_n_cond2_cond3_653 = and i1 %_cond1_n_cond2_652, %_cond4_651
  br i1 %_cond1_n_cond2_cond3_653, label %277, label %278

; <label>:277:                                    ; preds = %274
  %_address_in_parent_stack_bt_655 = bitcast i8* %_pot_address_in_parent_stack_646 to i32*
  br label %278

; <label>:278:                                    ; preds = %274, %277
  %279 = phi i32* [ %276, %274 ], [ %_address_in_parent_stack_bt_655, %277 ]
  %_new_load_656 = load i32, i32* %279
  %280 = zext i32 %_new_load_656 to i64, !mcsema_real_eip !109
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -128
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %281 = bitcast i64* %_allin_new_bt_112 to i32*
  store i32 %_new_load_656, i32* %281, !mcsema_real_eip !110
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -24
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %_ptr_to_int_657 = ptrtoint i64* %_allin_new_bt_115 to i64
  %_offset_above_rbp_660 = sub i64 %_ptr_to_int_657, %_local_end_to_int_
  %_pot_address_in_parent_stack_661 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_660
  %_cond1_662 = icmp ugt i8* %_new_gep_114, %_local_stack_end_ptr_
  %_cond2_1_663 = icmp ugt i8* %_new_gep_114, %_parent_stack_end_ptr_
  %_cond2_2_664 = icmp ult i8* %_new_gep_114, %_parent_stack_start_ptr_
  %_cond2_665 = or i1 %_cond2_1_663, %_cond2_2_664
  %_cond4_666 = icmp ule i8* %_pot_address_in_parent_stack_661, %_parent_stack_end_ptr_
  %_cond1_n_cond2_667 = and i1 %_cond1_662, %_cond2_665
  %_cond1_n_cond2_cond3_668 = and i1 %_cond1_n_cond2_667, %_cond4_666
  br i1 %_cond1_n_cond2_cond3_668, label %282, label %283

; <label>:282:                                    ; preds = %278
  %_address_in_parent_stack_bt_670 = bitcast i8* %_pot_address_in_parent_stack_661 to i64*
  br label %283

; <label>:283:                                    ; preds = %278, %282
  %284 = phi i64* [ %_allin_new_bt_115, %278 ], [ %_address_in_parent_stack_bt_670, %282 ]
  %_new_load_671 = load i64, i64* %284
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -136
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  store i64 %_new_load_671, i64* %_allin_new_bt_117, !mcsema_real_eip !112
  %_load_rbp_ptr_118 = load i8*, i8** %_RBP_ptr_
  %_new_gep_119 = getelementptr i8, i8* %_load_rbp_ptr_118, i64 -136
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  %_ptr_to_int_672 = ptrtoint i64* %_allin_new_bt_120 to i64
  %_offset_above_rbp_675 = sub i64 %_ptr_to_int_672, %_local_end_to_int_
  %_pot_address_in_parent_stack_676 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_675
  %_cond1_677 = icmp ugt i8* %_new_gep_119, %_local_stack_end_ptr_
  %_cond2_1_678 = icmp ugt i8* %_new_gep_119, %_parent_stack_end_ptr_
  %_cond2_2_679 = icmp ult i8* %_new_gep_119, %_parent_stack_start_ptr_
  %_cond2_680 = or i1 %_cond2_1_678, %_cond2_2_679
  %_cond4_681 = icmp ule i8* %_pot_address_in_parent_stack_676, %_parent_stack_end_ptr_
  %_cond1_n_cond2_682 = and i1 %_cond1_677, %_cond2_680
  %_cond1_n_cond2_cond3_683 = and i1 %_cond1_n_cond2_682, %_cond4_681
  br i1 %_cond1_n_cond2_cond3_683, label %285, label %286

; <label>:285:                                    ; preds = %283
  %_address_in_parent_stack_bt_685 = bitcast i8* %_pot_address_in_parent_stack_676 to i64*
  br label %286

; <label>:286:                                    ; preds = %283, %285
  %287 = phi i64* [ %_allin_new_bt_120, %283 ], [ %_address_in_parent_stack_bt_685, %285 ]
  %_new_load_686 = load i64, i64* %287
  %_new_gep_121 = getelementptr i8, i8* %_load_rbp_ptr_118, i64 -128
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  %288 = bitcast i64* %_allin_new_bt_122 to i32*
  %_ptr_to_int_687 = ptrtoint i32* %288 to i64
  %_ptr_bt_689 = bitcast i32* %288 to i8*
  %_offset_above_rbp_690 = sub i64 %_ptr_to_int_687, %_local_end_to_int_
  %_pot_address_in_parent_stack_691 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_690
  %_cond1_692 = icmp ugt i8* %_ptr_bt_689, %_local_stack_end_ptr_
  %_cond2_1_693 = icmp ugt i8* %_ptr_bt_689, %_parent_stack_end_ptr_
  %_cond2_2_694 = icmp ult i8* %_ptr_bt_689, %_parent_stack_start_ptr_
  %_cond2_695 = or i1 %_cond2_1_693, %_cond2_2_694
  %_cond4_696 = icmp ule i8* %_pot_address_in_parent_stack_691, %_parent_stack_end_ptr_
  %_cond1_n_cond2_697 = and i1 %_cond1_692, %_cond2_695
  %_cond1_n_cond2_cond3_698 = and i1 %_cond1_n_cond2_697, %_cond4_696
  br i1 %_cond1_n_cond2_cond3_698, label %289, label %290

; <label>:289:                                    ; preds = %286
  %_address_in_parent_stack_bt_700 = bitcast i8* %_pot_address_in_parent_stack_691 to i32*
  br label %290

; <label>:290:                                    ; preds = %286, %289
  %291 = phi i32* [ %288, %286 ], [ %_address_in_parent_stack_bt_700, %289 ]
  %_new_load_701 = load i32, i32* %291
  %292 = zext i32 %_new_load_701 to i64, !mcsema_real_eip !113
  %_load_rsp_ptr_123 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_124 = bitcast i8* %_load_rsp_ptr_123 to i64*
  %_ptr_to_int_702 = ptrtoint i64* %_allin_new_bt_124 to i64
  %_offset_above_rbp_705 = sub i64 %_ptr_to_int_702, %_local_end_to_int_
  %_pot_address_in_parent_stack_706 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_705
  %_cond1_707 = icmp ugt i8* %_load_rsp_ptr_123, %_local_stack_end_ptr_
  %_cond2_1_708 = icmp ugt i8* %_load_rsp_ptr_123, %_parent_stack_end_ptr_
  %_cond2_2_709 = icmp ult i8* %_load_rsp_ptr_123, %_parent_stack_start_ptr_
  %_cond2_710 = or i1 %_cond2_1_708, %_cond2_2_709
  %_cond4_711 = icmp ule i8* %_pot_address_in_parent_stack_706, %_parent_stack_end_ptr_
  %_cond1_n_cond2_712 = and i1 %_cond1_707, %_cond2_710
  %_cond1_n_cond2_cond3_713 = and i1 %_cond1_n_cond2_712, %_cond4_711
  br i1 %_cond1_n_cond2_cond3_713, label %293, label %294

; <label>:293:                                    ; preds = %290
  %_address_in_parent_stack_bt_715 = bitcast i8* %_pot_address_in_parent_stack_706 to i64*
  br label %294

; <label>:294:                                    ; preds = %290, %293
  %295 = phi i64* [ %_allin_new_bt_124, %290 ], [ %_address_in_parent_stack_bt_715, %293 ]
  %_new_load_716 = load i64, i64* %295
  %_new_gep_125 = getelementptr i8, i8* %_load_rsp_ptr_123, i64 8
  store volatile i8* %_new_gep_125, i8** %_RSP_ptr_
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  %_ptr_to_int_717 = ptrtoint i64* %_allin_new_bt_126 to i64
  %_offset_above_rbp_720 = sub i64 %_ptr_to_int_717, %_local_end_to_int_
  %_pot_address_in_parent_stack_721 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_720
  %_cond1_722 = icmp ugt i8* %_new_gep_125, %_local_stack_end_ptr_
  %_cond2_1_723 = icmp ugt i8* %_new_gep_125, %_parent_stack_end_ptr_
  %_cond2_2_724 = icmp ult i8* %_new_gep_125, %_parent_stack_start_ptr_
  %_cond2_725 = or i1 %_cond2_1_723, %_cond2_2_724
  %_cond4_726 = icmp ule i8* %_pot_address_in_parent_stack_721, %_parent_stack_end_ptr_
  %_cond1_n_cond2_727 = and i1 %_cond1_722, %_cond2_725
  %_cond1_n_cond2_cond3_728 = and i1 %_cond1_n_cond2_727, %_cond4_726
  br i1 %_cond1_n_cond2_cond3_728, label %296, label %297

; <label>:296:                                    ; preds = %294
  %_address_in_parent_stack_bt_730 = bitcast i8* %_pot_address_in_parent_stack_721 to i64*
  br label %297

; <label>:297:                                    ; preds = %294, %296
  %298 = phi i64* [ %_allin_new_bt_126, %294 ], [ %_address_in_parent_stack_bt_730, %296 ]
  %_new_load_731 = load i64, i64* %298
  %_new_int2ptr_ = inttoptr i64 %_new_load_731 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_127 = getelementptr i8, i8* %_load_rsp_ptr_123, i64 24
  store volatile i8* %_new_gep_127, i8** %_RSP_ptr_
  store i64 %_new_load_686, i64* %RAX, !mcsema_real_eip !116
  store i64 %_new_load_716, i64* %RBX, !mcsema_real_eip !116
  store i64 %_new_load_296, i64* %RCX, !mcsema_real_eip !116
  store i64 %292, i64* %RDX, !mcsema_real_eip !116
  store i64 %280, i64* %RSI, !mcsema_real_eip !116
  store i64 %_new_load_191, i64* %RDI, !mcsema_real_eip !116
  %_new_ptr2int_129 = ptrtoint i8* %_new_gep_127 to i64
  store volatile i64 %_new_ptr2int_129, i64* %RSP
  %_load_rbp_ptr_130 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_131 = ptrtoint i8* %_load_rbp_ptr_130 to i64
  store volatile i64 %_new_ptr2int_131, i64* %RBP
  store i64 %253, i64* %R8, !mcsema_real_eip !116
  store i64 %251, i64* %R9, !mcsema_real_eip !116
  store i64 %_new_load_161, i64* %R10, !mcsema_real_eip !116
  store i64 %75, i64* %R11, !mcsema_real_eip !116
  store i64 %8, i64* %R12, !mcsema_real_eip !116
  store i64 %9, i64* %R13, !mcsema_real_eip !116
  store i64 %10, i64* %R14, !mcsema_real_eip !116
  store i64 %11, i64* %R15, !mcsema_real_eip !116
  store i64 %12, i64* %RIP, !mcsema_real_eip !116
  store i1 %269, i1* %CF, align 1, !mcsema_real_eip !116
  store i1 %268, i1* %PF, align 1, !mcsema_real_eip !116
  store i1 %258, i1* %AF, align 1, !mcsema_real_eip !116
  store i1 %260, i1* %ZF, align 1, !mcsema_real_eip !116
  store i1 %259, i1* %SF, align 1, !mcsema_real_eip !116
  store i1 %264, i1* %OF, align 1, !mcsema_real_eip !116
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !116
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 128, i32 8, i1 false), !mcsema_real_eip !116
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !116
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !116
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !116
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !116
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !116
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !116
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !116
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !116
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !116
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !116
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !116
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !116
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !116
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !116
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !116
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !116
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !116
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !116
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !116
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !116
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !116
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !116
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !116
  %_ptr_to_int_732 = ptrtoint i64* %42 to i64
  %_ptr_bt_734 = bitcast i64* %42 to i8*
  %_offset_above_rbp_735 = sub i64 %_ptr_to_int_732, %_local_end_to_int_
  %_pot_address_in_parent_stack_736 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_735
  %_cond1_737 = icmp ugt i8* %_ptr_bt_734, %_local_stack_end_ptr_
  %_cond2_1_738 = icmp ugt i8* %_ptr_bt_734, %_parent_stack_end_ptr_
  %_cond2_2_739 = icmp ult i8* %_ptr_bt_734, %_parent_stack_start_ptr_
  %_cond2_740 = or i1 %_cond2_1_738, %_cond2_2_739
  %_cond4_741 = icmp ule i8* %_pot_address_in_parent_stack_736, %_parent_stack_end_ptr_
  %_cond1_n_cond2_742 = and i1 %_cond1_737, %_cond2_740
  %_cond1_n_cond2_cond3_743 = and i1 %_cond1_n_cond2_742, %_cond4_741
  br i1 %_cond1_n_cond2_cond3_743, label %299, label %300

; <label>:299:                                    ; preds = %297
  %_address_in_parent_stack_bt_745 = bitcast i8* %_pot_address_in_parent_stack_736 to i64*
  br label %300

; <label>:300:                                    ; preds = %297, %299
  %301 = phi i64* [ %42, %297 ], [ %_address_in_parent_stack_bt_745, %299 ]
  %_new_load_746 = load i64, i64* %301
  store i64 %_new_load_746, i64* %41, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !116
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !116
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !116
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !116
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !116
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !116
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !116
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !116
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !116
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !116
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !116
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !116
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !116
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !116
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !116
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !116
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !116
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !116
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !116
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !116
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !116
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !116
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !116
  ret void, !mcsema_real_eip !116
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 272}
!3 = !{i64 276}
!4 = !{i64 283}
!5 = !{i64 300}
!6 = !{i64 304}
!7 = !{i64 318}
!8 = !{i64 323}
!9 = !{i64 327}
!10 = !{i64 333}
!11 = !{i64 337}
!12 = !{i64 344}
!13 = !{i64 348}
!14 = !{i64 355}
!15 = !{i64 359}
!16 = !{i64 362}
!17 = !{i64 365}
!18 = !{i64 369}
!19 = !{i64 373}
!20 = !{i64 377}
!21 = !{i64 380}
!22 = !{i64 386}
!23 = !{i64 389}
!24 = !{i64 393}
!25 = !{i64 397}
!26 = !{i64 401}
!27 = !{i64 405}
!28 = !{i64 409}
!29 = !{i64 426}
!30 = !{i64 429}
!31 = !{i64 435}
!32 = !{i64 439}
!33 = !{i64 444}
!34 = !{i64 447}
!35 = !{i64 451}
!36 = !{i64 455}
!37 = !{i64 459}
!38 = !{i64 462}
!39 = !{i64 465}
!40 = !{i64 468}
!41 = !{i64 471}
!42 = !{i64 476}
!43 = !{i64 483}
!44 = !{i64 484}
!45 = !{i64 0}
!46 = !{i64 4}
!47 = !{i64 5}
!48 = !{i64 9}
!49 = !{i64 13}
!50 = !{i64 17}
!51 = !{i64 20}
!52 = !{i64 24}
!53 = !{i64 27}
!54 = !{i64 30}
!55 = !{i64 34}
!56 = !{i64 38}
!57 = !{i64 42}
!58 = !{i64 46}
!59 = !{i64 50}
!60 = !{i64 54}
!61 = !{i64 57}
!62 = !{i64 61}
!63 = !{i64 65}
!64 = !{i64 68}
!65 = !{i64 72}
!66 = !{i64 75}
!67 = !{i64 78}
!68 = !{i64 82}
!69 = !{i64 85}
!70 = !{i64 88}
!71 = !{i64 91}
!72 = !{i64 95}
!73 = !{i64 98}
!74 = !{i64 101}
!75 = !{i64 110}
!76 = !{i64 113}
!77 = !{i64 116}
!78 = !{i64 120}
!79 = !{i64 124}
!80 = !{i64 127}
!81 = !{i64 131}
!82 = !{i64 135}
!83 = !{i64 138}
!84 = !{i64 142}
!85 = !{i64 146}
!86 = !{i64 150}
!87 = !{i64 153}
!88 = !{i64 157}
!89 = !{i64 167}
!90 = !{i64 170}
!91 = !{i64 173}
!92 = !{i64 177}
!93 = !{i64 181}
!94 = !{i64 184}
!95 = !{i64 188}
!96 = !{i64 192}
!97 = !{i64 195}
!98 = !{i64 199}
!99 = !{i64 203}
!100 = !{i64 207}
!101 = !{i64 210}
!102 = !{i64 214}
!103 = !{i64 218}
!104 = !{i64 221}
!105 = !{i64 224}
!106 = !{i64 227}
!107 = !{i64 230}
!108 = !{i64 234}
!109 = !{i64 238}
!110 = !{i64 241}
!111 = !{i64 244}
!112 = !{i64 248}
!113 = !{i64 262}
!114 = !{i64 265}
!115 = !{i64 266}
!116 = !{i64 267}
