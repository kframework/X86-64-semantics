; ModuleID = 'Output/test_34.clang.trans.bc'
source_filename = "Output/test_34.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [23 x i8] }>
%1 = type <{ [8 x i8] }>
%2 = type <{ [8 x i8] }>
%3 = type <{ [8 x i8] }>
%4 = type <{ [8 x i8] }>
%5 = type <{ [8 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2ce = internal constant %0 <{ [23 x i8] c"Error3 in Bubble.\0A\00%d\0A\00" }>, align 64
@data_0x448 = internal unnamed_addr constant %1 <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 64
@data_0x450 = internal constant %2 <{ [8 x i8] c"$N\00\00\00\00\00\00" }>, align 64
@data_0x390 = internal unnamed_addr constant %3 <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 64
@data_0x3e8 = internal unnamed_addr constant %4 <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 64
@data_0x460 = internal unnamed_addr constant %5 <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 64

define internal x86_64_sysvcc void @sub_290(%struct.regs*) {
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
  %6 = load i64, i64* %RDI, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %7 = load i64, i64* %R8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %8 = load i64, i64* %R9, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %9 = load i64, i64* %R10, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %10 = load i64, i64* %R11, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %11 = load i64, i64* %R12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %12 = load i64, i64* %R13, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %13 = load i64, i64* %R14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %14 = load i64, i64* %R15, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %15 = load i64, i64* %RIP, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !2
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %44 = bitcast i8* %43 to i64*
  %45 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %46 = load i64, i64* %44, align 4
  store i64 %46, i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %48 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %50 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %51 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %67 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %68 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %69 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -24
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %70 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %70, !mcsema_real_eip !3
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %71 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 0, i32* %71, !mcsema_real_eip !4
  br label %block_0x2a6, !mcsema_real_eip !5

block_0x2a6:                                      ; preds = %block_0x2b0, %entry
  %RAX_val.0 = phi i64 [ %1, %entry ], [ %154, %block_0x2b0 ]
  %RBX_val.0 = phi i64 [ %2, %entry ], [ %89, %block_0x2b0 ]
  %RCX_val.0 = phi i64 [ %3, %entry ], [ %90, %block_0x2b0 ]
  %RDX_val.0 = phi i64 [ %4, %entry ], [ %91, %block_0x2b0 ]
  %RSI_val.0 = phi i64 [ %5, %entry ], [ %92, %block_0x2b0 ]
  %RDI_val.0 = phi i64 [ %6, %entry ], [ %93, %block_0x2b0 ]
  %R8_val.0 = phi i64 [ %7, %entry ], [ %94, %block_0x2b0 ]
  %R9_val.0 = phi i64 [ %8, %entry ], [ %95, %block_0x2b0 ]
  %R10_val.0 = phi i64 [ %9, %entry ], [ %96, %block_0x2b0 ]
  %R11_val.0 = phi i64 [ %10, %entry ], [ %97, %block_0x2b0 ]
  %R12_val.0 = phi i64 [ %11, %entry ], [ %98, %block_0x2b0 ]
  %R13_val.0 = phi i64 [ %12, %entry ], [ %99, %block_0x2b0 ]
  %R14_val.0 = phi i64 [ %13, %entry ], [ %100, %block_0x2b0 ]
  %RIP_val.0 = phi i64 [ %15, %entry ], [ %102, %block_0x2b0 ]
  %DF_val.0 = phi i1 [ %16, %entry ], [ %103, %block_0x2b0 ]
  %FPU_B_val.0 = phi i1 [ %20, %entry ], [ %104, %block_0x2b0 ]
  %FPU_C3_val.0 = phi i1 [ %21, %entry ], [ %105, %block_0x2b0 ]
  %FPU_TOP_val.0 = phi i3 [ %22, %entry ], [ %106, %block_0x2b0 ]
  %FPU_C2_val.0 = phi i1 [ %23, %entry ], [ %107, %block_0x2b0 ]
  %FPU_C1_val.0 = phi i1 [ %24, %entry ], [ %108, %block_0x2b0 ]
  %FPU_C0_val.0 = phi i1 [ %25, %entry ], [ %109, %block_0x2b0 ]
  %FPU_ES_val.0 = phi i1 [ %26, %entry ], [ %110, %block_0x2b0 ]
  %FPU_SF_val.0 = phi i1 [ %27, %entry ], [ %111, %block_0x2b0 ]
  %FPU_PE_val.0 = phi i1 [ %28, %entry ], [ %112, %block_0x2b0 ]
  %FPU_UE_val.0 = phi i1 [ %29, %entry ], [ %113, %block_0x2b0 ]
  %FPU_OE_val.0 = phi i1 [ %30, %entry ], [ %114, %block_0x2b0 ]
  %FPU_ZE_val.0 = phi i1 [ %31, %entry ], [ %115, %block_0x2b0 ]
  %FPU_DE_val.0 = phi i1 [ %32, %entry ], [ %116, %block_0x2b0 ]
  %FPU_IE_val.0 = phi i1 [ %33, %entry ], [ %117, %block_0x2b0 ]
  %FPU_X_val.0 = phi i1 [ %34, %entry ], [ %118, %block_0x2b0 ]
  %FPU_RC_val.0 = phi i2 [ %35, %entry ], [ %119, %block_0x2b0 ]
  %FPU_PC_val.0 = phi i2 [ %36, %entry ], [ %120, %block_0x2b0 ]
  %FPU_PM_val.0 = phi i1 [ %37, %entry ], [ %121, %block_0x2b0 ]
  %FPU_UM_val.0 = phi i1 [ %38, %entry ], [ %122, %block_0x2b0 ]
  %FPU_OM_val.0 = phi i1 [ %39, %entry ], [ %123, %block_0x2b0 ]
  %FPU_ZM_val.0 = phi i1 [ %40, %entry ], [ %124, %block_0x2b0 ]
  %FPU_DM_val.0 = phi i1 [ %41, %entry ], [ %125, %block_0x2b0 ]
  %FPU_IM_val.0 = phi i1 [ %42, %entry ], [ %126, %block_0x2b0 ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %47, %entry ], [ %128, %block_0x2b0 ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %48, %entry ], [ %129, %block_0x2b0 ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %49, %entry ], [ %130, %block_0x2b0 ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %50, %entry ], [ %131, %block_0x2b0 ]
  %FPU_FOPCODE_val.0 = phi i11 [ %51, %entry ], [ %132, %block_0x2b0 ]
  %XMM0_val.0 = phi i128 [ %52, %entry ], [ %133, %block_0x2b0 ]
  %XMM1_val.0 = phi i128 [ %53, %entry ], [ %134, %block_0x2b0 ]
  %XMM2_val.0 = phi i128 [ %54, %entry ], [ %135, %block_0x2b0 ]
  %XMM3_val.0 = phi i128 [ %55, %entry ], [ %136, %block_0x2b0 ]
  %XMM4_val.0 = phi i128 [ %56, %entry ], [ %137, %block_0x2b0 ]
  %XMM5_val.0 = phi i128 [ %57, %entry ], [ %138, %block_0x2b0 ]
  %XMM6_val.0 = phi i128 [ %58, %entry ], [ %139, %block_0x2b0 ]
  %XMM7_val.0 = phi i128 [ %59, %entry ], [ %140, %block_0x2b0 ]
  %XMM8_val.0 = phi i128 [ %60, %entry ], [ %141, %block_0x2b0 ]
  %XMM9_val.0 = phi i128 [ %61, %entry ], [ %142, %block_0x2b0 ]
  %XMM10_val.0 = phi i128 [ %62, %entry ], [ %143, %block_0x2b0 ]
  %XMM11_val.0 = phi i128 [ %63, %entry ], [ %144, %block_0x2b0 ]
  %XMM12_val.0 = phi i128 [ %64, %entry ], [ %145, %block_0x2b0 ]
  %XMM13_val.0 = phi i128 [ %65, %entry ], [ %146, %block_0x2b0 ]
  %XMM14_val.0 = phi i128 [ %66, %entry ], [ %147, %block_0x2b0 ]
  %XMM15_val.0 = phi i128 [ %67, %entry ], [ %148, %block_0x2b0 ]
  %STACK_BASE_val.0 = phi i64 [ %68, %entry ], [ %149, %block_0x2b0 ]
  %STACK_LIMIT_val.0 = phi i64 [ %69, %entry ], [ %150, %block_0x2b0 ]
  %R15_val.0 = phi i64 [ %14, %entry ], [ %101, %block_0x2b0 ]
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %72 = bitcast i64* %_allin_new_bt_18 to i32*
  %73 = load i32, i32* %72, !mcsema_real_eip !5
  %74 = add i32 %73, -100
  %75 = xor i32 %74, %73, !mcsema_real_eip !5
  %76 = and i32 %75, 16, !mcsema_real_eip !5
  %77 = icmp ne i32 %76, 0, !mcsema_real_eip !5
  %78 = trunc i32 %74 to i8, !mcsema_real_eip !5
  %79 = tail call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !5
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = icmp eq i32 %74, 0, !mcsema_real_eip !5
  %83 = icmp slt i32 %74, 0
  %84 = icmp ult i32 %73, 100, !mcsema_real_eip !5
  %85 = and i32 %75, %73, !mcsema_real_eip !5
  %86 = icmp slt i32 %85, 0
  %tmp = xor i1 %83, %86
  br i1 %tmp, label %block_0x2b0, label %block_0x2c6, !mcsema_real_eip !6

block_0x2b0:                                      ; preds = %block_0x2a6
  %87 = zext i32 %73 to i64, !mcsema_real_eip !7
  %_load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_24, !mcsema_real_eip !8
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %RAX_val.0, i64* %RAX, !mcsema_real_eip !8
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !8
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !8
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !8
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !8
  store i64 %87, i64* %RDI, !mcsema_real_eip !8
  %_new_ptr2int_26 = ptrtoint i8* %_new_gep_23 to i64
  store volatile i64 %_new_ptr2int_26, i64* %RSP
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_28 = ptrtoint i8* %_load_rbp_ptr_27 to i64
  store volatile i64 %_new_ptr2int_28, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !8
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !8
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !8
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !8
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !8
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !8
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !8
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !8
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !8
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !8
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !8
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !8
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !8
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !8
  store i1 %86, i1* %OF, align 1, !mcsema_real_eip !8
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !8
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !8
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !8
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !8
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !8
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !8
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !8
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !8
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !8
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !8
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !8
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !8
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !8
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !8
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !8
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !8
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !8
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !8
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !8
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !8
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !8
  %88 = load i64, i64* %45, align 4
  store i64 %88, i64* %44, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !8
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !8
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !8
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !8
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !8
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !8
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !8
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !8
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !8
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !8
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !8
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !8
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !8
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !8
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !8
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !8
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !8
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !8
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !8
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !8
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !8
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  call void @sub_160.2(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_43)
  %89 = load i64, i64* %RBX, !mcsema_real_eip !8
  %90 = load i64, i64* %RCX, !mcsema_real_eip !8
  %91 = load i64, i64* %RDX, !mcsema_real_eip !8
  %92 = load i64, i64* %RSI, !mcsema_real_eip !8
  %93 = load i64, i64* %RDI, !mcsema_real_eip !8
  %94 = load i64, i64* %R8, !mcsema_real_eip !8
  %95 = load i64, i64* %R9, !mcsema_real_eip !8
  %96 = load i64, i64* %R10, !mcsema_real_eip !8
  %97 = load i64, i64* %R11, !mcsema_real_eip !8
  %98 = load i64, i64* %R12, !mcsema_real_eip !8
  %99 = load i64, i64* %R13, !mcsema_real_eip !8
  %100 = load i64, i64* %R14, !mcsema_real_eip !8
  %101 = load i64, i64* %R15, !mcsema_real_eip !8
  %102 = load i64, i64* %RIP, !mcsema_real_eip !8
  %103 = load i1, i1* %DF, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !8
  %104 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !8
  %105 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !8
  %106 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  %107 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !8
  %108 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !8
  %109 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !8
  %110 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !8
  %111 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !8
  %112 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !8
  %113 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !8
  %114 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !8
  %115 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  %116 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !8
  %117 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !8
  %118 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !8
  %119 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !8
  %120 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !8
  %121 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !8
  %122 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !8
  %123 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !8
  %124 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  %125 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !8
  %126 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !8
  %127 = load i64, i64* %44, align 4
  store i64 %127, i64* %45, align 4
  %128 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  %129 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !8
  %130 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  %131 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !8
  %132 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !8
  %133 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !8
  %134 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !8
  %135 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !8
  %136 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !8
  %137 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !8
  %138 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !8
  %139 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !8
  %140 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !8
  %141 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !8
  %142 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !8
  %143 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !8
  %144 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !8
  %145 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !8
  %146 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !8
  %147 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !8
  %148 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !8
  %149 = load i64, i64* %STACK_BASE, !mcsema_real_eip !8
  %150 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !8
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -8
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %151 = bitcast i64* %_allin_new_bt_31 to i32*
  %152 = load i32, i32* %151, !mcsema_real_eip !9
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %152, i32 1)
  %153 = extractvalue { i32, i1 } %uadd, 0
  %154 = zext i32 %153 to i64, !mcsema_real_eip !10
  store i32 %153, i32* %151, !mcsema_real_eip !11
  br label %block_0x2a6, !mcsema_real_eip !12

block_0x2c6:                                      ; preds = %block_0x2a6
  %_load_rsp_ptr_35 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_36 = ptrtoint i8* %_load_rsp_ptr_35 to i64
  %uadd211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_36, i64 16)
  %155 = extractvalue { i64, i1 } %uadd211, 0
  %156 = xor i64 %155, %_new_ptr2int_36, !mcsema_real_eip !13
  %157 = and i64 %156, 16
  %158 = icmp eq i64 %157, 0
  %159 = icmp slt i64 %155, 0
  %160 = icmp eq i64 %155, 0, !mcsema_real_eip !13
  %161 = xor i64 %_new_ptr2int_36, -9223372036854775808, !mcsema_real_eip !13
  %162 = and i64 %156, %161, !mcsema_real_eip !13
  %163 = icmp slt i64 %162, 0
  %164 = trunc i64 %155 to i8, !mcsema_real_eip !13
  %165 = tail call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !13
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  %168 = extractvalue { i64, i1 } %uadd211, 1
  %_new_int2ptr_ = inttoptr i64 %155 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %169 = inttoptr i64 %155 to i64*, !mcsema_real_eip !14
  %170 = load i64, i64* %169, !mcsema_real_eip !14
  %_new_int2ptr_37 = inttoptr i64 %170 to i8*
  store volatile i8* %_new_int2ptr_37, i8** %_RBP_ptr_
  %171 = add i64 %155, 16, !mcsema_real_eip !15
  %_new_int2ptr_38 = inttoptr i64 %171 to i8*
  store volatile i8* %_new_int2ptr_38, i8** %_RSP_ptr_
  store i64 0, i64* %RAX, !mcsema_real_eip !15
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !15
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !15
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !15
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !15
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !15
  store volatile i64 %171, i64* %RSP
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_42 = ptrtoint i8* %_load_rbp_ptr_41 to i64
  store volatile i64 %_new_ptr2int_42, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !15
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !15
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !15
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !15
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !15
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !15
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !15
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !15
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !15
  store i1 %168, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 %167, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %158, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 %160, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 %159, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 %163, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %172 = load i64, i64* %45, align 4
  store i64 %172, i64* %44, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !15
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !16
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !16
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !16
  %1 = load i64, i64* %RAX, !mcsema_real_eip !16
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !16
  %2 = load i64, i64* %RBX, !mcsema_real_eip !16
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !16
  %3 = load i64, i64* %RCX, !mcsema_real_eip !16
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !16
  %4 = load i64, i64* %RDX, !mcsema_real_eip !16
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !16
  %5 = load i64, i64* %RSI, !mcsema_real_eip !16
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !16
  %6 = load i64, i64* %RDI, !mcsema_real_eip !16
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !16
  %7 = load i64, i64* %RSP, !mcsema_real_eip !16
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !16
  %8 = load i64, i64* %RBP, !mcsema_real_eip !16
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !16
  %9 = load i64, i64* %R8, !mcsema_real_eip !16
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !16
  %10 = load i64, i64* %R9, !mcsema_real_eip !16
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !16
  %11 = load i64, i64* %R10, !mcsema_real_eip !16
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !16
  %12 = load i64, i64* %R11, !mcsema_real_eip !16
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !16
  %13 = load i64, i64* %R12, !mcsema_real_eip !16
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !16
  %14 = load i64, i64* %R13, !mcsema_real_eip !16
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !16
  %15 = load i64, i64* %R14, !mcsema_real_eip !16
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !16
  %16 = load i64, i64* %R15, !mcsema_real_eip !16
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !16
  %17 = load i64, i64* %RIP, !mcsema_real_eip !16
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !16
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !16
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !16
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !16
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !16
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !16
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !16
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !16
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !16
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !16
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !16
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !16
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !16
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !16
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !16
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !16
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !16
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !16
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !16
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !16
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !16
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !16
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !16
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !16
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !16
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !16
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !16
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !16
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !16
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !16
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !16
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !16
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !16
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !16
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !16
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !16
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !16
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !16
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !16
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !16
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !16
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !16
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !16
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !16
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !16
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !16
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !16
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !16
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !16
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !16
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !16
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !16
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !16
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !16
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !16
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !16
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !16
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !16
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !16
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !16
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !16
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !16
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !16
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !16
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !16
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !16
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !16
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !16
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !16
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !16
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !16
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !16
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !16
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !16
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !16
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !16
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !16
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !16
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !16
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !16
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !16
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !16
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !16
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !16
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !16
  %78 = add i64 %7, -8
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !16
  store i64 %8, i64* %79, !mcsema_real_eip !16
  store i64 74755, i64* bitcast (%1* @data_0x448 to i64*), !mcsema_real_eip !17
  %80 = load i64, i64* %79, !mcsema_real_eip !18
  %81 = add i64 %78, 16, !mcsema_real_eip !19
  store i64 %1, i64* %RAX, !mcsema_real_eip !19
  store i64 %2, i64* %RBX, !mcsema_real_eip !19
  store i64 %3, i64* %RCX, !mcsema_real_eip !19
  store i64 %4, i64* %RDX, !mcsema_real_eip !19
  store i64 %5, i64* %RSI, !mcsema_real_eip !19
  store i64 %6, i64* %RDI, !mcsema_real_eip !19
  store i64 %81, i64* %RSP, !mcsema_real_eip !19
  store i64 %80, i64* %RBP, !mcsema_real_eip !19
  store i64 %9, i64* %R8, !mcsema_real_eip !19
  store i64 %10, i64* %R9, !mcsema_real_eip !19
  store i64 %11, i64* %R10, !mcsema_real_eip !19
  store i64 %12, i64* %R11, !mcsema_real_eip !19
  store i64 %13, i64* %R12, !mcsema_real_eip !19
  store i64 %14, i64* %R13, !mcsema_real_eip !19
  store i64 %15, i64* %R14, !mcsema_real_eip !19
  store i64 %16, i64* %R15, !mcsema_real_eip !19
  store i64 %17, i64* %RIP, !mcsema_real_eip !19
  store i1 %18, i1* %CF, align 1, !mcsema_real_eip !19
  store i1 %19, i1* %PF, align 1, !mcsema_real_eip !19
  store i1 %20, i1* %AF, align 1, !mcsema_real_eip !19
  store i1 %21, i1* %ZF, align 1, !mcsema_real_eip !19
  store i1 %22, i1* %SF, align 1, !mcsema_real_eip !19
  store i1 %23, i1* %OF, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  store i1 %28, i1* %FPU_B, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  store i3 %30, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  store i1 %34, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  store i1 %35, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  store i1 %36, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  store i1 %42, i1* %FPU_X, align 1, !mcsema_real_eip !19
  store i2 %43, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  store i2 %44, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  store i1 %45, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  store i1 %46, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  store i1 %47, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  store i1 %48, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  store i1 %49, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  store i1 %50, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %82 = load i64, i64* %53, align 4
  store i64 %82, i64* %52, align 4
  store i16 %55, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  store i64 %56, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  store i16 %57, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  store i64 %58, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  store i11 %59, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM0, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM1, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM2, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM3, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM4, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM5, align 1, !mcsema_real_eip !19
  store i128 %66, i128* %XMM6, align 1, !mcsema_real_eip !19
  store i128 %67, i128* %XMM7, align 1, !mcsema_real_eip !19
  store i128 %68, i128* %XMM8, align 1, !mcsema_real_eip !19
  store i128 %69, i128* %XMM9, align 1, !mcsema_real_eip !19
  store i128 %70, i128* %XMM10, align 1, !mcsema_real_eip !19
  store i128 %71, i128* %XMM11, align 1, !mcsema_real_eip !19
  store i128 %72, i128* %XMM12, align 1, !mcsema_real_eip !19
  store i128 %73, i128* %XMM13, align 1, !mcsema_real_eip !19
  store i128 %74, i128* %XMM14, align 1, !mcsema_real_eip !19
  store i128 %75, i128* %XMM15, align 1, !mcsema_real_eip !19
  store i64 %76, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  store i64 %77, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

define internal x86_64_sysvcc void @sub_160(%struct.regs*) {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !20
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !20
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !20
  %1 = load i64, i64* %RAX, !mcsema_real_eip !20
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !20
  %2 = load i64, i64* %RBX, !mcsema_real_eip !20
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !20
  %3 = load i64, i64* %RCX, !mcsema_real_eip !20
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !20
  %4 = load i64, i64* %RDX, !mcsema_real_eip !20
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !20
  %5 = load i64, i64* %RSI, !mcsema_real_eip !20
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !20
  %6 = load i64, i64* %RDI, !mcsema_real_eip !20
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !20
  %7 = load i64, i64* %RSP, !mcsema_real_eip !20
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !20
  %8 = load i64, i64* %RBP, !mcsema_real_eip !20
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !20
  %9 = load i64, i64* %R8, !mcsema_real_eip !20
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !20
  %10 = load i64, i64* %R9, !mcsema_real_eip !20
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !20
  %11 = load i64, i64* %R10, !mcsema_real_eip !20
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !20
  %12 = load i64, i64* %R11, !mcsema_real_eip !20
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !20
  %13 = load i64, i64* %R12, !mcsema_real_eip !20
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !20
  %14 = load i64, i64* %R13, !mcsema_real_eip !20
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !20
  %15 = load i64, i64* %R14, !mcsema_real_eip !20
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !20
  %16 = load i64, i64* %R15, !mcsema_real_eip !20
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !20
  %17 = load i64, i64* %RIP, !mcsema_real_eip !20
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !20
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !20
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !20
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !20
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !20
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !20
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !20
  %18 = load i1, i1* %DF, align 1, !mcsema_real_eip !20
  %19 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !20
  %20 = bitcast x86_fp80* %19 to i8*, !mcsema_real_eip !20
  %21 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !20
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !20
  %22 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !20
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !20
  %23 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !20
  %24 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !20
  %25 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !20
  %26 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !20
  %27 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !20
  %28 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !20
  %29 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !20
  %30 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !20
  %31 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !20
  %32 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !20
  %33 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !20
  %34 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !20
  %35 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !20
  %36 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !20
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !20
  %37 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !20
  %38 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !20
  %39 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !20
  %40 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !20
  %41 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !20
  %42 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !20
  %43 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !20
  %44 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %45 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !20
  %46 = bitcast i8* %45 to i64*
  %47 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %48 = load i64, i64* %46, align 4
  store i64 %48, i64* %47, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !20
  %49 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !20
  %50 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !20
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !20
  %51 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !20
  %52 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !20
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !20
  %53 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !20
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !20
  %54 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !20
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !20
  %55 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !20
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !20
  %56 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !20
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !20
  %57 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !20
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !20
  %58 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !20
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !20
  %59 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !20
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !20
  %60 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !20
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !20
  %61 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !20
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !20
  %62 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !20
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !20
  %63 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !20
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !20
  %64 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !20
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !20
  %65 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !20
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !20
  %66 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !20
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !20
  %67 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !20
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !20
  %68 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !20
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !20
  %69 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !20
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !20
  %70 = load i64, i64* %STACK_BASE, !mcsema_real_eip !20
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !20
  %71 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !20
  %72 = add i64 %7, -8
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !20
  store i64 %8, i64* %73, !mcsema_real_eip !20
  %74 = add i64 %7, -40
  %75 = xor i64 %74, %72, !mcsema_real_eip !21
  %76 = and i64 %75, 16, !mcsema_real_eip !21
  %77 = icmp ne i64 %76, 0, !mcsema_real_eip !21
  %78 = trunc i64 %74 to i8, !mcsema_real_eip !21
  %79 = tail call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !21
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = icmp eq i64 %74, 0, !mcsema_real_eip !21
  %83 = icmp slt i64 %74, 0
  %84 = icmp ult i64 %72, 32, !mcsema_real_eip !21
  %85 = and i64 %75, %72, !mcsema_real_eip !21
  %86 = icmp slt i64 %85, 0
  %87 = add i64 %72, -4, !mcsema_real_eip !22
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !22
  %89 = trunc i64 %6 to i32, !mcsema_real_eip !22
  %90 = bitcast i64* %88 to i32*
  store i32 %89, i32* %90, !mcsema_real_eip !22
  %91 = add i64 %74, -8
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !23
  store i64 -4981261766360305936, i64* %92, !mcsema_real_eip !23
  store i64 %1, i64* %RAX, !mcsema_real_eip !23
  store i64 %2, i64* %RBX, !mcsema_real_eip !23
  store i64 %3, i64* %RCX, !mcsema_real_eip !23
  store i64 %4, i64* %RDX, !mcsema_real_eip !23
  store i64 %5, i64* %RSI, !mcsema_real_eip !23
  store i64 %6, i64* %RDI, !mcsema_real_eip !23
  store i64 %91, i64* %RSP, !mcsema_real_eip !23
  store i64 %72, i64* %RBP, !mcsema_real_eip !23
  store i64 %9, i64* %R8, !mcsema_real_eip !23
  store i64 %10, i64* %R9, !mcsema_real_eip !23
  store i64 %11, i64* %R10, !mcsema_real_eip !23
  store i64 %12, i64* %R11, !mcsema_real_eip !23
  store i64 %13, i64* %R12, !mcsema_real_eip !23
  store i64 %14, i64* %R13, !mcsema_real_eip !23
  store i64 %15, i64* %R14, !mcsema_real_eip !23
  store i64 %16, i64* %R15, !mcsema_real_eip !23
  store i64 %17, i64* %RIP, !mcsema_real_eip !23
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !23
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !23
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !23
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !23
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !23
  store i1 %86, i1* %OF, align 1, !mcsema_real_eip !23
  store i1 %18, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  store i1 %22, i1* %FPU_B, align 1, !mcsema_real_eip !23
  store i1 %23, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  store i3 %24, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  store i1 %25, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  store i1 %26, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  store i1 %27, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  store i1 %28, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  store i1 %29, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  store i1 %30, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  store i1 %31, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  store i1 %32, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  store i1 %33, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  store i1 %34, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  store i1 %35, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  store i1 %36, i1* %FPU_X, align 1, !mcsema_real_eip !23
  store i2 %37, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  store i2 %38, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  store i1 %39, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  store i1 %40, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  store i1 %41, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  store i1 %42, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  store i1 %43, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  store i1 %44, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %93 = load i64, i64* %47, align 4
  store i64 %93, i64* %46, align 4
  store i16 %49, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  store i64 %50, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  store i16 %51, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  store i64 %52, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  store i11 %53, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  store i128 %54, i128* %XMM0, align 1, !mcsema_real_eip !23
  store i128 %55, i128* %XMM1, align 1, !mcsema_real_eip !23
  store i128 %56, i128* %XMM2, align 1, !mcsema_real_eip !23
  store i128 %57, i128* %XMM3, align 1, !mcsema_real_eip !23
  store i128 %58, i128* %XMM4, align 1, !mcsema_real_eip !23
  store i128 %59, i128* %XMM5, align 1, !mcsema_real_eip !23
  store i128 %60, i128* %XMM6, align 1, !mcsema_real_eip !23
  store i128 %61, i128* %XMM7, align 1, !mcsema_real_eip !23
  store i128 %62, i128* %XMM8, align 1, !mcsema_real_eip !23
  store i128 %63, i128* %XMM9, align 1, !mcsema_real_eip !23
  store i128 %64, i128* %XMM10, align 1, !mcsema_real_eip !23
  store i128 %65, i128* %XMM11, align 1, !mcsema_real_eip !23
  store i128 %66, i128* %XMM12, align 1, !mcsema_real_eip !23
  store i128 %67, i128* %XMM13, align 1, !mcsema_real_eip !23
  store i128 %68, i128* %XMM14, align 1, !mcsema_real_eip !23
  store i128 %69, i128* %XMM15, align 1, !mcsema_real_eip !23
  store i64 %70, i64* %STACK_BASE, align 1, !mcsema_real_eip !23
  store i64 %71, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !23
  tail call x86_64_sysvcc void @sub_60(%struct.regs* %0), !mcsema_real_eip !23
  %94 = load i64, i64* %RBX, !mcsema_real_eip !23
  %95 = load i64, i64* %RCX, !mcsema_real_eip !23
  %96 = load i64, i64* %RDX, !mcsema_real_eip !23
  %97 = load i64, i64* %RSI, !mcsema_real_eip !23
  %98 = load i64, i64* %RSP, !mcsema_real_eip !23
  %99 = load i64, i64* %RBP, !mcsema_real_eip !23
  %100 = load i64, i64* %R8, !mcsema_real_eip !23
  %101 = load i64, i64* %R9, !mcsema_real_eip !23
  %102 = load i64, i64* %R10, !mcsema_real_eip !23
  %103 = load i64, i64* %R11, !mcsema_real_eip !23
  %104 = load i64, i64* %R12, !mcsema_real_eip !23
  %105 = load i64, i64* %R13, !mcsema_real_eip !23
  %106 = load i64, i64* %R14, !mcsema_real_eip !23
  %107 = load i64, i64* %R15, !mcsema_real_eip !23
  %108 = load i64, i64* %RIP, !mcsema_real_eip !23
  %109 = load i1, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !23
  %110 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %111 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %112 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %113 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %114 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %115 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %116 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %117 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %118 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %119 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %120 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %121 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %122 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %123 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %124 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %125 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %126 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %127 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %128 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %129 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %130 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %131 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %132 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %133 = load i64, i64* %46, align 4
  store i64 %133, i64* %47, align 4
  %134 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %135 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !23
  %136 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %137 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !23
  %138 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  %139 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !23
  %140 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !23
  %141 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !23
  %142 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !23
  %143 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !23
  %144 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !23
  %145 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !23
  %146 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !23
  %147 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !23
  %148 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !23
  %149 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !23
  %150 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !23
  %151 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !23
  %152 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !23
  %153 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !23
  %154 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !23
  %155 = load i64, i64* %STACK_BASE, !mcsema_real_eip !23
  %156 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !23
  br label %block_0x17b, !mcsema_real_eip !24

block_0x17b:                                      ; preds = %block_0x20b, %entry
  %RCX_val.0 = phi i64 [ %95, %entry ], [ %RCX_val.1, %block_0x20b ]
  %RDX_val.0 = phi i64 [ %96, %entry ], [ %RDX_val.1, %block_0x20b ]
  %storemerge = phi i32 [ 500, %entry ], [ 3, %block_0x20b ]
  store i32 %storemerge, i32* bitcast (%5* @data_0x460 to i32*)
  %157 = add i32 %storemerge, -1
  %158 = xor i32 %157, %storemerge, !mcsema_real_eip !24
  %159 = icmp eq i32 %157, 0, !mcsema_real_eip !24
  %160 = icmp slt i32 %157, 0
  %161 = and i32 %158, %storemerge, !mcsema_real_eip !24
  %162 = icmp slt i32 %161, 0
  %163 = xor i1 %160, %162
  %164 = or i1 %159, %163, !mcsema_real_eip !25
  br i1 %164, label %block_0x221, label %block_0x189, !mcsema_real_eip !25

block_0x189:                                      ; preds = %block_0x17b
  %165 = add i64 %99, -8, !mcsema_real_eip !26
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !26
  %167 = bitcast i64* %166 to i32*
  store i32 1, i32* %167, !mcsema_real_eip !26
  br label %block_0x190, !mcsema_real_eip !27

block_0x221:                                      ; preds = %block_0x17b
  %168 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%2* @data_0x450 to i64), i64 4) to i32*), !mcsema_real_eip !28
  %169 = icmp eq i32 %168, 4
  br i1 %169, label %block_0x235, label %block_0x249, !mcsema_real_eip !29

block_0x235:                                      ; preds = %block_0x221
  %170 = load i32, i32* inttoptr (i64 3104 to i32*), !mcsema_real_eip !30
  %171 = icmp eq i32 %170, 4
  br i1 %171, label %block_0x25d, label %block_0x249, !mcsema_real_eip !31

block_0x249:                                      ; preds = %block_0x235, %block_0x221
  %172 = inttoptr i64 %98 to i64*, !mcsema_real_eip !32
  %173 = load i64, i64* %172, !mcsema_real_eip !32
  %174 = add i64 %98, 8, !mcsema_real_eip !32
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !32
  %176 = load i64, i64* %175, !mcsema_real_eip !32
  %177 = add i64 %98, 16, !mcsema_real_eip !32
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !32
  %179 = load i64, i64* %178, !mcsema_real_eip !32
  %180 = add i64 %98, 24, !mcsema_real_eip !32
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !32
  %182 = load i64, i64* %181, !mcsema_real_eip !32
  %183 = add i64 %98, 32, !mcsema_real_eip !32
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !32
  %185 = load i64, i64* %184, !mcsema_real_eip !32
  %186 = add i64 %98, 40, !mcsema_real_eip !32
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !32
  %188 = load i64, i64* %187, !mcsema_real_eip !32
  %189 = add i64 %98, 48, !mcsema_real_eip !32
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !32
  %191 = load i64, i64* %190, !mcsema_real_eip !32
  %192 = add i64 %98, 56, !mcsema_real_eip !32
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !32
  %194 = load i64, i64* %193, !mcsema_real_eip !32
  %195 = add i64 %98, 64, !mcsema_real_eip !32
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !32
  %197 = load i64, i64* %196, !mcsema_real_eip !32
  %198 = add i64 %98, 72, !mcsema_real_eip !32
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !32
  %200 = load i64, i64* %199, !mcsema_real_eip !32
  %201 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0x2ce to i64), i64 %97, i64 %RDX_val.0, i64 %RCX_val.0, i64 %100, i64 %101, i64 %173, i64 %176, i64 %179, i64 %182, i64 %185, i64 %188, i64 %191, i64 %194, i64 %197, i64 %200), !mcsema_real_eip !32
  %202 = add i64 %99, -16, !mcsema_real_eip !33
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !33
  %204 = trunc i64 %201 to i32, !mcsema_real_eip !33
  %205 = bitcast i64* %203 to i32*
  store i32 %204, i32* %205, !mcsema_real_eip !33
  br label %block_0x25d, !mcsema_real_eip !30

block_0x190:                                      ; preds = %block_0x1fd, %block_0x189
  %RCX_val.1 = phi i64 [ %RCX_val.0, %block_0x189 ], [ %RCX_val.2, %block_0x1fd ]
  %RDX_val.1 = phi i64 [ %RDX_val.0, %block_0x189 ], [ %RDX_val.2, %block_0x1fd ]
  %206 = load i32, i32* %167, !mcsema_real_eip !34
  %207 = sub i32 %206, 4, !mcsema_real_eip !35
  %208 = xor i32 %207, %206, !mcsema_real_eip !35
  %209 = icmp slt i32 %207, 0
  %210 = xor i32 4, %206, !mcsema_real_eip !35
  %211 = and i32 %208, %210, !mcsema_real_eip !35
  %212 = icmp slt i32 %211, 0
  %tmp = xor i1 %209, %212
  br i1 %tmp, label %block_0x1a0, label %block_0x20b, !mcsema_real_eip !36

block_0x25d:                                      ; preds = %block_0x249, %block_0x235
  %213 = add i64 %99, -4, !mcsema_real_eip !37
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !37
  %215 = bitcast i64* %214 to i32*
  %216 = load i32, i32* %215, !mcsema_real_eip !37
  %uadd218 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %216, i32 1)
  %217 = extractvalue { i32, i1 } %uadd218, 0
  %218 = sext i32 %217 to i64, !mcsema_real_eip !38
  %219 = shl nsw i64 %218, 2
  %220 = add i64 %219, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !39
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !39
  %222 = bitcast i64* %221 to i32*
  %223 = load i32, i32* %222, !mcsema_real_eip !39
  %224 = zext i32 %223 to i64, !mcsema_real_eip !39
  %225 = inttoptr i64 %98 to i64*, !mcsema_real_eip !40
  %226 = load i64, i64* %225, !mcsema_real_eip !40
  %227 = add i64 %98, 8, !mcsema_real_eip !40
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !40
  %229 = load i64, i64* %228, !mcsema_real_eip !40
  %230 = add i64 %98, 16, !mcsema_real_eip !40
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !40
  %232 = load i64, i64* %231, !mcsema_real_eip !40
  %233 = add i64 %98, 24, !mcsema_real_eip !40
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !40
  %235 = load i64, i64* %234, !mcsema_real_eip !40
  %236 = add i64 %98, 32, !mcsema_real_eip !40
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !40
  %238 = load i64, i64* %237, !mcsema_real_eip !40
  %239 = add i64 %98, 40, !mcsema_real_eip !40
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !40
  %241 = load i64, i64* %240, !mcsema_real_eip !40
  %242 = add i64 %98, 48, !mcsema_real_eip !40
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !40
  %244 = load i64, i64* %243, !mcsema_real_eip !40
  %245 = add i64 %98, 56, !mcsema_real_eip !40
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !40
  %247 = load i64, i64* %246, !mcsema_real_eip !40
  %248 = add i64 %98, 64, !mcsema_real_eip !40
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !40
  %250 = load i64, i64* %249, !mcsema_real_eip !40
  %251 = add i64 %98, 72, !mcsema_real_eip !40
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !40
  %253 = load i64, i64* %252, !mcsema_real_eip !40
  %254 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%0* @data_0x2ce to i64), i64 19), i64 %224, i64 %RDX_val.0, i64 %218, i64 %100, i64 %101, i64 %226, i64 %229, i64 %232, i64 %235, i64 %238, i64 %241, i64 %244, i64 %247, i64 %250, i64 %253), !mcsema_real_eip !40
  %255 = add i64 %99, -20, !mcsema_real_eip !41
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !41
  %257 = trunc i64 %254 to i32, !mcsema_real_eip !41
  %258 = bitcast i64* %256 to i32*
  store i32 %257, i32* %258, !mcsema_real_eip !41
  %uadd219 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %98, i64 32)
  %259 = extractvalue { i64, i1 } %uadd219, 0
  %260 = xor i64 %259, %98, !mcsema_real_eip !42
  %261 = and i64 %260, 16, !mcsema_real_eip !42
  %262 = icmp ne i64 %261, 0, !mcsema_real_eip !42
  %263 = icmp slt i64 %259, 0
  %264 = icmp eq i64 %259, 0, !mcsema_real_eip !42
  %265 = xor i64 %98, -9223372036854775808, !mcsema_real_eip !42
  %266 = and i64 %260, %265, !mcsema_real_eip !42
  %267 = icmp slt i64 %266, 0
  %268 = trunc i64 %259 to i8, !mcsema_real_eip !42
  %269 = tail call i8 @llvm.ctpop.i8(i8 %268), !mcsema_real_eip !42
  %270 = and i8 %269, 1
  %271 = icmp eq i8 %270, 0
  %272 = extractvalue { i64, i1 } %uadd219, 1
  %273 = inttoptr i64 %259 to i64*, !mcsema_real_eip !43
  %274 = load i64, i64* %273, !mcsema_real_eip !43
  %275 = add i64 %259, 16, !mcsema_real_eip !44
  store i64 %254, i64* %RAX, !mcsema_real_eip !44
  store i64 %94, i64* %RBX, !mcsema_real_eip !44
  store i64 %218, i64* %RCX, !mcsema_real_eip !44
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !44
  store i64 %224, i64* %RSI, !mcsema_real_eip !44
  store i64 add (i64 ptrtoint (%0* @data_0x2ce to i64), i64 19), i64* %RDI, !mcsema_real_eip !44
  store i64 %275, i64* %RSP, !mcsema_real_eip !44
  store i64 %274, i64* %RBP, !mcsema_real_eip !44
  store i64 %100, i64* %R8, !mcsema_real_eip !44
  store i64 %101, i64* %R9, !mcsema_real_eip !44
  store i64 %102, i64* %R10, !mcsema_real_eip !44
  store i64 %103, i64* %R11, !mcsema_real_eip !44
  store i64 %104, i64* %R12, !mcsema_real_eip !44
  store i64 %105, i64* %R13, !mcsema_real_eip !44
  store i64 %106, i64* %R14, !mcsema_real_eip !44
  store i64 %107, i64* %R15, !mcsema_real_eip !44
  store i64 %108, i64* %RIP, !mcsema_real_eip !44
  store i1 %272, i1* %CF, align 1, !mcsema_real_eip !44
  store i1 %271, i1* %PF, align 1, !mcsema_real_eip !44
  store i1 %262, i1* %AF, align 1, !mcsema_real_eip !44
  store i1 %264, i1* %ZF, align 1, !mcsema_real_eip !44
  store i1 %263, i1* %SF, align 1, !mcsema_real_eip !44
  store i1 %267, i1* %OF, align 1, !mcsema_real_eip !44
  store i1 %109, i1* %DF, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 128, i32 8, i1 false), !mcsema_real_eip !44
  store i1 %110, i1* %FPU_B, align 1, !mcsema_real_eip !44
  store i1 %111, i1* %FPU_C3, align 1, !mcsema_real_eip !44
  store i3 %112, i3* %FPU_TOP, align 1, !mcsema_real_eip !44
  store i1 %113, i1* %FPU_C2, align 1, !mcsema_real_eip !44
  store i1 %114, i1* %FPU_C1, align 1, !mcsema_real_eip !44
  store i1 %115, i1* %FPU_C0, align 1, !mcsema_real_eip !44
  store i1 %116, i1* %FPU_ES, align 1, !mcsema_real_eip !44
  store i1 %117, i1* %FPU_SF, align 1, !mcsema_real_eip !44
  store i1 %118, i1* %FPU_PE, align 1, !mcsema_real_eip !44
  store i1 %119, i1* %FPU_UE, align 1, !mcsema_real_eip !44
  store i1 %120, i1* %FPU_OE, align 1, !mcsema_real_eip !44
  store i1 %121, i1* %FPU_ZE, align 1, !mcsema_real_eip !44
  store i1 %122, i1* %FPU_DE, align 1, !mcsema_real_eip !44
  store i1 %123, i1* %FPU_IE, align 1, !mcsema_real_eip !44
  store i1 %124, i1* %FPU_X, align 1, !mcsema_real_eip !44
  store i2 %125, i2* %FPU_RC, align 1, !mcsema_real_eip !44
  store i2 %126, i2* %FPU_PC, align 1, !mcsema_real_eip !44
  store i1 %127, i1* %FPU_PM, align 1, !mcsema_real_eip !44
  store i1 %128, i1* %FPU_UM, align 1, !mcsema_real_eip !44
  store i1 %129, i1* %FPU_OM, align 1, !mcsema_real_eip !44
  store i1 %130, i1* %FPU_ZM, align 1, !mcsema_real_eip !44
  store i1 %131, i1* %FPU_DM, align 1, !mcsema_real_eip !44
  store i1 %132, i1* %FPU_IM, align 1, !mcsema_real_eip !44
  %276 = load i64, i64* %47, align 4
  store i64 %276, i64* %46, align 4
  store i16 %134, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !44
  store i64 %135, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !44
  store i16 %136, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !44
  store i64 %137, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !44
  store i11 %138, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !44
  store i128 %139, i128* %XMM0, align 1, !mcsema_real_eip !44
  store i128 %140, i128* %XMM1, align 1, !mcsema_real_eip !44
  store i128 %141, i128* %XMM2, align 1, !mcsema_real_eip !44
  store i128 %142, i128* %XMM3, align 1, !mcsema_real_eip !44
  store i128 %143, i128* %XMM4, align 1, !mcsema_real_eip !44
  store i128 %144, i128* %XMM5, align 1, !mcsema_real_eip !44
  store i128 %145, i128* %XMM6, align 1, !mcsema_real_eip !44
  store i128 %146, i128* %XMM7, align 1, !mcsema_real_eip !44
  store i128 %147, i128* %XMM8, align 1, !mcsema_real_eip !44
  store i128 %148, i128* %XMM9, align 1, !mcsema_real_eip !44
  store i128 %149, i128* %XMM10, align 1, !mcsema_real_eip !44
  store i128 %150, i128* %XMM11, align 1, !mcsema_real_eip !44
  store i128 %151, i128* %XMM12, align 1, !mcsema_real_eip !44
  store i128 %152, i128* %XMM13, align 1, !mcsema_real_eip !44
  store i128 %153, i128* %XMM14, align 1, !mcsema_real_eip !44
  store i128 %154, i128* %XMM15, align 1, !mcsema_real_eip !44
  store i64 %155, i64* %STACK_BASE, align 1, !mcsema_real_eip !44
  store i64 %156, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44

block_0x1a0:                                      ; preds = %block_0x190
  %277 = sext i32 %206 to i64, !mcsema_real_eip !45
  %278 = shl nsw i64 %277, 2
  %279 = add i64 %278, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !46
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !46
  %281 = bitcast i64* %280 to i32*
  %282 = load i32, i32* %281, !mcsema_real_eip !46
  %283 = zext i32 %282 to i64, !mcsema_real_eip !46
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %206, i32 1)
  %284 = extractvalue { i32, i1 } %uadd, 0
  %285 = zext i32 %284 to i64, !mcsema_real_eip !47
  %286 = sext i32 %284 to i64, !mcsema_real_eip !48
  %287 = shl nsw i64 %286, 2
  %288 = add i64 %287, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !49
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !49
  %290 = bitcast i64* %289 to i32*
  %291 = load i32, i32* %290, !mcsema_real_eip !49
  %292 = sub i32 %282, %291, !mcsema_real_eip !49
  %293 = xor i32 %292, %282, !mcsema_real_eip !49
  %294 = icmp eq i32 %282, %291
  %295 = icmp slt i32 %292, 0
  %296 = xor i32 %282, %291, !mcsema_real_eip !49
  %297 = and i32 %293, %296, !mcsema_real_eip !49
  %298 = icmp slt i32 %297, 0
  %299 = xor i1 %295, %298
  %300 = or i1 %294, %299, !mcsema_real_eip !50
  br i1 %300, label %block_0x1fd, label %block_0x1c1, !mcsema_real_eip !50

block_0x20b:                                      ; preds = %block_0x190
  br label %block_0x17b, !mcsema_real_eip !51

block_0x1c1:                                      ; preds = %block_0x1a0
  %301 = add i64 %99, -12, !mcsema_real_eip !52
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !52
  %303 = bitcast i64* %302 to i32*
  store i32 %282, i32* %303, !mcsema_real_eip !52
  %304 = load i32, i32* %167, !mcsema_real_eip !53
  %uadd214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %304, i32 1)
  %305 = extractvalue { i32, i1 } %uadd214, 0
  %306 = sext i32 %305 to i64, !mcsema_real_eip !54
  %307 = shl nsw i64 %306, 2
  %308 = add i64 %307, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !55
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !55
  %310 = bitcast i64* %309 to i32*
  %311 = load i32, i32* %310, !mcsema_real_eip !55
  %312 = zext i32 %311 to i64, !mcsema_real_eip !55
  %313 = sext i32 %304 to i64, !mcsema_real_eip !56
  %314 = shl nsw i64 %313, 2
  %315 = add i64 %314, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !57
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !57
  %317 = bitcast i64* %316 to i32*
  store i32 %311, i32* %317, !mcsema_real_eip !57
  %318 = load i32, i32* %303, !mcsema_real_eip !58
  %319 = zext i32 %318 to i64, !mcsema_real_eip !58
  %320 = load i32, i32* %167, !mcsema_real_eip !59
  %uadd215 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %320, i32 1)
  %321 = extractvalue { i32, i1 } %uadd215, 0
  %322 = zext i32 %321 to i64, !mcsema_real_eip !60
  %323 = sext i32 %321 to i64, !mcsema_real_eip !61
  %324 = shl nsw i64 %323, 2
  %325 = add i64 %324, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !62
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !62
  %327 = bitcast i64* %326 to i32*
  store i32 %318, i32* %327, !mcsema_real_eip !62
  br label %block_0x1fd

block_0x1fd:                                      ; preds = %block_0x1c1, %block_0x1a0
  %RCX_val.2 = phi i64 [ %283, %block_0x1a0 ], [ %319, %block_0x1c1 ]
  %RDX_val.2 = phi i64 [ %285, %block_0x1a0 ], [ %322, %block_0x1c1 ]
  %328 = load i32, i32* %167, !mcsema_real_eip !63
  %uadd216 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %328, i32 1)
  %329 = extractvalue { i32, i1 } %uadd216, 0
  store i32 %329, i32* %167, !mcsema_real_eip !64
  br label %block_0x190, !mcsema_real_eip !65
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_60(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !66
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !66
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !66
  %1 = load i64, i64* %RAX, !mcsema_real_eip !66
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !66
  %2 = load i64, i64* %RBX, !mcsema_real_eip !66
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !66
  %3 = load i64, i64* %RCX, !mcsema_real_eip !66
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !66
  %4 = load i64, i64* %RDX, !mcsema_real_eip !66
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !66
  %5 = load i64, i64* %RSI, !mcsema_real_eip !66
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !66
  %6 = load i64, i64* %RDI, !mcsema_real_eip !66
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !66
  %7 = load i64, i64* %RSP, !mcsema_real_eip !66
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !66
  %8 = load i64, i64* %RBP, !mcsema_real_eip !66
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !66
  %9 = load i64, i64* %R8, !mcsema_real_eip !66
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !66
  %10 = load i64, i64* %R9, !mcsema_real_eip !66
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !66
  %11 = load i64, i64* %R10, !mcsema_real_eip !66
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !66
  %12 = load i64, i64* %R11, !mcsema_real_eip !66
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !66
  %13 = load i64, i64* %R12, !mcsema_real_eip !66
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !66
  %14 = load i64, i64* %R13, !mcsema_real_eip !66
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !66
  %15 = load i64, i64* %R14, !mcsema_real_eip !66
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !66
  %16 = load i64, i64* %R15, !mcsema_real_eip !66
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !66
  %17 = load i64, i64* %RIP, !mcsema_real_eip !66
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !66
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !66
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !66
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !66
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !66
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !66
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !66
  %18 = load i1, i1* %DF, align 1, !mcsema_real_eip !66
  %19 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !66
  %20 = bitcast x86_fp80* %19 to i8*, !mcsema_real_eip !66
  %21 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !66
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !66
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !66
  %22 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !66
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !66
  %23 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !66
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !66
  %24 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !66
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !66
  %25 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !66
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !66
  %26 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !66
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !66
  %27 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !66
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !66
  %28 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !66
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !66
  %29 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !66
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !66
  %30 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !66
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !66
  %31 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !66
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !66
  %32 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !66
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !66
  %33 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !66
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !66
  %34 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !66
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !66
  %35 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !66
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !66
  %36 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !66
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !66
  %37 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !66
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !66
  %38 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !66
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !66
  %39 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !66
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !66
  %40 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !66
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !66
  %41 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !66
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !66
  %42 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !66
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !66
  %43 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !66
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !66
  %44 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !66
  %45 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !66
  %46 = bitcast i8* %45 to i64*
  %47 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %48 = load i64, i64* %46, align 4
  store i64 %48, i64* %47, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !66
  %49 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !66
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !66
  %50 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !66
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !66
  %51 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !66
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !66
  %52 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !66
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !66
  %53 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !66
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !66
  %54 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !66
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !66
  %55 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !66
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !66
  %56 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !66
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !66
  %57 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !66
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !66
  %58 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !66
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !66
  %59 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !66
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !66
  %60 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !66
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !66
  %61 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !66
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !66
  %62 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !66
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !66
  %63 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !66
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !66
  %64 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !66
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !66
  %65 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !66
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !66
  %66 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !66
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !66
  %67 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !66
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !66
  %68 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !66
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !66
  %69 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !66
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !66
  %70 = load i64, i64* %STACK_BASE, !mcsema_real_eip !66
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !66
  %71 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !66
  %72 = add i64 %7, -8
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !66
  store i64 %8, i64* %73, !mcsema_real_eip !66
  %74 = add i64 %7, -40
  %75 = xor i64 %74, %72, !mcsema_real_eip !67
  %76 = and i64 %75, 16, !mcsema_real_eip !67
  %77 = icmp ne i64 %76, 0, !mcsema_real_eip !67
  %78 = trunc i64 %74 to i8, !mcsema_real_eip !67
  %79 = tail call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !67
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = icmp eq i64 %74, 0, !mcsema_real_eip !67
  %83 = icmp slt i64 %74, 0
  %84 = icmp ult i64 %72, 32, !mcsema_real_eip !67
  %85 = and i64 %75, %72, !mcsema_real_eip !67
  %86 = icmp slt i64 %85, 0
  %87 = add i64 %7, -48
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !68
  store i64 -4981261766360305936, i64* %88, !mcsema_real_eip !68
  store i64 %1, i64* %RAX, !mcsema_real_eip !68
  store i64 %2, i64* %RBX, !mcsema_real_eip !68
  store i64 %3, i64* %RCX, !mcsema_real_eip !68
  store i64 %4, i64* %RDX, !mcsema_real_eip !68
  store i64 %5, i64* %RSI, !mcsema_real_eip !68
  store i64 %6, i64* %RDI, !mcsema_real_eip !68
  store i64 %87, i64* %RSP, !mcsema_real_eip !68
  store i64 %72, i64* %RBP, !mcsema_real_eip !68
  store i64 %9, i64* %R8, !mcsema_real_eip !68
  store i64 %10, i64* %R9, !mcsema_real_eip !68
  store i64 %11, i64* %R10, !mcsema_real_eip !68
  store i64 %12, i64* %R11, !mcsema_real_eip !68
  store i64 %13, i64* %R12, !mcsema_real_eip !68
  store i64 %14, i64* %R13, !mcsema_real_eip !68
  store i64 %15, i64* %R14, !mcsema_real_eip !68
  store i64 %16, i64* %R15, !mcsema_real_eip !68
  store i64 %17, i64* %RIP, !mcsema_real_eip !68
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !68
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !68
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !68
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !68
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !68
  store i1 %86, i1* %OF, align 1, !mcsema_real_eip !68
  store i1 %18, i1* %DF, align 1, !mcsema_real_eip !68
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 128, i32 8, i1 false), !mcsema_real_eip !68
  store i1 %22, i1* %FPU_B, align 1, !mcsema_real_eip !68
  store i1 %23, i1* %FPU_C3, align 1, !mcsema_real_eip !68
  store i3 %24, i3* %FPU_TOP, align 1, !mcsema_real_eip !68
  store i1 %25, i1* %FPU_C2, align 1, !mcsema_real_eip !68
  store i1 %26, i1* %FPU_C1, align 1, !mcsema_real_eip !68
  store i1 %27, i1* %FPU_C0, align 1, !mcsema_real_eip !68
  store i1 %28, i1* %FPU_ES, align 1, !mcsema_real_eip !68
  store i1 %29, i1* %FPU_SF, align 1, !mcsema_real_eip !68
  store i1 %30, i1* %FPU_PE, align 1, !mcsema_real_eip !68
  store i1 %31, i1* %FPU_UE, align 1, !mcsema_real_eip !68
  store i1 %32, i1* %FPU_OE, align 1, !mcsema_real_eip !68
  store i1 %33, i1* %FPU_ZE, align 1, !mcsema_real_eip !68
  store i1 %34, i1* %FPU_DE, align 1, !mcsema_real_eip !68
  store i1 %35, i1* %FPU_IE, align 1, !mcsema_real_eip !68
  store i1 %36, i1* %FPU_X, align 1, !mcsema_real_eip !68
  store i2 %37, i2* %FPU_RC, align 1, !mcsema_real_eip !68
  store i2 %38, i2* %FPU_PC, align 1, !mcsema_real_eip !68
  store i1 %39, i1* %FPU_PM, align 1, !mcsema_real_eip !68
  store i1 %40, i1* %FPU_UM, align 1, !mcsema_real_eip !68
  store i1 %41, i1* %FPU_OM, align 1, !mcsema_real_eip !68
  store i1 %42, i1* %FPU_ZM, align 1, !mcsema_real_eip !68
  store i1 %43, i1* %FPU_DM, align 1, !mcsema_real_eip !68
  store i1 %44, i1* %FPU_IM, align 1, !mcsema_real_eip !68
  %89 = load i64, i64* %47, align 4
  store i64 %89, i64* %46, align 4
  store i16 %49, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !68
  store i64 %50, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !68
  store i16 %51, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !68
  store i64 %52, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !68
  store i11 %53, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !68
  store i128 %54, i128* %XMM0, align 1, !mcsema_real_eip !68
  store i128 %55, i128* %XMM1, align 1, !mcsema_real_eip !68
  store i128 %56, i128* %XMM2, align 1, !mcsema_real_eip !68
  store i128 %57, i128* %XMM3, align 1, !mcsema_real_eip !68
  store i128 %58, i128* %XMM4, align 1, !mcsema_real_eip !68
  store i128 %59, i128* %XMM5, align 1, !mcsema_real_eip !68
  store i128 %60, i128* %XMM6, align 1, !mcsema_real_eip !68
  store i128 %61, i128* %XMM7, align 1, !mcsema_real_eip !68
  store i128 %62, i128* %XMM8, align 1, !mcsema_real_eip !68
  store i128 %63, i128* %XMM9, align 1, !mcsema_real_eip !68
  store i128 %64, i128* %XMM10, align 1, !mcsema_real_eip !68
  store i128 %65, i128* %XMM11, align 1, !mcsema_real_eip !68
  store i128 %66, i128* %XMM12, align 1, !mcsema_real_eip !68
  store i128 %67, i128* %XMM13, align 1, !mcsema_real_eip !68
  store i128 %68, i128* %XMM14, align 1, !mcsema_real_eip !68
  store i128 %69, i128* %XMM15, align 1, !mcsema_real_eip !68
  store i64 %70, i64* %STACK_BASE, align 1, !mcsema_real_eip !68
  store i64 %71, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !68
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !68
  %90 = load i64, i64* %RAX, !mcsema_real_eip !68
  %91 = load i64, i64* %RBX, !mcsema_real_eip !68
  %92 = load i64, i64* %RCX, !mcsema_real_eip !68
  %93 = load i64, i64* %RDX, !mcsema_real_eip !68
  %94 = load i64, i64* %RSI, !mcsema_real_eip !68
  %95 = load i64, i64* %RDI, !mcsema_real_eip !68
  %96 = load i64, i64* %RSP, !mcsema_real_eip !68
  %97 = load i64, i64* %RBP, !mcsema_real_eip !68
  %98 = load i64, i64* %R8, !mcsema_real_eip !68
  %99 = load i64, i64* %R9, !mcsema_real_eip !68
  %100 = load i64, i64* %R10, !mcsema_real_eip !68
  %101 = load i64, i64* %R11, !mcsema_real_eip !68
  %102 = load i64, i64* %R12, !mcsema_real_eip !68
  %103 = load i64, i64* %R13, !mcsema_real_eip !68
  %104 = load i64, i64* %R14, !mcsema_real_eip !68
  %105 = load i64, i64* %R15, !mcsema_real_eip !68
  %106 = load i64, i64* %RIP, !mcsema_real_eip !68
  %107 = load i1, i1* %DF, align 1, !mcsema_real_eip !68
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !68
  %108 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !68
  %109 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !68
  %110 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !68
  %111 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !68
  %112 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !68
  %113 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !68
  %114 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !68
  %115 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !68
  %116 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !68
  %117 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !68
  %118 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !68
  %119 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !68
  %120 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !68
  %121 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !68
  %122 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !68
  %123 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !68
  %124 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !68
  %125 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !68
  %126 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !68
  %127 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !68
  %128 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !68
  %129 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !68
  %130 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !68
  %131 = load i64, i64* %46, align 4
  store i64 %131, i64* %47, align 4
  %132 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !68
  %133 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !68
  %134 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !68
  %135 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !68
  %136 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !68
  %137 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !68
  %138 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !68
  %139 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !68
  %140 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !68
  %141 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !68
  %142 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !68
  %143 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !68
  %144 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !68
  %145 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !68
  %146 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !68
  %147 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !68
  %148 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !68
  %149 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !68
  %150 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !68
  %151 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !68
  %152 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !68
  %153 = load i64, i64* %STACK_BASE, !mcsema_real_eip !68
  %154 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !68
  store i32 0, i32* bitcast (%3* @data_0x390 to i32*), !mcsema_real_eip !69
  store i32 0, i32* bitcast (%4* @data_0x3e8 to i32*), !mcsema_real_eip !70
  %155 = add i64 %97, -4, !mcsema_real_eip !71
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !71
  %157 = bitcast i64* %156 to i32*
  store i32 1, i32* %157, !mcsema_real_eip !71
  br label %block_0x8a, !mcsema_real_eip !72

block_0x8a:                                       ; preds = %block_0x140, %entry
  %RAX_val.0 = phi i64 [ %90, %entry ], [ %303, %block_0x140 ]
  %RBX_val.0 = phi i64 [ %91, %entry ], [ %179, %block_0x140 ]
  %RCX_val.0 = phi i64 [ %92, %entry ], [ %282, %block_0x140 ]
  %RDX_val.0 = phi i64 [ %93, %entry ], [ %250, %block_0x140 ]
  %RSI_val.0 = phi i64 [ %94, %entry ], [ %254, %block_0x140 ]
  %RDI_val.0 = phi i64 [ %95, %entry ], [ 100000, %block_0x140 ]
  %RBP_val.0 = phi i64 [ %97, %entry ], [ %181, %block_0x140 ]
  %RSP_val.0 = phi i64 [ %96, %entry ], [ %180, %block_0x140 ]
  %R8_val.0 = phi i64 [ %98, %entry ], [ %182, %block_0x140 ]
  %R9_val.0 = phi i64 [ %99, %entry ], [ %183, %block_0x140 ]
  %R10_val.0 = phi i64 [ %100, %entry ], [ %184, %block_0x140 ]
  %R11_val.0 = phi i64 [ %101, %entry ], [ %185, %block_0x140 ]
  %R12_val.0 = phi i64 [ %102, %entry ], [ %186, %block_0x140 ]
  %R13_val.0 = phi i64 [ %103, %entry ], [ %187, %block_0x140 ]
  %R14_val.0 = phi i64 [ %104, %entry ], [ %188, %block_0x140 ]
  %RIP_val.0 = phi i64 [ %106, %entry ], [ %190, %block_0x140 ]
  %DF_val.0 = phi i1 [ %107, %entry ], [ %191, %block_0x140 ]
  %FPU_B_val.0 = phi i1 [ %108, %entry ], [ %192, %block_0x140 ]
  %FPU_C3_val.0 = phi i1 [ %109, %entry ], [ %193, %block_0x140 ]
  %FPU_TOP_val.0 = phi i3 [ %110, %entry ], [ %194, %block_0x140 ]
  %FPU_C2_val.0 = phi i1 [ %111, %entry ], [ %195, %block_0x140 ]
  %FPU_C1_val.0 = phi i1 [ %112, %entry ], [ %196, %block_0x140 ]
  %FPU_C0_val.0 = phi i1 [ %113, %entry ], [ %197, %block_0x140 ]
  %FPU_ES_val.0 = phi i1 [ %114, %entry ], [ %198, %block_0x140 ]
  %FPU_SF_val.0 = phi i1 [ %115, %entry ], [ %199, %block_0x140 ]
  %FPU_PE_val.0 = phi i1 [ %116, %entry ], [ %200, %block_0x140 ]
  %FPU_UE_val.0 = phi i1 [ %117, %entry ], [ %201, %block_0x140 ]
  %FPU_OE_val.0 = phi i1 [ %118, %entry ], [ %202, %block_0x140 ]
  %FPU_ZE_val.0 = phi i1 [ %119, %entry ], [ %203, %block_0x140 ]
  %FPU_DE_val.0 = phi i1 [ %120, %entry ], [ %204, %block_0x140 ]
  %FPU_IE_val.0 = phi i1 [ %121, %entry ], [ %205, %block_0x140 ]
  %FPU_X_val.0 = phi i1 [ %122, %entry ], [ %206, %block_0x140 ]
  %FPU_RC_val.0 = phi i2 [ %123, %entry ], [ %207, %block_0x140 ]
  %FPU_PC_val.0 = phi i2 [ %124, %entry ], [ %208, %block_0x140 ]
  %FPU_PM_val.0 = phi i1 [ %125, %entry ], [ %209, %block_0x140 ]
  %FPU_UM_val.0 = phi i1 [ %126, %entry ], [ %210, %block_0x140 ]
  %FPU_OM_val.0 = phi i1 [ %127, %entry ], [ %211, %block_0x140 ]
  %FPU_ZM_val.0 = phi i1 [ %128, %entry ], [ %212, %block_0x140 ]
  %FPU_DM_val.0 = phi i1 [ %129, %entry ], [ %213, %block_0x140 ]
  %FPU_IM_val.0 = phi i1 [ %130, %entry ], [ %214, %block_0x140 ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %132, %entry ], [ %216, %block_0x140 ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %133, %entry ], [ %217, %block_0x140 ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %134, %entry ], [ %218, %block_0x140 ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %135, %entry ], [ %219, %block_0x140 ]
  %FPU_FOPCODE_val.0 = phi i11 [ %136, %entry ], [ %220, %block_0x140 ]
  %XMM0_val.0 = phi i128 [ %137, %entry ], [ %221, %block_0x140 ]
  %XMM1_val.0 = phi i128 [ %138, %entry ], [ %222, %block_0x140 ]
  %XMM2_val.0 = phi i128 [ %139, %entry ], [ %223, %block_0x140 ]
  %XMM3_val.0 = phi i128 [ %140, %entry ], [ %224, %block_0x140 ]
  %XMM4_val.0 = phi i128 [ %141, %entry ], [ %225, %block_0x140 ]
  %XMM5_val.0 = phi i128 [ %142, %entry ], [ %226, %block_0x140 ]
  %XMM6_val.0 = phi i128 [ %143, %entry ], [ %227, %block_0x140 ]
  %XMM7_val.0 = phi i128 [ %144, %entry ], [ %228, %block_0x140 ]
  %XMM8_val.0 = phi i128 [ %145, %entry ], [ %229, %block_0x140 ]
  %XMM9_val.0 = phi i128 [ %146, %entry ], [ %230, %block_0x140 ]
  %XMM10_val.0 = phi i128 [ %147, %entry ], [ %231, %block_0x140 ]
  %XMM11_val.0 = phi i128 [ %148, %entry ], [ %232, %block_0x140 ]
  %XMM12_val.0 = phi i128 [ %149, %entry ], [ %233, %block_0x140 ]
  %XMM13_val.0 = phi i128 [ %150, %entry ], [ %234, %block_0x140 ]
  %XMM14_val.0 = phi i128 [ %151, %entry ], [ %235, %block_0x140 ]
  %XMM15_val.0 = phi i128 [ %152, %entry ], [ %236, %block_0x140 ]
  %STACK_BASE_val.0 = phi i64 [ %153, %entry ], [ %237, %block_0x140 ]
  %STACK_LIMIT_val.0 = phi i64 [ %154, %entry ], [ %238, %block_0x140 ]
  %R15_val.0 = phi i64 [ %105, %entry ], [ %189, %block_0x140 ]
  %158 = add i64 %RBP_val.0, -4, !mcsema_real_eip !72
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !72
  %160 = bitcast i64* %159 to i32*
  %161 = load i32, i32* %160, !mcsema_real_eip !72
  %162 = add i32 %161, -500
  %163 = xor i32 %162, %161, !mcsema_real_eip !72
  %164 = and i32 %163, 16
  %165 = icmp eq i32 %164, 0
  %166 = trunc i32 %162 to i8, !mcsema_real_eip !72
  %167 = tail call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !72
  %168 = and i8 %167, 1
  %169 = icmp eq i8 %168, 0
  %170 = icmp eq i32 %162, 0, !mcsema_real_eip !72
  %171 = icmp slt i32 %162, 0
  %172 = icmp ult i32 %161, 500, !mcsema_real_eip !72
  %173 = and i32 %163, %161, !mcsema_real_eip !72
  %174 = icmp slt i32 %173, 0
  %tmp = xor i1 %171, %174
  %.demorgan = or i1 %170, %tmp
  br i1 %.demorgan, label %block_0x97, label %block_0x14e, !mcsema_real_eip !73

block_0x97:                                       ; preds = %block_0x8a
  %175 = add i64 %RSP_val.0, -8
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !74
  store i64 -4981261766360305936, i64* %176, !mcsema_real_eip !74
  store i64 %RAX_val.0, i64* %RAX, !mcsema_real_eip !74
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !74
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !74
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !74
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !74
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !74
  store i64 %175, i64* %RSP, !mcsema_real_eip !74
  store i64 %RBP_val.0, i64* %RBP, !mcsema_real_eip !74
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !74
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !74
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !74
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !74
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !74
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !74
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !74
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !74
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !74
  store i1 %172, i1* %CF, align 1, !mcsema_real_eip !74
  store i1 %169, i1* %PF, align 1, !mcsema_real_eip !74
  store i1 %165, i1* %AF, align 1, !mcsema_real_eip !74
  store i1 %170, i1* %ZF, align 1, !mcsema_real_eip !74
  store i1 %171, i1* %SF, align 1, !mcsema_real_eip !74
  store i1 %174, i1* %OF, align 1, !mcsema_real_eip !74
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !74
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 128, i32 8, i1 false), !mcsema_real_eip !74
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !74
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !74
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !74
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !74
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !74
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !74
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !74
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !74
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !74
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !74
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !74
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !74
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !74
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !74
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !74
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !74
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !74
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !74
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !74
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !74
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !74
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !74
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !74
  %177 = load i64, i64* %47, align 4
  store i64 %177, i64* %46, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !74
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !74
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !74
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !74
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !74
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !74
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !74
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !74
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !74
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !74
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !74
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !74
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !74
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !74
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !74
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !74
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !74
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !74
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !74
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !74
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !74
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !74
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !74
  tail call x86_64_sysvcc void @sub_20(%struct.regs* %0), !mcsema_real_eip !74
  %178 = load i64, i64* %RAX, !mcsema_real_eip !74
  %179 = load i64, i64* %RBX, !mcsema_real_eip !74
  %180 = load i64, i64* %RSP, !mcsema_real_eip !74
  %181 = load i64, i64* %RBP, !mcsema_real_eip !74
  %182 = load i64, i64* %R8, !mcsema_real_eip !74
  %183 = load i64, i64* %R9, !mcsema_real_eip !74
  %184 = load i64, i64* %R10, !mcsema_real_eip !74
  %185 = load i64, i64* %R11, !mcsema_real_eip !74
  %186 = load i64, i64* %R12, !mcsema_real_eip !74
  %187 = load i64, i64* %R13, !mcsema_real_eip !74
  %188 = load i64, i64* %R14, !mcsema_real_eip !74
  %189 = load i64, i64* %R15, !mcsema_real_eip !74
  %190 = load i64, i64* %RIP, !mcsema_real_eip !74
  %191 = load i1, i1* %DF, align 1, !mcsema_real_eip !74
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !74
  %192 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !74
  %193 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !74
  %194 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !74
  %195 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !74
  %196 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !74
  %197 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !74
  %198 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !74
  %199 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !74
  %200 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !74
  %201 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !74
  %202 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !74
  %203 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !74
  %204 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !74
  %205 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !74
  %206 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !74
  %207 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !74
  %208 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !74
  %209 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !74
  %210 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !74
  %211 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !74
  %212 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !74
  %213 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !74
  %214 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !74
  %215 = load i64, i64* %46, align 4
  store i64 %215, i64* %47, align 4
  %216 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !74
  %217 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !74
  %218 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !74
  %219 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !74
  %220 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !74
  %221 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !74
  %222 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !74
  %223 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !74
  %224 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !74
  %225 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !74
  %226 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !74
  %227 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !74
  %228 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !74
  %229 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !74
  %230 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !74
  %231 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !74
  %232 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !74
  %233 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !74
  %234 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !74
  %235 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !74
  %236 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !74
  %237 = load i64, i64* %STACK_BASE, !mcsema_real_eip !74
  %238 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !74
  %sext = shl i64 %178, 32
  %239 = ashr exact i64 %sext, 32
  %240 = add i64 %181, -16, !mcsema_real_eip !75
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !75
  store i64 %239, i64* %241, !mcsema_real_eip !75
  %242 = add i64 %181, -24, !mcsema_real_eip !76
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !76
  store i64 100000, i64* %243, !mcsema_real_eip !76
  %244 = sext i64 %239 to i128, !mcsema_real_eip !77
  %245 = lshr i128 %244, 64, !mcsema_real_eip !77
  %246 = shl nuw i128 %245, 64, !mcsema_real_eip !78
  %247 = or i128 %246, %244, !mcsema_real_eip !78
  %248 = sdiv i128 %247, 100000, !mcsema_real_eip !78
  %249 = srem i128 %247, 100000, !mcsema_real_eip !78
  %250 = trunc i128 %249 to i64, !mcsema_real_eip !78
  %251 = trunc i128 %248 to i64, !mcsema_real_eip !78
  %252 = mul i64 %251, 100000, !mcsema_real_eip !79
  %253 = sub i64 %239, %252, !mcsema_real_eip !80
  %254 = add i64 %253, -50000
  %255 = and i64 %254, 4294967295
  %256 = add i64 %181, -4, !mcsema_real_eip !81
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !81
  %258 = bitcast i64* %257 to i32*
  %259 = load i32, i32* %258, !mcsema_real_eip !81
  %260 = sext i32 %259 to i64, !mcsema_real_eip !81
  %261 = shl nsw i64 %260, 2
  %262 = add i64 %261, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !82
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !82
  %264 = trunc i64 %255 to i32, !mcsema_real_eip !82
  %265 = bitcast i64* %263 to i32*
  store i32 %264, i32* %265, !mcsema_real_eip !82
  %266 = load i32, i32* %258, !mcsema_real_eip !83
  %267 = sext i32 %266 to i64, !mcsema_real_eip !83
  %268 = shl nsw i64 %267, 2
  %269 = add i64 %268, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !84
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !84
  %271 = bitcast i64* %270 to i32*
  %272 = load i32, i32* %271, !mcsema_real_eip !84
  %273 = sub i32 %272, 4, !mcsema_real_eip !85
  %274 = xor i32 %273, %272, !mcsema_real_eip !85
  %275 = icmp eq i32 %272, 4
  %276 = icmp slt i32 %273, 0
  %277 = xor i32 4, %272, !mcsema_real_eip !85
  %278 = and i32 %274, %277, !mcsema_real_eip !85
  %279 = icmp slt i32 %278, 0
  %280 = xor i1 %276, %279
  %281 = or i1 %275, %280, !mcsema_real_eip !86
  %282 = zext i32 %272 to i64, !mcsema_real_eip !87
  br i1 %281, label %block_0x10c, label %block_0xf5, !mcsema_real_eip !86

block_0x14e:                                      ; preds = %block_0x8a
  %uadd355 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0, i64 32)
  %283 = extractvalue { i64, i1 } %uadd355, 0
  %284 = xor i64 %283, %RSP_val.0, !mcsema_real_eip !88
  %285 = and i64 %284, 16, !mcsema_real_eip !88
  %286 = icmp ne i64 %285, 0, !mcsema_real_eip !88
  %287 = icmp slt i64 %283, 0
  %288 = icmp eq i64 %283, 0, !mcsema_real_eip !88
  %289 = xor i64 %RSP_val.0, -9223372036854775808, !mcsema_real_eip !88
  %290 = and i64 %284, %289, !mcsema_real_eip !88
  %291 = icmp slt i64 %290, 0
  %292 = trunc i64 %283 to i8, !mcsema_real_eip !88
  %293 = tail call i8 @llvm.ctpop.i8(i8 %292), !mcsema_real_eip !88
  %294 = and i8 %293, 1
  %295 = icmp eq i8 %294, 0
  %296 = extractvalue { i64, i1 } %uadd355, 1
  %297 = inttoptr i64 %283 to i64*, !mcsema_real_eip !89
  %298 = load i64, i64* %297, !mcsema_real_eip !89
  %299 = add i64 %283, 16, !mcsema_real_eip !90
  store i64 %RAX_val.0, i64* %RAX, !mcsema_real_eip !90
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !90
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !90
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !90
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !90
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !90
  store i64 %299, i64* %RSP, !mcsema_real_eip !90
  store i64 %298, i64* %RBP, !mcsema_real_eip !90
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !90
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !90
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !90
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !90
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !90
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !90
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !90
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !90
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !90
  store i1 %296, i1* %CF, align 1, !mcsema_real_eip !90
  store i1 %295, i1* %PF, align 1, !mcsema_real_eip !90
  store i1 %286, i1* %AF, align 1, !mcsema_real_eip !90
  store i1 %288, i1* %ZF, align 1, !mcsema_real_eip !90
  store i1 %287, i1* %SF, align 1, !mcsema_real_eip !90
  store i1 %291, i1* %OF, align 1, !mcsema_real_eip !90
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !90
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 128, i32 8, i1 false), !mcsema_real_eip !90
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !90
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !90
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !90
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !90
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !90
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !90
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !90
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !90
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !90
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !90
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !90
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !90
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !90
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !90
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !90
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !90
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !90
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !90
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !90
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !90
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !90
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !90
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !90
  %300 = load i64, i64* %47, align 4
  store i64 %300, i64* %46, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !90
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !90
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !90
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !90
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !90
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !90
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !90
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !90
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !90
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !90
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !90
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !90
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !90
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !90
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !90
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !90
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !90
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !90
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !90
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !90
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !90
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !90
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !90
  ret void, !mcsema_real_eip !90

block_0xf5:                                       ; preds = %block_0x97
  store i32 %272, i32* bitcast (%3* @data_0x390 to i32*), !mcsema_real_eip !91
  br label %block_0x140, !mcsema_real_eip !92

block_0x10c:                                      ; preds = %block_0x97
  br i1 %280, label %block_0x124, label %block_0x140, !mcsema_real_eip !93

block_0x124:                                      ; preds = %block_0x10c
  store i32 %272, i32* bitcast (%4* @data_0x3e8 to i32*), !mcsema_real_eip !94
  br label %block_0x140, !mcsema_real_eip !95

block_0x140:                                      ; preds = %block_0x124, %block_0x10c, %block_0xf5
  %301 = load i32, i32* %258, !mcsema_real_eip !96
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %301, i32 1)
  %302 = extractvalue { i32, i1 } %uadd, 0
  %303 = zext i32 %302 to i64, !mcsema_real_eip !97
  store i32 %302, i32* %258, !mcsema_real_eip !98
  br label %block_0x8a, !mcsema_real_eip !99
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_20(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !100
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !100
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !100
  %1 = load i64, i64* %RAX, !mcsema_real_eip !100
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !100
  %2 = load i64, i64* %RBX, !mcsema_real_eip !100
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !100
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !100
  %3 = load i64, i64* %RDX, !mcsema_real_eip !100
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !100
  %4 = load i64, i64* %RSI, !mcsema_real_eip !100
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !100
  %5 = load i64, i64* %RDI, !mcsema_real_eip !100
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !100
  %6 = load i64, i64* %RSP, !mcsema_real_eip !100
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !100
  %7 = load i64, i64* %RBP, !mcsema_real_eip !100
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !100
  %8 = load i64, i64* %R8, !mcsema_real_eip !100
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !100
  %9 = load i64, i64* %R9, !mcsema_real_eip !100
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !100
  %10 = load i64, i64* %R10, !mcsema_real_eip !100
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !100
  %11 = load i64, i64* %R11, !mcsema_real_eip !100
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !100
  %12 = load i64, i64* %R12, !mcsema_real_eip !100
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !100
  %13 = load i64, i64* %R13, !mcsema_real_eip !100
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !100
  %14 = load i64, i64* %R14, !mcsema_real_eip !100
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !100
  %15 = load i64, i64* %R15, !mcsema_real_eip !100
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !100
  %16 = load i64, i64* %RIP, !mcsema_real_eip !100
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !100
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !100
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !100
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !100
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !100
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !100
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !100
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !100
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !100
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !100
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !100
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !100
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !100
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !100
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !100
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !100
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !100
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !100
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !100
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !100
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !100
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !100
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !100
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !100
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !100
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !100
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !100
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !100
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !100
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !100
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !100
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !100
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !100
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !100
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !100
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !100
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !100
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !100
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !100
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !100
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !100
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !100
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !100
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !100
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !100
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !100
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !100
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !100
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !100
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !100
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !100
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !100
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !100
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !100
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !100
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !100
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !100
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !100
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !100
  %45 = bitcast i8* %44 to i64*
  %46 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %47 = load i64, i64* %45, align 4
  store i64 %47, i64* %46, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !100
  %48 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !100
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !100
  %49 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !100
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !100
  %50 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !100
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !100
  %51 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !100
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !100
  %52 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !100
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !100
  %53 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !100
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !100
  %54 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !100
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !100
  %55 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !100
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !100
  %56 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !100
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !100
  %57 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !100
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !100
  %58 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !100
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !100
  %59 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !100
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !100
  %60 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !100
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !100
  %61 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !100
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !100
  %62 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !100
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !100
  %63 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !100
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !100
  %64 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !100
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !100
  %65 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !100
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !100
  %66 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !100
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !100
  %67 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !100
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !100
  %68 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !100
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !100
  %69 = load i64, i64* %STACK_BASE, !mcsema_real_eip !100
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !100
  %70 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !100
  %71 = add i64 %6, -8
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !100
  store i64 %7, i64* %72, !mcsema_real_eip !100
  %73 = add i64 %1, 13849
  %74 = xor i64 %73, %1, !mcsema_real_eip !101
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = trunc i64 %73 to i8, !mcsema_real_eip !101
  %78 = tail call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !101
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  %81 = and i64 %73, 65535, !mcsema_real_eip !102
  %82 = icmp eq i64 %81, 0, !mcsema_real_eip !102
  store i64 %81, i64* bitcast (%1* @data_0x448 to i64*), !mcsema_real_eip !103
  %83 = load i64, i64* %72, !mcsema_real_eip !104
  %84 = add i64 %71, 16, !mcsema_real_eip !105
  store i64 %81, i64* %RAX, !mcsema_real_eip !105
  store i64 %2, i64* %RBX, !mcsema_real_eip !105
  store i64 %81, i64* %RCX, !mcsema_real_eip !105
  store i64 %3, i64* %RDX, !mcsema_real_eip !105
  store i64 %4, i64* %RSI, !mcsema_real_eip !105
  store i64 %5, i64* %RDI, !mcsema_real_eip !105
  store i64 %84, i64* %RSP, !mcsema_real_eip !105
  store i64 %83, i64* %RBP, !mcsema_real_eip !105
  store i64 %8, i64* %R8, !mcsema_real_eip !105
  store i64 %9, i64* %R9, !mcsema_real_eip !105
  store i64 %10, i64* %R10, !mcsema_real_eip !105
  store i64 %11, i64* %R11, !mcsema_real_eip !105
  store i64 %12, i64* %R12, !mcsema_real_eip !105
  store i64 %13, i64* %R13, !mcsema_real_eip !105
  store i64 %14, i64* %R14, !mcsema_real_eip !105
  store i64 %15, i64* %R15, !mcsema_real_eip !105
  store i64 %16, i64* %RIP, !mcsema_real_eip !105
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !105
  store i1 %80, i1* %PF, align 1, !mcsema_real_eip !105
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !105
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !105
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !105
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !105
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !105
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !105
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !105
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !105
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !105
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !105
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !105
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !105
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !105
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !105
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !105
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !105
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !105
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !105
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !105
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !105
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !105
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !105
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !105
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !105
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !105
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !105
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !105
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !105
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !105
  %85 = load i64, i64* %46, align 4
  store i64 %85, i64* %45, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !105
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !105
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !105
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !105
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !105
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !105
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !105
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !105
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !105
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !105
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !105
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !105
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !105
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !105
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !105
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !105
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !105
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !105
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !105
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !105
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !105
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !105
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !105
  ret void, !mcsema_real_eip !105
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_290(%struct.regs* %0)
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
  %_local_stack_start_ptr_ = alloca i8, i64 8
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 8
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !16
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !16
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !16
  %1 = load i64, i64* %RAX, !mcsema_real_eip !16
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !16
  %2 = load i64, i64* %RBX, !mcsema_real_eip !16
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !16
  %3 = load i64, i64* %RCX, !mcsema_real_eip !16
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !16
  %4 = load i64, i64* %RDX, !mcsema_real_eip !16
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !16
  %5 = load i64, i64* %RSI, !mcsema_real_eip !16
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !16
  %6 = load i64, i64* %RDI, !mcsema_real_eip !16
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !16
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !16
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !16
  %7 = load i64, i64* %R8, !mcsema_real_eip !16
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !16
  %8 = load i64, i64* %R9, !mcsema_real_eip !16
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !16
  %9 = load i64, i64* %R10, !mcsema_real_eip !16
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !16
  %10 = load i64, i64* %R11, !mcsema_real_eip !16
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !16
  %11 = load i64, i64* %R12, !mcsema_real_eip !16
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !16
  %12 = load i64, i64* %R13, !mcsema_real_eip !16
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !16
  %13 = load i64, i64* %R14, !mcsema_real_eip !16
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !16
  %14 = load i64, i64* %R15, !mcsema_real_eip !16
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !16
  %15 = load i64, i64* %RIP, !mcsema_real_eip !16
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !16
  %16 = load i1, i1* %CF, align 1, !mcsema_real_eip !16
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !16
  %17 = load i1, i1* %PF, align 1, !mcsema_real_eip !16
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !16
  %18 = load i1, i1* %AF, align 1, !mcsema_real_eip !16
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !16
  %19 = load i1, i1* %ZF, align 1, !mcsema_real_eip !16
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !16
  %20 = load i1, i1* %SF, align 1, !mcsema_real_eip !16
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !16
  %21 = load i1, i1* %OF, align 1, !mcsema_real_eip !16
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !16
  %22 = load i1, i1* %DF, align 1, !mcsema_real_eip !16
  %23 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !16
  %24 = bitcast x86_fp80* %23 to i8*, !mcsema_real_eip !16
  %25 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %24, i32 128, i32 4, i1 false), !mcsema_real_eip !16
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !16
  %26 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !16
  %27 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !16
  %28 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !16
  %29 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !16
  %30 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !16
  %31 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !16
  %32 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !16
  %33 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !16
  %34 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !16
  %35 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !16
  %36 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !16
  %37 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !16
  %38 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !16
  %39 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !16
  %40 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !16
  %41 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !16
  %42 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !16
  %43 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !16
  %44 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !16
  %45 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !16
  %46 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !16
  %47 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !16
  %48 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %49 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !16
  %50 = bitcast i8* %49 to i64*
  %51 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_ptr_to_int_ = ptrtoint i64* %50 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %49, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %49, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %49, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %52, label %53

; <label>:52:                                     ; preds = %entry
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %53

; <label>:53:                                     ; preds = %entry, %52
  %54 = phi i64* [ %50, %entry ], [ %_address_in_parent_stack_bt_, %52 ]
  %_new_load_ = load i64, i64* %54
  store i64 %_new_load_, i64* %51, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !16
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !16
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !16
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !16
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !16
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !16
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !16
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !16
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !16
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !16
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !16
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !16
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !16
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !16
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !16
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !16
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !16
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !16
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !16
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !16
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !16
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !16
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !16
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !16
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !16
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !16
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !16
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !16
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !16
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !16
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !16
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !16
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !16
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !16
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !16
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !16
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !16
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !16
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !16
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !16
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !16
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !16
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !16
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !16
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 74755, i64* bitcast (%1* @data_0x448 to i64*), !mcsema_real_eip !17
  %_load_rsp_ptr_1 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_2 = bitcast i8* %_load_rsp_ptr_1 to i64*
  %_ptr_to_int_8 = ptrtoint i64* %_allin_new_bt_2 to i64
  %_offset_above_rbp_11 = sub i64 %_ptr_to_int_8, %_local_end_to_int_
  %_pot_address_in_parent_stack_12 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_11
  %_cond1_13 = icmp ugt i8* %_load_rsp_ptr_1, %_local_stack_end_ptr_
  %_cond2_1_14 = icmp ugt i8* %_load_rsp_ptr_1, %_parent_stack_end_ptr_
  %_cond2_2_15 = icmp ult i8* %_load_rsp_ptr_1, %_parent_stack_start_ptr_
  %_cond2_16 = or i1 %_cond2_1_14, %_cond2_2_15
  %_cond4_17 = icmp ule i8* %_pot_address_in_parent_stack_12, %_parent_stack_end_ptr_
  %_cond1_n_cond2_18 = and i1 %_cond1_13, %_cond2_16
  %_cond1_n_cond2_cond3_19 = and i1 %_cond1_n_cond2_18, %_cond4_17
  br i1 %_cond1_n_cond2_cond3_19, label %78, label %79

; <label>:78:                                     ; preds = %53
  %_address_in_parent_stack_bt_21 = bitcast i8* %_pot_address_in_parent_stack_12 to i64*
  br label %79

; <label>:79:                                     ; preds = %53, %78
  %80 = phi i64* [ %_allin_new_bt_2, %53 ], [ %_address_in_parent_stack_bt_21, %78 ]
  %_new_load_22 = load i64, i64* %80
  %_new_int2ptr_ = inttoptr i64 %_new_load_22 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_1, i64 16
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %1, i64* %RAX, !mcsema_real_eip !19
  store i64 %2, i64* %RBX, !mcsema_real_eip !19
  store i64 %3, i64* %RCX, !mcsema_real_eip !19
  store i64 %4, i64* %RDX, !mcsema_real_eip !19
  store i64 %5, i64* %RSI, !mcsema_real_eip !19
  store i64 %6, i64* %RDI, !mcsema_real_eip !19
  %_new_ptr2int_5 = ptrtoint i8* %_new_gep_3 to i64
  store volatile i64 %_new_ptr2int_5, i64* %RSP
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_7 = ptrtoint i8* %_load_rbp_ptr_6 to i64
  store volatile i64 %_new_ptr2int_7, i64* %RBP
  store i64 %7, i64* %R8, !mcsema_real_eip !19
  store i64 %8, i64* %R9, !mcsema_real_eip !19
  store i64 %9, i64* %R10, !mcsema_real_eip !19
  store i64 %10, i64* %R11, !mcsema_real_eip !19
  store i64 %11, i64* %R12, !mcsema_real_eip !19
  store i64 %12, i64* %R13, !mcsema_real_eip !19
  store i64 %13, i64* %R14, !mcsema_real_eip !19
  store i64 %14, i64* %R15, !mcsema_real_eip !19
  store i64 %15, i64* %RIP, !mcsema_real_eip !19
  store i1 %16, i1* %CF, align 1, !mcsema_real_eip !19
  store i1 %17, i1* %PF, align 1, !mcsema_real_eip !19
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !19
  store i1 %19, i1* %ZF, align 1, !mcsema_real_eip !19
  store i1 %20, i1* %SF, align 1, !mcsema_real_eip !19
  store i1 %21, i1* %OF, align 1, !mcsema_real_eip !19
  store i1 %22, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  store i1 %26, i1* %FPU_B, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  store i3 %28, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  store i1 %34, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  store i1 %35, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  store i1 %36, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_X, align 1, !mcsema_real_eip !19
  store i2 %41, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  store i2 %42, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  store i1 %43, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  store i1 %44, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  store i1 %45, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  store i1 %46, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  store i1 %47, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  store i1 %48, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %_ptr_to_int_23 = ptrtoint i64* %51 to i64
  %_ptr_bt_25 = bitcast i64* %51 to i8*
  %_offset_above_rbp_26 = sub i64 %_ptr_to_int_23, %_local_end_to_int_
  %_pot_address_in_parent_stack_27 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_26
  %_cond1_28 = icmp ugt i8* %_ptr_bt_25, %_local_stack_end_ptr_
  %_cond2_1_29 = icmp ugt i8* %_ptr_bt_25, %_parent_stack_end_ptr_
  %_cond2_2_30 = icmp ult i8* %_ptr_bt_25, %_parent_stack_start_ptr_
  %_cond2_31 = or i1 %_cond2_1_29, %_cond2_2_30
  %_cond4_32 = icmp ule i8* %_pot_address_in_parent_stack_27, %_parent_stack_end_ptr_
  %_cond1_n_cond2_33 = and i1 %_cond1_28, %_cond2_31
  %_cond1_n_cond2_cond3_34 = and i1 %_cond1_n_cond2_33, %_cond4_32
  br i1 %_cond1_n_cond2_cond3_34, label %81, label %82

; <label>:81:                                     ; preds = %79
  %_address_in_parent_stack_bt_36 = bitcast i8* %_pot_address_in_parent_stack_27 to i64*
  br label %82

; <label>:82:                                     ; preds = %79, %81
  %83 = phi i64* [ %51, %79 ], [ %_address_in_parent_stack_bt_36, %81 ]
  %_new_load_37 = load i64, i64* %83
  store i64 %_new_load_37, i64* %50, align 4
  store i16 %55, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  store i64 %56, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  store i16 %57, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  store i64 %58, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  store i11 %59, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM0, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM1, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM2, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM3, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM4, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM5, align 1, !mcsema_real_eip !19
  store i128 %66, i128* %XMM6, align 1, !mcsema_real_eip !19
  store i128 %67, i128* %XMM7, align 1, !mcsema_real_eip !19
  store i128 %68, i128* %XMM8, align 1, !mcsema_real_eip !19
  store i128 %69, i128* %XMM9, align 1, !mcsema_real_eip !19
  store i128 %70, i128* %XMM10, align 1, !mcsema_real_eip !19
  store i128 %71, i128* %XMM11, align 1, !mcsema_real_eip !19
  store i128 %72, i128* %XMM12, align 1, !mcsema_real_eip !19
  store i128 %73, i128* %XMM13, align 1, !mcsema_real_eip !19
  store i128 %74, i128* %XMM14, align 1, !mcsema_real_eip !19
  store i128 %75, i128* %XMM15, align 1, !mcsema_real_eip !19
  store i64 %76, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  store i64 %77, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

define internal x86_64_sysvcc void @sub_160.2(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !20
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !20
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !20
  %1 = load i64, i64* %RAX, !mcsema_real_eip !20
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !20
  %2 = load i64, i64* %RBX, !mcsema_real_eip !20
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !20
  %3 = load i64, i64* %RCX, !mcsema_real_eip !20
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !20
  %4 = load i64, i64* %RDX, !mcsema_real_eip !20
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !20
  %5 = load i64, i64* %RSI, !mcsema_real_eip !20
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !20
  %6 = load i64, i64* %RDI, !mcsema_real_eip !20
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !20
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !20
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !20
  %7 = load i64, i64* %R8, !mcsema_real_eip !20
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !20
  %8 = load i64, i64* %R9, !mcsema_real_eip !20
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !20
  %9 = load i64, i64* %R10, !mcsema_real_eip !20
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !20
  %10 = load i64, i64* %R11, !mcsema_real_eip !20
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !20
  %11 = load i64, i64* %R12, !mcsema_real_eip !20
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !20
  %12 = load i64, i64* %R13, !mcsema_real_eip !20
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !20
  %13 = load i64, i64* %R14, !mcsema_real_eip !20
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !20
  %14 = load i64, i64* %R15, !mcsema_real_eip !20
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !20
  %15 = load i64, i64* %RIP, !mcsema_real_eip !20
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !20
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !20
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !20
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !20
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !20
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !20
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !20
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !20
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !20
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !20
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !20
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !20
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !20
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !20
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !20
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !20
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !20
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !20
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !20
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !20
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !20
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !20
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !20
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !20
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !20
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !20
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !20
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !20
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !20
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !20
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !20
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !20
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !20
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !20
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !20
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !20
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !20
  %44 = bitcast i8* %43 to i64*
  %45 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_ptr_to_int_ = ptrtoint i64* %44 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %43, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %43, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %43, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %46, label %47

; <label>:46:                                     ; preds = %entry
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %47

; <label>:47:                                     ; preds = %entry, %46
  %48 = phi i64* [ %44, %entry ], [ %_address_in_parent_stack_bt_, %46 ]
  %_new_load_ = load i64, i64* %48
  store i64 %_new_load_, i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !20
  %49 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !20
  %50 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !20
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !20
  %51 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !20
  %52 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !20
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !20
  %53 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !20
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !20
  %54 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !20
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !20
  %55 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !20
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !20
  %56 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !20
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !20
  %57 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !20
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !20
  %58 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !20
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !20
  %59 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !20
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !20
  %60 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !20
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !20
  %61 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !20
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !20
  %62 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !20
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !20
  %63 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !20
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !20
  %64 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !20
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !20
  %65 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !20
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !20
  %66 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !20
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !20
  %67 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !20
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !20
  %68 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !20
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !20
  %69 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !20
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !20
  %70 = load i64, i64* %STACK_BASE, !mcsema_real_eip !20
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !20
  %71 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !20
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %72 = and i64 %_trans_xor_, 16, !mcsema_real_eip !21
  %73 = icmp ne i64 %72, 0, !mcsema_real_eip !21
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %74 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !21
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_, 0
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_2, 32
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_2
  %77 = icmp slt i64 %_trans_xor_9, 0
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %78 = trunc i64 %6 to i32, !mcsema_real_eip !22
  %79 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 %78, i32* %79, !mcsema_real_eip !22
  %_load_rsp_ptr_13 = load i8*, i8** %_RSP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rsp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_15, !mcsema_real_eip !23
  store volatile i8* %_new_gep_14, i8** %_RSP_ptr_
  store i64 %1, i64* %RAX, !mcsema_real_eip !23
  store i64 %2, i64* %RBX, !mcsema_real_eip !23
  store i64 %3, i64* %RCX, !mcsema_real_eip !23
  store i64 %4, i64* %RDX, !mcsema_real_eip !23
  store i64 %5, i64* %RSI, !mcsema_real_eip !23
  store i64 %6, i64* %RDI, !mcsema_real_eip !23
  %_new_ptr2int_17 = ptrtoint i8* %_new_gep_14 to i64
  store volatile i64 %_new_ptr2int_17, i64* %RSP
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_19 = ptrtoint i8* %_load_rbp_ptr_18 to i64
  store volatile i64 %_new_ptr2int_19, i64* %RBP
  store i64 %7, i64* %R8, !mcsema_real_eip !23
  store i64 %8, i64* %R9, !mcsema_real_eip !23
  store i64 %9, i64* %R10, !mcsema_real_eip !23
  store i64 %10, i64* %R11, !mcsema_real_eip !23
  store i64 %11, i64* %R12, !mcsema_real_eip !23
  store i64 %12, i64* %R13, !mcsema_real_eip !23
  store i64 %13, i64* %R14, !mcsema_real_eip !23
  store i64 %14, i64* %R15, !mcsema_real_eip !23
  store i64 %15, i64* %RIP, !mcsema_real_eip !23
  store i1 %_trans_icmp_ne_7, i1* %CF, align 1, !mcsema_real_eip !23
  store i1 %76, i1* %PF, align 1, !mcsema_real_eip !23
  store i1 %73, i1* %AF, align 1, !mcsema_real_eip !23
  store i1 %_trans_icmp_eq_, i1* %ZF, align 1, !mcsema_real_eip !23
  store i1 %_trans_icmp_ne_, i1* %SF, align 1, !mcsema_real_eip !23
  store i1 %77, i1* %OF, align 1, !mcsema_real_eip !23
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !23
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !23
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %_ptr_to_int_114 = ptrtoint i64* %45 to i64
  %_ptr_bt_116 = bitcast i64* %45 to i8*
  %_offset_above_rbp_117 = sub i64 %_ptr_to_int_114, %_local_end_to_int_
  %_pot_address_in_parent_stack_118 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_cond1_119 = icmp ugt i8* %_ptr_bt_116, %_local_stack_end_ptr_
  %_cond2_1_120 = icmp ugt i8* %_ptr_bt_116, %_parent_stack_end_ptr_
  %_cond2_2_121 = icmp ult i8* %_ptr_bt_116, %_parent_stack_start_ptr_
  %_cond2_122 = or i1 %_cond2_1_120, %_cond2_2_121
  %_cond4_123 = icmp ule i8* %_pot_address_in_parent_stack_118, %_parent_stack_end_ptr_
  %_cond1_n_cond2_124 = and i1 %_cond1_119, %_cond2_122
  %_cond1_n_cond2_cond3_125 = and i1 %_cond1_n_cond2_124, %_cond4_123
  br i1 %_cond1_n_cond2_cond3_125, label %80, label %81

; <label>:80:                                     ; preds = %47
  %_address_in_parent_stack_bt_127 = bitcast i8* %_pot_address_in_parent_stack_118 to i64*
  br label %81

; <label>:81:                                     ; preds = %47, %80
  %82 = phi i64* [ %45, %47 ], [ %_address_in_parent_stack_bt_127, %80 ]
  %_new_load_128 = load i64, i64* %82
  store i64 %_new_load_128, i64* %44, align 4
  store i16 %49, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  store i64 %50, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  store i16 %51, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  store i64 %52, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  store i11 %53, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  store i128 %54, i128* %XMM0, align 1, !mcsema_real_eip !23
  store i128 %55, i128* %XMM1, align 1, !mcsema_real_eip !23
  store i128 %56, i128* %XMM2, align 1, !mcsema_real_eip !23
  store i128 %57, i128* %XMM3, align 1, !mcsema_real_eip !23
  store i128 %58, i128* %XMM4, align 1, !mcsema_real_eip !23
  store i128 %59, i128* %XMM5, align 1, !mcsema_real_eip !23
  store i128 %60, i128* %XMM6, align 1, !mcsema_real_eip !23
  store i128 %61, i128* %XMM7, align 1, !mcsema_real_eip !23
  store i128 %62, i128* %XMM8, align 1, !mcsema_real_eip !23
  store i128 %63, i128* %XMM9, align 1, !mcsema_real_eip !23
  store i128 %64, i128* %XMM10, align 1, !mcsema_real_eip !23
  store i128 %65, i128* %XMM11, align 1, !mcsema_real_eip !23
  store i128 %66, i128* %XMM12, align 1, !mcsema_real_eip !23
  store i128 %67, i128* %XMM13, align 1, !mcsema_real_eip !23
  store i128 %68, i128* %XMM14, align 1, !mcsema_real_eip !23
  store i128 %69, i128* %XMM15, align 1, !mcsema_real_eip !23
  store i64 %70, i64* %STACK_BASE, align 1, !mcsema_real_eip !23
  store i64 %71, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !23
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  call void @sub_60.3(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_113)
  %83 = load i64, i64* %RBX, !mcsema_real_eip !23
  %84 = load i64, i64* %RCX, !mcsema_real_eip !23
  %85 = load i64, i64* %RDX, !mcsema_real_eip !23
  %86 = load i64, i64* %RSI, !mcsema_real_eip !23
  %87 = load i64, i64* %R8, !mcsema_real_eip !23
  %88 = load i64, i64* %R9, !mcsema_real_eip !23
  %89 = load i64, i64* %R10, !mcsema_real_eip !23
  %90 = load i64, i64* %R11, !mcsema_real_eip !23
  %91 = load i64, i64* %R12, !mcsema_real_eip !23
  %92 = load i64, i64* %R13, !mcsema_real_eip !23
  %93 = load i64, i64* %R14, !mcsema_real_eip !23
  %94 = load i64, i64* %R15, !mcsema_real_eip !23
  %95 = load i64, i64* %RIP, !mcsema_real_eip !23
  %96 = load i1, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !23
  %97 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %98 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %99 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %100 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %101 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %102 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %103 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %104 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %105 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %106 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %107 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %108 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %109 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %110 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %111 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %112 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %113 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %114 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %115 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %116 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %117 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %118 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %119 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  br i1 %_cond1_n_cond2_cond3_, label %120, label %121

; <label>:120:                                    ; preds = %81
  %_address_in_parent_stack_bt_142 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %121

; <label>:121:                                    ; preds = %81, %120
  %122 = phi i64* [ %44, %81 ], [ %_address_in_parent_stack_bt_142, %120 ]
  %_new_load_143 = load i64, i64* %122
  store i64 %_new_load_143, i64* %45, align 4
  %123 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %124 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !23
  %125 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %126 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !23
  %127 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  %128 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !23
  %129 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !23
  %130 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !23
  %131 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !23
  %132 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !23
  %133 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !23
  %134 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !23
  %135 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !23
  %136 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !23
  %137 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !23
  %138 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !23
  %139 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !23
  %140 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !23
  %141 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !23
  %142 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !23
  %143 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !23
  %144 = load i64, i64* %STACK_BASE, !mcsema_real_eip !23
  %145 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !23
  br label %block_0x17b, !mcsema_real_eip !24

block_0x17b:                                      ; preds = %319, %121
  %RCX_val.0 = phi i64 [ %84, %121 ], [ %RCX_val.1, %319 ]
  %RDX_val.0 = phi i64 [ %85, %121 ], [ %RDX_val.1, %319 ]
  %storemerge = phi i32 [ 500, %121 ], [ %321, %319 ]
  store i32 %storemerge, i32* bitcast (%5* @data_0x460 to i32*)
  %146 = add i32 %storemerge, -1
  %147 = xor i32 %146, %storemerge, !mcsema_real_eip !24
  %148 = icmp eq i32 %146, 0, !mcsema_real_eip !24
  %149 = icmp slt i32 %146, 0
  %150 = and i32 %147, %storemerge, !mcsema_real_eip !24
  %151 = icmp slt i32 %150, 0
  %152 = xor i1 %149, %151
  %153 = or i1 %148, %152, !mcsema_real_eip !25
  br i1 %153, label %block_0x221, label %block_0x189, !mcsema_real_eip !25

block_0x189:                                      ; preds = %block_0x17b
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %154 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 1, i32* %154, !mcsema_real_eip !26
  %_offset_above_rbp_145 = sub i64 ptrtoint (%5* @data_0x460 to i64), %_local_end_to_int_
  %_pot_address_in_parent_stack_146 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_145
  %_cond1_147 = icmp ugt i8* getelementptr inbounds (%5, %5* @data_0x460, i32 0, i32 0, i32 0), %_local_stack_end_ptr_
  %_cond2_1_148 = icmp ugt i8* getelementptr inbounds (%5, %5* @data_0x460, i32 0, i32 0, i32 0), %_parent_stack_end_ptr_
  %_cond2_2_149 = icmp ult i8* getelementptr inbounds (%5, %5* @data_0x460, i32 0, i32 0, i32 0), %_parent_stack_start_ptr_
  %_cond2_150 = or i1 %_cond2_1_148, %_cond2_2_149
  %_cond4_151 = icmp ule i8* %_pot_address_in_parent_stack_146, %_parent_stack_end_ptr_
  %_cond1_n_cond2_152 = and i1 %_cond1_147, %_cond2_150
  %_cond1_n_cond2_cond3_153 = and i1 %_cond1_n_cond2_152, %_cond4_151
  br i1 %_cond1_n_cond2_cond3_153, label %155, label %156

; <label>:155:                                    ; preds = %block_0x189
  %_address_in_parent_stack_bt_155 = bitcast i8* %_pot_address_in_parent_stack_146 to i32*
  br label %156

; <label>:156:                                    ; preds = %block_0x189, %155
  %157 = phi i32* [ bitcast (%5* @data_0x460 to i32*), %block_0x189 ], [ %_address_in_parent_stack_bt_155, %155 ]
  %_new_load_156 = load i32, i32* %157
  br label %block_0x190, !mcsema_real_eip !27

block_0x221:                                      ; preds = %block_0x17b
  %_offset_above_rbp_158 = sub i64 add (i64 ptrtoint (%2* @data_0x450 to i64), i64 4), %_local_end_to_int_
  %_pot_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_158
  %_cond1_160 = icmp ugt i8* inttoptr (i64 add (i64 ptrtoint (%2* @data_0x450 to i64), i64 4) to i8*), %_local_stack_end_ptr_
  %_cond2_1_161 = icmp ugt i8* inttoptr (i64 add (i64 ptrtoint (%2* @data_0x450 to i64), i64 4) to i8*), %_parent_stack_end_ptr_
  %_cond2_2_162 = icmp ult i8* inttoptr (i64 add (i64 ptrtoint (%2* @data_0x450 to i64), i64 4) to i8*), %_parent_stack_start_ptr_
  %_cond2_163 = or i1 %_cond2_1_161, %_cond2_2_162
  %_cond4_164 = icmp ule i8* %_pot_address_in_parent_stack_159, %_parent_stack_end_ptr_
  %_cond1_n_cond2_165 = and i1 %_cond1_160, %_cond2_163
  %_cond1_n_cond2_cond3_166 = and i1 %_cond1_n_cond2_165, %_cond4_164
  br i1 %_cond1_n_cond2_cond3_166, label %158, label %159

; <label>:158:                                    ; preds = %block_0x221
  %_address_in_parent_stack_bt_168 = bitcast i8* %_pot_address_in_parent_stack_159 to i32*
  br label %159

; <label>:159:                                    ; preds = %block_0x221, %158
  %160 = phi i32* [ inttoptr (i64 add (i64 ptrtoint (%2* @data_0x450 to i64), i64 4) to i32*), %block_0x221 ], [ %_address_in_parent_stack_bt_168, %158 ]
  %_new_load_169 = load i32, i32* %160
  %_offset_above_rbp_171 = sub i64 ptrtoint (%4* @data_0x3e8 to i64), %_local_end_to_int_
  %_pot_address_in_parent_stack_172 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_171
  %_cond1_173 = icmp ugt i8* getelementptr inbounds (%4, %4* @data_0x3e8, i32 0, i32 0, i32 0), %_local_stack_end_ptr_
  %_cond2_1_174 = icmp ugt i8* getelementptr inbounds (%4, %4* @data_0x3e8, i32 0, i32 0, i32 0), %_parent_stack_end_ptr_
  %_cond2_2_175 = icmp ult i8* getelementptr inbounds (%4, %4* @data_0x3e8, i32 0, i32 0, i32 0), %_parent_stack_start_ptr_
  %_cond2_176 = or i1 %_cond2_1_174, %_cond2_2_175
  %_cond4_177 = icmp ule i8* %_pot_address_in_parent_stack_172, %_parent_stack_end_ptr_
  %_cond1_n_cond2_178 = and i1 %_cond1_173, %_cond2_176
  %_cond1_n_cond2_cond3_179 = and i1 %_cond1_n_cond2_178, %_cond4_177
  br i1 %_cond1_n_cond2_cond3_179, label %161, label %162

; <label>:161:                                    ; preds = %159
  %_address_in_parent_stack_bt_181 = bitcast i8* %_pot_address_in_parent_stack_172 to i32*
  br label %162

; <label>:162:                                    ; preds = %159, %161
  %163 = phi i32* [ bitcast (%4* @data_0x3e8 to i32*), %159 ], [ %_address_in_parent_stack_bt_181, %161 ]
  %_new_load_182 = load i32, i32* %163
  %164 = icmp eq i32 %_new_load_169, %_new_load_182
  br i1 %164, label %block_0x235, label %block_0x249, !mcsema_real_eip !29

block_0x235:                                      ; preds = %162
  %_offset_above_rbp_184 = sub i64 3104, %_local_end_to_int_
  %_pot_address_in_parent_stack_185 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_184
  %_cond1_186 = icmp ugt i8* inttoptr (i64 3104 to i8*), %_local_stack_end_ptr_
  %_cond2_1_187 = icmp ugt i8* inttoptr (i64 3104 to i8*), %_parent_stack_end_ptr_
  %_cond2_2_188 = icmp ult i8* inttoptr (i64 3104 to i8*), %_parent_stack_start_ptr_
  %_cond2_189 = or i1 %_cond2_1_187, %_cond2_2_188
  %_cond4_190 = icmp ule i8* %_pot_address_in_parent_stack_185, %_parent_stack_end_ptr_
  %_cond1_n_cond2_191 = and i1 %_cond1_186, %_cond2_189
  %_cond1_n_cond2_cond3_192 = and i1 %_cond1_n_cond2_191, %_cond4_190
  br i1 %_cond1_n_cond2_cond3_192, label %165, label %166

; <label>:165:                                    ; preds = %block_0x235
  %_address_in_parent_stack_bt_194 = bitcast i8* %_pot_address_in_parent_stack_185 to i32*
  br label %166

; <label>:166:                                    ; preds = %block_0x235, %165
  %167 = phi i32* [ inttoptr (i64 3104 to i32*), %block_0x235 ], [ %_address_in_parent_stack_bt_194, %165 ]
  %_new_load_195 = load i32, i32* %167
  %_offset_above_rbp_197 = sub i64 ptrtoint (%3* @data_0x390 to i64), %_local_end_to_int_
  %_pot_address_in_parent_stack_198 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_197
  %_cond1_199 = icmp ugt i8* getelementptr inbounds (%3, %3* @data_0x390, i32 0, i32 0, i32 0), %_local_stack_end_ptr_
  %_cond2_1_200 = icmp ugt i8* getelementptr inbounds (%3, %3* @data_0x390, i32 0, i32 0, i32 0), %_parent_stack_end_ptr_
  %_cond2_2_201 = icmp ult i8* getelementptr inbounds (%3, %3* @data_0x390, i32 0, i32 0, i32 0), %_parent_stack_start_ptr_
  %_cond2_202 = or i1 %_cond2_1_200, %_cond2_2_201
  %_cond4_203 = icmp ule i8* %_pot_address_in_parent_stack_198, %_parent_stack_end_ptr_
  %_cond1_n_cond2_204 = and i1 %_cond1_199, %_cond2_202
  %_cond1_n_cond2_cond3_205 = and i1 %_cond1_n_cond2_204, %_cond4_203
  br i1 %_cond1_n_cond2_cond3_205, label %168, label %169

; <label>:168:                                    ; preds = %166
  %_address_in_parent_stack_bt_207 = bitcast i8* %_pot_address_in_parent_stack_198 to i32*
  br label %169

; <label>:169:                                    ; preds = %166, %168
  %170 = phi i32* [ bitcast (%3* @data_0x390 to i32*), %166 ], [ %_address_in_parent_stack_bt_207, %168 ]
  %_new_load_208 = load i32, i32* %170
  %171 = icmp eq i32 %_new_load_195, %_new_load_208
  br i1 %171, label %block_0x25d, label %block_0x249, !mcsema_real_eip !31

block_0x249:                                      ; preds = %169, %162
  %_load_rsp_ptr_23 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_24 = bitcast i8* %_load_rsp_ptr_23 to i64*
  %_ptr_to_int_209 = ptrtoint i64* %_allin_new_bt_24 to i64
  %_offset_above_rbp_212 = sub i64 %_ptr_to_int_209, %_local_end_to_int_
  %_pot_address_in_parent_stack_213 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_212
  %_cond1_214 = icmp ugt i8* %_load_rsp_ptr_23, %_local_stack_end_ptr_
  %_cond2_1_215 = icmp ugt i8* %_load_rsp_ptr_23, %_parent_stack_end_ptr_
  %_cond2_2_216 = icmp ult i8* %_load_rsp_ptr_23, %_parent_stack_start_ptr_
  %_cond2_217 = or i1 %_cond2_1_215, %_cond2_2_216
  %_cond4_218 = icmp ule i8* %_pot_address_in_parent_stack_213, %_parent_stack_end_ptr_
  %_cond1_n_cond2_219 = and i1 %_cond1_214, %_cond2_217
  %_cond1_n_cond2_cond3_220 = and i1 %_cond1_n_cond2_219, %_cond4_218
  br i1 %_cond1_n_cond2_cond3_220, label %172, label %173

; <label>:172:                                    ; preds = %block_0x249
  %_address_in_parent_stack_bt_222 = bitcast i8* %_pot_address_in_parent_stack_213 to i64*
  br label %173

; <label>:173:                                    ; preds = %block_0x249, %172
  %174 = phi i64* [ %_allin_new_bt_24, %block_0x249 ], [ %_address_in_parent_stack_bt_222, %172 ]
  %_new_load_223 = load i64, i64* %174
  %_new_gep_25 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 8
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %_ptr_to_int_224 = ptrtoint i64* %_allin_new_bt_26 to i64
  %_offset_above_rbp_227 = sub i64 %_ptr_to_int_224, %_local_end_to_int_
  %_pot_address_in_parent_stack_228 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_227
  %_cond1_229 = icmp ugt i8* %_new_gep_25, %_local_stack_end_ptr_
  %_cond2_1_230 = icmp ugt i8* %_new_gep_25, %_parent_stack_end_ptr_
  %_cond2_2_231 = icmp ult i8* %_new_gep_25, %_parent_stack_start_ptr_
  %_cond2_232 = or i1 %_cond2_1_230, %_cond2_2_231
  %_cond4_233 = icmp ule i8* %_pot_address_in_parent_stack_228, %_parent_stack_end_ptr_
  %_cond1_n_cond2_234 = and i1 %_cond1_229, %_cond2_232
  %_cond1_n_cond2_cond3_235 = and i1 %_cond1_n_cond2_234, %_cond4_233
  br i1 %_cond1_n_cond2_cond3_235, label %175, label %176

; <label>:175:                                    ; preds = %173
  %_address_in_parent_stack_bt_237 = bitcast i8* %_pot_address_in_parent_stack_228 to i64*
  br label %176

; <label>:176:                                    ; preds = %173, %175
  %177 = phi i64* [ %_allin_new_bt_26, %173 ], [ %_address_in_parent_stack_bt_237, %175 ]
  %_new_load_238 = load i64, i64* %177
  %_new_gep_27 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 16
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %_ptr_to_int_239 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_242 = sub i64 %_ptr_to_int_239, %_local_end_to_int_
  %_pot_address_in_parent_stack_243 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_242
  %_cond1_244 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_245 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_246 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_247 = or i1 %_cond2_1_245, %_cond2_2_246
  %_cond4_248 = icmp ule i8* %_pot_address_in_parent_stack_243, %_parent_stack_end_ptr_
  %_cond1_n_cond2_249 = and i1 %_cond1_244, %_cond2_247
  %_cond1_n_cond2_cond3_250 = and i1 %_cond1_n_cond2_249, %_cond4_248
  br i1 %_cond1_n_cond2_cond3_250, label %178, label %179

; <label>:178:                                    ; preds = %176
  %_address_in_parent_stack_bt_252 = bitcast i8* %_pot_address_in_parent_stack_243 to i64*
  br label %179

; <label>:179:                                    ; preds = %176, %178
  %180 = phi i64* [ %_allin_new_bt_28, %176 ], [ %_address_in_parent_stack_bt_252, %178 ]
  %_new_load_253 = load i64, i64* %180
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_254 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_257 = sub i64 %_ptr_to_int_254, %_local_end_to_int_
  %_pot_address_in_parent_stack_258 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_257
  %_cond1_259 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_260 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_261 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_262 = or i1 %_cond2_1_260, %_cond2_2_261
  %_cond4_263 = icmp ule i8* %_pot_address_in_parent_stack_258, %_parent_stack_end_ptr_
  %_cond1_n_cond2_264 = and i1 %_cond1_259, %_cond2_262
  %_cond1_n_cond2_cond3_265 = and i1 %_cond1_n_cond2_264, %_cond4_263
  br i1 %_cond1_n_cond2_cond3_265, label %181, label %182

; <label>:181:                                    ; preds = %179
  %_address_in_parent_stack_bt_267 = bitcast i8* %_pot_address_in_parent_stack_258 to i64*
  br label %182

; <label>:182:                                    ; preds = %179, %181
  %183 = phi i64* [ %_allin_new_bt_30, %179 ], [ %_address_in_parent_stack_bt_267, %181 ]
  %_new_load_268 = load i64, i64* %183
  %_new_gep_31 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 32
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %_ptr_to_int_269 = ptrtoint i64* %_allin_new_bt_32 to i64
  %_offset_above_rbp_272 = sub i64 %_ptr_to_int_269, %_local_end_to_int_
  %_pot_address_in_parent_stack_273 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_272
  %_cond1_274 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_275 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_276 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_277 = or i1 %_cond2_1_275, %_cond2_2_276
  %_cond4_278 = icmp ule i8* %_pot_address_in_parent_stack_273, %_parent_stack_end_ptr_
  %_cond1_n_cond2_279 = and i1 %_cond1_274, %_cond2_277
  %_cond1_n_cond2_cond3_280 = and i1 %_cond1_n_cond2_279, %_cond4_278
  br i1 %_cond1_n_cond2_cond3_280, label %184, label %185

; <label>:184:                                    ; preds = %182
  %_address_in_parent_stack_bt_282 = bitcast i8* %_pot_address_in_parent_stack_273 to i64*
  br label %185

; <label>:185:                                    ; preds = %182, %184
  %186 = phi i64* [ %_allin_new_bt_32, %182 ], [ %_address_in_parent_stack_bt_282, %184 ]
  %_new_load_283 = load i64, i64* %186
  %_new_gep_33 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 40
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_284 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_287 = sub i64 %_ptr_to_int_284, %_local_end_to_int_
  %_pot_address_in_parent_stack_288 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_287
  %_cond1_289 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_290 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_291 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_292 = or i1 %_cond2_1_290, %_cond2_2_291
  %_cond4_293 = icmp ule i8* %_pot_address_in_parent_stack_288, %_parent_stack_end_ptr_
  %_cond1_n_cond2_294 = and i1 %_cond1_289, %_cond2_292
  %_cond1_n_cond2_cond3_295 = and i1 %_cond1_n_cond2_294, %_cond4_293
  br i1 %_cond1_n_cond2_cond3_295, label %187, label %188

; <label>:187:                                    ; preds = %185
  %_address_in_parent_stack_bt_297 = bitcast i8* %_pot_address_in_parent_stack_288 to i64*
  br label %188

; <label>:188:                                    ; preds = %185, %187
  %189 = phi i64* [ %_allin_new_bt_34, %185 ], [ %_address_in_parent_stack_bt_297, %187 ]
  %_new_load_298 = load i64, i64* %189
  %_new_gep_35 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 48
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_299 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_302 = sub i64 %_ptr_to_int_299, %_local_end_to_int_
  %_pot_address_in_parent_stack_303 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_302
  %_cond1_304 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_305 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_306 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_307 = or i1 %_cond2_1_305, %_cond2_2_306
  %_cond4_308 = icmp ule i8* %_pot_address_in_parent_stack_303, %_parent_stack_end_ptr_
  %_cond1_n_cond2_309 = and i1 %_cond1_304, %_cond2_307
  %_cond1_n_cond2_cond3_310 = and i1 %_cond1_n_cond2_309, %_cond4_308
  br i1 %_cond1_n_cond2_cond3_310, label %190, label %191

; <label>:190:                                    ; preds = %188
  %_address_in_parent_stack_bt_312 = bitcast i8* %_pot_address_in_parent_stack_303 to i64*
  br label %191

; <label>:191:                                    ; preds = %188, %190
  %192 = phi i64* [ %_allin_new_bt_36, %188 ], [ %_address_in_parent_stack_bt_312, %190 ]
  %_new_load_313 = load i64, i64* %192
  %_new_gep_37 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 56
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %_ptr_to_int_314 = ptrtoint i64* %_allin_new_bt_38 to i64
  %_offset_above_rbp_317 = sub i64 %_ptr_to_int_314, %_local_end_to_int_
  %_pot_address_in_parent_stack_318 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_317
  %_cond1_319 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_320 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_321 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_322 = or i1 %_cond2_1_320, %_cond2_2_321
  %_cond4_323 = icmp ule i8* %_pot_address_in_parent_stack_318, %_parent_stack_end_ptr_
  %_cond1_n_cond2_324 = and i1 %_cond1_319, %_cond2_322
  %_cond1_n_cond2_cond3_325 = and i1 %_cond1_n_cond2_324, %_cond4_323
  br i1 %_cond1_n_cond2_cond3_325, label %193, label %194

; <label>:193:                                    ; preds = %191
  %_address_in_parent_stack_bt_327 = bitcast i8* %_pot_address_in_parent_stack_318 to i64*
  br label %194

; <label>:194:                                    ; preds = %191, %193
  %195 = phi i64* [ %_allin_new_bt_38, %191 ], [ %_address_in_parent_stack_bt_327, %193 ]
  %_new_load_328 = load i64, i64* %195
  %_new_gep_39 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 64
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_329 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_332 = sub i64 %_ptr_to_int_329, %_local_end_to_int_
  %_pot_address_in_parent_stack_333 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_332
  %_cond1_334 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_335 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_336 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_337 = or i1 %_cond2_1_335, %_cond2_2_336
  %_cond4_338 = icmp ule i8* %_pot_address_in_parent_stack_333, %_parent_stack_end_ptr_
  %_cond1_n_cond2_339 = and i1 %_cond1_334, %_cond2_337
  %_cond1_n_cond2_cond3_340 = and i1 %_cond1_n_cond2_339, %_cond4_338
  br i1 %_cond1_n_cond2_cond3_340, label %196, label %197

; <label>:196:                                    ; preds = %194
  %_address_in_parent_stack_bt_342 = bitcast i8* %_pot_address_in_parent_stack_333 to i64*
  br label %197

; <label>:197:                                    ; preds = %194, %196
  %198 = phi i64* [ %_allin_new_bt_40, %194 ], [ %_address_in_parent_stack_bt_342, %196 ]
  %_new_load_343 = load i64, i64* %198
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 72
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_344 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_347 = sub i64 %_ptr_to_int_344, %_local_end_to_int_
  %_pot_address_in_parent_stack_348 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_347
  %_cond1_349 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_350 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_351 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_352 = or i1 %_cond2_1_350, %_cond2_2_351
  %_cond4_353 = icmp ule i8* %_pot_address_in_parent_stack_348, %_parent_stack_end_ptr_
  %_cond1_n_cond2_354 = and i1 %_cond1_349, %_cond2_352
  %_cond1_n_cond2_cond3_355 = and i1 %_cond1_n_cond2_354, %_cond4_353
  br i1 %_cond1_n_cond2_cond3_355, label %199, label %200

; <label>:199:                                    ; preds = %197
  %_address_in_parent_stack_bt_357 = bitcast i8* %_pot_address_in_parent_stack_348 to i64*
  br label %200

; <label>:200:                                    ; preds = %197, %199
  %201 = phi i64* [ %_allin_new_bt_42, %197 ], [ %_address_in_parent_stack_bt_357, %199 ]
  %_new_load_358 = load i64, i64* %201
  %202 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0x2ce to i64), i64 %86, i64 %RDX_val.0, i64 %RCX_val.0, i64 %87, i64 %88, i64 %_new_load_223, i64 %_new_load_238, i64 %_new_load_253, i64 %_new_load_268, i64 %_new_load_283, i64 %_new_load_298, i64 %_new_load_313, i64 %_new_load_328, i64 %_new_load_343, i64 %_new_load_358), !mcsema_real_eip !32
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -16
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %203 = trunc i64 %202 to i32, !mcsema_real_eip !33
  %204 = bitcast i64* %_allin_new_bt_45 to i32*
  store i32 %203, i32* %204, !mcsema_real_eip !33
  br label %block_0x25d, !mcsema_real_eip !30

block_0x190:                                      ; preds = %374, %156
  %RCX_val.1 = phi i64 [ %RCX_val.0, %156 ], [ %RCX_val.2, %374 ]
  %RDX_val.1 = phi i64 [ %RDX_val.0, %156 ], [ %RDX_val.2, %374 ]
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %205 = bitcast i64* %_allin_new_bt_48 to i32*
  %_ptr_to_int_359 = ptrtoint i32* %205 to i64
  %_ptr_bt_361 = bitcast i32* %205 to i8*
  %_offset_above_rbp_362 = sub i64 %_ptr_to_int_359, %_local_end_to_int_
  %_pot_address_in_parent_stack_363 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_362
  %_cond1_364 = icmp ugt i8* %_ptr_bt_361, %_local_stack_end_ptr_
  %_cond2_1_365 = icmp ugt i8* %_ptr_bt_361, %_parent_stack_end_ptr_
  %_cond2_2_366 = icmp ult i8* %_ptr_bt_361, %_parent_stack_start_ptr_
  %_cond2_367 = or i1 %_cond2_1_365, %_cond2_2_366
  %_cond4_368 = icmp ule i8* %_pot_address_in_parent_stack_363, %_parent_stack_end_ptr_
  %_cond1_n_cond2_369 = and i1 %_cond1_364, %_cond2_367
  %_cond1_n_cond2_cond3_370 = and i1 %_cond1_n_cond2_369, %_cond4_368
  br i1 %_cond1_n_cond2_cond3_370, label %206, label %207

; <label>:206:                                    ; preds = %block_0x190
  %_address_in_parent_stack_bt_372 = bitcast i8* %_pot_address_in_parent_stack_363 to i32*
  br label %207

; <label>:207:                                    ; preds = %block_0x190, %206
  %208 = phi i32* [ %205, %block_0x190 ], [ %_address_in_parent_stack_bt_372, %206 ]
  %_new_load_373 = load i32, i32* %208
  %209 = sub i32 %_new_load_373, %_new_load_156, !mcsema_real_eip !35
  %210 = xor i32 %209, %_new_load_373, !mcsema_real_eip !35
  %211 = icmp slt i32 %209, 0
  %212 = xor i32 %_new_load_156, %_new_load_373, !mcsema_real_eip !35
  %213 = and i32 %210, %212, !mcsema_real_eip !35
  %214 = icmp slt i32 %213, 0
  %tmp = xor i1 %211, %214
  br i1 %tmp, label %block_0x1a0, label %block_0x20b, !mcsema_real_eip !36

block_0x25d:                                      ; preds = %200, %169
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -4
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %215 = bitcast i64* %_allin_new_bt_51 to i32*
  %_ptr_to_int_374 = ptrtoint i32* %215 to i64
  %_ptr_bt_376 = bitcast i32* %215 to i8*
  %_offset_above_rbp_377 = sub i64 %_ptr_to_int_374, %_local_end_to_int_
  %_pot_address_in_parent_stack_378 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_377
  %_cond1_379 = icmp ugt i8* %_ptr_bt_376, %_local_stack_end_ptr_
  %_cond2_1_380 = icmp ugt i8* %_ptr_bt_376, %_parent_stack_end_ptr_
  %_cond2_2_381 = icmp ult i8* %_ptr_bt_376, %_parent_stack_start_ptr_
  %_cond2_382 = or i1 %_cond2_1_380, %_cond2_2_381
  %_cond4_383 = icmp ule i8* %_pot_address_in_parent_stack_378, %_parent_stack_end_ptr_
  %_cond1_n_cond2_384 = and i1 %_cond1_379, %_cond2_382
  %_cond1_n_cond2_cond3_385 = and i1 %_cond1_n_cond2_384, %_cond4_383
  br i1 %_cond1_n_cond2_cond3_385, label %216, label %217

; <label>:216:                                    ; preds = %block_0x25d
  %_address_in_parent_stack_bt_387 = bitcast i8* %_pot_address_in_parent_stack_378 to i32*
  br label %217

; <label>:217:                                    ; preds = %block_0x25d, %216
  %218 = phi i32* [ %215, %block_0x25d ], [ %_address_in_parent_stack_bt_387, %216 ]
  %_new_load_388 = load i32, i32* %218
  %uadd218 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_388, i32 1)
  %219 = extractvalue { i32, i1 } %uadd218, 0
  %220 = sext i32 %219 to i64, !mcsema_real_eip !38
  %221 = shl nsw i64 %220, 2
  %222 = add i64 %221, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !39
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !39
  %224 = bitcast i64* %223 to i32*
  %_ptr_to_int_389 = ptrtoint i32* %224 to i64
  %_ptr_bt_391 = bitcast i32* %224 to i8*
  %_offset_above_rbp_392 = sub i64 %_ptr_to_int_389, %_local_end_to_int_
  %_pot_address_in_parent_stack_393 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_392
  %_cond1_394 = icmp ugt i8* %_ptr_bt_391, %_local_stack_end_ptr_
  %_cond2_1_395 = icmp ugt i8* %_ptr_bt_391, %_parent_stack_end_ptr_
  %_cond2_2_396 = icmp ult i8* %_ptr_bt_391, %_parent_stack_start_ptr_
  %_cond2_397 = or i1 %_cond2_1_395, %_cond2_2_396
  %_cond4_398 = icmp ule i8* %_pot_address_in_parent_stack_393, %_parent_stack_end_ptr_
  %_cond1_n_cond2_399 = and i1 %_cond1_394, %_cond2_397
  %_cond1_n_cond2_cond3_400 = and i1 %_cond1_n_cond2_399, %_cond4_398
  br i1 %_cond1_n_cond2_cond3_400, label %225, label %226

; <label>:225:                                    ; preds = %217
  %_address_in_parent_stack_bt_402 = bitcast i8* %_pot_address_in_parent_stack_393 to i32*
  br label %226

; <label>:226:                                    ; preds = %217, %225
  %227 = phi i32* [ %224, %217 ], [ %_address_in_parent_stack_bt_402, %225 ]
  %_new_load_403 = load i32, i32* %227
  %228 = zext i32 %_new_load_403 to i64, !mcsema_real_eip !39
  %_load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_53 = bitcast i8* %_load_rsp_ptr_52 to i64*
  %_ptr_to_int_404 = ptrtoint i64* %_allin_new_bt_53 to i64
  %_offset_above_rbp_407 = sub i64 %_ptr_to_int_404, %_local_end_to_int_
  %_pot_address_in_parent_stack_408 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_407
  %_cond1_409 = icmp ugt i8* %_load_rsp_ptr_52, %_local_stack_end_ptr_
  %_cond2_1_410 = icmp ugt i8* %_load_rsp_ptr_52, %_parent_stack_end_ptr_
  %_cond2_2_411 = icmp ult i8* %_load_rsp_ptr_52, %_parent_stack_start_ptr_
  %_cond2_412 = or i1 %_cond2_1_410, %_cond2_2_411
  %_cond4_413 = icmp ule i8* %_pot_address_in_parent_stack_408, %_parent_stack_end_ptr_
  %_cond1_n_cond2_414 = and i1 %_cond1_409, %_cond2_412
  %_cond1_n_cond2_cond3_415 = and i1 %_cond1_n_cond2_414, %_cond4_413
  br i1 %_cond1_n_cond2_cond3_415, label %229, label %230

; <label>:229:                                    ; preds = %226
  %_address_in_parent_stack_bt_417 = bitcast i8* %_pot_address_in_parent_stack_408 to i64*
  br label %230

; <label>:230:                                    ; preds = %226, %229
  %231 = phi i64* [ %_allin_new_bt_53, %226 ], [ %_address_in_parent_stack_bt_417, %229 ]
  %_new_load_418 = load i64, i64* %231
  %_new_gep_54 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 8
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %_ptr_to_int_419 = ptrtoint i64* %_allin_new_bt_55 to i64
  %_offset_above_rbp_422 = sub i64 %_ptr_to_int_419, %_local_end_to_int_
  %_pot_address_in_parent_stack_423 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_422
  %_cond1_424 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_425 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_426 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_427 = or i1 %_cond2_1_425, %_cond2_2_426
  %_cond4_428 = icmp ule i8* %_pot_address_in_parent_stack_423, %_parent_stack_end_ptr_
  %_cond1_n_cond2_429 = and i1 %_cond1_424, %_cond2_427
  %_cond1_n_cond2_cond3_430 = and i1 %_cond1_n_cond2_429, %_cond4_428
  br i1 %_cond1_n_cond2_cond3_430, label %232, label %233

; <label>:232:                                    ; preds = %230
  %_address_in_parent_stack_bt_432 = bitcast i8* %_pot_address_in_parent_stack_423 to i64*
  br label %233

; <label>:233:                                    ; preds = %230, %232
  %234 = phi i64* [ %_allin_new_bt_55, %230 ], [ %_address_in_parent_stack_bt_432, %232 ]
  %_new_load_433 = load i64, i64* %234
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 16
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %_ptr_to_int_434 = ptrtoint i64* %_allin_new_bt_57 to i64
  %_offset_above_rbp_437 = sub i64 %_ptr_to_int_434, %_local_end_to_int_
  %_pot_address_in_parent_stack_438 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_437
  %_cond1_439 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_440 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_441 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_442 = or i1 %_cond2_1_440, %_cond2_2_441
  %_cond4_443 = icmp ule i8* %_pot_address_in_parent_stack_438, %_parent_stack_end_ptr_
  %_cond1_n_cond2_444 = and i1 %_cond1_439, %_cond2_442
  %_cond1_n_cond2_cond3_445 = and i1 %_cond1_n_cond2_444, %_cond4_443
  br i1 %_cond1_n_cond2_cond3_445, label %235, label %236

; <label>:235:                                    ; preds = %233
  %_address_in_parent_stack_bt_447 = bitcast i8* %_pot_address_in_parent_stack_438 to i64*
  br label %236

; <label>:236:                                    ; preds = %233, %235
  %237 = phi i64* [ %_allin_new_bt_57, %233 ], [ %_address_in_parent_stack_bt_447, %235 ]
  %_new_load_448 = load i64, i64* %237
  %_new_gep_58 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 24
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %_ptr_to_int_449 = ptrtoint i64* %_allin_new_bt_59 to i64
  %_offset_above_rbp_452 = sub i64 %_ptr_to_int_449, %_local_end_to_int_
  %_pot_address_in_parent_stack_453 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_452
  %_cond1_454 = icmp ugt i8* %_new_gep_58, %_local_stack_end_ptr_
  %_cond2_1_455 = icmp ugt i8* %_new_gep_58, %_parent_stack_end_ptr_
  %_cond2_2_456 = icmp ult i8* %_new_gep_58, %_parent_stack_start_ptr_
  %_cond2_457 = or i1 %_cond2_1_455, %_cond2_2_456
  %_cond4_458 = icmp ule i8* %_pot_address_in_parent_stack_453, %_parent_stack_end_ptr_
  %_cond1_n_cond2_459 = and i1 %_cond1_454, %_cond2_457
  %_cond1_n_cond2_cond3_460 = and i1 %_cond1_n_cond2_459, %_cond4_458
  br i1 %_cond1_n_cond2_cond3_460, label %238, label %239

; <label>:238:                                    ; preds = %236
  %_address_in_parent_stack_bt_462 = bitcast i8* %_pot_address_in_parent_stack_453 to i64*
  br label %239

; <label>:239:                                    ; preds = %236, %238
  %240 = phi i64* [ %_allin_new_bt_59, %236 ], [ %_address_in_parent_stack_bt_462, %238 ]
  %_new_load_463 = load i64, i64* %240
  %_new_gep_60 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 32
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_464 = ptrtoint i64* %_allin_new_bt_61 to i64
  %_offset_above_rbp_467 = sub i64 %_ptr_to_int_464, %_local_end_to_int_
  %_pot_address_in_parent_stack_468 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_467
  %_cond1_469 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_470 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_471 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_472 = or i1 %_cond2_1_470, %_cond2_2_471
  %_cond4_473 = icmp ule i8* %_pot_address_in_parent_stack_468, %_parent_stack_end_ptr_
  %_cond1_n_cond2_474 = and i1 %_cond1_469, %_cond2_472
  %_cond1_n_cond2_cond3_475 = and i1 %_cond1_n_cond2_474, %_cond4_473
  br i1 %_cond1_n_cond2_cond3_475, label %241, label %242

; <label>:241:                                    ; preds = %239
  %_address_in_parent_stack_bt_477 = bitcast i8* %_pot_address_in_parent_stack_468 to i64*
  br label %242

; <label>:242:                                    ; preds = %239, %241
  %243 = phi i64* [ %_allin_new_bt_61, %239 ], [ %_address_in_parent_stack_bt_477, %241 ]
  %_new_load_478 = load i64, i64* %243
  %_new_gep_62 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 40
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %_ptr_to_int_479 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_482 = sub i64 %_ptr_to_int_479, %_local_end_to_int_
  %_pot_address_in_parent_stack_483 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_482
  %_cond1_484 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_485 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_486 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_487 = or i1 %_cond2_1_485, %_cond2_2_486
  %_cond4_488 = icmp ule i8* %_pot_address_in_parent_stack_483, %_parent_stack_end_ptr_
  %_cond1_n_cond2_489 = and i1 %_cond1_484, %_cond2_487
  %_cond1_n_cond2_cond3_490 = and i1 %_cond1_n_cond2_489, %_cond4_488
  br i1 %_cond1_n_cond2_cond3_490, label %244, label %245

; <label>:244:                                    ; preds = %242
  %_address_in_parent_stack_bt_492 = bitcast i8* %_pot_address_in_parent_stack_483 to i64*
  br label %245

; <label>:245:                                    ; preds = %242, %244
  %246 = phi i64* [ %_allin_new_bt_63, %242 ], [ %_address_in_parent_stack_bt_492, %244 ]
  %_new_load_493 = load i64, i64* %246
  %_new_gep_64 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 48
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %_ptr_to_int_494 = ptrtoint i64* %_allin_new_bt_65 to i64
  %_offset_above_rbp_497 = sub i64 %_ptr_to_int_494, %_local_end_to_int_
  %_pot_address_in_parent_stack_498 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_497
  %_cond1_499 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_500 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_501 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_502 = or i1 %_cond2_1_500, %_cond2_2_501
  %_cond4_503 = icmp ule i8* %_pot_address_in_parent_stack_498, %_parent_stack_end_ptr_
  %_cond1_n_cond2_504 = and i1 %_cond1_499, %_cond2_502
  %_cond1_n_cond2_cond3_505 = and i1 %_cond1_n_cond2_504, %_cond4_503
  br i1 %_cond1_n_cond2_cond3_505, label %247, label %248

; <label>:247:                                    ; preds = %245
  %_address_in_parent_stack_bt_507 = bitcast i8* %_pot_address_in_parent_stack_498 to i64*
  br label %248

; <label>:248:                                    ; preds = %245, %247
  %249 = phi i64* [ %_allin_new_bt_65, %245 ], [ %_address_in_parent_stack_bt_507, %247 ]
  %_new_load_508 = load i64, i64* %249
  %_new_gep_66 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 56
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %_ptr_to_int_509 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_512 = sub i64 %_ptr_to_int_509, %_local_end_to_int_
  %_pot_address_in_parent_stack_513 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_512
  %_cond1_514 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_515 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_516 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_517 = or i1 %_cond2_1_515, %_cond2_2_516
  %_cond4_518 = icmp ule i8* %_pot_address_in_parent_stack_513, %_parent_stack_end_ptr_
  %_cond1_n_cond2_519 = and i1 %_cond1_514, %_cond2_517
  %_cond1_n_cond2_cond3_520 = and i1 %_cond1_n_cond2_519, %_cond4_518
  br i1 %_cond1_n_cond2_cond3_520, label %250, label %251

; <label>:250:                                    ; preds = %248
  %_address_in_parent_stack_bt_522 = bitcast i8* %_pot_address_in_parent_stack_513 to i64*
  br label %251

; <label>:251:                                    ; preds = %248, %250
  %252 = phi i64* [ %_allin_new_bt_67, %248 ], [ %_address_in_parent_stack_bt_522, %250 ]
  %_new_load_523 = load i64, i64* %252
  %_new_gep_68 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 64
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %_ptr_to_int_524 = ptrtoint i64* %_allin_new_bt_69 to i64
  %_offset_above_rbp_527 = sub i64 %_ptr_to_int_524, %_local_end_to_int_
  %_pot_address_in_parent_stack_528 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_527
  %_cond1_529 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_530 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_531 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_532 = or i1 %_cond2_1_530, %_cond2_2_531
  %_cond4_533 = icmp ule i8* %_pot_address_in_parent_stack_528, %_parent_stack_end_ptr_
  %_cond1_n_cond2_534 = and i1 %_cond1_529, %_cond2_532
  %_cond1_n_cond2_cond3_535 = and i1 %_cond1_n_cond2_534, %_cond4_533
  br i1 %_cond1_n_cond2_cond3_535, label %253, label %254

; <label>:253:                                    ; preds = %251
  %_address_in_parent_stack_bt_537 = bitcast i8* %_pot_address_in_parent_stack_528 to i64*
  br label %254

; <label>:254:                                    ; preds = %251, %253
  %255 = phi i64* [ %_allin_new_bt_69, %251 ], [ %_address_in_parent_stack_bt_537, %253 ]
  %_new_load_538 = load i64, i64* %255
  %_new_gep_70 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 72
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %_ptr_to_int_539 = ptrtoint i64* %_allin_new_bt_71 to i64
  %_offset_above_rbp_542 = sub i64 %_ptr_to_int_539, %_local_end_to_int_
  %_pot_address_in_parent_stack_543 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_542
  %_cond1_544 = icmp ugt i8* %_new_gep_70, %_local_stack_end_ptr_
  %_cond2_1_545 = icmp ugt i8* %_new_gep_70, %_parent_stack_end_ptr_
  %_cond2_2_546 = icmp ult i8* %_new_gep_70, %_parent_stack_start_ptr_
  %_cond2_547 = or i1 %_cond2_1_545, %_cond2_2_546
  %_cond4_548 = icmp ule i8* %_pot_address_in_parent_stack_543, %_parent_stack_end_ptr_
  %_cond1_n_cond2_549 = and i1 %_cond1_544, %_cond2_547
  %_cond1_n_cond2_cond3_550 = and i1 %_cond1_n_cond2_549, %_cond4_548
  br i1 %_cond1_n_cond2_cond3_550, label %256, label %257

; <label>:256:                                    ; preds = %254
  %_address_in_parent_stack_bt_552 = bitcast i8* %_pot_address_in_parent_stack_543 to i64*
  br label %257

; <label>:257:                                    ; preds = %254, %256
  %258 = phi i64* [ %_allin_new_bt_71, %254 ], [ %_address_in_parent_stack_bt_552, %256 ]
  %_new_load_553 = load i64, i64* %258
  %259 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%0* @data_0x2ce to i64), i64 19), i64 %228, i64 %RDX_val.0, i64 %220, i64 %87, i64 %88, i64 %_new_load_418, i64 %_new_load_433, i64 %_new_load_448, i64 %_new_load_463, i64 %_new_load_478, i64 %_new_load_493, i64 %_new_load_508, i64 %_new_load_523, i64 %_new_load_538, i64 %_new_load_553), !mcsema_real_eip !40
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -20
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %260 = trunc i64 %259 to i32, !mcsema_real_eip !41
  %261 = bitcast i64* %_allin_new_bt_74 to i32*
  store i32 %260, i32* %261, !mcsema_real_eip !41
  %_load_rsp_ptr_75 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_76 = ptrtoint i8* %_load_rsp_ptr_75 to i64
  %uadd219 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_76, i64 32)
  %262 = extractvalue { i64, i1 } %uadd219, 0
  %263 = xor i64 %262, %_new_ptr2int_76, !mcsema_real_eip !42
  %264 = and i64 %263, 16, !mcsema_real_eip !42
  %265 = icmp ne i64 %264, 0, !mcsema_real_eip !42
  %266 = icmp slt i64 %262, 0
  %267 = icmp eq i64 %262, 0, !mcsema_real_eip !42
  %268 = xor i64 %_new_ptr2int_76, -9223372036854775808, !mcsema_real_eip !42
  %269 = and i64 %263, %268, !mcsema_real_eip !42
  %270 = icmp slt i64 %269, 0
  %271 = trunc i64 %262 to i8, !mcsema_real_eip !42
  %272 = tail call i8 @llvm.ctpop.i8(i8 %271), !mcsema_real_eip !42
  %273 = and i8 %272, 1
  %274 = icmp eq i8 %273, 0
  %275 = extractvalue { i64, i1 } %uadd219, 1
  %_new_int2ptr_ = inttoptr i64 %262 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %276 = inttoptr i64 %262 to i64*, !mcsema_real_eip !43
  %_ptr_bt_556 = bitcast i64* %276 to i8*
  %_offset_above_rbp_557 = sub i64 %262, %_local_end_to_int_
  %_pot_address_in_parent_stack_558 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_557
  %_cond1_559 = icmp ugt i8* %_ptr_bt_556, %_local_stack_end_ptr_
  %_cond2_1_560 = icmp ugt i8* %_ptr_bt_556, %_parent_stack_end_ptr_
  %_cond2_2_561 = icmp ult i8* %_ptr_bt_556, %_parent_stack_start_ptr_
  %_cond2_562 = or i1 %_cond2_1_560, %_cond2_2_561
  %_cond4_563 = icmp ule i8* %_pot_address_in_parent_stack_558, %_parent_stack_end_ptr_
  %_cond1_n_cond2_564 = and i1 %_cond1_559, %_cond2_562
  %_cond1_n_cond2_cond3_565 = and i1 %_cond1_n_cond2_564, %_cond4_563
  br i1 %_cond1_n_cond2_cond3_565, label %277, label %278

; <label>:277:                                    ; preds = %257
  %_address_in_parent_stack_bt_567 = bitcast i8* %_pot_address_in_parent_stack_558 to i64*
  br label %278

; <label>:278:                                    ; preds = %257, %277
  %279 = phi i64* [ %276, %257 ], [ %_address_in_parent_stack_bt_567, %277 ]
  %_new_load_568 = load i64, i64* %279
  %_new_int2ptr_77 = inttoptr i64 %_new_load_568 to i8*
  store volatile i8* %_new_int2ptr_77, i8** %_RBP_ptr_
  %280 = add i64 %262, 16, !mcsema_real_eip !44
  %_new_int2ptr_78 = inttoptr i64 %280 to i8*
  store volatile i8* %_new_int2ptr_78, i8** %_RSP_ptr_
  store i64 %259, i64* %RAX, !mcsema_real_eip !44
  store i64 %83, i64* %RBX, !mcsema_real_eip !44
  store i64 %220, i64* %RCX, !mcsema_real_eip !44
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !44
  store i64 %228, i64* %RSI, !mcsema_real_eip !44
  store i64 add (i64 ptrtoint (%0* @data_0x2ce to i64), i64 19), i64* %RDI, !mcsema_real_eip !44
  store volatile i64 %280, i64* %RSP
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_82 = ptrtoint i8* %_load_rbp_ptr_81 to i64
  store volatile i64 %_new_ptr2int_82, i64* %RBP
  store i64 %87, i64* %R8, !mcsema_real_eip !44
  store i64 %88, i64* %R9, !mcsema_real_eip !44
  store i64 %89, i64* %R10, !mcsema_real_eip !44
  store i64 %90, i64* %R11, !mcsema_real_eip !44
  store i64 %91, i64* %R12, !mcsema_real_eip !44
  store i64 %92, i64* %R13, !mcsema_real_eip !44
  store i64 %93, i64* %R14, !mcsema_real_eip !44
  store i64 %94, i64* %R15, !mcsema_real_eip !44
  store i64 %95, i64* %RIP, !mcsema_real_eip !44
  store i1 %275, i1* %CF, align 1, !mcsema_real_eip !44
  store i1 %274, i1* %PF, align 1, !mcsema_real_eip !44
  store i1 %265, i1* %AF, align 1, !mcsema_real_eip !44
  store i1 %267, i1* %ZF, align 1, !mcsema_real_eip !44
  store i1 %266, i1* %SF, align 1, !mcsema_real_eip !44
  store i1 %270, i1* %OF, align 1, !mcsema_real_eip !44
  store i1 %96, i1* %DF, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !44
  store i1 %97, i1* %FPU_B, align 1, !mcsema_real_eip !44
  store i1 %98, i1* %FPU_C3, align 1, !mcsema_real_eip !44
  store i3 %99, i3* %FPU_TOP, align 1, !mcsema_real_eip !44
  store i1 %100, i1* %FPU_C2, align 1, !mcsema_real_eip !44
  store i1 %101, i1* %FPU_C1, align 1, !mcsema_real_eip !44
  store i1 %102, i1* %FPU_C0, align 1, !mcsema_real_eip !44
  store i1 %103, i1* %FPU_ES, align 1, !mcsema_real_eip !44
  store i1 %104, i1* %FPU_SF, align 1, !mcsema_real_eip !44
  store i1 %105, i1* %FPU_PE, align 1, !mcsema_real_eip !44
  store i1 %106, i1* %FPU_UE, align 1, !mcsema_real_eip !44
  store i1 %107, i1* %FPU_OE, align 1, !mcsema_real_eip !44
  store i1 %108, i1* %FPU_ZE, align 1, !mcsema_real_eip !44
  store i1 %109, i1* %FPU_DE, align 1, !mcsema_real_eip !44
  store i1 %110, i1* %FPU_IE, align 1, !mcsema_real_eip !44
  store i1 %111, i1* %FPU_X, align 1, !mcsema_real_eip !44
  store i2 %112, i2* %FPU_RC, align 1, !mcsema_real_eip !44
  store i2 %113, i2* %FPU_PC, align 1, !mcsema_real_eip !44
  store i1 %114, i1* %FPU_PM, align 1, !mcsema_real_eip !44
  store i1 %115, i1* %FPU_UM, align 1, !mcsema_real_eip !44
  store i1 %116, i1* %FPU_OM, align 1, !mcsema_real_eip !44
  store i1 %117, i1* %FPU_ZM, align 1, !mcsema_real_eip !44
  store i1 %118, i1* %FPU_DM, align 1, !mcsema_real_eip !44
  store i1 %119, i1* %FPU_IM, align 1, !mcsema_real_eip !44
  br i1 %_cond1_n_cond2_cond3_125, label %281, label %282

; <label>:281:                                    ; preds = %278
  %_address_in_parent_stack_bt_582 = bitcast i8* %_pot_address_in_parent_stack_118 to i64*
  br label %282

; <label>:282:                                    ; preds = %278, %281
  %283 = phi i64* [ %45, %278 ], [ %_address_in_parent_stack_bt_582, %281 ]
  %_new_load_583 = load i64, i64* %283
  store i64 %_new_load_583, i64* %44, align 4
  store i16 %123, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !44
  store i64 %124, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !44
  store i16 %125, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !44
  store i64 %126, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !44
  store i11 %127, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !44
  store i128 %128, i128* %XMM0, align 1, !mcsema_real_eip !44
  store i128 %129, i128* %XMM1, align 1, !mcsema_real_eip !44
  store i128 %130, i128* %XMM2, align 1, !mcsema_real_eip !44
  store i128 %131, i128* %XMM3, align 1, !mcsema_real_eip !44
  store i128 %132, i128* %XMM4, align 1, !mcsema_real_eip !44
  store i128 %133, i128* %XMM5, align 1, !mcsema_real_eip !44
  store i128 %134, i128* %XMM6, align 1, !mcsema_real_eip !44
  store i128 %135, i128* %XMM7, align 1, !mcsema_real_eip !44
  store i128 %136, i128* %XMM8, align 1, !mcsema_real_eip !44
  store i128 %137, i128* %XMM9, align 1, !mcsema_real_eip !44
  store i128 %138, i128* %XMM10, align 1, !mcsema_real_eip !44
  store i128 %139, i128* %XMM11, align 1, !mcsema_real_eip !44
  store i128 %140, i128* %XMM12, align 1, !mcsema_real_eip !44
  store i128 %141, i128* %XMM13, align 1, !mcsema_real_eip !44
  store i128 %142, i128* %XMM14, align 1, !mcsema_real_eip !44
  store i128 %143, i128* %XMM15, align 1, !mcsema_real_eip !44
  store i64 %144, i64* %STACK_BASE, align 1, !mcsema_real_eip !44
  store i64 %145, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44

block_0x1a0:                                      ; preds = %207
  br i1 %_cond1_n_cond2_cond3_370, label %284, label %285

; <label>:284:                                    ; preds = %block_0x1a0
  %_address_in_parent_stack_bt_597 = bitcast i8* %_pot_address_in_parent_stack_363 to i32*
  br label %285

; <label>:285:                                    ; preds = %block_0x1a0, %284
  %286 = phi i32* [ %205, %block_0x1a0 ], [ %_address_in_parent_stack_bt_597, %284 ]
  %_new_load_598 = load i32, i32* %286
  %287 = sext i32 %_new_load_598 to i64, !mcsema_real_eip !45
  %288 = shl nsw i64 %287, 2
  %289 = add i64 %288, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !46
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !46
  %291 = bitcast i64* %290 to i32*
  %_ptr_to_int_599 = ptrtoint i32* %291 to i64
  %_ptr_bt_601 = bitcast i32* %291 to i8*
  %_offset_above_rbp_602 = sub i64 %_ptr_to_int_599, %_local_end_to_int_
  %_pot_address_in_parent_stack_603 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_602
  %_cond1_604 = icmp ugt i8* %_ptr_bt_601, %_local_stack_end_ptr_
  %_cond2_1_605 = icmp ugt i8* %_ptr_bt_601, %_parent_stack_end_ptr_
  %_cond2_2_606 = icmp ult i8* %_ptr_bt_601, %_parent_stack_start_ptr_
  %_cond2_607 = or i1 %_cond2_1_605, %_cond2_2_606
  %_cond4_608 = icmp ule i8* %_pot_address_in_parent_stack_603, %_parent_stack_end_ptr_
  %_cond1_n_cond2_609 = and i1 %_cond1_604, %_cond2_607
  %_cond1_n_cond2_cond3_610 = and i1 %_cond1_n_cond2_609, %_cond4_608
  br i1 %_cond1_n_cond2_cond3_610, label %292, label %293

; <label>:292:                                    ; preds = %285
  %_address_in_parent_stack_bt_612 = bitcast i8* %_pot_address_in_parent_stack_603 to i32*
  br label %293

; <label>:293:                                    ; preds = %285, %292
  %294 = phi i32* [ %291, %285 ], [ %_address_in_parent_stack_bt_612, %292 ]
  %_new_load_613 = load i32, i32* %294
  %295 = zext i32 %_new_load_613 to i64, !mcsema_real_eip !46
  br i1 %_cond1_n_cond2_cond3_370, label %296, label %297

; <label>:296:                                    ; preds = %293
  %_address_in_parent_stack_bt_627 = bitcast i8* %_pot_address_in_parent_stack_363 to i32*
  br label %297

; <label>:297:                                    ; preds = %293, %296
  %298 = phi i32* [ %205, %293 ], [ %_address_in_parent_stack_bt_627, %296 ]
  %_new_load_628 = load i32, i32* %298
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_628, i32 1)
  %299 = extractvalue { i32, i1 } %uadd, 0
  %300 = zext i32 %299 to i64, !mcsema_real_eip !47
  %301 = sext i32 %299 to i64, !mcsema_real_eip !48
  %302 = shl nsw i64 %301, 2
  %303 = add i64 %302, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !49
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !49
  %305 = bitcast i64* %304 to i32*
  %_ptr_to_int_629 = ptrtoint i32* %305 to i64
  %_ptr_bt_631 = bitcast i32* %305 to i8*
  %_offset_above_rbp_632 = sub i64 %_ptr_to_int_629, %_local_end_to_int_
  %_pot_address_in_parent_stack_633 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_632
  %_cond1_634 = icmp ugt i8* %_ptr_bt_631, %_local_stack_end_ptr_
  %_cond2_1_635 = icmp ugt i8* %_ptr_bt_631, %_parent_stack_end_ptr_
  %_cond2_2_636 = icmp ult i8* %_ptr_bt_631, %_parent_stack_start_ptr_
  %_cond2_637 = or i1 %_cond2_1_635, %_cond2_2_636
  %_cond4_638 = icmp ule i8* %_pot_address_in_parent_stack_633, %_parent_stack_end_ptr_
  %_cond1_n_cond2_639 = and i1 %_cond1_634, %_cond2_637
  %_cond1_n_cond2_cond3_640 = and i1 %_cond1_n_cond2_639, %_cond4_638
  br i1 %_cond1_n_cond2_cond3_640, label %306, label %307

; <label>:306:                                    ; preds = %297
  %_address_in_parent_stack_bt_642 = bitcast i8* %_pot_address_in_parent_stack_633 to i32*
  br label %307

; <label>:307:                                    ; preds = %297, %306
  %308 = phi i32* [ %305, %297 ], [ %_address_in_parent_stack_bt_642, %306 ]
  %_new_load_643 = load i32, i32* %308
  %309 = sub i32 %_new_load_613, %_new_load_643, !mcsema_real_eip !49
  %310 = xor i32 %309, %_new_load_613, !mcsema_real_eip !49
  %311 = icmp eq i32 %_new_load_613, %_new_load_643
  %312 = icmp slt i32 %309, 0
  %313 = xor i32 %_new_load_613, %_new_load_643, !mcsema_real_eip !49
  %314 = and i32 %310, %313, !mcsema_real_eip !49
  %315 = icmp slt i32 %314, 0
  %316 = xor i1 %312, %315
  %317 = or i1 %311, %316, !mcsema_real_eip !50
  br i1 %317, label %block_0x1fd, label %block_0x1c1, !mcsema_real_eip !50

block_0x20b:                                      ; preds = %207
  br i1 %_cond1_n_cond2_cond3_153, label %318, label %319

; <label>:318:                                    ; preds = %block_0x20b
  %_address_in_parent_stack_bt_655 = bitcast i8* %_pot_address_in_parent_stack_146 to i32*
  br label %319

; <label>:319:                                    ; preds = %block_0x20b, %318
  %320 = phi i32* [ bitcast (%5* @data_0x460 to i32*), %block_0x20b ], [ %_address_in_parent_stack_bt_655, %318 ]
  %_new_load_656 = load i32, i32* %320
  %321 = add i32 %_new_load_656, -1
  br label %block_0x17b, !mcsema_real_eip !51

block_0x1c1:                                      ; preds = %307
  br i1 %_cond1_n_cond2_cond3_370, label %322, label %323

; <label>:322:                                    ; preds = %block_0x1c1
  %_address_in_parent_stack_bt_670 = bitcast i8* %_pot_address_in_parent_stack_363 to i32*
  br label %323

; <label>:323:                                    ; preds = %block_0x1c1, %322
  %324 = phi i32* [ %205, %block_0x1c1 ], [ %_address_in_parent_stack_bt_670, %322 ]
  %_new_load_671 = load i32, i32* %324
  %325 = sext i32 %_new_load_671 to i64, !mcsema_real_eip !106
  %326 = shl nsw i64 %325, 2
  %327 = add i64 %326, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !107
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !107
  %329 = bitcast i64* %328 to i32*
  %_ptr_to_int_672 = ptrtoint i32* %329 to i64
  %_ptr_bt_674 = bitcast i32* %329 to i8*
  %_offset_above_rbp_675 = sub i64 %_ptr_to_int_672, %_local_end_to_int_
  %_pot_address_in_parent_stack_676 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_675
  %_cond1_677 = icmp ugt i8* %_ptr_bt_674, %_local_stack_end_ptr_
  %_cond2_1_678 = icmp ugt i8* %_ptr_bt_674, %_parent_stack_end_ptr_
  %_cond2_2_679 = icmp ult i8* %_ptr_bt_674, %_parent_stack_start_ptr_
  %_cond2_680 = or i1 %_cond2_1_678, %_cond2_2_679
  %_cond4_681 = icmp ule i8* %_pot_address_in_parent_stack_676, %_parent_stack_end_ptr_
  %_cond1_n_cond2_682 = and i1 %_cond1_677, %_cond2_680
  %_cond1_n_cond2_cond3_683 = and i1 %_cond1_n_cond2_682, %_cond4_681
  br i1 %_cond1_n_cond2_cond3_683, label %330, label %331

; <label>:330:                                    ; preds = %323
  %_address_in_parent_stack_bt_685 = bitcast i8* %_pot_address_in_parent_stack_676 to i32*
  br label %331

; <label>:331:                                    ; preds = %323, %330
  %332 = phi i32* [ %329, %323 ], [ %_address_in_parent_stack_bt_685, %330 ]
  %_new_load_686 = load i32, i32* %332
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -12
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %333 = bitcast i64* %_allin_new_bt_94 to i32*
  store i32 %_new_load_686, i32* %333, !mcsema_real_eip !52
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -8
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %334 = bitcast i64* %_allin_new_bt_97 to i32*
  %_ptr_to_int_687 = ptrtoint i32* %334 to i64
  %_ptr_bt_689 = bitcast i32* %334 to i8*
  %_offset_above_rbp_690 = sub i64 %_ptr_to_int_687, %_local_end_to_int_
  %_pot_address_in_parent_stack_691 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_690
  %_cond1_692 = icmp ugt i8* %_ptr_bt_689, %_local_stack_end_ptr_
  %_cond2_1_693 = icmp ugt i8* %_ptr_bt_689, %_parent_stack_end_ptr_
  %_cond2_2_694 = icmp ult i8* %_ptr_bt_689, %_parent_stack_start_ptr_
  %_cond2_695 = or i1 %_cond2_1_693, %_cond2_2_694
  %_cond4_696 = icmp ule i8* %_pot_address_in_parent_stack_691, %_parent_stack_end_ptr_
  %_cond1_n_cond2_697 = and i1 %_cond1_692, %_cond2_695
  %_cond1_n_cond2_cond3_698 = and i1 %_cond1_n_cond2_697, %_cond4_696
  br i1 %_cond1_n_cond2_cond3_698, label %335, label %336

; <label>:335:                                    ; preds = %331
  %_address_in_parent_stack_bt_700 = bitcast i8* %_pot_address_in_parent_stack_691 to i32*
  br label %336

; <label>:336:                                    ; preds = %331, %335
  %337 = phi i32* [ %334, %331 ], [ %_address_in_parent_stack_bt_700, %335 ]
  %_new_load_701 = load i32, i32* %337
  %uadd214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_701, i32 1)
  %338 = extractvalue { i32, i1 } %uadd214, 0
  %339 = sext i32 %338 to i64, !mcsema_real_eip !54
  %340 = shl nsw i64 %339, 2
  %341 = add i64 %340, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !55
  %342 = inttoptr i64 %341 to i64*, !mcsema_real_eip !55
  %343 = bitcast i64* %342 to i32*
  %_ptr_to_int_702 = ptrtoint i32* %343 to i64
  %_ptr_bt_704 = bitcast i32* %343 to i8*
  %_offset_above_rbp_705 = sub i64 %_ptr_to_int_702, %_local_end_to_int_
  %_pot_address_in_parent_stack_706 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_705
  %_cond1_707 = icmp ugt i8* %_ptr_bt_704, %_local_stack_end_ptr_
  %_cond2_1_708 = icmp ugt i8* %_ptr_bt_704, %_parent_stack_end_ptr_
  %_cond2_2_709 = icmp ult i8* %_ptr_bt_704, %_parent_stack_start_ptr_
  %_cond2_710 = or i1 %_cond2_1_708, %_cond2_2_709
  %_cond4_711 = icmp ule i8* %_pot_address_in_parent_stack_706, %_parent_stack_end_ptr_
  %_cond1_n_cond2_712 = and i1 %_cond1_707, %_cond2_710
  %_cond1_n_cond2_cond3_713 = and i1 %_cond1_n_cond2_712, %_cond4_711
  br i1 %_cond1_n_cond2_cond3_713, label %344, label %345

; <label>:344:                                    ; preds = %336
  %_address_in_parent_stack_bt_715 = bitcast i8* %_pot_address_in_parent_stack_706 to i32*
  br label %345

; <label>:345:                                    ; preds = %336, %344
  %346 = phi i32* [ %343, %336 ], [ %_address_in_parent_stack_bt_715, %344 ]
  %_new_load_716 = load i32, i32* %346
  %347 = zext i32 %_new_load_716 to i64, !mcsema_real_eip !55
  br i1 %_cond1_n_cond2_cond3_698, label %348, label %349

; <label>:348:                                    ; preds = %345
  %_address_in_parent_stack_bt_730 = bitcast i8* %_pot_address_in_parent_stack_691 to i32*
  br label %349

; <label>:349:                                    ; preds = %345, %348
  %350 = phi i32* [ %334, %345 ], [ %_address_in_parent_stack_bt_730, %348 ]
  %_new_load_731 = load i32, i32* %350
  %351 = sext i32 %_new_load_731 to i64, !mcsema_real_eip !56
  %352 = shl nsw i64 %351, 2
  %353 = add i64 %352, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !57
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !57
  %355 = bitcast i64* %354 to i32*
  store i32 %_new_load_716, i32* %355, !mcsema_real_eip !57
  %_load_rbp_ptr_101 = load i8*, i8** %_RBP_ptr_
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -12
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %356 = bitcast i64* %_allin_new_bt_103 to i32*
  %_ptr_to_int_732 = ptrtoint i32* %356 to i64
  %_ptr_bt_734 = bitcast i32* %356 to i8*
  %_offset_above_rbp_735 = sub i64 %_ptr_to_int_732, %_local_end_to_int_
  %_pot_address_in_parent_stack_736 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_735
  %_cond1_737 = icmp ugt i8* %_ptr_bt_734, %_local_stack_end_ptr_
  %_cond2_1_738 = icmp ugt i8* %_ptr_bt_734, %_parent_stack_end_ptr_
  %_cond2_2_739 = icmp ult i8* %_ptr_bt_734, %_parent_stack_start_ptr_
  %_cond2_740 = or i1 %_cond2_1_738, %_cond2_2_739
  %_cond4_741 = icmp ule i8* %_pot_address_in_parent_stack_736, %_parent_stack_end_ptr_
  %_cond1_n_cond2_742 = and i1 %_cond1_737, %_cond2_740
  %_cond1_n_cond2_cond3_743 = and i1 %_cond1_n_cond2_742, %_cond4_741
  br i1 %_cond1_n_cond2_cond3_743, label %357, label %358

; <label>:357:                                    ; preds = %349
  %_address_in_parent_stack_bt_745 = bitcast i8* %_pot_address_in_parent_stack_736 to i32*
  br label %358

; <label>:358:                                    ; preds = %349, %357
  %359 = phi i32* [ %356, %349 ], [ %_address_in_parent_stack_bt_745, %357 ]
  %_new_load_746 = load i32, i32* %359
  %360 = zext i32 %_new_load_746 to i64, !mcsema_real_eip !58
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -8
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %361 = bitcast i64* %_allin_new_bt_106 to i32*
  %_ptr_to_int_747 = ptrtoint i32* %361 to i64
  %_ptr_bt_749 = bitcast i32* %361 to i8*
  %_offset_above_rbp_750 = sub i64 %_ptr_to_int_747, %_local_end_to_int_
  %_pot_address_in_parent_stack_751 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_750
  %_cond1_752 = icmp ugt i8* %_ptr_bt_749, %_local_stack_end_ptr_
  %_cond2_1_753 = icmp ugt i8* %_ptr_bt_749, %_parent_stack_end_ptr_
  %_cond2_2_754 = icmp ult i8* %_ptr_bt_749, %_parent_stack_start_ptr_
  %_cond2_755 = or i1 %_cond2_1_753, %_cond2_2_754
  %_cond4_756 = icmp ule i8* %_pot_address_in_parent_stack_751, %_parent_stack_end_ptr_
  %_cond1_n_cond2_757 = and i1 %_cond1_752, %_cond2_755
  %_cond1_n_cond2_cond3_758 = and i1 %_cond1_n_cond2_757, %_cond4_756
  br i1 %_cond1_n_cond2_cond3_758, label %362, label %363

; <label>:362:                                    ; preds = %358
  %_address_in_parent_stack_bt_760 = bitcast i8* %_pot_address_in_parent_stack_751 to i32*
  br label %363

; <label>:363:                                    ; preds = %358, %362
  %364 = phi i32* [ %361, %358 ], [ %_address_in_parent_stack_bt_760, %362 ]
  %_new_load_761 = load i32, i32* %364
  %uadd215 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_761, i32 1)
  %365 = extractvalue { i32, i1 } %uadd215, 0
  %366 = zext i32 %365 to i64, !mcsema_real_eip !60
  %367 = sext i32 %365 to i64, !mcsema_real_eip !61
  %368 = shl nsw i64 %367, 2
  %369 = add i64 %368, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !62
  %370 = inttoptr i64 %369 to i64*, !mcsema_real_eip !62
  %371 = bitcast i64* %370 to i32*
  store i32 %_new_load_746, i32* %371, !mcsema_real_eip !62
  br label %block_0x1fd

block_0x1fd:                                      ; preds = %363, %307
  %RCX_val.2 = phi i64 [ %295, %307 ], [ %360, %363 ]
  %RDX_val.2 = phi i64 [ %300, %307 ], [ %366, %363 ]
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -8
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %372 = bitcast i64* %_allin_new_bt_109 to i32*
  %_ptr_to_int_762 = ptrtoint i32* %372 to i64
  %_ptr_bt_764 = bitcast i32* %372 to i8*
  %_offset_above_rbp_765 = sub i64 %_ptr_to_int_762, %_local_end_to_int_
  %_pot_address_in_parent_stack_766 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_765
  %_cond1_767 = icmp ugt i8* %_ptr_bt_764, %_local_stack_end_ptr_
  %_cond2_1_768 = icmp ugt i8* %_ptr_bt_764, %_parent_stack_end_ptr_
  %_cond2_2_769 = icmp ult i8* %_ptr_bt_764, %_parent_stack_start_ptr_
  %_cond2_770 = or i1 %_cond2_1_768, %_cond2_2_769
  %_cond4_771 = icmp ule i8* %_pot_address_in_parent_stack_766, %_parent_stack_end_ptr_
  %_cond1_n_cond2_772 = and i1 %_cond1_767, %_cond2_770
  %_cond1_n_cond2_cond3_773 = and i1 %_cond1_n_cond2_772, %_cond4_771
  br i1 %_cond1_n_cond2_cond3_773, label %373, label %374

; <label>:373:                                    ; preds = %block_0x1fd
  %_address_in_parent_stack_bt_775 = bitcast i8* %_pot_address_in_parent_stack_766 to i32*
  br label %374

; <label>:374:                                    ; preds = %block_0x1fd, %373
  %375 = phi i32* [ %372, %block_0x1fd ], [ %_address_in_parent_stack_bt_775, %373 ]
  %_new_load_776 = load i32, i32* %375
  %uadd216 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_776, i32 1)
  %376 = extractvalue { i32, i1 } %uadd216, 0
  store i32 %376, i32* %372, !mcsema_real_eip !64
  br label %block_0x190, !mcsema_real_eip !65
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_60.3(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !66
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !66
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !66
  %1 = load i64, i64* %RAX, !mcsema_real_eip !66
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !66
  %2 = load i64, i64* %RBX, !mcsema_real_eip !66
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !66
  %3 = load i64, i64* %RCX, !mcsema_real_eip !66
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !66
  %4 = load i64, i64* %RDX, !mcsema_real_eip !66
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !66
  %5 = load i64, i64* %RSI, !mcsema_real_eip !66
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !66
  %6 = load i64, i64* %RDI, !mcsema_real_eip !66
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !66
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !66
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !66
  %7 = load i64, i64* %R8, !mcsema_real_eip !66
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !66
  %8 = load i64, i64* %R9, !mcsema_real_eip !66
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !66
  %9 = load i64, i64* %R10, !mcsema_real_eip !66
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !66
  %10 = load i64, i64* %R11, !mcsema_real_eip !66
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !66
  %11 = load i64, i64* %R12, !mcsema_real_eip !66
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !66
  %12 = load i64, i64* %R13, !mcsema_real_eip !66
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !66
  %13 = load i64, i64* %R14, !mcsema_real_eip !66
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !66
  %14 = load i64, i64* %R15, !mcsema_real_eip !66
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !66
  %15 = load i64, i64* %RIP, !mcsema_real_eip !66
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !66
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !66
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !66
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !66
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !66
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !66
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !66
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !66
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !66
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !66
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !66
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !66
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !66
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !66
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !66
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !66
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !66
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !66
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !66
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !66
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !66
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !66
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !66
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !66
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !66
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !66
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !66
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !66
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !66
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !66
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !66
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !66
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !66
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !66
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !66
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !66
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !66
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !66
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !66
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !66
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !66
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !66
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !66
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !66
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !66
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !66
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !66
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !66
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !66
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !66
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !66
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !66
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !66
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !66
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !66
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !66
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !66
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !66
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !66
  %44 = bitcast i8* %43 to i64*
  %45 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_ptr_to_int_ = ptrtoint i64* %44 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %43, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %43, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %43, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %46, label %47

; <label>:46:                                     ; preds = %entry
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %47

; <label>:47:                                     ; preds = %entry, %46
  %48 = phi i64* [ %44, %entry ], [ %_address_in_parent_stack_bt_, %46 ]
  %_new_load_ = load i64, i64* %48
  store i64 %_new_load_, i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !66
  %49 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !66
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !66
  %50 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !66
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !66
  %51 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !66
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !66
  %52 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !66
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !66
  %53 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !66
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !66
  %54 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !66
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !66
  %55 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !66
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !66
  %56 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !66
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !66
  %57 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !66
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !66
  %58 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !66
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !66
  %59 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !66
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !66
  %60 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !66
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !66
  %61 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !66
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !66
  %62 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !66
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !66
  %63 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !66
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !66
  %64 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !66
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !66
  %65 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !66
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !66
  %66 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !66
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !66
  %67 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !66
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !66
  %68 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !66
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !66
  %69 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !66
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !66
  %70 = load i64, i64* %STACK_BASE, !mcsema_real_eip !66
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !66
  %71 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !66
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %72 = and i64 %_trans_xor_, 16, !mcsema_real_eip !67
  %73 = icmp ne i64 %72, 0, !mcsema_real_eip !67
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %74 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !67
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_, 0
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_2, 32
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_2
  %77 = icmp slt i64 %_trans_xor_9, 0
  %_new_gep_10 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -48
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_11, !mcsema_real_eip !68
  store volatile i8* %_new_gep_10, i8** %_RSP_ptr_
  store i64 %1, i64* %RAX, !mcsema_real_eip !68
  store i64 %2, i64* %RBX, !mcsema_real_eip !68
  store i64 %3, i64* %RCX, !mcsema_real_eip !68
  store i64 %4, i64* %RDX, !mcsema_real_eip !68
  store i64 %5, i64* %RSI, !mcsema_real_eip !68
  store i64 %6, i64* %RDI, !mcsema_real_eip !68
  %_new_ptr2int_13 = ptrtoint i8* %_new_gep_10 to i64
  store volatile i64 %_new_ptr2int_13, i64* %RSP
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_15 = ptrtoint i8* %_load_rbp_ptr_14 to i64
  store volatile i64 %_new_ptr2int_15, i64* %RBP
  store i64 %7, i64* %R8, !mcsema_real_eip !68
  store i64 %8, i64* %R9, !mcsema_real_eip !68
  store i64 %9, i64* %R10, !mcsema_real_eip !68
  store i64 %10, i64* %R11, !mcsema_real_eip !68
  store i64 %11, i64* %R12, !mcsema_real_eip !68
  store i64 %12, i64* %R13, !mcsema_real_eip !68
  store i64 %13, i64* %R14, !mcsema_real_eip !68
  store i64 %14, i64* %R15, !mcsema_real_eip !68
  store i64 %15, i64* %RIP, !mcsema_real_eip !68
  store i1 %_trans_icmp_ne_7, i1* %CF, align 1, !mcsema_real_eip !68
  store i1 %76, i1* %PF, align 1, !mcsema_real_eip !68
  store i1 %73, i1* %AF, align 1, !mcsema_real_eip !68
  store i1 %_trans_icmp_eq_, i1* %ZF, align 1, !mcsema_real_eip !68
  store i1 %_trans_icmp_ne_, i1* %SF, align 1, !mcsema_real_eip !68
  store i1 %77, i1* %OF, align 1, !mcsema_real_eip !68
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !68
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !68
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !68
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !68
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !68
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !68
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !68
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !68
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !68
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !68
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !68
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !68
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !68
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !68
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !68
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !68
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !68
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !68
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !68
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !68
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !68
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !68
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !68
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !68
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !68
  %_ptr_to_int_71 = ptrtoint i64* %45 to i64
  %_ptr_bt_73 = bitcast i64* %45 to i8*
  %_offset_above_rbp_74 = sub i64 %_ptr_to_int_71, %_local_end_to_int_
  %_pot_address_in_parent_stack_75 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_74
  %_cond1_76 = icmp ugt i8* %_ptr_bt_73, %_local_stack_end_ptr_
  %_cond2_1_77 = icmp ugt i8* %_ptr_bt_73, %_parent_stack_end_ptr_
  %_cond2_2_78 = icmp ult i8* %_ptr_bt_73, %_parent_stack_start_ptr_
  %_cond2_79 = or i1 %_cond2_1_77, %_cond2_2_78
  %_cond4_80 = icmp ule i8* %_pot_address_in_parent_stack_75, %_parent_stack_end_ptr_
  %_cond1_n_cond2_81 = and i1 %_cond1_76, %_cond2_79
  %_cond1_n_cond2_cond3_82 = and i1 %_cond1_n_cond2_81, %_cond4_80
  br i1 %_cond1_n_cond2_cond3_82, label %78, label %79

; <label>:78:                                     ; preds = %47
  %_address_in_parent_stack_bt_84 = bitcast i8* %_pot_address_in_parent_stack_75 to i64*
  br label %79

; <label>:79:                                     ; preds = %47, %78
  %80 = phi i64* [ %45, %47 ], [ %_address_in_parent_stack_bt_84, %78 ]
  %_new_load_85 = load i64, i64* %80
  store i64 %_new_load_85, i64* %44, align 4
  store i16 %49, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !68
  store i64 %50, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !68
  store i16 %51, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !68
  store i64 %52, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !68
  store i11 %53, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !68
  store i128 %54, i128* %XMM0, align 1, !mcsema_real_eip !68
  store i128 %55, i128* %XMM1, align 1, !mcsema_real_eip !68
  store i128 %56, i128* %XMM2, align 1, !mcsema_real_eip !68
  store i128 %57, i128* %XMM3, align 1, !mcsema_real_eip !68
  store i128 %58, i128* %XMM4, align 1, !mcsema_real_eip !68
  store i128 %59, i128* %XMM5, align 1, !mcsema_real_eip !68
  store i128 %60, i128* %XMM6, align 1, !mcsema_real_eip !68
  store i128 %61, i128* %XMM7, align 1, !mcsema_real_eip !68
  store i128 %62, i128* %XMM8, align 1, !mcsema_real_eip !68
  store i128 %63, i128* %XMM9, align 1, !mcsema_real_eip !68
  store i128 %64, i128* %XMM10, align 1, !mcsema_real_eip !68
  store i128 %65, i128* %XMM11, align 1, !mcsema_real_eip !68
  store i128 %66, i128* %XMM12, align 1, !mcsema_real_eip !68
  store i128 %67, i128* %XMM13, align 1, !mcsema_real_eip !68
  store i128 %68, i128* %XMM14, align 1, !mcsema_real_eip !68
  store i128 %69, i128* %XMM15, align 1, !mcsema_real_eip !68
  store i64 %70, i64* %STACK_BASE, align 1, !mcsema_real_eip !68
  store i64 %71, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !68
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_69)
  %81 = load i64, i64* %RAX, !mcsema_real_eip !68
  %82 = load i64, i64* %RBX, !mcsema_real_eip !68
  %83 = load i64, i64* %RCX, !mcsema_real_eip !68
  %84 = load i64, i64* %RDX, !mcsema_real_eip !68
  %85 = load i64, i64* %RSI, !mcsema_real_eip !68
  %86 = load i64, i64* %RDI, !mcsema_real_eip !68
  %87 = load i64, i64* %RSP, !mcsema_real_eip !68
  %88 = load i64, i64* %R8, !mcsema_real_eip !68
  %89 = load i64, i64* %R9, !mcsema_real_eip !68
  %90 = load i64, i64* %R10, !mcsema_real_eip !68
  %91 = load i64, i64* %R11, !mcsema_real_eip !68
  %92 = load i64, i64* %R12, !mcsema_real_eip !68
  %93 = load i64, i64* %R13, !mcsema_real_eip !68
  %94 = load i64, i64* %R14, !mcsema_real_eip !68
  %95 = load i64, i64* %R15, !mcsema_real_eip !68
  %96 = load i64, i64* %RIP, !mcsema_real_eip !68
  %97 = load i1, i1* %DF, align 1, !mcsema_real_eip !68
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !68
  %98 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !68
  %99 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !68
  %100 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !68
  %101 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !68
  %102 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !68
  %103 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !68
  %104 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !68
  %105 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !68
  %106 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !68
  %107 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !68
  %108 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !68
  %109 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !68
  %110 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !68
  %111 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !68
  %112 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !68
  %113 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !68
  %114 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !68
  %115 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !68
  %116 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !68
  %117 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !68
  %118 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !68
  %119 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !68
  %120 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !68
  br i1 %_cond1_n_cond2_cond3_, label %121, label %122

; <label>:121:                                    ; preds = %79
  %_address_in_parent_stack_bt_99 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %122

; <label>:122:                                    ; preds = %79, %121
  %123 = phi i64* [ %44, %79 ], [ %_address_in_parent_stack_bt_99, %121 ]
  %_new_load_100 = load i64, i64* %123
  store i64 %_new_load_100, i64* %45, align 4
  %124 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !68
  %125 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !68
  %126 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !68
  %127 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !68
  %128 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !68
  %129 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !68
  %130 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !68
  %131 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !68
  %132 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !68
  %133 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !68
  %134 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !68
  %135 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !68
  %136 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !68
  %137 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !68
  %138 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !68
  %139 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !68
  %140 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !68
  %141 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !68
  %142 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !68
  %143 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !68
  %144 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !68
  %145 = load i64, i64* %STACK_BASE, !mcsema_real_eip !68
  %146 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !68
  store i32 0, i32* bitcast (%3* @data_0x390 to i32*), !mcsema_real_eip !69
  store i32 0, i32* bitcast (%4* @data_0x3e8 to i32*), !mcsema_real_eip !70
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %147 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 1, i32* %147, !mcsema_real_eip !71
  br label %block_0x8a, !mcsema_real_eip !72

block_0x8a:                                       ; preds = %341, %122
  %RAX_val.0 = phi i64 [ %81, %122 ], [ %344, %341 ]
  %RBX_val.0 = phi i64 [ %82, %122 ], [ %169, %341 ]
  %RCX_val.0 = phi i64 [ %83, %122 ], [ %RCX_val.1, %341 ]
  %RDX_val.0 = phi i64 [ %84, %122 ], [ %247, %341 ]
  %RSI_val.0 = phi i64 [ %85, %122 ], [ %251, %341 ]
  %RDI_val.0 = phi i64 [ %86, %122 ], [ %_new_load_190, %341 ]
  %RSP_val.0 = phi i64 [ %87, %122 ], [ %170, %341 ]
  %R8_val.0 = phi i64 [ %88, %122 ], [ %171, %341 ]
  %R9_val.0 = phi i64 [ %89, %122 ], [ %172, %341 ]
  %R10_val.0 = phi i64 [ %90, %122 ], [ %173, %341 ]
  %R11_val.0 = phi i64 [ %91, %122 ], [ %174, %341 ]
  %R12_val.0 = phi i64 [ %92, %122 ], [ %175, %341 ]
  %R13_val.0 = phi i64 [ %93, %122 ], [ %176, %341 ]
  %R14_val.0 = phi i64 [ %94, %122 ], [ %177, %341 ]
  %RIP_val.0 = phi i64 [ %96, %122 ], [ %179, %341 ]
  %DF_val.0 = phi i1 [ %97, %122 ], [ %180, %341 ]
  %FPU_B_val.0 = phi i1 [ %98, %122 ], [ %181, %341 ]
  %FPU_C3_val.0 = phi i1 [ %99, %122 ], [ %182, %341 ]
  %FPU_TOP_val.0 = phi i3 [ %100, %122 ], [ %183, %341 ]
  %FPU_C2_val.0 = phi i1 [ %101, %122 ], [ %184, %341 ]
  %FPU_C1_val.0 = phi i1 [ %102, %122 ], [ %185, %341 ]
  %FPU_C0_val.0 = phi i1 [ %103, %122 ], [ %186, %341 ]
  %FPU_ES_val.0 = phi i1 [ %104, %122 ], [ %187, %341 ]
  %FPU_SF_val.0 = phi i1 [ %105, %122 ], [ %188, %341 ]
  %FPU_PE_val.0 = phi i1 [ %106, %122 ], [ %189, %341 ]
  %FPU_UE_val.0 = phi i1 [ %107, %122 ], [ %190, %341 ]
  %FPU_OE_val.0 = phi i1 [ %108, %122 ], [ %191, %341 ]
  %FPU_ZE_val.0 = phi i1 [ %109, %122 ], [ %192, %341 ]
  %FPU_DE_val.0 = phi i1 [ %110, %122 ], [ %193, %341 ]
  %FPU_IE_val.0 = phi i1 [ %111, %122 ], [ %194, %341 ]
  %FPU_X_val.0 = phi i1 [ %112, %122 ], [ %195, %341 ]
  %FPU_RC_val.0 = phi i2 [ %113, %122 ], [ %196, %341 ]
  %FPU_PC_val.0 = phi i2 [ %114, %122 ], [ %197, %341 ]
  %FPU_PM_val.0 = phi i1 [ %115, %122 ], [ %198, %341 ]
  %FPU_UM_val.0 = phi i1 [ %116, %122 ], [ %199, %341 ]
  %FPU_OM_val.0 = phi i1 [ %117, %122 ], [ %200, %341 ]
  %FPU_ZM_val.0 = phi i1 [ %118, %122 ], [ %201, %341 ]
  %FPU_DM_val.0 = phi i1 [ %119, %122 ], [ %202, %341 ]
  %FPU_IM_val.0 = phi i1 [ %120, %122 ], [ %203, %341 ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %124, %122 ], [ %207, %341 ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %125, %122 ], [ %208, %341 ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %126, %122 ], [ %209, %341 ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %127, %122 ], [ %210, %341 ]
  %FPU_FOPCODE_val.0 = phi i11 [ %128, %122 ], [ %211, %341 ]
  %XMM0_val.0 = phi i128 [ %129, %122 ], [ %212, %341 ]
  %XMM1_val.0 = phi i128 [ %130, %122 ], [ %213, %341 ]
  %XMM2_val.0 = phi i128 [ %131, %122 ], [ %214, %341 ]
  %XMM3_val.0 = phi i128 [ %132, %122 ], [ %215, %341 ]
  %XMM4_val.0 = phi i128 [ %133, %122 ], [ %216, %341 ]
  %XMM5_val.0 = phi i128 [ %134, %122 ], [ %217, %341 ]
  %XMM6_val.0 = phi i128 [ %135, %122 ], [ %218, %341 ]
  %XMM7_val.0 = phi i128 [ %136, %122 ], [ %219, %341 ]
  %XMM8_val.0 = phi i128 [ %137, %122 ], [ %220, %341 ]
  %XMM9_val.0 = phi i128 [ %138, %122 ], [ %221, %341 ]
  %XMM10_val.0 = phi i128 [ %139, %122 ], [ %222, %341 ]
  %XMM11_val.0 = phi i128 [ %140, %122 ], [ %223, %341 ]
  %XMM12_val.0 = phi i128 [ %141, %122 ], [ %224, %341 ]
  %XMM13_val.0 = phi i128 [ %142, %122 ], [ %225, %341 ]
  %XMM14_val.0 = phi i128 [ %143, %122 ], [ %226, %341 ]
  %XMM15_val.0 = phi i128 [ %144, %122 ], [ %227, %341 ]
  %STACK_BASE_val.0 = phi i64 [ %145, %122 ], [ %228, %341 ]
  %STACK_LIMIT_val.0 = phi i64 [ %146, %122 ], [ %229, %341 ]
  %R15_val.0 = phi i64 [ %95, %122 ], [ %178, %341 ]
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -4
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %148 = bitcast i64* %_allin_new_bt_21 to i32*
  %_ptr_to_int_101 = ptrtoint i32* %148 to i64
  %_ptr_bt_103 = bitcast i32* %148 to i8*
  %_offset_above_rbp_104 = sub i64 %_ptr_to_int_101, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_ptr_bt_103, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_ptr_bt_103, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_ptr_bt_103, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  br i1 %_cond1_n_cond2_cond3_112, label %149, label %150

; <label>:149:                                    ; preds = %block_0x8a
  %_address_in_parent_stack_bt_114 = bitcast i8* %_pot_address_in_parent_stack_105 to i32*
  br label %150

; <label>:150:                                    ; preds = %block_0x8a, %149
  %151 = phi i32* [ %148, %block_0x8a ], [ %_address_in_parent_stack_bt_114, %149 ]
  %_new_load_115 = load i32, i32* %151
  %152 = add i32 %_new_load_115, -500
  %153 = xor i32 %152, %_new_load_115, !mcsema_real_eip !72
  %154 = and i32 %153, 16
  %155 = icmp eq i32 %154, 0
  %156 = trunc i32 %152 to i8, !mcsema_real_eip !72
  %157 = tail call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !72
  %158 = and i8 %157, 1
  %159 = icmp eq i8 %158, 0
  %160 = icmp eq i32 %152, 0, !mcsema_real_eip !72
  %161 = icmp slt i32 %152, 0
  %162 = icmp ult i32 %_new_load_115, 500, !mcsema_real_eip !72
  %163 = and i32 %153, %_new_load_115, !mcsema_real_eip !72
  %164 = icmp slt i32 %163, 0
  %tmp = xor i1 %161, %164
  %.demorgan = or i1 %160, %tmp
  %_load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_
  br i1 %.demorgan, label %block_0x97, label %block_0x14e, !mcsema_real_eip !73

block_0x97:                                       ; preds = %150
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_24, !mcsema_real_eip !74
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %RAX_val.0, i64* %RAX, !mcsema_real_eip !74
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !74
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !74
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !74
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !74
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !74
  %_new_ptr2int_26 = ptrtoint i8* %_new_gep_23 to i64
  store volatile i64 %_new_ptr2int_26, i64* %RSP
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_28 = ptrtoint i8* %_load_rbp_ptr_27 to i64
  store volatile i64 %_new_ptr2int_28, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !74
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !74
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !74
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !74
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !74
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !74
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !74
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !74
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !74
  store i1 %162, i1* %CF, align 1, !mcsema_real_eip !74
  store i1 %159, i1* %PF, align 1, !mcsema_real_eip !74
  store i1 %155, i1* %AF, align 1, !mcsema_real_eip !74
  store i1 %160, i1* %ZF, align 1, !mcsema_real_eip !74
  store i1 %161, i1* %SF, align 1, !mcsema_real_eip !74
  store i1 %164, i1* %OF, align 1, !mcsema_real_eip !74
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !74
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !74
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !74
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !74
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !74
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !74
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !74
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !74
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !74
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !74
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !74
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !74
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !74
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !74
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !74
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !74
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !74
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !74
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !74
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !74
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !74
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !74
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !74
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !74
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !74
  br i1 %_cond1_n_cond2_cond3_82, label %165, label %166

; <label>:165:                                    ; preds = %block_0x97
  %_address_in_parent_stack_bt_129 = bitcast i8* %_pot_address_in_parent_stack_75 to i64*
  br label %166

; <label>:166:                                    ; preds = %block_0x97, %165
  %167 = phi i64* [ %45, %block_0x97 ], [ %_address_in_parent_stack_bt_129, %165 ]
  %_new_load_130 = load i64, i64* %167
  store i64 %_new_load_130, i64* %44, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !74
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !74
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !74
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !74
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !74
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !74
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !74
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !74
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !74
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !74
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !74
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !74
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !74
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !74
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !74
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !74
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !74
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !74
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !74
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !74
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !74
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !74
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !74
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  call void @sub_20.4(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_70)
  %168 = load i64, i64* %RAX, !mcsema_real_eip !74
  %169 = load i64, i64* %RBX, !mcsema_real_eip !74
  %170 = load i64, i64* %RSP, !mcsema_real_eip !74
  %171 = load i64, i64* %R8, !mcsema_real_eip !74
  %172 = load i64, i64* %R9, !mcsema_real_eip !74
  %173 = load i64, i64* %R10, !mcsema_real_eip !74
  %174 = load i64, i64* %R11, !mcsema_real_eip !74
  %175 = load i64, i64* %R12, !mcsema_real_eip !74
  %176 = load i64, i64* %R13, !mcsema_real_eip !74
  %177 = load i64, i64* %R14, !mcsema_real_eip !74
  %178 = load i64, i64* %R15, !mcsema_real_eip !74
  %179 = load i64, i64* %RIP, !mcsema_real_eip !74
  %180 = load i1, i1* %DF, align 1, !mcsema_real_eip !74
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !74
  %181 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !74
  %182 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !74
  %183 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !74
  %184 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !74
  %185 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !74
  %186 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !74
  %187 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !74
  %188 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !74
  %189 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !74
  %190 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !74
  %191 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !74
  %192 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !74
  %193 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !74
  %194 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !74
  %195 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !74
  %196 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !74
  %197 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !74
  %198 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !74
  %199 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !74
  %200 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !74
  %201 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !74
  %202 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !74
  %203 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !74
  br i1 %_cond1_n_cond2_cond3_, label %204, label %205

; <label>:204:                                    ; preds = %166
  %_address_in_parent_stack_bt_144 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %205

; <label>:205:                                    ; preds = %166, %204
  %206 = phi i64* [ %44, %166 ], [ %_address_in_parent_stack_bt_144, %204 ]
  %_new_load_145 = load i64, i64* %206
  store i64 %_new_load_145, i64* %45, align 4
  %207 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !74
  %208 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !74
  %209 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !74
  %210 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !74
  %211 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !74
  %212 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !74
  %213 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !74
  %214 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !74
  %215 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !74
  %216 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !74
  %217 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !74
  %218 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !74
  %219 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !74
  %220 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !74
  %221 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !74
  %222 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !74
  %223 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !74
  %224 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !74
  %225 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !74
  %226 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !74
  %227 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !74
  %228 = load i64, i64* %STACK_BASE, !mcsema_real_eip !74
  %229 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !74
  %sext = shl i64 %168, 32
  %230 = ashr exact i64 %sext, 32
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -16
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  store i64 %230, i64* %_allin_new_bt_31, !mcsema_real_eip !75
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -16
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_146 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  br i1 %_cond1_n_cond2_cond3_157, label %231, label %232

; <label>:231:                                    ; preds = %205
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i64*
  br label %232

; <label>:232:                                    ; preds = %205, %231
  %233 = phi i64* [ %_allin_new_bt_34, %205 ], [ %_address_in_parent_stack_bt_159, %231 ]
  %_new_load_160 = load i64, i64* %233
  br i1 %_cond1_n_cond2_cond3_157, label %234, label %235

; <label>:234:                                    ; preds = %232
  %_address_in_parent_stack_bt_174 = bitcast i8* %_pot_address_in_parent_stack_150 to i64*
  br label %235

; <label>:235:                                    ; preds = %232, %234
  %236 = phi i64* [ %_allin_new_bt_34, %232 ], [ %_address_in_parent_stack_bt_174, %234 ]
  %_new_load_175 = load i64, i64* %236
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -24
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  store i64 100000, i64* %_allin_new_bt_37, !mcsema_real_eip !76
  %237 = sext i64 %_new_load_175 to i128, !mcsema_real_eip !77
  %238 = lshr i128 %237, 64, !mcsema_real_eip !77
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -24
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_176 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_179 = sub i64 %_ptr_to_int_176, %_local_end_to_int_
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  br i1 %_cond1_n_cond2_cond3_187, label %239, label %240

; <label>:239:                                    ; preds = %235
  %_address_in_parent_stack_bt_189 = bitcast i8* %_pot_address_in_parent_stack_180 to i64*
  br label %240

; <label>:240:                                    ; preds = %235, %239
  %241 = phi i64* [ %_allin_new_bt_40, %235 ], [ %_address_in_parent_stack_bt_189, %239 ]
  %_new_load_190 = load i64, i64* %241
  %242 = shl nuw i128 %238, 64, !mcsema_real_eip !78
  %243 = or i128 %242, %237, !mcsema_real_eip !78
  %244 = sext i64 %_new_load_190 to i128, !mcsema_real_eip !78
  %245 = sdiv i128 %243, %244, !mcsema_real_eip !78
  %246 = srem i128 %243, %244, !mcsema_real_eip !78
  %247 = trunc i128 %246 to i64, !mcsema_real_eip !78
  %248 = trunc i128 %245 to i64, !mcsema_real_eip !78
  %249 = mul i64 %248, 100000, !mcsema_real_eip !79
  %250 = sub i64 %_new_load_160, %249, !mcsema_real_eip !80
  %251 = add i64 %250, -50000
  %252 = and i64 %251, 4294967295
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -4
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %253 = bitcast i64* %_allin_new_bt_43 to i32*
  %_ptr_to_int_191 = ptrtoint i32* %253 to i64
  %_ptr_bt_193 = bitcast i32* %253 to i8*
  %_offset_above_rbp_194 = sub i64 %_ptr_to_int_191, %_local_end_to_int_
  %_pot_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i8* %_ptr_bt_193, %_local_stack_end_ptr_
  %_cond2_1_197 = icmp ugt i8* %_ptr_bt_193, %_parent_stack_end_ptr_
  %_cond2_2_198 = icmp ult i8* %_ptr_bt_193, %_parent_stack_start_ptr_
  %_cond2_199 = or i1 %_cond2_1_197, %_cond2_2_198
  %_cond4_200 = icmp ule i8* %_pot_address_in_parent_stack_195, %_parent_stack_end_ptr_
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  br i1 %_cond1_n_cond2_cond3_202, label %254, label %255

; <label>:254:                                    ; preds = %240
  %_address_in_parent_stack_bt_204 = bitcast i8* %_pot_address_in_parent_stack_195 to i32*
  br label %255

; <label>:255:                                    ; preds = %240, %254
  %256 = phi i32* [ %253, %240 ], [ %_address_in_parent_stack_bt_204, %254 ]
  %_new_load_205 = load i32, i32* %256
  %257 = sext i32 %_new_load_205 to i64, !mcsema_real_eip !81
  %258 = shl nsw i64 %257, 2
  %259 = add i64 %258, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !82
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !82
  %261 = trunc i64 %252 to i32, !mcsema_real_eip !82
  %262 = bitcast i64* %260 to i32*
  store i32 %261, i32* %262, !mcsema_real_eip !82
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -4
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %263 = bitcast i64* %_allin_new_bt_46 to i32*
  %_ptr_to_int_206 = ptrtoint i32* %263 to i64
  %_ptr_bt_208 = bitcast i32* %263 to i8*
  %_offset_above_rbp_209 = sub i64 %_ptr_to_int_206, %_local_end_to_int_
  %_pot_address_in_parent_stack_210 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_209
  %_cond1_211 = icmp ugt i8* %_ptr_bt_208, %_local_stack_end_ptr_
  %_cond2_1_212 = icmp ugt i8* %_ptr_bt_208, %_parent_stack_end_ptr_
  %_cond2_2_213 = icmp ult i8* %_ptr_bt_208, %_parent_stack_start_ptr_
  %_cond2_214 = or i1 %_cond2_1_212, %_cond2_2_213
  %_cond4_215 = icmp ule i8* %_pot_address_in_parent_stack_210, %_parent_stack_end_ptr_
  %_cond1_n_cond2_216 = and i1 %_cond1_211, %_cond2_214
  %_cond1_n_cond2_cond3_217 = and i1 %_cond1_n_cond2_216, %_cond4_215
  br i1 %_cond1_n_cond2_cond3_217, label %264, label %265

; <label>:264:                                    ; preds = %255
  %_address_in_parent_stack_bt_219 = bitcast i8* %_pot_address_in_parent_stack_210 to i32*
  br label %265

; <label>:265:                                    ; preds = %255, %264
  %266 = phi i32* [ %263, %255 ], [ %_address_in_parent_stack_bt_219, %264 ]
  %_new_load_220 = load i32, i32* %266
  %267 = sext i32 %_new_load_220 to i64, !mcsema_real_eip !83
  %268 = shl nsw i64 %267, 2
  %269 = add i64 %268, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !84
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !84
  %271 = bitcast i64* %270 to i32*
  %_ptr_to_int_221 = ptrtoint i32* %271 to i64
  %_ptr_bt_223 = bitcast i32* %271 to i8*
  %_offset_above_rbp_224 = sub i64 %_ptr_to_int_221, %_local_end_to_int_
  %_pot_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_224
  %_cond1_226 = icmp ugt i8* %_ptr_bt_223, %_local_stack_end_ptr_
  %_cond2_1_227 = icmp ugt i8* %_ptr_bt_223, %_parent_stack_end_ptr_
  %_cond2_2_228 = icmp ult i8* %_ptr_bt_223, %_parent_stack_start_ptr_
  %_cond2_229 = or i1 %_cond2_1_227, %_cond2_2_228
  %_cond4_230 = icmp ule i8* %_pot_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond1_n_cond2_231 = and i1 %_cond1_226, %_cond2_229
  %_cond1_n_cond2_cond3_232 = and i1 %_cond1_n_cond2_231, %_cond4_230
  br i1 %_cond1_n_cond2_cond3_232, label %272, label %273

; <label>:272:                                    ; preds = %265
  %_address_in_parent_stack_bt_234 = bitcast i8* %_pot_address_in_parent_stack_225 to i32*
  br label %273

; <label>:273:                                    ; preds = %265, %272
  %274 = phi i32* [ %271, %265 ], [ %_address_in_parent_stack_bt_234, %272 ]
  %_new_load_235 = load i32, i32* %274
  %_offset_above_rbp_237 = sub i64 ptrtoint (%3* @data_0x390 to i64), %_local_end_to_int_
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* getelementptr inbounds (%3, %3* @data_0x390, i32 0, i32 0, i32 0), %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* getelementptr inbounds (%3, %3* @data_0x390, i32 0, i32 0, i32 0), %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* getelementptr inbounds (%3, %3* @data_0x390, i32 0, i32 0, i32 0), %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond1_n_cond2_244, %_cond4_243
  br i1 %_cond1_n_cond2_cond3_245, label %275, label %276

; <label>:275:                                    ; preds = %273
  %_address_in_parent_stack_bt_247 = bitcast i8* %_pot_address_in_parent_stack_238 to i32*
  br label %276

; <label>:276:                                    ; preds = %273, %275
  %277 = phi i32* [ bitcast (%3* @data_0x390 to i32*), %273 ], [ %_address_in_parent_stack_bt_247, %275 ]
  %_new_load_248 = load i32, i32* %277
  %278 = sub i32 %_new_load_235, %_new_load_248, !mcsema_real_eip !85
  %279 = xor i32 %278, %_new_load_235, !mcsema_real_eip !85
  %280 = icmp eq i32 %_new_load_235, %_new_load_248
  %281 = icmp slt i32 %278, 0
  %282 = xor i32 %_new_load_248, %_new_load_235, !mcsema_real_eip !85
  %283 = and i32 %279, %282, !mcsema_real_eip !85
  %284 = icmp slt i32 %283, 0
  %285 = xor i1 %281, %284
  %286 = or i1 %280, %285, !mcsema_real_eip !86
  br i1 %_cond1_n_cond2_cond3_217, label %287, label %288

; <label>:287:                                    ; preds = %276
  %_address_in_parent_stack_bt_262 = bitcast i8* %_pot_address_in_parent_stack_210 to i32*
  br label %288

; <label>:288:                                    ; preds = %276, %287
  %289 = phi i32* [ %263, %276 ], [ %_address_in_parent_stack_bt_262, %287 ]
  %_new_load_263 = load i32, i32* %289
  %290 = sext i32 %_new_load_263 to i64, !mcsema_real_eip !108
  %291 = shl nsw i64 %290, 2
  %292 = add i64 %291, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !87
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !87
  %294 = bitcast i64* %293 to i32*
  %_ptr_to_int_264 = ptrtoint i32* %294 to i64
  %_ptr_bt_266 = bitcast i32* %294 to i8*
  %_offset_above_rbp_267 = sub i64 %_ptr_to_int_264, %_local_end_to_int_
  %_pot_address_in_parent_stack_268 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_267
  %_cond1_269 = icmp ugt i8* %_ptr_bt_266, %_local_stack_end_ptr_
  %_cond2_1_270 = icmp ugt i8* %_ptr_bt_266, %_parent_stack_end_ptr_
  %_cond2_2_271 = icmp ult i8* %_ptr_bt_266, %_parent_stack_start_ptr_
  %_cond2_272 = or i1 %_cond2_1_270, %_cond2_2_271
  %_cond4_273 = icmp ule i8* %_pot_address_in_parent_stack_268, %_parent_stack_end_ptr_
  %_cond1_n_cond2_274 = and i1 %_cond1_269, %_cond2_272
  %_cond1_n_cond2_cond3_275 = and i1 %_cond1_n_cond2_274, %_cond4_273
  br i1 %_cond1_n_cond2_cond3_275, label %295, label %296

; <label>:295:                                    ; preds = %288
  %_address_in_parent_stack_bt_277 = bitcast i8* %_pot_address_in_parent_stack_268 to i32*
  br label %296

; <label>:296:                                    ; preds = %288, %295
  %297 = phi i32* [ %294, %288 ], [ %_address_in_parent_stack_bt_277, %295 ]
  %_new_load_278 = load i32, i32* %297
  %298 = zext i32 %_new_load_278 to i64, !mcsema_real_eip !87
  br i1 %286, label %block_0x10c, label %block_0xf5, !mcsema_real_eip !86

block_0x14e:                                      ; preds = %150
  %uadd355 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0, i64 32)
  %299 = extractvalue { i64, i1 } %uadd355, 0
  %_trans_p2i_50 = ptrtoint i8* %_load_rsp_ptr_22 to i64
  %_trans_xor_51 = xor i64 %299, %_trans_p2i_50
  %300 = and i64 %_trans_xor_51, 16, !mcsema_real_eip !88
  %301 = icmp ne i64 %300, 0, !mcsema_real_eip !88
  %302 = icmp slt i64 %299, 0
  %303 = icmp eq i64 %299, 0, !mcsema_real_eip !88
  %_trans_xor_53 = xor i64 %_trans_p2i_50, -9223372036854775808
  %304 = and i64 %_trans_xor_51, %_trans_xor_53, !mcsema_real_eip !88
  %305 = icmp slt i64 %304, 0
  %306 = trunc i64 %299 to i8, !mcsema_real_eip !88
  %307 = tail call i8 @llvm.ctpop.i8(i8 %306), !mcsema_real_eip !88
  %308 = and i8 %307, 1
  %309 = icmp eq i8 %308, 0
  %310 = extractvalue { i64, i1 } %uadd355, 1
  %_new_int2ptr_ = inttoptr i64 %299 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %311 = inttoptr i64 %299 to i64*, !mcsema_real_eip !89
  %_ptr_bt_281 = bitcast i64* %311 to i8*
  %_offset_above_rbp_282 = sub i64 %299, %_local_end_to_int_
  %_pot_address_in_parent_stack_283 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_282
  %_cond1_284 = icmp ugt i8* %_ptr_bt_281, %_local_stack_end_ptr_
  %_cond2_1_285 = icmp ugt i8* %_ptr_bt_281, %_parent_stack_end_ptr_
  %_cond2_2_286 = icmp ult i8* %_ptr_bt_281, %_parent_stack_start_ptr_
  %_cond2_287 = or i1 %_cond2_1_285, %_cond2_2_286
  %_cond4_288 = icmp ule i8* %_pot_address_in_parent_stack_283, %_parent_stack_end_ptr_
  %_cond1_n_cond2_289 = and i1 %_cond1_284, %_cond2_287
  %_cond1_n_cond2_cond3_290 = and i1 %_cond1_n_cond2_289, %_cond4_288
  br i1 %_cond1_n_cond2_cond3_290, label %312, label %313

; <label>:312:                                    ; preds = %block_0x14e
  %_address_in_parent_stack_bt_292 = bitcast i8* %_pot_address_in_parent_stack_283 to i64*
  br label %313

; <label>:313:                                    ; preds = %block_0x14e, %312
  %314 = phi i64* [ %311, %block_0x14e ], [ %_address_in_parent_stack_bt_292, %312 ]
  %_new_load_293 = load i64, i64* %314
  %_new_int2ptr_54 = inttoptr i64 %_new_load_293 to i8*
  store volatile i8* %_new_int2ptr_54, i8** %_RBP_ptr_
  %315 = add i64 %299, 16, !mcsema_real_eip !90
  %_new_int2ptr_55 = inttoptr i64 %315 to i8*
  store volatile i8* %_new_int2ptr_55, i8** %_RSP_ptr_
  store i64 %RAX_val.0, i64* %RAX, !mcsema_real_eip !90
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !90
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !90
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !90
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !90
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !90
  store volatile i64 %315, i64* %RSP
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_59 = ptrtoint i8* %_load_rbp_ptr_58 to i64
  store volatile i64 %_new_ptr2int_59, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !90
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !90
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !90
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !90
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !90
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !90
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !90
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !90
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !90
  store i1 %310, i1* %CF, align 1, !mcsema_real_eip !90
  store i1 %309, i1* %PF, align 1, !mcsema_real_eip !90
  store i1 %301, i1* %AF, align 1, !mcsema_real_eip !90
  store i1 %303, i1* %ZF, align 1, !mcsema_real_eip !90
  store i1 %302, i1* %SF, align 1, !mcsema_real_eip !90
  store i1 %305, i1* %OF, align 1, !mcsema_real_eip !90
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !90
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !90
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !90
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !90
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !90
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !90
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !90
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !90
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !90
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !90
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !90
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !90
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !90
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !90
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !90
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !90
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !90
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !90
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !90
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !90
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !90
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !90
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !90
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !90
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !90
  br i1 %_cond1_n_cond2_cond3_82, label %316, label %317

; <label>:316:                                    ; preds = %313
  %_address_in_parent_stack_bt_307 = bitcast i8* %_pot_address_in_parent_stack_75 to i64*
  br label %317

; <label>:317:                                    ; preds = %313, %316
  %318 = phi i64* [ %45, %313 ], [ %_address_in_parent_stack_bt_307, %316 ]
  %_new_load_308 = load i64, i64* %318
  store i64 %_new_load_308, i64* %44, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !90
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !90
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !90
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !90
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !90
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !90
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !90
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !90
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !90
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !90
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !90
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !90
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !90
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !90
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !90
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !90
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !90
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !90
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !90
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !90
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !90
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !90
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !90
  ret void, !mcsema_real_eip !90

block_0xf5:                                       ; preds = %296
  store i32 %_new_load_278, i32* bitcast (%3* @data_0x390 to i32*), !mcsema_real_eip !91
  br label %block_0x140, !mcsema_real_eip !92

block_0x10c:                                      ; preds = %296
  %_offset_above_rbp_310 = sub i64 ptrtoint (%4* @data_0x3e8 to i64), %_local_end_to_int_
  %_pot_address_in_parent_stack_311 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_310
  %_cond1_312 = icmp ugt i8* getelementptr inbounds (%4, %4* @data_0x3e8, i32 0, i32 0, i32 0), %_local_stack_end_ptr_
  %_cond2_1_313 = icmp ugt i8* getelementptr inbounds (%4, %4* @data_0x3e8, i32 0, i32 0, i32 0), %_parent_stack_end_ptr_
  %_cond2_2_314 = icmp ult i8* getelementptr inbounds (%4, %4* @data_0x3e8, i32 0, i32 0, i32 0), %_parent_stack_start_ptr_
  %_cond2_315 = or i1 %_cond2_1_313, %_cond2_2_314
  %_cond4_316 = icmp ule i8* %_pot_address_in_parent_stack_311, %_parent_stack_end_ptr_
  %_cond1_n_cond2_317 = and i1 %_cond1_312, %_cond2_315
  %_cond1_n_cond2_cond3_318 = and i1 %_cond1_n_cond2_317, %_cond4_316
  br i1 %_cond1_n_cond2_cond3_318, label %319, label %320

; <label>:319:                                    ; preds = %block_0x10c
  %_address_in_parent_stack_bt_320 = bitcast i8* %_pot_address_in_parent_stack_311 to i32*
  br label %320

; <label>:320:                                    ; preds = %block_0x10c, %319
  %321 = phi i32* [ bitcast (%4* @data_0x3e8 to i32*), %block_0x10c ], [ %_address_in_parent_stack_bt_320, %319 ]
  %_new_load_321 = load i32, i32* %321
  %322 = sub i32 %_new_load_278, %_new_load_321, !mcsema_real_eip !109
  %323 = xor i32 %322, %_new_load_278, !mcsema_real_eip !109
  %324 = icmp slt i32 %322, 0
  %325 = xor i32 %_new_load_321, %_new_load_278, !mcsema_real_eip !109
  %326 = and i32 %323, %325, !mcsema_real_eip !109
  %327 = icmp slt i32 %326, 0
  %tmp354 = xor i1 %324, %327
  br i1 %tmp354, label %block_0x124, label %block_0x140, !mcsema_real_eip !93

block_0x124:                                      ; preds = %320
  br i1 %_cond1_n_cond2_cond3_217, label %328, label %329

; <label>:328:                                    ; preds = %block_0x124
  %_address_in_parent_stack_bt_335 = bitcast i8* %_pot_address_in_parent_stack_210 to i32*
  br label %329

; <label>:329:                                    ; preds = %block_0x124, %328
  %330 = phi i32* [ %263, %block_0x124 ], [ %_address_in_parent_stack_bt_335, %328 ]
  %_new_load_336 = load i32, i32* %330
  %331 = sext i32 %_new_load_336 to i64, !mcsema_real_eip !110
  %332 = shl nsw i64 %331, 2
  %333 = add i64 %332, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !111
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !111
  %335 = bitcast i64* %334 to i32*
  %_ptr_to_int_337 = ptrtoint i32* %335 to i64
  %_ptr_bt_339 = bitcast i32* %335 to i8*
  %_offset_above_rbp_340 = sub i64 %_ptr_to_int_337, %_local_end_to_int_
  %_pot_address_in_parent_stack_341 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_340
  %_cond1_342 = icmp ugt i8* %_ptr_bt_339, %_local_stack_end_ptr_
  %_cond2_1_343 = icmp ugt i8* %_ptr_bt_339, %_parent_stack_end_ptr_
  %_cond2_2_344 = icmp ult i8* %_ptr_bt_339, %_parent_stack_start_ptr_
  %_cond2_345 = or i1 %_cond2_1_343, %_cond2_2_344
  %_cond4_346 = icmp ule i8* %_pot_address_in_parent_stack_341, %_parent_stack_end_ptr_
  %_cond1_n_cond2_347 = and i1 %_cond1_342, %_cond2_345
  %_cond1_n_cond2_cond3_348 = and i1 %_cond1_n_cond2_347, %_cond4_346
  br i1 %_cond1_n_cond2_cond3_348, label %336, label %337

; <label>:336:                                    ; preds = %329
  %_address_in_parent_stack_bt_350 = bitcast i8* %_pot_address_in_parent_stack_341 to i32*
  br label %337

; <label>:337:                                    ; preds = %329, %336
  %338 = phi i32* [ %335, %329 ], [ %_address_in_parent_stack_bt_350, %336 ]
  %_new_load_351 = load i32, i32* %338
  %339 = zext i32 %_new_load_351 to i64, !mcsema_real_eip !111
  store i32 %_new_load_351, i32* bitcast (%4* @data_0x3e8 to i32*), !mcsema_real_eip !94
  br label %block_0x140, !mcsema_real_eip !95

block_0x140:                                      ; preds = %337, %320, %block_0xf5
  %RCX_val.1 = phi i64 [ %339, %337 ], [ %298, %320 ], [ %298, %block_0xf5 ]
  br i1 %_cond1_n_cond2_cond3_217, label %340, label %341

; <label>:340:                                    ; preds = %block_0x140
  %_address_in_parent_stack_bt_365 = bitcast i8* %_pot_address_in_parent_stack_210 to i32*
  br label %341

; <label>:341:                                    ; preds = %block_0x140, %340
  %342 = phi i32* [ %263, %block_0x140 ], [ %_address_in_parent_stack_bt_365, %340 ]
  %_new_load_366 = load i32, i32* %342
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_366, i32 1)
  %343 = extractvalue { i32, i1 } %uadd, 0
  %344 = zext i32 %343 to i64, !mcsema_real_eip !97
  store i32 %343, i32* %263, !mcsema_real_eip !98
  br label %block_0x8a, !mcsema_real_eip !99
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_20.4(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 8
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 8
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !100
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !100
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !100
  %1 = load i64, i64* %RAX, !mcsema_real_eip !100
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !100
  %2 = load i64, i64* %RBX, !mcsema_real_eip !100
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !100
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !100
  %3 = load i64, i64* %RDX, !mcsema_real_eip !100
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !100
  %4 = load i64, i64* %RSI, !mcsema_real_eip !100
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !100
  %5 = load i64, i64* %RDI, !mcsema_real_eip !100
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !100
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !100
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !100
  %6 = load i64, i64* %R8, !mcsema_real_eip !100
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !100
  %7 = load i64, i64* %R9, !mcsema_real_eip !100
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !100
  %8 = load i64, i64* %R10, !mcsema_real_eip !100
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !100
  %9 = load i64, i64* %R11, !mcsema_real_eip !100
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !100
  %10 = load i64, i64* %R12, !mcsema_real_eip !100
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !100
  %11 = load i64, i64* %R13, !mcsema_real_eip !100
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !100
  %12 = load i64, i64* %R14, !mcsema_real_eip !100
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !100
  %13 = load i64, i64* %R15, !mcsema_real_eip !100
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !100
  %14 = load i64, i64* %RIP, !mcsema_real_eip !100
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !100
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !100
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !100
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !100
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !100
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !100
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !100
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !100
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !100
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !100
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !100
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !100
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !100
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !100
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !100
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !100
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !100
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !100
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !100
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !100
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !100
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !100
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !100
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !100
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !100
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !100
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !100
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !100
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !100
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !100
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !100
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !100
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !100
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !100
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !100
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !100
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !100
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !100
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !100
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !100
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !100
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !100
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !100
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !100
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !100
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !100
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !100
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !100
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !100
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !100
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !100
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !100
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !100
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !100
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !100
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !100
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !100
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !100
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !100
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !100
  %48 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !100
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !100
  %49 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !100
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !100
  %50 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !100
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !100
  %51 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !100
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !100
  %52 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !100
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !100
  %53 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !100
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !100
  %54 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !100
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !100
  %55 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !100
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !100
  %56 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !100
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !100
  %57 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !100
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !100
  %58 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !100
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !100
  %59 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !100
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !100
  %60 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !100
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !100
  %61 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !100
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !100
  %62 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !100
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !100
  %63 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !100
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !100
  %64 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !100
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !100
  %65 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !100
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !100
  %66 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !100
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !100
  %67 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !100
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !100
  %68 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !100
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !100
  %69 = load i64, i64* %STACK_BASE, !mcsema_real_eip !100
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !100
  %70 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !100
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %71 = add i64 %1, 13849
  %72 = xor i64 %71, %1, !mcsema_real_eip !101
  %73 = and i64 %72, 16
  %74 = icmp eq i64 %73, 0
  %75 = trunc i64 %71 to i8, !mcsema_real_eip !101
  %76 = tail call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !101
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  %79 = and i64 %71, 65535, !mcsema_real_eip !102
  %80 = icmp eq i64 %79, 0, !mcsema_real_eip !102
  store i64 %79, i64* bitcast (%1* @data_0x448 to i64*), !mcsema_real_eip !103
  %_load_rsp_ptr_1 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_2 = bitcast i8* %_load_rsp_ptr_1 to i64*
  %_ptr_to_int_8 = ptrtoint i64* %_allin_new_bt_2 to i64
  %_offset_above_rbp_11 = sub i64 %_ptr_to_int_8, %_local_end_to_int_
  %_pot_address_in_parent_stack_12 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_11
  %_cond1_13 = icmp ugt i8* %_load_rsp_ptr_1, %_local_stack_end_ptr_
  %_cond2_1_14 = icmp ugt i8* %_load_rsp_ptr_1, %_parent_stack_end_ptr_
  %_cond2_2_15 = icmp ult i8* %_load_rsp_ptr_1, %_parent_stack_start_ptr_
  %_cond2_16 = or i1 %_cond2_1_14, %_cond2_2_15
  %_cond4_17 = icmp ule i8* %_pot_address_in_parent_stack_12, %_parent_stack_end_ptr_
  %_cond1_n_cond2_18 = and i1 %_cond1_13, %_cond2_16
  %_cond1_n_cond2_cond3_19 = and i1 %_cond1_n_cond2_18, %_cond4_17
  br i1 %_cond1_n_cond2_cond3_19, label %81, label %82

; <label>:81:                                     ; preds = %46
  %_address_in_parent_stack_bt_21 = bitcast i8* %_pot_address_in_parent_stack_12 to i64*
  br label %82

; <label>:82:                                     ; preds = %46, %81
  %83 = phi i64* [ %_allin_new_bt_2, %46 ], [ %_address_in_parent_stack_bt_21, %81 ]
  %_new_load_22 = load i64, i64* %83
  %_new_int2ptr_ = inttoptr i64 %_new_load_22 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_1, i64 16
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %79, i64* %RAX, !mcsema_real_eip !105
  store i64 %2, i64* %RBX, !mcsema_real_eip !105
  store i64 %79, i64* %RCX, !mcsema_real_eip !105
  store i64 %3, i64* %RDX, !mcsema_real_eip !105
  store i64 %4, i64* %RSI, !mcsema_real_eip !105
  store i64 %5, i64* %RDI, !mcsema_real_eip !105
  %_new_ptr2int_5 = ptrtoint i8* %_new_gep_3 to i64
  store volatile i64 %_new_ptr2int_5, i64* %RSP
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_7 = ptrtoint i8* %_load_rbp_ptr_6 to i64
  store volatile i64 %_new_ptr2int_7, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !105
  store i64 %7, i64* %R9, !mcsema_real_eip !105
  store i64 %8, i64* %R10, !mcsema_real_eip !105
  store i64 %9, i64* %R11, !mcsema_real_eip !105
  store i64 %10, i64* %R12, !mcsema_real_eip !105
  store i64 %11, i64* %R13, !mcsema_real_eip !105
  store i64 %12, i64* %R14, !mcsema_real_eip !105
  store i64 %13, i64* %R15, !mcsema_real_eip !105
  store i64 %14, i64* %RIP, !mcsema_real_eip !105
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !105
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !105
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !105
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !105
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !105
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !105
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !105
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !105
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !105
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !105
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !105
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !105
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !105
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !105
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !105
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !105
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !105
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !105
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !105
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !105
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !105
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !105
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !105
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !105
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !105
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !105
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !105
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !105
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !105
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !105
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !105
  %_ptr_to_int_23 = ptrtoint i64* %44 to i64
  %_ptr_bt_25 = bitcast i64* %44 to i8*
  %_offset_above_rbp_26 = sub i64 %_ptr_to_int_23, %_local_end_to_int_
  %_pot_address_in_parent_stack_27 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_26
  %_cond1_28 = icmp ugt i8* %_ptr_bt_25, %_local_stack_end_ptr_
  %_cond2_1_29 = icmp ugt i8* %_ptr_bt_25, %_parent_stack_end_ptr_
  %_cond2_2_30 = icmp ult i8* %_ptr_bt_25, %_parent_stack_start_ptr_
  %_cond2_31 = or i1 %_cond2_1_29, %_cond2_2_30
  %_cond4_32 = icmp ule i8* %_pot_address_in_parent_stack_27, %_parent_stack_end_ptr_
  %_cond1_n_cond2_33 = and i1 %_cond1_28, %_cond2_31
  %_cond1_n_cond2_cond3_34 = and i1 %_cond1_n_cond2_33, %_cond4_32
  br i1 %_cond1_n_cond2_cond3_34, label %84, label %85

; <label>:84:                                     ; preds = %82
  %_address_in_parent_stack_bt_36 = bitcast i8* %_pot_address_in_parent_stack_27 to i64*
  br label %85

; <label>:85:                                     ; preds = %82, %84
  %86 = phi i64* [ %44, %82 ], [ %_address_in_parent_stack_bt_36, %84 ]
  %_new_load_37 = load i64, i64* %86
  store i64 %_new_load_37, i64* %43, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !105
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !105
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !105
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !105
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !105
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !105
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !105
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !105
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !105
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !105
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !105
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !105
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !105
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !105
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !105
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !105
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !105
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !105
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !105
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !105
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !105
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !105
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !105
  ret void, !mcsema_real_eip !105
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 656}
!3 = !{i64 664}
!4 = !{i64 671}
!5 = !{i64 678}
!6 = !{i64 682}
!7 = !{i64 688}
!8 = !{i64 691}
!9 = !{i64 696}
!10 = !{i64 699}
!11 = !{i64 702}
!12 = !{i64 705}
!13 = !{i64 712}
!14 = !{i64 716}
!15 = !{i64 717}
!16 = !{i64 0}
!17 = !{i64 4}
!18 = !{i64 16}
!19 = !{i64 17}
!20 = !{i64 352}
!21 = !{i64 356}
!22 = !{i64 360}
!23 = !{i64 363}
!24 = !{i64 379}
!25 = !{i64 387}
!26 = !{i64 393}
!27 = !{i64 585}
!28 = !{i64 545}
!29 = !{i64 559}
!30 = !{i64 565}
!31 = !{i64 579}
!32 = !{i64 597}
!33 = !{i64 602}
!34 = !{i64 400}
!35 = !{i64 403}
!36 = !{i64 410}
!37 = !{i64 615}
!38 = !{i64 621}
!39 = !{i64 624}
!40 = !{i64 633}
!41 = !{i64 638}
!42 = !{i64 641}
!43 = !{i64 645}
!44 = !{i64 646}
!45 = !{i64 416}
!46 = !{i64 420}
!47 = !{i64 430}
!48 = !{i64 433}
!49 = !{i64 436}
!50 = !{i64 443}
!51 = !{i64 540}
!52 = !{i64 460}
!53 = !{i64 463}
!54 = !{i64 469}
!55 = !{i64 472}
!56 = !{i64 479}
!57 = !{i64 483}
!58 = !{i64 490}
!59 = !{i64 493}
!60 = !{i64 496}
!61 = !{i64 499}
!62 = !{i64 502}
!63 = !{i64 509}
!64 = !{i64 515}
!65 = !{i64 518}
!66 = !{i64 96}
!67 = !{i64 100}
!68 = !{i64 104}
!69 = !{i64 109}
!70 = !{i64 120}
!71 = !{i64 131}
!72 = !{i64 138}
!73 = !{i64 145}
!74 = !{i64 151}
!75 = !{i64 166}
!76 = !{i64 178}
!77 = !{i64 182}
!78 = !{i64 188}
!79 = !{i64 191}
!80 = !{i64 198}
!81 = !{i64 210}
!82 = !{i64 214}
!83 = !{i64 221}
!84 = !{i64 225}
!85 = !{i64 232}
!86 = !{i64 239}
!87 = !{i64 272}
!88 = !{i64 334}
!89 = !{i64 338}
!90 = !{i64 339}
!91 = !{i64 256}
!92 = !{i64 263}
!93 = !{i64 286}
!94 = !{i64 303}
!95 = !{i64 315}
!96 = !{i64 320}
!97 = !{i64 323}
!98 = !{i64 326}
!99 = !{i64 329}
!100 = !{i64 32}
!101 = !{i64 48}
!102 = !{i64 54}
!103 = !{i64 60}
!104 = !{i64 80}
!105 = !{i64 81}
!106 = !{i64 449}
!107 = !{i64 453}
!108 = !{i64 268}
!109 = !{i64 279}
!110 = !{i64 292}
!111 = !{i64 296}
