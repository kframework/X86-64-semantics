; ModuleID = 'Output/test_13_1.clang.trans.bc'
source_filename = "Output/test_13_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_10(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 24
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 24
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
  %7 = load i64, i64* %RSP, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = load i64, i64* %R8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %9 = load i64, i64* %R9, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = load i64, i64* %R10, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %11 = load i64, i64* %R11, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = load i64, i64* %R12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %13 = load i64, i64* %R13, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = load i64, i64* %R14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %15 = load i64, i64* %R15, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64, i64* %RIP, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !2
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %45 = bitcast i8* %44 to i64*
  %46 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %47 = load i64, i64* %45, align 4
  store i64 %47, i64* %46, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %48 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %49 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %50 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %51 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %52 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %67 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %68 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %69 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %70 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -24
  %71 = add i64 %7, -24
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %72 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %72, !mcsema_real_eip !3
  br label %block_0x1f, !mcsema_real_eip !4

block_0x1f:                                       ; preds = %block_0x2c, %entry
  %RAX_val.0 = phi i64 [ %1, %entry ], [ %155, %block_0x2c ]
  %RBX_val.0 = phi i64 [ %2, %entry ], [ %89, %block_0x2c ]
  %RCX_val.0 = phi i64 [ %3, %entry ], [ %90, %block_0x2c ]
  %RDX_val.0 = phi i64 [ %4, %entry ], [ %91, %block_0x2c ]
  %RSI_val.0 = phi i64 [ %5, %entry ], [ %92, %block_0x2c ]
  %RDI_val.0 = phi i64 [ %6, %entry ], [ %93, %block_0x2c ]
  %RSP_val.0 = phi i64 [ %71, %entry ], [ %94, %block_0x2c ]
  %R8_val.0 = phi i64 [ %8, %entry ], [ %95, %block_0x2c ]
  %R9_val.0 = phi i64 [ %9, %entry ], [ %96, %block_0x2c ]
  %R10_val.0 = phi i64 [ %10, %entry ], [ %97, %block_0x2c ]
  %R11_val.0 = phi i64 [ %11, %entry ], [ %98, %block_0x2c ]
  %R12_val.0 = phi i64 [ %12, %entry ], [ %99, %block_0x2c ]
  %R13_val.0 = phi i64 [ %13, %entry ], [ %100, %block_0x2c ]
  %R14_val.0 = phi i64 [ %14, %entry ], [ %101, %block_0x2c ]
  %RIP_val.0 = phi i64 [ %16, %entry ], [ %103, %block_0x2c ]
  %DF_val.0 = phi i1 [ %17, %entry ], [ %104, %block_0x2c ]
  %FPU_B_val.0 = phi i1 [ %21, %entry ], [ %105, %block_0x2c ]
  %FPU_C3_val.0 = phi i1 [ %22, %entry ], [ %106, %block_0x2c ]
  %FPU_TOP_val.0 = phi i3 [ %23, %entry ], [ %107, %block_0x2c ]
  %FPU_C2_val.0 = phi i1 [ %24, %entry ], [ %108, %block_0x2c ]
  %FPU_C1_val.0 = phi i1 [ %25, %entry ], [ %109, %block_0x2c ]
  %FPU_C0_val.0 = phi i1 [ %26, %entry ], [ %110, %block_0x2c ]
  %FPU_ES_val.0 = phi i1 [ %27, %entry ], [ %111, %block_0x2c ]
  %FPU_SF_val.0 = phi i1 [ %28, %entry ], [ %112, %block_0x2c ]
  %FPU_PE_val.0 = phi i1 [ %29, %entry ], [ %113, %block_0x2c ]
  %FPU_UE_val.0 = phi i1 [ %30, %entry ], [ %114, %block_0x2c ]
  %FPU_OE_val.0 = phi i1 [ %31, %entry ], [ %115, %block_0x2c ]
  %FPU_ZE_val.0 = phi i1 [ %32, %entry ], [ %116, %block_0x2c ]
  %FPU_DE_val.0 = phi i1 [ %33, %entry ], [ %117, %block_0x2c ]
  %FPU_IE_val.0 = phi i1 [ %34, %entry ], [ %118, %block_0x2c ]
  %FPU_X_val.0 = phi i1 [ %35, %entry ], [ %119, %block_0x2c ]
  %FPU_RC_val.0 = phi i2 [ %36, %entry ], [ %120, %block_0x2c ]
  %FPU_PC_val.0 = phi i2 [ %37, %entry ], [ %121, %block_0x2c ]
  %FPU_PM_val.0 = phi i1 [ %38, %entry ], [ %122, %block_0x2c ]
  %FPU_UM_val.0 = phi i1 [ %39, %entry ], [ %123, %block_0x2c ]
  %FPU_OM_val.0 = phi i1 [ %40, %entry ], [ %124, %block_0x2c ]
  %FPU_ZM_val.0 = phi i1 [ %41, %entry ], [ %125, %block_0x2c ]
  %FPU_DM_val.0 = phi i1 [ %42, %entry ], [ %126, %block_0x2c ]
  %FPU_IM_val.0 = phi i1 [ %43, %entry ], [ %127, %block_0x2c ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %48, %entry ], [ %129, %block_0x2c ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %49, %entry ], [ %130, %block_0x2c ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %50, %entry ], [ %131, %block_0x2c ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %51, %entry ], [ %132, %block_0x2c ]
  %FPU_FOPCODE_val.0 = phi i11 [ %52, %entry ], [ %133, %block_0x2c ]
  %XMM0_val.0 = phi i128 [ %53, %entry ], [ %134, %block_0x2c ]
  %XMM1_val.0 = phi i128 [ %54, %entry ], [ %135, %block_0x2c ]
  %XMM2_val.0 = phi i128 [ %55, %entry ], [ %136, %block_0x2c ]
  %XMM3_val.0 = phi i128 [ %56, %entry ], [ %137, %block_0x2c ]
  %XMM4_val.0 = phi i128 [ %57, %entry ], [ %138, %block_0x2c ]
  %XMM5_val.0 = phi i128 [ %58, %entry ], [ %139, %block_0x2c ]
  %XMM6_val.0 = phi i128 [ %59, %entry ], [ %140, %block_0x2c ]
  %XMM7_val.0 = phi i128 [ %60, %entry ], [ %141, %block_0x2c ]
  %XMM8_val.0 = phi i128 [ %61, %entry ], [ %142, %block_0x2c ]
  %XMM9_val.0 = phi i128 [ %62, %entry ], [ %143, %block_0x2c ]
  %XMM10_val.0 = phi i128 [ %63, %entry ], [ %144, %block_0x2c ]
  %XMM11_val.0 = phi i128 [ %64, %entry ], [ %145, %block_0x2c ]
  %XMM12_val.0 = phi i128 [ %65, %entry ], [ %146, %block_0x2c ]
  %XMM13_val.0 = phi i128 [ %66, %entry ], [ %147, %block_0x2c ]
  %XMM14_val.0 = phi i128 [ %67, %entry ], [ %148, %block_0x2c ]
  %XMM15_val.0 = phi i128 [ %68, %entry ], [ %149, %block_0x2c ]
  %STACK_BASE_val.0 = phi i64 [ %69, %entry ], [ %150, %block_0x2c ]
  %STACK_LIMIT_val.0 = phi i64 [ %70, %entry ], [ %151, %block_0x2c ]
  %R15_val.0 = phi i64 [ %15, %entry ], [ %102, %block_0x2c ]
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %73 = bitcast i64* %_allin_new_bt_15 to i32*
  %74 = load i32, i32* %73, !mcsema_real_eip !4
  %75 = add i32 %74, -2
  %76 = xor i32 %75, %74, !mcsema_real_eip !4
  %77 = and i32 %76, 16, !mcsema_real_eip !4
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !4
  %79 = trunc i32 %75 to i8, !mcsema_real_eip !4
  %80 = tail call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !4
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  %83 = icmp eq i32 %75, 0, !mcsema_real_eip !4
  %84 = icmp slt i32 %75, 0
  %85 = icmp ult i32 %74, 2, !mcsema_real_eip !4
  %86 = and i32 %76, %74, !mcsema_real_eip !4
  %87 = icmp slt i32 %86, 0
  %tmp = xor i1 %84, %87
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  br i1 %tmp, label %block_0x2c, label %block_0x41, !mcsema_real_eip !5

block_0x2c:                                       ; preds = %block_0x1f
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !6
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %RAX_val.0, i64* %RAX, !mcsema_real_eip !6
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !6
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !6
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !6
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !6
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !6
  %_new_ptr2int_20 = ptrtoint i8* %_new_gep_17 to i64
  store volatile i64 %_new_ptr2int_20, i64* %RSP
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_22 = ptrtoint i8* %_load_rbp_ptr_21 to i64
  store volatile i64 %_new_ptr2int_22, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !6
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !6
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !6
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !6
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !6
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !6
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !6
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !6
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !6
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !6
  store i1 %82, i1* %PF, align 1, !mcsema_real_eip !6
  store i1 %78, i1* %AF, align 1, !mcsema_real_eip !6
  store i1 %83, i1* %ZF, align 1, !mcsema_real_eip !6
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !6
  store i1 %87, i1* %OF, align 1, !mcsema_real_eip !6
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !6
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !6
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !6
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !6
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !6
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !6
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !6
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !6
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !6
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !6
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !6
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !6
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !6
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !6
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !6
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !6
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !6
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !6
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !6
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !6
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !6
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !6
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !6
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !6
  %88 = load i64, i64* %46, align 4
  store i64 %88, i64* %45, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !6
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !6
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !6
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !6
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !6
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !6
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !6
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !6
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !6
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !6
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !6
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !6
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !6
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !6
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !6
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !6
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !6
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !6
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !6
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !6
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !6
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !6
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !6
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_39)
  %89 = load i64, i64* %RBX, !mcsema_real_eip !6
  %90 = load i64, i64* %RCX, !mcsema_real_eip !6
  %91 = load i64, i64* %RDX, !mcsema_real_eip !6
  %92 = load i64, i64* %RSI, !mcsema_real_eip !6
  %93 = load i64, i64* %RDI, !mcsema_real_eip !6
  %94 = load i64, i64* %RSP, !mcsema_real_eip !6
  %95 = load i64, i64* %R8, !mcsema_real_eip !6
  %96 = load i64, i64* %R9, !mcsema_real_eip !6
  %97 = load i64, i64* %R10, !mcsema_real_eip !6
  %98 = load i64, i64* %R11, !mcsema_real_eip !6
  %99 = load i64, i64* %R12, !mcsema_real_eip !6
  %100 = load i64, i64* %R13, !mcsema_real_eip !6
  %101 = load i64, i64* %R14, !mcsema_real_eip !6
  %102 = load i64, i64* %R15, !mcsema_real_eip !6
  %103 = load i64, i64* %RIP, !mcsema_real_eip !6
  %104 = load i1, i1* %DF, align 1, !mcsema_real_eip !6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !6
  %105 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !6
  %106 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !6
  %107 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !6
  %108 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !6
  %109 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !6
  %110 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !6
  %111 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !6
  %112 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !6
  %113 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !6
  %114 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !6
  %115 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !6
  %116 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !6
  %117 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !6
  %118 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !6
  %119 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !6
  %120 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !6
  %121 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !6
  %122 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !6
  %123 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !6
  %124 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !6
  %125 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !6
  %126 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !6
  %127 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !6
  %128 = load i64, i64* %45, align 4
  store i64 %128, i64* %46, align 4
  %129 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !6
  %130 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !6
  %131 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !6
  %132 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !6
  %133 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !6
  %134 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !6
  %135 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !6
  %136 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !6
  %137 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !6
  %138 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !6
  %139 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !6
  %140 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !6
  %141 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !6
  %142 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !6
  %143 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !6
  %144 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !6
  %145 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !6
  %146 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !6
  %147 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !6
  %148 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !6
  %149 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !6
  %150 = load i64, i64* %STACK_BASE, !mcsema_real_eip !6
  %151 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !6
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -4
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %152 = bitcast i64* %_allin_new_bt_25 to i32*
  %153 = load i32, i32* %152, !mcsema_real_eip !7
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %153, i32 1)
  %154 = extractvalue { i32, i1 } %uadd, 0
  %155 = zext i32 %154 to i64, !mcsema_real_eip !8
  store i32 %154, i32* %152, !mcsema_real_eip !9
  br label %block_0x1f, !mcsema_real_eip !10

block_0x41:                                       ; preds = %block_0x1f
  %uadd211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0, i64 16)
  %156 = extractvalue { i64, i1 } %uadd211, 0
  %_trans_p2i_29 = ptrtoint i8* %_load_rsp_ptr_16 to i64
  %_trans_xor_30 = xor i64 %156, %_trans_p2i_29
  %157 = and i64 %_trans_xor_30, 16
  %158 = icmp eq i64 %157, 0
  %159 = icmp slt i64 %156, 0
  %160 = icmp eq i64 %156, 0, !mcsema_real_eip !11
  %_trans_xor_32 = xor i64 %_trans_p2i_29, -9223372036854775808
  %161 = and i64 %_trans_xor_30, %_trans_xor_32, !mcsema_real_eip !11
  %162 = icmp slt i64 %161, 0
  %163 = trunc i64 %156 to i8, !mcsema_real_eip !11
  %164 = tail call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !11
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  %167 = extractvalue { i64, i1 } %uadd211, 1
  %_new_int2ptr_ = inttoptr i64 %156 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %168 = inttoptr i64 %156 to i64*, !mcsema_real_eip !12
  %169 = load i64, i64* %168, !mcsema_real_eip !12
  %_new_int2ptr_33 = inttoptr i64 %169 to i8*
  store volatile i8* %_new_int2ptr_33, i8** %_RBP_ptr_
  %170 = add i64 %156, 16, !mcsema_real_eip !13
  %_new_int2ptr_34 = inttoptr i64 %170 to i8*
  store volatile i8* %_new_int2ptr_34, i8** %_RSP_ptr_
  store i64 %RAX_val.0, i64* %RAX, !mcsema_real_eip !13
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !13
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !13
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !13
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !13
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !13
  store volatile i64 %170, i64* %RSP
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_38 = ptrtoint i8* %_load_rbp_ptr_37 to i64
  store volatile i64 %_new_ptr2int_38, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !13
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !13
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !13
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !13
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !13
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !13
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !13
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !13
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !13
  store i1 %167, i1* %CF, align 1, !mcsema_real_eip !13
  store i1 %166, i1* %PF, align 1, !mcsema_real_eip !13
  store i1 %158, i1* %AF, align 1, !mcsema_real_eip !13
  store i1 %160, i1* %ZF, align 1, !mcsema_real_eip !13
  store i1 %159, i1* %SF, align 1, !mcsema_real_eip !13
  store i1 %162, i1* %OF, align 1, !mcsema_real_eip !13
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !13
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !13
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %171 = load i64, i64* %46, align 4
  store i64 %171, i64* %45, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !13
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !13
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !13
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !13
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !13
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !13
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !13
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !13
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !13
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !13
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !13
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !13
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !13
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !13
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !13
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !13
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !13
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !13
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !14
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !14
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !14
  %1 = load i64, i64* %RAX, !mcsema_real_eip !14
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !14
  %2 = load i64, i64* %RBX, !mcsema_real_eip !14
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !14
  %3 = load i64, i64* %RCX, !mcsema_real_eip !14
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !14
  %4 = load i64, i64* %RDX, !mcsema_real_eip !14
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !14
  %5 = load i64, i64* %RSI, !mcsema_real_eip !14
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !14
  %6 = load i64, i64* %RDI, !mcsema_real_eip !14
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !14
  %7 = load i64, i64* %RSP, !mcsema_real_eip !14
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !14
  %8 = load i64, i64* %RBP, !mcsema_real_eip !14
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !14
  %9 = load i64, i64* %R8, !mcsema_real_eip !14
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !14
  %10 = load i64, i64* %R9, !mcsema_real_eip !14
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !14
  %11 = load i64, i64* %R10, !mcsema_real_eip !14
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !14
  %12 = load i64, i64* %R11, !mcsema_real_eip !14
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !14
  %13 = load i64, i64* %R12, !mcsema_real_eip !14
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !14
  %14 = load i64, i64* %R13, !mcsema_real_eip !14
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !14
  %15 = load i64, i64* %R14, !mcsema_real_eip !14
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !14
  %16 = load i64, i64* %R15, !mcsema_real_eip !14
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !14
  %17 = load i64, i64* %RIP, !mcsema_real_eip !14
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !14
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !14
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !14
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !14
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !14
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !14
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !14
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !14
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !14
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !14
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !14
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !14
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !14
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !14
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !14
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !14
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !14
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !14
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !14
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !14
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !14
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !14
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !14
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !14
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !14
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !14
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !14
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !14
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !14
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !14
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !14
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !14
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !14
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !14
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !14
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !14
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !14
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !14
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !14
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !14
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !14
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !14
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !14
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !14
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !14
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !14
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !14
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !14
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !14
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !14
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !14
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !14
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !14
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !14
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !14
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !14
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !14
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !14
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !14
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !14
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !14
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !14
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !14
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !14
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !14
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !14
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !14
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !14
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !14
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !14
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !14
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !14
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !14
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !14
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !14
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !14
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !14
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !14
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !14
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !14
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !14
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !14
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !14
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !14
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !14
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !14
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !14
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !14
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !14
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !14
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !14
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !14
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !14
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !14
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !14
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !14
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !14
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !14
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !14
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !14
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !14
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !14
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !14
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !14
  %78 = add i64 %7, -8
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !14
  store i64 %8, i64* %79, !mcsema_real_eip !14
  %80 = add i64 %7, 8, !mcsema_real_eip !15
  store i64 %1, i64* %RAX, !mcsema_real_eip !15
  store i64 %2, i64* %RBX, !mcsema_real_eip !15
  store i64 %3, i64* %RCX, !mcsema_real_eip !15
  store i64 %4, i64* %RDX, !mcsema_real_eip !15
  store i64 %5, i64* %RSI, !mcsema_real_eip !15
  store i64 %6, i64* %RDI, !mcsema_real_eip !15
  store i64 %80, i64* %RSP, !mcsema_real_eip !15
  store i64 %8, i64* %RBP, !mcsema_real_eip !15
  store i64 %9, i64* %R8, !mcsema_real_eip !15
  store i64 %10, i64* %R9, !mcsema_real_eip !15
  store i64 %11, i64* %R10, !mcsema_real_eip !15
  store i64 %12, i64* %R11, !mcsema_real_eip !15
  store i64 %13, i64* %R12, !mcsema_real_eip !15
  store i64 %14, i64* %R13, !mcsema_real_eip !15
  store i64 %15, i64* %R14, !mcsema_real_eip !15
  store i64 %16, i64* %R15, !mcsema_real_eip !15
  store i64 %17, i64* %RIP, !mcsema_real_eip !15
  store i1 %18, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %20, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %28, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %30, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %41, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %42, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %43, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %44, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %45, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %46, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %47, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %48, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %49, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %50, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %81 = load i64, i64* %53, align 4
  store i64 %81, i64* %52, align 4
  store i16 %55, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %56, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %57, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %58, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i11 %59, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %64, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %65, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %66, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %67, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %68, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %69, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %70, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %71, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %72, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %73, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %74, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %75, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %76, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %77, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_10(%struct.regs* %0)
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
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !14
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !14
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !14
  %1 = load i64, i64* %RAX, !mcsema_real_eip !14
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !14
  %2 = load i64, i64* %RBX, !mcsema_real_eip !14
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !14
  %3 = load i64, i64* %RCX, !mcsema_real_eip !14
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !14
  %4 = load i64, i64* %RDX, !mcsema_real_eip !14
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !14
  %5 = load i64, i64* %RSI, !mcsema_real_eip !14
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !14
  %6 = load i64, i64* %RDI, !mcsema_real_eip !14
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !14
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !14
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !14
  %7 = load i64, i64* %R8, !mcsema_real_eip !14
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !14
  %8 = load i64, i64* %R9, !mcsema_real_eip !14
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !14
  %9 = load i64, i64* %R10, !mcsema_real_eip !14
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !14
  %10 = load i64, i64* %R11, !mcsema_real_eip !14
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !14
  %11 = load i64, i64* %R12, !mcsema_real_eip !14
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !14
  %12 = load i64, i64* %R13, !mcsema_real_eip !14
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !14
  %13 = load i64, i64* %R14, !mcsema_real_eip !14
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !14
  %14 = load i64, i64* %R15, !mcsema_real_eip !14
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !14
  %15 = load i64, i64* %RIP, !mcsema_real_eip !14
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !14
  %16 = load i1, i1* %CF, align 1, !mcsema_real_eip !14
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !14
  %17 = load i1, i1* %PF, align 1, !mcsema_real_eip !14
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !14
  %18 = load i1, i1* %AF, align 1, !mcsema_real_eip !14
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !14
  %19 = load i1, i1* %ZF, align 1, !mcsema_real_eip !14
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !14
  %20 = load i1, i1* %SF, align 1, !mcsema_real_eip !14
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !14
  %21 = load i1, i1* %OF, align 1, !mcsema_real_eip !14
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !14
  %22 = load i1, i1* %DF, align 1, !mcsema_real_eip !14
  %23 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !14
  %24 = bitcast x86_fp80* %23 to i8*, !mcsema_real_eip !14
  %25 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %24, i32 128, i32 4, i1 false), !mcsema_real_eip !14
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !14
  %26 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !14
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !14
  %27 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !14
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !14
  %28 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !14
  %29 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !14
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !14
  %30 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !14
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !14
  %31 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !14
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !14
  %32 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !14
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !14
  %33 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !14
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !14
  %34 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !14
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !14
  %35 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !14
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !14
  %36 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !14
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !14
  %37 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !14
  %38 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !14
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !14
  %39 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !14
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !14
  %40 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !14
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !14
  %41 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !14
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !14
  %42 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !14
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !14
  %43 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !14
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !14
  %44 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !14
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !14
  %45 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !14
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !14
  %46 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !14
  %47 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !14
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !14
  %48 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !14
  %49 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !14
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !14
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !14
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !14
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !14
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !14
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !14
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !14
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !14
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !14
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !14
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !14
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !14
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !14
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !14
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !14
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !14
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !14
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !14
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !14
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !14
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !14
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !14
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !14
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !14
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !14
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !14
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !14
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !14
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !14
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !14
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !14
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !14
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !14
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !14
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !14
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !14
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !14
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !14
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !14
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !14
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !14
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !14
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !14
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_ptr_to_int_6 = ptrtoint i64* %_allin_new_bt_ to i64
  %_offset_above_rbp_9 = sub i64 %_ptr_to_int_6, %_local_end_to_int_
  %_pot_address_in_parent_stack_10 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_9
  %_cond1_11 = icmp ugt i8* %_new_gep_, %_local_stack_end_ptr_
  %_cond2_1_12 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_13 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_14 = or i1 %_cond2_1_12, %_cond2_2_13
  %_cond4_15 = icmp ule i8* %_pot_address_in_parent_stack_10, %_parent_stack_end_ptr_
  %_cond1_n_cond2_16 = and i1 %_cond1_11, %_cond2_14
  %_cond1_n_cond2_cond3_17 = and i1 %_cond1_n_cond2_16, %_cond4_15
  br i1 %_cond1_n_cond2_cond3_17, label %78, label %79

; <label>:78:                                     ; preds = %53
  %_address_in_parent_stack_bt_19 = bitcast i8* %_pot_address_in_parent_stack_10 to i64*
  br label %79

; <label>:79:                                     ; preds = %53, %78
  %80 = phi i64* [ %_allin_new_bt_, %53 ], [ %_address_in_parent_stack_bt_19, %78 ]
  %_new_load_20 = load i64, i64* %80
  %_new_int2ptr_ = inttoptr i64 %_new_load_20 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 8
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %1, i64* %RAX, !mcsema_real_eip !15
  store i64 %2, i64* %RBX, !mcsema_real_eip !15
  store i64 %3, i64* %RCX, !mcsema_real_eip !15
  store i64 %4, i64* %RDX, !mcsema_real_eip !15
  store i64 %5, i64* %RSI, !mcsema_real_eip !15
  store i64 %6, i64* %RDI, !mcsema_real_eip !15
  %_new_ptr2int_3 = ptrtoint i8* %_new_gep_1 to i64
  store volatile i64 %_new_ptr2int_3, i64* %RSP
  %_load_rbp_ptr_4 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_5 = ptrtoint i8* %_load_rbp_ptr_4 to i64
  store volatile i64 %_new_ptr2int_5, i64* %RBP
  store i64 %7, i64* %R8, !mcsema_real_eip !15
  store i64 %8, i64* %R9, !mcsema_real_eip !15
  store i64 %9, i64* %R10, !mcsema_real_eip !15
  store i64 %10, i64* %R11, !mcsema_real_eip !15
  store i64 %11, i64* %R12, !mcsema_real_eip !15
  store i64 %12, i64* %R13, !mcsema_real_eip !15
  store i64 %13, i64* %R14, !mcsema_real_eip !15
  store i64 %14, i64* %R15, !mcsema_real_eip !15
  store i64 %15, i64* %RIP, !mcsema_real_eip !15
  store i1 %16, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 %17, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 %20, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %26, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %28, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %41, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %42, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %43, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %44, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %45, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %46, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %47, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %48, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_21 = ptrtoint i64* %51 to i64
  %_ptr_bt_23 = bitcast i64* %51 to i8*
  %_offset_above_rbp_24 = sub i64 %_ptr_to_int_21, %_local_end_to_int_
  %_pot_address_in_parent_stack_25 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_24
  %_cond1_26 = icmp ugt i8* %_ptr_bt_23, %_local_stack_end_ptr_
  %_cond2_1_27 = icmp ugt i8* %_ptr_bt_23, %_parent_stack_end_ptr_
  %_cond2_2_28 = icmp ult i8* %_ptr_bt_23, %_parent_stack_start_ptr_
  %_cond2_29 = or i1 %_cond2_1_27, %_cond2_2_28
  %_cond4_30 = icmp ule i8* %_pot_address_in_parent_stack_25, %_parent_stack_end_ptr_
  %_cond1_n_cond2_31 = and i1 %_cond1_26, %_cond2_29
  %_cond1_n_cond2_cond3_32 = and i1 %_cond1_n_cond2_31, %_cond4_30
  br i1 %_cond1_n_cond2_cond3_32, label %81, label %82

; <label>:81:                                     ; preds = %79
  %_address_in_parent_stack_bt_34 = bitcast i8* %_pot_address_in_parent_stack_25 to i64*
  br label %82

; <label>:82:                                     ; preds = %79, %81
  %83 = phi i64* [ %51, %79 ], [ %_address_in_parent_stack_bt_34, %81 ]
  %_new_load_35 = load i64, i64* %83
  store i64 %_new_load_35, i64* %50, align 4
  store i16 %55, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %56, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %57, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %58, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i11 %59, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %64, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %65, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %66, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %67, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %68, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %69, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %70, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %71, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %72, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %73, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %74, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %75, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %76, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %77, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 16}
!3 = !{i64 24}
!4 = !{i64 31}
!5 = !{i64 38}
!6 = !{i64 44}
!7 = !{i64 49}
!8 = !{i64 52}
!9 = !{i64 57}
!10 = !{i64 60}
!11 = !{i64 65}
!12 = !{i64 69}
!13 = !{i64 70}
!14 = !{i64 0}
!15 = !{i64 5}
