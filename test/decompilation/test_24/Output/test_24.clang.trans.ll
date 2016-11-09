; ModuleID = 'Output/test_24.clang.trans.bc'
source_filename = "Output/test_24.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 88
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 88
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !2
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %2 = load i64, i64* %RDX, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = load i64, i64* %RSI, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %4 = load i64, i64* %RDI, !mcsema_real_eip !2
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
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -88
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -16
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  store i64 %4, i64* %_allin_new_bt_12, !mcsema_real_eip !3
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %68 = load i64, i64* %_allin_new_bt_15, !mcsema_real_eip !4
  %69 = tail call x86_64_sysvcc i64 @strlen(i64 %68), !mcsema_real_eip !5
  %70 = and i64 %69, 4294967295
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -32
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !6
  %72 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 %71, i32* %72, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %73 = bitcast i64* %_allin_new_bt_21 to i32*
  %74 = load i32, i32* %73, !mcsema_real_eip !7
  %75 = add i32 %74, -37
  %76 = icmp eq i32 %75, 0, !mcsema_real_eip !7
  br i1 %76, label %block_0x32, label %block_0x27, !mcsema_real_eip !8

block_0x27:                                       ; preds = %entry
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -4
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %77 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 %74, i32* %77, !mcsema_real_eip !9
  br label %block_0x46d, !mcsema_real_eip !10

block_0x32:                                       ; preds = %entry
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %78 = load i64, i64* %_allin_new_bt_29, !mcsema_real_eip !11
  %uadd71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %78, i64 4)
  %79 = extractvalue { i64, i1 } %uadd71, 0
  store i64 %79, i64* %_allin_new_bt_29, !mcsema_real_eip !12
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -16
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %80 = load i64, i64* %_allin_new_bt_35, !mcsema_real_eip !13
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !14
  %82 = bitcast i64* %81 to i8*
  %83 = load i8, i8* %82, !mcsema_real_eip !14
  %84 = sext i8 %83 to i32, !mcsema_real_eip !14
  %85 = zext i32 %84 to i64, !mcsema_real_eip !14
  %86 = add nsw i32 %84, -100
  %87 = icmp eq i32 %86, 0, !mcsema_real_eip !15
  br i1 %87, label %block_0x5f, label %block_0x53, !mcsema_real_eip !16

block_0x53:                                       ; preds = %block_0x32
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -4
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %88 = bitcast i64* %_allin_new_bt_38 to i32*
  store i32 -2, i32* %88, !mcsema_real_eip !17
  br label %block_0x46d, !mcsema_real_eip !18

block_0x5f:                                       ; preds = %block_0x32
  %89 = add i64 %80, 1, !mcsema_real_eip !19
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !19
  %91 = bitcast i64* %90 to i8*
  %92 = load i8, i8* %91, !mcsema_real_eip !19
  %93 = zext i8 %92 to i64
  %94 = tail call x86_64_sysvcc i64 @to_byte(i64 %93), !mcsema_real_eip !20
  %95 = trunc i64 %94 to i32, !mcsema_real_eip !21
  %96 = add i32 %95, -9
  %97 = icmp eq i32 %96, 0, !mcsema_real_eip !21
  br i1 %97, label %block_0x83, label %block_0x77, !mcsema_real_eip !22

block_0x46d:                                      ; preds = %block_0x467, %block_0x37e, %block_0x32d, %block_0x309, %block_0x1fa, %block_0x127, %block_0xdb, %block_0xa4, %block_0x77, %block_0x53, %block_0x27
  %RDI_val.0 = phi i64 [ %RDI_val.1, %block_0x467 ], [ %288, %block_0x37e ], [ %288, %block_0x32d ], [ %288, %block_0x309 ], [ %222, %block_0x1fa ], [ 2, %block_0x127 ], [ 2, %block_0xdb ], [ %125, %block_0xa4 ], [ %93, %block_0x77 ], [ %68, %block_0x53 ], [ %68, %block_0x27 ]
  %RSI_val.0 = phi i64 [ %RSI_val.1, %block_0x467 ], [ %290, %block_0x37e ], [ %290, %block_0x32d ], [ %290, %block_0x309 ], [ %3, %block_0x1fa ], [ %3, %block_0x127 ], [ %3, %block_0xdb ], [ %3, %block_0xa4 ], [ %3, %block_0x77 ], [ %3, %block_0x53 ], [ %3, %block_0x27 ]
  %RDX_val.0 = phi i64 [ %RDX_val.1, %block_0x467 ], [ %328, %block_0x37e ], [ 8, %block_0x32d ], [ 8, %block_0x309 ], [ %210, %block_0x1fa ], [ %153, %block_0x127 ], [ %153, %block_0xdb ], [ %2, %block_0xa4 ], [ %2, %block_0x77 ], [ %2, %block_0x53 ], [ %2, %block_0x27 ]
  %RCX_val.0 = phi i64 [ %RCX_val.2, %block_0x467 ], [ %324, %block_0x37e ], [ %245, %block_0x32d ], [ %245, %block_0x309 ], [ %225, %block_0x1fa ], [ %RCX_val.1, %block_0x127 ], [ %85, %block_0xdb ], [ %85, %block_0xa4 ], [ %85, %block_0x77 ], [ %85, %block_0x53 ], [ %70, %block_0x27 ]
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -4
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %98 = bitcast i64* %_allin_new_bt_44 to i32*
  %99 = load i32, i32* %98, !mcsema_real_eip !23
  %100 = zext i32 %99 to i64, !mcsema_real_eip !23
  %_load_rsp_ptr_45 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_46 = ptrtoint i8* %_load_rsp_ptr_45 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_46, i64 80)
  %101 = extractvalue { i64, i1 } %uadd, 0
  %102 = xor i64 %101, %_new_ptr2int_46, !mcsema_real_eip !24
  %103 = and i64 %102, 16
  %104 = icmp eq i64 %103, 0
  %105 = icmp slt i64 %101, 0
  %106 = icmp eq i64 %101, 0, !mcsema_real_eip !24
  %107 = xor i64 %_new_ptr2int_46, -9223372036854775808, !mcsema_real_eip !24
  %108 = and i64 %102, %107, !mcsema_real_eip !24
  %109 = icmp slt i64 %108, 0
  %110 = trunc i64 %101 to i8, !mcsema_real_eip !24
  %111 = tail call i8 @llvm.ctpop.i8(i8 %110), !mcsema_real_eip !24
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  %114 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %101 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %115 = inttoptr i64 %101 to i64*, !mcsema_real_eip !25
  %116 = load i64, i64* %115, !mcsema_real_eip !25
  %_new_int2ptr_47 = inttoptr i64 %116 to i8*
  store volatile i8* %_new_int2ptr_47, i8** %_RBP_ptr_
  %117 = add i64 %101, 16, !mcsema_real_eip !26
  %_new_int2ptr_48 = inttoptr i64 %117 to i8*
  store volatile i8* %_new_int2ptr_48, i8** %_RSP_ptr_
  store i64 %100, i64* %RAX, !mcsema_real_eip !26
  store i64 %1, i64* %RBX, !mcsema_real_eip !26
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !26
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !26
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !26
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !26
  store volatile i64 %117, i64* %RSP
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_52 = ptrtoint i8* %_load_rbp_ptr_51 to i64
  store volatile i64 %_new_ptr2int_52, i64* %RBP
  store i64 %5, i64* %R8, !mcsema_real_eip !26
  store i64 %6, i64* %R9, !mcsema_real_eip !26
  store i64 %7, i64* %R10, !mcsema_real_eip !26
  store i64 %8, i64* %R11, !mcsema_real_eip !26
  store i64 %9, i64* %R12, !mcsema_real_eip !26
  store i64 %10, i64* %R13, !mcsema_real_eip !26
  store i64 %11, i64* %R14, !mcsema_real_eip !26
  store i64 %12, i64* %R15, !mcsema_real_eip !26
  store i64 %13, i64* %RIP, !mcsema_real_eip !26
  store i1 %114, i1* %CF, align 1, !mcsema_real_eip !26
  store i1 %113, i1* %PF, align 1, !mcsema_real_eip !26
  store i1 %104, i1* %AF, align 1, !mcsema_real_eip !26
  store i1 %106, i1* %ZF, align 1, !mcsema_real_eip !26
  store i1 %105, i1* %SF, align 1, !mcsema_real_eip !26
  store i1 %109, i1* %OF, align 1, !mcsema_real_eip !26
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !26
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !26
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %118 = load i64, i64* %43, align 4
  store i64 %118, i64* %42, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !26
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !26
  store i11 %49, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !26
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !26
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !26
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !26
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !26
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !26
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !26
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !26
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !26
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !26
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !26
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !26
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !26
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !26
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !26
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !26
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !26
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !26
  ret void, !mcsema_real_eip !26

block_0x77:                                       ; preds = %block_0x5f
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -4
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %119 = bitcast i64* %_allin_new_bt_54 to i32*
  store i32 -3, i32* %119, !mcsema_real_eip !27
  br label %block_0x46d, !mcsema_real_eip !28

block_0x83:                                       ; preds = %block_0x5f
  %120 = load i64, i64* %_allin_new_bt_35, !mcsema_real_eip !29
  %121 = add i64 %120, 2, !mcsema_real_eip !30
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !30
  %123 = bitcast i64* %122 to i8*
  %124 = load i8, i8* %123, !mcsema_real_eip !30
  %125 = zext i8 %124 to i64
  %126 = tail call x86_64_sysvcc i64 @to_byte(i64 %125), !mcsema_real_eip !31
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -24
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %127 = trunc i64 %126 to i32, !mcsema_real_eip !32
  %128 = bitcast i64* %_allin_new_bt_59 to i32*
  store i32 %127, i32* %128, !mcsema_real_eip !32
  %_load_rbp_ptr_60 = load i8*, i8** %_RBP_ptr_
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -24
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %129 = bitcast i64* %_allin_new_bt_62 to i32*
  %130 = load i32, i32* %129, !mcsema_real_eip !33
  %131 = shl i32 %130, 1, !mcsema_real_eip !34
  %132 = add i32 %131, -26
  %133 = icmp eq i32 %132, 0, !mcsema_real_eip !35
  br i1 %133, label %block_0xb0, label %block_0xa4, !mcsema_real_eip !36

block_0xa4:                                       ; preds = %block_0x83
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -4
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %134 = bitcast i64* %_allin_new_bt_65 to i32*
  store i32 -4, i32* %134, !mcsema_real_eip !37
  br label %block_0x46d, !mcsema_real_eip !38

block_0xb0:                                       ; preds = %block_0x83
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -16
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %135 = load i64, i64* %_allin_new_bt_67, !mcsema_real_eip !39
  %136 = add i64 %135, 3, !mcsema_real_eip !40
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !40
  %138 = bitcast i64* %137 to i8*
  %139 = load i8, i8* %138, !mcsema_real_eip !40
  %140 = zext i8 %139 to i64
  %141 = tail call x86_64_sysvcc i64 @to_byte(i64 %140), !mcsema_real_eip !41
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -28
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %142 = trunc i64 %141 to i32, !mcsema_real_eip !42
  %143 = bitcast i64* %_allin_new_bt_70 to i32*
  store i32 %142, i32* %143, !mcsema_real_eip !42
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -28
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %144 = bitcast i64* %_allin_new_bt_73 to i32*
  %145 = load i32, i32* %144, !mcsema_real_eip !43
  %146 = add i32 %145, 1
  %.lobit = ashr i32 %146, 31
  %147 = zext i32 %.lobit to i64, !mcsema_real_eip !44
  %148 = shl nuw i64 %147, 32, !mcsema_real_eip !45
  %149 = sext i32 %146 to i64, !mcsema_real_eip !45
  %150 = or i64 %148, %149, !mcsema_real_eip !45
  %151 = sdiv i64 %150, 2, !mcsema_real_eip !45
  %152 = srem i64 %150, 2, !mcsema_real_eip !45
  %153 = and i64 %152, 4294967295
  %154 = trunc i64 %151 to i32, !mcsema_real_eip !46
  %155 = add i32 %154, -7
  %156 = icmp eq i32 %155, 0, !mcsema_real_eip !46
  br i1 %156, label %block_0xe7, label %block_0xdb, !mcsema_real_eip !47

block_0xdb:                                       ; preds = %block_0xb0
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -4
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %157 = bitcast i64* %_allin_new_bt_76 to i32*
  store i32 -5, i32* %157, !mcsema_real_eip !48
  br label %block_0x46d, !mcsema_real_eip !49

block_0xe7:                                       ; preds = %block_0xb0
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -16
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %158 = load i64, i64* %_allin_new_bt_78, !mcsema_real_eip !50
  %159 = add i64 %158, 4, !mcsema_real_eip !51
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !51
  %161 = bitcast i64* %160 to i8*
  %162 = load i8, i8* %161, !mcsema_real_eip !51
  %163 = zext i8 %162 to i32
  %164 = and i32 %163, 15, !mcsema_real_eip !52
  %165 = zext i32 %164 to i64, !mcsema_real_eip !52
  %166 = add nsw i32 %164, -1
  %167 = icmp eq i32 %166, 0, !mcsema_real_eip !53
  br i1 %167, label %block_0x101, label %block_0x127, !mcsema_real_eip !54

block_0x101:                                      ; preds = %block_0xe7
  %168 = sext i8 %162 to i32, !mcsema_real_eip !55
  %169 = and i32 %168, 240, !mcsema_real_eip !56
  %170 = zext i32 %169 to i64, !mcsema_real_eip !56
  %171 = add nsw i32 %169, -48
  %172 = icmp eq i32 %171, 0, !mcsema_real_eip !57
  br i1 %172, label %block_0x11b, label %block_0x127, !mcsema_real_eip !58

block_0x127:                                      ; preds = %block_0x101, %block_0xe7
  %RCX_val.1 = phi i64 [ %170, %block_0x101 ], [ %165, %block_0xe7 ]
  %_new_gep_83 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -4
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %173 = bitcast i64* %_allin_new_bt_84 to i32*
  store i32 -6, i32* %173, !mcsema_real_eip !59
  br label %block_0x46d, !mcsema_real_eip !60

block_0x11b:                                      ; preds = %block_0x101
  %_new_gep_86 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -20
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %174 = bitcast i64* %_allin_new_bt_87 to i32*
  store i32 -4, i32* %174, !mcsema_real_eip !61
  %_load_rbp_ptr_88 = load i8*, i8** %_RBP_ptr_
  %_new_gep_89 = getelementptr i8, i8* %_load_rbp_ptr_88, i64 -16
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %175 = load i64, i64* %_allin_new_bt_90, !mcsema_real_eip !62
  %176 = add i64 %175, 5, !mcsema_real_eip !63
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !63
  %178 = bitcast i64* %177 to i8*
  %179 = load i8, i8* %178, !mcsema_real_eip !63
  %180 = zext i8 %179 to i32
  %181 = and i32 %180, 15, !mcsema_real_eip !64
  %182 = trunc i32 %181 to i8, !mcsema_real_eip !64
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_88, i64 -33
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  store i8 %182, i8* %_new_gep_92, !mcsema_real_eip !65
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -16
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %183 = load i64, i64* %_allin_new_bt_96, !mcsema_real_eip !66
  %184 = add i64 %183, 5, !mcsema_real_eip !67
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !67
  %186 = bitcast i64* %185 to i8*
  %187 = load i8, i8* %186, !mcsema_real_eip !67
  %188 = zext i8 %187 to i32
  %189 = and i32 %188, 240, !mcsema_real_eip !68
  %190 = trunc i32 %189 to i8, !mcsema_real_eip !68
  %_new_gep_98 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -34
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i8 %190, i8* %_new_gep_98, !mcsema_real_eip !69
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -33
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %191 = load i8, i8* %_new_gep_101, !mcsema_real_eip !70
  %192 = zext i8 %191 to i32
  %193 = add nsw i32 %192, -3
  %194 = icmp eq i32 %193, 0, !mcsema_real_eip !71
  br i1 %194, label %block_0x169, label %block_0x188, !mcsema_real_eip !72

block_0x169:                                      ; preds = %block_0x11b
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -34
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %195 = load i8, i8* %_new_gep_104, !mcsema_real_eip !73
  %196 = zext i8 %195 to i32
  %197 = add nsw i32 %196, -96
  %198 = icmp eq i32 %197, 0, !mcsema_real_eip !74
  br i1 %198, label %block_0x178, label %block_0x188, !mcsema_real_eip !75

block_0x188:                                      ; preds = %block_0x169, %block_0x11b
  %_new_gep_107 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -20
  %_allin_new_bt_108 = bitcast i8* %_new_gep_107 to i64*
  %199 = bitcast i64* %_allin_new_bt_108 to i32*
  %200 = load i32, i32* %199, !mcsema_real_eip !76
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %200, i32 5)
  %201 = extractvalue { i32, i1 } %uadd80, 0
  store i32 %201, i32* %199, !mcsema_real_eip !77
  br label %block_0x193, !mcsema_real_eip !73

block_0x193:                                      ; preds = %block_0x178, %block_0x188
  %_load_rbp_ptr_112 = load i8*, i8** %_RBP_ptr_
  %_new_gep_113 = getelementptr i8, i8* %_load_rbp_ptr_112, i64 -16
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %202 = load i64, i64* %_allin_new_bt_114, !mcsema_real_eip !78
  %203 = add i64 %202, 6, !mcsema_real_eip !79
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !79
  %205 = bitcast i64* %204 to i8*
  %206 = load i8, i8* %205, !mcsema_real_eip !79
  %207 = zext i8 %206 to i64
  %208 = tail call x86_64_sysvcc i64 @to_byte(i64 %207), !mcsema_real_eip !80
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_112, i64 -35
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %209 = trunc i64 %208 to i8, !mcsema_real_eip !81
  store i8 %209, i8* %_new_gep_116, !mcsema_real_eip !81
  %_load_rbp_ptr_118 = load i8*, i8** %_RBP_ptr_
  %_new_gep_119 = getelementptr i8, i8* %_load_rbp_ptr_118, i64 -16
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  %210 = load i64, i64* %_allin_new_bt_120, !mcsema_real_eip !82
  %211 = add i64 %210, 7, !mcsema_real_eip !83
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !83
  %213 = bitcast i64* %212 to i8*
  %214 = load i8, i8* %213, !mcsema_real_eip !83
  %215 = zext i8 %214 to i64
  %216 = tail call x86_64_sysvcc i64 @to_byte(i64 %215), !mcsema_real_eip !84
  %_new_gep_122 = getelementptr i8, i8* %_load_rbp_ptr_118, i64 -35
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %217 = load i8, i8* %_new_gep_122, !mcsema_real_eip !85
  %218 = zext i8 %217 to i32
  %219 = trunc i64 %216 to i32, !mcsema_real_eip !86
  %220 = or i32 %219, %218, !mcsema_real_eip !86
  %221 = trunc i32 %220 to i8, !mcsema_real_eip !86
  %222 = zext i32 %220 to i64, !mcsema_real_eip !86
  store i8 %221, i8* %_new_gep_122, !mcsema_real_eip !87
  %_load_rbp_ptr_130 = load i8*, i8** %_RBP_ptr_
  %_new_gep_131 = getelementptr i8, i8* %_load_rbp_ptr_130, i64 -20
  %_allin_new_bt_132 = bitcast i8* %_new_gep_131 to i64*
  %223 = bitcast i64* %_allin_new_bt_132 to i32*
  %224 = load i32, i32* %223, !mcsema_real_eip !88
  %225 = zext i32 %224 to i64, !mcsema_real_eip !88
  %226 = and i32 %224, 31, !mcsema_real_eip !89
  %227 = add i32 %224, -1
  %228 = icmp ne i32 %226, 0, !mcsema_real_eip !89
  %229 = select i1 %228, i32 %227, i32 0, !mcsema_real_eip !89
  %230 = zext i1 %228 to i32
  %231 = shl i32 %224, %229, !mcsema_real_eip !89
  %232 = shl i32 %231, %230, !mcsema_real_eip !89
  store i32 %232, i32* %223, !mcsema_real_eip !90
  %_load_rbp_ptr_139 = load i8*, i8** %_RBP_ptr_
  %_new_gep_140 = getelementptr i8, i8* %_load_rbp_ptr_139, i64 -20
  %_allin_new_bt_141 = bitcast i8* %_new_gep_140 to i64*
  %233 = bitcast i64* %_allin_new_bt_141 to i32*
  %234 = load i32, i32* %233, !mcsema_real_eip !91
  %235 = icmp eq i32 %234, 0, !mcsema_real_eip !91
  br i1 %235, label %block_0x206, label %block_0x1fa, !mcsema_real_eip !92

block_0x178:                                      ; preds = %block_0x169
  %_new_gep_143 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -20
  %_allin_new_bt_144 = bitcast i8* %_new_gep_143 to i64*
  %236 = bitcast i64* %_allin_new_bt_144 to i32*
  %237 = load i32, i32* %236, !mcsema_real_eip !93
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 4)
  %238 = extractvalue { i32, i1 } %uadd73, 0
  store i32 %238, i32* %236, !mcsema_real_eip !94
  br label %block_0x193, !mcsema_real_eip !95

block_0x1fa:                                      ; preds = %block_0x193
  %_new_gep_149 = getelementptr i8, i8* %_load_rbp_ptr_139, i64 -4
  %_allin_new_bt_150 = bitcast i8* %_new_gep_149 to i64*
  %239 = bitcast i64* %_allin_new_bt_150 to i32*
  store i32 -7, i32* %239, !mcsema_real_eip !96
  br label %block_0x46d, !mcsema_real_eip !97

block_0x206:                                      ; preds = %block_0x193
  %_new_gep_152 = getelementptr i8, i8* %_load_rbp_ptr_139, i64 -16
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %240 = load i64, i64* %_allin_new_bt_153, !mcsema_real_eip !98
  %uadd74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 8)
  %241 = extractvalue { i64, i1 } %uadd74, 0
  %242 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %241, i64 4), !mcsema_real_eip !99
  %243 = and i64 %242, 65535
  %244 = and i64 %225, -65536, !mcsema_real_eip !100
  %245 = or i64 %244, %243
  %_new_gep_155 = getelementptr i8, i8* %_load_rbp_ptr_139, i64 -38
  %_allin_new_bt_156 = bitcast i8* %_new_gep_155 to i64*
  %246 = trunc i64 %242 to i16, !mcsema_real_eip !101
  %247 = bitcast i64* %_allin_new_bt_156 to i16*
  store i16 %246, i16* %247, !mcsema_real_eip !101
  %_load_rbp_ptr_157 = load i8*, i8** %_RBP_ptr_
  %_new_gep_158 = getelementptr i8, i8* %_load_rbp_ptr_157, i64 -38
  %_allin_new_bt_159 = bitcast i8* %_new_gep_158 to i64*
  %248 = bitcast i64* %_allin_new_bt_159 to i16*
  %249 = load i16, i16* %248, !mcsema_real_eip !102
  %250 = zext i16 %249 to i32
  %251 = or i32 %250, 21845, !mcsema_real_eip !103
  %252 = add nsw i32 %251, -56663
  %253 = icmp eq i32 %252, 0, !mcsema_real_eip !104
  br i1 %253, label %block_0x23d, label %block_0x25d, !mcsema_real_eip !105

block_0x23d:                                      ; preds = %block_0x206
  %254 = or i32 %250, 43690, !mcsema_real_eip !106
  %255 = add nsw i32 %254, -65211
  %256 = icmp eq i32 %255, 0, !mcsema_real_eip !107
  br i1 %256, label %block_0x251, label %block_0x25d, !mcsema_real_eip !108

block_0x25d:                                      ; preds = %block_0x23d, %block_0x206
  %_new_gep_164 = getelementptr i8, i8* %_load_rbp_ptr_157, i64 -20
  %_allin_new_bt_165 = bitcast i8* %_new_gep_164 to i64*
  %257 = bitcast i64* %_allin_new_bt_165 to i32*
  store i32 48059, i32* %257, !mcsema_real_eip !109
  br label %block_0x264, !mcsema_real_eip !110

block_0x264:                                      ; preds = %block_0x251, %block_0x25d
  %_load_rbp_ptr_166 = load i8*, i8** %_RBP_ptr_
  %_new_gep_167 = getelementptr i8, i8* %_load_rbp_ptr_166, i64 -16
  %_allin_new_bt_168 = bitcast i8* %_new_gep_167 to i64*
  %258 = load i64, i64* %_allin_new_bt_168, !mcsema_real_eip !111
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %258, i64 12)
  %259 = extractvalue { i64, i1 } %uadd75, 0
  %260 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %259, i64 8), !mcsema_real_eip !112
  %_new_gep_170 = getelementptr i8, i8* %_load_rbp_ptr_166, i64 -44
  %_allin_new_bt_171 = bitcast i8* %_new_gep_170 to i64*
  %261 = trunc i64 %260 to i32, !mcsema_real_eip !113
  %262 = bitcast i64* %_allin_new_bt_171 to i32*
  store i32 %261, i32* %262, !mcsema_real_eip !113
  %_load_rbp_ptr_172 = load i8*, i8** %_RBP_ptr_
  %_new_gep_173 = getelementptr i8, i8* %_load_rbp_ptr_172, i64 -44
  %_allin_new_bt_174 = bitcast i8* %_new_gep_173 to i64*
  %263 = bitcast i64* %_allin_new_bt_174 to i32*
  %264 = load i32, i32* %263, !mcsema_real_eip !114
  %265 = xor i32 %264, -1534560611, !mcsema_real_eip !115
  %_new_gep_176 = getelementptr i8, i8* %_load_rbp_ptr_172, i64 -48
  %_allin_new_bt_177 = bitcast i8* %_new_gep_176 to i64*
  %266 = bitcast i64* %_allin_new_bt_177 to i32*
  store i32 %265, i32* %266, !mcsema_real_eip !116
  %_load_rbp_ptr_178 = load i8*, i8** %_RBP_ptr_
  %_new_gep_179 = getelementptr i8, i8* %_load_rbp_ptr_178, i64 -48
  %_allin_new_bt_180 = bitcast i8* %_new_gep_179 to i64*
  %267 = bitcast i64* %_allin_new_bt_180 to i32*
  %268 = load i32, i32* %267, !mcsema_real_eip !117
  %269 = lshr i32 %268, 16
  %_new_gep_182 = getelementptr i8, i8* %_load_rbp_ptr_178, i64 -52
  %_allin_new_bt_183 = bitcast i8* %_new_gep_182 to i64*
  %270 = bitcast i64* %_allin_new_bt_183 to i32*
  store i32 %269, i32* %270, !mcsema_real_eip !118
  %_load_rbp_ptr_184 = load i8*, i8** %_RBP_ptr_
  %_new_gep_185 = getelementptr i8, i8* %_load_rbp_ptr_184, i64 -48
  %_allin_new_bt_186 = bitcast i8* %_new_gep_185 to i64*
  %271 = bitcast i64* %_allin_new_bt_186 to i32*
  %272 = load i32, i32* %271, !mcsema_real_eip !119
  %273 = and i32 %272, 65535, !mcsema_real_eip !120
  %_new_gep_188 = getelementptr i8, i8* %_load_rbp_ptr_184, i64 -56
  %_allin_new_bt_189 = bitcast i8* %_new_gep_188 to i64*
  %274 = bitcast i64* %_allin_new_bt_189 to i32*
  store i32 %273, i32* %274, !mcsema_real_eip !121
  %_load_rbp_ptr_190 = load i8*, i8** %_RBP_ptr_
  %_new_gep_191 = getelementptr i8, i8* %_load_rbp_ptr_190, i64 -52
  %_allin_new_bt_192 = bitcast i8* %_new_gep_191 to i64*
  %275 = bitcast i64* %_allin_new_bt_192 to i32*
  %276 = load i32, i32* %275, !mcsema_real_eip !122
  %277 = add i32 %276, -79
  %278 = icmp eq i32 %277, 0, !mcsema_real_eip !122
  br i1 %278, label %block_0x2af, label %block_0x2c7, !mcsema_real_eip !123

block_0x251:                                      ; preds = %block_0x23d
  %_new_gep_194 = getelementptr i8, i8* %_load_rbp_ptr_157, i64 -20
  %_allin_new_bt_195 = bitcast i8* %_new_gep_194 to i64*
  %279 = bitcast i64* %_allin_new_bt_195 to i32*
  store i32 43690, i32* %279, !mcsema_real_eip !124
  br label %block_0x264, !mcsema_real_eip !125

block_0x2af:                                      ; preds = %block_0x264
  %_new_gep_197 = getelementptr i8, i8* %_load_rbp_ptr_190, i64 -56
  %_allin_new_bt_198 = bitcast i8* %_new_gep_197 to i64*
  %280 = bitcast i64* %_allin_new_bt_198 to i32*
  %281 = load i32, i32* %280, !mcsema_real_eip !126
  %_new_gep_200 = getelementptr i8, i8* %_load_rbp_ptr_190, i64 -20
  %_allin_new_bt_201 = bitcast i8* %_new_gep_200 to i64*
  %282 = bitcast i64* %_allin_new_bt_201 to i32*
  %283 = load i32, i32* %282, !mcsema_real_eip !127
  %284 = icmp eq i32 %281, %283
  br i1 %284, label %block_0x2bb, label %block_0x2c7, !mcsema_real_eip !128

block_0x2c7:                                      ; preds = %block_0x2af, %block_0x264
  %_new_gep_203 = getelementptr i8, i8* %_load_rbp_ptr_190, i64 -20
  %_allin_new_bt_204 = bitcast i8* %_new_gep_203 to i64*
  %285 = bitcast i64* %_allin_new_bt_204 to i32*
  store i32 48351, i32* %285, !mcsema_real_eip !129
  br label %block_0x2ce, !mcsema_real_eip !126

block_0x2ce:                                      ; preds = %block_0x2bb, %block_0x2c7
  %_load_rbp_ptr_205 = load i8*, i8** %_RBP_ptr_
  %_new_gep_206 = getelementptr i8, i8* %_load_rbp_ptr_205, i64 -20
  %_allin_new_bt_207 = bitcast i8* %_new_gep_206 to i64*
  %286 = bitcast i64* %_allin_new_bt_207 to i32*
  %287 = load i32, i32* %286, !mcsema_real_eip !130
  %288 = zext i32 %287 to i64, !mcsema_real_eip !130
  %_new_gep_209 = getelementptr i8, i8* %_load_rbp_ptr_205, i64 -16
  %_allin_new_bt_210 = bitcast i8* %_new_gep_209 to i64*
  %289 = load i64, i64* %_allin_new_bt_210, !mcsema_real_eip !131
  %uadd76 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %289, i64 20)
  %290 = extractvalue { i64, i1 } %uadd76, 0
  %291 = tail call x86_64_sysvcc i64 @read_bytes(i64 %288, i64 %290, i64 8), !mcsema_real_eip !132
  %_new_gep_212 = getelementptr i8, i8* %_load_rbp_ptr_205, i64 -60
  %_allin_new_bt_213 = bitcast i8* %_new_gep_212 to i64*
  %292 = trunc i64 %291 to i32, !mcsema_real_eip !133
  %293 = bitcast i64* %_allin_new_bt_213 to i32*
  store i32 %292, i32* %293, !mcsema_real_eip !133
  %_load_rbp_ptr_214 = load i8*, i8** %_RBP_ptr_
  %_new_gep_215 = getelementptr i8, i8* %_load_rbp_ptr_214, i64 -60
  %_allin_new_bt_216 = bitcast i8* %_new_gep_215 to i64*
  %294 = bitcast i64* %_allin_new_bt_216 to i32*
  %295 = load i32, i32* %294, !mcsema_real_eip !134
  %296 = add i32 %295, -3
  store i32 %296, i32* %294, !mcsema_real_eip !135
  %_load_rbp_ptr_220 = load i8*, i8** %_RBP_ptr_
  %_new_gep_221 = getelementptr i8, i8* %_load_rbp_ptr_220, i64 -60
  %_allin_new_bt_222 = bitcast i8* %_new_gep_221 to i64*
  %297 = bitcast i64* %_allin_new_bt_222 to i32*
  %298 = load i32, i32* %297, !mcsema_real_eip !136
  %299 = and i32 %298, 7, !mcsema_real_eip !137
  %300 = icmp eq i32 %299, 0, !mcsema_real_eip !137
  br i1 %300, label %block_0x315, label %block_0x309, !mcsema_real_eip !138

block_0x2bb:                                      ; preds = %block_0x2af
  store i32 0, i32* %282, !mcsema_real_eip !139
  br label %block_0x2ce, !mcsema_real_eip !140

block_0x309:                                      ; preds = %block_0x2ce
  %_new_gep_227 = getelementptr i8, i8* %_load_rbp_ptr_220, i64 -4
  %_allin_new_bt_228 = bitcast i8* %_new_gep_227 to i64*
  %301 = bitcast i64* %_allin_new_bt_228 to i32*
  store i32 -21, i32* %301, !mcsema_real_eip !141
  br label %block_0x46d, !mcsema_real_eip !142

block_0x315:                                      ; preds = %block_0x2ce
  %302 = xor i32 %298, -2147483648
  store i32 %302, i32* %297, !mcsema_real_eip !143
  %_load_rbp_ptr_234 = load i8*, i8** %_RBP_ptr_
  %_new_gep_235 = getelementptr i8, i8* %_load_rbp_ptr_234, i64 -60
  %_allin_new_bt_236 = bitcast i8* %_new_gep_235 to i64*
  %303 = bitcast i64* %_allin_new_bt_236 to i32*
  %304 = load i32, i32* %303, !mcsema_real_eip !144
  %305 = add i32 %304, -268435455
  %306 = icmp eq i32 %305, 0, !mcsema_real_eip !144
  %307 = icmp ult i32 %304, 268435455, !mcsema_real_eip !144
  %308 = or i1 %307, %306, !mcsema_real_eip !145
  br i1 %308, label %block_0x339, label %block_0x32d, !mcsema_real_eip !145

block_0x32d:                                      ; preds = %block_0x315
  %_new_gep_238 = getelementptr i8, i8* %_load_rbp_ptr_234, i64 -4
  %_allin_new_bt_239 = bitcast i8* %_new_gep_238 to i64*
  %309 = bitcast i64* %_allin_new_bt_239 to i32*
  store i32 -22, i32* %309, !mcsema_real_eip !146
  br label %block_0x46d, !mcsema_real_eip !147

block_0x339:                                      ; preds = %block_0x315
  %310 = xor i32 %304, 13631488, !mcsema_real_eip !148
  store i32 %310, i32* %303, !mcsema_real_eip !149
  %_load_rbp_ptr_246 = load i8*, i8** %_RBP_ptr_
  %_new_gep_247 = getelementptr i8, i8* %_load_rbp_ptr_246, i64 -60
  %_allin_new_bt_248 = bitcast i8* %_new_gep_247 to i64*
  %311 = bitcast i64* %_allin_new_bt_248 to i32*
  %312 = load i32, i32* %311, !mcsema_real_eip !150
  %313 = lshr i32 %312, 4
  store i32 %313, i32* %311, !mcsema_real_eip !151
  %_load_rbp_ptr_252 = load i8*, i8** %_RBP_ptr_
  %_new_gep_253 = getelementptr i8, i8* %_load_rbp_ptr_252, i64 -60
  %_allin_new_bt_254 = bitcast i8* %_new_gep_253 to i64*
  %314 = bitcast i64* %_allin_new_bt_254 to i32*
  %315 = load i32, i32* %314, !mcsema_real_eip !152
  %316 = add i32 %315, -226
  store i32 %316, i32* %314, !mcsema_real_eip !153
  %_load_rbp_ptr_258 = load i8*, i8** %_RBP_ptr_
  %_new_gep_259 = getelementptr i8, i8* %_load_rbp_ptr_258, i64 -60
  %_allin_new_bt_260 = bitcast i8* %_new_gep_259 to i64*
  %317 = bitcast i64* %_allin_new_bt_260 to i32*
  %318 = load i32, i32* %317, !mcsema_real_eip !154
  %319 = zext i32 %318 to i64, !mcsema_real_eip !154
  %_new_gep_262 = getelementptr i8, i8* %_load_rbp_ptr_258, i64 -68
  %_allin_new_bt_263 = bitcast i8* %_new_gep_262 to i64*
  %320 = bitcast i64* %_allin_new_bt_263 to i32*
  store i32 10000, i32* %320, !mcsema_real_eip !155
  %321 = and i64 %319, 4294967295
  %_load_rbp_ptr_264 = load i8*, i8** %_RBP_ptr_
  %_new_gep_265 = getelementptr i8, i8* %_load_rbp_ptr_264, i64 -68
  %_allin_new_bt_266 = bitcast i8* %_new_gep_265 to i64*
  %322 = bitcast i64* %_allin_new_bt_266 to i32*
  %323 = load i32, i32* %322, !mcsema_real_eip !156
  %324 = zext i32 %323 to i64, !mcsema_real_eip !156
  %sext77 = shl i64 %321, 32
  %325 = ashr exact i64 %sext77, 32
  %326 = udiv i64 %325, %324, !mcsema_real_eip !157
  %327 = urem i64 %325, %324, !mcsema_real_eip !157
  %328 = and i64 %327, 4294967295
  %_new_gep_268 = getelementptr i8, i8* %_load_rbp_ptr_264, i64 -60
  %_allin_new_bt_269 = bitcast i8* %_new_gep_268 to i64*
  %329 = trunc i64 %326 to i32, !mcsema_real_eip !158
  %330 = bitcast i64* %_allin_new_bt_269 to i32*
  store i32 %329, i32* %330, !mcsema_real_eip !158
  %_load_rbp_ptr_270 = load i8*, i8** %_RBP_ptr_
  %_new_gep_271 = getelementptr i8, i8* %_load_rbp_ptr_270, i64 -60
  %_allin_new_bt_272 = bitcast i8* %_new_gep_271 to i64*
  %331 = bitcast i64* %_allin_new_bt_272 to i32*
  %332 = load i32, i32* %331, !mcsema_real_eip !159
  %333 = add i32 %332, -3
  %334 = icmp eq i32 %333, 0, !mcsema_real_eip !159
  br i1 %334, label %block_0x389, label %block_0x37e, !mcsema_real_eip !160

block_0x37e:                                      ; preds = %block_0x339
  %_new_gep_277 = getelementptr i8, i8* %_load_rbp_ptr_270, i64 -4
  %_allin_new_bt_278 = bitcast i8* %_new_gep_277 to i64*
  %335 = bitcast i64* %_allin_new_bt_278 to i32*
  store i32 %332, i32* %335, !mcsema_real_eip !161
  br label %block_0x46d, !mcsema_real_eip !162

block_0x389:                                      ; preds = %block_0x339
  %_new_gep_280 = getelementptr i8, i8* %_load_rbp_ptr_270, i64 -20
  %_allin_new_bt_281 = bitcast i8* %_new_gep_280 to i64*
  %336 = bitcast i64* %_allin_new_bt_281 to i32*
  %337 = load i32, i32* %336, !mcsema_real_eip !163
  %338 = zext i32 %337 to i64, !mcsema_real_eip !163
  %_new_gep_283 = getelementptr i8, i8* %_load_rbp_ptr_270, i64 -16
  %_allin_new_bt_284 = bitcast i8* %_new_gep_283 to i64*
  %339 = load i64, i64* %_allin_new_bt_284, !mcsema_real_eip !164
  %uadd78 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %339, i64 28)
  %340 = extractvalue { i64, i1 } %uadd78, 0
  %341 = tail call x86_64_sysvcc i64 @read_bytes(i64 %338, i64 %340, i64 4), !mcsema_real_eip !165
  %_new_gep_286 = getelementptr i8, i8* %_load_rbp_ptr_270, i64 -64
  %_allin_new_bt_287 = bitcast i8* %_new_gep_286 to i64*
  %342 = trunc i64 %341 to i32, !mcsema_real_eip !166
  %343 = bitcast i64* %_allin_new_bt_287 to i32*
  store i32 %342, i32* %343, !mcsema_real_eip !166
  %_load_rbp_ptr_288 = load i8*, i8** %_RBP_ptr_
  %_new_gep_289 = getelementptr i8, i8* %_load_rbp_ptr_288, i64 -16
  %_allin_new_bt_290 = bitcast i8* %_new_gep_289 to i64*
  %344 = load i64, i64* %_allin_new_bt_290, !mcsema_real_eip !167
  %345 = add i64 %344, 28, !mcsema_real_eip !168
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !168
  %347 = bitcast i64* %346 to i8*
  %348 = load i8, i8* %347, !mcsema_real_eip !168
  %349 = sext i8 %348 to i32, !mcsema_real_eip !168
  %350 = add nsw i32 %349, -100
  %351 = icmp eq i32 %350, 0, !mcsema_real_eip !169
  br i1 %351, label %block_0x3b9, label %block_0x3dd, !mcsema_real_eip !170

block_0x3b9:                                      ; preds = %block_0x389
  %352 = add i64 %344, 29, !mcsema_real_eip !171
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !171
  %354 = bitcast i64* %353 to i8*
  %355 = load i8, i8* %354, !mcsema_real_eip !171
  %356 = sext i8 %355 to i32, !mcsema_real_eip !171
  %357 = add nsw i32 %356, -100
  %358 = icmp eq i32 %357, 0, !mcsema_real_eip !172
  br i1 %358, label %block_0x3cd, label %block_0x3dd, !mcsema_real_eip !173

block_0x3dd:                                      ; preds = %block_0x3b9, %block_0x389
  %359 = zext i32 %349 to i64, !mcsema_real_eip !174
  %360 = add i64 %344, 29, !mcsema_real_eip !175
  %361 = inttoptr i64 %360 to i64*, !mcsema_real_eip !175
  %362 = bitcast i64* %361 to i8*
  %363 = load i8, i8* %362, !mcsema_real_eip !175
  %364 = sext i8 %363 to i32, !mcsema_real_eip !175
  %365 = zext i32 %364 to i64, !mcsema_real_eip !175
  %366 = icmp eq i32 %349, %364
  br i1 %366, label %block_0x3f5, label %block_0x45c, !mcsema_real_eip !176

block_0x3f5:                                      ; preds = %block_0x3dd
  %367 = add i64 %344, 31, !mcsema_real_eip !177
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !177
  %369 = bitcast i64* %368 to i8*
  %370 = load i8, i8* %369, !mcsema_real_eip !177
  %371 = sext i8 %370 to i32, !mcsema_real_eip !177
  %372 = zext i32 %371 to i64, !mcsema_real_eip !177
  %373 = add i64 %344, 30, !mcsema_real_eip !178
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !178
  %375 = bitcast i64* %374 to i8*
  %376 = load i8, i8* %375, !mcsema_real_eip !178
  %377 = sext i8 %376 to i32, !mcsema_real_eip !178
  %378 = zext i32 %377 to i64, !mcsema_real_eip !178
  %379 = sub i32 %371, %377, !mcsema_real_eip !179
  %380 = sub i32 15, %379, !mcsema_real_eip !180
  %_new_gep_307 = getelementptr i8, i8* %_load_rbp_ptr_288, i64 -20
  %_allin_new_bt_308 = bitcast i8* %_new_gep_307 to i64*
  %381 = bitcast i64* %_allin_new_bt_308 to i32*
  %382 = load i32, i32* %381, !mcsema_real_eip !181
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %380, i32 %382)
  %383 = extractvalue { i32, i1 } %uadd79, 0
  store i32 %383, i32* %381, !mcsema_real_eip !182
  %_load_rbp_ptr_312 = load i8*, i8** %_RBP_ptr_
  %_new_gep_313 = getelementptr i8, i8* %_load_rbp_ptr_312, i64 -16
  %_allin_new_bt_314 = bitcast i8* %_new_gep_313 to i64*
  %384 = load i64, i64* %_allin_new_bt_314, !mcsema_real_eip !183
  %385 = add i64 %384, 28, !mcsema_real_eip !184
  %386 = inttoptr i64 %385 to i64*, !mcsema_real_eip !184
  %387 = bitcast i64* %386 to i8*
  %388 = load i8, i8* %387, !mcsema_real_eip !184
  %389 = zext i8 %388 to i64
  %390 = tail call x86_64_sysvcc i64 @to_byte(i64 %389), !mcsema_real_eip !185
  %_new_gep_316 = getelementptr i8, i8* %_load_rbp_ptr_312, i64 -20
  %_allin_new_bt_317 = bitcast i8* %_new_gep_316 to i64*
  %391 = bitcast i64* %_allin_new_bt_317 to i32*
  %392 = load i32, i32* %391, !mcsema_real_eip !186
  %393 = trunc i64 %390 to i32, !mcsema_real_eip !187
  %394 = sub i32 %392, %393, !mcsema_real_eip !187
  %395 = zext i32 %394 to i64, !mcsema_real_eip !187
  store i32 %394, i32* %391, !mcsema_real_eip !188
  %_load_rbp_ptr_321 = load i8*, i8** %_RBP_ptr_
  %_new_gep_322 = getelementptr i8, i8* %_load_rbp_ptr_321, i64 -20
  %_allin_new_bt_323 = bitcast i8* %_new_gep_322 to i64*
  %396 = bitcast i64* %_allin_new_bt_323 to i32*
  %397 = load i32, i32* %396, !mcsema_real_eip !189
  %398 = icmp eq i32 %397, 0, !mcsema_real_eip !189
  br i1 %398, label %block_0x438, label %block_0x467, !mcsema_real_eip !190

block_0x45c:                                      ; preds = %block_0x3dd
  %_new_gep_325 = getelementptr i8, i8* %_load_rbp_ptr_288, i64 -64
  %_allin_new_bt_326 = bitcast i8* %_new_gep_325 to i64*
  %399 = bitcast i64* %_allin_new_bt_326 to i32*
  %400 = load i32, i32* %399, !mcsema_real_eip !191
  %_new_gep_328 = getelementptr i8, i8* %_load_rbp_ptr_288, i64 -20
  %_allin_new_bt_329 = bitcast i8* %_new_gep_328 to i64*
  %401 = bitcast i64* %_allin_new_bt_329 to i32*
  store i32 %400, i32* %401, !mcsema_real_eip !192
  br label %block_0x467, !mcsema_real_eip !193

block_0x3cd:                                      ; preds = %block_0x3b9
  %_new_gep_331 = getelementptr i8, i8* %_load_rbp_ptr_288, i64 -64
  %_allin_new_bt_332 = bitcast i8* %_new_gep_331 to i64*
  %402 = bitcast i64* %_allin_new_bt_332 to i32*
  %403 = load i32, i32* %402, !mcsema_real_eip !194
  %_new_gep_334 = getelementptr i8, i8* %_load_rbp_ptr_288, i64 -20
  %_allin_new_bt_335 = bitcast i8* %_new_gep_334 to i64*
  %404 = bitcast i64* %_allin_new_bt_335 to i32*
  %405 = load i32, i32* %404, !mcsema_real_eip !195
  %406 = xor i32 %403, %405, !mcsema_real_eip !196
  %407 = zext i32 %406 to i64, !mcsema_real_eip !196
  store i32 %406, i32* %404, !mcsema_real_eip !197
  br label %block_0x467, !mcsema_real_eip !198

block_0x438:                                      ; preds = %block_0x3f5
  %_new_gep_340 = getelementptr i8, i8* %_load_rbp_ptr_321, i64 -16
  %_allin_new_bt_341 = bitcast i8* %_new_gep_340 to i64*
  %408 = load i64, i64* %_allin_new_bt_341, !mcsema_real_eip !199
  %409 = add i64 %408, 31, !mcsema_real_eip !200
  %410 = inttoptr i64 %409 to i64*, !mcsema_real_eip !200
  %411 = bitcast i64* %410 to i8*
  %412 = load i8, i8* %411, !mcsema_real_eip !200
  %413 = zext i8 %412 to i64
  %414 = tail call x86_64_sysvcc i64 @to_byte(i64 %413), !mcsema_real_eip !201
  %415 = trunc i64 %414 to i32, !mcsema_real_eip !202
  %416 = add i32 %415, -4
  %417 = icmp eq i32 %416, 0, !mcsema_real_eip !202
  br i1 %417, label %block_0x467, label %block_0x450, !mcsema_real_eip !203

block_0x467:                                      ; preds = %block_0x450, %block_0x438, %block_0x3cd, %block_0x45c, %block_0x3f5
  %RDI_val.1 = phi i64 [ %338, %block_0x3cd ], [ %413, %block_0x438 ], [ %413, %block_0x450 ], [ %389, %block_0x3f5 ], [ %338, %block_0x45c ]
  %RSI_val.1 = phi i64 [ %344, %block_0x3cd ], [ %378, %block_0x438 ], [ %378, %block_0x450 ], [ %378, %block_0x3f5 ], [ %344, %block_0x45c ]
  %RDX_val.1 = phi i64 [ 4, %block_0x3cd ], [ %395, %block_0x438 ], [ %395, %block_0x450 ], [ %395, %block_0x3f5 ], [ %365, %block_0x45c ]
  %RCX_val.2 = phi i64 [ %407, %block_0x3cd ], [ %384, %block_0x438 ], [ %384, %block_0x450 ], [ %384, %block_0x3f5 ], [ %359, %block_0x45c ]
  %_load_rbp_ptr_342 = load i8*, i8** %_RBP_ptr_
  %_new_gep_343 = getelementptr i8, i8* %_load_rbp_ptr_342, i64 -20
  %_allin_new_bt_344 = bitcast i8* %_new_gep_343 to i64*
  %418 = bitcast i64* %_allin_new_bt_344 to i32*
  %419 = load i32, i32* %418, !mcsema_real_eip !204
  %_new_gep_346 = getelementptr i8, i8* %_load_rbp_ptr_342, i64 -4
  %_allin_new_bt_347 = bitcast i8* %_new_gep_346 to i64*
  %420 = bitcast i64* %_allin_new_bt_347 to i32*
  store i32 %419, i32* %420, !mcsema_real_eip !205
  br label %block_0x46d, !mcsema_real_eip !206

block_0x450:                                      ; preds = %block_0x438
  store i32 -32, i32* %396, !mcsema_real_eip !206
  br label %block_0x467
}

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @to_byte(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
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
!2 = !{i64 0}
!3 = !{i64 8}
!4 = !{i64 12}
!5 = !{i64 16}
!6 = !{i64 23}
!7 = !{i64 26}
!8 = !{i64 33}
!9 = !{i64 42}
!10 = !{i64 45}
!11 = !{i64 50}
!12 = !{i64 60}
!13 = !{i64 64}
!14 = !{i64 68}
!15 = !{i64 71}
!16 = !{i64 77}
!17 = !{i64 83}
!18 = !{i64 90}
!19 = !{i64 99}
!20 = !{i64 103}
!21 = !{i64 108}
!22 = !{i64 113}
!23 = !{i64 1133}
!24 = !{i64 1136}
!25 = !{i64 1140}
!26 = !{i64 1141}
!27 = !{i64 119}
!28 = !{i64 126}
!29 = !{i64 131}
!30 = !{i64 135}
!31 = !{i64 139}
!32 = !{i64 144}
!33 = !{i64 147}
!34 = !{i64 150}
!35 = !{i64 153}
!36 = !{i64 158}
!37 = !{i64 164}
!38 = !{i64 171}
!39 = !{i64 176}
!40 = !{i64 180}
!41 = !{i64 184}
!42 = !{i64 194}
!43 = !{i64 197}
!44 = !{i64 205}
!45 = !{i64 206}
!46 = !{i64 208}
!47 = !{i64 213}
!48 = !{i64 219}
!49 = !{i64 226}
!50 = !{i64 231}
!51 = !{i64 235}
!52 = !{i64 239}
!53 = !{i64 245}
!54 = !{i64 251}
!55 = !{i64 261}
!56 = !{i64 265}
!57 = !{i64 271}
!58 = !{i64 277}
!59 = !{i64 295}
!60 = !{i64 302}
!61 = !{i64 283}
!62 = !{i64 307}
!63 = !{i64 311}
!64 = !{i64 315}
!65 = !{i64 323}
!66 = !{i64 326}
!67 = !{i64 330}
!68 = !{i64 334}
!69 = !{i64 342}
!70 = !{i64 345}
!71 = !{i64 349}
!72 = !{i64 355}
!73 = !{i64 361}
!74 = !{i64 365}
!75 = !{i64 370}
!76 = !{i64 392}
!77 = !{i64 400}
!78 = !{i64 403}
!79 = !{i64 407}
!80 = !{i64 411}
!81 = !{i64 418}
!82 = !{i64 421}
!83 = !{i64 425}
!84 = !{i64 429}
!85 = !{i64 434}
!86 = !{i64 438}
!87 = !{i64 443}
!88 = !{i64 482}
!89 = !{i64 488}
!90 = !{i64 490}
!91 = !{i64 493}
!92 = !{i64 500}
!93 = !{i64 376}
!94 = !{i64 384}
!95 = !{i64 387}
!96 = !{i64 506}
!97 = !{i64 513}
!98 = !{i64 528}
!99 = !{i64 541}
!100 = !{i64 546}
!101 = !{i64 549}
!102 = !{i64 553}
!103 = !{i64 557}
!104 = !{i64 562}
!105 = !{i64 567}
!106 = !{i64 577}
!107 = !{i64 582}
!108 = !{i64 587}
!109 = !{i64 605}
!110 = !{i64 573}
!111 = !{i64 622}
!112 = !{i64 635}
!113 = !{i64 640}
!114 = !{i64 643}
!115 = !{i64 646}
!116 = !{i64 651}
!117 = !{i64 654}
!118 = !{i64 660}
!119 = !{i64 663}
!120 = !{i64 666}
!121 = !{i64 671}
!122 = !{i64 674}
!123 = !{i64 681}
!124 = !{i64 593}
!125 = !{i64 600}
!126 = !{i64 687}
!127 = !{i64 690}
!128 = !{i64 693}
!129 = !{i64 711}
!130 = !{i64 723}
!131 = !{i64 726}
!132 = !{i64 739}
!133 = !{i64 744}
!134 = !{i64 747}
!135 = !{i64 755}
!136 = !{i64 758}
!137 = !{i64 761}
!138 = !{i64 771}
!139 = !{i64 699}
!140 = !{i64 706}
!141 = !{i64 777}
!142 = !{i64 784}
!143 = !{i64 797}
!144 = !{i64 800}
!145 = !{i64 807}
!146 = !{i64 813}
!147 = !{i64 820}
!148 = !{i64 833}
!149 = !{i64 839}
!150 = !{i64 842}
!151 = !{i64 848}
!152 = !{i64 851}
!153 = !{i64 860}
!154 = !{i64 863}
!155 = !{i64 866}
!156 = !{i64 873}
!157 = !{i64 876}
!158 = !{i64 878}
!159 = !{i64 881}
!160 = !{i64 888}
!161 = !{i64 897}
!162 = !{i64 900}
!163 = !{i64 910}
!164 = !{i64 913}
!165 = !{i64 926}
!166 = !{i64 931}
!167 = !{i64 934}
!168 = !{i64 938}
!169 = !{i64 942}
!170 = !{i64 947}
!171 = !{i64 957}
!172 = !{i64 961}
!173 = !{i64 967}
!174 = !{i64 993}
!175 = !{i64 1001}
!176 = !{i64 1007}
!177 = !{i64 1022}
!178 = !{i64 1030}
!179 = !{i64 1034}
!180 = !{i64 1036}
!181 = !{i64 1038}
!182 = !{i64 1043}
!183 = !{i64 1046}
!184 = !{i64 1050}
!185 = !{i64 1054}
!186 = !{i64 1059}
!187 = !{i64 1062}
!188 = !{i64 1064}
!189 = !{i64 1067}
!190 = !{i64 1074}
!191 = !{i64 1116}
!192 = !{i64 1119}
!193 = !{i64 1013}
!194 = !{i64 973}
!195 = !{i64 976}
!196 = !{i64 979}
!197 = !{i64 981}
!198 = !{i64 984}
!199 = !{i64 1080}
!200 = !{i64 1084}
!201 = !{i64 1088}
!202 = !{i64 1093}
!203 = !{i64 1098}
!204 = !{i64 1127}
!205 = !{i64 1130}
!206 = !{i64 1104}
