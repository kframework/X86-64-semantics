; ModuleID = 'Output/test_13.clang.trans.bc'
source_filename = "Output/test_13.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
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
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -40
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -8
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  store i64 %5, i64* %_allin_new_bt_12, !mcsema_real_eip !3
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -12
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %69 = trunc i64 %4 to i32, !mcsema_real_eip !4
  %70 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %69, i32* %70, !mcsema_real_eip !4
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %71 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 0, i32* %71, !mcsema_real_eip !5
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %72 = bitcast i64* %_allin_new_bt_21 to i32*
  %73 = load i32, i32* %72, !mcsema_real_eip !6
  %74 = sext i32 %73 to i64, !mcsema_real_eip !6
  %75 = shl nsw i64 %74, 3, !mcsema_real_eip !7
  %76 = tail call x86_64_sysvcc i64 @malloc(i64 %75), !mcsema_real_eip !8
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 %76, i64* %_allin_new_bt_24, !mcsema_real_eip !9
  br label %block_0x27, !mcsema_real_eip !10

block_0x27:                                       ; preds = %block_0x69, %entry
  %RBX_val.0 = phi i64 [ %1, %entry ], [ %RBX_val.1, %block_0x69 ]
  %RCX_val.0 = phi i64 [ %2, %entry ], [ %RCX_val.1, %block_0x69 ]
  %RDX_val.0 = phi i64 [ %3, %entry ], [ %RDX_val.1, %block_0x69 ]
  %RSI_val.0 = phi i64 [ %4, %entry ], [ %RSI_val.1, %block_0x69 ]
  %RDI_val.0 = phi i64 [ %75, %entry ], [ %RDI_val.1, %block_0x69 ]
  %R8_val.0 = phi i64 [ %6, %entry ], [ %R8_val.1, %block_0x69 ]
  %R9_val.0 = phi i64 [ %7, %entry ], [ %R9_val.1, %block_0x69 ]
  %R10_val.0 = phi i64 [ %8, %entry ], [ %R10_val.1, %block_0x69 ]
  %R11_val.0 = phi i64 [ %9, %entry ], [ %R11_val.1, %block_0x69 ]
  %R12_val.0 = phi i64 [ %10, %entry ], [ %R12_val.1, %block_0x69 ]
  %R13_val.0 = phi i64 [ %11, %entry ], [ %R13_val.1, %block_0x69 ]
  %R14_val.0 = phi i64 [ %12, %entry ], [ %R14_val.1, %block_0x69 ]
  %RIP_val.0 = phi i64 [ %14, %entry ], [ %RIP_val.1, %block_0x69 ]
  %DF_val.0 = phi i1 [ %15, %entry ], [ %DF_val.1, %block_0x69 ]
  %FPU_B_val.0 = phi i1 [ %19, %entry ], [ %FPU_B_val.1, %block_0x69 ]
  %FPU_C3_val.0 = phi i1 [ %20, %entry ], [ %FPU_C3_val.1, %block_0x69 ]
  %FPU_TOP_val.0 = phi i3 [ %21, %entry ], [ %FPU_TOP_val.1, %block_0x69 ]
  %FPU_C2_val.0 = phi i1 [ %22, %entry ], [ %FPU_C2_val.1, %block_0x69 ]
  %FPU_C1_val.0 = phi i1 [ %23, %entry ], [ %FPU_C1_val.1, %block_0x69 ]
  %FPU_C0_val.0 = phi i1 [ %24, %entry ], [ %FPU_C0_val.1, %block_0x69 ]
  %FPU_ES_val.0 = phi i1 [ %25, %entry ], [ %FPU_ES_val.1, %block_0x69 ]
  %FPU_SF_val.0 = phi i1 [ %26, %entry ], [ %FPU_SF_val.1, %block_0x69 ]
  %FPU_PE_val.0 = phi i1 [ %27, %entry ], [ %FPU_PE_val.1, %block_0x69 ]
  %FPU_UE_val.0 = phi i1 [ %28, %entry ], [ %FPU_UE_val.1, %block_0x69 ]
  %FPU_OE_val.0 = phi i1 [ %29, %entry ], [ %FPU_OE_val.1, %block_0x69 ]
  %FPU_ZE_val.0 = phi i1 [ %30, %entry ], [ %FPU_ZE_val.1, %block_0x69 ]
  %FPU_DE_val.0 = phi i1 [ %31, %entry ], [ %FPU_DE_val.1, %block_0x69 ]
  %FPU_IE_val.0 = phi i1 [ %32, %entry ], [ %FPU_IE_val.1, %block_0x69 ]
  %FPU_X_val.0 = phi i1 [ %33, %entry ], [ %FPU_X_val.1, %block_0x69 ]
  %FPU_RC_val.0 = phi i2 [ %34, %entry ], [ %FPU_RC_val.1, %block_0x69 ]
  %FPU_PC_val.0 = phi i2 [ %35, %entry ], [ %FPU_PC_val.1, %block_0x69 ]
  %FPU_PM_val.0 = phi i1 [ %36, %entry ], [ %FPU_PM_val.1, %block_0x69 ]
  %FPU_UM_val.0 = phi i1 [ %37, %entry ], [ %FPU_UM_val.1, %block_0x69 ]
  %FPU_OM_val.0 = phi i1 [ %38, %entry ], [ %FPU_OM_val.1, %block_0x69 ]
  %FPU_ZM_val.0 = phi i1 [ %39, %entry ], [ %FPU_ZM_val.1, %block_0x69 ]
  %FPU_DM_val.0 = phi i1 [ %40, %entry ], [ %FPU_DM_val.1, %block_0x69 ]
  %FPU_IM_val.0 = phi i1 [ %41, %entry ], [ %FPU_IM_val.1, %block_0x69 ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %46, %entry ], [ %FPU_LASTIP_SEG_val.1, %block_0x69 ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %47, %entry ], [ %FPU_LASTIP_OFF_val.1, %block_0x69 ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %48, %entry ], [ %FPU_LASTDATA_SEG_val.1, %block_0x69 ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %49, %entry ], [ %FPU_LASTDATA_OFF_val.1, %block_0x69 ]
  %FPU_FOPCODE_val.0 = phi i11 [ %50, %entry ], [ %FPU_FOPCODE_val.1, %block_0x69 ]
  %XMM0_val.0 = phi i128 [ %51, %entry ], [ %XMM0_val.1, %block_0x69 ]
  %XMM1_val.0 = phi i128 [ %52, %entry ], [ %XMM1_val.1, %block_0x69 ]
  %XMM2_val.0 = phi i128 [ %53, %entry ], [ %XMM2_val.1, %block_0x69 ]
  %XMM3_val.0 = phi i128 [ %54, %entry ], [ %XMM3_val.1, %block_0x69 ]
  %XMM4_val.0 = phi i128 [ %55, %entry ], [ %XMM4_val.1, %block_0x69 ]
  %XMM5_val.0 = phi i128 [ %56, %entry ], [ %XMM5_val.1, %block_0x69 ]
  %XMM6_val.0 = phi i128 [ %57, %entry ], [ %XMM6_val.1, %block_0x69 ]
  %XMM7_val.0 = phi i128 [ %58, %entry ], [ %XMM7_val.1, %block_0x69 ]
  %XMM8_val.0 = phi i128 [ %59, %entry ], [ %XMM8_val.1, %block_0x69 ]
  %XMM9_val.0 = phi i128 [ %60, %entry ], [ %XMM9_val.1, %block_0x69 ]
  %XMM10_val.0 = phi i128 [ %61, %entry ], [ %XMM10_val.1, %block_0x69 ]
  %XMM11_val.0 = phi i128 [ %62, %entry ], [ %XMM11_val.1, %block_0x69 ]
  %XMM12_val.0 = phi i128 [ %63, %entry ], [ %XMM12_val.1, %block_0x69 ]
  %XMM13_val.0 = phi i128 [ %64, %entry ], [ %XMM13_val.1, %block_0x69 ]
  %XMM14_val.0 = phi i128 [ %65, %entry ], [ %XMM14_val.1, %block_0x69 ]
  %XMM15_val.0 = phi i128 [ %66, %entry ], [ %XMM15_val.1, %block_0x69 ]
  %STACK_BASE_val.0 = phi i64 [ %67, %entry ], [ %STACK_BASE_val.1, %block_0x69 ]
  %STACK_LIMIT_val.0 = phi i64 [ %68, %entry ], [ %STACK_LIMIT_val.1, %block_0x69 ]
  %R15_val.0 = phi i64 [ %13, %entry ], [ %R15_val.1, %block_0x69 ]
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %77 = bitcast i64* %_allin_new_bt_27 to i32*
  %78 = load i32, i32* %77, !mcsema_real_eip !10
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -12
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %79 = bitcast i64* %_allin_new_bt_30 to i32*
  %80 = load i32, i32* %79, !mcsema_real_eip !11
  %81 = sub i32 %78, %80, !mcsema_real_eip !11
  %82 = xor i32 %81, %78, !mcsema_real_eip !11
  %83 = xor i32 %82, %80, !mcsema_real_eip !11
  %84 = and i32 %83, 16, !mcsema_real_eip !11
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !11
  %86 = trunc i32 %81 to i8, !mcsema_real_eip !11
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !11
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  %90 = icmp eq i32 %78, %80
  %91 = icmp slt i32 %81, 0
  %92 = icmp ult i32 %78, %80, !mcsema_real_eip !11
  %93 = xor i32 %80, %78, !mcsema_real_eip !11
  %94 = and i32 %82, %93, !mcsema_real_eip !11
  %95 = icmp slt i32 %94, 0
  %tmp = xor i1 %91, %95
  br i1 %tmp, label %block_0x33, label %block_0x79, !mcsema_real_eip !12

block_0x33:                                       ; preds = %block_0x27
  %96 = sext i32 %78 to i64, !mcsema_real_eip !13
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %97 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !14
  %98 = shl nsw i64 %96, 3
  %99 = add i64 %97, %98, !mcsema_real_eip !15
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !15
  %101 = load i64, i64* %100, !mcsema_real_eip !15
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -32
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 %101, i64* %_allin_new_bt_39, !mcsema_real_eip !16
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -32
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %102 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !17
  %_load_rsp_ptr_43 = load i8*, i8** %_RSP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rsp_ptr_43, i64 -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_45, !mcsema_real_eip !18
  store volatile i8* %_new_gep_44, i8** %_RSP_ptr_
  store i64 %101, i64* %RAX, !mcsema_real_eip !18
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !18
  store i64 %97, i64* %RCX, !mcsema_real_eip !18
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !18
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !18
  store i64 %102, i64* %RDI, !mcsema_real_eip !18
  %_new_ptr2int_47 = ptrtoint i8* %_new_gep_44 to i64
  store volatile i64 %_new_ptr2int_47, i64* %RSP
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_49 = ptrtoint i8* %_load_rbp_ptr_48 to i64
  store volatile i64 %_new_ptr2int_49, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !18
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !18
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !18
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !18
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !18
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !18
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !18
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !18
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !18
  store i1 %92, i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %89, i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %85, i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %90, i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %91, i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %95, i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %103 = load i64, i64* %44, align 4
  store i64 %103, i64* %43, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !18
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  call void @sub_90.2(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_76)
  %104 = load i64, i64* %RAX, !mcsema_real_eip !18
  %105 = load i64, i64* %RBX, !mcsema_real_eip !18
  %106 = load i64, i64* %RCX, !mcsema_real_eip !18
  %107 = load i64, i64* %RDX, !mcsema_real_eip !18
  %108 = load i64, i64* %RSI, !mcsema_real_eip !18
  %109 = load i64, i64* %RDI, !mcsema_real_eip !18
  %110 = load i64, i64* %R8, !mcsema_real_eip !18
  %111 = load i64, i64* %R9, !mcsema_real_eip !18
  %112 = load i64, i64* %R10, !mcsema_real_eip !18
  %113 = load i64, i64* %R11, !mcsema_real_eip !18
  %114 = load i64, i64* %R12, !mcsema_real_eip !18
  %115 = load i64, i64* %R13, !mcsema_real_eip !18
  %116 = load i64, i64* %R14, !mcsema_real_eip !18
  %117 = load i64, i64* %R15, !mcsema_real_eip !18
  %118 = load i64, i64* %RIP, !mcsema_real_eip !18
  %119 = load i1, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %120 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %121 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %122 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %123 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %124 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %125 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %126 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %127 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %128 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %129 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %130 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %131 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %132 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %133 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %134 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %135 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %136 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %137 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %138 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %139 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %140 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %141 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %142 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %143 = load i64, i64* %43, align 4
  store i64 %143, i64* %44, align 4
  %144 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %145 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  %146 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %147 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  %148 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  %149 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !18
  %150 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !18
  %151 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !18
  %152 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !18
  %153 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !18
  %154 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !18
  %155 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !18
  %156 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !18
  %157 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !18
  %158 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !18
  %159 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !18
  %160 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !18
  %161 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !18
  %162 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !18
  %163 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !18
  %164 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !18
  %165 = load i64, i64* %STACK_BASE, !mcsema_real_eip !18
  %166 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !18
  %167 = trunc i64 %104 to i32, !mcsema_real_eip !19
  %168 = trunc i64 %104 to i8
  %169 = tail call i8 @llvm.ctpop.i8(i8 %168), !mcsema_real_eip !19
  %170 = and i8 %169, 1
  %171 = icmp eq i8 %170, 0
  %172 = icmp eq i32 %167, 0, !mcsema_real_eip !19
  %173 = icmp slt i32 %167, 0
  br i1 %172, label %block_0x57, label %block_0x69, !mcsema_real_eip !20

block_0x79:                                       ; preds = %block_0x27
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %174 = load i64, i64* %_allin_new_bt_51, !mcsema_real_eip !21
  %175 = add i64 %174, 1, !mcsema_real_eip !22
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !22
  %177 = bitcast i64* %176 to i8*
  store i8 2, i8* %177, !mcsema_real_eip !22
  %_load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_53 = ptrtoint i8* %_load_rsp_ptr_52 to i64
  %uadd352 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_53, i64 32)
  %178 = extractvalue { i64, i1 } %uadd352, 0
  %179 = xor i64 %178, %_new_ptr2int_53, !mcsema_real_eip !23
  %180 = and i64 %179, 16, !mcsema_real_eip !23
  %181 = icmp ne i64 %180, 0, !mcsema_real_eip !23
  %182 = icmp slt i64 %178, 0
  %183 = icmp eq i64 %178, 0, !mcsema_real_eip !23
  %184 = xor i64 %_new_ptr2int_53, -9223372036854775808, !mcsema_real_eip !23
  %185 = and i64 %179, %184, !mcsema_real_eip !23
  %186 = icmp slt i64 %185, 0
  %187 = trunc i64 %178 to i8, !mcsema_real_eip !23
  %188 = tail call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !23
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  %191 = extractvalue { i64, i1 } %uadd352, 1
  %_new_int2ptr_ = inttoptr i64 %178 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %192 = inttoptr i64 %178 to i64*, !mcsema_real_eip !24
  %193 = load i64, i64* %192, !mcsema_real_eip !24
  %_new_int2ptr_54 = inttoptr i64 %193 to i8*
  store volatile i8* %_new_int2ptr_54, i8** %_RBP_ptr_
  %194 = add i64 %178, 16, !mcsema_real_eip !25
  %_new_int2ptr_55 = inttoptr i64 %194 to i8*
  store volatile i8* %_new_int2ptr_55, i8** %_RSP_ptr_
  store i64 %174, i64* %RAX, !mcsema_real_eip !25
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !25
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !25
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !25
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !25
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !25
  store volatile i64 %194, i64* %RSP
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_59 = ptrtoint i8* %_load_rbp_ptr_58 to i64
  store volatile i64 %_new_ptr2int_59, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !25
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !25
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !25
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !25
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !25
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !25
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !25
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !25
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !25
  store i1 %191, i1* %CF, align 1, !mcsema_real_eip !25
  store i1 %190, i1* %PF, align 1, !mcsema_real_eip !25
  store i1 %181, i1* %AF, align 1, !mcsema_real_eip !25
  store i1 %183, i1* %ZF, align 1, !mcsema_real_eip !25
  store i1 %182, i1* %SF, align 1, !mcsema_real_eip !25
  store i1 %186, i1* %OF, align 1, !mcsema_real_eip !25
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !25
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !25
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !25
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %195 = load i64, i64* %44, align 4
  store i64 %195, i64* %43, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !25
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !25
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !25
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !25
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !25
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !25
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !25
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !25
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !25
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !25
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !25
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !25
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !25
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !25
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !25
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !25
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !25
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !25
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !25
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !25
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !25
  ret void, !mcsema_real_eip !25

block_0x57:                                       ; preds = %block_0x33
  %_load_rbp_ptr_60 = load i8*, i8** %_RBP_ptr_
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -32
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %196 = load i64, i64* %_allin_new_bt_62, !mcsema_real_eip !26
  %_load_rsp_ptr_63 = load i8*, i8** %_RSP_ptr_
  %_new_gep_64 = getelementptr i8, i8* %_load_rsp_ptr_63, i64 -8
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_65, !mcsema_real_eip !27
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_
  store i64 %104, i64* %RAX, !mcsema_real_eip !27
  store i64 %105, i64* %RBX, !mcsema_real_eip !27
  store i64 %106, i64* %RCX, !mcsema_real_eip !27
  store i64 %107, i64* %RDX, !mcsema_real_eip !27
  store i64 %196, i64* %RSI, !mcsema_real_eip !27
  store i64 %196, i64* %RDI, !mcsema_real_eip !27
  %_new_ptr2int_67 = ptrtoint i8* %_new_gep_64 to i64
  store volatile i64 %_new_ptr2int_67, i64* %RSP
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_69 = ptrtoint i8* %_load_rbp_ptr_68 to i64
  store volatile i64 %_new_ptr2int_69, i64* %RBP
  store i64 %110, i64* %R8, !mcsema_real_eip !27
  store i64 %111, i64* %R9, !mcsema_real_eip !27
  store i64 %112, i64* %R10, !mcsema_real_eip !27
  store i64 %113, i64* %R11, !mcsema_real_eip !27
  store i64 %114, i64* %R12, !mcsema_real_eip !27
  store i64 %115, i64* %R13, !mcsema_real_eip !27
  store i64 %116, i64* %R14, !mcsema_real_eip !27
  store i64 %117, i64* %R15, !mcsema_real_eip !27
  store i64 %118, i64* %RIP, !mcsema_real_eip !27
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !27
  store i1 %171, i1* %PF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !27
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !27
  store i1 %173, i1* %SF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !27
  store i1 %119, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  store i1 %120, i1* %FPU_B, align 1, !mcsema_real_eip !27
  store i1 %121, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  store i3 %122, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  store i1 %123, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  store i1 %124, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  store i1 %125, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  store i1 %126, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  store i1 %127, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  store i1 %128, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  store i1 %129, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  store i1 %130, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  store i1 %131, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  store i1 %132, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  store i1 %133, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  store i1 %134, i1* %FPU_X, align 1, !mcsema_real_eip !27
  store i2 %135, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  store i2 %136, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  store i1 %137, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %197 = load i64, i64* %44, align 4
  store i64 %197, i64* %43, align 4
  store i16 %144, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  store i64 %145, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  store i16 %146, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  store i64 %147, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  store i11 %148, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !27
  store i128 %149, i128* %XMM0, align 1, !mcsema_real_eip !27
  store i128 %150, i128* %XMM1, align 1, !mcsema_real_eip !27
  store i128 %151, i128* %XMM2, align 1, !mcsema_real_eip !27
  store i128 %152, i128* %XMM3, align 1, !mcsema_real_eip !27
  store i128 %153, i128* %XMM4, align 1, !mcsema_real_eip !27
  store i128 %154, i128* %XMM5, align 1, !mcsema_real_eip !27
  store i128 %155, i128* %XMM6, align 1, !mcsema_real_eip !27
  store i128 %156, i128* %XMM7, align 1, !mcsema_real_eip !27
  store i128 %157, i128* %XMM8, align 1, !mcsema_real_eip !27
  store i128 %158, i128* %XMM9, align 1, !mcsema_real_eip !27
  store i128 %159, i128* %XMM10, align 1, !mcsema_real_eip !27
  store i128 %160, i128* %XMM11, align 1, !mcsema_real_eip !27
  store i128 %161, i128* %XMM12, align 1, !mcsema_real_eip !27
  store i128 %162, i128* %XMM13, align 1, !mcsema_real_eip !27
  store i128 %163, i128* %XMM14, align 1, !mcsema_real_eip !27
  store i128 %164, i128* %XMM15, align 1, !mcsema_real_eip !27
  store i64 %165, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  store i64 %166, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  call void @sub_110.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_77)
  %198 = load i64, i64* %RBX, !mcsema_real_eip !27
  %199 = load i64, i64* %RCX, !mcsema_real_eip !27
  %200 = load i64, i64* %RDX, !mcsema_real_eip !27
  %201 = load i64, i64* %RSI, !mcsema_real_eip !27
  %202 = load i64, i64* %RDI, !mcsema_real_eip !27
  %203 = load i64, i64* %R8, !mcsema_real_eip !27
  %204 = load i64, i64* %R9, !mcsema_real_eip !27
  %205 = load i64, i64* %R10, !mcsema_real_eip !27
  %206 = load i64, i64* %R11, !mcsema_real_eip !27
  %207 = load i64, i64* %R12, !mcsema_real_eip !27
  %208 = load i64, i64* %R13, !mcsema_real_eip !27
  %209 = load i64, i64* %R14, !mcsema_real_eip !27
  %210 = load i64, i64* %R15, !mcsema_real_eip !27
  %211 = load i64, i64* %RIP, !mcsema_real_eip !27
  %212 = load i1, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !27
  %213 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %214 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %215 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %216 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %217 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %218 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %219 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %220 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %221 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %222 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %223 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %224 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %225 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %226 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %227 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %228 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %229 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %230 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %231 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %232 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %233 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %234 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %235 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %236 = load i64, i64* %43, align 4
  store i64 %236, i64* %44, align 4
  %237 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %238 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !27
  %239 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %240 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !27
  %241 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !27
  %242 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !27
  %243 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !27
  %244 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !27
  %245 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !27
  %246 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !27
  %247 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !27
  %248 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !27
  %249 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !27
  %250 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !27
  %251 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !27
  %252 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !27
  %253 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !27
  %254 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !27
  %255 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !27
  %256 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !27
  %257 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !27
  %258 = load i64, i64* %STACK_BASE, !mcsema_real_eip !27
  %259 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !27
  br label %block_0x69, !mcsema_real_eip !28

block_0x69:                                       ; preds = %block_0x57, %block_0x33
  %RBX_val.1 = phi i64 [ %198, %block_0x57 ], [ %105, %block_0x33 ]
  %RCX_val.1 = phi i64 [ %199, %block_0x57 ], [ %106, %block_0x33 ]
  %RDX_val.1 = phi i64 [ %200, %block_0x57 ], [ %107, %block_0x33 ]
  %RSI_val.1 = phi i64 [ %201, %block_0x57 ], [ %108, %block_0x33 ]
  %RDI_val.1 = phi i64 [ %202, %block_0x57 ], [ %109, %block_0x33 ]
  %R8_val.1 = phi i64 [ %203, %block_0x57 ], [ %110, %block_0x33 ]
  %R9_val.1 = phi i64 [ %204, %block_0x57 ], [ %111, %block_0x33 ]
  %R10_val.1 = phi i64 [ %205, %block_0x57 ], [ %112, %block_0x33 ]
  %R11_val.1 = phi i64 [ %206, %block_0x57 ], [ %113, %block_0x33 ]
  %R12_val.1 = phi i64 [ %207, %block_0x57 ], [ %114, %block_0x33 ]
  %R13_val.1 = phi i64 [ %208, %block_0x57 ], [ %115, %block_0x33 ]
  %R14_val.1 = phi i64 [ %209, %block_0x57 ], [ %116, %block_0x33 ]
  %RIP_val.1 = phi i64 [ %211, %block_0x57 ], [ %118, %block_0x33 ]
  %DF_val.1 = phi i1 [ %212, %block_0x57 ], [ %119, %block_0x33 ]
  %FPU_B_val.1 = phi i1 [ %213, %block_0x57 ], [ %120, %block_0x33 ]
  %FPU_C3_val.1 = phi i1 [ %214, %block_0x57 ], [ %121, %block_0x33 ]
  %FPU_TOP_val.1 = phi i3 [ %215, %block_0x57 ], [ %122, %block_0x33 ]
  %FPU_C2_val.1 = phi i1 [ %216, %block_0x57 ], [ %123, %block_0x33 ]
  %FPU_C1_val.1 = phi i1 [ %217, %block_0x57 ], [ %124, %block_0x33 ]
  %FPU_C0_val.1 = phi i1 [ %218, %block_0x57 ], [ %125, %block_0x33 ]
  %FPU_ES_val.1 = phi i1 [ %219, %block_0x57 ], [ %126, %block_0x33 ]
  %FPU_SF_val.1 = phi i1 [ %220, %block_0x57 ], [ %127, %block_0x33 ]
  %FPU_PE_val.1 = phi i1 [ %221, %block_0x57 ], [ %128, %block_0x33 ]
  %FPU_UE_val.1 = phi i1 [ %222, %block_0x57 ], [ %129, %block_0x33 ]
  %FPU_OE_val.1 = phi i1 [ %223, %block_0x57 ], [ %130, %block_0x33 ]
  %FPU_ZE_val.1 = phi i1 [ %224, %block_0x57 ], [ %131, %block_0x33 ]
  %FPU_DE_val.1 = phi i1 [ %225, %block_0x57 ], [ %132, %block_0x33 ]
  %FPU_IE_val.1 = phi i1 [ %226, %block_0x57 ], [ %133, %block_0x33 ]
  %FPU_X_val.1 = phi i1 [ %227, %block_0x57 ], [ %134, %block_0x33 ]
  %FPU_RC_val.1 = phi i2 [ %228, %block_0x57 ], [ %135, %block_0x33 ]
  %FPU_PC_val.1 = phi i2 [ %229, %block_0x57 ], [ %136, %block_0x33 ]
  %FPU_PM_val.1 = phi i1 [ %230, %block_0x57 ], [ %137, %block_0x33 ]
  %FPU_UM_val.1 = phi i1 [ %231, %block_0x57 ], [ %138, %block_0x33 ]
  %FPU_OM_val.1 = phi i1 [ %232, %block_0x57 ], [ %139, %block_0x33 ]
  %FPU_ZM_val.1 = phi i1 [ %233, %block_0x57 ], [ %140, %block_0x33 ]
  %FPU_DM_val.1 = phi i1 [ %234, %block_0x57 ], [ %141, %block_0x33 ]
  %FPU_IM_val.1 = phi i1 [ %235, %block_0x57 ], [ %142, %block_0x33 ]
  %FPU_LASTIP_SEG_val.1 = phi i16 [ %237, %block_0x57 ], [ %144, %block_0x33 ]
  %FPU_LASTIP_OFF_val.1 = phi i64 [ %238, %block_0x57 ], [ %145, %block_0x33 ]
  %FPU_LASTDATA_SEG_val.1 = phi i16 [ %239, %block_0x57 ], [ %146, %block_0x33 ]
  %FPU_LASTDATA_OFF_val.1 = phi i64 [ %240, %block_0x57 ], [ %147, %block_0x33 ]
  %FPU_FOPCODE_val.1 = phi i11 [ %241, %block_0x57 ], [ %148, %block_0x33 ]
  %XMM0_val.1 = phi i128 [ %242, %block_0x57 ], [ %149, %block_0x33 ]
  %XMM1_val.1 = phi i128 [ %243, %block_0x57 ], [ %150, %block_0x33 ]
  %XMM2_val.1 = phi i128 [ %244, %block_0x57 ], [ %151, %block_0x33 ]
  %XMM3_val.1 = phi i128 [ %245, %block_0x57 ], [ %152, %block_0x33 ]
  %XMM4_val.1 = phi i128 [ %246, %block_0x57 ], [ %153, %block_0x33 ]
  %XMM5_val.1 = phi i128 [ %247, %block_0x57 ], [ %154, %block_0x33 ]
  %XMM6_val.1 = phi i128 [ %248, %block_0x57 ], [ %155, %block_0x33 ]
  %XMM7_val.1 = phi i128 [ %249, %block_0x57 ], [ %156, %block_0x33 ]
  %XMM8_val.1 = phi i128 [ %250, %block_0x57 ], [ %157, %block_0x33 ]
  %XMM9_val.1 = phi i128 [ %251, %block_0x57 ], [ %158, %block_0x33 ]
  %XMM10_val.1 = phi i128 [ %252, %block_0x57 ], [ %159, %block_0x33 ]
  %XMM11_val.1 = phi i128 [ %253, %block_0x57 ], [ %160, %block_0x33 ]
  %XMM12_val.1 = phi i128 [ %254, %block_0x57 ], [ %161, %block_0x33 ]
  %XMM13_val.1 = phi i128 [ %255, %block_0x57 ], [ %162, %block_0x33 ]
  %XMM14_val.1 = phi i128 [ %256, %block_0x57 ], [ %163, %block_0x33 ]
  %XMM15_val.1 = phi i128 [ %257, %block_0x57 ], [ %164, %block_0x33 ]
  %STACK_BASE_val.1 = phi i64 [ %258, %block_0x57 ], [ %165, %block_0x33 ]
  %STACK_LIMIT_val.1 = phi i64 [ %259, %block_0x57 ], [ %166, %block_0x33 ]
  %R15_val.1 = phi i64 [ %210, %block_0x57 ], [ %117, %block_0x33 ]
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -16
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %260 = bitcast i64* %_allin_new_bt_72 to i32*
  %261 = load i32, i32* %260, !mcsema_real_eip !28
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 1)
  %262 = extractvalue { i32, i1 } %uadd, 0
  store i32 %262, i32* %260, !mcsema_real_eip !29
  br label %block_0x27, !mcsema_real_eip !30
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_110(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !31
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !31
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !31
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !31
  %1 = load i64, i64* %RBX, !mcsema_real_eip !31
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !31
  %2 = load i64, i64* %RCX, !mcsema_real_eip !31
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !31
  %3 = load i64, i64* %RDX, !mcsema_real_eip !31
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !31
  %4 = load i64, i64* %RSI, !mcsema_real_eip !31
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !31
  %5 = load i64, i64* %RDI, !mcsema_real_eip !31
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !31
  %6 = load i64, i64* %RSP, !mcsema_real_eip !31
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !31
  %7 = load i64, i64* %RBP, !mcsema_real_eip !31
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !31
  %8 = load i64, i64* %R8, !mcsema_real_eip !31
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !31
  %9 = load i64, i64* %R9, !mcsema_real_eip !31
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !31
  %10 = load i64, i64* %R10, !mcsema_real_eip !31
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !31
  %11 = load i64, i64* %R11, !mcsema_real_eip !31
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !31
  %12 = load i64, i64* %R12, !mcsema_real_eip !31
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !31
  %13 = load i64, i64* %R13, !mcsema_real_eip !31
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !31
  %14 = load i64, i64* %R14, !mcsema_real_eip !31
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !31
  %15 = load i64, i64* %R15, !mcsema_real_eip !31
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !31
  %16 = load i64, i64* %RIP, !mcsema_real_eip !31
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !31
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !31
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !31
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !31
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !31
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !31
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !31
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !31
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !31
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !31
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !31
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !31
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !31
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !31
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !31
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !31
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !31
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !31
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !31
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !31
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !31
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !31
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !31
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !31
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !31
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !31
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !31
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !31
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !31
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !31
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !31
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !31
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !31
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !31
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !31
  %45 = bitcast i8* %44 to i64*
  %46 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %47 = load i64, i64* %45, align 4
  store i64 %47, i64* %46, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !31
  %48 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !31
  %49 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !31
  %50 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !31
  %51 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !31
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !31
  %52 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !31
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !31
  %53 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !31
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !31
  %54 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !31
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !31
  %55 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !31
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !31
  %56 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !31
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !31
  %57 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !31
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !31
  %58 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !31
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !31
  %59 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !31
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !31
  %60 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !31
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !31
  %61 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !31
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !31
  %62 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !31
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !31
  %63 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !31
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !31
  %64 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !31
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !31
  %65 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !31
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !31
  %66 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !31
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !31
  %67 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !31
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !31
  %68 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !31
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !31
  %69 = load i64, i64* %STACK_BASE, !mcsema_real_eip !31
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !31
  %70 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !31
  %71 = add i64 %6, -8
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !31
  store i64 %7, i64* %72, !mcsema_real_eip !31
  %73 = add i64 %6, -16, !mcsema_real_eip !32
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !32
  store i64 %5, i64* %74, !mcsema_real_eip !32
  %75 = add i64 %71, -16, !mcsema_real_eip !33
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !33
  store i64 %4, i64* %76, !mcsema_real_eip !33
  %77 = add i64 %71, -8, !mcsema_real_eip !34
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !34
  %79 = load i64, i64* %78, !mcsema_real_eip !34
  %80 = add i64 %71, -24, !mcsema_real_eip !35
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !35
  store i64 %79, i64* %81, !mcsema_real_eip !35
  %82 = load i64, i64* %76, !mcsema_real_eip !36
  %83 = add i64 %71, -32, !mcsema_real_eip !37
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !37
  store i64 %82, i64* %84, !mcsema_real_eip !37
  %85 = load i64, i64* %81, !mcsema_real_eip !38
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !39
  %87 = bitcast i64* %86 to i8*
  %88 = load i8, i8* %87, !mcsema_real_eip !39
  %89 = add i64 %71, -33, !mcsema_real_eip !40
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !40
  %91 = bitcast i64* %90 to i8*
  store i8 %88, i8* %91, !mcsema_real_eip !40
  br label %block_0x135, !mcsema_real_eip !41

block_0x135:                                      ; preds = %block_0x168, %entry
  %RCX_val.0 = phi i64 [ %2, %entry ], [ %125, %block_0x168 ]
  %92 = load i8, i8* %91, !mcsema_real_eip !41
  %93 = sext i8 %92 to i32, !mcsema_real_eip !41
  %94 = zext i32 %93 to i64, !mcsema_real_eip !41
  %95 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !42
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  %98 = icmp eq i8 %92, 0
  %99 = icmp slt i8 %92, 0
  br i1 %98, label %block_0x192, label %block_0x144, !mcsema_real_eip !43

block_0x144:                                      ; preds = %block_0x135
  %100 = add nsw i32 %93, -47
  %101 = icmp eq i32 %100, 0, !mcsema_real_eip !44
  br i1 %101, label %block_0x153, label %block_0x15f, !mcsema_real_eip !45

block_0x192:                                      ; preds = %block_0x135
  %102 = load i64, i64* %72, !mcsema_real_eip !46
  %103 = add i64 %71, 16, !mcsema_real_eip !47
  store i64 %94, i64* %RAX, !mcsema_real_eip !47
  store i64 %1, i64* %RBX, !mcsema_real_eip !47
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !47
  store i64 %3, i64* %RDX, !mcsema_real_eip !47
  store i64 %85, i64* %RSI, !mcsema_real_eip !47
  store i64 %5, i64* %RDI, !mcsema_real_eip !47
  store i64 %103, i64* %RSP, !mcsema_real_eip !47
  store i64 %102, i64* %RBP, !mcsema_real_eip !47
  store i64 %8, i64* %R8, !mcsema_real_eip !47
  store i64 %9, i64* %R9, !mcsema_real_eip !47
  store i64 %10, i64* %R10, !mcsema_real_eip !47
  store i64 %11, i64* %R11, !mcsema_real_eip !47
  store i64 %12, i64* %R12, !mcsema_real_eip !47
  store i64 %13, i64* %R13, !mcsema_real_eip !47
  store i64 %14, i64* %R14, !mcsema_real_eip !47
  store i64 %15, i64* %R15, !mcsema_real_eip !47
  store i64 %16, i64* %RIP, !mcsema_real_eip !47
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %97, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %99, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %104 = load i64, i64* %46, align 4
  store i64 %104, i64* %45, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !47
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47

block_0x153:                                      ; preds = %block_0x144
  %105 = load i64, i64* %84, !mcsema_real_eip !48
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !49
  %107 = bitcast i64* %106 to i8*
  store i8 92, i8* %107, !mcsema_real_eip !49
  br label %block_0x168, !mcsema_real_eip !50

block_0x15f:                                      ; preds = %block_0x144
  %108 = zext i8 %92 to i64, !mcsema_real_eip !51
  %109 = and i64 %94, -256, !mcsema_real_eip !51
  %110 = or i64 %109, %108
  %111 = load i64, i64* %84, !mcsema_real_eip !52
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !53
  %113 = trunc i64 %110 to i8, !mcsema_real_eip !53
  %114 = bitcast i64* %112 to i8*
  store i8 %113, i8* %114, !mcsema_real_eip !53
  br label %block_0x168, !mcsema_real_eip !48

block_0x168:                                      ; preds = %block_0x15f, %block_0x153
  %RCX_val.1 = phi i64 [ %RCX_val.0, %block_0x153 ], [ %111, %block_0x15f ]
  %115 = load i64, i64* %81, !mcsema_real_eip !54
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %115, i64 1)
  %116 = extractvalue { i64, i1 } %uadd, 0
  store i64 %116, i64* %81, !mcsema_real_eip !55
  %117 = load i64, i64* %84, !mcsema_real_eip !56
  %uadd71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %117, i64 1)
  %118 = extractvalue { i64, i1 } %uadd71, 0
  store i64 %118, i64* %84, !mcsema_real_eip !57
  %119 = load i64, i64* %81, !mcsema_real_eip !58
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !59
  %121 = bitcast i64* %120 to i8*
  %122 = load i8, i8* %121, !mcsema_real_eip !59
  %123 = zext i8 %122 to i64, !mcsema_real_eip !59
  %124 = and i64 %RCX_val.1, -256, !mcsema_real_eip !59
  %125 = or i64 %124, %123
  store i8 %122, i8* %91, !mcsema_real_eip !60
  br label %block_0x135, !mcsema_real_eip !61
}

define internal x86_64_sysvcc void @sub_90(%struct.regs*) {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !62
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !62
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !62
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !62
  %1 = load i64, i64* %RBX, !mcsema_real_eip !62
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !62
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !62
  %2 = load i64, i64* %RDX, !mcsema_real_eip !62
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !62
  %3 = load i64, i64* %RSI, !mcsema_real_eip !62
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !62
  %4 = load i64, i64* %RDI, !mcsema_real_eip !62
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !62
  %5 = load i64, i64* %RSP, !mcsema_real_eip !62
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !62
  %6 = load i64, i64* %RBP, !mcsema_real_eip !62
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !62
  %7 = load i64, i64* %R8, !mcsema_real_eip !62
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !62
  %8 = load i64, i64* %R9, !mcsema_real_eip !62
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !62
  %9 = load i64, i64* %R10, !mcsema_real_eip !62
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !62
  %10 = load i64, i64* %R11, !mcsema_real_eip !62
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !62
  %11 = load i64, i64* %R12, !mcsema_real_eip !62
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !62
  %12 = load i64, i64* %R13, !mcsema_real_eip !62
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !62
  %13 = load i64, i64* %R14, !mcsema_real_eip !62
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !62
  %14 = load i64, i64* %R15, !mcsema_real_eip !62
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !62
  %15 = load i64, i64* %RIP, !mcsema_real_eip !62
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !62
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !62
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !62
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !62
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !62
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !62
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !62
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !62
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !62
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !62
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !62
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !62
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !62
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !62
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !62
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !62
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !62
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !62
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !62
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !62
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !62
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !62
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !62
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !62
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !62
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !62
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !62
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !62
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !62
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !62
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !62
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !62
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !62
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !62
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !62
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !62
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !62
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !62
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !62
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !62
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !62
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !62
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !62
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !62
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !62
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !62
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !62
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !62
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !62
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !62
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !62
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !62
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !62
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !62
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !62
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !62
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !62
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !62
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !62
  %44 = bitcast i8* %43 to i64*
  %45 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %46 = load i64, i64* %44, align 4
  store i64 %46, i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !62
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !62
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !62
  %48 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !62
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !62
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !62
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !62
  %50 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !62
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !62
  %51 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !62
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !62
  %52 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !62
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !62
  %53 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !62
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !62
  %54 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !62
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !62
  %55 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !62
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !62
  %56 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !62
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !62
  %57 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !62
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !62
  %58 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !62
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !62
  %59 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !62
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !62
  %60 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !62
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !62
  %61 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !62
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !62
  %62 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !62
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !62
  %63 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !62
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !62
  %64 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !62
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !62
  %65 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !62
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !62
  %66 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !62
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !62
  %67 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !62
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !62
  %68 = load i64, i64* %STACK_BASE, !mcsema_real_eip !62
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !62
  %69 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !62
  %70 = add i64 %5, -8
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !62
  store i64 %6, i64* %71, !mcsema_real_eip !62
  %72 = add i64 %5, -40
  %73 = add i64 %70, -8, !mcsema_real_eip !63
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !63
  store i64 %4, i64* %74, !mcsema_real_eip !63
  %75 = add i64 %70, -12, !mcsema_real_eip !64
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !64
  %77 = bitcast i64* %76 to i32*
  store i32 1, i32* %77, !mcsema_real_eip !64
  %78 = load i64, i64* %74, !mcsema_real_eip !65
  %79 = tail call x86_64_sysvcc i64 @strlen(i64 %78), !mcsema_real_eip !66
  %80 = and i64 %79, 4294967295
  %81 = add i64 %70, -16, !mcsema_real_eip !67
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !67
  %83 = trunc i64 %79 to i32, !mcsema_real_eip !67
  %84 = bitcast i64* %82 to i32*
  store i32 %83, i32* %84, !mcsema_real_eip !67
  %85 = add i32 %83, -1
  %86 = xor i32 %85, %83, !mcsema_real_eip !68
  %87 = icmp eq i32 %85, 0, !mcsema_real_eip !68
  %88 = icmp slt i32 %85, 0
  %89 = and i32 %86, %83, !mcsema_real_eip !68
  %90 = icmp slt i32 %89, 0
  %91 = xor i1 %88, %90
  %92 = or i1 %87, %91, !mcsema_real_eip !69
  br i1 %92, label %block_0xf9, label %block_0xbe, !mcsema_real_eip !69

block_0xbe:                                       ; preds = %entry
  %93 = load i64, i64* %74, !mcsema_real_eip !70
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !71
  %95 = bitcast i64* %94 to i8*
  %96 = load i8, i8* %95, !mcsema_real_eip !71
  %97 = zext i8 %96 to i64, !mcsema_real_eip !71
  %98 = and i64 %80, -256, !mcsema_real_eip !71
  %99 = or i64 %98, %97
  %100 = add i64 %70, -17, !mcsema_real_eip !72
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !72
  %102 = bitcast i64* %101 to i8*
  store i8 %96, i8* %102, !mcsema_real_eip !72
  %103 = load i32, i32* %84, !mcsema_real_eip !73
  %104 = add i32 %103, -1
  %105 = sext i32 %104 to i64, !mcsema_real_eip !74
  %106 = load i64, i64* %74, !mcsema_real_eip !75
  %107 = add i64 %106, %105, !mcsema_real_eip !76
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !76
  %109 = bitcast i64* %108 to i8*
  %110 = load i8, i8* %109, !mcsema_real_eip !76
  %111 = zext i8 %110 to i64, !mcsema_real_eip !76
  %112 = and i64 %99, -256, !mcsema_real_eip !76
  %113 = or i64 %112, %111
  %114 = add i64 %70, -18, !mcsema_real_eip !77
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !77
  %116 = bitcast i64* %115 to i8*
  store i8 %110, i8* %116, !mcsema_real_eip !77
  %117 = load i8, i8* %102, !mcsema_real_eip !78
  %118 = sext i8 %117 to i32, !mcsema_real_eip !78
  %119 = zext i32 %118 to i64, !mcsema_real_eip !78
  %120 = sext i8 %110 to i32, !mcsema_real_eip !79
  %121 = zext i32 %120 to i64, !mcsema_real_eip !79
  %122 = icmp eq i32 %118, %120
  br i1 %122, label %block_0xed, label %block_0xf9, !mcsema_real_eip !80

block_0xf9:                                       ; preds = %block_0xed, %block_0xbe, %entry
  %RDI_val.0 = phi i64 [ %78, %entry ], [ %121, %block_0xed ], [ %121, %block_0xbe ]
  %RSI_val.0 = phi i64 [ %3, %entry ], [ %106, %block_0xed ], [ %106, %block_0xbe ]
  %RDX_val.0 = phi i64 [ %2, %entry ], [ %119, %block_0xed ], [ %119, %block_0xbe ]
  %RCX_val.0 = phi i64 [ %80, %entry ], [ %113, %block_0xed ], [ %113, %block_0xbe ]
  %123 = load i32, i32* %77, !mcsema_real_eip !81
  %124 = zext i32 %123 to i64, !mcsema_real_eip !81
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %72, i64 32)
  %125 = extractvalue { i64, i1 } %uadd, 0
  %126 = xor i64 %125, %72, !mcsema_real_eip !82
  %127 = and i64 %126, 16, !mcsema_real_eip !82
  %128 = icmp ne i64 %127, 0, !mcsema_real_eip !82
  %129 = icmp slt i64 %125, 0
  %130 = icmp eq i64 %125, 0, !mcsema_real_eip !82
  %131 = xor i64 %72, -9223372036854775808, !mcsema_real_eip !82
  %132 = and i64 %126, %131, !mcsema_real_eip !82
  %133 = icmp slt i64 %132, 0
  %134 = trunc i64 %125 to i8, !mcsema_real_eip !82
  %135 = tail call i8 @llvm.ctpop.i8(i8 %134), !mcsema_real_eip !82
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  %138 = extractvalue { i64, i1 } %uadd, 1
  %139 = inttoptr i64 %125 to i64*, !mcsema_real_eip !83
  %140 = load i64, i64* %139, !mcsema_real_eip !83
  %141 = add i64 %125, 16, !mcsema_real_eip !84
  store i64 %124, i64* %RAX, !mcsema_real_eip !84
  store i64 %1, i64* %RBX, !mcsema_real_eip !84
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !84
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !84
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !84
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !84
  store i64 %141, i64* %RSP, !mcsema_real_eip !84
  store i64 %140, i64* %RBP, !mcsema_real_eip !84
  store i64 %7, i64* %R8, !mcsema_real_eip !84
  store i64 %8, i64* %R9, !mcsema_real_eip !84
  store i64 %9, i64* %R10, !mcsema_real_eip !84
  store i64 %10, i64* %R11, !mcsema_real_eip !84
  store i64 %11, i64* %R12, !mcsema_real_eip !84
  store i64 %12, i64* %R13, !mcsema_real_eip !84
  store i64 %13, i64* %R14, !mcsema_real_eip !84
  store i64 %14, i64* %R15, !mcsema_real_eip !84
  store i64 %15, i64* %RIP, !mcsema_real_eip !84
  store i1 %138, i1* %CF, align 1, !mcsema_real_eip !84
  store i1 %137, i1* %PF, align 1, !mcsema_real_eip !84
  store i1 %128, i1* %AF, align 1, !mcsema_real_eip !84
  store i1 %130, i1* %ZF, align 1, !mcsema_real_eip !84
  store i1 %129, i1* %SF, align 1, !mcsema_real_eip !84
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !84
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !84
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !84
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !84
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !84
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !84
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !84
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !84
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !84
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !84
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !84
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !84
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !84
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !84
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !84
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !84
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !84
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !84
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !84
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !84
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !84
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !84
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !84
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !84
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !84
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !84
  %142 = load i64, i64* %45, align 4
  store i64 %142, i64* %44, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !84
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !84
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !84
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !84
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !84
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !84
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !84
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !84
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !84
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !84
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !84
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !84
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !84
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !84
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !84
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !84
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !84
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !84
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !84
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !84
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !84
  store i64 %68, i64* %STACK_BASE, align 1, !mcsema_real_eip !84
  store i64 %69, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !84
  ret void, !mcsema_real_eip !84

block_0xed:                                       ; preds = %block_0xbe
  store i32 0, i32* %77, !mcsema_real_eip !85
  br label %block_0xf9
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_110.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 41
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 41
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !31
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !31
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !31
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !31
  %1 = load i64, i64* %RBX, !mcsema_real_eip !31
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !31
  %2 = load i64, i64* %RCX, !mcsema_real_eip !31
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !31
  %3 = load i64, i64* %RDX, !mcsema_real_eip !31
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !31
  %4 = load i64, i64* %RSI, !mcsema_real_eip !31
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !31
  %5 = load i64, i64* %RDI, !mcsema_real_eip !31
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !31
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !31
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !31
  %6 = load i64, i64* %R8, !mcsema_real_eip !31
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !31
  %7 = load i64, i64* %R9, !mcsema_real_eip !31
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !31
  %8 = load i64, i64* %R10, !mcsema_real_eip !31
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !31
  %9 = load i64, i64* %R11, !mcsema_real_eip !31
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !31
  %10 = load i64, i64* %R12, !mcsema_real_eip !31
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !31
  %11 = load i64, i64* %R13, !mcsema_real_eip !31
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !31
  %12 = load i64, i64* %R14, !mcsema_real_eip !31
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !31
  %13 = load i64, i64* %R15, !mcsema_real_eip !31
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !31
  %14 = load i64, i64* %RIP, !mcsema_real_eip !31
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !31
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !31
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !31
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !31
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !31
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !31
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !31
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !31
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !31
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !31
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !31
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !31
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !31
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !31
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !31
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !31
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !31
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !31
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !31
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !31
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !31
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !31
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !31
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !31
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !31
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !31
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !31
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !31
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !31
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !31
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !31
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !31
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !31
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !31
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !31
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !31
  %48 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !31
  %49 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !31
  %50 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !31
  %51 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !31
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !31
  %52 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !31
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !31
  %53 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !31
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !31
  %54 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !31
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !31
  %55 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !31
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !31
  %56 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !31
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !31
  %57 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !31
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !31
  %58 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !31
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !31
  %59 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !31
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !31
  %60 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !31
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !31
  %61 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !31
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !31
  %62 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !31
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !31
  %63 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !31
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !31
  %64 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !31
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !31
  %65 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !31
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !31
  %66 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !31
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !31
  %67 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !31
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !31
  %68 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !31
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !31
  %69 = load i64, i64* %STACK_BASE, !mcsema_real_eip !31
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !31
  %70 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !31
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  store i64 %5, i64* %_allin_new_bt_2, !mcsema_real_eip !32
  %_new_gep_4 = getelementptr i8, i8* %_new_gep_, i64 -16
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  store i64 %4, i64* %_allin_new_bt_5, !mcsema_real_eip !33
  %_new_gep_7 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %_ptr_to_int_61 = ptrtoint i64* %_allin_new_bt_8 to i64
  %_offset_above_rbp_64 = sub i64 %_ptr_to_int_61, %_local_end_to_int_
  %_pot_address_in_parent_stack_65 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_64
  %_cond1_66 = icmp ugt i8* %_new_gep_7, %_local_stack_end_ptr_
  %_cond2_1_67 = icmp ugt i8* %_new_gep_7, %_parent_stack_end_ptr_
  %_cond2_2_68 = icmp ult i8* %_new_gep_7, %_parent_stack_start_ptr_
  %_cond2_69 = or i1 %_cond2_1_67, %_cond2_2_68
  %_cond4_70 = icmp ule i8* %_pot_address_in_parent_stack_65, %_parent_stack_end_ptr_
  %_cond1_n_cond2_71 = and i1 %_cond1_66, %_cond2_69
  %_cond1_n_cond2_cond3_72 = and i1 %_cond1_n_cond2_71, %_cond4_70
  br i1 %_cond1_n_cond2_cond3_72, label %71, label %72

; <label>:71:                                     ; preds = %46
  %_address_in_parent_stack_bt_74 = bitcast i8* %_pot_address_in_parent_stack_65 to i64*
  br label %72

; <label>:72:                                     ; preds = %46, %71
  %73 = phi i64* [ %_allin_new_bt_8, %46 ], [ %_address_in_parent_stack_bt_74, %71 ]
  %_new_load_75 = load i64, i64* %73
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_, i64 -24
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  store i64 %_new_load_75, i64* %_allin_new_bt_10, !mcsema_real_eip !35
  %_ptr_to_int_76 = ptrtoint i64* %_allin_new_bt_5 to i64
  %_offset_above_rbp_79 = sub i64 %_ptr_to_int_76, %_local_end_to_int_
  %_pot_address_in_parent_stack_80 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_79
  %_cond1_81 = icmp ugt i8* %_new_gep_4, %_local_stack_end_ptr_
  %_cond2_1_82 = icmp ugt i8* %_new_gep_4, %_parent_stack_end_ptr_
  %_cond2_2_83 = icmp ult i8* %_new_gep_4, %_parent_stack_start_ptr_
  %_cond2_84 = or i1 %_cond2_1_82, %_cond2_2_83
  %_cond4_85 = icmp ule i8* %_pot_address_in_parent_stack_80, %_parent_stack_end_ptr_
  %_cond1_n_cond2_86 = and i1 %_cond1_81, %_cond2_84
  %_cond1_n_cond2_cond3_87 = and i1 %_cond1_n_cond2_86, %_cond4_85
  br i1 %_cond1_n_cond2_cond3_87, label %74, label %75

; <label>:74:                                     ; preds = %72
  %_address_in_parent_stack_bt_89 = bitcast i8* %_pot_address_in_parent_stack_80 to i64*
  br label %75

; <label>:75:                                     ; preds = %72, %74
  %76 = phi i64* [ %_allin_new_bt_5, %72 ], [ %_address_in_parent_stack_bt_89, %74 ]
  %_new_load_90 = load i64, i64* %76
  %_new_gep_14 = getelementptr i8, i8* %_new_gep_, i64 -32
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  store i64 %_new_load_90, i64* %_allin_new_bt_15, !mcsema_real_eip !37
  %_ptr_to_int_91 = ptrtoint i64* %_allin_new_bt_10 to i64
  %_offset_above_rbp_94 = sub i64 %_ptr_to_int_91, %_local_end_to_int_
  %_pot_address_in_parent_stack_95 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_94
  %_cond1_96 = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_97 = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_98 = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_99 = or i1 %_cond2_1_97, %_cond2_2_98
  %_cond4_100 = icmp ule i8* %_pot_address_in_parent_stack_95, %_parent_stack_end_ptr_
  %_cond1_n_cond2_101 = and i1 %_cond1_96, %_cond2_99
  %_cond1_n_cond2_cond3_102 = and i1 %_cond1_n_cond2_101, %_cond4_100
  br i1 %_cond1_n_cond2_cond3_102, label %77, label %78

; <label>:77:                                     ; preds = %75
  %_address_in_parent_stack_bt_104 = bitcast i8* %_pot_address_in_parent_stack_95 to i64*
  br label %78

; <label>:78:                                     ; preds = %75, %77
  %79 = phi i64* [ %_allin_new_bt_10, %75 ], [ %_address_in_parent_stack_bt_104, %77 ]
  %_new_load_105 = load i64, i64* %79
  %80 = inttoptr i64 %_new_load_105 to i64*, !mcsema_real_eip !39
  %81 = bitcast i64* %80 to i8*
  %_ptr_to_int_106 = ptrtoint i8* %81 to i64
  %_offset_above_rbp_108 = sub i64 %_ptr_to_int_106, %_local_end_to_int_
  %_pot_address_in_parent_stack_109 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_108
  %_cond1_110 = icmp ugt i8* %81, %_local_stack_end_ptr_
  %_cond2_1_111 = icmp ugt i8* %81, %_parent_stack_end_ptr_
  %_cond2_2_112 = icmp ult i8* %81, %_parent_stack_start_ptr_
  %_cond2_113 = or i1 %_cond2_1_111, %_cond2_2_112
  %_cond4_114 = icmp ule i8* %_pot_address_in_parent_stack_109, %_parent_stack_end_ptr_
  %_cond1_n_cond2_115 = and i1 %_cond1_110, %_cond2_113
  %_cond1_n_cond2_cond3_116 = and i1 %_cond1_n_cond2_115, %_cond4_114
  br i1 %_cond1_n_cond2_cond3_116, label %82, label %83

; <label>:82:                                     ; preds = %78
  br label %83

; <label>:83:                                     ; preds = %78, %82
  %84 = phi i8* [ %81, %78 ], [ %_pot_address_in_parent_stack_109, %82 ]
  %_new_load_118 = load i8, i8* %84
  %_new_gep_20 = getelementptr i8, i8* %_new_gep_, i64 -33
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i8 %_new_load_118, i8* %_new_gep_20, !mcsema_real_eip !40
  br label %block_0x135, !mcsema_real_eip !41

block_0x135:                                      ; preds = %139, %83
  %RCX_val.0 = phi i64 [ %2, %83 ], [ %143, %139 ]
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -33
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %_ptr_to_int_119 = ptrtoint i8* %_new_gep_23 to i64
  %_offset_above_rbp_121 = sub i64 %_ptr_to_int_119, %_local_end_to_int_
  %_pot_address_in_parent_stack_122 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_121
  %_cond1_123 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_124 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_125 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_126 = or i1 %_cond2_1_124, %_cond2_2_125
  %_cond4_127 = icmp ule i8* %_pot_address_in_parent_stack_122, %_parent_stack_end_ptr_
  %_cond1_n_cond2_128 = and i1 %_cond1_123, %_cond2_126
  %_cond1_n_cond2_cond3_129 = and i1 %_cond1_n_cond2_128, %_cond4_127
  br i1 %_cond1_n_cond2_cond3_129, label %85, label %86

; <label>:85:                                     ; preds = %block_0x135
  br label %86

; <label>:86:                                     ; preds = %block_0x135, %85
  %87 = phi i8* [ %_new_gep_23, %block_0x135 ], [ %_pot_address_in_parent_stack_122, %85 ]
  %_new_load_131 = load i8, i8* %87
  %88 = sext i8 %_new_load_131 to i32, !mcsema_real_eip !41
  %89 = zext i32 %88 to i64, !mcsema_real_eip !41
  %90 = tail call i8 @llvm.ctpop.i8(i8 %_new_load_131), !mcsema_real_eip !42
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  %93 = icmp eq i8 %_new_load_131, 0
  %94 = icmp slt i8 %_new_load_131, 0
  br i1 %93, label %block_0x192, label %block_0x144, !mcsema_real_eip !43

block_0x144:                                      ; preds = %86
  br i1 %_cond1_n_cond2_cond3_129, label %95, label %96

; <label>:95:                                     ; preds = %block_0x144
  br label %96

; <label>:96:                                     ; preds = %block_0x144, %95
  %97 = phi i8* [ %_new_gep_23, %block_0x144 ], [ %_pot_address_in_parent_stack_122, %95 ]
  %_new_load_144 = load i8, i8* %97
  %98 = sext i8 %_new_load_144 to i32, !mcsema_real_eip !86
  %99 = zext i32 %98 to i64, !mcsema_real_eip !86
  %100 = add nsw i32 %98, -47
  %101 = icmp eq i32 %100, 0, !mcsema_real_eip !44
  br i1 %101, label %block_0x153, label %block_0x15f, !mcsema_real_eip !45

block_0x192:                                      ; preds = %86
  %_load_rsp_ptr_29 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_30 = bitcast i8* %_load_rsp_ptr_29 to i64*
  %_ptr_to_int_145 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_148 = sub i64 %_ptr_to_int_145, %_local_end_to_int_
  %_pot_address_in_parent_stack_149 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_148
  %_cond1_150 = icmp ugt i8* %_load_rsp_ptr_29, %_local_stack_end_ptr_
  %_cond2_1_151 = icmp ugt i8* %_load_rsp_ptr_29, %_parent_stack_end_ptr_
  %_cond2_2_152 = icmp ult i8* %_load_rsp_ptr_29, %_parent_stack_start_ptr_
  %_cond2_153 = or i1 %_cond2_1_151, %_cond2_2_152
  %_cond4_154 = icmp ule i8* %_pot_address_in_parent_stack_149, %_parent_stack_end_ptr_
  %_cond1_n_cond2_155 = and i1 %_cond1_150, %_cond2_153
  %_cond1_n_cond2_cond3_156 = and i1 %_cond1_n_cond2_155, %_cond4_154
  br i1 %_cond1_n_cond2_cond3_156, label %102, label %103

; <label>:102:                                    ; preds = %block_0x192
  %_address_in_parent_stack_bt_158 = bitcast i8* %_pot_address_in_parent_stack_149 to i64*
  br label %103

; <label>:103:                                    ; preds = %block_0x192, %102
  %104 = phi i64* [ %_allin_new_bt_30, %block_0x192 ], [ %_address_in_parent_stack_bt_158, %102 ]
  %_new_load_159 = load i64, i64* %104
  %_new_int2ptr_ = inttoptr i64 %_new_load_159 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_31 = getelementptr i8, i8* %_load_rsp_ptr_29, i64 16
  store volatile i8* %_new_gep_31, i8** %_RSP_ptr_
  store i64 %89, i64* %RAX, !mcsema_real_eip !47
  store i64 %1, i64* %RBX, !mcsema_real_eip !47
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !47
  store i64 %3, i64* %RDX, !mcsema_real_eip !47
  store i64 %_new_load_105, i64* %RSI, !mcsema_real_eip !47
  store i64 %5, i64* %RDI, !mcsema_real_eip !47
  %_new_ptr2int_33 = ptrtoint i8* %_new_gep_31 to i64
  store volatile i64 %_new_ptr2int_33, i64* %RSP
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_35 = ptrtoint i8* %_load_rbp_ptr_34 to i64
  store volatile i64 %_new_ptr2int_35, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !47
  store i64 %7, i64* %R9, !mcsema_real_eip !47
  store i64 %8, i64* %R10, !mcsema_real_eip !47
  store i64 %9, i64* %R11, !mcsema_real_eip !47
  store i64 %10, i64* %R12, !mcsema_real_eip !47
  store i64 %11, i64* %R13, !mcsema_real_eip !47
  store i64 %12, i64* %R14, !mcsema_real_eip !47
  store i64 %13, i64* %R15, !mcsema_real_eip !47
  store i64 %14, i64* %RIP, !mcsema_real_eip !47
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %92, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %94, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %_ptr_to_int_160 = ptrtoint i64* %44 to i64
  %_ptr_bt_162 = bitcast i64* %44 to i8*
  %_offset_above_rbp_163 = sub i64 %_ptr_to_int_160, %_local_end_to_int_
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_ptr_bt_162, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_ptr_bt_162, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_ptr_bt_162, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  br i1 %_cond1_n_cond2_cond3_171, label %105, label %106

; <label>:105:                                    ; preds = %103
  %_address_in_parent_stack_bt_173 = bitcast i8* %_pot_address_in_parent_stack_164 to i64*
  br label %106

; <label>:106:                                    ; preds = %103, %105
  %107 = phi i64* [ %44, %103 ], [ %_address_in_parent_stack_bt_173, %105 ]
  %_new_load_174 = load i64, i64* %107
  store i64 %_new_load_174, i64* %43, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !47
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47

block_0x153:                                      ; preds = %96
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -32
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %_ptr_to_int_175 = ptrtoint i64* %_allin_new_bt_37 to i64
  %_offset_above_rbp_178 = sub i64 %_ptr_to_int_175, %_local_end_to_int_
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %_new_gep_36, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %_new_gep_36, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %_new_gep_36, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  br i1 %_cond1_n_cond2_cond3_186, label %108, label %109

; <label>:108:                                    ; preds = %block_0x153
  %_address_in_parent_stack_bt_188 = bitcast i8* %_pot_address_in_parent_stack_179 to i64*
  br label %109

; <label>:109:                                    ; preds = %block_0x153, %108
  %110 = phi i64* [ %_allin_new_bt_37, %block_0x153 ], [ %_address_in_parent_stack_bt_188, %108 ]
  %_new_load_189 = load i64, i64* %110
  %111 = inttoptr i64 %_new_load_189 to i64*, !mcsema_real_eip !49
  %112 = bitcast i64* %111 to i8*
  store i8 92, i8* %112, !mcsema_real_eip !49
  br label %block_0x168, !mcsema_real_eip !50

block_0x15f:                                      ; preds = %96
  br i1 %_cond1_n_cond2_cond3_129, label %113, label %114

; <label>:113:                                    ; preds = %block_0x15f
  br label %114

; <label>:114:                                    ; preds = %block_0x15f, %113
  %115 = phi i8* [ %_new_gep_23, %block_0x15f ], [ %_pot_address_in_parent_stack_122, %113 ]
  %_new_load_202 = load i8, i8* %115
  %116 = zext i8 %_new_load_202 to i64, !mcsema_real_eip !51
  %117 = and i64 %99, -256, !mcsema_real_eip !51
  %118 = or i64 %117, %116
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -32
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_203 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_206 = sub i64 %_ptr_to_int_203, %_local_end_to_int_
  %_pot_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_cond1_208 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_209 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_210 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_211 = or i1 %_cond2_1_209, %_cond2_2_210
  %_cond4_212 = icmp ule i8* %_pot_address_in_parent_stack_207, %_parent_stack_end_ptr_
  %_cond1_n_cond2_213 = and i1 %_cond1_208, %_cond2_211
  %_cond1_n_cond2_cond3_214 = and i1 %_cond1_n_cond2_213, %_cond4_212
  br i1 %_cond1_n_cond2_cond3_214, label %119, label %120

; <label>:119:                                    ; preds = %114
  %_address_in_parent_stack_bt_216 = bitcast i8* %_pot_address_in_parent_stack_207 to i64*
  br label %120

; <label>:120:                                    ; preds = %114, %119
  %121 = phi i64* [ %_allin_new_bt_42, %114 ], [ %_address_in_parent_stack_bt_216, %119 ]
  %_new_load_217 = load i64, i64* %121
  %122 = inttoptr i64 %_new_load_217 to i64*, !mcsema_real_eip !53
  %123 = trunc i64 %118 to i8, !mcsema_real_eip !53
  %124 = bitcast i64* %122 to i8*
  store i8 %123, i8* %124, !mcsema_real_eip !53
  br label %block_0x168, !mcsema_real_eip !48

block_0x168:                                      ; preds = %120, %109
  %RCX_val.1 = phi i64 [ %RCX_val.0, %109 ], [ %_new_load_217, %120 ]
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_218 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_221 = sub i64 %_ptr_to_int_218, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_224 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  br i1 %_cond1_n_cond2_cond3_229, label %125, label %126

; <label>:125:                                    ; preds = %block_0x168
  %_address_in_parent_stack_bt_231 = bitcast i8* %_pot_address_in_parent_stack_222 to i64*
  br label %126

; <label>:126:                                    ; preds = %block_0x168, %125
  %127 = phi i64* [ %_allin_new_bt_45, %block_0x168 ], [ %_address_in_parent_stack_bt_231, %125 ]
  %_new_load_232 = load i64, i64* %127
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_load_232, i64 1)
  %128 = extractvalue { i64, i1 } %uadd, 0
  store i64 %128, i64* %_allin_new_bt_45, !mcsema_real_eip !55
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -32
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %_ptr_to_int_233 = ptrtoint i64* %_allin_new_bt_51 to i64
  %_offset_above_rbp_236 = sub i64 %_ptr_to_int_233, %_local_end_to_int_
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_239 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  br i1 %_cond1_n_cond2_cond3_244, label %129, label %130

; <label>:129:                                    ; preds = %126
  %_address_in_parent_stack_bt_246 = bitcast i8* %_pot_address_in_parent_stack_237 to i64*
  br label %130

; <label>:130:                                    ; preds = %126, %129
  %131 = phi i64* [ %_allin_new_bt_51, %126 ], [ %_address_in_parent_stack_bt_246, %129 ]
  %_new_load_247 = load i64, i64* %131
  %uadd71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_load_247, i64 1)
  %132 = extractvalue { i64, i1 } %uadd71, 0
  store i64 %132, i64* %_allin_new_bt_51, !mcsema_real_eip !57
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -24
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %_ptr_to_int_248 = ptrtoint i64* %_allin_new_bt_57 to i64
  %_offset_above_rbp_251 = sub i64 %_ptr_to_int_248, %_local_end_to_int_
  %_pot_address_in_parent_stack_252 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_251
  %_cond1_253 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_254 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_255 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_256 = or i1 %_cond2_1_254, %_cond2_2_255
  %_cond4_257 = icmp ule i8* %_pot_address_in_parent_stack_252, %_parent_stack_end_ptr_
  %_cond1_n_cond2_258 = and i1 %_cond1_253, %_cond2_256
  %_cond1_n_cond2_cond3_259 = and i1 %_cond1_n_cond2_258, %_cond4_257
  br i1 %_cond1_n_cond2_cond3_259, label %133, label %134

; <label>:133:                                    ; preds = %130
  %_address_in_parent_stack_bt_261 = bitcast i8* %_pot_address_in_parent_stack_252 to i64*
  br label %134

; <label>:134:                                    ; preds = %130, %133
  %135 = phi i64* [ %_allin_new_bt_57, %130 ], [ %_address_in_parent_stack_bt_261, %133 ]
  %_new_load_262 = load i64, i64* %135
  %136 = inttoptr i64 %_new_load_262 to i64*, !mcsema_real_eip !59
  %137 = bitcast i64* %136 to i8*
  %_ptr_to_int_263 = ptrtoint i8* %137 to i64
  %_offset_above_rbp_265 = sub i64 %_ptr_to_int_263, %_local_end_to_int_
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %137, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %137, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %137, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond1_n_cond2_272, %_cond4_271
  br i1 %_cond1_n_cond2_cond3_273, label %138, label %139

; <label>:138:                                    ; preds = %134
  br label %139

; <label>:139:                                    ; preds = %134, %138
  %140 = phi i8* [ %137, %134 ], [ %_pot_address_in_parent_stack_266, %138 ]
  %_new_load_275 = load i8, i8* %140
  %141 = zext i8 %_new_load_275 to i64, !mcsema_real_eip !59
  %142 = and i64 %RCX_val.1, -256, !mcsema_real_eip !59
  %143 = or i64 %142, %141
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -33
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  store i8 %_new_load_275, i8* %_new_gep_59, !mcsema_real_eip !60
  br label %block_0x135, !mcsema_real_eip !61
}

define internal x86_64_sysvcc void @sub_90.2(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 40
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 40
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !62
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !62
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !62
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !62
  %1 = load i64, i64* %RBX, !mcsema_real_eip !62
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !62
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !62
  %2 = load i64, i64* %RDX, !mcsema_real_eip !62
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !62
  %3 = load i64, i64* %RSI, !mcsema_real_eip !62
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !62
  %4 = load i64, i64* %RDI, !mcsema_real_eip !62
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !62
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !62
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !62
  %5 = load i64, i64* %R8, !mcsema_real_eip !62
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !62
  %6 = load i64, i64* %R9, !mcsema_real_eip !62
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !62
  %7 = load i64, i64* %R10, !mcsema_real_eip !62
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !62
  %8 = load i64, i64* %R11, !mcsema_real_eip !62
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !62
  %9 = load i64, i64* %R12, !mcsema_real_eip !62
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !62
  %10 = load i64, i64* %R13, !mcsema_real_eip !62
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !62
  %11 = load i64, i64* %R14, !mcsema_real_eip !62
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !62
  %12 = load i64, i64* %R15, !mcsema_real_eip !62
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !62
  %13 = load i64, i64* %RIP, !mcsema_real_eip !62
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !62
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !62
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !62
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !62
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !62
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !62
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !62
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !62
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !62
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !62
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !62
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !62
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !62
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !62
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !62
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !62
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !62
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !62
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !62
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !62
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !62
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !62
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !62
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !62
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !62
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !62
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !62
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !62
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !62
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !62
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !62
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !62
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !62
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !62
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !62
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !62
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !62
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !62
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !62
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !62
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !62
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !62
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !62
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !62
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !62
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !62
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !62
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !62
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !62
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !62
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !62
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !62
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !62
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !62
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !62
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !62
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !62
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !62
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !62
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !62
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !62
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !62
  %48 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !62
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !62
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !62
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !62
  %50 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !62
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !62
  %51 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !62
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !62
  %52 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !62
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !62
  %53 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !62
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !62
  %54 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !62
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !62
  %55 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !62
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !62
  %56 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !62
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !62
  %57 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !62
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !62
  %58 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !62
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !62
  %59 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !62
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !62
  %60 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !62
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !62
  %61 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !62
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !62
  %62 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !62
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !62
  %63 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !62
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !62
  %64 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !62
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !62
  %65 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !62
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !62
  %66 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !62
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !62
  %67 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !62
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !62
  %68 = load i64, i64* %STACK_BASE, !mcsema_real_eip !62
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !62
  %69 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !62
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -40
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -8
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  store i64 %4, i64* %_allin_new_bt_12, !mcsema_real_eip !63
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -12
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %70 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 1, i32* %70, !mcsema_real_eip !64
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %_ptr_to_int_60 = ptrtoint i64* %_allin_new_bt_18 to i64
  %_offset_above_rbp_63 = sub i64 %_ptr_to_int_60, %_local_end_to_int_
  %_pot_address_in_parent_stack_64 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_63
  %_cond1_65 = icmp ugt i8* %_new_gep_17, %_local_stack_end_ptr_
  %_cond2_1_66 = icmp ugt i8* %_new_gep_17, %_parent_stack_end_ptr_
  %_cond2_2_67 = icmp ult i8* %_new_gep_17, %_parent_stack_start_ptr_
  %_cond2_68 = or i1 %_cond2_1_66, %_cond2_2_67
  %_cond4_69 = icmp ule i8* %_pot_address_in_parent_stack_64, %_parent_stack_end_ptr_
  %_cond1_n_cond2_70 = and i1 %_cond1_65, %_cond2_68
  %_cond1_n_cond2_cond3_71 = and i1 %_cond1_n_cond2_70, %_cond4_69
  br i1 %_cond1_n_cond2_cond3_71, label %71, label %72

; <label>:71:                                     ; preds = %45
  %_address_in_parent_stack_bt_73 = bitcast i8* %_pot_address_in_parent_stack_64 to i64*
  br label %72

; <label>:72:                                     ; preds = %45, %71
  %73 = phi i64* [ %_allin_new_bt_18, %45 ], [ %_address_in_parent_stack_bt_73, %71 ]
  %_new_load_74 = load i64, i64* %73
  %74 = tail call x86_64_sysvcc i64 @strlen(i64 %_new_load_74), !mcsema_real_eip !66
  %75 = and i64 %74, 4294967295
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %76 = trunc i64 %74 to i32, !mcsema_real_eip !67
  %77 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 %76, i32* %77, !mcsema_real_eip !67
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %78 = bitcast i64* %_allin_new_bt_24 to i32*
  %_ptr_to_int_75 = ptrtoint i32* %78 to i64
  %_ptr_bt_77 = bitcast i32* %78 to i8*
  %_offset_above_rbp_78 = sub i64 %_ptr_to_int_75, %_local_end_to_int_
  %_pot_address_in_parent_stack_79 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_78
  %_cond1_80 = icmp ugt i8* %_ptr_bt_77, %_local_stack_end_ptr_
  %_cond2_1_81 = icmp ugt i8* %_ptr_bt_77, %_parent_stack_end_ptr_
  %_cond2_2_82 = icmp ult i8* %_ptr_bt_77, %_parent_stack_start_ptr_
  %_cond2_83 = or i1 %_cond2_1_81, %_cond2_2_82
  %_cond4_84 = icmp ule i8* %_pot_address_in_parent_stack_79, %_parent_stack_end_ptr_
  %_cond1_n_cond2_85 = and i1 %_cond1_80, %_cond2_83
  %_cond1_n_cond2_cond3_86 = and i1 %_cond1_n_cond2_85, %_cond4_84
  br i1 %_cond1_n_cond2_cond3_86, label %79, label %80

; <label>:79:                                     ; preds = %72
  %_address_in_parent_stack_bt_88 = bitcast i8* %_pot_address_in_parent_stack_79 to i32*
  br label %80

; <label>:80:                                     ; preds = %72, %79
  %81 = phi i32* [ %78, %72 ], [ %_address_in_parent_stack_bt_88, %79 ]
  %_new_load_89 = load i32, i32* %81
  %82 = add i32 %_new_load_89, -1
  %83 = xor i32 %82, %_new_load_89, !mcsema_real_eip !68
  %84 = icmp eq i32 %82, 0, !mcsema_real_eip !68
  %85 = icmp slt i32 %82, 0
  %86 = and i32 %83, %_new_load_89, !mcsema_real_eip !68
  %87 = icmp slt i32 %86, 0
  %88 = xor i1 %85, %87
  %89 = or i1 %84, %88, !mcsema_real_eip !69
  br i1 %89, label %block_0xf9, label %block_0xbe, !mcsema_real_eip !69

block_0xbe:                                       ; preds = %80
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_90 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_93 = sub i64 %_ptr_to_int_90, %_local_end_to_int_
  %_pot_address_in_parent_stack_94 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_93
  %_cond1_95 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_96 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_97 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_98 = or i1 %_cond2_1_96, %_cond2_2_97
  %_cond4_99 = icmp ule i8* %_pot_address_in_parent_stack_94, %_parent_stack_end_ptr_
  %_cond1_n_cond2_100 = and i1 %_cond1_95, %_cond2_98
  %_cond1_n_cond2_cond3_101 = and i1 %_cond1_n_cond2_100, %_cond4_99
  br i1 %_cond1_n_cond2_cond3_101, label %90, label %91

; <label>:90:                                     ; preds = %block_0xbe
  %_address_in_parent_stack_bt_103 = bitcast i8* %_pot_address_in_parent_stack_94 to i64*
  br label %91

; <label>:91:                                     ; preds = %block_0xbe, %90
  %92 = phi i64* [ %_allin_new_bt_27, %block_0xbe ], [ %_address_in_parent_stack_bt_103, %90 ]
  %_new_load_104 = load i64, i64* %92
  %93 = inttoptr i64 %_new_load_104 to i64*, !mcsema_real_eip !71
  %94 = bitcast i64* %93 to i8*
  %_ptr_to_int_105 = ptrtoint i8* %94 to i64
  %_offset_above_rbp_107 = sub i64 %_ptr_to_int_105, %_local_end_to_int_
  %_pot_address_in_parent_stack_108 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_107
  %_cond1_109 = icmp ugt i8* %94, %_local_stack_end_ptr_
  %_cond2_1_110 = icmp ugt i8* %94, %_parent_stack_end_ptr_
  %_cond2_2_111 = icmp ult i8* %94, %_parent_stack_start_ptr_
  %_cond2_112 = or i1 %_cond2_1_110, %_cond2_2_111
  %_cond4_113 = icmp ule i8* %_pot_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond1_n_cond2_114 = and i1 %_cond1_109, %_cond2_112
  %_cond1_n_cond2_cond3_115 = and i1 %_cond1_n_cond2_114, %_cond4_113
  br i1 %_cond1_n_cond2_cond3_115, label %95, label %96

; <label>:95:                                     ; preds = %91
  br label %96

; <label>:96:                                     ; preds = %91, %95
  %97 = phi i8* [ %94, %91 ], [ %_pot_address_in_parent_stack_108, %95 ]
  %_new_load_117 = load i8, i8* %97
  %98 = zext i8 %_new_load_117 to i64, !mcsema_real_eip !71
  %99 = and i64 %75, -256, !mcsema_real_eip !71
  %100 = or i64 %99, %98
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -17
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i8 %_new_load_117, i8* %_new_gep_29, !mcsema_real_eip !72
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -16
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %101 = bitcast i64* %_allin_new_bt_33 to i32*
  %_ptr_to_int_118 = ptrtoint i32* %101 to i64
  %_ptr_bt_120 = bitcast i32* %101 to i8*
  %_offset_above_rbp_121 = sub i64 %_ptr_to_int_118, %_local_end_to_int_
  %_pot_address_in_parent_stack_122 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_121
  %_cond1_123 = icmp ugt i8* %_ptr_bt_120, %_local_stack_end_ptr_
  %_cond2_1_124 = icmp ugt i8* %_ptr_bt_120, %_parent_stack_end_ptr_
  %_cond2_2_125 = icmp ult i8* %_ptr_bt_120, %_parent_stack_start_ptr_
  %_cond2_126 = or i1 %_cond2_1_124, %_cond2_2_125
  %_cond4_127 = icmp ule i8* %_pot_address_in_parent_stack_122, %_parent_stack_end_ptr_
  %_cond1_n_cond2_128 = and i1 %_cond1_123, %_cond2_126
  %_cond1_n_cond2_cond3_129 = and i1 %_cond1_n_cond2_128, %_cond4_127
  br i1 %_cond1_n_cond2_cond3_129, label %102, label %103

; <label>:102:                                    ; preds = %96
  %_address_in_parent_stack_bt_131 = bitcast i8* %_pot_address_in_parent_stack_122 to i32*
  br label %103

; <label>:103:                                    ; preds = %96, %102
  %104 = phi i32* [ %101, %96 ], [ %_address_in_parent_stack_bt_131, %102 ]
  %_new_load_132 = load i32, i32* %104
  %105 = add i32 %_new_load_132, -1
  %106 = sext i32 %105 to i64, !mcsema_real_eip !74
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_133 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_136 = sub i64 %_ptr_to_int_133, %_local_end_to_int_
  %_pot_address_in_parent_stack_137 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_136
  %_cond1_138 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_139 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_140 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_141 = or i1 %_cond2_1_139, %_cond2_2_140
  %_cond4_142 = icmp ule i8* %_pot_address_in_parent_stack_137, %_parent_stack_end_ptr_
  %_cond1_n_cond2_143 = and i1 %_cond1_138, %_cond2_141
  %_cond1_n_cond2_cond3_144 = and i1 %_cond1_n_cond2_143, %_cond4_142
  br i1 %_cond1_n_cond2_cond3_144, label %107, label %108

; <label>:107:                                    ; preds = %103
  %_address_in_parent_stack_bt_146 = bitcast i8* %_pot_address_in_parent_stack_137 to i64*
  br label %108

; <label>:108:                                    ; preds = %103, %107
  %109 = phi i64* [ %_allin_new_bt_36, %103 ], [ %_address_in_parent_stack_bt_146, %107 ]
  %_new_load_147 = load i64, i64* %109
  %110 = add i64 %_new_load_147, %106, !mcsema_real_eip !76
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !76
  %112 = bitcast i64* %111 to i8*
  %_ptr_to_int_148 = ptrtoint i8* %112 to i64
  %_offset_above_rbp_150 = sub i64 %_ptr_to_int_148, %_local_end_to_int_
  %_pot_address_in_parent_stack_151 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_150
  %_cond1_152 = icmp ugt i8* %112, %_local_stack_end_ptr_
  %_cond2_1_153 = icmp ugt i8* %112, %_parent_stack_end_ptr_
  %_cond2_2_154 = icmp ult i8* %112, %_parent_stack_start_ptr_
  %_cond2_155 = or i1 %_cond2_1_153, %_cond2_2_154
  %_cond4_156 = icmp ule i8* %_pot_address_in_parent_stack_151, %_parent_stack_end_ptr_
  %_cond1_n_cond2_157 = and i1 %_cond1_152, %_cond2_155
  %_cond1_n_cond2_cond3_158 = and i1 %_cond1_n_cond2_157, %_cond4_156
  br i1 %_cond1_n_cond2_cond3_158, label %113, label %114

; <label>:113:                                    ; preds = %108
  br label %114

; <label>:114:                                    ; preds = %108, %113
  %115 = phi i8* [ %112, %108 ], [ %_pot_address_in_parent_stack_151, %113 ]
  %_new_load_160 = load i8, i8* %115
  %116 = zext i8 %_new_load_160 to i64, !mcsema_real_eip !76
  %117 = and i64 %100, -256, !mcsema_real_eip !76
  %118 = or i64 %117, %116
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -18
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i8 %_new_load_160, i8* %_new_gep_38, !mcsema_real_eip !77
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -17
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_161 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_163 = sub i64 %_ptr_to_int_161, %_local_end_to_int_
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  br i1 %_cond1_n_cond2_cond3_171, label %119, label %120

; <label>:119:                                    ; preds = %114
  br label %120

; <label>:120:                                    ; preds = %114, %119
  %121 = phi i8* [ %_new_gep_41, %114 ], [ %_pot_address_in_parent_stack_164, %119 ]
  %_new_load_173 = load i8, i8* %121
  %122 = sext i8 %_new_load_173 to i32, !mcsema_real_eip !78
  %123 = zext i32 %122 to i64, !mcsema_real_eip !78
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -18
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_174 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_176 = sub i64 %_ptr_to_int_174, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  br i1 %_cond1_n_cond2_cond3_184, label %124, label %125

; <label>:124:                                    ; preds = %120
  br label %125

; <label>:125:                                    ; preds = %120, %124
  %126 = phi i8* [ %_new_gep_44, %120 ], [ %_pot_address_in_parent_stack_177, %124 ]
  %_new_load_186 = load i8, i8* %126
  %127 = sext i8 %_new_load_186 to i32, !mcsema_real_eip !79
  %128 = zext i32 %127 to i64, !mcsema_real_eip !79
  %129 = icmp eq i32 %122, %127
  br i1 %129, label %block_0xed, label %block_0xf9, !mcsema_real_eip !80

block_0xf9:                                       ; preds = %block_0xed, %125, %80
  %RDI_val.0 = phi i64 [ %_new_load_74, %80 ], [ %128, %block_0xed ], [ %128, %125 ]
  %RSI_val.0 = phi i64 [ %3, %80 ], [ %_new_load_147, %block_0xed ], [ %_new_load_147, %125 ]
  %RDX_val.0 = phi i64 [ %2, %80 ], [ %123, %block_0xed ], [ %123, %125 ]
  %RCX_val.0 = phi i64 [ %75, %80 ], [ %118, %block_0xed ], [ %118, %125 ]
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -12
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %130 = bitcast i64* %_allin_new_bt_48 to i32*
  %_ptr_to_int_187 = ptrtoint i32* %130 to i64
  %_ptr_bt_189 = bitcast i32* %130 to i8*
  %_offset_above_rbp_190 = sub i64 %_ptr_to_int_187, %_local_end_to_int_
  %_pot_address_in_parent_stack_191 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_190
  %_cond1_192 = icmp ugt i8* %_ptr_bt_189, %_local_stack_end_ptr_
  %_cond2_1_193 = icmp ugt i8* %_ptr_bt_189, %_parent_stack_end_ptr_
  %_cond2_2_194 = icmp ult i8* %_ptr_bt_189, %_parent_stack_start_ptr_
  %_cond2_195 = or i1 %_cond2_1_193, %_cond2_2_194
  %_cond4_196 = icmp ule i8* %_pot_address_in_parent_stack_191, %_parent_stack_end_ptr_
  %_cond1_n_cond2_197 = and i1 %_cond1_192, %_cond2_195
  %_cond1_n_cond2_cond3_198 = and i1 %_cond1_n_cond2_197, %_cond4_196
  br i1 %_cond1_n_cond2_cond3_198, label %131, label %132

; <label>:131:                                    ; preds = %block_0xf9
  %_address_in_parent_stack_bt_200 = bitcast i8* %_pot_address_in_parent_stack_191 to i32*
  br label %132

; <label>:132:                                    ; preds = %block_0xf9, %131
  %133 = phi i32* [ %130, %block_0xf9 ], [ %_address_in_parent_stack_bt_200, %131 ]
  %_new_load_201 = load i32, i32* %133
  %134 = zext i32 %_new_load_201 to i64, !mcsema_real_eip !81
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_50 = ptrtoint i8* %_load_rsp_ptr_49 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_50, i64 32)
  %135 = extractvalue { i64, i1 } %uadd, 0
  %136 = xor i64 %135, %_new_ptr2int_50, !mcsema_real_eip !82
  %137 = and i64 %136, 16, !mcsema_real_eip !82
  %138 = icmp ne i64 %137, 0, !mcsema_real_eip !82
  %139 = icmp slt i64 %135, 0
  %140 = icmp eq i64 %135, 0, !mcsema_real_eip !82
  %141 = xor i64 %_new_ptr2int_50, -9223372036854775808, !mcsema_real_eip !82
  %142 = and i64 %136, %141, !mcsema_real_eip !82
  %143 = icmp slt i64 %142, 0
  %144 = trunc i64 %135 to i8, !mcsema_real_eip !82
  %145 = tail call i8 @llvm.ctpop.i8(i8 %144), !mcsema_real_eip !82
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  %148 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %135 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %149 = inttoptr i64 %135 to i64*, !mcsema_real_eip !83
  %_ptr_bt_204 = bitcast i64* %149 to i8*
  %_offset_above_rbp_205 = sub i64 %135, %_local_end_to_int_
  %_pot_address_in_parent_stack_206 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_cond1_207 = icmp ugt i8* %_ptr_bt_204, %_local_stack_end_ptr_
  %_cond2_1_208 = icmp ugt i8* %_ptr_bt_204, %_parent_stack_end_ptr_
  %_cond2_2_209 = icmp ult i8* %_ptr_bt_204, %_parent_stack_start_ptr_
  %_cond2_210 = or i1 %_cond2_1_208, %_cond2_2_209
  %_cond4_211 = icmp ule i8* %_pot_address_in_parent_stack_206, %_parent_stack_end_ptr_
  %_cond1_n_cond2_212 = and i1 %_cond1_207, %_cond2_210
  %_cond1_n_cond2_cond3_213 = and i1 %_cond1_n_cond2_212, %_cond4_211
  br i1 %_cond1_n_cond2_cond3_213, label %150, label %151

; <label>:150:                                    ; preds = %132
  %_address_in_parent_stack_bt_215 = bitcast i8* %_pot_address_in_parent_stack_206 to i64*
  br label %151

; <label>:151:                                    ; preds = %132, %150
  %152 = phi i64* [ %149, %132 ], [ %_address_in_parent_stack_bt_215, %150 ]
  %_new_load_216 = load i64, i64* %152
  %_new_int2ptr_51 = inttoptr i64 %_new_load_216 to i8*
  store volatile i8* %_new_int2ptr_51, i8** %_RBP_ptr_
  %153 = add i64 %135, 16, !mcsema_real_eip !84
  %_new_int2ptr_52 = inttoptr i64 %153 to i8*
  store volatile i8* %_new_int2ptr_52, i8** %_RSP_ptr_
  store i64 %134, i64* %RAX, !mcsema_real_eip !84
  store i64 %1, i64* %RBX, !mcsema_real_eip !84
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !84
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !84
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !84
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !84
  store volatile i64 %153, i64* %RSP
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_56 = ptrtoint i8* %_load_rbp_ptr_55 to i64
  store volatile i64 %_new_ptr2int_56, i64* %RBP
  store i64 %5, i64* %R8, !mcsema_real_eip !84
  store i64 %6, i64* %R9, !mcsema_real_eip !84
  store i64 %7, i64* %R10, !mcsema_real_eip !84
  store i64 %8, i64* %R11, !mcsema_real_eip !84
  store i64 %9, i64* %R12, !mcsema_real_eip !84
  store i64 %10, i64* %R13, !mcsema_real_eip !84
  store i64 %11, i64* %R14, !mcsema_real_eip !84
  store i64 %12, i64* %R15, !mcsema_real_eip !84
  store i64 %13, i64* %RIP, !mcsema_real_eip !84
  store i1 %148, i1* %CF, align 1, !mcsema_real_eip !84
  store i1 %147, i1* %PF, align 1, !mcsema_real_eip !84
  store i1 %138, i1* %AF, align 1, !mcsema_real_eip !84
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !84
  store i1 %139, i1* %SF, align 1, !mcsema_real_eip !84
  store i1 %143, i1* %OF, align 1, !mcsema_real_eip !84
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !84
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !84
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !84
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !84
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !84
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !84
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !84
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !84
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !84
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !84
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !84
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !84
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !84
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !84
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !84
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !84
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !84
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !84
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !84
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !84
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !84
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !84
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !84
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !84
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !84
  %_ptr_to_int_217 = ptrtoint i64* %43 to i64
  %_ptr_bt_219 = bitcast i64* %43 to i8*
  %_offset_above_rbp_220 = sub i64 %_ptr_to_int_217, %_local_end_to_int_
  %_pot_address_in_parent_stack_221 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_cond1_222 = icmp ugt i8* %_ptr_bt_219, %_local_stack_end_ptr_
  %_cond2_1_223 = icmp ugt i8* %_ptr_bt_219, %_parent_stack_end_ptr_
  %_cond2_2_224 = icmp ult i8* %_ptr_bt_219, %_parent_stack_start_ptr_
  %_cond2_225 = or i1 %_cond2_1_223, %_cond2_2_224
  %_cond4_226 = icmp ule i8* %_pot_address_in_parent_stack_221, %_parent_stack_end_ptr_
  %_cond1_n_cond2_227 = and i1 %_cond1_222, %_cond2_225
  %_cond1_n_cond2_cond3_228 = and i1 %_cond1_n_cond2_227, %_cond4_226
  br i1 %_cond1_n_cond2_cond3_228, label %154, label %155

; <label>:154:                                    ; preds = %151
  %_address_in_parent_stack_bt_230 = bitcast i8* %_pot_address_in_parent_stack_221 to i64*
  br label %155

; <label>:155:                                    ; preds = %151, %154
  %156 = phi i64* [ %43, %151 ], [ %_address_in_parent_stack_bt_230, %154 ]
  %_new_load_231 = load i64, i64* %156
  store i64 %_new_load_231, i64* %42, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !84
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !84
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !84
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !84
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !84
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !84
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !84
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !84
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !84
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !84
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !84
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !84
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !84
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !84
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !84
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !84
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !84
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !84
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !84
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !84
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !84
  store i64 %68, i64* %STACK_BASE, align 1, !mcsema_real_eip !84
  store i64 %69, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !84
  ret void, !mcsema_real_eip !84

block_0xed:                                       ; preds = %125
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -12
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %157 = bitcast i64* %_allin_new_bt_59 to i32*
  store i32 0, i32* %157, !mcsema_real_eip !85
  br label %block_0xf9
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 8}
!4 = !{i64 12}
!5 = !{i64 15}
!6 = !{i64 22}
!7 = !{i64 26}
!8 = !{i64 30}
!9 = !{i64 35}
!10 = !{i64 39}
!11 = !{i64 42}
!12 = !{i64 45}
!13 = !{i64 51}
!14 = !{i64 55}
!15 = !{i64 59}
!16 = !{i64 63}
!17 = !{i64 67}
!18 = !{i64 71}
!19 = !{i64 76}
!20 = !{i64 81}
!21 = !{i64 121}
!22 = !{i64 125}
!23 = !{i64 129}
!24 = !{i64 133}
!25 = !{i64 134}
!26 = !{i64 87}
!27 = !{i64 95}
!28 = !{i64 105}
!29 = !{i64 113}
!30 = !{i64 116}
!31 = !{i64 272}
!32 = !{i64 276}
!33 = !{i64 280}
!34 = !{i64 284}
!35 = !{i64 288}
!36 = !{i64 292}
!37 = !{i64 296}
!38 = !{i64 300}
!39 = !{i64 304}
!40 = !{i64 306}
!41 = !{i64 309}
!42 = !{i64 313}
!43 = !{i64 318}
!44 = !{i64 328}
!45 = !{i64 333}
!46 = !{i64 402}
!47 = !{i64 403}
!48 = !{i64 339}
!49 = !{i64 343}
!50 = !{i64 346}
!51 = !{i64 351}
!52 = !{i64 354}
!53 = !{i64 358}
!54 = !{i64 360}
!55 = !{i64 370}
!56 = !{i64 374}
!57 = !{i64 384}
!58 = !{i64 388}
!59 = !{i64 392}
!60 = !{i64 394}
!61 = !{i64 397}
!62 = !{i64 144}
!63 = !{i64 152}
!64 = !{i64 156}
!65 = !{i64 163}
!66 = !{i64 167}
!67 = !{i64 174}
!68 = !{i64 177}
!69 = !{i64 184}
!70 = !{i64 190}
!71 = !{i64 194}
!72 = !{i64 196}
!73 = !{i64 199}
!74 = !{i64 208}
!75 = !{i64 211}
!76 = !{i64 215}
!77 = !{i64 218}
!78 = !{i64 221}
!79 = !{i64 225}
!80 = !{i64 231}
!81 = !{i64 249}
!82 = !{i64 252}
!83 = !{i64 256}
!84 = !{i64 257}
!85 = !{i64 237}
!86 = !{i64 324}
