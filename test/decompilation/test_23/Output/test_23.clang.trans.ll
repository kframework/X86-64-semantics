; ModuleID = 'Output/test_23.clang.trans.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x330 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

define internal x86_64_sysvcc void @sub_c0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 104
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 104
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
  %4 = load i64, i64* %R10, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %5 = load i64, i64* %R11, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %6 = load i64, i64* %R12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %7 = load i64, i64* %R13, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %8 = load i64, i64* %R14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %9 = load i64, i64* %R15, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %10 = load i64, i64* %RIP, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %11 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !2
  %14 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %17 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %30 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %31 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %38 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %39 = bitcast i8* %38 to i64*
  %40 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %41 = load i64, i64* %39, align 4
  store i64 %41, i64* %40, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %42 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %43 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %44 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %45 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %46 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %63 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %64 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -104
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -64
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %65 = ptrtoint i64* %_allin_new_bt_12 to i64, !mcsema_real_eip !3
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %66 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 0, i32* %66, !mcsema_real_eip !4
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -8
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %67 = trunc i64 %3 to i32, !mcsema_real_eip !5
  %68 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 %67, i32* %68, !mcsema_real_eip !5
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -16
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  store i64 %2, i64* %_allin_new_bt_20, !mcsema_real_eip !6
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -36
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %69 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 0, i32* %69, !mcsema_real_eip !7
  %_load_rbp_ptr_24 = load i8*, i8** %_RBP_ptr_
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -20
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %70 = bitcast i64* %_allin_new_bt_26 to i32*
  store i32 1, i32* %70, !mcsema_real_eip !8
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_27, i64 -24
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %71 = bitcast i64* %_allin_new_bt_29 to i32*
  store i32 1, i32* %71, !mcsema_real_eip !9
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -20
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %72 = bitcast i64* %_allin_new_bt_32 to i32*
  %73 = load i32, i32* %72, !mcsema_real_eip !10
  %74 = sext i32 %73 to i64, !mcsema_real_eip !10
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -24
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %75 = bitcast i64* %_allin_new_bt_35 to i32*
  %76 = load i32, i32* %75, !mcsema_real_eip !11
  %77 = sext i32 %76 to i64, !mcsema_real_eip !11
  %78 = mul i64 %77, 11, !mcsema_real_eip !12
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %78, i64 ptrtoint (%0* @data_0x330 to i64))
  %79 = extractvalue { i64, i1 } %uadd, 0
  %80 = add i64 %74, %79, !mcsema_real_eip !13
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !13
  %82 = bitcast i64* %81 to i8*
  store i8 88, i8* %82, !mcsema_real_eip !13
  %83 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %65, i64 28), !mcsema_real_eip !14
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -72
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  store i64 %83, i64* %_allin_new_bt_38, !mcsema_real_eip !15
  br label %block_0x12d, !mcsema_real_eip !16

block_0x12d:                                      ; preds = %block_0x2e8, %entry
  %RSI_val.0 = phi i64 [ %65, %entry ], [ %208, %block_0x2e8 ]
  %RDX_val.0 = phi i64 [ 28, %entry ], [ %200, %block_0x2e8 ]
  %RCX_val.0 = phi i64 [ %65, %entry ], [ %196, %block_0x2e8 ]
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -36
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %84 = bitcast i64* %_allin_new_bt_41 to i32*
  %85 = load i32, i32* %84, !mcsema_real_eip !16
  %86 = add i32 %85, -28
  %87 = xor i32 %86, %85, !mcsema_real_eip !16
  %88 = icmp slt i32 %86, 0
  %89 = and i32 %87, %85, !mcsema_real_eip !16
  %90 = icmp slt i32 %89, 0
  %tmp = xor i1 %88, %90
  br i1 %tmp, label %block_0x13a, label %block_0x319, !mcsema_real_eip !17

block_0x13a:                                      ; preds = %block_0x12d
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -20
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %91 = bitcast i64* %_allin_new_bt_44 to i32*
  %92 = load i32, i32* %91, !mcsema_real_eip !18
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -28
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %93 = bitcast i64* %_allin_new_bt_47 to i32*
  store i32 %92, i32* %93, !mcsema_real_eip !19
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -24
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %94 = bitcast i64* %_allin_new_bt_50 to i32*
  %95 = load i32, i32* %94, !mcsema_real_eip !20
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -32
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %96 = bitcast i64* %_allin_new_bt_53 to i32*
  store i32 %95, i32* %96, !mcsema_real_eip !21
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -36
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %97 = bitcast i64* %_allin_new_bt_56 to i32*
  %98 = load i32, i32* %97, !mcsema_real_eip !22
  %99 = sext i32 %98 to i64, !mcsema_real_eip !22
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -64
  %_new_gep_59 = getelementptr i8, i8* %_new_gep_58, i64 %99
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %100 = load i8, i8* %_new_gep_59, !mcsema_real_eip !23
  %101 = sext i8 %100 to i32, !mcsema_real_eip !23
  %102 = zext i32 %101 to i64, !mcsema_real_eip !23
  %103 = add nsw i32 %101, -114
  %104 = xor i32 %103, %101, !mcsema_real_eip !24
  %105 = icmp eq i32 %103, 0, !mcsema_real_eip !24
  %106 = icmp slt i32 %103, 0
  %107 = and i32 %104, %101, !mcsema_real_eip !24
  %108 = icmp slt i32 %107, 0
  %109 = zext i32 %103 to i64, !mcsema_real_eip !24
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -76
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %110 = bitcast i64* %_allin_new_bt_63 to i32*
  store i32 %101, i32* %110, !mcsema_real_eip !25
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -80
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %111 = bitcast i64* %_allin_new_bt_66 to i32*
  store i32 %103, i32* %111, !mcsema_real_eip !26
  %tmp71 = xor i1 %106, %108
  %.demorgan = or i1 %105, %tmp71
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -76
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %112 = bitcast i64* %_allin_new_bt_69 to i32*
  %113 = load i32, i32* %112, !mcsema_real_eip !27
  br i1 %.demorgan, label %block_0x165, label %block_0x18d, !mcsema_real_eip !28

block_0x319:                                      ; preds = %block_0x12d
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -4
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %114 = bitcast i64* %_allin_new_bt_71 to i32*
  store i32 1, i32* %114, !mcsema_real_eip !29
  br label %block_0x320, !mcsema_real_eip !18

block_0x320:                                      ; preds = %block_0x2dc, %block_0x1f5, %block_0x22d, %block_0x319
  %RSI_val.1 = phi i64 [ %158, %block_0x22d ], [ %RSI_val.2, %block_0x2dc ], [ %RSI_val.0, %block_0x1f5 ], [ %RSI_val.0, %block_0x319 ]
  %RDX_val.1 = phi i64 [ %151, %block_0x22d ], [ %RDX_val.2, %block_0x2dc ], [ %109, %block_0x1f5 ], [ %RDX_val.0, %block_0x319 ]
  %RCX_val.1 = phi i64 [ %147, %block_0x22d ], [ %RCX_val.2, %block_0x2dc ], [ %99, %block_0x1f5 ], [ %RCX_val.0, %block_0x319 ]
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -4
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %115 = bitcast i64* %_allin_new_bt_74 to i32*
  %116 = load i32, i32* %115, !mcsema_real_eip !30
  %117 = zext i32 %116 to i64, !mcsema_real_eip !30
  %_load_rsp_ptr_75 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_76 = ptrtoint i8* %_load_rsp_ptr_75 to i64
  %uadd73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_76, i64 96)
  %118 = extractvalue { i64, i1 } %uadd73, 0
  %119 = xor i64 %118, %_new_ptr2int_76, !mcsema_real_eip !31
  %120 = and i64 %119, 16, !mcsema_real_eip !31
  %121 = icmp ne i64 %120, 0, !mcsema_real_eip !31
  %122 = icmp slt i64 %118, 0
  %123 = icmp eq i64 %118, 0, !mcsema_real_eip !31
  %124 = xor i64 %_new_ptr2int_76, -9223372036854775808, !mcsema_real_eip !31
  %125 = and i64 %119, %124, !mcsema_real_eip !31
  %126 = icmp slt i64 %125, 0
  %127 = trunc i64 %118 to i8, !mcsema_real_eip !31
  %128 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !31
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  %131 = extractvalue { i64, i1 } %uadd73, 1
  %_new_int2ptr_ = inttoptr i64 %118 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %132 = inttoptr i64 %118 to i64*, !mcsema_real_eip !32
  %133 = load i64, i64* %132, !mcsema_real_eip !32
  %_new_int2ptr_77 = inttoptr i64 %133 to i8*
  store volatile i8* %_new_int2ptr_77, i8** %_RBP_ptr_
  %134 = add i64 %118, 16, !mcsema_real_eip !33
  %_new_int2ptr_78 = inttoptr i64 %134 to i8*
  store volatile i8* %_new_int2ptr_78, i8** %_RSP_ptr_
  store i64 %117, i64* %RAX, !mcsema_real_eip !33
  store i64 %1, i64* %RBX, !mcsema_real_eip !33
  store i64 %RCX_val.1, i64* %RCX, !mcsema_real_eip !33
  store i64 %RDX_val.1, i64* %RDX, !mcsema_real_eip !33
  store i64 %RSI_val.1, i64* %RSI, !mcsema_real_eip !33
  store i64 0, i64* %RDI, !mcsema_real_eip !33
  store volatile i64 %134, i64* %RSP
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_82 = ptrtoint i8* %_load_rbp_ptr_81 to i64
  store volatile i64 %_new_ptr2int_82, i64* %RBP
  store i64 %79, i64* %R8, !mcsema_real_eip !33
  store i64 %78, i64* %R9, !mcsema_real_eip !33
  store i64 %4, i64* %R10, !mcsema_real_eip !33
  store i64 %5, i64* %R11, !mcsema_real_eip !33
  store i64 %6, i64* %R12, !mcsema_real_eip !33
  store i64 %7, i64* %R13, !mcsema_real_eip !33
  store i64 %8, i64* %R14, !mcsema_real_eip !33
  store i64 %9, i64* %R15, !mcsema_real_eip !33
  store i64 %10, i64* %RIP, !mcsema_real_eip !33
  store i1 %131, i1* %CF, align 1, !mcsema_real_eip !33
  store i1 %130, i1* %PF, align 1, !mcsema_real_eip !33
  store i1 %121, i1* %AF, align 1, !mcsema_real_eip !33
  store i1 %123, i1* %ZF, align 1, !mcsema_real_eip !33
  store i1 %122, i1* %SF, align 1, !mcsema_real_eip !33
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !33
  store i1 %11, i1* %DF, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %14, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  store i1 %15, i1* %FPU_B, align 1, !mcsema_real_eip !33
  store i1 %16, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  store i3 %17, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  store i1 %18, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  store i1 %19, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  store i1 %20, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  store i1 %21, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  store i1 %22, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  store i1 %23, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  store i1 %24, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  store i1 %25, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  store i1 %26, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  store i1 %27, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  store i1 %28, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  store i1 %29, i1* %FPU_X, align 1, !mcsema_real_eip !33
  store i2 %30, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  store i2 %31, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  store i1 %32, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  store i1 %33, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  store i1 %34, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  store i1 %35, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  store i1 %36, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  store i1 %37, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %135 = load i64, i64* %40, align 4
  store i64 %135, i64* %39, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  store i64 %43, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !33
  store i16 %44, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  store i64 %45, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !33
  store i11 %46, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !33
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !33
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !33
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !33
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !33
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !33
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !33
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !33
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !33
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !33
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !33
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !33
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !33
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !33
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !33
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !33
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !33
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !33
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33

block_0x18d:                                      ; preds = %block_0x13a
  %136 = add i32 %113, -115
  %137 = icmp eq i32 %136, 0, !mcsema_real_eip !34
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -92
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %138 = bitcast i64* %_allin_new_bt_85 to i32*
  store i32 %136, i32* %138, !mcsema_real_eip !35
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  br i1 %137, label %block_0x1c5, label %block_0x1a1, !mcsema_real_eip !36

block_0x1c5:                                      ; preds = %block_0x18d
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -24
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %139 = bitcast i64* %_allin_new_bt_88 to i32*
  %140 = load i32, i32* %139, !mcsema_real_eip !37
  %uadd92 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %140, i32 1)
  %141 = extractvalue { i32, i1 } %uadd92, 0
  store i32 %141, i32* %139, !mcsema_real_eip !38
  br label %block_0x201, !mcsema_real_eip !39

block_0x165:                                      ; preds = %block_0x13a
  %142 = add i32 %113, -97
  %143 = icmp eq i32 %142, 0, !mcsema_real_eip !40
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -84
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %144 = bitcast i64* %_allin_new_bt_94 to i32*
  store i32 %142, i32* %144, !mcsema_real_eip !41
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  br i1 %143, label %block_0x1d5, label %block_0x179, !mcsema_real_eip !42

block_0x201:                                      ; preds = %block_0x1e5, %block_0x1b5, %block_0x1d5, %block_0x1c5
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -20
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %145 = bitcast i64* %_allin_new_bt_98 to i32*
  %146 = load i32, i32* %145, !mcsema_real_eip !43
  %147 = sext i32 %146 to i64, !mcsema_real_eip !43
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -24
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %148 = bitcast i64* %_allin_new_bt_101 to i32*
  %149 = load i32, i32* %148, !mcsema_real_eip !44
  %150 = sext i32 %149 to i64, !mcsema_real_eip !44
  %151 = mul i64 %150, 11, !mcsema_real_eip !45
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %151, i64 ptrtoint (%0* @data_0x330 to i64))
  %152 = extractvalue { i64, i1 } %uadd75, 0
  %153 = add i64 %147, %152, !mcsema_real_eip !46
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !46
  %155 = bitcast i64* %154 to i8*
  %156 = load i8, i8* %155, !mcsema_real_eip !46
  %157 = sext i8 %156 to i32, !mcsema_real_eip !46
  %158 = zext i32 %157 to i64, !mcsema_real_eip !46
  %159 = add nsw i32 %157, -35
  %160 = icmp eq i32 %159, 0, !mcsema_real_eip !47
  br i1 %160, label %block_0x22d, label %block_0x239, !mcsema_real_eip !48

block_0x1a1:                                      ; preds = %block_0x18d
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -76
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %161 = bitcast i64* %_allin_new_bt_103 to i32*
  %162 = load i32, i32* %161, !mcsema_real_eip !49
  %163 = add i32 %162, -119
  %164 = icmp eq i32 %163, 0, !mcsema_real_eip !50
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -96
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %165 = bitcast i64* %_allin_new_bt_106 to i32*
  store i32 %163, i32* %165, !mcsema_real_eip !51
  br i1 %164, label %block_0x1b5, label %block_0x1f5, !mcsema_real_eip !52

block_0x1d5:                                      ; preds = %block_0x165
  %_new_gep_107 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -20
  %_allin_new_bt_108 = bitcast i8* %_new_gep_107 to i64*
  %166 = bitcast i64* %_allin_new_bt_108 to i32*
  %167 = load i32, i32* %166, !mcsema_real_eip !53
  %uadd89 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %167, i32 -1)
  %168 = extractvalue { i32, i1 } %uadd89, 0
  store i32 %168, i32* %166, !mcsema_real_eip !54
  br label %block_0x201, !mcsema_real_eip !55

block_0x22d:                                      ; preds = %block_0x201
  %_new_gep_113 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -4
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %169 = bitcast i64* %_allin_new_bt_114 to i32*
  store i32 0, i32* %169, !mcsema_real_eip !56
  br label %block_0x320, !mcsema_real_eip !57

block_0x239:                                      ; preds = %block_0x201
  %170 = add nsw i32 %157, -32
  %171 = icmp eq i32 %170, 0, !mcsema_real_eip !58
  br i1 %171, label %block_0x2c4, label %block_0x265, !mcsema_real_eip !59

block_0x1f5:                                      ; preds = %block_0x179, %block_0x1a1
  %_load_rbp_ptr_121 = load i8*, i8** %_RBP_ptr_
  %_new_gep_122 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -4
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %172 = bitcast i64* %_allin_new_bt_123 to i32*
  store i32 1, i32* %172, !mcsema_real_eip !60
  br label %block_0x320, !mcsema_real_eip !61

block_0x179:                                      ; preds = %block_0x165
  %_new_gep_124 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -76
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %173 = bitcast i64* %_allin_new_bt_125 to i32*
  %174 = load i32, i32* %173, !mcsema_real_eip !62
  %175 = add i32 %174, -100
  %176 = icmp eq i32 %175, 0, !mcsema_real_eip !63
  %_new_gep_127 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -88
  %_allin_new_bt_128 = bitcast i8* %_new_gep_127 to i64*
  %177 = bitcast i64* %_allin_new_bt_128 to i32*
  store i32 %175, i32* %177, !mcsema_real_eip !64
  br i1 %176, label %block_0x1e5, label %block_0x1f5, !mcsema_real_eip !65

block_0x265:                                      ; preds = %block_0x239
  %178 = add i32 %149, -2
  %179 = icmp eq i32 %178, 0, !mcsema_real_eip !66
  br i1 %179, label %block_0x272, label %block_0x2b8, !mcsema_real_eip !67

block_0x2c4:                                      ; preds = %block_0x2ab, %block_0x2b8, %block_0x239
  %RSI_val.2 = phi i64 [ %158, %block_0x239 ], [ %158, %block_0x2b8 ], [ %158, %block_0x2ab ]
  %RDX_val.2 = phi i64 [ %151, %block_0x239 ], [ %151, %block_0x2b8 ], [ %151, %block_0x2ab ]
  %RCX_val.2 = phi i64 [ %147, %block_0x239 ], [ %147, %block_0x2b8 ], [ %147, %block_0x2ab ]
  %_load_rbp_ptr_132 = load i8*, i8** %_RBP_ptr_
  %_new_gep_133 = getelementptr i8, i8* %_load_rbp_ptr_132, i64 -28
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  %180 = bitcast i64* %_allin_new_bt_134 to i32*
  %181 = load i32, i32* %180, !mcsema_real_eip !68
  %_new_gep_136 = getelementptr i8, i8* %_load_rbp_ptr_132, i64 -20
  %_allin_new_bt_137 = bitcast i8* %_new_gep_136 to i64*
  %182 = bitcast i64* %_allin_new_bt_137 to i32*
  %183 = load i32, i32* %182, !mcsema_real_eip !69
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %block_0x2d0, label %block_0x2e8, !mcsema_real_eip !70

block_0x1b5:                                      ; preds = %block_0x1a1
  %_load_rbp_ptr_138 = load i8*, i8** %_RBP_ptr_
  %_new_gep_139 = getelementptr i8, i8* %_load_rbp_ptr_138, i64 -24
  %_allin_new_bt_140 = bitcast i8* %_new_gep_139 to i64*
  %185 = bitcast i64* %_allin_new_bt_140 to i32*
  %186 = load i32, i32* %185, !mcsema_real_eip !71
  %uadd91 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %186, i32 -1)
  %187 = extractvalue { i32, i1 } %uadd91, 0
  store i32 %187, i32* %185, !mcsema_real_eip !72
  br label %block_0x201, !mcsema_real_eip !73

block_0x1e5:                                      ; preds = %block_0x179
  %_load_rbp_ptr_144 = load i8*, i8** %_RBP_ptr_
  %_new_gep_145 = getelementptr i8, i8* %_load_rbp_ptr_144, i64 -20
  %_allin_new_bt_146 = bitcast i8* %_new_gep_145 to i64*
  %188 = bitcast i64* %_allin_new_bt_146 to i32*
  %189 = load i32, i32* %188, !mcsema_real_eip !74
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %189, i32 1)
  %190 = extractvalue { i32, i1 } %uadd74, 0
  store i32 %190, i32* %188, !mcsema_real_eip !75
  br label %block_0x201, !mcsema_real_eip !76

block_0x2d0:                                      ; preds = %block_0x2c4
  %_new_gep_151 = getelementptr i8, i8* %_load_rbp_ptr_132, i64 -32
  %_allin_new_bt_152 = bitcast i8* %_new_gep_151 to i64*
  %191 = bitcast i64* %_allin_new_bt_152 to i32*
  %192 = load i32, i32* %191, !mcsema_real_eip !77
  %_new_gep_154 = getelementptr i8, i8* %_load_rbp_ptr_132, i64 -24
  %_allin_new_bt_155 = bitcast i8* %_new_gep_154 to i64*
  %193 = bitcast i64* %_allin_new_bt_155 to i32*
  %194 = load i32, i32* %193, !mcsema_real_eip !78
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %block_0x2dc, label %block_0x2e8, !mcsema_real_eip !79

block_0x2e8:                                      ; preds = %block_0x2d0, %block_0x2c4
  %196 = sext i32 %183 to i64, !mcsema_real_eip !80
  %_new_gep_160 = getelementptr i8, i8* %_load_rbp_ptr_132, i64 -24
  %_allin_new_bt_161 = bitcast i8* %_new_gep_160 to i64*
  %197 = bitcast i64* %_allin_new_bt_161 to i32*
  %198 = load i32, i32* %197, !mcsema_real_eip !81
  %199 = sext i32 %198 to i64, !mcsema_real_eip !81
  %200 = mul i64 %199, 11, !mcsema_real_eip !82
  %uadd87 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %200, i64 ptrtoint (%0* @data_0x330 to i64))
  %201 = extractvalue { i64, i1 } %uadd87, 0
  %202 = add i64 %196, %201, !mcsema_real_eip !83
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !83
  %204 = bitcast i64* %203 to i8*
  store i8 88, i8* %204, !mcsema_real_eip !83
  %_load_rbp_ptr_162 = load i8*, i8** %_RBP_ptr_
  %_new_gep_163 = getelementptr i8, i8* %_load_rbp_ptr_162, i64 -36
  %_allin_new_bt_164 = bitcast i8* %_new_gep_163 to i64*
  %205 = bitcast i64* %_allin_new_bt_164 to i32*
  %206 = load i32, i32* %205, !mcsema_real_eip !84
  %uadd88 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %206, i32 1)
  %207 = extractvalue { i32, i1 } %uadd88, 0
  %208 = zext i32 %207 to i64, !mcsema_real_eip !85
  store i32 %207, i32* %205, !mcsema_real_eip !86
  br label %block_0x12d, !mcsema_real_eip !87

block_0x272:                                      ; preds = %block_0x265
  %209 = add nsw i32 %157, -124
  %210 = icmp eq i32 %209, 0, !mcsema_real_eip !88
  br i1 %210, label %block_0x29e, label %block_0x2b8, !mcsema_real_eip !89

block_0x2b8:                                      ; preds = %block_0x2ab, %block_0x29e, %block_0x272, %block_0x265
  %_new_gep_175 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -28
  %_allin_new_bt_176 = bitcast i8* %_new_gep_175 to i64*
  %211 = bitcast i64* %_allin_new_bt_176 to i32*
  %212 = load i32, i32* %211, !mcsema_real_eip !90
  store i32 %212, i32* %145, !mcsema_real_eip !91
  %_load_rbp_ptr_180 = load i8*, i8** %_RBP_ptr_
  %_new_gep_181 = getelementptr i8, i8* %_load_rbp_ptr_180, i64 -32
  %_allin_new_bt_182 = bitcast i8* %_new_gep_181 to i64*
  %213 = bitcast i64* %_allin_new_bt_182 to i32*
  %214 = load i32, i32* %213, !mcsema_real_eip !92
  %_new_gep_184 = getelementptr i8, i8* %_load_rbp_ptr_180, i64 -24
  %_allin_new_bt_185 = bitcast i8* %_new_gep_184 to i64*
  %215 = bitcast i64* %_allin_new_bt_185 to i32*
  store i32 %214, i32* %215, !mcsema_real_eip !93
  br label %block_0x2c4, !mcsema_real_eip !94

block_0x2dc:                                      ; preds = %block_0x2d0
  %_new_gep_187 = getelementptr i8, i8* %_load_rbp_ptr_132, i64 -4
  %_allin_new_bt_188 = bitcast i8* %_new_gep_187 to i64*
  %216 = bitcast i64* %_allin_new_bt_188 to i32*
  store i32 2, i32* %216, !mcsema_real_eip !95
  br label %block_0x320, !mcsema_real_eip !96

block_0x29e:                                      ; preds = %block_0x272
  %217 = icmp slt i32 %146, 1
  br i1 %217, label %block_0x2b8, label %block_0x2ab, !mcsema_real_eip !97

block_0x2ab:                                      ; preds = %block_0x29e
  %218 = add i32 %146, -11
  %219 = xor i32 %218, %146, !mcsema_real_eip !98
  %220 = icmp slt i32 %218, 0
  %221 = and i32 %219, %146, !mcsema_real_eip !98
  %222 = icmp slt i32 %221, 0
  %223 = xor i1 %220, %222
  br i1 %223, label %block_0x2c4, label %block_0x2b8, !mcsema_real_eip !99
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_c0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 192}
!3 = !{i64 215}
!4 = !{i64 229}
!5 = !{i64 236}
!6 = !{i64 239}
!7 = !{i64 243}
!8 = !{i64 250}
!9 = !{i64 257}
!10 = !{i64 264}
!11 = !{i64 268}
!12 = !{i64 272}
!13 = !{i64 282}
!14 = !{i64 292}
!15 = !{i64 297}
!16 = !{i64 301}
!17 = !{i64 308}
!18 = !{i64 314}
!19 = !{i64 317}
!20 = !{i64 320}
!21 = !{i64 323}
!22 = !{i64 326}
!23 = !{i64 330}
!24 = !{i64 337}
!25 = !{i64 340}
!26 = !{i64 343}
!27 = !{i64 397}
!28 = !{i64 346}
!29 = !{i64 793}
!30 = !{i64 800}
!31 = !{i64 803}
!32 = !{i64 807}
!33 = !{i64 808}
!34 = !{i64 400}
!35 = !{i64 403}
!36 = !{i64 406}
!37 = !{i64 453}
!38 = !{i64 461}
!39 = !{i64 464}
!40 = !{i64 360}
!41 = !{i64 363}
!42 = !{i64 366}
!43 = !{i64 523}
!44 = !{i64 527}
!45 = !{i64 531}
!46 = !{i64 541}
!47 = !{i64 545}
!48 = !{i64 551}
!49 = !{i64 417}
!50 = !{i64 420}
!51 = !{i64 423}
!52 = !{i64 426}
!53 = !{i64 469}
!54 = !{i64 477}
!55 = !{i64 480}
!56 = !{i64 557}
!57 = !{i64 564}
!58 = !{i64 601}
!59 = !{i64 607}
!60 = !{i64 501}
!61 = !{i64 508}
!62 = !{i64 377}
!63 = !{i64 380}
!64 = !{i64 383}
!65 = !{i64 386}
!66 = !{i64 613}
!67 = !{i64 620}
!68 = !{i64 708}
!69 = !{i64 711}
!70 = !{i64 714}
!71 = !{i64 437}
!72 = !{i64 445}
!73 = !{i64 448}
!74 = !{i64 485}
!75 = !{i64 493}
!76 = !{i64 496}
!77 = !{i64 720}
!78 = !{i64 723}
!79 = !{i64 726}
!80 = !{i64 754}
!81 = !{i64 758}
!82 = !{i64 762}
!83 = !{i64 772}
!84 = !{i64 776}
!85 = !{i64 779}
!86 = !{i64 785}
!87 = !{i64 788}
!88 = !{i64 658}
!89 = !{i64 664}
!90 = !{i64 696}
!91 = !{i64 699}
!92 = !{i64 702}
!93 = !{i64 705}
!94 = !{i64 626}
!95 = !{i64 732}
!96 = !{i64 739}
!97 = !{i64 677}
!98 = !{i64 683}
!99 = !{i64 690}
