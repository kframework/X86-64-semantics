; ModuleID = 'Output/test_7.clang.trans.bc'
source_filename = "Output/test_7.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_160(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 176
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 176
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
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  store i64 %4, i64* %_allin_new_bt_2, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %1, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  %_new_gep_5 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -168
  store volatile i8* %_new_gep_5, i8** %_RSP_ptr_
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -20
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %61 = bitcast i64* %_allin_new_bt_16 to i32*
  store i32 0, i32* %61, !mcsema_real_eip !5
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -24
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %62 = bitcast i64* %_allin_new_bt_19 to i32*
  store i32 1, i32* %62, !mcsema_real_eip !6
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -68
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %63 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 0, i32* %63, !mcsema_real_eip !7
  br label %block_0x183, !mcsema_real_eip !8

block_0x183:                                      ; preds = %block_0x190, %entry
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -68
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %64 = bitcast i64* %_allin_new_bt_25 to i32*
  %65 = load i32, i32* %64, !mcsema_real_eip !8
  %66 = add i32 %65, -10
  %67 = xor i32 %66, %65, !mcsema_real_eip !8
  %68 = icmp slt i32 %66, 0
  %69 = and i32 %67, %65, !mcsema_real_eip !8
  %70 = icmp slt i32 %69, 0
  %tmp = xor i1 %68, %70
  br i1 %tmp, label %block_0x190, label %block_0x1b0, !mcsema_real_eip !9

block_0x190:                                      ; preds = %block_0x183
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %65, i32 1)
  %71 = extractvalue { i32, i1 } %uadd, 0
  %72 = zext i32 %71 to i64, !mcsema_real_eip !10
  %73 = sext i32 %65 to i64, !mcsema_real_eip !11
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -64
  %74 = shl nsw i64 %73, 2
  %_new_gep_34 = getelementptr i8, i8* %_new_gep_33, i64 %74
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %75 = bitcast i64* %_allin_new_bt_35 to i32*
  store i32 %71, i32* %75, !mcsema_real_eip !12
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -68
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %76 = bitcast i64* %_allin_new_bt_38 to i32*
  %77 = load i32, i32* %76, !mcsema_real_eip !13
  %uadd211 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %77, i32 1)
  %78 = extractvalue { i32, i1 } %uadd211, 0
  store i32 %78, i32* %76, !mcsema_real_eip !14
  br label %block_0x183, !mcsema_real_eip !15

block_0x1b0:                                      ; preds = %block_0x183
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -24
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %79 = ptrtoint i64* %_allin_new_bt_44 to i64, !mcsema_real_eip !16
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -80
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  store i64 %79, i64* %_allin_new_bt_46, !mcsema_real_eip !17
  %80 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !18
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -88
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  store i64 %80, i64* %_allin_new_bt_49, !mcsema_real_eip !19
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -92
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %81 = bitcast i64* %_allin_new_bt_52 to i32*
  store i32 0, i32* %81, !mcsema_real_eip !20
  br label %block_0x1d2, !mcsema_real_eip !21

block_0x1d2:                                      ; preds = %block_0x1df, %block_0x1b0
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -92
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %82 = bitcast i64* %_allin_new_bt_55 to i32*
  %83 = load i32, i32* %82, !mcsema_real_eip !22
  %84 = add i32 %83, -10
  %85 = xor i32 %84, %83, !mcsema_real_eip !22
  %86 = and i32 %85, 16, !mcsema_real_eip !22
  %87 = icmp ne i32 %86, 0, !mcsema_real_eip !22
  %88 = trunc i32 %84 to i8, !mcsema_real_eip !22
  %89 = tail call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !22
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  %92 = icmp eq i32 %84, 0, !mcsema_real_eip !22
  %93 = icmp slt i32 %84, 0
  %94 = icmp ult i32 %83, 10, !mcsema_real_eip !22
  %95 = and i32 %85, %83, !mcsema_real_eip !22
  %96 = icmp slt i32 %95, 0
  %tmp212 = xor i1 %93, %96
  br i1 %tmp212, label %block_0x1df, label %block_0x202, !mcsema_real_eip !23

block_0x1df:                                      ; preds = %block_0x1d2
  %uadd213 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 1)
  %97 = extractvalue { i32, i1 } %uadd213, 0
  %98 = zext i32 %97 to i64, !mcsema_real_eip !24
  %99 = sext i32 %83 to i64, !mcsema_real_eip !25
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -88
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %100 = load i64, i64* %_allin_new_bt_64, !mcsema_real_eip !26
  %101 = shl nsw i64 %99, 2
  %102 = add i64 %100, %101, !mcsema_real_eip !27
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !27
  %104 = bitcast i64* %103 to i32*
  store i32 %97, i32* %104, !mcsema_real_eip !27
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -92
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %105 = bitcast i64* %_allin_new_bt_67 to i32*
  %106 = load i32, i32* %105, !mcsema_real_eip !28
  %uadd214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %106, i32 1)
  %107 = extractvalue { i32, i1 } %uadd214, 0
  store i32 %107, i32* %105, !mcsema_real_eip !29
  br label %block_0x1d2, !mcsema_real_eip !30

block_0x202:                                      ; preds = %block_0x1d2
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -64
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %108 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !31
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -24
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %109 = bitcast i64* %_allin_new_bt_75 to i32*
  %110 = load i32, i32* %109, !mcsema_real_eip !32
  %111 = zext i32 %110 to i64, !mcsema_real_eip !32
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -80
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %112 = load i64, i64* %_allin_new_bt_78, !mcsema_real_eip !33
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -88
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %113 = load i64, i64* %_allin_new_bt_80, !mcsema_real_eip !34
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -104
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  store i64 %113, i64* %_allin_new_bt_91, !mcsema_real_eip !35
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -104
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %114 = load i64, i64* %_allin_new_bt_94, !mcsema_real_eip !36
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -112
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  store i64 %108, i64* %_allin_new_bt_96, !mcsema_real_eip !37
  %_load_rbp_ptr_97 = load i8*, i8** %_RBP_ptr_
  %_new_gep_98 = getelementptr i8, i8* %_load_rbp_ptr_97, i64 -116
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  %115 = bitcast i64* %_allin_new_bt_99 to i32*
  store i32 %110, i32* %115, !mcsema_real_eip !38
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -128
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  store i64 %112, i64* %_allin_new_bt_102, !mcsema_real_eip !39
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -116
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %116 = bitcast i64* %_allin_new_bt_105 to i32*
  %117 = load i32, i32* %116, !mcsema_real_eip !40
  %118 = zext i32 %117 to i64, !mcsema_real_eip !40
  %_load_rsp_ptr_106 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_107 = bitcast i8* %_load_rsp_ptr_106 to i64*
  %119 = bitcast i64* %_allin_new_bt_107 to i32*
  store i32 %117, i32* %119, !mcsema_real_eip !41
  %_load_rbp_ptr_108 = load i8*, i8** %_RBP_ptr_
  %_new_gep_109 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -112
  %_allin_new_bt_110 = bitcast i8* %_new_gep_109 to i64*
  %120 = load i64, i64* %_allin_new_bt_110, !mcsema_real_eip !42
  %_load_rsp_ptr_111 = load i8*, i8** %_RSP_ptr_
  %_new_gep_112 = getelementptr i8, i8* %_load_rsp_ptr_111, i64 8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  store i64 %120, i64* %_allin_new_bt_113, !mcsema_real_eip !43
  %_load_rbp_ptr_114 = load i8*, i8** %_RBP_ptr_
  %_new_gep_115 = getelementptr i8, i8* %_load_rbp_ptr_114, i64 -128
  %_allin_new_bt_116 = bitcast i8* %_new_gep_115 to i64*
  %121 = load i64, i64* %_allin_new_bt_116, !mcsema_real_eip !44
  %_load_rsp_ptr_117 = load i8*, i8** %_RSP_ptr_
  %_new_gep_118 = getelementptr i8, i8* %_load_rsp_ptr_117, i64 16
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  store i64 %121, i64* %_allin_new_bt_119, !mcsema_real_eip !45
  %_load_rsp_ptr_120 = load i8*, i8** %_RSP_ptr_
  %_new_gep_121 = getelementptr i8, i8* %_load_rsp_ptr_120, i64 24
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  store i64 %113, i64* %_allin_new_bt_122, !mcsema_real_eip !46
  %_load_rsp_ptr_123 = load i8*, i8** %_RSP_ptr_
  %_new_gep_124 = getelementptr i8, i8* %_load_rsp_ptr_123, i64 -8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_125, !mcsema_real_eip !47
  store volatile i8* %_new_gep_124, i8** %_RSP_ptr_
  store i64 %118, i64* %RAX, !mcsema_real_eip !47
  store i64 %120, i64* %RBX, !mcsema_real_eip !47
  store i64 %114, i64* %RCX, !mcsema_real_eip !47
  store i64 %112, i64* %RDX, !mcsema_real_eip !47
  store i64 %108, i64* %RSI, !mcsema_real_eip !47
  store i64 %111, i64* %RDI, !mcsema_real_eip !47
  %_new_ptr2int_127 = ptrtoint i8* %_new_gep_124 to i64
  store volatile i64 %_new_ptr2int_127, i64* %RSP
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_129 = ptrtoint i8* %_load_rbp_ptr_128 to i64
  store volatile i64 %_new_ptr2int_129, i64* %RBP
  store i64 10, i64* %R8, !mcsema_real_eip !47
  store i64 10, i64* %R9, !mcsema_real_eip !47
  store i64 %113, i64* %R10, !mcsema_real_eip !47
  store i64 %114, i64* %R11, !mcsema_real_eip !47
  store i64 %2, i64* %R12, !mcsema_real_eip !47
  store i64 %3, i64* %R13, !mcsema_real_eip !47
  store i64 %121, i64* %R14, !mcsema_real_eip !47
  store i64 %5, i64* %R15, !mcsema_real_eip !47
  store i64 %6, i64* %RIP, !mcsema_real_eip !47
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %91, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 %92, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %93, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 %96, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %7, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  store i1 %11, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %12, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i3 %13, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i1 %14, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %15, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %16, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %17, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %18, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %19, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %20, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %21, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %22, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %23, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %24, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %25, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i2 %26, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %27, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i1 %28, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %29, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %30, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %31, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %32, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %33, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %122 = load i64, i64* %36, align 4
  store i64 %122, i64* %35, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i64 %39, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  store i16 %40, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i64 %41, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  store i11 %42, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !47
  store i128 %43, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %44, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %45, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %46, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %47, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %48, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %49, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %50, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %51, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %52, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %53, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %54, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %55, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %56, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %57, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %58, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i64 %59, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  store i64 %60, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_140)
  %123 = load i64, i64* %RAX, !mcsema_real_eip !47
  %124 = load i64, i64* %RCX, !mcsema_real_eip !47
  %125 = load i64, i64* %RDX, !mcsema_real_eip !47
  %126 = load i64, i64* %RSI, !mcsema_real_eip !47
  %127 = load i64, i64* %RDI, !mcsema_real_eip !47
  %128 = load i64, i64* %R8, !mcsema_real_eip !47
  %129 = load i64, i64* %R9, !mcsema_real_eip !47
  %130 = load i64, i64* %R10, !mcsema_real_eip !47
  %131 = load i64, i64* %R11, !mcsema_real_eip !47
  %132 = load i64, i64* %R12, !mcsema_real_eip !47
  %133 = load i64, i64* %R13, !mcsema_real_eip !47
  %134 = load i64, i64* %R15, !mcsema_real_eip !47
  %135 = load i64, i64* %RIP, !mcsema_real_eip !47
  %136 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %9, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %137 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %138 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %139 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %140 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %141 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %142 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %143 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %144 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %145 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %146 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %147 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %148 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %149 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %150 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %151 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %152 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %153 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %154 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %155 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %156 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %157 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %158 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %159 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %160 = load i64, i64* %35, align 4
  store i64 %160, i64* %36, align 4
  %161 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %162 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !47
  %163 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %164 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !47
  %165 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !47
  %166 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  %167 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  %168 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  %169 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  %170 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  %171 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  %172 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  %173 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  %174 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  %175 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  %176 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  %177 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  %178 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  %179 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  %180 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  %181 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  %182 = load i64, i64* %STACK_BASE, !mcsema_real_eip !47
  %183 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !47
  %_load_rsp_ptr_130 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_131 = ptrtoint i8* %_load_rsp_ptr_130 to i64
  %uadd215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_131, i64 144)
  %184 = extractvalue { i64, i1 } %uadd215, 0
  %185 = xor i64 %184, %_new_ptr2int_131, !mcsema_real_eip !48
  %186 = and i64 %185, 16
  %187 = icmp eq i64 %186, 0
  %188 = icmp slt i64 %184, 0
  %189 = icmp eq i64 %184, 0, !mcsema_real_eip !48
  %190 = xor i64 %_new_ptr2int_131, -9223372036854775808, !mcsema_real_eip !48
  %191 = and i64 %185, %190, !mcsema_real_eip !48
  %192 = icmp slt i64 %191, 0
  %193 = trunc i64 %184 to i8, !mcsema_real_eip !48
  %194 = tail call i8 @llvm.ctpop.i8(i8 %193), !mcsema_real_eip !48
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  %197 = extractvalue { i64, i1 } %uadd215, 1
  %_new_int2ptr_ = inttoptr i64 %184 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %198 = inttoptr i64 %184 to i64*, !mcsema_real_eip !49
  %199 = load i64, i64* %198, !mcsema_real_eip !49
  %200 = add i64 %184, 8, !mcsema_real_eip !49
  %_new_int2ptr_132 = inttoptr i64 %200 to i8*
  store volatile i8* %_new_int2ptr_132, i8** %_RSP_ptr_
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !50
  %202 = load i64, i64* %201, !mcsema_real_eip !50
  %203 = add i64 %184, 16, !mcsema_real_eip !50
  %_new_int2ptr_133 = inttoptr i64 %203 to i8*
  store volatile i8* %_new_int2ptr_133, i8** %_RSP_ptr_
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !51
  %205 = load i64, i64* %204, !mcsema_real_eip !51
  %_new_int2ptr_134 = inttoptr i64 %205 to i8*
  store volatile i8* %_new_int2ptr_134, i8** %_RBP_ptr_
  %206 = add i64 %184, 32, !mcsema_real_eip !52
  %_new_int2ptr_135 = inttoptr i64 %206 to i8*
  store volatile i8* %_new_int2ptr_135, i8** %_RSP_ptr_
  store i64 %123, i64* %RAX, !mcsema_real_eip !52
  store i64 %199, i64* %RBX, !mcsema_real_eip !52
  store i64 %124, i64* %RCX, !mcsema_real_eip !52
  store i64 %125, i64* %RDX, !mcsema_real_eip !52
  store i64 %126, i64* %RSI, !mcsema_real_eip !52
  store i64 %127, i64* %RDI, !mcsema_real_eip !52
  store volatile i64 %206, i64* %RSP
  %_load_rbp_ptr_138 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_139 = ptrtoint i8* %_load_rbp_ptr_138 to i64
  store volatile i64 %_new_ptr2int_139, i64* %RBP
  store i64 %128, i64* %R8, !mcsema_real_eip !52
  store i64 %129, i64* %R9, !mcsema_real_eip !52
  store i64 %130, i64* %R10, !mcsema_real_eip !52
  store i64 %131, i64* %R11, !mcsema_real_eip !52
  store i64 %132, i64* %R12, !mcsema_real_eip !52
  store i64 %133, i64* %R13, !mcsema_real_eip !52
  store i64 %202, i64* %R14, !mcsema_real_eip !52
  store i64 %134, i64* %R15, !mcsema_real_eip !52
  store i64 %135, i64* %RIP, !mcsema_real_eip !52
  store i1 %197, i1* %CF, align 1, !mcsema_real_eip !52
  store i1 %196, i1* %PF, align 1, !mcsema_real_eip !52
  store i1 %187, i1* %AF, align 1, !mcsema_real_eip !52
  store i1 %189, i1* %ZF, align 1, !mcsema_real_eip !52
  store i1 %188, i1* %SF, align 1, !mcsema_real_eip !52
  store i1 %192, i1* %OF, align 1, !mcsema_real_eip !52
  store i1 %136, i1* %DF, align 1, !mcsema_real_eip !52
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 128, i32 8, i1 false), !mcsema_real_eip !52
  store i1 %137, i1* %FPU_B, align 1, !mcsema_real_eip !52
  store i1 %138, i1* %FPU_C3, align 1, !mcsema_real_eip !52
  store i3 %139, i3* %FPU_TOP, align 1, !mcsema_real_eip !52
  store i1 %140, i1* %FPU_C2, align 1, !mcsema_real_eip !52
  store i1 %141, i1* %FPU_C1, align 1, !mcsema_real_eip !52
  store i1 %142, i1* %FPU_C0, align 1, !mcsema_real_eip !52
  store i1 %143, i1* %FPU_ES, align 1, !mcsema_real_eip !52
  store i1 %144, i1* %FPU_SF, align 1, !mcsema_real_eip !52
  store i1 %145, i1* %FPU_PE, align 1, !mcsema_real_eip !52
  store i1 %146, i1* %FPU_UE, align 1, !mcsema_real_eip !52
  store i1 %147, i1* %FPU_OE, align 1, !mcsema_real_eip !52
  store i1 %148, i1* %FPU_ZE, align 1, !mcsema_real_eip !52
  store i1 %149, i1* %FPU_DE, align 1, !mcsema_real_eip !52
  store i1 %150, i1* %FPU_IE, align 1, !mcsema_real_eip !52
  store i1 %151, i1* %FPU_X, align 1, !mcsema_real_eip !52
  store i2 %152, i2* %FPU_RC, align 1, !mcsema_real_eip !52
  store i2 %153, i2* %FPU_PC, align 1, !mcsema_real_eip !52
  store i1 %154, i1* %FPU_PM, align 1, !mcsema_real_eip !52
  store i1 %155, i1* %FPU_UM, align 1, !mcsema_real_eip !52
  store i1 %156, i1* %FPU_OM, align 1, !mcsema_real_eip !52
  store i1 %157, i1* %FPU_ZM, align 1, !mcsema_real_eip !52
  store i1 %158, i1* %FPU_DM, align 1, !mcsema_real_eip !52
  store i1 %159, i1* %FPU_IM, align 1, !mcsema_real_eip !52
  %207 = load i64, i64* %36, align 4
  store i64 %207, i64* %35, align 4
  store i16 %161, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !52
  store i64 %162, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !52
  store i16 %163, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !52
  store i64 %164, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !52
  store i11 %165, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !52
  store i128 %166, i128* %XMM0, align 1, !mcsema_real_eip !52
  store i128 %167, i128* %XMM1, align 1, !mcsema_real_eip !52
  store i128 %168, i128* %XMM2, align 1, !mcsema_real_eip !52
  store i128 %169, i128* %XMM3, align 1, !mcsema_real_eip !52
  store i128 %170, i128* %XMM4, align 1, !mcsema_real_eip !52
  store i128 %171, i128* %XMM5, align 1, !mcsema_real_eip !52
  store i128 %172, i128* %XMM6, align 1, !mcsema_real_eip !52
  store i128 %173, i128* %XMM7, align 1, !mcsema_real_eip !52
  store i128 %174, i128* %XMM8, align 1, !mcsema_real_eip !52
  store i128 %175, i128* %XMM9, align 1, !mcsema_real_eip !52
  store i128 %176, i128* %XMM10, align 1, !mcsema_real_eip !52
  store i128 %177, i128* %XMM11, align 1, !mcsema_real_eip !52
  store i128 %178, i128* %XMM12, align 1, !mcsema_real_eip !52
  store i128 %179, i128* %XMM13, align 1, !mcsema_real_eip !52
  store i128 %180, i128* %XMM14, align 1, !mcsema_real_eip !52
  store i128 %181, i128* %XMM15, align 1, !mcsema_real_eip !52
  store i64 %182, i64* %STACK_BASE, align 1, !mcsema_real_eip !52
  store i64 %183, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !53
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !53
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !53
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !53
  %1 = load i64, i64* %RBX, !mcsema_real_eip !53
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !53
  %2 = load i64, i64* %RCX, !mcsema_real_eip !53
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !53
  %3 = load i64, i64* %RDX, !mcsema_real_eip !53
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !53
  %4 = load i64, i64* %RSI, !mcsema_real_eip !53
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !53
  %5 = load i64, i64* %RDI, !mcsema_real_eip !53
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !53
  %6 = load i64, i64* %RSP, !mcsema_real_eip !53
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !53
  %7 = load i64, i64* %RBP, !mcsema_real_eip !53
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !53
  %8 = load i64, i64* %R8, !mcsema_real_eip !53
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !53
  %9 = load i64, i64* %R9, !mcsema_real_eip !53
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !53
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !53
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !53
  %10 = load i64, i64* %R12, !mcsema_real_eip !53
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !53
  %11 = load i64, i64* %R13, !mcsema_real_eip !53
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !53
  %12 = load i64, i64* %R14, !mcsema_real_eip !53
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !53
  %13 = load i64, i64* %R15, !mcsema_real_eip !53
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !53
  %14 = load i64, i64* %RIP, !mcsema_real_eip !53
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !53
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !53
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !53
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !53
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !53
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !53
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !53
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !53
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !53
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !53
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !53
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !53
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !53
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !53
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !53
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !53
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !53
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !53
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !53
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !53
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !53
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !53
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !53
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !53
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !53
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !53
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !53
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !53
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !53
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !53
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !53
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !53
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !53
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !53
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !53
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !53
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !53
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !53
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !53
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !53
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !53
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !53
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !53
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !53
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !53
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !53
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !53
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !53
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !53
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !53
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !53
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !53
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !53
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !53
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !53
  %43 = bitcast i8* %42 to i64*
  %44 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %45 = load i64, i64* %43, align 4
  store i64 %45, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !53
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !53
  %47 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !53
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !53
  %49 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !53
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !53
  %50 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !53
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !53
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !53
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !53
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !53
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !53
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !53
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !53
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !53
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !53
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !53
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !53
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !53
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !53
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !53
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !53
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !53
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !53
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !53
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !53
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !53
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !53
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !53
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !53
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !53
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !53
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !53
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !53
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !53
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !53
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !53
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !53
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !53
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !53
  %67 = load i64, i64* %STACK_BASE, !mcsema_real_eip !53
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !53
  %68 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !53
  %69 = add i64 %6, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !53
  store i64 %7, i64* %70, !mcsema_real_eip !53
  %71 = add i64 %6, -16
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !54
  store i64 %1, i64* %72, !mcsema_real_eip !54
  %73 = add i64 %69, 40, !mcsema_real_eip !55
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !55
  %75 = load i64, i64* %74, !mcsema_real_eip !55
  %76 = add i64 %69, 32, !mcsema_real_eip !56
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !56
  %78 = load i64, i64* %77, !mcsema_real_eip !56
  %79 = add i64 %69, 24, !mcsema_real_eip !57
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !57
  %81 = load i64, i64* %80, !mcsema_real_eip !57
  %82 = add i64 %69, 16, !mcsema_real_eip !58
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !58
  %84 = bitcast i64* %83 to i32*
  %85 = load i32, i32* %84, !mcsema_real_eip !58
  %86 = zext i32 %85 to i64, !mcsema_real_eip !58
  %87 = add i64 %69, -12, !mcsema_real_eip !59
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !59
  %89 = trunc i64 %5 to i32, !mcsema_real_eip !59
  %90 = bitcast i64* %88 to i32*
  store i32 %89, i32* %90, !mcsema_real_eip !59
  %91 = add i64 %69, -24, !mcsema_real_eip !60
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !60
  store i64 %4, i64* %92, !mcsema_real_eip !60
  %93 = add i64 %69, -32, !mcsema_real_eip !61
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !61
  store i64 %3, i64* %94, !mcsema_real_eip !61
  %95 = add i64 %69, -40, !mcsema_real_eip !62
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !62
  store i64 %2, i64* %96, !mcsema_real_eip !62
  %97 = add i64 %69, -44, !mcsema_real_eip !63
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !63
  %99 = trunc i64 %8 to i32, !mcsema_real_eip !63
  %100 = bitcast i64* %98 to i32*
  store i32 %99, i32* %100, !mcsema_real_eip !63
  %101 = add i64 %69, -48, !mcsema_real_eip !64
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !64
  %103 = trunc i64 %9 to i32, !mcsema_real_eip !64
  %104 = bitcast i64* %102 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !64
  %105 = add i64 %69, -52, !mcsema_real_eip !65
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !65
  %107 = bitcast i64* %106 to i32*
  store i32 %85, i32* %107, !mcsema_real_eip !65
  %108 = add i64 %69, -64, !mcsema_real_eip !66
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !66
  store i64 %81, i64* %109, !mcsema_real_eip !66
  %110 = add i64 %69, -72, !mcsema_real_eip !67
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !67
  store i64 %78, i64* %111, !mcsema_real_eip !67
  %112 = add i64 %69, -80, !mcsema_real_eip !68
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !68
  store i64 %75, i64* %113, !mcsema_real_eip !68
  %114 = add i64 %69, -84, !mcsema_real_eip !69
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !69
  %116 = bitcast i64* %115 to i32*
  store i32 0, i32* %116, !mcsema_real_eip !69
  %117 = load i32, i32* %90, !mcsema_real_eip !70
  %118 = zext i32 %117 to i64, !mcsema_real_eip !70
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %117, i32 0)
  %119 = extractvalue { i32, i1 } %uadd, 0
  %120 = zext i32 %119 to i64, !mcsema_real_eip !71
  store i32 %119, i32* %116, !mcsema_real_eip !72
  %121 = add i64 %69, -88, !mcsema_real_eip !73
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !73
  %123 = bitcast i64* %122 to i32*
  store i32 0, i32* %123, !mcsema_real_eip !73
  br label %block_0x56, !mcsema_real_eip !74

block_0x56:                                       ; preds = %block_0x62, %entry
  %RSI_val.0 = phi i64 [ %4, %entry ], [ %141, %block_0x62 ]
  %124 = load i32, i32* %123, !mcsema_real_eip !74
  %125 = load i32, i32* %100, !mcsema_real_eip !75
  %126 = sub i32 %124, %125, !mcsema_real_eip !75
  %127 = xor i32 %126, %124, !mcsema_real_eip !75
  %128 = icmp slt i32 %126, 0
  %129 = xor i32 %125, %124, !mcsema_real_eip !75
  %130 = and i32 %127, %129, !mcsema_real_eip !75
  %131 = icmp slt i32 %130, 0
  %tmp = xor i1 %128, %131
  br i1 %tmp, label %block_0x62, label %block_0x85, !mcsema_real_eip !76

block_0x62:                                       ; preds = %block_0x56
  %132 = sext i32 %124 to i64, !mcsema_real_eip !77
  %133 = load i64, i64* %92, !mcsema_real_eip !78
  %134 = shl nsw i64 %132, 2
  %135 = add i64 %133, %134, !mcsema_real_eip !79
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !79
  %137 = bitcast i64* %136 to i32*
  %138 = load i32, i32* %137, !mcsema_real_eip !79
  %139 = load i32, i32* %116, !mcsema_real_eip !80
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %138, i32 %139)
  %140 = extractvalue { i32, i1 } %uadd71, 0
  %141 = zext i32 %140 to i64, !mcsema_real_eip !81
  store i32 %140, i32* %116, !mcsema_real_eip !82
  %142 = load i32, i32* %123, !mcsema_real_eip !83
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %142, i32 1)
  %143 = extractvalue { i32, i1 } %uadd72, 0
  store i32 %143, i32* %123, !mcsema_real_eip !84
  br label %block_0x56, !mcsema_real_eip !85

block_0x85:                                       ; preds = %block_0x56
  %144 = load i64, i64* %94, !mcsema_real_eip !86
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !87
  %146 = bitcast i64* %145 to i32*
  %147 = load i32, i32* %146, !mcsema_real_eip !87
  %148 = load i32, i32* %116, !mcsema_real_eip !88
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %147, i32 %148)
  %149 = extractvalue { i32, i1 } %uadd73, 0
  store i32 %149, i32* %116, !mcsema_real_eip !89
  %150 = add i64 %69, -92, !mcsema_real_eip !90
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !90
  %152 = bitcast i64* %151 to i32*
  store i32 0, i32* %152, !mcsema_real_eip !90
  br label %block_0x9a, !mcsema_real_eip !77

block_0x9a:                                       ; preds = %block_0xa6, %block_0x85
  %RSI_val.1 = phi i64 [ %RSI_val.0, %block_0x85 ], [ %170, %block_0xa6 ]
  %153 = load i32, i32* %152, !mcsema_real_eip !91
  %154 = load i32, i32* %104, !mcsema_real_eip !92
  %155 = sub i32 %153, %154, !mcsema_real_eip !92
  %156 = xor i32 %155, %153, !mcsema_real_eip !92
  %157 = icmp slt i32 %155, 0
  %158 = xor i32 %154, %153, !mcsema_real_eip !92
  %159 = and i32 %156, %158, !mcsema_real_eip !92
  %160 = icmp slt i32 %159, 0
  %tmp74 = xor i1 %157, %160
  br i1 %tmp74, label %block_0xa6, label %block_0xc9, !mcsema_real_eip !93

block_0xa6:                                       ; preds = %block_0x9a
  %161 = sext i32 %153 to i64, !mcsema_real_eip !94
  %162 = load i64, i64* %96, !mcsema_real_eip !95
  %163 = shl nsw i64 %161, 2
  %164 = add i64 %162, %163, !mcsema_real_eip !96
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !96
  %166 = bitcast i64* %165 to i32*
  %167 = load i32, i32* %166, !mcsema_real_eip !96
  %168 = load i32, i32* %116, !mcsema_real_eip !97
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %167, i32 %168)
  %169 = extractvalue { i32, i1 } %uadd75, 0
  %170 = zext i32 %169 to i64, !mcsema_real_eip !98
  store i32 %169, i32* %116, !mcsema_real_eip !99
  %171 = load i32, i32* %152, !mcsema_real_eip !100
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %171, i32 1)
  %172 = extractvalue { i32, i1 } %uadd76, 0
  store i32 %172, i32* %152, !mcsema_real_eip !101
  br label %block_0x9a, !mcsema_real_eip !102

block_0xc9:                                       ; preds = %block_0x9a
  %173 = load i32, i32* %107, !mcsema_real_eip !103
  %174 = load i32, i32* %116, !mcsema_real_eip !104
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %173, i32 %174)
  %175 = extractvalue { i32, i1 } %uadd77, 0
  store i32 %175, i32* %116, !mcsema_real_eip !105
  %176 = add i64 %69, -96, !mcsema_real_eip !106
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !106
  %178 = bitcast i64* %177 to i32*
  store i32 0, i32* %178, !mcsema_real_eip !106
  br label %block_0xdb, !mcsema_real_eip !94

block_0xdb:                                       ; preds = %block_0xe7, %block_0xc9
  %RSI_val.2 = phi i64 [ %RSI_val.1, %block_0xc9 ], [ %196, %block_0xe7 ]
  %179 = load i32, i32* %178, !mcsema_real_eip !107
  %180 = load i32, i32* %100, !mcsema_real_eip !108
  %181 = sub i32 %179, %180, !mcsema_real_eip !108
  %182 = xor i32 %181, %179, !mcsema_real_eip !108
  %183 = icmp slt i32 %181, 0
  %184 = xor i32 %180, %179, !mcsema_real_eip !108
  %185 = and i32 %182, %184, !mcsema_real_eip !108
  %186 = icmp slt i32 %185, 0
  %tmp78 = xor i1 %183, %186
  br i1 %tmp78, label %block_0xe7, label %block_0x10a, !mcsema_real_eip !109

block_0xe7:                                       ; preds = %block_0xdb
  %187 = sext i32 %179 to i64, !mcsema_real_eip !110
  %188 = load i64, i64* %109, !mcsema_real_eip !111
  %189 = shl nsw i64 %187, 2
  %190 = add i64 %188, %189, !mcsema_real_eip !112
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !112
  %192 = bitcast i64* %191 to i32*
  %193 = load i32, i32* %192, !mcsema_real_eip !112
  %194 = load i32, i32* %116, !mcsema_real_eip !113
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %193, i32 %194)
  %195 = extractvalue { i32, i1 } %uadd79, 0
  %196 = zext i32 %195 to i64, !mcsema_real_eip !114
  store i32 %195, i32* %116, !mcsema_real_eip !115
  %197 = load i32, i32* %178, !mcsema_real_eip !116
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %197, i32 1)
  %198 = extractvalue { i32, i1 } %uadd80, 0
  store i32 %198, i32* %178, !mcsema_real_eip !117
  br label %block_0xdb, !mcsema_real_eip !118

block_0x10a:                                      ; preds = %block_0xdb
  %199 = load i64, i64* %111, !mcsema_real_eip !119
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !120
  %201 = bitcast i64* %200 to i32*
  %202 = load i32, i32* %201, !mcsema_real_eip !120
  %203 = zext i32 %202 to i64, !mcsema_real_eip !120
  %204 = load i32, i32* %116, !mcsema_real_eip !121
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %202, i32 %204)
  %205 = extractvalue { i32, i1 } %uadd81, 0
  %206 = zext i32 %205 to i64, !mcsema_real_eip !122
  store i32 %205, i32* %116, !mcsema_real_eip !123
  %207 = add i64 %69, -100, !mcsema_real_eip !124
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !124
  %209 = bitcast i64* %208 to i32*
  store i32 0, i32* %209, !mcsema_real_eip !124
  br label %block_0x11f, !mcsema_real_eip !110

block_0x11f:                                      ; preds = %block_0x12b, %block_0x10a
  %RSI_val.3 = phi i64 [ %RSI_val.2, %block_0x10a ], [ %237, %block_0x12b ]
  %RDX_val.0 = phi i64 [ %206, %block_0x10a ], [ %234, %block_0x12b ]
  %RCX_val.0 = phi i64 [ %203, %block_0x10a ], [ %228, %block_0x12b ]
  %210 = load i32, i32* %209, !mcsema_real_eip !125
  %211 = load i32, i32* %104, !mcsema_real_eip !126
  %212 = sub i32 %210, %211, !mcsema_real_eip !126
  %213 = xor i32 %212, %210, !mcsema_real_eip !126
  %214 = xor i32 %213, %211, !mcsema_real_eip !126
  %215 = and i32 %214, 16, !mcsema_real_eip !126
  %216 = icmp ne i32 %215, 0, !mcsema_real_eip !126
  %217 = trunc i32 %212 to i8, !mcsema_real_eip !126
  %218 = tail call i8 @llvm.ctpop.i8(i8 %217), !mcsema_real_eip !126
  %219 = and i8 %218, 1
  %220 = icmp eq i8 %219, 0
  %221 = icmp eq i32 %210, %211
  %222 = icmp slt i32 %212, 0
  %223 = icmp ult i32 %210, %211, !mcsema_real_eip !126
  %224 = xor i32 %211, %210, !mcsema_real_eip !126
  %225 = and i32 %213, %224, !mcsema_real_eip !126
  %226 = icmp slt i32 %225, 0
  %tmp82 = xor i1 %222, %226
  br i1 %tmp82, label %block_0x12b, label %block_0x14e, !mcsema_real_eip !127

block_0x12b:                                      ; preds = %block_0x11f
  %227 = sext i32 %210 to i64, !mcsema_real_eip !128
  %228 = load i64, i64* %113, !mcsema_real_eip !129
  %229 = shl nsw i64 %227, 2
  %230 = add i64 %228, %229, !mcsema_real_eip !130
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !130
  %232 = bitcast i64* %231 to i32*
  %233 = load i32, i32* %232, !mcsema_real_eip !130
  %234 = zext i32 %233 to i64, !mcsema_real_eip !130
  %235 = load i32, i32* %116, !mcsema_real_eip !131
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 %235)
  %236 = extractvalue { i32, i1 } %uadd83, 0
  %237 = zext i32 %236 to i64, !mcsema_real_eip !132
  store i32 %236, i32* %116, !mcsema_real_eip !133
  %238 = load i32, i32* %209, !mcsema_real_eip !134
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %238, i32 1)
  %239 = extractvalue { i32, i1 } %uadd84, 0
  store i32 %239, i32* %209, !mcsema_real_eip !135
  br label %block_0x11f, !mcsema_real_eip !136

block_0x14e:                                      ; preds = %block_0x11f
  %240 = load i32, i32* %116, !mcsema_real_eip !137
  %241 = zext i32 %240 to i64, !mcsema_real_eip !137
  %242 = load i64, i64* %72, !mcsema_real_eip !138
  %243 = add i64 %71, 8, !mcsema_real_eip !138
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !139
  %245 = load i64, i64* %244, !mcsema_real_eip !139
  %246 = add i64 %71, 24, !mcsema_real_eip !140
  store i64 %241, i64* %RAX, !mcsema_real_eip !140
  store i64 %242, i64* %RBX, !mcsema_real_eip !140
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !140
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !140
  store i64 %RSI_val.3, i64* %RSI, !mcsema_real_eip !140
  store i64 %118, i64* %RDI, !mcsema_real_eip !140
  store i64 %246, i64* %RSP, !mcsema_real_eip !140
  store i64 %245, i64* %RBP, !mcsema_real_eip !140
  store i64 %120, i64* %R8, !mcsema_real_eip !140
  store i64 %9, i64* %R9, !mcsema_real_eip !140
  store i64 %78, i64* %R10, !mcsema_real_eip !140
  store i64 %81, i64* %R11, !mcsema_real_eip !140
  store i64 %10, i64* %R12, !mcsema_real_eip !140
  store i64 %11, i64* %R13, !mcsema_real_eip !140
  store i64 %12, i64* %R14, !mcsema_real_eip !140
  store i64 %13, i64* %R15, !mcsema_real_eip !140
  store i64 %14, i64* %RIP, !mcsema_real_eip !140
  store i1 %223, i1* %CF, align 1, !mcsema_real_eip !140
  store i1 %220, i1* %PF, align 1, !mcsema_real_eip !140
  store i1 %216, i1* %AF, align 1, !mcsema_real_eip !140
  store i1 %221, i1* %ZF, align 1, !mcsema_real_eip !140
  store i1 %222, i1* %SF, align 1, !mcsema_real_eip !140
  store i1 %226, i1* %OF, align 1, !mcsema_real_eip !140
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !140
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !140
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !140
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !140
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !140
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !140
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !140
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !140
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !140
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !140
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !140
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !140
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !140
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !140
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !140
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !140
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !140
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !140
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !140
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !140
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !140
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !140
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !140
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !140
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !140
  %247 = load i64, i64* %44, align 4
  store i64 %247, i64* %43, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !140
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !140
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !140
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !140
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !140
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !140
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !140
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !140
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !140
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !140
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !140
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !140
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !140
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !140
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !140
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !140
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !140
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !140
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !140
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !140
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !140
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !140
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !140
  ret void, !mcsema_real_eip !140
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_160(%struct.regs* %0)
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
  %_local_stack_start_ptr_ = alloca i8, i64 108
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 108
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !53
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !53
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !53
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !53
  %1 = load i64, i64* %RBX, !mcsema_real_eip !53
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !53
  %2 = load i64, i64* %RCX, !mcsema_real_eip !53
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !53
  %3 = load i64, i64* %RDX, !mcsema_real_eip !53
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !53
  %4 = load i64, i64* %RSI, !mcsema_real_eip !53
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !53
  %5 = load i64, i64* %RDI, !mcsema_real_eip !53
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !53
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !53
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !53
  %6 = load i64, i64* %R8, !mcsema_real_eip !53
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !53
  %7 = load i64, i64* %R9, !mcsema_real_eip !53
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !53
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !53
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !53
  %8 = load i64, i64* %R12, !mcsema_real_eip !53
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !53
  %9 = load i64, i64* %R13, !mcsema_real_eip !53
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !53
  %10 = load i64, i64* %R14, !mcsema_real_eip !53
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !53
  %11 = load i64, i64* %R15, !mcsema_real_eip !53
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !53
  %12 = load i64, i64* %RIP, !mcsema_real_eip !53
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !53
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !53
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !53
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !53
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !53
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !53
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !53
  %13 = load i1, i1* %DF, align 1, !mcsema_real_eip !53
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !53
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !53
  %16 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !53
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !53
  %17 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !53
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !53
  %18 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !53
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !53
  %19 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !53
  %20 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !53
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !53
  %21 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !53
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !53
  %22 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !53
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !53
  %23 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !53
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !53
  %24 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !53
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !53
  %25 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !53
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !53
  %26 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !53
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !53
  %27 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !53
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !53
  %28 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !53
  %29 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !53
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !53
  %30 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !53
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !53
  %31 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !53
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !53
  %32 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !53
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !53
  %33 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !53
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !53
  %34 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !53
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !53
  %35 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !53
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !53
  %36 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !53
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !53
  %37 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !53
  %38 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !53
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !53
  %39 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !53
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !53
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !53
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !53
  %47 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !53
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !53
  %49 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !53
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !53
  %50 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !53
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !53
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !53
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !53
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !53
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !53
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !53
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !53
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !53
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !53
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !53
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !53
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !53
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !53
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !53
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !53
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !53
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !53
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !53
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !53
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !53
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !53
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !53
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !53
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !53
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !53
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !53
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !53
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !53
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !53
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !53
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !53
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !53
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !53
  %67 = load i64, i64* %STACK_BASE, !mcsema_real_eip !53
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !53
  %68 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !53
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  store i64 %1, i64* %_allin_new_bt_2, !mcsema_real_eip !54
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 40
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %_ptr_to_int_198 = ptrtoint i64* %_allin_new_bt_5 to i64
  %_offset_above_rbp_201 = sub i64 %_ptr_to_int_198, %_local_end_to_int_
  %_pot_address_in_parent_stack_202 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_201
  %_cond1_203 = icmp ugt i8* %_new_gep_4, %_local_stack_end_ptr_
  %_cond2_1_204 = icmp ugt i8* %_new_gep_4, %_parent_stack_end_ptr_
  %_cond2_2_205 = icmp ult i8* %_new_gep_4, %_parent_stack_start_ptr_
  %_cond2_206 = or i1 %_cond2_1_204, %_cond2_2_205
  %_cond4_207 = icmp ule i8* %_pot_address_in_parent_stack_202, %_parent_stack_end_ptr_
  %_cond1_n_cond2_208 = and i1 %_cond1_203, %_cond2_206
  %_cond1_n_cond2_cond3_209 = and i1 %_cond1_n_cond2_208, %_cond4_207
  br i1 %_cond1_n_cond2_cond3_209, label %69, label %70

; <label>:69:                                     ; preds = %44
  %_address_in_parent_stack_bt_211 = bitcast i8* %_pot_address_in_parent_stack_202 to i64*
  br label %70

; <label>:70:                                     ; preds = %44, %69
  %71 = phi i64* [ %_allin_new_bt_5, %44 ], [ %_address_in_parent_stack_bt_211, %69 ]
  %_new_load_212 = load i64, i64* %71
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 32
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %_ptr_to_int_213 = ptrtoint i64* %_allin_new_bt_7 to i64
  %_offset_above_rbp_216 = sub i64 %_ptr_to_int_213, %_local_end_to_int_
  %_pot_address_in_parent_stack_217 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_cond1_218 = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_219 = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_220 = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_221 = or i1 %_cond2_1_219, %_cond2_2_220
  %_cond4_222 = icmp ule i8* %_pot_address_in_parent_stack_217, %_parent_stack_end_ptr_
  %_cond1_n_cond2_223 = and i1 %_cond1_218, %_cond2_221
  %_cond1_n_cond2_cond3_224 = and i1 %_cond1_n_cond2_223, %_cond4_222
  br i1 %_cond1_n_cond2_cond3_224, label %72, label %73

; <label>:72:                                     ; preds = %70
  %_address_in_parent_stack_bt_226 = bitcast i8* %_pot_address_in_parent_stack_217 to i64*
  br label %73

; <label>:73:                                     ; preds = %70, %72
  %74 = phi i64* [ %_allin_new_bt_7, %70 ], [ %_address_in_parent_stack_bt_226, %72 ]
  %_new_load_227 = load i64, i64* %74
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 24
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %_ptr_to_int_228 = ptrtoint i64* %_allin_new_bt_10 to i64
  %_offset_above_rbp_231 = sub i64 %_ptr_to_int_228, %_local_end_to_int_
  %_pot_address_in_parent_stack_232 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_231
  %_cond1_233 = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_234 = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_235 = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_236 = or i1 %_cond2_1_234, %_cond2_2_235
  %_cond4_237 = icmp ule i8* %_pot_address_in_parent_stack_232, %_parent_stack_end_ptr_
  %_cond1_n_cond2_238 = and i1 %_cond1_233, %_cond2_236
  %_cond1_n_cond2_cond3_239 = and i1 %_cond1_n_cond2_238, %_cond4_237
  br i1 %_cond1_n_cond2_cond3_239, label %75, label %76

; <label>:75:                                     ; preds = %73
  %_address_in_parent_stack_bt_241 = bitcast i8* %_pot_address_in_parent_stack_232 to i64*
  br label %76

; <label>:76:                                     ; preds = %73, %75
  %77 = phi i64* [ %_allin_new_bt_10, %73 ], [ %_address_in_parent_stack_bt_241, %75 ]
  %_new_load_242 = load i64, i64* %77
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 16
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %78 = bitcast i64* %_allin_new_bt_12 to i32*
  %_ptr_to_int_243 = ptrtoint i32* %78 to i64
  %_ptr_bt_245 = bitcast i32* %78 to i8*
  %_offset_above_rbp_246 = sub i64 %_ptr_to_int_243, %_local_end_to_int_
  %_pot_address_in_parent_stack_247 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_246
  %_cond1_248 = icmp ugt i8* %_ptr_bt_245, %_local_stack_end_ptr_
  %_cond2_1_249 = icmp ugt i8* %_ptr_bt_245, %_parent_stack_end_ptr_
  %_cond2_2_250 = icmp ult i8* %_ptr_bt_245, %_parent_stack_start_ptr_
  %_cond2_251 = or i1 %_cond2_1_249, %_cond2_2_250
  %_cond4_252 = icmp ule i8* %_pot_address_in_parent_stack_247, %_parent_stack_end_ptr_
  %_cond1_n_cond2_253 = and i1 %_cond1_248, %_cond2_251
  %_cond1_n_cond2_cond3_254 = and i1 %_cond1_n_cond2_253, %_cond4_252
  br i1 %_cond1_n_cond2_cond3_254, label %79, label %80

; <label>:79:                                     ; preds = %76
  %_address_in_parent_stack_bt_256 = bitcast i8* %_pot_address_in_parent_stack_247 to i32*
  br label %80

; <label>:80:                                     ; preds = %76, %79
  %81 = phi i32* [ %78, %76 ], [ %_address_in_parent_stack_bt_256, %79 ]
  %_new_load_257 = load i32, i32* %81
  %82 = zext i32 %_new_load_257 to i64, !mcsema_real_eip !58
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -12
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %83 = trunc i64 %5 to i32, !mcsema_real_eip !59
  %84 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %83, i32* %84, !mcsema_real_eip !59
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -24
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 %4, i64* %_allin_new_bt_18, !mcsema_real_eip !60
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 %3, i64* %_allin_new_bt_21, !mcsema_real_eip !61
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -40
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 %2, i64* %_allin_new_bt_24, !mcsema_real_eip !62
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -44
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %85 = trunc i64 %6 to i32, !mcsema_real_eip !63
  %86 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 %85, i32* %86, !mcsema_real_eip !63
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -48
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %87 = trunc i64 %7 to i32, !mcsema_real_eip !64
  %88 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 %87, i32* %88, !mcsema_real_eip !64
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -52
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %89 = bitcast i64* %_allin_new_bt_33 to i32*
  store i32 %_new_load_257, i32* %89, !mcsema_real_eip !65
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -64
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  store i64 %_new_load_242, i64* %_allin_new_bt_36, !mcsema_real_eip !66
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -72
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 %_new_load_227, i64* %_allin_new_bt_39, !mcsema_real_eip !67
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -80
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 %_new_load_212, i64* %_allin_new_bt_42, !mcsema_real_eip !68
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -84
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %90 = bitcast i64* %_allin_new_bt_45 to i32*
  store i32 0, i32* %90, !mcsema_real_eip !69
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -12
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %91 = bitcast i64* %_allin_new_bt_48 to i32*
  %_ptr_to_int_258 = ptrtoint i32* %91 to i64
  %_ptr_bt_260 = bitcast i32* %91 to i8*
  %_offset_above_rbp_261 = sub i64 %_ptr_to_int_258, %_local_end_to_int_
  %_pot_address_in_parent_stack_262 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_261
  %_cond1_263 = icmp ugt i8* %_ptr_bt_260, %_local_stack_end_ptr_
  %_cond2_1_264 = icmp ugt i8* %_ptr_bt_260, %_parent_stack_end_ptr_
  %_cond2_2_265 = icmp ult i8* %_ptr_bt_260, %_parent_stack_start_ptr_
  %_cond2_266 = or i1 %_cond2_1_264, %_cond2_2_265
  %_cond4_267 = icmp ule i8* %_pot_address_in_parent_stack_262, %_parent_stack_end_ptr_
  %_cond1_n_cond2_268 = and i1 %_cond1_263, %_cond2_266
  %_cond1_n_cond2_cond3_269 = and i1 %_cond1_n_cond2_268, %_cond4_267
  br i1 %_cond1_n_cond2_cond3_269, label %92, label %93

; <label>:92:                                     ; preds = %80
  %_address_in_parent_stack_bt_271 = bitcast i8* %_pot_address_in_parent_stack_262 to i32*
  br label %93

; <label>:93:                                     ; preds = %80, %92
  %94 = phi i32* [ %91, %80 ], [ %_address_in_parent_stack_bt_271, %92 ]
  %_new_load_272 = load i32, i32* %94
  %95 = zext i32 %_new_load_272 to i64, !mcsema_real_eip !70
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -84
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %96 = bitcast i64* %_allin_new_bt_51 to i32*
  %_ptr_to_int_273 = ptrtoint i32* %96 to i64
  %_ptr_bt_275 = bitcast i32* %96 to i8*
  %_offset_above_rbp_276 = sub i64 %_ptr_to_int_273, %_local_end_to_int_
  %_pot_address_in_parent_stack_277 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_276
  %_cond1_278 = icmp ugt i8* %_ptr_bt_275, %_local_stack_end_ptr_
  %_cond2_1_279 = icmp ugt i8* %_ptr_bt_275, %_parent_stack_end_ptr_
  %_cond2_2_280 = icmp ult i8* %_ptr_bt_275, %_parent_stack_start_ptr_
  %_cond2_281 = or i1 %_cond2_1_279, %_cond2_2_280
  %_cond4_282 = icmp ule i8* %_pot_address_in_parent_stack_277, %_parent_stack_end_ptr_
  %_cond1_n_cond2_283 = and i1 %_cond1_278, %_cond2_281
  %_cond1_n_cond2_cond3_284 = and i1 %_cond1_n_cond2_283, %_cond4_282
  br i1 %_cond1_n_cond2_cond3_284, label %97, label %98

; <label>:97:                                     ; preds = %93
  %_address_in_parent_stack_bt_286 = bitcast i8* %_pot_address_in_parent_stack_277 to i32*
  br label %98

; <label>:98:                                     ; preds = %93, %97
  %99 = phi i32* [ %96, %93 ], [ %_address_in_parent_stack_bt_286, %97 ]
  %_new_load_287 = load i32, i32* %99
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_272, i32 %_new_load_287)
  %100 = extractvalue { i32, i1 } %uadd, 0
  %101 = zext i32 %100 to i64, !mcsema_real_eip !71
  store i32 %100, i32* %96, !mcsema_real_eip !72
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -88
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %102 = bitcast i64* %_allin_new_bt_57 to i32*
  store i32 0, i32* %102, !mcsema_real_eip !73
  br label %block_0x56, !mcsema_real_eip !74

block_0x56:                                       ; preds = %139, %98
  %RSI_val.0 = phi i64 [ %4, %98 ], [ %136, %139 ]
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -88
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %103 = bitcast i64* %_allin_new_bt_60 to i32*
  %_ptr_to_int_288 = ptrtoint i32* %103 to i64
  %_ptr_bt_290 = bitcast i32* %103 to i8*
  %_offset_above_rbp_291 = sub i64 %_ptr_to_int_288, %_local_end_to_int_
  %_pot_address_in_parent_stack_292 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_291
  %_cond1_293 = icmp ugt i8* %_ptr_bt_290, %_local_stack_end_ptr_
  %_cond2_1_294 = icmp ugt i8* %_ptr_bt_290, %_parent_stack_end_ptr_
  %_cond2_2_295 = icmp ult i8* %_ptr_bt_290, %_parent_stack_start_ptr_
  %_cond2_296 = or i1 %_cond2_1_294, %_cond2_2_295
  %_cond4_297 = icmp ule i8* %_pot_address_in_parent_stack_292, %_parent_stack_end_ptr_
  %_cond1_n_cond2_298 = and i1 %_cond1_293, %_cond2_296
  %_cond1_n_cond2_cond3_299 = and i1 %_cond1_n_cond2_298, %_cond4_297
  br i1 %_cond1_n_cond2_cond3_299, label %104, label %105

; <label>:104:                                    ; preds = %block_0x56
  %_address_in_parent_stack_bt_301 = bitcast i8* %_pot_address_in_parent_stack_292 to i32*
  br label %105

; <label>:105:                                    ; preds = %block_0x56, %104
  %106 = phi i32* [ %103, %block_0x56 ], [ %_address_in_parent_stack_bt_301, %104 ]
  %_new_load_302 = load i32, i32* %106
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -44
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %107 = bitcast i64* %_allin_new_bt_63 to i32*
  %_ptr_to_int_303 = ptrtoint i32* %107 to i64
  %_ptr_bt_305 = bitcast i32* %107 to i8*
  %_offset_above_rbp_306 = sub i64 %_ptr_to_int_303, %_local_end_to_int_
  %_pot_address_in_parent_stack_307 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_306
  %_cond1_308 = icmp ugt i8* %_ptr_bt_305, %_local_stack_end_ptr_
  %_cond2_1_309 = icmp ugt i8* %_ptr_bt_305, %_parent_stack_end_ptr_
  %_cond2_2_310 = icmp ult i8* %_ptr_bt_305, %_parent_stack_start_ptr_
  %_cond2_311 = or i1 %_cond2_1_309, %_cond2_2_310
  %_cond4_312 = icmp ule i8* %_pot_address_in_parent_stack_307, %_parent_stack_end_ptr_
  %_cond1_n_cond2_313 = and i1 %_cond1_308, %_cond2_311
  %_cond1_n_cond2_cond3_314 = and i1 %_cond1_n_cond2_313, %_cond4_312
  br i1 %_cond1_n_cond2_cond3_314, label %108, label %109

; <label>:108:                                    ; preds = %105
  %_address_in_parent_stack_bt_316 = bitcast i8* %_pot_address_in_parent_stack_307 to i32*
  br label %109

; <label>:109:                                    ; preds = %105, %108
  %110 = phi i32* [ %107, %105 ], [ %_address_in_parent_stack_bt_316, %108 ]
  %_new_load_317 = load i32, i32* %110
  %111 = sub i32 %_new_load_302, %_new_load_317, !mcsema_real_eip !75
  %112 = xor i32 %111, %_new_load_302, !mcsema_real_eip !75
  %113 = icmp slt i32 %111, 0
  %114 = xor i32 %_new_load_317, %_new_load_302, !mcsema_real_eip !75
  %115 = and i32 %112, %114, !mcsema_real_eip !75
  %116 = icmp slt i32 %115, 0
  %tmp = xor i1 %113, %116
  br i1 %tmp, label %block_0x62, label %block_0x85, !mcsema_real_eip !76

block_0x62:                                       ; preds = %109
  br i1 %_cond1_n_cond2_cond3_299, label %117, label %118

; <label>:117:                                    ; preds = %block_0x62
  %_address_in_parent_stack_bt_331 = bitcast i8* %_pot_address_in_parent_stack_292 to i32*
  br label %118

; <label>:118:                                    ; preds = %block_0x62, %117
  %119 = phi i32* [ %103, %block_0x62 ], [ %_address_in_parent_stack_bt_331, %117 ]
  %_new_load_332 = load i32, i32* %119
  %120 = sext i32 %_new_load_332 to i64, !mcsema_real_eip !77
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -24
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %_ptr_to_int_333 = ptrtoint i64* %_allin_new_bt_69 to i64
  %_offset_above_rbp_336 = sub i64 %_ptr_to_int_333, %_local_end_to_int_
  %_pot_address_in_parent_stack_337 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_336
  %_cond1_338 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_339 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_340 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_341 = or i1 %_cond2_1_339, %_cond2_2_340
  %_cond4_342 = icmp ule i8* %_pot_address_in_parent_stack_337, %_parent_stack_end_ptr_
  %_cond1_n_cond2_343 = and i1 %_cond1_338, %_cond2_341
  %_cond1_n_cond2_cond3_344 = and i1 %_cond1_n_cond2_343, %_cond4_342
  br i1 %_cond1_n_cond2_cond3_344, label %121, label %122

; <label>:121:                                    ; preds = %118
  %_address_in_parent_stack_bt_346 = bitcast i8* %_pot_address_in_parent_stack_337 to i64*
  br label %122

; <label>:122:                                    ; preds = %118, %121
  %123 = phi i64* [ %_allin_new_bt_69, %118 ], [ %_address_in_parent_stack_bt_346, %121 ]
  %_new_load_347 = load i64, i64* %123
  %124 = shl nsw i64 %120, 2
  %125 = add i64 %_new_load_347, %124, !mcsema_real_eip !79
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !79
  %127 = bitcast i64* %126 to i32*
  %_ptr_to_int_348 = ptrtoint i32* %127 to i64
  %_ptr_bt_350 = bitcast i32* %127 to i8*
  %_offset_above_rbp_351 = sub i64 %_ptr_to_int_348, %_local_end_to_int_
  %_pot_address_in_parent_stack_352 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_351
  %_cond1_353 = icmp ugt i8* %_ptr_bt_350, %_local_stack_end_ptr_
  %_cond2_1_354 = icmp ugt i8* %_ptr_bt_350, %_parent_stack_end_ptr_
  %_cond2_2_355 = icmp ult i8* %_ptr_bt_350, %_parent_stack_start_ptr_
  %_cond2_356 = or i1 %_cond2_1_354, %_cond2_2_355
  %_cond4_357 = icmp ule i8* %_pot_address_in_parent_stack_352, %_parent_stack_end_ptr_
  %_cond1_n_cond2_358 = and i1 %_cond1_353, %_cond2_356
  %_cond1_n_cond2_cond3_359 = and i1 %_cond1_n_cond2_358, %_cond4_357
  br i1 %_cond1_n_cond2_cond3_359, label %128, label %129

; <label>:128:                                    ; preds = %122
  %_address_in_parent_stack_bt_361 = bitcast i8* %_pot_address_in_parent_stack_352 to i32*
  br label %129

; <label>:129:                                    ; preds = %122, %128
  %130 = phi i32* [ %127, %122 ], [ %_address_in_parent_stack_bt_361, %128 ]
  %_new_load_362 = load i32, i32* %130
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -84
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %131 = bitcast i64* %_allin_new_bt_72 to i32*
  %_ptr_to_int_363 = ptrtoint i32* %131 to i64
  %_ptr_bt_365 = bitcast i32* %131 to i8*
  %_offset_above_rbp_366 = sub i64 %_ptr_to_int_363, %_local_end_to_int_
  %_pot_address_in_parent_stack_367 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_366
  %_cond1_368 = icmp ugt i8* %_ptr_bt_365, %_local_stack_end_ptr_
  %_cond2_1_369 = icmp ugt i8* %_ptr_bt_365, %_parent_stack_end_ptr_
  %_cond2_2_370 = icmp ult i8* %_ptr_bt_365, %_parent_stack_start_ptr_
  %_cond2_371 = or i1 %_cond2_1_369, %_cond2_2_370
  %_cond4_372 = icmp ule i8* %_pot_address_in_parent_stack_367, %_parent_stack_end_ptr_
  %_cond1_n_cond2_373 = and i1 %_cond1_368, %_cond2_371
  %_cond1_n_cond2_cond3_374 = and i1 %_cond1_n_cond2_373, %_cond4_372
  br i1 %_cond1_n_cond2_cond3_374, label %132, label %133

; <label>:132:                                    ; preds = %129
  %_address_in_parent_stack_bt_376 = bitcast i8* %_pot_address_in_parent_stack_367 to i32*
  br label %133

; <label>:133:                                    ; preds = %129, %132
  %134 = phi i32* [ %131, %129 ], [ %_address_in_parent_stack_bt_376, %132 ]
  %_new_load_377 = load i32, i32* %134
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_362, i32 %_new_load_377)
  %135 = extractvalue { i32, i1 } %uadd71, 0
  %136 = zext i32 %135 to i64, !mcsema_real_eip !81
  store i32 %135, i32* %131, !mcsema_real_eip !82
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -88
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %137 = bitcast i64* %_allin_new_bt_78 to i32*
  %_ptr_to_int_378 = ptrtoint i32* %137 to i64
  %_ptr_bt_380 = bitcast i32* %137 to i8*
  %_offset_above_rbp_381 = sub i64 %_ptr_to_int_378, %_local_end_to_int_
  %_pot_address_in_parent_stack_382 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_381
  %_cond1_383 = icmp ugt i8* %_ptr_bt_380, %_local_stack_end_ptr_
  %_cond2_1_384 = icmp ugt i8* %_ptr_bt_380, %_parent_stack_end_ptr_
  %_cond2_2_385 = icmp ult i8* %_ptr_bt_380, %_parent_stack_start_ptr_
  %_cond2_386 = or i1 %_cond2_1_384, %_cond2_2_385
  %_cond4_387 = icmp ule i8* %_pot_address_in_parent_stack_382, %_parent_stack_end_ptr_
  %_cond1_n_cond2_388 = and i1 %_cond1_383, %_cond2_386
  %_cond1_n_cond2_cond3_389 = and i1 %_cond1_n_cond2_388, %_cond4_387
  br i1 %_cond1_n_cond2_cond3_389, label %138, label %139

; <label>:138:                                    ; preds = %133
  %_address_in_parent_stack_bt_391 = bitcast i8* %_pot_address_in_parent_stack_382 to i32*
  br label %139

; <label>:139:                                    ; preds = %133, %138
  %140 = phi i32* [ %137, %133 ], [ %_address_in_parent_stack_bt_391, %138 ]
  %_new_load_392 = load i32, i32* %140
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_392, i32 1)
  %141 = extractvalue { i32, i1 } %uadd72, 0
  store i32 %141, i32* %137, !mcsema_real_eip !84
  br label %block_0x56, !mcsema_real_eip !85

block_0x85:                                       ; preds = %109
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -32
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %_ptr_to_int_393 = ptrtoint i64* %_allin_new_bt_83 to i64
  %_offset_above_rbp_396 = sub i64 %_ptr_to_int_393, %_local_end_to_int_
  %_pot_address_in_parent_stack_397 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_396
  %_cond1_398 = icmp ugt i8* %_new_gep_82, %_local_stack_end_ptr_
  %_cond2_1_399 = icmp ugt i8* %_new_gep_82, %_parent_stack_end_ptr_
  %_cond2_2_400 = icmp ult i8* %_new_gep_82, %_parent_stack_start_ptr_
  %_cond2_401 = or i1 %_cond2_1_399, %_cond2_2_400
  %_cond4_402 = icmp ule i8* %_pot_address_in_parent_stack_397, %_parent_stack_end_ptr_
  %_cond1_n_cond2_403 = and i1 %_cond1_398, %_cond2_401
  %_cond1_n_cond2_cond3_404 = and i1 %_cond1_n_cond2_403, %_cond4_402
  br i1 %_cond1_n_cond2_cond3_404, label %142, label %143

; <label>:142:                                    ; preds = %block_0x85
  %_address_in_parent_stack_bt_406 = bitcast i8* %_pot_address_in_parent_stack_397 to i64*
  br label %143

; <label>:143:                                    ; preds = %block_0x85, %142
  %144 = phi i64* [ %_allin_new_bt_83, %block_0x85 ], [ %_address_in_parent_stack_bt_406, %142 ]
  %_new_load_407 = load i64, i64* %144
  %145 = inttoptr i64 %_new_load_407 to i64*, !mcsema_real_eip !87
  %146 = bitcast i64* %145 to i32*
  %_ptr_to_int_408 = ptrtoint i32* %146 to i64
  %_ptr_bt_410 = bitcast i32* %146 to i8*
  %_offset_above_rbp_411 = sub i64 %_ptr_to_int_408, %_local_end_to_int_
  %_pot_address_in_parent_stack_412 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_411
  %_cond1_413 = icmp ugt i8* %_ptr_bt_410, %_local_stack_end_ptr_
  %_cond2_1_414 = icmp ugt i8* %_ptr_bt_410, %_parent_stack_end_ptr_
  %_cond2_2_415 = icmp ult i8* %_ptr_bt_410, %_parent_stack_start_ptr_
  %_cond2_416 = or i1 %_cond2_1_414, %_cond2_2_415
  %_cond4_417 = icmp ule i8* %_pot_address_in_parent_stack_412, %_parent_stack_end_ptr_
  %_cond1_n_cond2_418 = and i1 %_cond1_413, %_cond2_416
  %_cond1_n_cond2_cond3_419 = and i1 %_cond1_n_cond2_418, %_cond4_417
  br i1 %_cond1_n_cond2_cond3_419, label %147, label %148

; <label>:147:                                    ; preds = %143
  %_address_in_parent_stack_bt_421 = bitcast i8* %_pot_address_in_parent_stack_412 to i32*
  br label %148

; <label>:148:                                    ; preds = %143, %147
  %149 = phi i32* [ %146, %143 ], [ %_address_in_parent_stack_bt_421, %147 ]
  %_new_load_422 = load i32, i32* %149
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -84
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %150 = bitcast i64* %_allin_new_bt_86 to i32*
  %_ptr_to_int_423 = ptrtoint i32* %150 to i64
  %_ptr_bt_425 = bitcast i32* %150 to i8*
  %_offset_above_rbp_426 = sub i64 %_ptr_to_int_423, %_local_end_to_int_
  %_pot_address_in_parent_stack_427 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_426
  %_cond1_428 = icmp ugt i8* %_ptr_bt_425, %_local_stack_end_ptr_
  %_cond2_1_429 = icmp ugt i8* %_ptr_bt_425, %_parent_stack_end_ptr_
  %_cond2_2_430 = icmp ult i8* %_ptr_bt_425, %_parent_stack_start_ptr_
  %_cond2_431 = or i1 %_cond2_1_429, %_cond2_2_430
  %_cond4_432 = icmp ule i8* %_pot_address_in_parent_stack_427, %_parent_stack_end_ptr_
  %_cond1_n_cond2_433 = and i1 %_cond1_428, %_cond2_431
  %_cond1_n_cond2_cond3_434 = and i1 %_cond1_n_cond2_433, %_cond4_432
  br i1 %_cond1_n_cond2_cond3_434, label %151, label %152

; <label>:151:                                    ; preds = %148
  %_address_in_parent_stack_bt_436 = bitcast i8* %_pot_address_in_parent_stack_427 to i32*
  br label %152

; <label>:152:                                    ; preds = %148, %151
  %153 = phi i32* [ %150, %148 ], [ %_address_in_parent_stack_bt_436, %151 ]
  %_new_load_437 = load i32, i32* %153
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_422, i32 %_new_load_437)
  %154 = extractvalue { i32, i1 } %uadd73, 0
  store i32 %154, i32* %150, !mcsema_real_eip !89
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -92
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %155 = bitcast i64* %_allin_new_bt_92 to i32*
  store i32 0, i32* %155, !mcsema_real_eip !90
  br label %block_0x9a, !mcsema_real_eip !77

block_0x9a:                                       ; preds = %192, %152
  %RSI_val.1 = phi i64 [ %RSI_val.0, %152 ], [ %189, %192 ]
  %_load_rbp_ptr_93 = load i8*, i8** %_RBP_ptr_
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -92
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %156 = bitcast i64* %_allin_new_bt_95 to i32*
  %_ptr_to_int_438 = ptrtoint i32* %156 to i64
  %_ptr_bt_440 = bitcast i32* %156 to i8*
  %_offset_above_rbp_441 = sub i64 %_ptr_to_int_438, %_local_end_to_int_
  %_pot_address_in_parent_stack_442 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_441
  %_cond1_443 = icmp ugt i8* %_ptr_bt_440, %_local_stack_end_ptr_
  %_cond2_1_444 = icmp ugt i8* %_ptr_bt_440, %_parent_stack_end_ptr_
  %_cond2_2_445 = icmp ult i8* %_ptr_bt_440, %_parent_stack_start_ptr_
  %_cond2_446 = or i1 %_cond2_1_444, %_cond2_2_445
  %_cond4_447 = icmp ule i8* %_pot_address_in_parent_stack_442, %_parent_stack_end_ptr_
  %_cond1_n_cond2_448 = and i1 %_cond1_443, %_cond2_446
  %_cond1_n_cond2_cond3_449 = and i1 %_cond1_n_cond2_448, %_cond4_447
  br i1 %_cond1_n_cond2_cond3_449, label %157, label %158

; <label>:157:                                    ; preds = %block_0x9a
  %_address_in_parent_stack_bt_451 = bitcast i8* %_pot_address_in_parent_stack_442 to i32*
  br label %158

; <label>:158:                                    ; preds = %block_0x9a, %157
  %159 = phi i32* [ %156, %block_0x9a ], [ %_address_in_parent_stack_bt_451, %157 ]
  %_new_load_452 = load i32, i32* %159
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -48
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %160 = bitcast i64* %_allin_new_bt_98 to i32*
  %_ptr_to_int_453 = ptrtoint i32* %160 to i64
  %_ptr_bt_455 = bitcast i32* %160 to i8*
  %_offset_above_rbp_456 = sub i64 %_ptr_to_int_453, %_local_end_to_int_
  %_pot_address_in_parent_stack_457 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_456
  %_cond1_458 = icmp ugt i8* %_ptr_bt_455, %_local_stack_end_ptr_
  %_cond2_1_459 = icmp ugt i8* %_ptr_bt_455, %_parent_stack_end_ptr_
  %_cond2_2_460 = icmp ult i8* %_ptr_bt_455, %_parent_stack_start_ptr_
  %_cond2_461 = or i1 %_cond2_1_459, %_cond2_2_460
  %_cond4_462 = icmp ule i8* %_pot_address_in_parent_stack_457, %_parent_stack_end_ptr_
  %_cond1_n_cond2_463 = and i1 %_cond1_458, %_cond2_461
  %_cond1_n_cond2_cond3_464 = and i1 %_cond1_n_cond2_463, %_cond4_462
  br i1 %_cond1_n_cond2_cond3_464, label %161, label %162

; <label>:161:                                    ; preds = %158
  %_address_in_parent_stack_bt_466 = bitcast i8* %_pot_address_in_parent_stack_457 to i32*
  br label %162

; <label>:162:                                    ; preds = %158, %161
  %163 = phi i32* [ %160, %158 ], [ %_address_in_parent_stack_bt_466, %161 ]
  %_new_load_467 = load i32, i32* %163
  %164 = sub i32 %_new_load_452, %_new_load_467, !mcsema_real_eip !92
  %165 = xor i32 %164, %_new_load_452, !mcsema_real_eip !92
  %166 = icmp slt i32 %164, 0
  %167 = xor i32 %_new_load_467, %_new_load_452, !mcsema_real_eip !92
  %168 = and i32 %165, %167, !mcsema_real_eip !92
  %169 = icmp slt i32 %168, 0
  %tmp74 = xor i1 %166, %169
  br i1 %tmp74, label %block_0xa6, label %block_0xc9, !mcsema_real_eip !93

block_0xa6:                                       ; preds = %162
  br i1 %_cond1_n_cond2_cond3_449, label %170, label %171

; <label>:170:                                    ; preds = %block_0xa6
  %_address_in_parent_stack_bt_481 = bitcast i8* %_pot_address_in_parent_stack_442 to i32*
  br label %171

; <label>:171:                                    ; preds = %block_0xa6, %170
  %172 = phi i32* [ %156, %block_0xa6 ], [ %_address_in_parent_stack_bt_481, %170 ]
  %_new_load_482 = load i32, i32* %172
  %173 = sext i32 %_new_load_482 to i64, !mcsema_real_eip !94
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -40
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %_ptr_to_int_483 = ptrtoint i64* %_allin_new_bt_104 to i64
  %_offset_above_rbp_486 = sub i64 %_ptr_to_int_483, %_local_end_to_int_
  %_pot_address_in_parent_stack_487 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_486
  %_cond1_488 = icmp ugt i8* %_new_gep_103, %_local_stack_end_ptr_
  %_cond2_1_489 = icmp ugt i8* %_new_gep_103, %_parent_stack_end_ptr_
  %_cond2_2_490 = icmp ult i8* %_new_gep_103, %_parent_stack_start_ptr_
  %_cond2_491 = or i1 %_cond2_1_489, %_cond2_2_490
  %_cond4_492 = icmp ule i8* %_pot_address_in_parent_stack_487, %_parent_stack_end_ptr_
  %_cond1_n_cond2_493 = and i1 %_cond1_488, %_cond2_491
  %_cond1_n_cond2_cond3_494 = and i1 %_cond1_n_cond2_493, %_cond4_492
  br i1 %_cond1_n_cond2_cond3_494, label %174, label %175

; <label>:174:                                    ; preds = %171
  %_address_in_parent_stack_bt_496 = bitcast i8* %_pot_address_in_parent_stack_487 to i64*
  br label %175

; <label>:175:                                    ; preds = %171, %174
  %176 = phi i64* [ %_allin_new_bt_104, %171 ], [ %_address_in_parent_stack_bt_496, %174 ]
  %_new_load_497 = load i64, i64* %176
  %177 = shl nsw i64 %173, 2
  %178 = add i64 %_new_load_497, %177, !mcsema_real_eip !96
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !96
  %180 = bitcast i64* %179 to i32*
  %_ptr_to_int_498 = ptrtoint i32* %180 to i64
  %_ptr_bt_500 = bitcast i32* %180 to i8*
  %_offset_above_rbp_501 = sub i64 %_ptr_to_int_498, %_local_end_to_int_
  %_pot_address_in_parent_stack_502 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_501
  %_cond1_503 = icmp ugt i8* %_ptr_bt_500, %_local_stack_end_ptr_
  %_cond2_1_504 = icmp ugt i8* %_ptr_bt_500, %_parent_stack_end_ptr_
  %_cond2_2_505 = icmp ult i8* %_ptr_bt_500, %_parent_stack_start_ptr_
  %_cond2_506 = or i1 %_cond2_1_504, %_cond2_2_505
  %_cond4_507 = icmp ule i8* %_pot_address_in_parent_stack_502, %_parent_stack_end_ptr_
  %_cond1_n_cond2_508 = and i1 %_cond1_503, %_cond2_506
  %_cond1_n_cond2_cond3_509 = and i1 %_cond1_n_cond2_508, %_cond4_507
  br i1 %_cond1_n_cond2_cond3_509, label %181, label %182

; <label>:181:                                    ; preds = %175
  %_address_in_parent_stack_bt_511 = bitcast i8* %_pot_address_in_parent_stack_502 to i32*
  br label %182

; <label>:182:                                    ; preds = %175, %181
  %183 = phi i32* [ %180, %175 ], [ %_address_in_parent_stack_bt_511, %181 ]
  %_new_load_512 = load i32, i32* %183
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -84
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %184 = bitcast i64* %_allin_new_bt_107 to i32*
  %_ptr_to_int_513 = ptrtoint i32* %184 to i64
  %_ptr_bt_515 = bitcast i32* %184 to i8*
  %_offset_above_rbp_516 = sub i64 %_ptr_to_int_513, %_local_end_to_int_
  %_pot_address_in_parent_stack_517 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_516
  %_cond1_518 = icmp ugt i8* %_ptr_bt_515, %_local_stack_end_ptr_
  %_cond2_1_519 = icmp ugt i8* %_ptr_bt_515, %_parent_stack_end_ptr_
  %_cond2_2_520 = icmp ult i8* %_ptr_bt_515, %_parent_stack_start_ptr_
  %_cond2_521 = or i1 %_cond2_1_519, %_cond2_2_520
  %_cond4_522 = icmp ule i8* %_pot_address_in_parent_stack_517, %_parent_stack_end_ptr_
  %_cond1_n_cond2_523 = and i1 %_cond1_518, %_cond2_521
  %_cond1_n_cond2_cond3_524 = and i1 %_cond1_n_cond2_523, %_cond4_522
  br i1 %_cond1_n_cond2_cond3_524, label %185, label %186

; <label>:185:                                    ; preds = %182
  %_address_in_parent_stack_bt_526 = bitcast i8* %_pot_address_in_parent_stack_517 to i32*
  br label %186

; <label>:186:                                    ; preds = %182, %185
  %187 = phi i32* [ %184, %182 ], [ %_address_in_parent_stack_bt_526, %185 ]
  %_new_load_527 = load i32, i32* %187
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_512, i32 %_new_load_527)
  %188 = extractvalue { i32, i1 } %uadd75, 0
  %189 = zext i32 %188 to i64, !mcsema_real_eip !98
  store i32 %188, i32* %184, !mcsema_real_eip !99
  %_load_rbp_ptr_111 = load i8*, i8** %_RBP_ptr_
  %_new_gep_112 = getelementptr i8, i8* %_load_rbp_ptr_111, i64 -92
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %190 = bitcast i64* %_allin_new_bt_113 to i32*
  %_ptr_to_int_528 = ptrtoint i32* %190 to i64
  %_ptr_bt_530 = bitcast i32* %190 to i8*
  %_offset_above_rbp_531 = sub i64 %_ptr_to_int_528, %_local_end_to_int_
  %_pot_address_in_parent_stack_532 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_531
  %_cond1_533 = icmp ugt i8* %_ptr_bt_530, %_local_stack_end_ptr_
  %_cond2_1_534 = icmp ugt i8* %_ptr_bt_530, %_parent_stack_end_ptr_
  %_cond2_2_535 = icmp ult i8* %_ptr_bt_530, %_parent_stack_start_ptr_
  %_cond2_536 = or i1 %_cond2_1_534, %_cond2_2_535
  %_cond4_537 = icmp ule i8* %_pot_address_in_parent_stack_532, %_parent_stack_end_ptr_
  %_cond1_n_cond2_538 = and i1 %_cond1_533, %_cond2_536
  %_cond1_n_cond2_cond3_539 = and i1 %_cond1_n_cond2_538, %_cond4_537
  br i1 %_cond1_n_cond2_cond3_539, label %191, label %192

; <label>:191:                                    ; preds = %186
  %_address_in_parent_stack_bt_541 = bitcast i8* %_pot_address_in_parent_stack_532 to i32*
  br label %192

; <label>:192:                                    ; preds = %186, %191
  %193 = phi i32* [ %190, %186 ], [ %_address_in_parent_stack_bt_541, %191 ]
  %_new_load_542 = load i32, i32* %193
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_542, i32 1)
  %194 = extractvalue { i32, i1 } %uadd76, 0
  store i32 %194, i32* %190, !mcsema_real_eip !101
  br label %block_0x9a, !mcsema_real_eip !102

block_0xc9:                                       ; preds = %162
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -52
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %195 = bitcast i64* %_allin_new_bt_118 to i32*
  %_ptr_to_int_543 = ptrtoint i32* %195 to i64
  %_ptr_bt_545 = bitcast i32* %195 to i8*
  %_offset_above_rbp_546 = sub i64 %_ptr_to_int_543, %_local_end_to_int_
  %_pot_address_in_parent_stack_547 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_546
  %_cond1_548 = icmp ugt i8* %_ptr_bt_545, %_local_stack_end_ptr_
  %_cond2_1_549 = icmp ugt i8* %_ptr_bt_545, %_parent_stack_end_ptr_
  %_cond2_2_550 = icmp ult i8* %_ptr_bt_545, %_parent_stack_start_ptr_
  %_cond2_551 = or i1 %_cond2_1_549, %_cond2_2_550
  %_cond4_552 = icmp ule i8* %_pot_address_in_parent_stack_547, %_parent_stack_end_ptr_
  %_cond1_n_cond2_553 = and i1 %_cond1_548, %_cond2_551
  %_cond1_n_cond2_cond3_554 = and i1 %_cond1_n_cond2_553, %_cond4_552
  br i1 %_cond1_n_cond2_cond3_554, label %196, label %197

; <label>:196:                                    ; preds = %block_0xc9
  %_address_in_parent_stack_bt_556 = bitcast i8* %_pot_address_in_parent_stack_547 to i32*
  br label %197

; <label>:197:                                    ; preds = %block_0xc9, %196
  %198 = phi i32* [ %195, %block_0xc9 ], [ %_address_in_parent_stack_bt_556, %196 ]
  %_new_load_557 = load i32, i32* %198
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -84
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %199 = bitcast i64* %_allin_new_bt_121 to i32*
  %_ptr_to_int_558 = ptrtoint i32* %199 to i64
  %_ptr_bt_560 = bitcast i32* %199 to i8*
  %_offset_above_rbp_561 = sub i64 %_ptr_to_int_558, %_local_end_to_int_
  %_pot_address_in_parent_stack_562 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_561
  %_cond1_563 = icmp ugt i8* %_ptr_bt_560, %_local_stack_end_ptr_
  %_cond2_1_564 = icmp ugt i8* %_ptr_bt_560, %_parent_stack_end_ptr_
  %_cond2_2_565 = icmp ult i8* %_ptr_bt_560, %_parent_stack_start_ptr_
  %_cond2_566 = or i1 %_cond2_1_564, %_cond2_2_565
  %_cond4_567 = icmp ule i8* %_pot_address_in_parent_stack_562, %_parent_stack_end_ptr_
  %_cond1_n_cond2_568 = and i1 %_cond1_563, %_cond2_566
  %_cond1_n_cond2_cond3_569 = and i1 %_cond1_n_cond2_568, %_cond4_567
  br i1 %_cond1_n_cond2_cond3_569, label %200, label %201

; <label>:200:                                    ; preds = %197
  %_address_in_parent_stack_bt_571 = bitcast i8* %_pot_address_in_parent_stack_562 to i32*
  br label %201

; <label>:201:                                    ; preds = %197, %200
  %202 = phi i32* [ %199, %197 ], [ %_address_in_parent_stack_bt_571, %200 ]
  %_new_load_572 = load i32, i32* %202
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_557, i32 %_new_load_572)
  %203 = extractvalue { i32, i1 } %uadd77, 0
  store i32 %203, i32* %199, !mcsema_real_eip !105
  %_load_rbp_ptr_125 = load i8*, i8** %_RBP_ptr_
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -96
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %204 = bitcast i64* %_allin_new_bt_127 to i32*
  store i32 0, i32* %204, !mcsema_real_eip !106
  br label %block_0xdb, !mcsema_real_eip !94

block_0xdb:                                       ; preds = %241, %201
  %RSI_val.2 = phi i64 [ %RSI_val.1, %201 ], [ %238, %241 ]
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -96
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %205 = bitcast i64* %_allin_new_bt_130 to i32*
  %_ptr_to_int_573 = ptrtoint i32* %205 to i64
  %_ptr_bt_575 = bitcast i32* %205 to i8*
  %_offset_above_rbp_576 = sub i64 %_ptr_to_int_573, %_local_end_to_int_
  %_pot_address_in_parent_stack_577 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_576
  %_cond1_578 = icmp ugt i8* %_ptr_bt_575, %_local_stack_end_ptr_
  %_cond2_1_579 = icmp ugt i8* %_ptr_bt_575, %_parent_stack_end_ptr_
  %_cond2_2_580 = icmp ult i8* %_ptr_bt_575, %_parent_stack_start_ptr_
  %_cond2_581 = or i1 %_cond2_1_579, %_cond2_2_580
  %_cond4_582 = icmp ule i8* %_pot_address_in_parent_stack_577, %_parent_stack_end_ptr_
  %_cond1_n_cond2_583 = and i1 %_cond1_578, %_cond2_581
  %_cond1_n_cond2_cond3_584 = and i1 %_cond1_n_cond2_583, %_cond4_582
  br i1 %_cond1_n_cond2_cond3_584, label %206, label %207

; <label>:206:                                    ; preds = %block_0xdb
  %_address_in_parent_stack_bt_586 = bitcast i8* %_pot_address_in_parent_stack_577 to i32*
  br label %207

; <label>:207:                                    ; preds = %block_0xdb, %206
  %208 = phi i32* [ %205, %block_0xdb ], [ %_address_in_parent_stack_bt_586, %206 ]
  %_new_load_587 = load i32, i32* %208
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -44
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %209 = bitcast i64* %_allin_new_bt_133 to i32*
  %_ptr_to_int_588 = ptrtoint i32* %209 to i64
  %_ptr_bt_590 = bitcast i32* %209 to i8*
  %_offset_above_rbp_591 = sub i64 %_ptr_to_int_588, %_local_end_to_int_
  %_pot_address_in_parent_stack_592 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_591
  %_cond1_593 = icmp ugt i8* %_ptr_bt_590, %_local_stack_end_ptr_
  %_cond2_1_594 = icmp ugt i8* %_ptr_bt_590, %_parent_stack_end_ptr_
  %_cond2_2_595 = icmp ult i8* %_ptr_bt_590, %_parent_stack_start_ptr_
  %_cond2_596 = or i1 %_cond2_1_594, %_cond2_2_595
  %_cond4_597 = icmp ule i8* %_pot_address_in_parent_stack_592, %_parent_stack_end_ptr_
  %_cond1_n_cond2_598 = and i1 %_cond1_593, %_cond2_596
  %_cond1_n_cond2_cond3_599 = and i1 %_cond1_n_cond2_598, %_cond4_597
  br i1 %_cond1_n_cond2_cond3_599, label %210, label %211

; <label>:210:                                    ; preds = %207
  %_address_in_parent_stack_bt_601 = bitcast i8* %_pot_address_in_parent_stack_592 to i32*
  br label %211

; <label>:211:                                    ; preds = %207, %210
  %212 = phi i32* [ %209, %207 ], [ %_address_in_parent_stack_bt_601, %210 ]
  %_new_load_602 = load i32, i32* %212
  %213 = sub i32 %_new_load_587, %_new_load_602, !mcsema_real_eip !108
  %214 = xor i32 %213, %_new_load_587, !mcsema_real_eip !108
  %215 = icmp slt i32 %213, 0
  %216 = xor i32 %_new_load_602, %_new_load_587, !mcsema_real_eip !108
  %217 = and i32 %214, %216, !mcsema_real_eip !108
  %218 = icmp slt i32 %217, 0
  %tmp78 = xor i1 %215, %218
  br i1 %tmp78, label %block_0xe7, label %block_0x10a, !mcsema_real_eip !109

block_0xe7:                                       ; preds = %211
  br i1 %_cond1_n_cond2_cond3_584, label %219, label %220

; <label>:219:                                    ; preds = %block_0xe7
  %_address_in_parent_stack_bt_616 = bitcast i8* %_pot_address_in_parent_stack_577 to i32*
  br label %220

; <label>:220:                                    ; preds = %block_0xe7, %219
  %221 = phi i32* [ %205, %block_0xe7 ], [ %_address_in_parent_stack_bt_616, %219 ]
  %_new_load_617 = load i32, i32* %221
  %222 = sext i32 %_new_load_617 to i64, !mcsema_real_eip !110
  %_new_gep_138 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -64
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %_ptr_to_int_618 = ptrtoint i64* %_allin_new_bt_139 to i64
  %_offset_above_rbp_621 = sub i64 %_ptr_to_int_618, %_local_end_to_int_
  %_pot_address_in_parent_stack_622 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_621
  %_cond1_623 = icmp ugt i8* %_new_gep_138, %_local_stack_end_ptr_
  %_cond2_1_624 = icmp ugt i8* %_new_gep_138, %_parent_stack_end_ptr_
  %_cond2_2_625 = icmp ult i8* %_new_gep_138, %_parent_stack_start_ptr_
  %_cond2_626 = or i1 %_cond2_1_624, %_cond2_2_625
  %_cond4_627 = icmp ule i8* %_pot_address_in_parent_stack_622, %_parent_stack_end_ptr_
  %_cond1_n_cond2_628 = and i1 %_cond1_623, %_cond2_626
  %_cond1_n_cond2_cond3_629 = and i1 %_cond1_n_cond2_628, %_cond4_627
  br i1 %_cond1_n_cond2_cond3_629, label %223, label %224

; <label>:223:                                    ; preds = %220
  %_address_in_parent_stack_bt_631 = bitcast i8* %_pot_address_in_parent_stack_622 to i64*
  br label %224

; <label>:224:                                    ; preds = %220, %223
  %225 = phi i64* [ %_allin_new_bt_139, %220 ], [ %_address_in_parent_stack_bt_631, %223 ]
  %_new_load_632 = load i64, i64* %225
  %226 = shl nsw i64 %222, 2
  %227 = add i64 %_new_load_632, %226, !mcsema_real_eip !112
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !112
  %229 = bitcast i64* %228 to i32*
  %_ptr_to_int_633 = ptrtoint i32* %229 to i64
  %_ptr_bt_635 = bitcast i32* %229 to i8*
  %_offset_above_rbp_636 = sub i64 %_ptr_to_int_633, %_local_end_to_int_
  %_pot_address_in_parent_stack_637 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_636
  %_cond1_638 = icmp ugt i8* %_ptr_bt_635, %_local_stack_end_ptr_
  %_cond2_1_639 = icmp ugt i8* %_ptr_bt_635, %_parent_stack_end_ptr_
  %_cond2_2_640 = icmp ult i8* %_ptr_bt_635, %_parent_stack_start_ptr_
  %_cond2_641 = or i1 %_cond2_1_639, %_cond2_2_640
  %_cond4_642 = icmp ule i8* %_pot_address_in_parent_stack_637, %_parent_stack_end_ptr_
  %_cond1_n_cond2_643 = and i1 %_cond1_638, %_cond2_641
  %_cond1_n_cond2_cond3_644 = and i1 %_cond1_n_cond2_643, %_cond4_642
  br i1 %_cond1_n_cond2_cond3_644, label %230, label %231

; <label>:230:                                    ; preds = %224
  %_address_in_parent_stack_bt_646 = bitcast i8* %_pot_address_in_parent_stack_637 to i32*
  br label %231

; <label>:231:                                    ; preds = %224, %230
  %232 = phi i32* [ %229, %224 ], [ %_address_in_parent_stack_bt_646, %230 ]
  %_new_load_647 = load i32, i32* %232
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -84
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %233 = bitcast i64* %_allin_new_bt_142 to i32*
  %_ptr_to_int_648 = ptrtoint i32* %233 to i64
  %_ptr_bt_650 = bitcast i32* %233 to i8*
  %_offset_above_rbp_651 = sub i64 %_ptr_to_int_648, %_local_end_to_int_
  %_pot_address_in_parent_stack_652 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_651
  %_cond1_653 = icmp ugt i8* %_ptr_bt_650, %_local_stack_end_ptr_
  %_cond2_1_654 = icmp ugt i8* %_ptr_bt_650, %_parent_stack_end_ptr_
  %_cond2_2_655 = icmp ult i8* %_ptr_bt_650, %_parent_stack_start_ptr_
  %_cond2_656 = or i1 %_cond2_1_654, %_cond2_2_655
  %_cond4_657 = icmp ule i8* %_pot_address_in_parent_stack_652, %_parent_stack_end_ptr_
  %_cond1_n_cond2_658 = and i1 %_cond1_653, %_cond2_656
  %_cond1_n_cond2_cond3_659 = and i1 %_cond1_n_cond2_658, %_cond4_657
  br i1 %_cond1_n_cond2_cond3_659, label %234, label %235

; <label>:234:                                    ; preds = %231
  %_address_in_parent_stack_bt_661 = bitcast i8* %_pot_address_in_parent_stack_652 to i32*
  br label %235

; <label>:235:                                    ; preds = %231, %234
  %236 = phi i32* [ %233, %231 ], [ %_address_in_parent_stack_bt_661, %234 ]
  %_new_load_662 = load i32, i32* %236
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_647, i32 %_new_load_662)
  %237 = extractvalue { i32, i1 } %uadd79, 0
  %238 = zext i32 %237 to i64, !mcsema_real_eip !114
  store i32 %237, i32* %233, !mcsema_real_eip !115
  %_load_rbp_ptr_146 = load i8*, i8** %_RBP_ptr_
  %_new_gep_147 = getelementptr i8, i8* %_load_rbp_ptr_146, i64 -96
  %_allin_new_bt_148 = bitcast i8* %_new_gep_147 to i64*
  %239 = bitcast i64* %_allin_new_bt_148 to i32*
  %_ptr_to_int_663 = ptrtoint i32* %239 to i64
  %_ptr_bt_665 = bitcast i32* %239 to i8*
  %_offset_above_rbp_666 = sub i64 %_ptr_to_int_663, %_local_end_to_int_
  %_pot_address_in_parent_stack_667 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_666
  %_cond1_668 = icmp ugt i8* %_ptr_bt_665, %_local_stack_end_ptr_
  %_cond2_1_669 = icmp ugt i8* %_ptr_bt_665, %_parent_stack_end_ptr_
  %_cond2_2_670 = icmp ult i8* %_ptr_bt_665, %_parent_stack_start_ptr_
  %_cond2_671 = or i1 %_cond2_1_669, %_cond2_2_670
  %_cond4_672 = icmp ule i8* %_pot_address_in_parent_stack_667, %_parent_stack_end_ptr_
  %_cond1_n_cond2_673 = and i1 %_cond1_668, %_cond2_671
  %_cond1_n_cond2_cond3_674 = and i1 %_cond1_n_cond2_673, %_cond4_672
  br i1 %_cond1_n_cond2_cond3_674, label %240, label %241

; <label>:240:                                    ; preds = %235
  %_address_in_parent_stack_bt_676 = bitcast i8* %_pot_address_in_parent_stack_667 to i32*
  br label %241

; <label>:241:                                    ; preds = %235, %240
  %242 = phi i32* [ %239, %235 ], [ %_address_in_parent_stack_bt_676, %240 ]
  %_new_load_677 = load i32, i32* %242
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_677, i32 1)
  %243 = extractvalue { i32, i1 } %uadd80, 0
  store i32 %243, i32* %239, !mcsema_real_eip !117
  br label %block_0xdb, !mcsema_real_eip !118

block_0x10a:                                      ; preds = %211
  %_new_gep_152 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -72
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %_ptr_to_int_678 = ptrtoint i64* %_allin_new_bt_153 to i64
  %_offset_above_rbp_681 = sub i64 %_ptr_to_int_678, %_local_end_to_int_
  %_pot_address_in_parent_stack_682 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_681
  %_cond1_683 = icmp ugt i8* %_new_gep_152, %_local_stack_end_ptr_
  %_cond2_1_684 = icmp ugt i8* %_new_gep_152, %_parent_stack_end_ptr_
  %_cond2_2_685 = icmp ult i8* %_new_gep_152, %_parent_stack_start_ptr_
  %_cond2_686 = or i1 %_cond2_1_684, %_cond2_2_685
  %_cond4_687 = icmp ule i8* %_pot_address_in_parent_stack_682, %_parent_stack_end_ptr_
  %_cond1_n_cond2_688 = and i1 %_cond1_683, %_cond2_686
  %_cond1_n_cond2_cond3_689 = and i1 %_cond1_n_cond2_688, %_cond4_687
  br i1 %_cond1_n_cond2_cond3_689, label %244, label %245

; <label>:244:                                    ; preds = %block_0x10a
  %_address_in_parent_stack_bt_691 = bitcast i8* %_pot_address_in_parent_stack_682 to i64*
  br label %245

; <label>:245:                                    ; preds = %block_0x10a, %244
  %246 = phi i64* [ %_allin_new_bt_153, %block_0x10a ], [ %_address_in_parent_stack_bt_691, %244 ]
  %_new_load_692 = load i64, i64* %246
  %247 = inttoptr i64 %_new_load_692 to i64*, !mcsema_real_eip !120
  %248 = bitcast i64* %247 to i32*
  %_ptr_to_int_693 = ptrtoint i32* %248 to i64
  %_ptr_bt_695 = bitcast i32* %248 to i8*
  %_offset_above_rbp_696 = sub i64 %_ptr_to_int_693, %_local_end_to_int_
  %_pot_address_in_parent_stack_697 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_696
  %_cond1_698 = icmp ugt i8* %_ptr_bt_695, %_local_stack_end_ptr_
  %_cond2_1_699 = icmp ugt i8* %_ptr_bt_695, %_parent_stack_end_ptr_
  %_cond2_2_700 = icmp ult i8* %_ptr_bt_695, %_parent_stack_start_ptr_
  %_cond2_701 = or i1 %_cond2_1_699, %_cond2_2_700
  %_cond4_702 = icmp ule i8* %_pot_address_in_parent_stack_697, %_parent_stack_end_ptr_
  %_cond1_n_cond2_703 = and i1 %_cond1_698, %_cond2_701
  %_cond1_n_cond2_cond3_704 = and i1 %_cond1_n_cond2_703, %_cond4_702
  br i1 %_cond1_n_cond2_cond3_704, label %249, label %250

; <label>:249:                                    ; preds = %245
  %_address_in_parent_stack_bt_706 = bitcast i8* %_pot_address_in_parent_stack_697 to i32*
  br label %250

; <label>:250:                                    ; preds = %245, %249
  %251 = phi i32* [ %248, %245 ], [ %_address_in_parent_stack_bt_706, %249 ]
  %_new_load_707 = load i32, i32* %251
  %252 = zext i32 %_new_load_707 to i64, !mcsema_real_eip !120
  %_new_gep_155 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -84
  %_allin_new_bt_156 = bitcast i8* %_new_gep_155 to i64*
  %253 = bitcast i64* %_allin_new_bt_156 to i32*
  %_ptr_to_int_708 = ptrtoint i32* %253 to i64
  %_ptr_bt_710 = bitcast i32* %253 to i8*
  %_offset_above_rbp_711 = sub i64 %_ptr_to_int_708, %_local_end_to_int_
  %_pot_address_in_parent_stack_712 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_711
  %_cond1_713 = icmp ugt i8* %_ptr_bt_710, %_local_stack_end_ptr_
  %_cond2_1_714 = icmp ugt i8* %_ptr_bt_710, %_parent_stack_end_ptr_
  %_cond2_2_715 = icmp ult i8* %_ptr_bt_710, %_parent_stack_start_ptr_
  %_cond2_716 = or i1 %_cond2_1_714, %_cond2_2_715
  %_cond4_717 = icmp ule i8* %_pot_address_in_parent_stack_712, %_parent_stack_end_ptr_
  %_cond1_n_cond2_718 = and i1 %_cond1_713, %_cond2_716
  %_cond1_n_cond2_cond3_719 = and i1 %_cond1_n_cond2_718, %_cond4_717
  br i1 %_cond1_n_cond2_cond3_719, label %254, label %255

; <label>:254:                                    ; preds = %250
  %_address_in_parent_stack_bt_721 = bitcast i8* %_pot_address_in_parent_stack_712 to i32*
  br label %255

; <label>:255:                                    ; preds = %250, %254
  %256 = phi i32* [ %253, %250 ], [ %_address_in_parent_stack_bt_721, %254 ]
  %_new_load_722 = load i32, i32* %256
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_707, i32 %_new_load_722)
  %257 = extractvalue { i32, i1 } %uadd81, 0
  %258 = zext i32 %257 to i64, !mcsema_real_eip !122
  store i32 %257, i32* %253, !mcsema_real_eip !123
  %_load_rbp_ptr_160 = load i8*, i8** %_RBP_ptr_
  %_new_gep_161 = getelementptr i8, i8* %_load_rbp_ptr_160, i64 -100
  %_allin_new_bt_162 = bitcast i8* %_new_gep_161 to i64*
  %259 = bitcast i64* %_allin_new_bt_162 to i32*
  store i32 0, i32* %259, !mcsema_real_eip !124
  br label %block_0x11f, !mcsema_real_eip !110

block_0x11f:                                      ; preds = %306, %255
  %RSI_val.3 = phi i64 [ %RSI_val.2, %255 ], [ %303, %306 ]
  %RDX_val.0 = phi i64 [ %258, %255 ], [ %297, %306 ]
  %RCX_val.0 = phi i64 [ %252, %255 ], [ %_new_load_782, %306 ]
  %_load_rbp_ptr_163 = load i8*, i8** %_RBP_ptr_
  %_new_gep_164 = getelementptr i8, i8* %_load_rbp_ptr_163, i64 -100
  %_allin_new_bt_165 = bitcast i8* %_new_gep_164 to i64*
  %260 = bitcast i64* %_allin_new_bt_165 to i32*
  %_ptr_to_int_723 = ptrtoint i32* %260 to i64
  %_ptr_bt_725 = bitcast i32* %260 to i8*
  %_offset_above_rbp_726 = sub i64 %_ptr_to_int_723, %_local_end_to_int_
  %_pot_address_in_parent_stack_727 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_726
  %_cond1_728 = icmp ugt i8* %_ptr_bt_725, %_local_stack_end_ptr_
  %_cond2_1_729 = icmp ugt i8* %_ptr_bt_725, %_parent_stack_end_ptr_
  %_cond2_2_730 = icmp ult i8* %_ptr_bt_725, %_parent_stack_start_ptr_
  %_cond2_731 = or i1 %_cond2_1_729, %_cond2_2_730
  %_cond4_732 = icmp ule i8* %_pot_address_in_parent_stack_727, %_parent_stack_end_ptr_
  %_cond1_n_cond2_733 = and i1 %_cond1_728, %_cond2_731
  %_cond1_n_cond2_cond3_734 = and i1 %_cond1_n_cond2_733, %_cond4_732
  br i1 %_cond1_n_cond2_cond3_734, label %261, label %262

; <label>:261:                                    ; preds = %block_0x11f
  %_address_in_parent_stack_bt_736 = bitcast i8* %_pot_address_in_parent_stack_727 to i32*
  br label %262

; <label>:262:                                    ; preds = %block_0x11f, %261
  %263 = phi i32* [ %260, %block_0x11f ], [ %_address_in_parent_stack_bt_736, %261 ]
  %_new_load_737 = load i32, i32* %263
  %_new_gep_167 = getelementptr i8, i8* %_load_rbp_ptr_163, i64 -48
  %_allin_new_bt_168 = bitcast i8* %_new_gep_167 to i64*
  %264 = bitcast i64* %_allin_new_bt_168 to i32*
  %_ptr_to_int_738 = ptrtoint i32* %264 to i64
  %_ptr_bt_740 = bitcast i32* %264 to i8*
  %_offset_above_rbp_741 = sub i64 %_ptr_to_int_738, %_local_end_to_int_
  %_pot_address_in_parent_stack_742 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_741
  %_cond1_743 = icmp ugt i8* %_ptr_bt_740, %_local_stack_end_ptr_
  %_cond2_1_744 = icmp ugt i8* %_ptr_bt_740, %_parent_stack_end_ptr_
  %_cond2_2_745 = icmp ult i8* %_ptr_bt_740, %_parent_stack_start_ptr_
  %_cond2_746 = or i1 %_cond2_1_744, %_cond2_2_745
  %_cond4_747 = icmp ule i8* %_pot_address_in_parent_stack_742, %_parent_stack_end_ptr_
  %_cond1_n_cond2_748 = and i1 %_cond1_743, %_cond2_746
  %_cond1_n_cond2_cond3_749 = and i1 %_cond1_n_cond2_748, %_cond4_747
  br i1 %_cond1_n_cond2_cond3_749, label %265, label %266

; <label>:265:                                    ; preds = %262
  %_address_in_parent_stack_bt_751 = bitcast i8* %_pot_address_in_parent_stack_742 to i32*
  br label %266

; <label>:266:                                    ; preds = %262, %265
  %267 = phi i32* [ %264, %262 ], [ %_address_in_parent_stack_bt_751, %265 ]
  %_new_load_752 = load i32, i32* %267
  %268 = sub i32 %_new_load_737, %_new_load_752, !mcsema_real_eip !126
  %269 = xor i32 %268, %_new_load_737, !mcsema_real_eip !126
  %270 = xor i32 %269, %_new_load_752, !mcsema_real_eip !126
  %271 = and i32 %270, 16, !mcsema_real_eip !126
  %272 = icmp ne i32 %271, 0, !mcsema_real_eip !126
  %273 = trunc i32 %268 to i8, !mcsema_real_eip !126
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !126
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  %277 = icmp eq i32 %_new_load_737, %_new_load_752
  %278 = icmp slt i32 %268, 0
  %279 = icmp ult i32 %_new_load_737, %_new_load_752, !mcsema_real_eip !126
  %280 = xor i32 %_new_load_752, %_new_load_737, !mcsema_real_eip !126
  %281 = and i32 %269, %280, !mcsema_real_eip !126
  %282 = icmp slt i32 %281, 0
  %tmp82 = xor i1 %278, %282
  br i1 %tmp82, label %block_0x12b, label %block_0x14e, !mcsema_real_eip !127

block_0x12b:                                      ; preds = %266
  br i1 %_cond1_n_cond2_cond3_734, label %283, label %284

; <label>:283:                                    ; preds = %block_0x12b
  %_address_in_parent_stack_bt_766 = bitcast i8* %_pot_address_in_parent_stack_727 to i32*
  br label %284

; <label>:284:                                    ; preds = %block_0x12b, %283
  %285 = phi i32* [ %260, %block_0x12b ], [ %_address_in_parent_stack_bt_766, %283 ]
  %_new_load_767 = load i32, i32* %285
  %286 = sext i32 %_new_load_767 to i64, !mcsema_real_eip !128
  %_new_gep_173 = getelementptr i8, i8* %_load_rbp_ptr_163, i64 -80
  %_allin_new_bt_174 = bitcast i8* %_new_gep_173 to i64*
  %_ptr_to_int_768 = ptrtoint i64* %_allin_new_bt_174 to i64
  %_offset_above_rbp_771 = sub i64 %_ptr_to_int_768, %_local_end_to_int_
  %_pot_address_in_parent_stack_772 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_771
  %_cond1_773 = icmp ugt i8* %_new_gep_173, %_local_stack_end_ptr_
  %_cond2_1_774 = icmp ugt i8* %_new_gep_173, %_parent_stack_end_ptr_
  %_cond2_2_775 = icmp ult i8* %_new_gep_173, %_parent_stack_start_ptr_
  %_cond2_776 = or i1 %_cond2_1_774, %_cond2_2_775
  %_cond4_777 = icmp ule i8* %_pot_address_in_parent_stack_772, %_parent_stack_end_ptr_
  %_cond1_n_cond2_778 = and i1 %_cond1_773, %_cond2_776
  %_cond1_n_cond2_cond3_779 = and i1 %_cond1_n_cond2_778, %_cond4_777
  br i1 %_cond1_n_cond2_cond3_779, label %287, label %288

; <label>:287:                                    ; preds = %284
  %_address_in_parent_stack_bt_781 = bitcast i8* %_pot_address_in_parent_stack_772 to i64*
  br label %288

; <label>:288:                                    ; preds = %284, %287
  %289 = phi i64* [ %_allin_new_bt_174, %284 ], [ %_address_in_parent_stack_bt_781, %287 ]
  %_new_load_782 = load i64, i64* %289
  %290 = shl nsw i64 %286, 2
  %291 = add i64 %_new_load_782, %290, !mcsema_real_eip !130
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !130
  %293 = bitcast i64* %292 to i32*
  %_ptr_to_int_783 = ptrtoint i32* %293 to i64
  %_ptr_bt_785 = bitcast i32* %293 to i8*
  %_offset_above_rbp_786 = sub i64 %_ptr_to_int_783, %_local_end_to_int_
  %_pot_address_in_parent_stack_787 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_786
  %_cond1_788 = icmp ugt i8* %_ptr_bt_785, %_local_stack_end_ptr_
  %_cond2_1_789 = icmp ugt i8* %_ptr_bt_785, %_parent_stack_end_ptr_
  %_cond2_2_790 = icmp ult i8* %_ptr_bt_785, %_parent_stack_start_ptr_
  %_cond2_791 = or i1 %_cond2_1_789, %_cond2_2_790
  %_cond4_792 = icmp ule i8* %_pot_address_in_parent_stack_787, %_parent_stack_end_ptr_
  %_cond1_n_cond2_793 = and i1 %_cond1_788, %_cond2_791
  %_cond1_n_cond2_cond3_794 = and i1 %_cond1_n_cond2_793, %_cond4_792
  br i1 %_cond1_n_cond2_cond3_794, label %294, label %295

; <label>:294:                                    ; preds = %288
  %_address_in_parent_stack_bt_796 = bitcast i8* %_pot_address_in_parent_stack_787 to i32*
  br label %295

; <label>:295:                                    ; preds = %288, %294
  %296 = phi i32* [ %293, %288 ], [ %_address_in_parent_stack_bt_796, %294 ]
  %_new_load_797 = load i32, i32* %296
  %297 = zext i32 %_new_load_797 to i64, !mcsema_real_eip !130
  %_new_gep_176 = getelementptr i8, i8* %_load_rbp_ptr_163, i64 -84
  %_allin_new_bt_177 = bitcast i8* %_new_gep_176 to i64*
  %298 = bitcast i64* %_allin_new_bt_177 to i32*
  %_ptr_to_int_798 = ptrtoint i32* %298 to i64
  %_ptr_bt_800 = bitcast i32* %298 to i8*
  %_offset_above_rbp_801 = sub i64 %_ptr_to_int_798, %_local_end_to_int_
  %_pot_address_in_parent_stack_802 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_801
  %_cond1_803 = icmp ugt i8* %_ptr_bt_800, %_local_stack_end_ptr_
  %_cond2_1_804 = icmp ugt i8* %_ptr_bt_800, %_parent_stack_end_ptr_
  %_cond2_2_805 = icmp ult i8* %_ptr_bt_800, %_parent_stack_start_ptr_
  %_cond2_806 = or i1 %_cond2_1_804, %_cond2_2_805
  %_cond4_807 = icmp ule i8* %_pot_address_in_parent_stack_802, %_parent_stack_end_ptr_
  %_cond1_n_cond2_808 = and i1 %_cond1_803, %_cond2_806
  %_cond1_n_cond2_cond3_809 = and i1 %_cond1_n_cond2_808, %_cond4_807
  br i1 %_cond1_n_cond2_cond3_809, label %299, label %300

; <label>:299:                                    ; preds = %295
  %_address_in_parent_stack_bt_811 = bitcast i8* %_pot_address_in_parent_stack_802 to i32*
  br label %300

; <label>:300:                                    ; preds = %295, %299
  %301 = phi i32* [ %298, %295 ], [ %_address_in_parent_stack_bt_811, %299 ]
  %_new_load_812 = load i32, i32* %301
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_797, i32 %_new_load_812)
  %302 = extractvalue { i32, i1 } %uadd83, 0
  %303 = zext i32 %302 to i64, !mcsema_real_eip !132
  store i32 %302, i32* %298, !mcsema_real_eip !133
  %_load_rbp_ptr_181 = load i8*, i8** %_RBP_ptr_
  %_new_gep_182 = getelementptr i8, i8* %_load_rbp_ptr_181, i64 -100
  %_allin_new_bt_183 = bitcast i8* %_new_gep_182 to i64*
  %304 = bitcast i64* %_allin_new_bt_183 to i32*
  %_ptr_to_int_813 = ptrtoint i32* %304 to i64
  %_ptr_bt_815 = bitcast i32* %304 to i8*
  %_offset_above_rbp_816 = sub i64 %_ptr_to_int_813, %_local_end_to_int_
  %_pot_address_in_parent_stack_817 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_816
  %_cond1_818 = icmp ugt i8* %_ptr_bt_815, %_local_stack_end_ptr_
  %_cond2_1_819 = icmp ugt i8* %_ptr_bt_815, %_parent_stack_end_ptr_
  %_cond2_2_820 = icmp ult i8* %_ptr_bt_815, %_parent_stack_start_ptr_
  %_cond2_821 = or i1 %_cond2_1_819, %_cond2_2_820
  %_cond4_822 = icmp ule i8* %_pot_address_in_parent_stack_817, %_parent_stack_end_ptr_
  %_cond1_n_cond2_823 = and i1 %_cond1_818, %_cond2_821
  %_cond1_n_cond2_cond3_824 = and i1 %_cond1_n_cond2_823, %_cond4_822
  br i1 %_cond1_n_cond2_cond3_824, label %305, label %306

; <label>:305:                                    ; preds = %300
  %_address_in_parent_stack_bt_826 = bitcast i8* %_pot_address_in_parent_stack_817 to i32*
  br label %306

; <label>:306:                                    ; preds = %300, %305
  %307 = phi i32* [ %304, %300 ], [ %_address_in_parent_stack_bt_826, %305 ]
  %_new_load_827 = load i32, i32* %307
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_827, i32 1)
  %308 = extractvalue { i32, i1 } %uadd84, 0
  store i32 %308, i32* %304, !mcsema_real_eip !135
  br label %block_0x11f, !mcsema_real_eip !136

block_0x14e:                                      ; preds = %266
  %_new_gep_187 = getelementptr i8, i8* %_load_rbp_ptr_163, i64 -84
  %_allin_new_bt_188 = bitcast i8* %_new_gep_187 to i64*
  %309 = bitcast i64* %_allin_new_bt_188 to i32*
  %_ptr_to_int_828 = ptrtoint i32* %309 to i64
  %_ptr_bt_830 = bitcast i32* %309 to i8*
  %_offset_above_rbp_831 = sub i64 %_ptr_to_int_828, %_local_end_to_int_
  %_pot_address_in_parent_stack_832 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_831
  %_cond1_833 = icmp ugt i8* %_ptr_bt_830, %_local_stack_end_ptr_
  %_cond2_1_834 = icmp ugt i8* %_ptr_bt_830, %_parent_stack_end_ptr_
  %_cond2_2_835 = icmp ult i8* %_ptr_bt_830, %_parent_stack_start_ptr_
  %_cond2_836 = or i1 %_cond2_1_834, %_cond2_2_835
  %_cond4_837 = icmp ule i8* %_pot_address_in_parent_stack_832, %_parent_stack_end_ptr_
  %_cond1_n_cond2_838 = and i1 %_cond1_833, %_cond2_836
  %_cond1_n_cond2_cond3_839 = and i1 %_cond1_n_cond2_838, %_cond4_837
  br i1 %_cond1_n_cond2_cond3_839, label %310, label %311

; <label>:310:                                    ; preds = %block_0x14e
  %_address_in_parent_stack_bt_841 = bitcast i8* %_pot_address_in_parent_stack_832 to i32*
  br label %311

; <label>:311:                                    ; preds = %block_0x14e, %310
  %312 = phi i32* [ %309, %block_0x14e ], [ %_address_in_parent_stack_bt_841, %310 ]
  %_new_load_842 = load i32, i32* %312
  %313 = zext i32 %_new_load_842 to i64, !mcsema_real_eip !137
  %_load_rsp_ptr_189 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_190 = bitcast i8* %_load_rsp_ptr_189 to i64*
  %_ptr_to_int_843 = ptrtoint i64* %_allin_new_bt_190 to i64
  %_offset_above_rbp_846 = sub i64 %_ptr_to_int_843, %_local_end_to_int_
  %_pot_address_in_parent_stack_847 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_846
  %_cond1_848 = icmp ugt i8* %_load_rsp_ptr_189, %_local_stack_end_ptr_
  %_cond2_1_849 = icmp ugt i8* %_load_rsp_ptr_189, %_parent_stack_end_ptr_
  %_cond2_2_850 = icmp ult i8* %_load_rsp_ptr_189, %_parent_stack_start_ptr_
  %_cond2_851 = or i1 %_cond2_1_849, %_cond2_2_850
  %_cond4_852 = icmp ule i8* %_pot_address_in_parent_stack_847, %_parent_stack_end_ptr_
  %_cond1_n_cond2_853 = and i1 %_cond1_848, %_cond2_851
  %_cond1_n_cond2_cond3_854 = and i1 %_cond1_n_cond2_853, %_cond4_852
  br i1 %_cond1_n_cond2_cond3_854, label %314, label %315

; <label>:314:                                    ; preds = %311
  %_address_in_parent_stack_bt_856 = bitcast i8* %_pot_address_in_parent_stack_847 to i64*
  br label %315

; <label>:315:                                    ; preds = %311, %314
  %316 = phi i64* [ %_allin_new_bt_190, %311 ], [ %_address_in_parent_stack_bt_856, %314 ]
  %_new_load_857 = load i64, i64* %316
  %_new_gep_191 = getelementptr i8, i8* %_load_rsp_ptr_189, i64 8
  store volatile i8* %_new_gep_191, i8** %_RSP_ptr_
  %_allin_new_bt_192 = bitcast i8* %_new_gep_191 to i64*
  %_ptr_to_int_858 = ptrtoint i64* %_allin_new_bt_192 to i64
  %_offset_above_rbp_861 = sub i64 %_ptr_to_int_858, %_local_end_to_int_
  %_pot_address_in_parent_stack_862 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_861
  %_cond1_863 = icmp ugt i8* %_new_gep_191, %_local_stack_end_ptr_
  %_cond2_1_864 = icmp ugt i8* %_new_gep_191, %_parent_stack_end_ptr_
  %_cond2_2_865 = icmp ult i8* %_new_gep_191, %_parent_stack_start_ptr_
  %_cond2_866 = or i1 %_cond2_1_864, %_cond2_2_865
  %_cond4_867 = icmp ule i8* %_pot_address_in_parent_stack_862, %_parent_stack_end_ptr_
  %_cond1_n_cond2_868 = and i1 %_cond1_863, %_cond2_866
  %_cond1_n_cond2_cond3_869 = and i1 %_cond1_n_cond2_868, %_cond4_867
  br i1 %_cond1_n_cond2_cond3_869, label %317, label %318

; <label>:317:                                    ; preds = %315
  %_address_in_parent_stack_bt_871 = bitcast i8* %_pot_address_in_parent_stack_862 to i64*
  br label %318

; <label>:318:                                    ; preds = %315, %317
  %319 = phi i64* [ %_allin_new_bt_192, %315 ], [ %_address_in_parent_stack_bt_871, %317 ]
  %_new_load_872 = load i64, i64* %319
  %_new_int2ptr_ = inttoptr i64 %_new_load_872 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_193 = getelementptr i8, i8* %_load_rsp_ptr_189, i64 24
  store volatile i8* %_new_gep_193, i8** %_RSP_ptr_
  store i64 %313, i64* %RAX, !mcsema_real_eip !140
  store i64 %_new_load_857, i64* %RBX, !mcsema_real_eip !140
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !140
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !140
  store i64 %RSI_val.3, i64* %RSI, !mcsema_real_eip !140
  store i64 %95, i64* %RDI, !mcsema_real_eip !140
  %_new_ptr2int_195 = ptrtoint i8* %_new_gep_193 to i64
  store volatile i64 %_new_ptr2int_195, i64* %RSP
  %_load_rbp_ptr_196 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_197 = ptrtoint i8* %_load_rbp_ptr_196 to i64
  store volatile i64 %_new_ptr2int_197, i64* %RBP
  store i64 %101, i64* %R8, !mcsema_real_eip !140
  store i64 %7, i64* %R9, !mcsema_real_eip !140
  store i64 %_new_load_227, i64* %R10, !mcsema_real_eip !140
  store i64 %_new_load_242, i64* %R11, !mcsema_real_eip !140
  store i64 %8, i64* %R12, !mcsema_real_eip !140
  store i64 %9, i64* %R13, !mcsema_real_eip !140
  store i64 %10, i64* %R14, !mcsema_real_eip !140
  store i64 %11, i64* %R15, !mcsema_real_eip !140
  store i64 %12, i64* %RIP, !mcsema_real_eip !140
  store i1 %279, i1* %CF, align 1, !mcsema_real_eip !140
  store i1 %276, i1* %PF, align 1, !mcsema_real_eip !140
  store i1 %272, i1* %AF, align 1, !mcsema_real_eip !140
  store i1 %277, i1* %ZF, align 1, !mcsema_real_eip !140
  store i1 %278, i1* %SF, align 1, !mcsema_real_eip !140
  store i1 %282, i1* %OF, align 1, !mcsema_real_eip !140
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !140
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 128, i32 8, i1 false), !mcsema_real_eip !140
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !140
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !140
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !140
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !140
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !140
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !140
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !140
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !140
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !140
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !140
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !140
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !140
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !140
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !140
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !140
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !140
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !140
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !140
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !140
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !140
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !140
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !140
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !140
  %_ptr_to_int_873 = ptrtoint i64* %42 to i64
  %_ptr_bt_875 = bitcast i64* %42 to i8*
  %_offset_above_rbp_876 = sub i64 %_ptr_to_int_873, %_local_end_to_int_
  %_pot_address_in_parent_stack_877 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_876
  %_cond1_878 = icmp ugt i8* %_ptr_bt_875, %_local_stack_end_ptr_
  %_cond2_1_879 = icmp ugt i8* %_ptr_bt_875, %_parent_stack_end_ptr_
  %_cond2_2_880 = icmp ult i8* %_ptr_bt_875, %_parent_stack_start_ptr_
  %_cond2_881 = or i1 %_cond2_1_879, %_cond2_2_880
  %_cond4_882 = icmp ule i8* %_pot_address_in_parent_stack_877, %_parent_stack_end_ptr_
  %_cond1_n_cond2_883 = and i1 %_cond1_878, %_cond2_881
  %_cond1_n_cond2_cond3_884 = and i1 %_cond1_n_cond2_883, %_cond4_882
  br i1 %_cond1_n_cond2_cond3_884, label %320, label %321

; <label>:320:                                    ; preds = %318
  %_address_in_parent_stack_bt_886 = bitcast i8* %_pot_address_in_parent_stack_877 to i64*
  br label %321

; <label>:321:                                    ; preds = %318, %320
  %322 = phi i64* [ %42, %318 ], [ %_address_in_parent_stack_bt_886, %320 ]
  %_new_load_887 = load i64, i64* %322
  store i64 %_new_load_887, i64* %41, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !140
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !140
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !140
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !140
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !140
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !140
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !140
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !140
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !140
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !140
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !140
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !140
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !140
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !140
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !140
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !140
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !140
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !140
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !140
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !140
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !140
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !140
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !140
  ret void, !mcsema_real_eip !140
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 352}
!3 = !{i64 356}
!4 = !{i64 358}
!5 = !{i64 366}
!6 = !{i64 373}
!7 = !{i64 380}
!8 = !{i64 387}
!9 = !{i64 394}
!10 = !{i64 403}
!11 = !{i64 408}
!12 = !{i64 412}
!13 = !{i64 416}
!14 = !{i64 424}
!15 = !{i64 427}
!16 = !{i64 442}
!17 = !{i64 446}
!18 = !{i64 450}
!19 = !{i64 455}
!20 = !{i64 459}
!21 = !{i64 400}
!22 = !{i64 466}
!23 = !{i64 473}
!24 = !{i64 482}
!25 = !{i64 487}
!26 = !{i64 491}
!27 = !{i64 495}
!28 = !{i64 498}
!29 = !{i64 506}
!30 = !{i64 509}
!31 = !{i64 519}
!32 = !{i64 523}
!33 = !{i64 526}
!34 = !{i64 530}
!35 = !{i64 546}
!36 = !{i64 553}
!37 = !{i64 557}
!38 = !{i64 564}
!39 = !{i64 571}
!40 = !{i64 578}
!41 = !{i64 581}
!42 = !{i64 584}
!43 = !{i64 588}
!44 = !{i64 593}
!45 = !{i64 597}
!46 = !{i64 602}
!47 = !{i64 607}
!48 = !{i64 612}
!49 = !{i64 619}
!50 = !{i64 620}
!51 = !{i64 622}
!52 = !{i64 623}
!53 = !{i64 0}
!54 = !{i64 4}
!55 = !{i64 5}
!56 = !{i64 9}
!57 = !{i64 13}
!58 = !{i64 17}
!59 = !{i64 20}
!60 = !{i64 23}
!61 = !{i64 27}
!62 = !{i64 31}
!63 = !{i64 35}
!64 = !{i64 39}
!65 = !{i64 43}
!66 = !{i64 46}
!67 = !{i64 50}
!68 = !{i64 54}
!69 = !{i64 58}
!70 = !{i64 65}
!71 = !{i64 72}
!72 = !{i64 75}
!73 = !{i64 79}
!74 = !{i64 86}
!75 = !{i64 89}
!76 = !{i64 92}
!77 = !{i64 98}
!78 = !{i64 102}
!79 = !{i64 106}
!80 = !{i64 109}
!81 = !{i64 112}
!82 = !{i64 114}
!83 = !{i64 117}
!84 = !{i64 125}
!85 = !{i64 128}
!86 = !{i64 133}
!87 = !{i64 137}
!88 = !{i64 139}
!89 = !{i64 144}
!90 = !{i64 147}
!91 = !{i64 154}
!92 = !{i64 157}
!93 = !{i64 160}
!94 = !{i64 166}
!95 = !{i64 170}
!96 = !{i64 174}
!97 = !{i64 177}
!98 = !{i64 180}
!99 = !{i64 182}
!100 = !{i64 185}
!101 = !{i64 193}
!102 = !{i64 196}
!103 = !{i64 201}
!104 = !{i64 204}
!105 = !{i64 209}
!106 = !{i64 212}
!107 = !{i64 219}
!108 = !{i64 222}
!109 = !{i64 225}
!110 = !{i64 231}
!111 = !{i64 235}
!112 = !{i64 239}
!113 = !{i64 242}
!114 = !{i64 245}
!115 = !{i64 247}
!116 = !{i64 250}
!117 = !{i64 258}
!118 = !{i64 261}
!119 = !{i64 266}
!120 = !{i64 270}
!121 = !{i64 272}
!122 = !{i64 275}
!123 = !{i64 277}
!124 = !{i64 280}
!125 = !{i64 287}
!126 = !{i64 290}
!127 = !{i64 293}
!128 = !{i64 299}
!129 = !{i64 303}
!130 = !{i64 307}
!131 = !{i64 310}
!132 = !{i64 313}
!133 = !{i64 315}
!134 = !{i64 318}
!135 = !{i64 326}
!136 = !{i64 329}
!137 = !{i64 334}
!138 = !{i64 337}
!139 = !{i64 338}
!140 = !{i64 339}
