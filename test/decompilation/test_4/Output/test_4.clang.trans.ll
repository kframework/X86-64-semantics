; ModuleID = 'Output/test_4.clang.trans.bc'
source_filename = "Output/test_4.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [88 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x200 = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64

define internal x86_64_sysvcc void @sub_a0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 256
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 256
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
  store i64 %7, i64* %_allin_new_bt_2, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %6, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  %_new_gep_5 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -32
  %_allin_new_bt_6 = bitcast i8* %_new_gep_5 to i64*
  store i64 %5, i64* %_allin_new_bt_6, !mcsema_real_eip !5
  %_new_gep_7 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -40
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  store i64 %4, i64* %_allin_new_bt_8, !mcsema_real_eip !6
  %_new_gep_9 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -48
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  store i64 %1, i64* %_allin_new_bt_10, !mcsema_real_eip !7
  %_new_gep_11 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -248
  %_trans_p2i_ = ptrtoint i8* %_new_gep_11 to i64
  %_trans_p2i_12 = ptrtoint i8* %_new_gep_9 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_12
  %63 = and i64 %_trans_xor_, 16, !mcsema_real_eip !8
  %64 = icmp ne i64 %63, 0, !mcsema_real_eip !8
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %65 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !8
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_, 0
  %_trans_icmp_ne_17 = icmp ne i64 %_trans_p2i_12, 200
  %_trans_xor_19 = and i64 %_trans_xor_, %_trans_p2i_12
  %68 = icmp slt i64 %_trans_xor_19, 0
  store volatile i8* %_new_gep_11, i8** %_RSP_ptr_
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -144
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %69 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !9
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -96
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %70 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !10
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -44
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %71 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 0, i32* %71, !mcsema_real_eip !11
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -48
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %72 = trunc i64 %3 to i32, !mcsema_real_eip !12
  %73 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 %72, i32* %73, !mcsema_real_eip !12
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -56
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %2, i64* %_allin_new_bt_33, !mcsema_real_eip !13
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -148
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %74 = bitcast i64* %_allin_new_bt_36 to i32*
  store i32 300, i32* %74, !mcsema_real_eip !14
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -160
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 add (i64 ptrtoint (%0* @data_0x200 to i64), i64 48), i64* %_allin_new_bt_39, !mcsema_real_eip !15
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -168
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 40, i64* %_allin_new_bt_42, !mcsema_real_eip !16
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -172
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %75 = bitcast i64* %_allin_new_bt_45 to i32*
  store i32 100, i32* %75, !mcsema_real_eip !17
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -176
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %76 = bitcast i64* %_allin_new_bt_48 to i32*
  store i32 200, i32* %76, !mcsema_real_eip !18
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -184
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 %70, i64* %_allin_new_bt_51, !mcsema_real_eip !19
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -188
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %77 = bitcast i64* %_allin_new_bt_54 to i32*
  store i32 400, i32* %77, !mcsema_real_eip !20
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -192
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %78 = bitcast i64* %_allin_new_bt_57 to i32*
  store i32 500, i32* %78, !mcsema_real_eip !21
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -196
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %79 = bitcast i64* %_allin_new_bt_60 to i32*
  store i32 600, i32* %79, !mcsema_real_eip !22
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -200
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %80 = bitcast i64* %_allin_new_bt_63 to i32*
  store i32 10, i32* %80, !mcsema_real_eip !23
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -208
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  store i64 %69, i64* %_allin_new_bt_66, !mcsema_real_eip !24
  %81 = tail call x86_64_sysvcc i64 @memcpy(i64 %70, i64 ptrtoint (%0* @data_0x200 to i64), i64 40), !mcsema_real_eip !25
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -208
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %82 = load i64, i64* %_allin_new_bt_69, !mcsema_real_eip !26
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -160
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %83 = load i64, i64* %_allin_new_bt_71, !mcsema_real_eip !27
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -168
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %84 = load i64, i64* %_allin_new_bt_74, !mcsema_real_eip !28
  %85 = tail call x86_64_sysvcc i64 @memcpy(i64 %82, i64 %83, i64 %84), !mcsema_real_eip !29
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -172
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %86 = bitcast i64* %_allin_new_bt_77 to i32*
  %87 = load i32, i32* %86, !mcsema_real_eip !30
  %88 = zext i32 %87 to i64, !mcsema_real_eip !30
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -176
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %89 = bitcast i64* %_allin_new_bt_80 to i32*
  %90 = load i32, i32* %89, !mcsema_real_eip !31
  %91 = zext i32 %90 to i64, !mcsema_real_eip !31
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -148
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %92 = bitcast i64* %_allin_new_bt_83 to i32*
  %93 = load i32, i32* %92, !mcsema_real_eip !32
  %94 = zext i32 %93 to i64, !mcsema_real_eip !32
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -188
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %95 = bitcast i64* %_allin_new_bt_86 to i32*
  %96 = load i32, i32* %95, !mcsema_real_eip !33
  %97 = zext i32 %96 to i64, !mcsema_real_eip !33
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -192
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %98 = bitcast i64* %_allin_new_bt_89 to i32*
  %99 = load i32, i32* %98, !mcsema_real_eip !34
  %100 = zext i32 %99 to i64, !mcsema_real_eip !34
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -196
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %101 = bitcast i64* %_allin_new_bt_92 to i32*
  %102 = load i32, i32* %101, !mcsema_real_eip !35
  %103 = zext i32 %102 to i64, !mcsema_real_eip !35
  %_load_rsp_ptr_93 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_94 = bitcast i8* %_load_rsp_ptr_93 to i64*
  %104 = bitcast i64* %_allin_new_bt_94 to i32*
  store i32 10, i32* %104, !mcsema_real_eip !36
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -184
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %105 = load i64, i64* %_allin_new_bt_97, !mcsema_real_eip !37
  %_load_rsp_ptr_98 = load i8*, i8** %_RSP_ptr_
  %_new_gep_99 = getelementptr i8, i8* %_load_rsp_ptr_98, i64 8
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  store i64 %105, i64* %_allin_new_bt_100, !mcsema_real_eip !38
  %_load_rsp_ptr_101 = load i8*, i8** %_RSP_ptr_
  %_new_gep_102 = getelementptr i8, i8* %_load_rsp_ptr_101, i64 16
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %106 = bitcast i64* %_allin_new_bt_103 to i32*
  store i32 10, i32* %106, !mcsema_real_eip !39
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -208
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %107 = load i64, i64* %_allin_new_bt_106, !mcsema_real_eip !40
  %_load_rsp_ptr_107 = load i8*, i8** %_RSP_ptr_
  %_new_gep_108 = getelementptr i8, i8* %_load_rsp_ptr_107, i64 24
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  store i64 %107, i64* %_allin_new_bt_109, !mcsema_real_eip !41
  %_load_rsp_ptr_110 = load i8*, i8** %_RSP_ptr_
  %_new_gep_111 = getelementptr i8, i8* %_load_rsp_ptr_110, i64 -8
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_112, !mcsema_real_eip !42
  store volatile i8* %_new_gep_111, i8** %_RSP_ptr_
  store i64 %85, i64* %RAX, !mcsema_real_eip !42
  store i64 %105, i64* %RBX, !mcsema_real_eip !42
  store i64 %97, i64* %RCX, !mcsema_real_eip !42
  store i64 %94, i64* %RDX, !mcsema_real_eip !42
  store i64 %91, i64* %RSI, !mcsema_real_eip !42
  store i64 %88, i64* %RDI, !mcsema_real_eip !42
  %_new_ptr2int_114 = ptrtoint i8* %_new_gep_111 to i64
  store volatile i64 %_new_ptr2int_114, i64* %RSP
  %_load_rbp_ptr_115 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_116 = ptrtoint i8* %_load_rbp_ptr_115 to i64
  store volatile i64 %_new_ptr2int_116, i64* %RBP
  store i64 %100, i64* %R8, !mcsema_real_eip !42
  store i64 %103, i64* %R9, !mcsema_real_eip !42
  store i64 600, i64* %R10, !mcsema_real_eip !42
  store i64 10, i64* %R11, !mcsema_real_eip !42
  store i64 40, i64* %R12, !mcsema_real_eip !42
  store i64 ptrtoint (%0* @data_0x200 to i64), i64* %R13, !mcsema_real_eip !42
  store i64 %107, i64* %R14, !mcsema_real_eip !42
  store i64 add (i64 ptrtoint (%0* @data_0x200 to i64), i64 48), i64* %R15, !mcsema_real_eip !42
  store i64 %8, i64* %RIP, !mcsema_real_eip !42
  store i1 %_trans_icmp_ne_17, i1* %CF, align 1, !mcsema_real_eip !42
  store i1 %67, i1* %PF, align 1, !mcsema_real_eip !42
  store i1 %64, i1* %AF, align 1, !mcsema_real_eip !42
  store i1 %_trans_icmp_eq_, i1* %ZF, align 1, !mcsema_real_eip !42
  store i1 %_trans_icmp_ne_, i1* %SF, align 1, !mcsema_real_eip !42
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !42
  store i1 %9, i1* %DF, align 1, !mcsema_real_eip !42
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 128, i32 8, i1 false), !mcsema_real_eip !42
  store i1 %13, i1* %FPU_B, align 1, !mcsema_real_eip !42
  store i1 %14, i1* %FPU_C3, align 1, !mcsema_real_eip !42
  store i3 %15, i3* %FPU_TOP, align 1, !mcsema_real_eip !42
  store i1 %16, i1* %FPU_C2, align 1, !mcsema_real_eip !42
  store i1 %17, i1* %FPU_C1, align 1, !mcsema_real_eip !42
  store i1 %18, i1* %FPU_C0, align 1, !mcsema_real_eip !42
  store i1 %19, i1* %FPU_ES, align 1, !mcsema_real_eip !42
  store i1 %20, i1* %FPU_SF, align 1, !mcsema_real_eip !42
  store i1 %21, i1* %FPU_PE, align 1, !mcsema_real_eip !42
  store i1 %22, i1* %FPU_UE, align 1, !mcsema_real_eip !42
  store i1 %23, i1* %FPU_OE, align 1, !mcsema_real_eip !42
  store i1 %24, i1* %FPU_ZE, align 1, !mcsema_real_eip !42
  store i1 %25, i1* %FPU_DE, align 1, !mcsema_real_eip !42
  store i1 %26, i1* %FPU_IE, align 1, !mcsema_real_eip !42
  store i1 %27, i1* %FPU_X, align 1, !mcsema_real_eip !42
  store i2 %28, i2* %FPU_RC, align 1, !mcsema_real_eip !42
  store i2 %29, i2* %FPU_PC, align 1, !mcsema_real_eip !42
  store i1 %30, i1* %FPU_PM, align 1, !mcsema_real_eip !42
  store i1 %31, i1* %FPU_UM, align 1, !mcsema_real_eip !42
  store i1 %32, i1* %FPU_OM, align 1, !mcsema_real_eip !42
  store i1 %33, i1* %FPU_ZM, align 1, !mcsema_real_eip !42
  store i1 %34, i1* %FPU_DM, align 1, !mcsema_real_eip !42
  store i1 %35, i1* %FPU_IM, align 1, !mcsema_real_eip !42
  %108 = load i64, i64* %38, align 4
  store i64 %108, i64* %37, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !42
  store i64 %41, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !42
  store i16 %42, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !42
  store i64 %43, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !42
  store i11 %44, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !42
  store i128 %45, i128* %XMM0, align 1, !mcsema_real_eip !42
  store i128 %46, i128* %XMM1, align 1, !mcsema_real_eip !42
  store i128 %47, i128* %XMM2, align 1, !mcsema_real_eip !42
  store i128 %48, i128* %XMM3, align 1, !mcsema_real_eip !42
  store i128 %49, i128* %XMM4, align 1, !mcsema_real_eip !42
  store i128 %50, i128* %XMM5, align 1, !mcsema_real_eip !42
  store i128 %51, i128* %XMM6, align 1, !mcsema_real_eip !42
  store i128 %52, i128* %XMM7, align 1, !mcsema_real_eip !42
  store i128 %53, i128* %XMM8, align 1, !mcsema_real_eip !42
  store i128 %54, i128* %XMM9, align 1, !mcsema_real_eip !42
  store i128 %55, i128* %XMM10, align 1, !mcsema_real_eip !42
  store i128 %56, i128* %XMM11, align 1, !mcsema_real_eip !42
  store i128 %57, i128* %XMM12, align 1, !mcsema_real_eip !42
  store i128 %58, i128* %XMM13, align 1, !mcsema_real_eip !42
  store i128 %59, i128* %XMM14, align 1, !mcsema_real_eip !42
  store i128 %60, i128* %XMM15, align 1, !mcsema_real_eip !42
  store i64 %61, i64* %STACK_BASE, align 1, !mcsema_real_eip !42
  store i64 %62, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !42
  %_load_rbp_ptr_130 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_130)
  %109 = load i64, i64* %RAX, !mcsema_real_eip !42
  %110 = load i64, i64* %RCX, !mcsema_real_eip !42
  %111 = load i64, i64* %RDX, !mcsema_real_eip !42
  %112 = load i64, i64* %RSI, !mcsema_real_eip !42
  %113 = load i64, i64* %RDI, !mcsema_real_eip !42
  %114 = load i64, i64* %R8, !mcsema_real_eip !42
  %115 = load i64, i64* %R9, !mcsema_real_eip !42
  %116 = load i64, i64* %R10, !mcsema_real_eip !42
  %117 = load i64, i64* %R11, !mcsema_real_eip !42
  %118 = load i64, i64* %RIP, !mcsema_real_eip !42
  %119 = load i1, i1* %DF, align 1, !mcsema_real_eip !42
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !42
  %120 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !42
  %121 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !42
  %122 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !42
  %123 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !42
  %124 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !42
  %125 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !42
  %126 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !42
  %127 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !42
  %128 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !42
  %129 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !42
  %130 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !42
  %131 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !42
  %132 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !42
  %133 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !42
  %134 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !42
  %135 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !42
  %136 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !42
  %137 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !42
  %138 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !42
  %139 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !42
  %140 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !42
  %141 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !42
  %142 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !42
  %143 = load i64, i64* %37, align 4
  store i64 %143, i64* %38, align 4
  %144 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !42
  %145 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !42
  %146 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !42
  %147 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !42
  %148 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !42
  %149 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !42
  %150 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !42
  %151 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !42
  %152 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !42
  %153 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !42
  %154 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !42
  %155 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !42
  %156 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !42
  %157 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !42
  %158 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !42
  %159 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !42
  %160 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !42
  %161 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !42
  %162 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !42
  %163 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !42
  %164 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !42
  %165 = load i64, i64* %STACK_BASE, !mcsema_real_eip !42
  %166 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !42
  %_load_rsp_ptr_117 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_118 = ptrtoint i8* %_load_rsp_ptr_117 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_118, i64 200)
  %167 = extractvalue { i64, i1 } %uadd, 0
  %168 = xor i64 %167, %_new_ptr2int_118, !mcsema_real_eip !43
  %169 = and i64 %168, 16, !mcsema_real_eip !43
  %170 = icmp ne i64 %169, 0, !mcsema_real_eip !43
  %171 = icmp slt i64 %167, 0
  %172 = icmp eq i64 %167, 0, !mcsema_real_eip !43
  %173 = xor i64 %_new_ptr2int_118, -9223372036854775808, !mcsema_real_eip !43
  %174 = and i64 %168, %173, !mcsema_real_eip !43
  %175 = icmp slt i64 %174, 0
  %176 = trunc i64 %167 to i8, !mcsema_real_eip !43
  %177 = tail call i8 @llvm.ctpop.i8(i8 %176), !mcsema_real_eip !43
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  %180 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %167 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %181 = inttoptr i64 %167 to i64*, !mcsema_real_eip !44
  %182 = load i64, i64* %181, !mcsema_real_eip !44
  %183 = add i64 %167, 8, !mcsema_real_eip !44
  %_new_int2ptr_119 = inttoptr i64 %183 to i8*
  store volatile i8* %_new_int2ptr_119, i8** %_RSP_ptr_
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !45
  %185 = load i64, i64* %184, !mcsema_real_eip !45
  %186 = add i64 %167, 16, !mcsema_real_eip !45
  %_new_int2ptr_120 = inttoptr i64 %186 to i8*
  store volatile i8* %_new_int2ptr_120, i8** %_RSP_ptr_
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !46
  %188 = load i64, i64* %187, !mcsema_real_eip !46
  %189 = add i64 %167, 24, !mcsema_real_eip !46
  %_new_int2ptr_121 = inttoptr i64 %189 to i8*
  store volatile i8* %_new_int2ptr_121, i8** %_RSP_ptr_
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !47
  %191 = load i64, i64* %190, !mcsema_real_eip !47
  %192 = add i64 %167, 32, !mcsema_real_eip !47
  %_new_int2ptr_122 = inttoptr i64 %192 to i8*
  store volatile i8* %_new_int2ptr_122, i8** %_RSP_ptr_
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !48
  %194 = load i64, i64* %193, !mcsema_real_eip !48
  %195 = add i64 %167, 40, !mcsema_real_eip !48
  %_new_int2ptr_123 = inttoptr i64 %195 to i8*
  store volatile i8* %_new_int2ptr_123, i8** %_RSP_ptr_
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !49
  %197 = load i64, i64* %196, !mcsema_real_eip !49
  %_new_int2ptr_124 = inttoptr i64 %197 to i8*
  store volatile i8* %_new_int2ptr_124, i8** %_RBP_ptr_
  %198 = add i64 %167, 56, !mcsema_real_eip !50
  %_new_int2ptr_125 = inttoptr i64 %198 to i8*
  store volatile i8* %_new_int2ptr_125, i8** %_RSP_ptr_
  store i64 %109, i64* %RAX, !mcsema_real_eip !50
  store i64 %182, i64* %RBX, !mcsema_real_eip !50
  store i64 %110, i64* %RCX, !mcsema_real_eip !50
  store i64 %111, i64* %RDX, !mcsema_real_eip !50
  store i64 %112, i64* %RSI, !mcsema_real_eip !50
  store i64 %113, i64* %RDI, !mcsema_real_eip !50
  store volatile i64 %198, i64* %RSP
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_129 = ptrtoint i8* %_load_rbp_ptr_128 to i64
  store volatile i64 %_new_ptr2int_129, i64* %RBP
  store i64 %114, i64* %R8, !mcsema_real_eip !50
  store i64 %115, i64* %R9, !mcsema_real_eip !50
  store i64 %116, i64* %R10, !mcsema_real_eip !50
  store i64 %117, i64* %R11, !mcsema_real_eip !50
  store i64 %185, i64* %R12, !mcsema_real_eip !50
  store i64 %188, i64* %R13, !mcsema_real_eip !50
  store i64 %191, i64* %R14, !mcsema_real_eip !50
  store i64 %194, i64* %R15, !mcsema_real_eip !50
  store i64 %118, i64* %RIP, !mcsema_real_eip !50
  store i1 %180, i1* %CF, align 1, !mcsema_real_eip !50
  store i1 %179, i1* %PF, align 1, !mcsema_real_eip !50
  store i1 %170, i1* %AF, align 1, !mcsema_real_eip !50
  store i1 %172, i1* %ZF, align 1, !mcsema_real_eip !50
  store i1 %171, i1* %SF, align 1, !mcsema_real_eip !50
  store i1 %175, i1* %OF, align 1, !mcsema_real_eip !50
  store i1 %119, i1* %DF, align 1, !mcsema_real_eip !50
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 128, i32 8, i1 false), !mcsema_real_eip !50
  store i1 %120, i1* %FPU_B, align 1, !mcsema_real_eip !50
  store i1 %121, i1* %FPU_C3, align 1, !mcsema_real_eip !50
  store i3 %122, i3* %FPU_TOP, align 1, !mcsema_real_eip !50
  store i1 %123, i1* %FPU_C2, align 1, !mcsema_real_eip !50
  store i1 %124, i1* %FPU_C1, align 1, !mcsema_real_eip !50
  store i1 %125, i1* %FPU_C0, align 1, !mcsema_real_eip !50
  store i1 %126, i1* %FPU_ES, align 1, !mcsema_real_eip !50
  store i1 %127, i1* %FPU_SF, align 1, !mcsema_real_eip !50
  store i1 %128, i1* %FPU_PE, align 1, !mcsema_real_eip !50
  store i1 %129, i1* %FPU_UE, align 1, !mcsema_real_eip !50
  store i1 %130, i1* %FPU_OE, align 1, !mcsema_real_eip !50
  store i1 %131, i1* %FPU_ZE, align 1, !mcsema_real_eip !50
  store i1 %132, i1* %FPU_DE, align 1, !mcsema_real_eip !50
  store i1 %133, i1* %FPU_IE, align 1, !mcsema_real_eip !50
  store i1 %134, i1* %FPU_X, align 1, !mcsema_real_eip !50
  store i2 %135, i2* %FPU_RC, align 1, !mcsema_real_eip !50
  store i2 %136, i2* %FPU_PC, align 1, !mcsema_real_eip !50
  store i1 %137, i1* %FPU_PM, align 1, !mcsema_real_eip !50
  store i1 %138, i1* %FPU_UM, align 1, !mcsema_real_eip !50
  store i1 %139, i1* %FPU_OM, align 1, !mcsema_real_eip !50
  store i1 %140, i1* %FPU_ZM, align 1, !mcsema_real_eip !50
  store i1 %141, i1* %FPU_DM, align 1, !mcsema_real_eip !50
  store i1 %142, i1* %FPU_IM, align 1, !mcsema_real_eip !50
  %199 = load i64, i64* %38, align 4
  store i64 %199, i64* %37, align 4
  store i16 %144, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !50
  store i64 %145, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !50
  store i16 %146, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !50
  store i64 %147, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !50
  store i11 %148, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !50
  store i128 %149, i128* %XMM0, align 1, !mcsema_real_eip !50
  store i128 %150, i128* %XMM1, align 1, !mcsema_real_eip !50
  store i128 %151, i128* %XMM2, align 1, !mcsema_real_eip !50
  store i128 %152, i128* %XMM3, align 1, !mcsema_real_eip !50
  store i128 %153, i128* %XMM4, align 1, !mcsema_real_eip !50
  store i128 %154, i128* %XMM5, align 1, !mcsema_real_eip !50
  store i128 %155, i128* %XMM6, align 1, !mcsema_real_eip !50
  store i128 %156, i128* %XMM7, align 1, !mcsema_real_eip !50
  store i128 %157, i128* %XMM8, align 1, !mcsema_real_eip !50
  store i128 %158, i128* %XMM9, align 1, !mcsema_real_eip !50
  store i128 %159, i128* %XMM10, align 1, !mcsema_real_eip !50
  store i128 %160, i128* %XMM11, align 1, !mcsema_real_eip !50
  store i128 %161, i128* %XMM12, align 1, !mcsema_real_eip !50
  store i128 %162, i128* %XMM13, align 1, !mcsema_real_eip !50
  store i128 %163, i128* %XMM14, align 1, !mcsema_real_eip !50
  store i128 %164, i128* %XMM15, align 1, !mcsema_real_eip !50
  store i64 %165, i64* %STACK_BASE, align 1, !mcsema_real_eip !50
  store i64 %166, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !50
  ret void, !mcsema_real_eip !50
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !51
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !51
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !51
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !51
  %1 = load i64, i64* %RBX, !mcsema_real_eip !51
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !51
  %2 = load i64, i64* %RCX, !mcsema_real_eip !51
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !51
  %3 = load i64, i64* %RDX, !mcsema_real_eip !51
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !51
  %4 = load i64, i64* %RSI, !mcsema_real_eip !51
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !51
  %5 = load i64, i64* %RDI, !mcsema_real_eip !51
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !51
  %6 = load i64, i64* %RSP, !mcsema_real_eip !51
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !51
  %7 = load i64, i64* %RBP, !mcsema_real_eip !51
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !51
  %8 = load i64, i64* %R8, !mcsema_real_eip !51
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !51
  %9 = load i64, i64* %R9, !mcsema_real_eip !51
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !51
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !51
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !51
  %10 = load i64, i64* %R12, !mcsema_real_eip !51
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !51
  %11 = load i64, i64* %R13, !mcsema_real_eip !51
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !51
  %12 = load i64, i64* %R14, !mcsema_real_eip !51
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !51
  %13 = load i64, i64* %R15, !mcsema_real_eip !51
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !51
  %14 = load i64, i64* %RIP, !mcsema_real_eip !51
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !51
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !51
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !51
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !51
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !51
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !51
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !51
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !51
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !51
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !51
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !51
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !51
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !51
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !51
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !51
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !51
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !51
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !51
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !51
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !51
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !51
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !51
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !51
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !51
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !51
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !51
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !51
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !51
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !51
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !51
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !51
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !51
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !51
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !51
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !51
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !51
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !51
  %43 = bitcast i8* %42 to i64*
  %44 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %45 = load i64, i64* %43, align 4
  store i64 %45, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !51
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !51
  %47 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !51
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !51
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !51
  %49 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !51
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !51
  %50 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !51
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !51
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !51
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !51
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !51
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !51
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !51
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !51
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !51
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !51
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !51
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !51
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !51
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !51
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !51
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !51
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !51
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !51
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !51
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !51
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !51
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !51
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !51
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !51
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !51
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !51
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !51
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !51
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !51
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !51
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !51
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !51
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !51
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !51
  %67 = load i64, i64* %STACK_BASE, !mcsema_real_eip !51
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !51
  %68 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !51
  %69 = add i64 %6, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !51
  store i64 %7, i64* %70, !mcsema_real_eip !51
  %71 = add i64 %6, -16
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !52
  store i64 %1, i64* %72, !mcsema_real_eip !52
  %73 = add i64 %69, 40, !mcsema_real_eip !53
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !53
  %75 = load i64, i64* %74, !mcsema_real_eip !53
  %76 = add i64 %69, 32, !mcsema_real_eip !54
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !54
  %78 = bitcast i64* %77 to i32*
  %79 = load i32, i32* %78, !mcsema_real_eip !54
  %80 = zext i32 %79 to i64, !mcsema_real_eip !54
  %81 = add i64 %69, 24, !mcsema_real_eip !55
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !55
  %83 = load i64, i64* %82, !mcsema_real_eip !55
  %84 = add i64 %69, 16, !mcsema_real_eip !56
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !56
  %86 = bitcast i64* %85 to i32*
  %87 = load i32, i32* %86, !mcsema_real_eip !56
  %88 = zext i32 %87 to i64, !mcsema_real_eip !56
  %89 = add i64 %69, -12, !mcsema_real_eip !57
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !57
  %91 = trunc i64 %5 to i32, !mcsema_real_eip !57
  %92 = bitcast i64* %90 to i32*
  store i32 %91, i32* %92, !mcsema_real_eip !57
  %93 = add i64 %69, -16, !mcsema_real_eip !58
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !58
  %95 = trunc i64 %4 to i32, !mcsema_real_eip !58
  %96 = bitcast i64* %94 to i32*
  store i32 %95, i32* %96, !mcsema_real_eip !58
  %97 = add i64 %69, -20, !mcsema_real_eip !59
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !59
  %99 = trunc i64 %3 to i32, !mcsema_real_eip !59
  %100 = bitcast i64* %98 to i32*
  store i32 %99, i32* %100, !mcsema_real_eip !59
  %101 = add i64 %69, -24, !mcsema_real_eip !60
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !60
  %103 = trunc i64 %2 to i32, !mcsema_real_eip !60
  %104 = bitcast i64* %102 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !60
  %105 = add i64 %69, -28, !mcsema_real_eip !61
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !61
  %107 = trunc i64 %8 to i32, !mcsema_real_eip !61
  %108 = bitcast i64* %106 to i32*
  store i32 %107, i32* %108, !mcsema_real_eip !61
  %109 = add i64 %69, -32, !mcsema_real_eip !62
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !62
  %111 = trunc i64 %9 to i32, !mcsema_real_eip !62
  %112 = bitcast i64* %110 to i32*
  store i32 %111, i32* %112, !mcsema_real_eip !62
  %113 = add i64 %69, -36, !mcsema_real_eip !63
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !63
  %115 = bitcast i64* %114 to i32*
  store i32 %87, i32* %115, !mcsema_real_eip !63
  %116 = add i64 %69, -48, !mcsema_real_eip !64
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !64
  store i64 %83, i64* %117, !mcsema_real_eip !64
  %118 = add i64 %69, -52, !mcsema_real_eip !65
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !65
  %120 = bitcast i64* %119 to i32*
  store i32 %79, i32* %120, !mcsema_real_eip !65
  %121 = add i64 %69, -64, !mcsema_real_eip !66
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !66
  store i64 %75, i64* %122, !mcsema_real_eip !66
  %123 = add i64 %69, -68, !mcsema_real_eip !67
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !67
  %125 = bitcast i64* %124 to i32*
  store i32 0, i32* %125, !mcsema_real_eip !67
  %126 = add i64 %69, -72, !mcsema_real_eip !68
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !68
  %128 = bitcast i64* %127 to i32*
  store i32 0, i32* %128, !mcsema_real_eip !68
  br label %block_0x45, !mcsema_real_eip !69

block_0x45:                                       ; preds = %block_0x51, %entry
  %RSI_val.0 = phi i64 [ %4, %entry ], [ %154, %block_0x51 ]
  %RDX_val.0 = phi i64 [ %3, %entry ], [ %151, %block_0x51 ]
  %129 = load i32, i32* %128, !mcsema_real_eip !69
  %130 = load i32, i32* %115, !mcsema_real_eip !70
  %131 = sub i32 %129, %130, !mcsema_real_eip !70
  %132 = xor i32 %131, %129, !mcsema_real_eip !70
  %133 = icmp slt i32 %131, 0
  %134 = xor i32 %130, %129, !mcsema_real_eip !70
  %135 = and i32 %132, %134, !mcsema_real_eip !70
  %136 = icmp slt i32 %135, 0
  %tmp = xor i1 %133, %136
  br i1 %tmp, label %block_0x51, label %block_0x7f, !mcsema_real_eip !71

block_0x51:                                       ; preds = %block_0x45
  %137 = sext i32 %129 to i64, !mcsema_real_eip !72
  %138 = load i64, i64* %117, !mcsema_real_eip !73
  %139 = shl nsw i64 %137, 2
  %140 = add i64 %138, %139, !mcsema_real_eip !74
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !74
  %142 = bitcast i64* %141 to i32*
  %143 = load i32, i32* %142, !mcsema_real_eip !74
  %144 = zext i32 %143 to i64, !mcsema_real_eip !74
  %145 = load i64, i64* %122, !mcsema_real_eip !75
  %146 = add i64 %145, %139, !mcsema_real_eip !76
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !76
  %148 = bitcast i64* %147 to i32*
  %149 = load i32, i32* %148, !mcsema_real_eip !76
  %150 = sub i32 %143, %149, !mcsema_real_eip !76
  %151 = zext i32 %150 to i64, !mcsema_real_eip !76
  %152 = load i32, i32* %125, !mcsema_real_eip !77
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %150, i32 %152)
  %153 = extractvalue { i32, i1 } %uadd, 0
  %154 = zext i32 %153 to i64, !mcsema_real_eip !78
  store i32 %153, i32* %125, !mcsema_real_eip !79
  %155 = load i32, i32* %128, !mcsema_real_eip !80
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %155, i32 1)
  %156 = extractvalue { i32, i1 } %uadd71, 0
  store i32 %156, i32* %128, !mcsema_real_eip !81
  br label %block_0x45, !mcsema_real_eip !82

block_0x7f:                                       ; preds = %block_0x45
  %157 = load i32, i32* %125, !mcsema_real_eip !83
  %158 = zext i32 %157 to i64, !mcsema_real_eip !83
  %159 = load i32, i32* %92, !mcsema_real_eip !84
  %160 = load i32, i32* %96, !mcsema_real_eip !85
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %159, i32 %160)
  %161 = extractvalue { i32, i1 } %uadd72, 0
  %162 = load i32, i32* %100, !mcsema_real_eip !86
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %161, i32 %162)
  %163 = extractvalue { i32, i1 } %uadd73, 0
  %164 = load i32, i32* %104, !mcsema_real_eip !87
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %163, i32 %164)
  %165 = extractvalue { i32, i1 } %uadd74, 0
  %166 = load i32, i32* %108, !mcsema_real_eip !88
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %165, i32 %166)
  %167 = extractvalue { i32, i1 } %uadd75, 0
  %168 = load i32, i32* %112, !mcsema_real_eip !89
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %167, i32 %168)
  %169 = extractvalue { i32, i1 } %uadd76, 0
  %170 = xor i32 %169, %168, !mcsema_real_eip !89
  %171 = xor i32 %170, %167, !mcsema_real_eip !89
  %172 = and i32 %171, 16, !mcsema_real_eip !89
  %173 = icmp ne i32 %172, 0, !mcsema_real_eip !89
  %174 = icmp eq i32 %169, 0, !mcsema_real_eip !89
  %175 = trunc i32 %169 to i8, !mcsema_real_eip !89
  %176 = tail call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !89
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  %179 = extractvalue { i32, i1 } %uadd76, 1
  %180 = zext i32 %169 to i64, !mcsema_real_eip !89
  %181 = sext i32 %157 to i64, !mcsema_real_eip !90
  %182 = sext i32 %169 to i64, !mcsema_real_eip !90
  %183 = mul i64 %181, %182, !mcsema_real_eip !90
  %184 = mul i32 %157, %169, !mcsema_real_eip !90
  %185 = sext i32 %184 to i64, !mcsema_real_eip !90
  %186 = icmp ne i64 %185, %183, !mcsema_real_eip !90
  %187 = zext i32 %184 to i64, !mcsema_real_eip !90
  %188 = load i64, i64* %72, !mcsema_real_eip !91
  %189 = add i64 %71, 8, !mcsema_real_eip !91
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !92
  %191 = load i64, i64* %190, !mcsema_real_eip !92
  %192 = add i64 %71, 24, !mcsema_real_eip !93
  store i64 %187, i64* %RAX, !mcsema_real_eip !93
  store i64 %188, i64* %RBX, !mcsema_real_eip !93
  store i64 %180, i64* %RCX, !mcsema_real_eip !93
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !93
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !93
  store i64 %5, i64* %RDI, !mcsema_real_eip !93
  store i64 %192, i64* %RSP, !mcsema_real_eip !93
  store i64 %191, i64* %RBP, !mcsema_real_eip !93
  store i64 %8, i64* %R8, !mcsema_real_eip !93
  store i64 %9, i64* %R9, !mcsema_real_eip !93
  store i64 %80, i64* %R10, !mcsema_real_eip !93
  store i64 %83, i64* %R11, !mcsema_real_eip !93
  store i64 %10, i64* %R12, !mcsema_real_eip !93
  store i64 %11, i64* %R13, !mcsema_real_eip !93
  store i64 %12, i64* %R14, !mcsema_real_eip !93
  store i64 %13, i64* %R15, !mcsema_real_eip !93
  store i64 %14, i64* %RIP, !mcsema_real_eip !93
  store i1 %179, i1* %CF, align 1, !mcsema_real_eip !93
  store i1 %178, i1* %PF, align 1, !mcsema_real_eip !93
  store i1 %173, i1* %AF, align 1, !mcsema_real_eip !93
  store i1 %174, i1* %ZF, align 1, !mcsema_real_eip !93
  store i1 %186, i1* %SF, align 1, !mcsema_real_eip !93
  store i1 %186, i1* %OF, align 1, !mcsema_real_eip !93
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !93
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !93
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !93
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !93
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !93
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !93
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !93
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !93
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !93
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !93
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !93
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !93
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !93
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !93
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !93
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !93
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !93
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !93
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !93
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !93
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !93
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !93
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !93
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !93
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !93
  %193 = load i64, i64* %44, align 4
  store i64 %193, i64* %43, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !93
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !93
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !93
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !93
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !93
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !93
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !93
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !93
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !93
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !93
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !93
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !93
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !93
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !93
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !93
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !93
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !93
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !93
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !93
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !93
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !93
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !93
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !93
  ret void, !mcsema_real_eip !93
}

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_a0(%struct.regs* %0)
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
  %_local_stack_start_ptr_ = alloca i8, i64 80
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 80
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !51
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !51
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !51
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !51
  %1 = load i64, i64* %RBX, !mcsema_real_eip !51
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !51
  %2 = load i64, i64* %RCX, !mcsema_real_eip !51
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !51
  %3 = load i64, i64* %RDX, !mcsema_real_eip !51
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !51
  %4 = load i64, i64* %RSI, !mcsema_real_eip !51
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !51
  %5 = load i64, i64* %RDI, !mcsema_real_eip !51
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !51
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !51
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !51
  %6 = load i64, i64* %R8, !mcsema_real_eip !51
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !51
  %7 = load i64, i64* %R9, !mcsema_real_eip !51
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !51
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !51
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !51
  %8 = load i64, i64* %R12, !mcsema_real_eip !51
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !51
  %9 = load i64, i64* %R13, !mcsema_real_eip !51
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !51
  %10 = load i64, i64* %R14, !mcsema_real_eip !51
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !51
  %11 = load i64, i64* %R15, !mcsema_real_eip !51
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !51
  %12 = load i64, i64* %RIP, !mcsema_real_eip !51
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !51
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !51
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !51
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !51
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !51
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !51
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !51
  %13 = load i1, i1* %DF, align 1, !mcsema_real_eip !51
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !51
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !51
  %16 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !51
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !51
  %17 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !51
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !51
  %18 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !51
  %19 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !51
  %20 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !51
  %21 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !51
  %22 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !51
  %23 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !51
  %24 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !51
  %25 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !51
  %26 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !51
  %27 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !51
  %28 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !51
  %29 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !51
  %30 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !51
  %31 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !51
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !51
  %32 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !51
  %33 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !51
  %34 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !51
  %35 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !51
  %36 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !51
  %37 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !51
  %38 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !51
  %39 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !51
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !51
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !51
  %47 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !51
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !51
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !51
  %49 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !51
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !51
  %50 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !51
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !51
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !51
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !51
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !51
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !51
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !51
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !51
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !51
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !51
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !51
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !51
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !51
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !51
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !51
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !51
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !51
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !51
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !51
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !51
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !51
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !51
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !51
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !51
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !51
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !51
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !51
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !51
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !51
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !51
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !51
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !51
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !51
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !51
  %67 = load i64, i64* %STACK_BASE, !mcsema_real_eip !51
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !51
  %68 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !51
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  store i64 %1, i64* %_allin_new_bt_2, !mcsema_real_eip !52
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 40
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %_ptr_to_int_108 = ptrtoint i64* %_allin_new_bt_5 to i64
  %_offset_above_rbp_111 = sub i64 %_ptr_to_int_108, %_local_end_to_int_
  %_pot_address_in_parent_stack_112 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_111
  %_cond1_113 = icmp ugt i8* %_new_gep_4, %_local_stack_end_ptr_
  %_cond2_1_114 = icmp ugt i8* %_new_gep_4, %_parent_stack_end_ptr_
  %_cond2_2_115 = icmp ult i8* %_new_gep_4, %_parent_stack_start_ptr_
  %_cond2_116 = or i1 %_cond2_1_114, %_cond2_2_115
  %_cond4_117 = icmp ule i8* %_pot_address_in_parent_stack_112, %_parent_stack_end_ptr_
  %_cond1_n_cond2_118 = and i1 %_cond1_113, %_cond2_116
  %_cond1_n_cond2_cond3_119 = and i1 %_cond1_n_cond2_118, %_cond4_117
  br i1 %_cond1_n_cond2_cond3_119, label %69, label %70

; <label>:69:                                     ; preds = %44
  %_address_in_parent_stack_bt_121 = bitcast i8* %_pot_address_in_parent_stack_112 to i64*
  br label %70

; <label>:70:                                     ; preds = %44, %69
  %71 = phi i64* [ %_allin_new_bt_5, %44 ], [ %_address_in_parent_stack_bt_121, %69 ]
  %_new_load_122 = load i64, i64* %71
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 32
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %72 = bitcast i64* %_allin_new_bt_7 to i32*
  %_ptr_to_int_123 = ptrtoint i32* %72 to i64
  %_ptr_bt_125 = bitcast i32* %72 to i8*
  %_offset_above_rbp_126 = sub i64 %_ptr_to_int_123, %_local_end_to_int_
  %_pot_address_in_parent_stack_127 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_126
  %_cond1_128 = icmp ugt i8* %_ptr_bt_125, %_local_stack_end_ptr_
  %_cond2_1_129 = icmp ugt i8* %_ptr_bt_125, %_parent_stack_end_ptr_
  %_cond2_2_130 = icmp ult i8* %_ptr_bt_125, %_parent_stack_start_ptr_
  %_cond2_131 = or i1 %_cond2_1_129, %_cond2_2_130
  %_cond4_132 = icmp ule i8* %_pot_address_in_parent_stack_127, %_parent_stack_end_ptr_
  %_cond1_n_cond2_133 = and i1 %_cond1_128, %_cond2_131
  %_cond1_n_cond2_cond3_134 = and i1 %_cond1_n_cond2_133, %_cond4_132
  br i1 %_cond1_n_cond2_cond3_134, label %73, label %74

; <label>:73:                                     ; preds = %70
  %_address_in_parent_stack_bt_136 = bitcast i8* %_pot_address_in_parent_stack_127 to i32*
  br label %74

; <label>:74:                                     ; preds = %70, %73
  %75 = phi i32* [ %72, %70 ], [ %_address_in_parent_stack_bt_136, %73 ]
  %_new_load_137 = load i32, i32* %75
  %76 = zext i32 %_new_load_137 to i64, !mcsema_real_eip !54
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 24
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %_ptr_to_int_138 = ptrtoint i64* %_allin_new_bt_10 to i64
  %_offset_above_rbp_141 = sub i64 %_ptr_to_int_138, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  br i1 %_cond1_n_cond2_cond3_149, label %77, label %78

; <label>:77:                                     ; preds = %74
  %_address_in_parent_stack_bt_151 = bitcast i8* %_pot_address_in_parent_stack_142 to i64*
  br label %78

; <label>:78:                                     ; preds = %74, %77
  %79 = phi i64* [ %_allin_new_bt_10, %74 ], [ %_address_in_parent_stack_bt_151, %77 ]
  %_new_load_152 = load i64, i64* %79
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 16
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %80 = bitcast i64* %_allin_new_bt_12 to i32*
  %_ptr_to_int_153 = ptrtoint i32* %80 to i64
  %_ptr_bt_155 = bitcast i32* %80 to i8*
  %_offset_above_rbp_156 = sub i64 %_ptr_to_int_153, %_local_end_to_int_
  %_pot_address_in_parent_stack_157 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_156
  %_cond1_158 = icmp ugt i8* %_ptr_bt_155, %_local_stack_end_ptr_
  %_cond2_1_159 = icmp ugt i8* %_ptr_bt_155, %_parent_stack_end_ptr_
  %_cond2_2_160 = icmp ult i8* %_ptr_bt_155, %_parent_stack_start_ptr_
  %_cond2_161 = or i1 %_cond2_1_159, %_cond2_2_160
  %_cond4_162 = icmp ule i8* %_pot_address_in_parent_stack_157, %_parent_stack_end_ptr_
  %_cond1_n_cond2_163 = and i1 %_cond1_158, %_cond2_161
  %_cond1_n_cond2_cond3_164 = and i1 %_cond1_n_cond2_163, %_cond4_162
  br i1 %_cond1_n_cond2_cond3_164, label %81, label %82

; <label>:81:                                     ; preds = %78
  %_address_in_parent_stack_bt_166 = bitcast i8* %_pot_address_in_parent_stack_157 to i32*
  br label %82

; <label>:82:                                     ; preds = %78, %81
  %83 = phi i32* [ %80, %78 ], [ %_address_in_parent_stack_bt_166, %81 ]
  %_new_load_167 = load i32, i32* %83
  %84 = zext i32 %_new_load_167 to i64, !mcsema_real_eip !56
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -12
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %85 = trunc i64 %5 to i32, !mcsema_real_eip !57
  %86 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %85, i32* %86, !mcsema_real_eip !57
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %87 = trunc i64 %4 to i32, !mcsema_real_eip !58
  %88 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 %87, i32* %88, !mcsema_real_eip !58
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -20
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %89 = trunc i64 %3 to i32, !mcsema_real_eip !59
  %90 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 %89, i32* %90, !mcsema_real_eip !59
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %91 = trunc i64 %2 to i32, !mcsema_real_eip !60
  %92 = bitcast i64* %_allin_new_bt_24 to i32*
  store i32 %91, i32* %92, !mcsema_real_eip !60
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -28
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %93 = trunc i64 %6 to i32, !mcsema_real_eip !61
  %94 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 %93, i32* %94, !mcsema_real_eip !61
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -32
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %95 = trunc i64 %7 to i32, !mcsema_real_eip !62
  %96 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 %95, i32* %96, !mcsema_real_eip !62
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -36
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %97 = bitcast i64* %_allin_new_bt_33 to i32*
  store i32 %_new_load_167, i32* %97, !mcsema_real_eip !63
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -48
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  store i64 %_new_load_152, i64* %_allin_new_bt_36, !mcsema_real_eip !64
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -52
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %98 = bitcast i64* %_allin_new_bt_39 to i32*
  store i32 %_new_load_137, i32* %98, !mcsema_real_eip !65
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -64
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 %_new_load_122, i64* %_allin_new_bt_42, !mcsema_real_eip !66
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -68
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %99 = bitcast i64* %_allin_new_bt_45 to i32*
  store i32 0, i32* %99, !mcsema_real_eip !67
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -72
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %100 = bitcast i64* %_allin_new_bt_48 to i32*
  store i32 0, i32* %100, !mcsema_real_eip !68
  br label %block_0x45, !mcsema_real_eip !69

block_0x45:                                       ; preds = %154, %82
  %RSI_val.0 = phi i64 [ %4, %82 ], [ %151, %154 ]
  %RDX_val.0 = phi i64 [ %3, %82 ], [ %145, %154 ]
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -72
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %101 = bitcast i64* %_allin_new_bt_51 to i32*
  %_ptr_to_int_168 = ptrtoint i32* %101 to i64
  %_ptr_bt_170 = bitcast i32* %101 to i8*
  %_offset_above_rbp_171 = sub i64 %_ptr_to_int_168, %_local_end_to_int_
  %_pot_address_in_parent_stack_172 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_171
  %_cond1_173 = icmp ugt i8* %_ptr_bt_170, %_local_stack_end_ptr_
  %_cond2_1_174 = icmp ugt i8* %_ptr_bt_170, %_parent_stack_end_ptr_
  %_cond2_2_175 = icmp ult i8* %_ptr_bt_170, %_parent_stack_start_ptr_
  %_cond2_176 = or i1 %_cond2_1_174, %_cond2_2_175
  %_cond4_177 = icmp ule i8* %_pot_address_in_parent_stack_172, %_parent_stack_end_ptr_
  %_cond1_n_cond2_178 = and i1 %_cond1_173, %_cond2_176
  %_cond1_n_cond2_cond3_179 = and i1 %_cond1_n_cond2_178, %_cond4_177
  br i1 %_cond1_n_cond2_cond3_179, label %102, label %103

; <label>:102:                                    ; preds = %block_0x45
  %_address_in_parent_stack_bt_181 = bitcast i8* %_pot_address_in_parent_stack_172 to i32*
  br label %103

; <label>:103:                                    ; preds = %block_0x45, %102
  %104 = phi i32* [ %101, %block_0x45 ], [ %_address_in_parent_stack_bt_181, %102 ]
  %_new_load_182 = load i32, i32* %104
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -36
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %105 = bitcast i64* %_allin_new_bt_54 to i32*
  %_ptr_to_int_183 = ptrtoint i32* %105 to i64
  %_ptr_bt_185 = bitcast i32* %105 to i8*
  %_offset_above_rbp_186 = sub i64 %_ptr_to_int_183, %_local_end_to_int_
  %_pot_address_in_parent_stack_187 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_186
  %_cond1_188 = icmp ugt i8* %_ptr_bt_185, %_local_stack_end_ptr_
  %_cond2_1_189 = icmp ugt i8* %_ptr_bt_185, %_parent_stack_end_ptr_
  %_cond2_2_190 = icmp ult i8* %_ptr_bt_185, %_parent_stack_start_ptr_
  %_cond2_191 = or i1 %_cond2_1_189, %_cond2_2_190
  %_cond4_192 = icmp ule i8* %_pot_address_in_parent_stack_187, %_parent_stack_end_ptr_
  %_cond1_n_cond2_193 = and i1 %_cond1_188, %_cond2_191
  %_cond1_n_cond2_cond3_194 = and i1 %_cond1_n_cond2_193, %_cond4_192
  br i1 %_cond1_n_cond2_cond3_194, label %106, label %107

; <label>:106:                                    ; preds = %103
  %_address_in_parent_stack_bt_196 = bitcast i8* %_pot_address_in_parent_stack_187 to i32*
  br label %107

; <label>:107:                                    ; preds = %103, %106
  %108 = phi i32* [ %105, %103 ], [ %_address_in_parent_stack_bt_196, %106 ]
  %_new_load_197 = load i32, i32* %108
  %109 = sub i32 %_new_load_182, %_new_load_197, !mcsema_real_eip !70
  %110 = xor i32 %109, %_new_load_182, !mcsema_real_eip !70
  %111 = icmp slt i32 %109, 0
  %112 = xor i32 %_new_load_197, %_new_load_182, !mcsema_real_eip !70
  %113 = and i32 %110, %112, !mcsema_real_eip !70
  %114 = icmp slt i32 %113, 0
  %tmp = xor i1 %111, %114
  br i1 %tmp, label %block_0x51, label %block_0x7f, !mcsema_real_eip !71

block_0x51:                                       ; preds = %107
  br i1 %_cond1_n_cond2_cond3_179, label %115, label %116

; <label>:115:                                    ; preds = %block_0x51
  %_address_in_parent_stack_bt_211 = bitcast i8* %_pot_address_in_parent_stack_172 to i32*
  br label %116

; <label>:116:                                    ; preds = %block_0x51, %115
  %117 = phi i32* [ %101, %block_0x51 ], [ %_address_in_parent_stack_bt_211, %115 ]
  %_new_load_212 = load i32, i32* %117
  %118 = sext i32 %_new_load_212 to i64, !mcsema_real_eip !72
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -48
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %_ptr_to_int_213 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_216 = sub i64 %_ptr_to_int_213, %_local_end_to_int_
  %_pot_address_in_parent_stack_217 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_cond1_218 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_219 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_220 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_221 = or i1 %_cond2_1_219, %_cond2_2_220
  %_cond4_222 = icmp ule i8* %_pot_address_in_parent_stack_217, %_parent_stack_end_ptr_
  %_cond1_n_cond2_223 = and i1 %_cond1_218, %_cond2_221
  %_cond1_n_cond2_cond3_224 = and i1 %_cond1_n_cond2_223, %_cond4_222
  br i1 %_cond1_n_cond2_cond3_224, label %119, label %120

; <label>:119:                                    ; preds = %116
  %_address_in_parent_stack_bt_226 = bitcast i8* %_pot_address_in_parent_stack_217 to i64*
  br label %120

; <label>:120:                                    ; preds = %116, %119
  %121 = phi i64* [ %_allin_new_bt_60, %116 ], [ %_address_in_parent_stack_bt_226, %119 ]
  %_new_load_227 = load i64, i64* %121
  %122 = shl nsw i64 %118, 2
  %123 = add i64 %_new_load_227, %122, !mcsema_real_eip !74
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !74
  %125 = bitcast i64* %124 to i32*
  %_ptr_to_int_228 = ptrtoint i32* %125 to i64
  %_ptr_bt_230 = bitcast i32* %125 to i8*
  %_offset_above_rbp_231 = sub i64 %_ptr_to_int_228, %_local_end_to_int_
  %_pot_address_in_parent_stack_232 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_231
  %_cond1_233 = icmp ugt i8* %_ptr_bt_230, %_local_stack_end_ptr_
  %_cond2_1_234 = icmp ugt i8* %_ptr_bt_230, %_parent_stack_end_ptr_
  %_cond2_2_235 = icmp ult i8* %_ptr_bt_230, %_parent_stack_start_ptr_
  %_cond2_236 = or i1 %_cond2_1_234, %_cond2_2_235
  %_cond4_237 = icmp ule i8* %_pot_address_in_parent_stack_232, %_parent_stack_end_ptr_
  %_cond1_n_cond2_238 = and i1 %_cond1_233, %_cond2_236
  %_cond1_n_cond2_cond3_239 = and i1 %_cond1_n_cond2_238, %_cond4_237
  br i1 %_cond1_n_cond2_cond3_239, label %126, label %127

; <label>:126:                                    ; preds = %120
  %_address_in_parent_stack_bt_241 = bitcast i8* %_pot_address_in_parent_stack_232 to i32*
  br label %127

; <label>:127:                                    ; preds = %120, %126
  %128 = phi i32* [ %125, %120 ], [ %_address_in_parent_stack_bt_241, %126 ]
  %_new_load_242 = load i32, i32* %128
  %129 = zext i32 %_new_load_242 to i64, !mcsema_real_eip !74
  br i1 %_cond1_n_cond2_cond3_179, label %130, label %131

; <label>:130:                                    ; preds = %127
  %_address_in_parent_stack_bt_256 = bitcast i8* %_pot_address_in_parent_stack_172 to i32*
  br label %131

; <label>:131:                                    ; preds = %127, %130
  %132 = phi i32* [ %101, %127 ], [ %_address_in_parent_stack_bt_256, %130 ]
  %_new_load_257 = load i32, i32* %132
  %133 = sext i32 %_new_load_257 to i64, !mcsema_real_eip !94
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -64
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %_ptr_to_int_258 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_261 = sub i64 %_ptr_to_int_258, %_local_end_to_int_
  %_pot_address_in_parent_stack_262 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_261
  %_cond1_263 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_264 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_265 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_266 = or i1 %_cond2_1_264, %_cond2_2_265
  %_cond4_267 = icmp ule i8* %_pot_address_in_parent_stack_262, %_parent_stack_end_ptr_
  %_cond1_n_cond2_268 = and i1 %_cond1_263, %_cond2_266
  %_cond1_n_cond2_cond3_269 = and i1 %_cond1_n_cond2_268, %_cond4_267
  br i1 %_cond1_n_cond2_cond3_269, label %134, label %135

; <label>:134:                                    ; preds = %131
  %_address_in_parent_stack_bt_271 = bitcast i8* %_pot_address_in_parent_stack_262 to i64*
  br label %135

; <label>:135:                                    ; preds = %131, %134
  %136 = phi i64* [ %_allin_new_bt_66, %131 ], [ %_address_in_parent_stack_bt_271, %134 ]
  %_new_load_272 = load i64, i64* %136
  %137 = shl nsw i64 %133, 2
  %138 = add i64 %_new_load_272, %137, !mcsema_real_eip !76
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !76
  %140 = bitcast i64* %139 to i32*
  %_ptr_to_int_273 = ptrtoint i32* %140 to i64
  %_ptr_bt_275 = bitcast i32* %140 to i8*
  %_offset_above_rbp_276 = sub i64 %_ptr_to_int_273, %_local_end_to_int_
  %_pot_address_in_parent_stack_277 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_276
  %_cond1_278 = icmp ugt i8* %_ptr_bt_275, %_local_stack_end_ptr_
  %_cond2_1_279 = icmp ugt i8* %_ptr_bt_275, %_parent_stack_end_ptr_
  %_cond2_2_280 = icmp ult i8* %_ptr_bt_275, %_parent_stack_start_ptr_
  %_cond2_281 = or i1 %_cond2_1_279, %_cond2_2_280
  %_cond4_282 = icmp ule i8* %_pot_address_in_parent_stack_277, %_parent_stack_end_ptr_
  %_cond1_n_cond2_283 = and i1 %_cond1_278, %_cond2_281
  %_cond1_n_cond2_cond3_284 = and i1 %_cond1_n_cond2_283, %_cond4_282
  br i1 %_cond1_n_cond2_cond3_284, label %141, label %142

; <label>:141:                                    ; preds = %135
  %_address_in_parent_stack_bt_286 = bitcast i8* %_pot_address_in_parent_stack_277 to i32*
  br label %142

; <label>:142:                                    ; preds = %135, %141
  %143 = phi i32* [ %140, %135 ], [ %_address_in_parent_stack_bt_286, %141 ]
  %_new_load_287 = load i32, i32* %143
  %144 = sub i32 %_new_load_242, %_new_load_287, !mcsema_real_eip !76
  %145 = zext i32 %144 to i64, !mcsema_real_eip !76
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -68
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %146 = bitcast i64* %_allin_new_bt_69 to i32*
  %_ptr_to_int_288 = ptrtoint i32* %146 to i64
  %_ptr_bt_290 = bitcast i32* %146 to i8*
  %_offset_above_rbp_291 = sub i64 %_ptr_to_int_288, %_local_end_to_int_
  %_pot_address_in_parent_stack_292 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_291
  %_cond1_293 = icmp ugt i8* %_ptr_bt_290, %_local_stack_end_ptr_
  %_cond2_1_294 = icmp ugt i8* %_ptr_bt_290, %_parent_stack_end_ptr_
  %_cond2_2_295 = icmp ult i8* %_ptr_bt_290, %_parent_stack_start_ptr_
  %_cond2_296 = or i1 %_cond2_1_294, %_cond2_2_295
  %_cond4_297 = icmp ule i8* %_pot_address_in_parent_stack_292, %_parent_stack_end_ptr_
  %_cond1_n_cond2_298 = and i1 %_cond1_293, %_cond2_296
  %_cond1_n_cond2_cond3_299 = and i1 %_cond1_n_cond2_298, %_cond4_297
  br i1 %_cond1_n_cond2_cond3_299, label %147, label %148

; <label>:147:                                    ; preds = %142
  %_address_in_parent_stack_bt_301 = bitcast i8* %_pot_address_in_parent_stack_292 to i32*
  br label %148

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i32* [ %146, %142 ], [ %_address_in_parent_stack_bt_301, %147 ]
  %_new_load_302 = load i32, i32* %149
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %144, i32 %_new_load_302)
  %150 = extractvalue { i32, i1 } %uadd, 0
  %151 = zext i32 %150 to i64, !mcsema_real_eip !78
  store i32 %150, i32* %146, !mcsema_real_eip !79
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -72
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %152 = bitcast i64* %_allin_new_bt_75 to i32*
  %_ptr_to_int_303 = ptrtoint i32* %152 to i64
  %_ptr_bt_305 = bitcast i32* %152 to i8*
  %_offset_above_rbp_306 = sub i64 %_ptr_to_int_303, %_local_end_to_int_
  %_pot_address_in_parent_stack_307 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_306
  %_cond1_308 = icmp ugt i8* %_ptr_bt_305, %_local_stack_end_ptr_
  %_cond2_1_309 = icmp ugt i8* %_ptr_bt_305, %_parent_stack_end_ptr_
  %_cond2_2_310 = icmp ult i8* %_ptr_bt_305, %_parent_stack_start_ptr_
  %_cond2_311 = or i1 %_cond2_1_309, %_cond2_2_310
  %_cond4_312 = icmp ule i8* %_pot_address_in_parent_stack_307, %_parent_stack_end_ptr_
  %_cond1_n_cond2_313 = and i1 %_cond1_308, %_cond2_311
  %_cond1_n_cond2_cond3_314 = and i1 %_cond1_n_cond2_313, %_cond4_312
  br i1 %_cond1_n_cond2_cond3_314, label %153, label %154

; <label>:153:                                    ; preds = %148
  %_address_in_parent_stack_bt_316 = bitcast i8* %_pot_address_in_parent_stack_307 to i32*
  br label %154

; <label>:154:                                    ; preds = %148, %153
  %155 = phi i32* [ %152, %148 ], [ %_address_in_parent_stack_bt_316, %153 ]
  %_new_load_317 = load i32, i32* %155
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_317, i32 1)
  %156 = extractvalue { i32, i1 } %uadd71, 0
  store i32 %156, i32* %152, !mcsema_real_eip !81
  br label %block_0x45, !mcsema_real_eip !82

block_0x7f:                                       ; preds = %107
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -68
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %157 = bitcast i64* %_allin_new_bt_80 to i32*
  %_ptr_to_int_318 = ptrtoint i32* %157 to i64
  %_ptr_bt_320 = bitcast i32* %157 to i8*
  %_offset_above_rbp_321 = sub i64 %_ptr_to_int_318, %_local_end_to_int_
  %_pot_address_in_parent_stack_322 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_321
  %_cond1_323 = icmp ugt i8* %_ptr_bt_320, %_local_stack_end_ptr_
  %_cond2_1_324 = icmp ugt i8* %_ptr_bt_320, %_parent_stack_end_ptr_
  %_cond2_2_325 = icmp ult i8* %_ptr_bt_320, %_parent_stack_start_ptr_
  %_cond2_326 = or i1 %_cond2_1_324, %_cond2_2_325
  %_cond4_327 = icmp ule i8* %_pot_address_in_parent_stack_322, %_parent_stack_end_ptr_
  %_cond1_n_cond2_328 = and i1 %_cond1_323, %_cond2_326
  %_cond1_n_cond2_cond3_329 = and i1 %_cond1_n_cond2_328, %_cond4_327
  br i1 %_cond1_n_cond2_cond3_329, label %158, label %159

; <label>:158:                                    ; preds = %block_0x7f
  %_address_in_parent_stack_bt_331 = bitcast i8* %_pot_address_in_parent_stack_322 to i32*
  br label %159

; <label>:159:                                    ; preds = %block_0x7f, %158
  %160 = phi i32* [ %157, %block_0x7f ], [ %_address_in_parent_stack_bt_331, %158 ]
  %_new_load_332 = load i32, i32* %160
  %161 = zext i32 %_new_load_332 to i64, !mcsema_real_eip !83
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -12
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %162 = bitcast i64* %_allin_new_bt_83 to i32*
  %_ptr_to_int_333 = ptrtoint i32* %162 to i64
  %_ptr_bt_335 = bitcast i32* %162 to i8*
  %_offset_above_rbp_336 = sub i64 %_ptr_to_int_333, %_local_end_to_int_
  %_pot_address_in_parent_stack_337 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_336
  %_cond1_338 = icmp ugt i8* %_ptr_bt_335, %_local_stack_end_ptr_
  %_cond2_1_339 = icmp ugt i8* %_ptr_bt_335, %_parent_stack_end_ptr_
  %_cond2_2_340 = icmp ult i8* %_ptr_bt_335, %_parent_stack_start_ptr_
  %_cond2_341 = or i1 %_cond2_1_339, %_cond2_2_340
  %_cond4_342 = icmp ule i8* %_pot_address_in_parent_stack_337, %_parent_stack_end_ptr_
  %_cond1_n_cond2_343 = and i1 %_cond1_338, %_cond2_341
  %_cond1_n_cond2_cond3_344 = and i1 %_cond1_n_cond2_343, %_cond4_342
  br i1 %_cond1_n_cond2_cond3_344, label %163, label %164

; <label>:163:                                    ; preds = %159
  %_address_in_parent_stack_bt_346 = bitcast i8* %_pot_address_in_parent_stack_337 to i32*
  br label %164

; <label>:164:                                    ; preds = %159, %163
  %165 = phi i32* [ %162, %159 ], [ %_address_in_parent_stack_bt_346, %163 ]
  %_new_load_347 = load i32, i32* %165
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -16
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %166 = bitcast i64* %_allin_new_bt_86 to i32*
  %_ptr_to_int_348 = ptrtoint i32* %166 to i64
  %_ptr_bt_350 = bitcast i32* %166 to i8*
  %_offset_above_rbp_351 = sub i64 %_ptr_to_int_348, %_local_end_to_int_
  %_pot_address_in_parent_stack_352 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_351
  %_cond1_353 = icmp ugt i8* %_ptr_bt_350, %_local_stack_end_ptr_
  %_cond2_1_354 = icmp ugt i8* %_ptr_bt_350, %_parent_stack_end_ptr_
  %_cond2_2_355 = icmp ult i8* %_ptr_bt_350, %_parent_stack_start_ptr_
  %_cond2_356 = or i1 %_cond2_1_354, %_cond2_2_355
  %_cond4_357 = icmp ule i8* %_pot_address_in_parent_stack_352, %_parent_stack_end_ptr_
  %_cond1_n_cond2_358 = and i1 %_cond1_353, %_cond2_356
  %_cond1_n_cond2_cond3_359 = and i1 %_cond1_n_cond2_358, %_cond4_357
  br i1 %_cond1_n_cond2_cond3_359, label %167, label %168

; <label>:167:                                    ; preds = %164
  %_address_in_parent_stack_bt_361 = bitcast i8* %_pot_address_in_parent_stack_352 to i32*
  br label %168

; <label>:168:                                    ; preds = %164, %167
  %169 = phi i32* [ %166, %164 ], [ %_address_in_parent_stack_bt_361, %167 ]
  %_new_load_362 = load i32, i32* %169
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_347, i32 %_new_load_362)
  %170 = extractvalue { i32, i1 } %uadd72, 0
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -20
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %171 = bitcast i64* %_allin_new_bt_89 to i32*
  %_ptr_to_int_363 = ptrtoint i32* %171 to i64
  %_ptr_bt_365 = bitcast i32* %171 to i8*
  %_offset_above_rbp_366 = sub i64 %_ptr_to_int_363, %_local_end_to_int_
  %_pot_address_in_parent_stack_367 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_366
  %_cond1_368 = icmp ugt i8* %_ptr_bt_365, %_local_stack_end_ptr_
  %_cond2_1_369 = icmp ugt i8* %_ptr_bt_365, %_parent_stack_end_ptr_
  %_cond2_2_370 = icmp ult i8* %_ptr_bt_365, %_parent_stack_start_ptr_
  %_cond2_371 = or i1 %_cond2_1_369, %_cond2_2_370
  %_cond4_372 = icmp ule i8* %_pot_address_in_parent_stack_367, %_parent_stack_end_ptr_
  %_cond1_n_cond2_373 = and i1 %_cond1_368, %_cond2_371
  %_cond1_n_cond2_cond3_374 = and i1 %_cond1_n_cond2_373, %_cond4_372
  br i1 %_cond1_n_cond2_cond3_374, label %172, label %173

; <label>:172:                                    ; preds = %168
  %_address_in_parent_stack_bt_376 = bitcast i8* %_pot_address_in_parent_stack_367 to i32*
  br label %173

; <label>:173:                                    ; preds = %168, %172
  %174 = phi i32* [ %171, %168 ], [ %_address_in_parent_stack_bt_376, %172 ]
  %_new_load_377 = load i32, i32* %174
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %170, i32 %_new_load_377)
  %175 = extractvalue { i32, i1 } %uadd73, 0
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -24
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %176 = bitcast i64* %_allin_new_bt_92 to i32*
  %_ptr_to_int_378 = ptrtoint i32* %176 to i64
  %_ptr_bt_380 = bitcast i32* %176 to i8*
  %_offset_above_rbp_381 = sub i64 %_ptr_to_int_378, %_local_end_to_int_
  %_pot_address_in_parent_stack_382 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_381
  %_cond1_383 = icmp ugt i8* %_ptr_bt_380, %_local_stack_end_ptr_
  %_cond2_1_384 = icmp ugt i8* %_ptr_bt_380, %_parent_stack_end_ptr_
  %_cond2_2_385 = icmp ult i8* %_ptr_bt_380, %_parent_stack_start_ptr_
  %_cond2_386 = or i1 %_cond2_1_384, %_cond2_2_385
  %_cond4_387 = icmp ule i8* %_pot_address_in_parent_stack_382, %_parent_stack_end_ptr_
  %_cond1_n_cond2_388 = and i1 %_cond1_383, %_cond2_386
  %_cond1_n_cond2_cond3_389 = and i1 %_cond1_n_cond2_388, %_cond4_387
  br i1 %_cond1_n_cond2_cond3_389, label %177, label %178

; <label>:177:                                    ; preds = %173
  %_address_in_parent_stack_bt_391 = bitcast i8* %_pot_address_in_parent_stack_382 to i32*
  br label %178

; <label>:178:                                    ; preds = %173, %177
  %179 = phi i32* [ %176, %173 ], [ %_address_in_parent_stack_bt_391, %177 ]
  %_new_load_392 = load i32, i32* %179
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %175, i32 %_new_load_392)
  %180 = extractvalue { i32, i1 } %uadd74, 0
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -28
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %181 = bitcast i64* %_allin_new_bt_95 to i32*
  %_ptr_to_int_393 = ptrtoint i32* %181 to i64
  %_ptr_bt_395 = bitcast i32* %181 to i8*
  %_offset_above_rbp_396 = sub i64 %_ptr_to_int_393, %_local_end_to_int_
  %_pot_address_in_parent_stack_397 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_396
  %_cond1_398 = icmp ugt i8* %_ptr_bt_395, %_local_stack_end_ptr_
  %_cond2_1_399 = icmp ugt i8* %_ptr_bt_395, %_parent_stack_end_ptr_
  %_cond2_2_400 = icmp ult i8* %_ptr_bt_395, %_parent_stack_start_ptr_
  %_cond2_401 = or i1 %_cond2_1_399, %_cond2_2_400
  %_cond4_402 = icmp ule i8* %_pot_address_in_parent_stack_397, %_parent_stack_end_ptr_
  %_cond1_n_cond2_403 = and i1 %_cond1_398, %_cond2_401
  %_cond1_n_cond2_cond3_404 = and i1 %_cond1_n_cond2_403, %_cond4_402
  br i1 %_cond1_n_cond2_cond3_404, label %182, label %183

; <label>:182:                                    ; preds = %178
  %_address_in_parent_stack_bt_406 = bitcast i8* %_pot_address_in_parent_stack_397 to i32*
  br label %183

; <label>:183:                                    ; preds = %178, %182
  %184 = phi i32* [ %181, %178 ], [ %_address_in_parent_stack_bt_406, %182 ]
  %_new_load_407 = load i32, i32* %184
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %180, i32 %_new_load_407)
  %185 = extractvalue { i32, i1 } %uadd75, 0
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -32
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %186 = bitcast i64* %_allin_new_bt_98 to i32*
  %_ptr_to_int_408 = ptrtoint i32* %186 to i64
  %_ptr_bt_410 = bitcast i32* %186 to i8*
  %_offset_above_rbp_411 = sub i64 %_ptr_to_int_408, %_local_end_to_int_
  %_pot_address_in_parent_stack_412 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_411
  %_cond1_413 = icmp ugt i8* %_ptr_bt_410, %_local_stack_end_ptr_
  %_cond2_1_414 = icmp ugt i8* %_ptr_bt_410, %_parent_stack_end_ptr_
  %_cond2_2_415 = icmp ult i8* %_ptr_bt_410, %_parent_stack_start_ptr_
  %_cond2_416 = or i1 %_cond2_1_414, %_cond2_2_415
  %_cond4_417 = icmp ule i8* %_pot_address_in_parent_stack_412, %_parent_stack_end_ptr_
  %_cond1_n_cond2_418 = and i1 %_cond1_413, %_cond2_416
  %_cond1_n_cond2_cond3_419 = and i1 %_cond1_n_cond2_418, %_cond4_417
  br i1 %_cond1_n_cond2_cond3_419, label %187, label %188

; <label>:187:                                    ; preds = %183
  %_address_in_parent_stack_bt_421 = bitcast i8* %_pot_address_in_parent_stack_412 to i32*
  br label %188

; <label>:188:                                    ; preds = %183, %187
  %189 = phi i32* [ %186, %183 ], [ %_address_in_parent_stack_bt_421, %187 ]
  %_new_load_422 = load i32, i32* %189
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %185, i32 %_new_load_422)
  %190 = extractvalue { i32, i1 } %uadd76, 0
  %191 = xor i32 %190, %_new_load_422, !mcsema_real_eip !89
  %192 = xor i32 %191, %185, !mcsema_real_eip !89
  %193 = and i32 %192, 16, !mcsema_real_eip !89
  %194 = icmp ne i32 %193, 0, !mcsema_real_eip !89
  %195 = icmp eq i32 %190, 0, !mcsema_real_eip !89
  %196 = trunc i32 %190 to i8, !mcsema_real_eip !89
  %197 = tail call i8 @llvm.ctpop.i8(i8 %196), !mcsema_real_eip !89
  %198 = and i8 %197, 1
  %199 = icmp eq i8 %198, 0
  %200 = extractvalue { i32, i1 } %uadd76, 1
  %201 = zext i32 %190 to i64, !mcsema_real_eip !89
  %202 = sext i32 %_new_load_332 to i64, !mcsema_real_eip !90
  %203 = sext i32 %190 to i64, !mcsema_real_eip !90
  %204 = mul i64 %202, %203, !mcsema_real_eip !90
  %205 = mul i32 %_new_load_332, %190, !mcsema_real_eip !90
  %206 = sext i32 %205 to i64, !mcsema_real_eip !90
  %207 = icmp ne i64 %206, %204, !mcsema_real_eip !90
  %208 = zext i32 %205 to i64, !mcsema_real_eip !90
  %_load_rsp_ptr_99 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_100 = bitcast i8* %_load_rsp_ptr_99 to i64*
  %_ptr_to_int_423 = ptrtoint i64* %_allin_new_bt_100 to i64
  %_offset_above_rbp_426 = sub i64 %_ptr_to_int_423, %_local_end_to_int_
  %_pot_address_in_parent_stack_427 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_426
  %_cond1_428 = icmp ugt i8* %_load_rsp_ptr_99, %_local_stack_end_ptr_
  %_cond2_1_429 = icmp ugt i8* %_load_rsp_ptr_99, %_parent_stack_end_ptr_
  %_cond2_2_430 = icmp ult i8* %_load_rsp_ptr_99, %_parent_stack_start_ptr_
  %_cond2_431 = or i1 %_cond2_1_429, %_cond2_2_430
  %_cond4_432 = icmp ule i8* %_pot_address_in_parent_stack_427, %_parent_stack_end_ptr_
  %_cond1_n_cond2_433 = and i1 %_cond1_428, %_cond2_431
  %_cond1_n_cond2_cond3_434 = and i1 %_cond1_n_cond2_433, %_cond4_432
  br i1 %_cond1_n_cond2_cond3_434, label %209, label %210

; <label>:209:                                    ; preds = %188
  %_address_in_parent_stack_bt_436 = bitcast i8* %_pot_address_in_parent_stack_427 to i64*
  br label %210

; <label>:210:                                    ; preds = %188, %209
  %211 = phi i64* [ %_allin_new_bt_100, %188 ], [ %_address_in_parent_stack_bt_436, %209 ]
  %_new_load_437 = load i64, i64* %211
  %_new_gep_101 = getelementptr i8, i8* %_load_rsp_ptr_99, i64 8
  store volatile i8* %_new_gep_101, i8** %_RSP_ptr_
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %_ptr_to_int_438 = ptrtoint i64* %_allin_new_bt_102 to i64
  %_offset_above_rbp_441 = sub i64 %_ptr_to_int_438, %_local_end_to_int_
  %_pot_address_in_parent_stack_442 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_441
  %_cond1_443 = icmp ugt i8* %_new_gep_101, %_local_stack_end_ptr_
  %_cond2_1_444 = icmp ugt i8* %_new_gep_101, %_parent_stack_end_ptr_
  %_cond2_2_445 = icmp ult i8* %_new_gep_101, %_parent_stack_start_ptr_
  %_cond2_446 = or i1 %_cond2_1_444, %_cond2_2_445
  %_cond4_447 = icmp ule i8* %_pot_address_in_parent_stack_442, %_parent_stack_end_ptr_
  %_cond1_n_cond2_448 = and i1 %_cond1_443, %_cond2_446
  %_cond1_n_cond2_cond3_449 = and i1 %_cond1_n_cond2_448, %_cond4_447
  br i1 %_cond1_n_cond2_cond3_449, label %212, label %213

; <label>:212:                                    ; preds = %210
  %_address_in_parent_stack_bt_451 = bitcast i8* %_pot_address_in_parent_stack_442 to i64*
  br label %213

; <label>:213:                                    ; preds = %210, %212
  %214 = phi i64* [ %_allin_new_bt_102, %210 ], [ %_address_in_parent_stack_bt_451, %212 ]
  %_new_load_452 = load i64, i64* %214
  %_new_int2ptr_ = inttoptr i64 %_new_load_452 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_103 = getelementptr i8, i8* %_load_rsp_ptr_99, i64 24
  store volatile i8* %_new_gep_103, i8** %_RSP_ptr_
  store i64 %208, i64* %RAX, !mcsema_real_eip !93
  store i64 %_new_load_437, i64* %RBX, !mcsema_real_eip !93
  store i64 %201, i64* %RCX, !mcsema_real_eip !93
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !93
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !93
  store i64 %5, i64* %RDI, !mcsema_real_eip !93
  %_new_ptr2int_105 = ptrtoint i8* %_new_gep_103 to i64
  store volatile i64 %_new_ptr2int_105, i64* %RSP
  %_load_rbp_ptr_106 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_107 = ptrtoint i8* %_load_rbp_ptr_106 to i64
  store volatile i64 %_new_ptr2int_107, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !93
  store i64 %7, i64* %R9, !mcsema_real_eip !93
  store i64 %76, i64* %R10, !mcsema_real_eip !93
  store i64 %_new_load_152, i64* %R11, !mcsema_real_eip !93
  store i64 %8, i64* %R12, !mcsema_real_eip !93
  store i64 %9, i64* %R13, !mcsema_real_eip !93
  store i64 %10, i64* %R14, !mcsema_real_eip !93
  store i64 %11, i64* %R15, !mcsema_real_eip !93
  store i64 %12, i64* %RIP, !mcsema_real_eip !93
  store i1 %200, i1* %CF, align 1, !mcsema_real_eip !93
  store i1 %199, i1* %PF, align 1, !mcsema_real_eip !93
  store i1 %194, i1* %AF, align 1, !mcsema_real_eip !93
  store i1 %195, i1* %ZF, align 1, !mcsema_real_eip !93
  store i1 %207, i1* %SF, align 1, !mcsema_real_eip !93
  store i1 %207, i1* %OF, align 1, !mcsema_real_eip !93
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !93
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 128, i32 8, i1 false), !mcsema_real_eip !93
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !93
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !93
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !93
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !93
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !93
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !93
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !93
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !93
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !93
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !93
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !93
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !93
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !93
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !93
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !93
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !93
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !93
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !93
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !93
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !93
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !93
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !93
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !93
  %_ptr_to_int_453 = ptrtoint i64* %42 to i64
  %_ptr_bt_455 = bitcast i64* %42 to i8*
  %_offset_above_rbp_456 = sub i64 %_ptr_to_int_453, %_local_end_to_int_
  %_pot_address_in_parent_stack_457 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_456
  %_cond1_458 = icmp ugt i8* %_ptr_bt_455, %_local_stack_end_ptr_
  %_cond2_1_459 = icmp ugt i8* %_ptr_bt_455, %_parent_stack_end_ptr_
  %_cond2_2_460 = icmp ult i8* %_ptr_bt_455, %_parent_stack_start_ptr_
  %_cond2_461 = or i1 %_cond2_1_459, %_cond2_2_460
  %_cond4_462 = icmp ule i8* %_pot_address_in_parent_stack_457, %_parent_stack_end_ptr_
  %_cond1_n_cond2_463 = and i1 %_cond1_458, %_cond2_461
  %_cond1_n_cond2_cond3_464 = and i1 %_cond1_n_cond2_463, %_cond4_462
  br i1 %_cond1_n_cond2_cond3_464, label %215, label %216

; <label>:215:                                    ; preds = %213
  %_address_in_parent_stack_bt_466 = bitcast i8* %_pot_address_in_parent_stack_457 to i64*
  br label %216

; <label>:216:                                    ; preds = %213, %215
  %217 = phi i64* [ %42, %213 ], [ %_address_in_parent_stack_bt_466, %215 ]
  %_new_load_467 = load i64, i64* %217
  store i64 %_new_load_467, i64* %41, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !93
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !93
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !93
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !93
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !93
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !93
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !93
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !93
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !93
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !93
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !93
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !93
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !93
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !93
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !93
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !93
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !93
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !93
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !93
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !93
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !93
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !93
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !93
  ret void, !mcsema_real_eip !93
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 160}
!3 = !{i64 164}
!4 = !{i64 166}
!5 = !{i64 168}
!6 = !{i64 170}
!7 = !{i64 172}
!8 = !{i64 173}
!9 = !{i64 219}
!10 = !{i64 226}
!11 = !{i64 260}
!12 = !{i64 267}
!13 = !{i64 270}
!14 = !{i64 283}
!15 = !{i64 292}
!16 = !{i64 299}
!17 = !{i64 306}
!18 = !{i64 312}
!19 = !{i64 318}
!20 = !{i64 325}
!21 = !{i64 332}
!22 = !{i64 339}
!23 = !{i64 346}
!24 = !{i64 353}
!25 = !{i64 360}
!26 = !{i64 365}
!27 = !{i64 375}
!28 = !{i64 382}
!29 = !{i64 389}
!30 = !{i64 394}
!31 = !{i64 400}
!32 = !{i64 406}
!33 = !{i64 412}
!34 = !{i64 418}
!35 = !{i64 425}
!36 = !{i64 432}
!37 = !{i64 439}
!38 = !{i64 446}
!39 = !{i64 451}
!40 = !{i64 459}
!41 = !{i64 466}
!42 = !{i64 471}
!43 = !{i64 476}
!44 = !{i64 483}
!45 = !{i64 484}
!46 = !{i64 486}
!47 = !{i64 488}
!48 = !{i64 490}
!49 = !{i64 492}
!50 = !{i64 493}
!51 = !{i64 0}
!52 = !{i64 4}
!53 = !{i64 5}
!54 = !{i64 9}
!55 = !{i64 13}
!56 = !{i64 17}
!57 = !{i64 20}
!58 = !{i64 23}
!59 = !{i64 26}
!60 = !{i64 29}
!61 = !{i64 32}
!62 = !{i64 36}
!63 = !{i64 40}
!64 = !{i64 43}
!65 = !{i64 47}
!66 = !{i64 51}
!67 = !{i64 55}
!68 = !{i64 62}
!69 = !{i64 69}
!70 = !{i64 72}
!71 = !{i64 75}
!72 = !{i64 81}
!73 = !{i64 85}
!74 = !{i64 89}
!75 = !{i64 96}
!76 = !{i64 100}
!77 = !{i64 103}
!78 = !{i64 106}
!79 = !{i64 108}
!80 = !{i64 111}
!81 = !{i64 119}
!82 = !{i64 122}
!83 = !{i64 127}
!84 = !{i64 130}
!85 = !{i64 133}
!86 = !{i64 136}
!87 = !{i64 139}
!88 = !{i64 142}
!89 = !{i64 145}
!90 = !{i64 148}
!91 = !{i64 151}
!92 = !{i64 152}
!93 = !{i64 153}
!94 = !{i64 92}
