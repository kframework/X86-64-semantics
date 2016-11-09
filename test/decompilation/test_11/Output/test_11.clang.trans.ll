; ModuleID = 'Output/test_11.clang.trans.bc'
source_filename = "Output/test_11.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_20(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 56
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 56
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !2
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %2 = load i64, i64* %RCX, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = load i64, i64* %RDX, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64, i64* %RSI, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI, !mcsema_real_eip !2
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
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -56
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -16
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  store i64 %5, i64* %_allin_new_bt_12, !mcsema_real_eip !3
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %69 = load i64, i64* %_allin_new_bt_15, !mcsema_real_eip !4
  %70 = tail call x86_64_sysvcc i64 @strlen(i64 %69), !mcsema_real_eip !5
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 1)
  %71 = extractvalue { i64, i1 } %uadd, 0
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -24
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 %71, i64* %_allin_new_bt_18, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -24
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %72 = load i64, i64* %_allin_new_bt_21, !mcsema_real_eip !7
  %73 = tail call x86_64_sysvcc i64 @malloc(i64 %72), !mcsema_real_eip !8
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 %73, i64* %_allin_new_bt_24, !mcsema_real_eip !9
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -32
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %74 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !10
  %75 = icmp eq i64 %74, 0, !mcsema_real_eip !10
  br i1 %75, label %block_0xe8, label %block_0x5a, !mcsema_real_eip !11

block_0x5a:                                       ; preds = %entry
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %76 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !12
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -40
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  store i64 %76, i64* %_allin_new_bt_32, !mcsema_real_eip !13
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -32
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %77 = load i64, i64* %_allin_new_bt_35, !mcsema_real_eip !14
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -48
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  store i64 %77, i64* %_allin_new_bt_37, !mcsema_real_eip !15
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %78 = load i64, i64* %_allin_new_bt_40, !mcsema_real_eip !16
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %79 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !17
  %80 = tail call x86_64_sysvcc i64 @memset(i64 %78, i64 0, i64 %79), !mcsema_real_eip !18
  br label %block_0x7c, !mcsema_real_eip !19

block_0xe8:                                       ; preds = %entry
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 0, i64* %_allin_new_bt_45, !mcsema_real_eip !20
  br label %block_0xf0, !mcsema_real_eip !21

block_0xf0:                                       ; preds = %block_0xdb, %block_0xe8
  %RDI_val.0 = phi i64 [ %72, %block_0xe8 ], [ %78, %block_0xdb ]
  %RSI_val.0 = phi i64 [ %4, %block_0xe8 ], [ 0, %block_0xdb ]
  %RDX_val.0 = phi i64 [ %3, %block_0xe8 ], [ %79, %block_0xdb ]
  %RCX_val.0 = phi i64 [ %2, %block_0xe8 ], [ %105, %block_0xdb ]
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %81 = load i64, i64* %_allin_new_bt_48, !mcsema_real_eip !19
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_50 = ptrtoint i8* %_load_rsp_ptr_49 to i64
  %uadd73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_50, i64 48)
  %82 = extractvalue { i64, i1 } %uadd73, 0
  %83 = xor i64 %82, %_new_ptr2int_50, !mcsema_real_eip !22
  %84 = and i64 %83, 16
  %85 = icmp eq i64 %84, 0
  %86 = icmp slt i64 %82, 0
  %87 = icmp eq i64 %82, 0, !mcsema_real_eip !22
  %88 = xor i64 %_new_ptr2int_50, -9223372036854775808, !mcsema_real_eip !22
  %89 = and i64 %83, %88, !mcsema_real_eip !22
  %90 = icmp slt i64 %89, 0
  %91 = trunc i64 %82 to i8, !mcsema_real_eip !22
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !22
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  %95 = extractvalue { i64, i1 } %uadd73, 1
  %_new_int2ptr_ = inttoptr i64 %82 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %96 = inttoptr i64 %82 to i64*, !mcsema_real_eip !23
  %97 = load i64, i64* %96, !mcsema_real_eip !23
  %_new_int2ptr_51 = inttoptr i64 %97 to i8*
  store volatile i8* %_new_int2ptr_51, i8** %_RBP_ptr_
  %98 = add i64 %82, 16, !mcsema_real_eip !24
  %_new_int2ptr_52 = inttoptr i64 %98 to i8*
  store volatile i8* %_new_int2ptr_52, i8** %_RSP_ptr_
  store i64 %81, i64* %RAX, !mcsema_real_eip !24
  store i64 %1, i64* %RBX, !mcsema_real_eip !24
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !24
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !24
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !24
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !24
  store volatile i64 %98, i64* %RSP
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_56 = ptrtoint i8* %_load_rbp_ptr_55 to i64
  store volatile i64 %_new_ptr2int_56, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !24
  store i64 %7, i64* %R9, !mcsema_real_eip !24
  store i64 %8, i64* %R10, !mcsema_real_eip !24
  store i64 %9, i64* %R11, !mcsema_real_eip !24
  store i64 %10, i64* %R12, !mcsema_real_eip !24
  store i64 %11, i64* %R13, !mcsema_real_eip !24
  store i64 %12, i64* %R14, !mcsema_real_eip !24
  store i64 %13, i64* %R15, !mcsema_real_eip !24
  store i64 %14, i64* %RIP, !mcsema_real_eip !24
  store i1 %95, i1* %CF, align 1, !mcsema_real_eip !24
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !24
  store i1 %85, i1* %AF, align 1, !mcsema_real_eip !24
  store i1 %87, i1* %ZF, align 1, !mcsema_real_eip !24
  store i1 %86, i1* %SF, align 1, !mcsema_real_eip !24
  store i1 %90, i1* %OF, align 1, !mcsema_real_eip !24
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !24
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !24
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !24
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !24
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !24
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !24
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !24
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !24
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !24
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !24
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !24
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !24
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !24
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !24
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !24
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !24
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !24
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !24
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !24
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !24
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !24
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !24
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !24
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !24
  %99 = load i64, i64* %44, align 4
  store i64 %99, i64* %43, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !24
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !24
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !24
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !24
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !24
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !24
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !24
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !24
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !24
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !24
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !24
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !24
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !24
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !24
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !24
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !24
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !24
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !24
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !24
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !24
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !24
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !24
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24

block_0x7c:                                       ; preds = %block_0xba, %block_0x5a
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -40
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %100 = load i64, i64* %_allin_new_bt_59, !mcsema_real_eip !25
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !26
  %102 = bitcast i64* %101 to i8*
  %103 = load i8, i8* %102, !mcsema_real_eip !26
  %104 = sext i8 %103 to i32, !mcsema_real_eip !26
  %105 = zext i32 %104 to i64, !mcsema_real_eip !26
  %106 = icmp eq i8 %103, 0
  br i1 %106, label %block_0xdb, label %block_0x8f, !mcsema_real_eip !27

block_0x8f:                                       ; preds = %block_0x7c
  %107 = add nsw i32 %104, -47
  %108 = icmp eq i32 %107, 0, !mcsema_real_eip !28
  br i1 %108, label %block_0xa2, label %block_0xae, !mcsema_real_eip !29

block_0xdb:                                       ; preds = %block_0x7c
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -32
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %109 = load i64, i64* %_allin_new_bt_65, !mcsema_real_eip !30
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -8
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  store i64 %109, i64* %_allin_new_bt_68, !mcsema_real_eip !31
  br label %block_0xf0, !mcsema_real_eip !32

block_0xa2:                                       ; preds = %block_0x8f
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -48
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %110 = load i64, i64* %_allin_new_bt_70, !mcsema_real_eip !33
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !34
  %112 = bitcast i64* %111 to i8*
  store i8 92, i8* %112, !mcsema_real_eip !34
  br label %block_0xba, !mcsema_real_eip !35

block_0xae:                                       ; preds = %block_0x8f
  %113 = zext i8 %103 to i64, !mcsema_real_eip !36
  %114 = and i64 %105, -256, !mcsema_real_eip !36
  %115 = or i64 %114, %113
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -48
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %116 = load i64, i64* %_allin_new_bt_75, !mcsema_real_eip !37
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !38
  %118 = trunc i64 %115 to i8, !mcsema_real_eip !38
  %119 = bitcast i64* %117 to i8*
  store i8 %118, i8* %119, !mcsema_real_eip !38
  br label %block_0xba, !mcsema_real_eip !33

block_0xba:                                       ; preds = %block_0xae, %block_0xa2
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -40
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %120 = load i64, i64* %_allin_new_bt_78, !mcsema_real_eip !39
  %uadd71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %120, i64 1)
  %121 = extractvalue { i64, i1 } %uadd71, 0
  store i64 %121, i64* %_allin_new_bt_78, !mcsema_real_eip !40
  %_load_rbp_ptr_82 = load i8*, i8** %_RBP_ptr_
  %_new_gep_83 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -48
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %122 = load i64, i64* %_allin_new_bt_84, !mcsema_real_eip !41
  %uadd72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 1)
  %123 = extractvalue { i64, i1 } %uadd72, 0
  store i64 %123, i64* %_allin_new_bt_84, !mcsema_real_eip !42
  br label %block_0x7c, !mcsema_real_eip !43
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_20(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 32}
!3 = !{i64 40}
!4 = !{i64 44}
!5 = !{i64 48}
!6 = !{i64 59}
!7 = !{i64 63}
!8 = !{i64 67}
!9 = !{i64 72}
!10 = !{i64 76}
!11 = !{i64 84}
!12 = !{i64 95}
!13 = !{i64 99}
!14 = !{i64 103}
!15 = !{i64 107}
!16 = !{i64 111}
!17 = !{i64 115}
!18 = !{i64 119}
!19 = !{i64 240}
!20 = !{i64 232}
!21 = !{i64 90}
!22 = !{i64 244}
!23 = !{i64 248}
!24 = !{i64 249}
!25 = !{i64 124}
!26 = !{i64 128}
!27 = !{i64 137}
!28 = !{i64 150}
!29 = !{i64 156}
!30 = !{i64 219}
!31 = !{i64 223}
!32 = !{i64 227}
!33 = !{i64 162}
!34 = !{i64 166}
!35 = !{i64 169}
!36 = !{i64 178}
!37 = !{i64 180}
!38 = !{i64 184}
!39 = !{i64 186}
!40 = !{i64 196}
!41 = !{i64 200}
!42 = !{i64 210}
!43 = !{i64 214}
