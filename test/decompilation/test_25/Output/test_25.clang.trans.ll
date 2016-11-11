; ModuleID = 'Output/test_25.clang.trans.bc'
source_filename = "Output/test_25.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [10 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x8b = internal constant %0 <{ [10 x i8] c"I am: %s\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 40
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 40
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
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -40
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %68 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %68, !mcsema_real_eip !3
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %69 = trunc i64 %4 to i32, !mcsema_real_eip !4
  %70 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %69, i32* %70, !mcsema_real_eip !4
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 %3, i64* %_allin_new_bt_18, !mcsema_real_eip !5
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -20
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %71 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 0, i32* %71, !mcsema_real_eip !6
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %72 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !7
  %73 = add i64 %72, 8, !mcsema_real_eip !8
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !8
  %75 = load i64, i64* %74, !mcsema_real_eip !8
  %76 = tail call x86_64_sysvcc i64 @strlen(i64 %75), !mcsema_real_eip !9
  %77 = and i64 %76, 4294967295
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %78 = trunc i64 %76 to i32, !mcsema_real_eip !10
  %79 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 %78, i32* %79, !mcsema_real_eip !10
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -28
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %80 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 0, i32* %80, !mcsema_real_eip !11
  br label %block_0x36, !mcsema_real_eip !12

block_0x36:                                       ; preds = %block_0x42, %entry
  %RDI_val.0 = phi i64 [ %75, %entry ], [ %101, %block_0x42 ]
  %RSI_val.0 = phi i64 [ %72, %entry ], [ %99, %block_0x42 ]
  %RCX_val.0 = phi i64 [ %77, %entry ], [ %110, %block_0x42 ]
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -28
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %81 = bitcast i64* %_allin_new_bt_33 to i32*
  %82 = load i32, i32* %81, !mcsema_real_eip !12
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %83 = bitcast i64* %_allin_new_bt_36 to i32*
  %84 = load i32, i32* %83, !mcsema_real_eip !13
  %85 = sub i32 %82, %84, !mcsema_real_eip !13
  %86 = xor i32 %85, %82, !mcsema_real_eip !13
  %87 = icmp slt i32 %85, 0
  %88 = xor i32 %84, %82, !mcsema_real_eip !13
  %89 = and i32 %86, %88, !mcsema_real_eip !13
  %90 = icmp slt i32 %89, 0
  %tmp = xor i1 %87, %90
  br i1 %tmp, label %block_0x42, label %block_0x82, !mcsema_real_eip !14

block_0x42:                                       ; preds = %block_0x36
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -16
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %91 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !15
  %92 = add i64 %91, 8, !mcsema_real_eip !16
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !16
  %94 = load i64, i64* %93, !mcsema_real_eip !16
  %95 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0x8b to i64), i64 %94), !mcsema_real_eip !17
  %96 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !18
  %97 = add i64 %96, 8, !mcsema_real_eip !19
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !19
  %99 = load i64, i64* %98, !mcsema_real_eip !19
  %100 = load i32, i32* %81, !mcsema_real_eip !20
  %101 = sext i32 %100 to i64, !mcsema_real_eip !20
  %102 = add i64 %99, %101, !mcsema_real_eip !21
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !21
  %104 = bitcast i64* %103 to i8*
  %105 = load i8, i8* %104, !mcsema_real_eip !21
  %106 = sext i8 %105 to i32, !mcsema_real_eip !21
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -20
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %107 = bitcast i64* %_allin_new_bt_48 to i32*
  %108 = load i32, i32* %107, !mcsema_real_eip !22
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %106, i32 %108)
  %109 = extractvalue { i32, i1 } %uadd, 0
  %110 = zext i32 %109 to i64, !mcsema_real_eip !22
  store i32 %109, i32* %107, !mcsema_real_eip !23
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -32
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %111 = trunc i64 %95 to i32, !mcsema_real_eip !24
  %112 = bitcast i64* %_allin_new_bt_54 to i32*
  store i32 %111, i32* %112, !mcsema_real_eip !24
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -28
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %113 = bitcast i64* %_allin_new_bt_57 to i32*
  %114 = load i32, i32* %113, !mcsema_real_eip !25
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %114, i32 1)
  %115 = extractvalue { i32, i1 } %uadd71, 0
  store i32 %115, i32* %113, !mcsema_real_eip !26
  br label %block_0x36, !mcsema_real_eip !27

block_0x82:                                       ; preds = %block_0x36
  %116 = zext i32 %84 to i64, !mcsema_real_eip !28
  %_load_rsp_ptr_64 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_65 = ptrtoint i8* %_load_rsp_ptr_64 to i64
  %uadd72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_65, i64 32)
  %117 = extractvalue { i64, i1 } %uadd72, 0
  %118 = xor i64 %117, %_new_ptr2int_65, !mcsema_real_eip !29
  %119 = and i64 %118, 16, !mcsema_real_eip !29
  %120 = icmp ne i64 %119, 0, !mcsema_real_eip !29
  %121 = icmp slt i64 %117, 0
  %122 = icmp eq i64 %117, 0, !mcsema_real_eip !29
  %123 = xor i64 %_new_ptr2int_65, -9223372036854775808, !mcsema_real_eip !29
  %124 = and i64 %118, %123, !mcsema_real_eip !29
  %125 = icmp slt i64 %124, 0
  %126 = trunc i64 %117 to i8, !mcsema_real_eip !29
  %127 = tail call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !29
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  %130 = extractvalue { i64, i1 } %uadd72, 1
  %_new_int2ptr_ = inttoptr i64 %117 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %131 = inttoptr i64 %117 to i64*, !mcsema_real_eip !30
  %132 = load i64, i64* %131, !mcsema_real_eip !30
  %_new_int2ptr_66 = inttoptr i64 %132 to i8*
  store volatile i8* %_new_int2ptr_66, i8** %_RBP_ptr_
  %133 = add i64 %117, 16, !mcsema_real_eip !31
  %_new_int2ptr_67 = inttoptr i64 %133 to i8*
  store volatile i8* %_new_int2ptr_67, i8** %_RSP_ptr_
  store i64 %116, i64* %RAX, !mcsema_real_eip !31
  store i64 %1, i64* %RBX, !mcsema_real_eip !31
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !31
  store i64 %2, i64* %RDX, !mcsema_real_eip !31
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !31
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !31
  store volatile i64 %133, i64* %RSP
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_71 = ptrtoint i8* %_load_rbp_ptr_70 to i64
  store volatile i64 %_new_ptr2int_71, i64* %RBP
  store i64 %5, i64* %R8, !mcsema_real_eip !31
  store i64 %6, i64* %R9, !mcsema_real_eip !31
  store i64 %7, i64* %R10, !mcsema_real_eip !31
  store i64 %8, i64* %R11, !mcsema_real_eip !31
  store i64 %9, i64* %R12, !mcsema_real_eip !31
  store i64 %10, i64* %R13, !mcsema_real_eip !31
  store i64 %11, i64* %R14, !mcsema_real_eip !31
  store i64 %12, i64* %R15, !mcsema_real_eip !31
  store i64 %13, i64* %RIP, !mcsema_real_eip !31
  store i1 %130, i1* %CF, align 1, !mcsema_real_eip !31
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !31
  store i1 %120, i1* %AF, align 1, !mcsema_real_eip !31
  store i1 %122, i1* %ZF, align 1, !mcsema_real_eip !31
  store i1 %121, i1* %SF, align 1, !mcsema_real_eip !31
  store i1 %125, i1* %OF, align 1, !mcsema_real_eip !31
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !31
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !31
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %134 = load i64, i64* %43, align 4
  store i64 %134, i64* %42, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  store i11 %49, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !31
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !31
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !31
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !31
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !31
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !31
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !31
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !31
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !31
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !31
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !31
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !31
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !31
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !31
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !31
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !31
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !31
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
}

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

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
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 8}
!4 = !{i64 15}
!5 = !{i64 18}
!6 = !{i64 22}
!7 = !{i64 29}
!8 = !{i64 33}
!9 = !{i64 37}
!10 = !{i64 44}
!11 = !{i64 47}
!12 = !{i64 54}
!13 = !{i64 57}
!14 = !{i64 60}
!15 = !{i64 76}
!16 = !{i64 80}
!17 = !{i64 86}
!18 = !{i64 91}
!19 = !{i64 95}
!20 = !{i64 99}
!21 = !{i64 103}
!22 = !{i64 107}
!23 = !{i64 110}
!24 = !{i64 113}
!25 = !{i64 116}
!26 = !{i64 122}
!27 = !{i64 125}
!28 = !{i64 130}
!29 = !{i64 133}
!30 = !{i64 137}
!31 = !{i64 138}
