; ModuleID = 'Output/test_34.clang.trans.bc'
source_filename = "Output/test_34.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [48 x i8] }>
%1 = type <{ [94704 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x400900 = internal constant %0 <{ [48 x i8] c"\01\00\02\00%d\0A\00\00\00\00\00\00\00\00\00Error3 in Bubble.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 64
@data_0x601050 = internal global %1 zeroinitializer, align 64

define internal x86_64_sysvcc void @sub_400850(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 16
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 16
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
  %15 = load i1, i1* %AF, align 1, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 %2, i64* %_allin_new_bt_, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  br label %block_0x400860, !mcsema_real_eip !3

block_0x400860:                                   ; preds = %block_0x400860, %entry
  %RAX_val.0 = phi i64 [ %1, %entry ], [ %72, %block_0x400860 ]
  %RBX_val.0 = phi i64 [ 0, %entry ], [ %137, %block_0x400860 ]
  %RCX_val.0 = phi i64 [ %3, %entry ], [ %74, %block_0x400860 ]
  %RDX_val.0 = phi i64 [ %4, %entry ], [ %75, %block_0x400860 ]
  %RSI_val.0 = phi i64 [ %5, %entry ], [ %76, %block_0x400860 ]
  %R8_val.0 = phi i64 [ %6, %entry ], [ %78, %block_0x400860 ]
  %R9_val.0 = phi i64 [ %7, %entry ], [ %79, %block_0x400860 ]
  %R10_val.0 = phi i64 [ %8, %entry ], [ %80, %block_0x400860 ]
  %R11_val.0 = phi i64 [ %9, %entry ], [ %81, %block_0x400860 ]
  %R12_val.0 = phi i64 [ %10, %entry ], [ %82, %block_0x400860 ]
  %R13_val.0 = phi i64 [ %11, %entry ], [ %83, %block_0x400860 ]
  %R14_val.0 = phi i64 [ %12, %entry ], [ %84, %block_0x400860 ]
  %RIP_val.0 = phi i64 [ %14, %entry ], [ %86, %block_0x400860 ]
  %ZF_val.0 = phi i1 [ true, %entry ], [ %146, %block_0x400860 ]
  %PF_val.0 = phi i1 [ true, %entry ], [ %145, %block_0x400860 ]
  %AF_val.0 = phi i1 [ %15, %entry ], [ %141, %block_0x400860 ]
  %CF_val.0 = phi i1 [ false, %entry ], [ %148, %block_0x400860 ]
  %SF_val.0 = phi i1 [ false, %entry ], [ %147, %block_0x400860 ]
  %OF_val.0 = phi i1 [ false, %entry ], [ %150, %block_0x400860 ]
  %DF_val.0 = phi i1 [ %16, %entry ], [ %87, %block_0x400860 ]
  %FPU_B_val.0 = phi i1 [ %20, %entry ], [ %88, %block_0x400860 ]
  %FPU_C3_val.0 = phi i1 [ %21, %entry ], [ %89, %block_0x400860 ]
  %FPU_TOP_val.0 = phi i3 [ %22, %entry ], [ %90, %block_0x400860 ]
  %FPU_C2_val.0 = phi i1 [ %23, %entry ], [ %91, %block_0x400860 ]
  %FPU_C1_val.0 = phi i1 [ %24, %entry ], [ %92, %block_0x400860 ]
  %FPU_C0_val.0 = phi i1 [ %25, %entry ], [ %93, %block_0x400860 ]
  %FPU_ES_val.0 = phi i1 [ %26, %entry ], [ %94, %block_0x400860 ]
  %FPU_SF_val.0 = phi i1 [ %27, %entry ], [ %95, %block_0x400860 ]
  %FPU_PE_val.0 = phi i1 [ %28, %entry ], [ %96, %block_0x400860 ]
  %FPU_UE_val.0 = phi i1 [ %29, %entry ], [ %97, %block_0x400860 ]
  %FPU_OE_val.0 = phi i1 [ %30, %entry ], [ %98, %block_0x400860 ]
  %FPU_ZE_val.0 = phi i1 [ %31, %entry ], [ %99, %block_0x400860 ]
  %FPU_DE_val.0 = phi i1 [ %32, %entry ], [ %100, %block_0x400860 ]
  %FPU_IE_val.0 = phi i1 [ %33, %entry ], [ %101, %block_0x400860 ]
  %FPU_X_val.0 = phi i1 [ %34, %entry ], [ %102, %block_0x400860 ]
  %FPU_RC_val.0 = phi i2 [ %35, %entry ], [ %103, %block_0x400860 ]
  %FPU_PC_val.0 = phi i2 [ %36, %entry ], [ %104, %block_0x400860 ]
  %FPU_PM_val.0 = phi i1 [ %37, %entry ], [ %105, %block_0x400860 ]
  %FPU_UM_val.0 = phi i1 [ %38, %entry ], [ %106, %block_0x400860 ]
  %FPU_OM_val.0 = phi i1 [ %39, %entry ], [ %107, %block_0x400860 ]
  %FPU_ZM_val.0 = phi i1 [ %40, %entry ], [ %108, %block_0x400860 ]
  %FPU_DM_val.0 = phi i1 [ %41, %entry ], [ %109, %block_0x400860 ]
  %FPU_IM_val.0 = phi i1 [ %42, %entry ], [ %110, %block_0x400860 ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %47, %entry ], [ %112, %block_0x400860 ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %48, %entry ], [ %113, %block_0x400860 ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %49, %entry ], [ %114, %block_0x400860 ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %50, %entry ], [ %115, %block_0x400860 ]
  %FPU_FOPCODE_val.0 = phi i11 [ %51, %entry ], [ %116, %block_0x400860 ]
  %XMM0_val.0 = phi i128 [ %52, %entry ], [ %117, %block_0x400860 ]
  %XMM1_val.0 = phi i128 [ %53, %entry ], [ %118, %block_0x400860 ]
  %XMM2_val.0 = phi i128 [ %54, %entry ], [ %119, %block_0x400860 ]
  %XMM3_val.0 = phi i128 [ %55, %entry ], [ %120, %block_0x400860 ]
  %XMM4_val.0 = phi i128 [ %56, %entry ], [ %121, %block_0x400860 ]
  %XMM5_val.0 = phi i128 [ %57, %entry ], [ %122, %block_0x400860 ]
  %XMM6_val.0 = phi i128 [ %58, %entry ], [ %123, %block_0x400860 ]
  %XMM7_val.0 = phi i128 [ %59, %entry ], [ %124, %block_0x400860 ]
  %XMM8_val.0 = phi i128 [ %60, %entry ], [ %125, %block_0x400860 ]
  %XMM9_val.0 = phi i128 [ %61, %entry ], [ %126, %block_0x400860 ]
  %XMM10_val.0 = phi i128 [ %62, %entry ], [ %127, %block_0x400860 ]
  %XMM11_val.0 = phi i128 [ %63, %entry ], [ %128, %block_0x400860 ]
  %XMM12_val.0 = phi i128 [ %64, %entry ], [ %129, %block_0x400860 ]
  %XMM13_val.0 = phi i128 [ %65, %entry ], [ %130, %block_0x400860 ]
  %XMM14_val.0 = phi i128 [ %66, %entry ], [ %131, %block_0x400860 ]
  %XMM15_val.0 = phi i128 [ %67, %entry ], [ %132, %block_0x400860 ]
  %STACK_BASE_val.0 = phi i64 [ %68, %entry ], [ %133, %block_0x400860 ]
  %STACK_LIMIT_val.0 = phi i64 [ %69, %entry ], [ %134, %block_0x400860 ]
  %R15_val.0 = phi i64 [ %13, %entry ], [ %85, %block_0x400860 ]
  %70 = and i64 %RBX_val.0, 4294967295
  %_load_rsp_ptr_1 = load i8*, i8** %_RSP_ptr_
  %_new_gep_2 = getelementptr i8, i8* %_load_rsp_ptr_1, i64 -8
  %_allin_new_bt_3 = bitcast i8* %_new_gep_2 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_3, !mcsema_real_eip !4
  store volatile i8* %_new_gep_2, i8** %_RSP_ptr_
  store i64 %RAX_val.0, i64* %RAX, !mcsema_real_eip !4
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !4
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !4
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !4
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !4
  store i64 %70, i64* %RDI, !mcsema_real_eip !4
  %_new_ptr2int_ = ptrtoint i8* %_new_gep_2 to i64
  store volatile i64 %_new_ptr2int_, i64* %RSP
  store volatile i64 undef, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !4
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !4
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !4
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !4
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !4
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !4
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !4
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !4
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !4
  store i1 %CF_val.0, i1* %CF, align 1, !mcsema_real_eip !4
  store i1 %PF_val.0, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 %AF_val.0, i1* %AF, align 1, !mcsema_real_eip !4
  store i1 %ZF_val.0, i1* %ZF, align 1, !mcsema_real_eip !4
  store i1 %SF_val.0, i1* %SF, align 1, !mcsema_real_eip !4
  store i1 %OF_val.0, i1* %OF, align 1, !mcsema_real_eip !4
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !4
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !4
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !4
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !4
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !4
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !4
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !4
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !4
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !4
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !4
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !4
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !4
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !4
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !4
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !4
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !4
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !4
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !4
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !4
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !4
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !4
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !4
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !4
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !4
  %71 = load i64, i64* %45, align 4
  store i64 %71, i64* %44, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !4
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !4
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !4
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !4
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !4
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !4
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !4
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !4
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !4
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !4
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !4
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !4
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !4
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !4
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !4
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !4
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !4
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !4
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !4
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !4
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !4
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !4
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !4
  call void @sub_400710.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* undef)
  %72 = load i64, i64* %RAX, !mcsema_real_eip !4
  %73 = load i64, i64* %RBX, !mcsema_real_eip !4
  %74 = load i64, i64* %RCX, !mcsema_real_eip !4
  %75 = load i64, i64* %RDX, !mcsema_real_eip !4
  %76 = load i64, i64* %RSI, !mcsema_real_eip !4
  %77 = load i64, i64* %RDI, !mcsema_real_eip !4
  %78 = load i64, i64* %R8, !mcsema_real_eip !4
  %79 = load i64, i64* %R9, !mcsema_real_eip !4
  %80 = load i64, i64* %R10, !mcsema_real_eip !4
  %81 = load i64, i64* %R11, !mcsema_real_eip !4
  %82 = load i64, i64* %R12, !mcsema_real_eip !4
  %83 = load i64, i64* %R13, !mcsema_real_eip !4
  %84 = load i64, i64* %R14, !mcsema_real_eip !4
  %85 = load i64, i64* %R15, !mcsema_real_eip !4
  %86 = load i64, i64* %RIP, !mcsema_real_eip !4
  %87 = load i1, i1* %DF, align 1, !mcsema_real_eip !4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !4
  %88 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !4
  %89 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !4
  %90 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !4
  %91 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !4
  %92 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !4
  %93 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !4
  %94 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !4
  %95 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !4
  %96 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !4
  %97 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !4
  %98 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !4
  %99 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !4
  %100 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !4
  %101 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !4
  %102 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !4
  %103 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !4
  %104 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !4
  %105 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !4
  %106 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !4
  %107 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !4
  %108 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !4
  %109 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !4
  %110 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !4
  %111 = load i64, i64* %44, align 4
  store i64 %111, i64* %45, align 4
  %112 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !4
  %113 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !4
  %114 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !4
  %115 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !4
  %116 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !4
  %117 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !4
  %118 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !4
  %119 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !4
  %120 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !4
  %121 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !4
  %122 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !4
  %123 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !4
  %124 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !4
  %125 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !4
  %126 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !4
  %127 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !4
  %128 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !4
  %129 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !4
  %130 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !4
  %131 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !4
  %132 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !4
  %133 = load i64, i64* %STACK_BASE, !mcsema_real_eip !4
  %134 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !4
  %135 = trunc i64 %73 to i32, !mcsema_real_eip !5
  %136 = add i32 %135, 1, !mcsema_real_eip !5
  %137 = zext i32 %136 to i64, !mcsema_real_eip !5
  %138 = add i32 %135, -99
  %139 = xor i32 %138, %136, !mcsema_real_eip !6
  %140 = and i32 %139, 16, !mcsema_real_eip !6
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !6
  %142 = trunc i32 %138 to i8, !mcsema_real_eip !6
  %143 = tail call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !6
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  %146 = icmp eq i32 %138, 0, !mcsema_real_eip !6
  %147 = icmp slt i32 %138, 0
  %148 = icmp ult i32 %136, 100, !mcsema_real_eip !6
  %149 = and i32 %139, %136, !mcsema_real_eip !6
  %150 = icmp slt i32 %149, 0
  br i1 %146, label %block_0x40086e, label %block_0x400860, !mcsema_real_eip !7

block_0x40086e:                                   ; preds = %block_0x400860
  %_load_rsp_ptr_6 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_7 = bitcast i8* %_load_rsp_ptr_6 to i64*
  %151 = load i64, i64* %_allin_new_bt_7, !mcsema_real_eip !8
  %_new_gep_8 = getelementptr i8, i8* %_load_rsp_ptr_6, i64 16
  store volatile i8* %_new_gep_8, i8** %_RSP_ptr_
  store i64 0, i64* %RAX, !mcsema_real_eip !9
  store i64 %151, i64* %RBX, !mcsema_real_eip !9
  store i64 %74, i64* %RCX, !mcsema_real_eip !9
  store i64 %75, i64* %RDX, !mcsema_real_eip !9
  store i64 %76, i64* %RSI, !mcsema_real_eip !9
  store i64 %77, i64* %RDI, !mcsema_real_eip !9
  %_new_ptr2int_10 = ptrtoint i8* %_new_gep_8 to i64
  store volatile i64 %_new_ptr2int_10, i64* %RSP
  store volatile i64 undef, i64* %RBP
  store i64 %78, i64* %R8, !mcsema_real_eip !9
  store i64 %79, i64* %R9, !mcsema_real_eip !9
  store i64 %80, i64* %R10, !mcsema_real_eip !9
  store i64 %81, i64* %R11, !mcsema_real_eip !9
  store i64 %82, i64* %R12, !mcsema_real_eip !9
  store i64 %83, i64* %R13, !mcsema_real_eip !9
  store i64 %84, i64* %R14, !mcsema_real_eip !9
  store i64 %85, i64* %R15, !mcsema_real_eip !9
  store i64 %86, i64* %RIP, !mcsema_real_eip !9
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %141, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %87, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %88, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %89, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %90, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %91, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %92, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %93, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %94, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %95, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %96, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %97, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %98, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %99, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %100, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %101, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %102, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %103, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %104, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %105, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %106, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %107, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %108, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %109, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %110, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  %152 = load i64, i64* %45, align 4
  store i64 %152, i64* %44, align 4
  store i16 %112, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %113, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %114, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %115, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i11 %116, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !9
  store i128 %117, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %118, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %119, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %120, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %121, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %122, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %123, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %124, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %125, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %126, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %127, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %128, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %129, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %130, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %131, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %132, i128* %XMM15, align 1, !mcsema_real_eip !9
  store i64 %133, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  store i64 %134, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9
}

define internal x86_64_sysvcc void @sub_400710(%struct.regs*) {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !10
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !10
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !10
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !10
  %1 = load i64, i64* %RBX, !mcsema_real_eip !10
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !10
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !10
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !10
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !10
  %2 = load i64, i64* %RDI, !mcsema_real_eip !10
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !10
  %3 = load i64, i64* %RSP, !mcsema_real_eip !10
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !10
  %4 = load i64, i64* %RBP, !mcsema_real_eip !10
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !10
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !10
  %5 = load i64, i64* %R9, !mcsema_real_eip !10
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !10
  %6 = load i64, i64* %R10, !mcsema_real_eip !10
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !10
  %7 = load i64, i64* %R11, !mcsema_real_eip !10
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !10
  %8 = load i64, i64* %R12, !mcsema_real_eip !10
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !10
  %9 = load i64, i64* %R13, !mcsema_real_eip !10
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !10
  %10 = load i64, i64* %R14, !mcsema_real_eip !10
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !10
  %11 = load i64, i64* %R15, !mcsema_real_eip !10
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !10
  %12 = load i64, i64* %RIP, !mcsema_real_eip !10
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !10
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !10
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !10
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !10
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !10
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !10
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !10
  %13 = load i1, i1* %DF, align 1, !mcsema_real_eip !10
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !10
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !10
  %16 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !10
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !10
  %17 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !10
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !10
  %18 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !10
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !10
  %19 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !10
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !10
  %20 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !10
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !10
  %21 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !10
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !10
  %22 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !10
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !10
  %23 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !10
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !10
  %24 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !10
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !10
  %25 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !10
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !10
  %26 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !10
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !10
  %27 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !10
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !10
  %28 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !10
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !10
  %29 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !10
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !10
  %30 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !10
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !10
  %31 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !10
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !10
  %32 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !10
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !10
  %33 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !10
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !10
  %34 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !10
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !10
  %35 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !10
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !10
  %36 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !10
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !10
  %37 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !10
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !10
  %38 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !10
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !10
  %39 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !10
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !10
  %41 = bitcast i8* %40 to i64*
  %42 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %43 = load i64, i64* %41, align 4
  store i64 %43, i64* %42, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !10
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !10
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !10
  %45 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !10
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !10
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !10
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !10
  %47 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !10
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !10
  %48 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !10
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !10
  %49 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !10
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !10
  %50 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !10
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !10
  %51 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !10
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !10
  %52 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !10
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !10
  %53 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !10
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !10
  %54 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !10
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !10
  %55 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !10
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !10
  %56 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !10
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !10
  %57 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !10
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !10
  %58 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !10
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !10
  %59 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !10
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !10
  %60 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !10
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !10
  %61 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !10
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !10
  %62 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !10
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !10
  %63 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !10
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !10
  %64 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !10
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !10
  %65 = load i64, i64* %STACK_BASE, !mcsema_real_eip !10
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !10
  %66 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !10
  %67 = add i64 %3, -8
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !10
  store i64 %4, i64* %68, !mcsema_real_eip !10
  %69 = add i64 %3, -16
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !11
  store i64 %10, i64* %70, !mcsema_real_eip !11
  %71 = add i64 %3, -24
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !12
  store i64 %1, i64* %72, !mcsema_real_eip !12
  %73 = and i64 %2, 4294967295
  store i64 74755, i64* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58896) to i64*), !mcsema_real_eip !13
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58892) to i32*), !mcsema_real_eip !14
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 17588) to i32*), !mcsema_real_eip !15
  br label %block_0x400760, !mcsema_real_eip !16

block_0x400760:                                   ; preds = %block_0x4007ae, %entry
  %R8_val.0 = phi i64 [ 0, %entry ], [ %R8_val.1, %block_0x4007ae ]
  %RBP_val.0 = phi i64 [ 74755, %entry ], [ %78, %block_0x4007ae ]
  %RDI_val.0 = phi i64 [ -2000, %entry ], [ %107, %block_0x4007ae ]
  %RSI_val.0 = phi i64 [ 0, %entry ], [ %RSI_val.1, %block_0x4007ae ]
  %74 = trunc i64 %RBP_val.0 to i32, !mcsema_real_eip !16
  %75 = mul i32 %74, 1309, !mcsema_real_eip !16
  %76 = add i32 %75, 13849
  %77 = and i32 %76, 65535
  %78 = zext i32 %77 to i64, !mcsema_real_eip !17
  %79 = lshr i64 %78, 5
  %80 = zext i64 %79 to i128, !mcsema_real_eip !18
  %81 = mul i128 %80, 755578637259143235, !mcsema_real_eip !18
  %82 = add i32 %77, -50000
  %83 = zext i32 %82 to i64, !mcsema_real_eip !19
  %84 = trunc i64 %RSI_val.0 to i32, !mcsema_real_eip !20
  %85 = sub i32 %82, %84, !mcsema_real_eip !20
  %86 = xor i32 %85, %82, !mcsema_real_eip !20
  %87 = icmp eq i32 %82, %84
  %88 = icmp slt i32 %85, 0
  %89 = xor i32 %84, %82, !mcsema_real_eip !20
  %90 = and i32 %86, %89, !mcsema_real_eip !20
  %91 = icmp slt i32 %90, 0
  %92 = add i64 %RDI_val.0, add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69732), !mcsema_real_eip !21
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !21
  %94 = bitcast i64* %93 to i32*
  store i32 %82, i32* %94, !mcsema_real_eip !21
  %95 = xor i1 %88, %91
  %96 = or i1 %87, %95, !mcsema_real_eip !22
  br i1 %96, label %block_0x4007a0, label %block_0x400795, !mcsema_real_eip !22

block_0x400795:                                   ; preds = %block_0x400760
  store i32 %82, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58892) to i32*), !mcsema_real_eip !23
  %97 = and i64 %83, 4294967295
  br label %block_0x4007ae, !mcsema_real_eip !24

block_0x4007a0:                                   ; preds = %block_0x400760
  %98 = trunc i64 %R8_val.0 to i32, !mcsema_real_eip !25
  %99 = sub i32 %82, %98, !mcsema_real_eip !25
  %100 = xor i32 %99, %82, !mcsema_real_eip !25
  %101 = icmp slt i32 %99, 0
  %102 = xor i64 %R8_val.0, %83
  %103 = trunc i64 %102 to i32
  %104 = and i32 %100, %103, !mcsema_real_eip !25
  %105 = icmp slt i32 %104, 0
  %tmp78 = xor i1 %101, %105
  br i1 %tmp78, label %block_0x4007a5, label %block_0x4007ae, !mcsema_real_eip !26

block_0x4007a5:                                   ; preds = %block_0x4007a0
  store i32 %82, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 17588) to i32*), !mcsema_real_eip !27
  %106 = and i64 %83, 4294967295
  br label %block_0x4007ae, !mcsema_real_eip !28

block_0x4007ae:                                   ; preds = %block_0x4007a5, %block_0x4007a0, %block_0x400795
  %R8_val.1 = phi i64 [ %106, %block_0x4007a5 ], [ %R8_val.0, %block_0x4007a0 ], [ %R8_val.0, %block_0x400795 ]
  %RSI_val.1 = phi i64 [ %RSI_val.0, %block_0x4007a5 ], [ %RSI_val.0, %block_0x4007a0 ], [ %97, %block_0x400795 ]
  %uadd73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RDI_val.0, i64 4)
  %107 = extractvalue { i64, i1 } %uadd73, 0
  %108 = icmp eq i64 %107, 0, !mcsema_real_eip !29
  br i1 %108, label %block_0x4007b4, label %block_0x400760, !mcsema_real_eip !30

block_0x4007b4:                                   ; preds = %block_0x4007ae
  store i64 %78, i64* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58896) to i64*), !mcsema_real_eip !28
  store i32 500, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 44224) to i32*), !mcsema_real_eip !31
  br label %block_0x4007d0, !mcsema_real_eip !32

block_0x4007d0:                                   ; preds = %block_0x4007fa, %block_0x4007b4
  %RBP_val.1 = phi i64 [ 499, %block_0x4007b4 ], [ %140, %block_0x4007fa ]
  %RAX_val.0 = phi i64 [ 500, %block_0x4007b4 ], [ %137, %block_0x4007fa ]
  %109 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732) to i32*), !mcsema_real_eip !32
  %110 = zext i32 %109 to i64, !mcsema_real_eip !32
  %111 = and i64 %RBP_val.1, 4294967295
  br label %block_0x4007e0, !mcsema_real_eip !33

block_0x4007e0:                                   ; preds = %block_0x4007f2, %block_0x4007d0
  %RDX_val.0 = phi i64 [ %111, %block_0x4007d0 ], [ %134, %block_0x4007f2 ]
  %RCX_val.0 = phi i64 [ %110, %block_0x4007d0 ], [ %RCX_val.1, %block_0x4007f2 ]
  %RBX_val.0 = phi i64 [ zext (i32 add (i32 ptrtoint (%1* @data_0x601050 to i32), i32 67736) to i64), %block_0x4007d0 ], [ %130, %block_0x4007f2 ]
  %112 = inttoptr i64 %RBX_val.0 to i64*, !mcsema_real_eip !33
  %113 = bitcast i64* %112 to i32*
  %114 = load i32, i32* %113, !mcsema_real_eip !33
  %115 = zext i32 %114 to i64, !mcsema_real_eip !33
  %116 = trunc i64 %RCX_val.0 to i32, !mcsema_real_eip !34
  %117 = sub i32 %116, %114, !mcsema_real_eip !34
  %118 = xor i32 %117, %116, !mcsema_real_eip !34
  %119 = icmp eq i32 %116, %114
  %120 = icmp slt i32 %117, 0
  %121 = xor i32 %116, %114, !mcsema_real_eip !34
  %122 = and i32 %118, %121, !mcsema_real_eip !34
  %123 = icmp slt i32 %122, 0
  %124 = xor i1 %120, %123
  %125 = or i1 %119, %124, !mcsema_real_eip !35
  br i1 %125, label %block_0x4007f0, label %block_0x4007e6, !mcsema_real_eip !35

block_0x4007e6:                                   ; preds = %block_0x4007e0
  %126 = add i64 %RBX_val.0, -4, !mcsema_real_eip !36
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !36
  %128 = bitcast i64* %127 to i32*
  store i32 %114, i32* %128, !mcsema_real_eip !36
  store i32 %116, i32* %113, !mcsema_real_eip !37
  br label %block_0x4007f2, !mcsema_real_eip !38

block_0x4007f0:                                   ; preds = %block_0x4007e0
  %129 = and i64 %115, 4294967295
  br label %block_0x4007f2, !mcsema_real_eip !36

block_0x4007f2:                                   ; preds = %block_0x4007f0, %block_0x4007e6
  %RCX_val.1 = phi i64 [ %129, %block_0x4007f0 ], [ %RCX_val.0, %block_0x4007e6 ]
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RBX_val.0, i64 4)
  %130 = extractvalue { i64, i1 } %uadd75, 0
  %131 = trunc i64 %RDX_val.0 to i32, !mcsema_real_eip !39
  %132 = add i32 %131, -1
  %133 = icmp eq i32 %132, 0, !mcsema_real_eip !39
  %134 = zext i32 %132 to i64, !mcsema_real_eip !39
  br i1 %133, label %block_0x4007fa, label %block_0x4007e0, !mcsema_real_eip !40

block_0x4007fa:                                   ; preds = %block_0x4007f2
  %135 = trunc i64 %RAX_val.0 to i32, !mcsema_real_eip !41
  %136 = add i32 %135, -1
  %137 = zext i32 %136 to i64, !mcsema_real_eip !41
  %138 = trunc i64 %RBP_val.1 to i32, !mcsema_real_eip !42
  %139 = add i32 %138, -1
  %140 = zext i32 %139 to i64, !mcsema_real_eip !42
  %141 = add i32 %135, -2
  %142 = xor i32 %141, %136, !mcsema_real_eip !43
  %143 = icmp eq i32 %141, 0, !mcsema_real_eip !43
  %144 = icmp slt i32 %141, 0
  %145 = and i32 %142, %136, !mcsema_real_eip !43
  %146 = icmp slt i32 %145, 0
  %tmp = xor i1 %144, %146
  %.demorgan = or i1 %143, %tmp
  br i1 %.demorgan, label %block_0x400803, label %block_0x4007d0, !mcsema_real_eip !44

block_0x400803:                                   ; preds = %block_0x4007fa
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 44224) to i32*), !mcsema_real_eip !45
  %147 = trunc i64 %R8_val.1 to i32, !mcsema_real_eip !46
  %148 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732) to i32*), !mcsema_real_eip !46
  %149 = icmp eq i32 %148, %147
  br i1 %149, label %block_0x400816, label %block_0x40081e, !mcsema_real_eip !47

block_0x400816:                                   ; preds = %block_0x400803
  %150 = trunc i64 %RSI_val.1 to i32, !mcsema_real_eip !48
  %151 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69728) to i32*), !mcsema_real_eip !48
  %152 = icmp eq i32 %151, %150
  br i1 %152, label %block_0x400828, label %block_0x40081e, !mcsema_real_eip !49

block_0x40081e:                                   ; preds = %block_0x400816, %block_0x400803
  %153 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 16) to i64)), !mcsema_real_eip !50
  br label %block_0x400828, !mcsema_real_eip !48

block_0x400828:                                   ; preds = %block_0x40081e, %block_0x400816
  %154 = trunc i64 %73 to i32, !mcsema_real_eip !51
  %155 = add i32 %154, 1, !mcsema_real_eip !51
  %156 = zext i32 %155 to i64, !mcsema_real_eip !51
  %157 = xor i64 %156, %73, !mcsema_real_eip !51
  %158 = and i64 %157, 16, !mcsema_real_eip !51
  %159 = icmp ne i64 %158, 0, !mcsema_real_eip !51
  %160 = sext i32 %155 to i64, !mcsema_real_eip !52
  %161 = shl nsw i64 %160, 2
  %162 = add i64 %161, add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67728), !mcsema_real_eip !53
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !53
  %164 = bitcast i64* %163 to i32*
  %165 = load i32, i32* %164, !mcsema_real_eip !53
  %166 = zext i32 %165 to i64, !mcsema_real_eip !53
  %167 = load i64, i64* %72, !mcsema_real_eip !54
  %168 = add i64 %71, 8, !mcsema_real_eip !54
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !55
  %170 = load i64, i64* %169, !mcsema_real_eip !55
  %171 = add i64 %71, 16, !mcsema_real_eip !55
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !56
  %173 = load i64, i64* %172, !mcsema_real_eip !56
  %174 = add i64 %71, 32, !mcsema_real_eip !57
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !57
  %176 = load i64, i64* %175, !mcsema_real_eip !57
  %177 = add i64 %71, 40, !mcsema_real_eip !57
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !57
  %179 = load i64, i64* %178, !mcsema_real_eip !57
  %180 = add i64 %71, 48, !mcsema_real_eip !57
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !57
  %182 = load i64, i64* %181, !mcsema_real_eip !57
  %183 = add i64 %71, 56, !mcsema_real_eip !57
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !57
  %185 = load i64, i64* %184, !mcsema_real_eip !57
  %186 = add i64 %71, 64, !mcsema_real_eip !57
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !57
  %188 = load i64, i64* %187, !mcsema_real_eip !57
  %189 = add i64 %71, 72, !mcsema_real_eip !57
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !57
  %191 = load i64, i64* %190, !mcsema_real_eip !57
  %192 = add i64 %71, 80, !mcsema_real_eip !57
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !57
  %194 = load i64, i64* %193, !mcsema_real_eip !57
  %195 = add i64 %71, 88, !mcsema_real_eip !57
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !57
  %197 = load i64, i64* %196, !mcsema_real_eip !57
  %198 = add i64 %71, 96, !mcsema_real_eip !57
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !57
  %200 = load i64, i64* %199, !mcsema_real_eip !57
  %201 = add i64 %71, 104, !mcsema_real_eip !57
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !57
  %203 = load i64, i64* %202, !mcsema_real_eip !57
  %204 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 4) to i64), i64 %166, i64 %134, i64 %RCX_val.1, i64 %R8_val.1, i64 %5, i64 %176, i64 %179, i64 %182, i64 %185, i64 %188, i64 %191, i64 %194, i64 %197, i64 %200, i64 %203), !mcsema_real_eip !57
  %205 = add i64 %3, 8, !mcsema_real_eip !57
  store i64 %204, i64* %RAX, !mcsema_real_eip !57
  store i64 %167, i64* %RBX, !mcsema_real_eip !57
  store i64 %RCX_val.1, i64* %RCX, !mcsema_real_eip !57
  store i64 %134, i64* %RDX, !mcsema_real_eip !57
  store i64 %166, i64* %RSI, !mcsema_real_eip !57
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 4) to i64), i64* %RDI, !mcsema_real_eip !57
  store i64 %205, i64* %RSP, !mcsema_real_eip !57
  store i64 %173, i64* %RBP, !mcsema_real_eip !57
  store i64 %R8_val.1, i64* %R8, !mcsema_real_eip !57
  store i64 %5, i64* %R9, !mcsema_real_eip !57
  store i64 %6, i64* %R10, !mcsema_real_eip !57
  store i64 %7, i64* %R11, !mcsema_real_eip !57
  store i64 %8, i64* %R12, !mcsema_real_eip !57
  store i64 %9, i64* %R13, !mcsema_real_eip !57
  store i64 %170, i64* %R14, !mcsema_real_eip !57
  store i64 %11, i64* %R15, !mcsema_real_eip !57
  store i64 %12, i64* %RIP, !mcsema_real_eip !57
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !57
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !57
  store i1 %159, i1* %AF, align 1, !mcsema_real_eip !57
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !57
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !57
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !57
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 128, i32 8, i1 false), !mcsema_real_eip !57
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !57
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !57
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !57
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !57
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !57
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !57
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !57
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !57
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !57
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !57
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !57
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !57
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !57
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !57
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !57
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !57
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !57
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !57
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !57
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !57
  %206 = load i64, i64* %42, align 4
  store i64 %206, i64* %41, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !57
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !57
  store i11 %48, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !57
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !57
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !57
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !57
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !57
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !57
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !57
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !57
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !57
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !57
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !57
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !57
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !57
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !57
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !57
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !57
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !57
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !57
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !57
  ret void, !mcsema_real_eip !57
}

declare x86_64_sysvcc i64 @puts(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_400850(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

define internal x86_64_sysvcc void @sub_400710.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 24
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 24
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !10
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !10
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !10
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !10
  %1 = load i64, i64* %RBX, !mcsema_real_eip !10
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !10
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !10
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !10
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !10
  %2 = load i64, i64* %RDI, !mcsema_real_eip !10
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !10
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !10
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !10
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !10
  %3 = load i64, i64* %R9, !mcsema_real_eip !10
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !10
  %4 = load i64, i64* %R10, !mcsema_real_eip !10
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !10
  %5 = load i64, i64* %R11, !mcsema_real_eip !10
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !10
  %6 = load i64, i64* %R12, !mcsema_real_eip !10
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !10
  %7 = load i64, i64* %R13, !mcsema_real_eip !10
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !10
  %8 = load i64, i64* %R14, !mcsema_real_eip !10
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !10
  %9 = load i64, i64* %R15, !mcsema_real_eip !10
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !10
  %10 = load i64, i64* %RIP, !mcsema_real_eip !10
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !10
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !10
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !10
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !10
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !10
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !10
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !10
  %11 = load i1, i1* %DF, align 1, !mcsema_real_eip !10
  %12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !10
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !10
  %14 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !10
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !10
  %15 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !10
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !10
  %16 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !10
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !10
  %17 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !10
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !10
  %18 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !10
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !10
  %19 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !10
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !10
  %20 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !10
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !10
  %21 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !10
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !10
  %22 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !10
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !10
  %23 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !10
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !10
  %24 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !10
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !10
  %25 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !10
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !10
  %26 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !10
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !10
  %27 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !10
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !10
  %28 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !10
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !10
  %29 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !10
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !10
  %30 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !10
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !10
  %31 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !10
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !10
  %32 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !10
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !10
  %33 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !10
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !10
  %34 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !10
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !10
  %35 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !10
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !10
  %36 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !10
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !10
  %37 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !10
  %38 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !10
  %39 = bitcast i8* %38 to i64*
  %40 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_ptr_to_int_ = ptrtoint i64* %39 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %38, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %38, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %38, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %41, label %42

; <label>:41:                                     ; preds = %entry
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %42

; <label>:42:                                     ; preds = %entry, %41
  %43 = phi i64* [ %39, %entry ], [ %_address_in_parent_stack_bt_, %41 ]
  %_new_load_ = load i64, i64* %43
  store i64 %_new_load_, i64* %40, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !10
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !10
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !10
  %45 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !10
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !10
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !10
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !10
  %47 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !10
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !10
  %48 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !10
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !10
  %49 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !10
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !10
  %50 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !10
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !10
  %51 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !10
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !10
  %52 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !10
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !10
  %53 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !10
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !10
  %54 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !10
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !10
  %55 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !10
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !10
  %56 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !10
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !10
  %57 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !10
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !10
  %58 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !10
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !10
  %59 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !10
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !10
  %60 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !10
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !10
  %61 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !10
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !10
  %62 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !10
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !10
  %63 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !10
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !10
  %64 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !10
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !10
  %65 = load i64, i64* %STACK_BASE, !mcsema_real_eip !10
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !10
  %66 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !10
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  store i64 %8, i64* %_allin_new_bt_2, !mcsema_real_eip !11
  %_new_gep_3 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %1, i64* %_allin_new_bt_4, !mcsema_real_eip !12
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  %67 = and i64 %2, 4294967295
  store i64 74755, i64* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58896) to i64*), !mcsema_real_eip !13
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58892) to i32*), !mcsema_real_eip !14
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 17588) to i32*), !mcsema_real_eip !15
  store volatile i8* inttoptr (i64 74755 to i8*), i8** %_RBP_ptr_
  br label %block_0x400760, !mcsema_real_eip !16

block_0x400760:                                   ; preds = %block_0x4007ae, %42
  %R8_val.0 = phi i64 [ 0, %42 ], [ %R8_val.1, %block_0x4007ae ]
  %RDI_val.0 = phi i64 [ -2000, %42 ], [ %100, %block_0x4007ae ]
  %RSI_val.0 = phi i64 [ 0, %42 ], [ %RSI_val.1, %block_0x4007ae ]
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_trans_p2i_ = ptrtoint i8* %_load_rbp_ptr_5 to i64
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i32
  %68 = mul i32 %_trans_trunc_, 1309, !mcsema_real_eip !16
  %69 = add i32 %68, 13849
  %70 = and i32 %69, 65535
  %71 = zext i32 %70 to i64, !mcsema_real_eip !17
  %_new_int2ptr_ = inttoptr i64 %71 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %72 = lshr i64 %71, 5
  %73 = zext i64 %72 to i128, !mcsema_real_eip !18
  %74 = mul i128 %73, 755578637259143235, !mcsema_real_eip !18
  %75 = add i32 %70, -50000
  %76 = zext i32 %75 to i64, !mcsema_real_eip !19
  %77 = trunc i64 %RSI_val.0 to i32, !mcsema_real_eip !20
  %78 = sub i32 %75, %77, !mcsema_real_eip !20
  %79 = xor i32 %78, %75, !mcsema_real_eip !20
  %80 = icmp eq i32 %75, %77
  %81 = icmp slt i32 %78, 0
  %82 = xor i32 %77, %75, !mcsema_real_eip !20
  %83 = and i32 %79, %82, !mcsema_real_eip !20
  %84 = icmp slt i32 %83, 0
  %85 = add i64 %RDI_val.0, add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69732), !mcsema_real_eip !21
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !21
  %87 = bitcast i64* %86 to i32*
  store i32 %75, i32* %87, !mcsema_real_eip !21
  %88 = xor i1 %81, %84
  %89 = or i1 %80, %88, !mcsema_real_eip !22
  br i1 %89, label %block_0x4007a0, label %block_0x400795, !mcsema_real_eip !22

block_0x400795:                                   ; preds = %block_0x400760
  store i32 %75, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58892) to i32*), !mcsema_real_eip !23
  %90 = and i64 %76, 4294967295
  br label %block_0x4007ae, !mcsema_real_eip !24

block_0x4007a0:                                   ; preds = %block_0x400760
  %91 = trunc i64 %R8_val.0 to i32, !mcsema_real_eip !25
  %92 = sub i32 %75, %91, !mcsema_real_eip !25
  %93 = xor i32 %92, %75, !mcsema_real_eip !25
  %94 = icmp slt i32 %92, 0
  %95 = xor i64 %R8_val.0, %76
  %96 = trunc i64 %95 to i32
  %97 = and i32 %93, %96, !mcsema_real_eip !25
  %98 = icmp slt i32 %97, 0
  %tmp78 = xor i1 %94, %98
  br i1 %tmp78, label %block_0x4007a5, label %block_0x4007ae, !mcsema_real_eip !26

block_0x4007a5:                                   ; preds = %block_0x4007a0
  store i32 %75, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 17588) to i32*), !mcsema_real_eip !27
  %99 = and i64 %76, 4294967295
  br label %block_0x4007ae, !mcsema_real_eip !28

block_0x4007ae:                                   ; preds = %block_0x4007a5, %block_0x4007a0, %block_0x400795
  %R8_val.1 = phi i64 [ %99, %block_0x4007a5 ], [ %R8_val.0, %block_0x4007a0 ], [ %R8_val.0, %block_0x400795 ]
  %RSI_val.1 = phi i64 [ %RSI_val.0, %block_0x4007a5 ], [ %RSI_val.0, %block_0x4007a0 ], [ %90, %block_0x400795 ]
  %uadd73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RDI_val.0, i64 4)
  %100 = extractvalue { i64, i1 } %uadd73, 0
  %101 = icmp eq i64 %100, 0, !mcsema_real_eip !29
  br i1 %101, label %block_0x4007b4, label %block_0x400760, !mcsema_real_eip !30

block_0x4007b4:                                   ; preds = %block_0x4007ae
  %_load_rbp_ptr_9 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_10 = ptrtoint i8* %_load_rbp_ptr_9 to i64
  store volatile i64 %_new_ptr2int_10, i64* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58896) to i64*)
  store i32 500, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 44224) to i32*), !mcsema_real_eip !31
  store volatile i8* inttoptr (i64 499 to i8*), i8** %_RBP_ptr_
  br label %block_0x4007d0, !mcsema_real_eip !32

block_0x4007d0:                                   ; preds = %block_0x4007fa, %block_0x4007b4
  %RAX_val.0 = phi i64 [ 500, %block_0x4007b4 ], [ %133, %block_0x4007fa ]
  %_offset_above_rbp_52 = sub i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732), %_local_end_to_int_
  %_pot_address_in_parent_stack_53 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_52
  %_cond1_54 = icmp ugt i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732) to i8*), %_local_stack_end_ptr_
  %_cond2_1_55 = icmp ugt i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732) to i8*), %_parent_stack_end_ptr_
  %_cond2_2_56 = icmp ult i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732) to i8*), %_parent_stack_start_ptr_
  %_cond2_57 = or i1 %_cond2_1_55, %_cond2_2_56
  %_cond4_58 = icmp ule i8* %_pot_address_in_parent_stack_53, %_parent_stack_end_ptr_
  %_cond1_n_cond2_59 = and i1 %_cond1_54, %_cond2_57
  %_cond1_n_cond2_cond3_60 = and i1 %_cond1_n_cond2_59, %_cond4_58
  br i1 %_cond1_n_cond2_cond3_60, label %102, label %103

; <label>:102:                                    ; preds = %block_0x4007d0
  %_address_in_parent_stack_bt_62 = bitcast i8* %_pot_address_in_parent_stack_53 to i32*
  br label %103

; <label>:103:                                    ; preds = %block_0x4007d0, %102
  %104 = phi i32* [ inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732) to i32*), %block_0x4007d0 ], [ %_address_in_parent_stack_bt_62, %102 ]
  %_new_load_63 = load i32, i32* %104
  %105 = zext i32 %_new_load_63 to i64, !mcsema_real_eip !32
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %_trans_p2i_12 = ptrtoint i8* %_load_rbp_ptr_11 to i64
  %_trans_xor_ = and i64 %_trans_p2i_12, 4294967295
  br label %block_0x4007e0, !mcsema_real_eip !33

block_0x4007e0:                                   ; preds = %block_0x4007f2, %103
  %RDX_val.0 = phi i64 [ %_trans_xor_, %103 ], [ %130, %block_0x4007f2 ]
  %RCX_val.0 = phi i64 [ %105, %103 ], [ %RCX_val.1, %block_0x4007f2 ]
  %RBX_val.0 = phi i64 [ zext (i32 add (i32 ptrtoint (%1* @data_0x601050 to i32), i32 67736) to i64), %103 ], [ %126, %block_0x4007f2 ]
  %106 = inttoptr i64 %RBX_val.0 to i64*, !mcsema_real_eip !33
  %107 = bitcast i64* %106 to i32*
  %_ptr_to_int_64 = ptrtoint i32* %107 to i64
  %_ptr_bt_66 = bitcast i32* %107 to i8*
  %_offset_above_rbp_67 = sub i64 %_ptr_to_int_64, %_local_end_to_int_
  %_pot_address_in_parent_stack_68 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_67
  %_cond1_69 = icmp ugt i8* %_ptr_bt_66, %_local_stack_end_ptr_
  %_cond2_1_70 = icmp ugt i8* %_ptr_bt_66, %_parent_stack_end_ptr_
  %_cond2_2_71 = icmp ult i8* %_ptr_bt_66, %_parent_stack_start_ptr_
  %_cond2_72 = or i1 %_cond2_1_70, %_cond2_2_71
  %_cond4_73 = icmp ule i8* %_pot_address_in_parent_stack_68, %_parent_stack_end_ptr_
  %_cond1_n_cond2_74 = and i1 %_cond1_69, %_cond2_72
  %_cond1_n_cond2_cond3_75 = and i1 %_cond1_n_cond2_74, %_cond4_73
  br i1 %_cond1_n_cond2_cond3_75, label %108, label %109

; <label>:108:                                    ; preds = %block_0x4007e0
  %_address_in_parent_stack_bt_77 = bitcast i8* %_pot_address_in_parent_stack_68 to i32*
  br label %109

; <label>:109:                                    ; preds = %block_0x4007e0, %108
  %110 = phi i32* [ %107, %block_0x4007e0 ], [ %_address_in_parent_stack_bt_77, %108 ]
  %_new_load_78 = load i32, i32* %110
  %111 = zext i32 %_new_load_78 to i64, !mcsema_real_eip !33
  %112 = trunc i64 %RCX_val.0 to i32, !mcsema_real_eip !34
  %113 = sub i32 %112, %_new_load_78, !mcsema_real_eip !34
  %114 = xor i32 %113, %112, !mcsema_real_eip !34
  %115 = icmp eq i32 %112, %_new_load_78
  %116 = icmp slt i32 %113, 0
  %117 = xor i32 %112, %_new_load_78, !mcsema_real_eip !34
  %118 = and i32 %114, %117, !mcsema_real_eip !34
  %119 = icmp slt i32 %118, 0
  %120 = xor i1 %116, %119
  %121 = or i1 %115, %120, !mcsema_real_eip !35
  br i1 %121, label %block_0x4007f0, label %block_0x4007e6, !mcsema_real_eip !35

block_0x4007e6:                                   ; preds = %109
  %122 = add i64 %RBX_val.0, -4, !mcsema_real_eip !36
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !36
  %124 = bitcast i64* %123 to i32*
  store i32 %_new_load_78, i32* %124, !mcsema_real_eip !36
  store i32 %112, i32* %107, !mcsema_real_eip !37
  br label %block_0x4007f2, !mcsema_real_eip !38

block_0x4007f0:                                   ; preds = %109
  %125 = and i64 %111, 4294967295
  br label %block_0x4007f2, !mcsema_real_eip !36

block_0x4007f2:                                   ; preds = %block_0x4007f0, %block_0x4007e6
  %RCX_val.1 = phi i64 [ %125, %block_0x4007f0 ], [ %RCX_val.0, %block_0x4007e6 ]
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RBX_val.0, i64 4)
  %126 = extractvalue { i64, i1 } %uadd75, 0
  %127 = trunc i64 %RDX_val.0 to i32, !mcsema_real_eip !39
  %128 = add i32 %127, -1
  %129 = icmp eq i32 %128, 0, !mcsema_real_eip !39
  %130 = zext i32 %128 to i64, !mcsema_real_eip !39
  br i1 %129, label %block_0x4007fa, label %block_0x4007e0, !mcsema_real_eip !40

block_0x4007fa:                                   ; preds = %block_0x4007f2
  %131 = trunc i64 %RAX_val.0 to i32, !mcsema_real_eip !41
  %132 = add i32 %131, -1
  %133 = zext i32 %132 to i64, !mcsema_real_eip !41
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_trans_p2i_14 = ptrtoint i8* %_load_rbp_ptr_13 to i64
  %_trans_trunc_15 = trunc i64 %_trans_p2i_14 to i32
  %134 = add i32 %_trans_trunc_15, -1
  %135 = zext i32 %134 to i64, !mcsema_real_eip !42
  %_new_int2ptr_16 = inttoptr i64 %135 to i8*
  store volatile i8* %_new_int2ptr_16, i8** %_RBP_ptr_
  %136 = add i32 %131, -2
  %137 = xor i32 %136, %132, !mcsema_real_eip !43
  %138 = icmp eq i32 %136, 0, !mcsema_real_eip !43
  %139 = icmp slt i32 %136, 0
  %140 = and i32 %137, %132, !mcsema_real_eip !43
  %141 = icmp slt i32 %140, 0
  %tmp = xor i1 %139, %141
  %.demorgan = or i1 %138, %tmp
  br i1 %.demorgan, label %block_0x400803, label %block_0x4007d0, !mcsema_real_eip !44

block_0x400803:                                   ; preds = %block_0x4007fa
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 44224) to i32*), !mcsema_real_eip !45
  %142 = trunc i64 %R8_val.1 to i32, !mcsema_real_eip !46
  br i1 %_cond1_n_cond2_cond3_60, label %143, label %144

; <label>:143:                                    ; preds = %block_0x400803
  %_address_in_parent_stack_bt_90 = bitcast i8* %_pot_address_in_parent_stack_53 to i32*
  br label %144

; <label>:144:                                    ; preds = %block_0x400803, %143
  %145 = phi i32* [ inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732) to i32*), %block_0x400803 ], [ %_address_in_parent_stack_bt_90, %143 ]
  %_new_load_91 = load i32, i32* %145
  %146 = icmp eq i32 %_new_load_91, %142
  br i1 %146, label %block_0x400816, label %block_0x40081e, !mcsema_real_eip !47

block_0x400816:                                   ; preds = %144
  %147 = trunc i64 %RSI_val.1 to i32, !mcsema_real_eip !48
  %_offset_above_rbp_93 = sub i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69728), %_local_end_to_int_
  %_pot_address_in_parent_stack_94 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_93
  %_cond1_95 = icmp ugt i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69728) to i8*), %_local_stack_end_ptr_
  %_cond2_1_96 = icmp ugt i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69728) to i8*), %_parent_stack_end_ptr_
  %_cond2_2_97 = icmp ult i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69728) to i8*), %_parent_stack_start_ptr_
  %_cond2_98 = or i1 %_cond2_1_96, %_cond2_2_97
  %_cond4_99 = icmp ule i8* %_pot_address_in_parent_stack_94, %_parent_stack_end_ptr_
  %_cond1_n_cond2_100 = and i1 %_cond1_95, %_cond2_98
  %_cond1_n_cond2_cond3_101 = and i1 %_cond1_n_cond2_100, %_cond4_99
  br i1 %_cond1_n_cond2_cond3_101, label %148, label %149

; <label>:148:                                    ; preds = %block_0x400816
  %_address_in_parent_stack_bt_103 = bitcast i8* %_pot_address_in_parent_stack_94 to i32*
  br label %149

; <label>:149:                                    ; preds = %block_0x400816, %148
  %150 = phi i32* [ inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69728) to i32*), %block_0x400816 ], [ %_address_in_parent_stack_bt_103, %148 ]
  %_new_load_104 = load i32, i32* %150
  %151 = icmp eq i32 %_new_load_104, %147
  br i1 %151, label %block_0x400828, label %block_0x40081e, !mcsema_real_eip !49

block_0x40081e:                                   ; preds = %149, %144
  %152 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 16) to i64)), !mcsema_real_eip !50
  br label %block_0x400828, !mcsema_real_eip !48

block_0x400828:                                   ; preds = %block_0x40081e, %149
  %153 = trunc i64 %67 to i32, !mcsema_real_eip !51
  %154 = add i32 %153, 1, !mcsema_real_eip !51
  %155 = zext i32 %154 to i64, !mcsema_real_eip !51
  %156 = xor i64 %155, %67, !mcsema_real_eip !51
  %157 = and i64 %156, 16, !mcsema_real_eip !51
  %158 = icmp ne i64 %157, 0, !mcsema_real_eip !51
  %159 = sext i32 %154 to i64, !mcsema_real_eip !52
  %160 = shl nsw i64 %159, 2
  %161 = add i64 %160, add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67728), !mcsema_real_eip !53
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !53
  %163 = bitcast i64* %162 to i32*
  %_ptr_to_int_105 = ptrtoint i32* %163 to i64
  %_ptr_bt_107 = bitcast i32* %163 to i8*
  %_offset_above_rbp_108 = sub i64 %_ptr_to_int_105, %_local_end_to_int_
  %_pot_address_in_parent_stack_109 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_108
  %_cond1_110 = icmp ugt i8* %_ptr_bt_107, %_local_stack_end_ptr_
  %_cond2_1_111 = icmp ugt i8* %_ptr_bt_107, %_parent_stack_end_ptr_
  %_cond2_2_112 = icmp ult i8* %_ptr_bt_107, %_parent_stack_start_ptr_
  %_cond2_113 = or i1 %_cond2_1_111, %_cond2_2_112
  %_cond4_114 = icmp ule i8* %_pot_address_in_parent_stack_109, %_parent_stack_end_ptr_
  %_cond1_n_cond2_115 = and i1 %_cond1_110, %_cond2_113
  %_cond1_n_cond2_cond3_116 = and i1 %_cond1_n_cond2_115, %_cond4_114
  br i1 %_cond1_n_cond2_cond3_116, label %164, label %165

; <label>:164:                                    ; preds = %block_0x400828
  %_address_in_parent_stack_bt_118 = bitcast i8* %_pot_address_in_parent_stack_109 to i32*
  br label %165

; <label>:165:                                    ; preds = %block_0x400828, %164
  %166 = phi i32* [ %163, %block_0x400828 ], [ %_address_in_parent_stack_bt_118, %164 ]
  %_new_load_119 = load i32, i32* %166
  %167 = zext i32 %_new_load_119 to i64, !mcsema_real_eip !53
  %_load_rsp_ptr_17 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_18 = bitcast i8* %_load_rsp_ptr_17 to i64*
  %_ptr_to_int_120 = ptrtoint i64* %_allin_new_bt_18 to i64
  %_offset_above_rbp_123 = sub i64 %_ptr_to_int_120, %_local_end_to_int_
  %_pot_address_in_parent_stack_124 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_123
  %_cond1_125 = icmp ugt i8* %_load_rsp_ptr_17, %_local_stack_end_ptr_
  %_cond2_1_126 = icmp ugt i8* %_load_rsp_ptr_17, %_parent_stack_end_ptr_
  %_cond2_2_127 = icmp ult i8* %_load_rsp_ptr_17, %_parent_stack_start_ptr_
  %_cond2_128 = or i1 %_cond2_1_126, %_cond2_2_127
  %_cond4_129 = icmp ule i8* %_pot_address_in_parent_stack_124, %_parent_stack_end_ptr_
  %_cond1_n_cond2_130 = and i1 %_cond1_125, %_cond2_128
  %_cond1_n_cond2_cond3_131 = and i1 %_cond1_n_cond2_130, %_cond4_129
  br i1 %_cond1_n_cond2_cond3_131, label %168, label %169

; <label>:168:                                    ; preds = %165
  %_address_in_parent_stack_bt_133 = bitcast i8* %_pot_address_in_parent_stack_124 to i64*
  br label %169

; <label>:169:                                    ; preds = %165, %168
  %170 = phi i64* [ %_allin_new_bt_18, %165 ], [ %_address_in_parent_stack_bt_133, %168 ]
  %_new_load_134 = load i64, i64* %170
  %_new_gep_19 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 8
  store volatile i8* %_new_gep_19, i8** %_RSP_ptr_
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %_ptr_to_int_135 = ptrtoint i64* %_allin_new_bt_20 to i64
  %_offset_above_rbp_138 = sub i64 %_ptr_to_int_135, %_local_end_to_int_
  %_pot_address_in_parent_stack_139 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_138
  %_cond1_140 = icmp ugt i8* %_new_gep_19, %_local_stack_end_ptr_
  %_cond2_1_141 = icmp ugt i8* %_new_gep_19, %_parent_stack_end_ptr_
  %_cond2_2_142 = icmp ult i8* %_new_gep_19, %_parent_stack_start_ptr_
  %_cond2_143 = or i1 %_cond2_1_141, %_cond2_2_142
  %_cond4_144 = icmp ule i8* %_pot_address_in_parent_stack_139, %_parent_stack_end_ptr_
  %_cond1_n_cond2_145 = and i1 %_cond1_140, %_cond2_143
  %_cond1_n_cond2_cond3_146 = and i1 %_cond1_n_cond2_145, %_cond4_144
  br i1 %_cond1_n_cond2_cond3_146, label %171, label %172

; <label>:171:                                    ; preds = %169
  %_address_in_parent_stack_bt_148 = bitcast i8* %_pot_address_in_parent_stack_139 to i64*
  br label %172

; <label>:172:                                    ; preds = %169, %171
  %173 = phi i64* [ %_allin_new_bt_20, %169 ], [ %_address_in_parent_stack_bt_148, %171 ]
  %_new_load_149 = load i64, i64* %173
  %_new_gep_21 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 16
  store volatile i8* %_new_gep_21, i8** %_RSP_ptr_
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %_ptr_to_int_150 = ptrtoint i64* %_allin_new_bt_22 to i64
  %_offset_above_rbp_153 = sub i64 %_ptr_to_int_150, %_local_end_to_int_
  %_pot_address_in_parent_stack_154 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_153
  %_cond1_155 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_156 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_157 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_158 = or i1 %_cond2_1_156, %_cond2_2_157
  %_cond4_159 = icmp ule i8* %_pot_address_in_parent_stack_154, %_parent_stack_end_ptr_
  %_cond1_n_cond2_160 = and i1 %_cond1_155, %_cond2_158
  %_cond1_n_cond2_cond3_161 = and i1 %_cond1_n_cond2_160, %_cond4_159
  br i1 %_cond1_n_cond2_cond3_161, label %174, label %175

; <label>:174:                                    ; preds = %172
  %_address_in_parent_stack_bt_163 = bitcast i8* %_pot_address_in_parent_stack_154 to i64*
  br label %175

; <label>:175:                                    ; preds = %172, %174
  %176 = phi i64* [ %_allin_new_bt_22, %172 ], [ %_address_in_parent_stack_bt_163, %174 ]
  %_new_load_164 = load i64, i64* %176
  %_new_int2ptr_23 = inttoptr i64 %_new_load_164 to i8*
  store volatile i8* %_new_int2ptr_23, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 24
  store volatile i8* %_new_gep_24, i8** %_RSP_ptr_
  %_new_gep_25 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 32
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %_ptr_to_int_165 = ptrtoint i64* %_allin_new_bt_26 to i64
  %_offset_above_rbp_168 = sub i64 %_ptr_to_int_165, %_local_end_to_int_
  %_pot_address_in_parent_stack_169 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_168
  %_cond1_170 = icmp ugt i8* %_new_gep_25, %_local_stack_end_ptr_
  %_cond2_1_171 = icmp ugt i8* %_new_gep_25, %_parent_stack_end_ptr_
  %_cond2_2_172 = icmp ult i8* %_new_gep_25, %_parent_stack_start_ptr_
  %_cond2_173 = or i1 %_cond2_1_171, %_cond2_2_172
  %_cond4_174 = icmp ule i8* %_pot_address_in_parent_stack_169, %_parent_stack_end_ptr_
  %_cond1_n_cond2_175 = and i1 %_cond1_170, %_cond2_173
  %_cond1_n_cond2_cond3_176 = and i1 %_cond1_n_cond2_175, %_cond4_174
  br i1 %_cond1_n_cond2_cond3_176, label %177, label %178

; <label>:177:                                    ; preds = %175
  %_address_in_parent_stack_bt_178 = bitcast i8* %_pot_address_in_parent_stack_169 to i64*
  br label %178

; <label>:178:                                    ; preds = %175, %177
  %179 = phi i64* [ %_allin_new_bt_26, %175 ], [ %_address_in_parent_stack_bt_178, %177 ]
  %_new_load_179 = load i64, i64* %179
  %_new_gep_27 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 40
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %_ptr_to_int_180 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_183 = sub i64 %_ptr_to_int_180, %_local_end_to_int_
  %_pot_address_in_parent_stack_184 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_183
  %_cond1_185 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_186 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_187 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_188 = or i1 %_cond2_1_186, %_cond2_2_187
  %_cond4_189 = icmp ule i8* %_pot_address_in_parent_stack_184, %_parent_stack_end_ptr_
  %_cond1_n_cond2_190 = and i1 %_cond1_185, %_cond2_188
  %_cond1_n_cond2_cond3_191 = and i1 %_cond1_n_cond2_190, %_cond4_189
  br i1 %_cond1_n_cond2_cond3_191, label %180, label %181

; <label>:180:                                    ; preds = %178
  %_address_in_parent_stack_bt_193 = bitcast i8* %_pot_address_in_parent_stack_184 to i64*
  br label %181

; <label>:181:                                    ; preds = %178, %180
  %182 = phi i64* [ %_allin_new_bt_28, %178 ], [ %_address_in_parent_stack_bt_193, %180 ]
  %_new_load_194 = load i64, i64* %182
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 48
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_195 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_198 = sub i64 %_ptr_to_int_195, %_local_end_to_int_
  %_pot_address_in_parent_stack_199 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_198
  %_cond1_200 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_201 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_202 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_203 = or i1 %_cond2_1_201, %_cond2_2_202
  %_cond4_204 = icmp ule i8* %_pot_address_in_parent_stack_199, %_parent_stack_end_ptr_
  %_cond1_n_cond2_205 = and i1 %_cond1_200, %_cond2_203
  %_cond1_n_cond2_cond3_206 = and i1 %_cond1_n_cond2_205, %_cond4_204
  br i1 %_cond1_n_cond2_cond3_206, label %183, label %184

; <label>:183:                                    ; preds = %181
  %_address_in_parent_stack_bt_208 = bitcast i8* %_pot_address_in_parent_stack_199 to i64*
  br label %184

; <label>:184:                                    ; preds = %181, %183
  %185 = phi i64* [ %_allin_new_bt_30, %181 ], [ %_address_in_parent_stack_bt_208, %183 ]
  %_new_load_209 = load i64, i64* %185
  %_new_gep_31 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 56
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %_ptr_to_int_210 = ptrtoint i64* %_allin_new_bt_32 to i64
  %_offset_above_rbp_213 = sub i64 %_ptr_to_int_210, %_local_end_to_int_
  %_pot_address_in_parent_stack_214 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_213
  %_cond1_215 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_216 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_217 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_218 = or i1 %_cond2_1_216, %_cond2_2_217
  %_cond4_219 = icmp ule i8* %_pot_address_in_parent_stack_214, %_parent_stack_end_ptr_
  %_cond1_n_cond2_220 = and i1 %_cond1_215, %_cond2_218
  %_cond1_n_cond2_cond3_221 = and i1 %_cond1_n_cond2_220, %_cond4_219
  br i1 %_cond1_n_cond2_cond3_221, label %186, label %187

; <label>:186:                                    ; preds = %184
  %_address_in_parent_stack_bt_223 = bitcast i8* %_pot_address_in_parent_stack_214 to i64*
  br label %187

; <label>:187:                                    ; preds = %184, %186
  %188 = phi i64* [ %_allin_new_bt_32, %184 ], [ %_address_in_parent_stack_bt_223, %186 ]
  %_new_load_224 = load i64, i64* %188
  %_new_gep_33 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 64
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_225 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_228 = sub i64 %_ptr_to_int_225, %_local_end_to_int_
  %_pot_address_in_parent_stack_229 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_228
  %_cond1_230 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_231 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_232 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_233 = or i1 %_cond2_1_231, %_cond2_2_232
  %_cond4_234 = icmp ule i8* %_pot_address_in_parent_stack_229, %_parent_stack_end_ptr_
  %_cond1_n_cond2_235 = and i1 %_cond1_230, %_cond2_233
  %_cond1_n_cond2_cond3_236 = and i1 %_cond1_n_cond2_235, %_cond4_234
  br i1 %_cond1_n_cond2_cond3_236, label %189, label %190

; <label>:189:                                    ; preds = %187
  %_address_in_parent_stack_bt_238 = bitcast i8* %_pot_address_in_parent_stack_229 to i64*
  br label %190

; <label>:190:                                    ; preds = %187, %189
  %191 = phi i64* [ %_allin_new_bt_34, %187 ], [ %_address_in_parent_stack_bt_238, %189 ]
  %_new_load_239 = load i64, i64* %191
  %_new_gep_35 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 72
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_240 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_243 = sub i64 %_ptr_to_int_240, %_local_end_to_int_
  %_pot_address_in_parent_stack_244 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_243
  %_cond1_245 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_246 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_247 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_248 = or i1 %_cond2_1_246, %_cond2_2_247
  %_cond4_249 = icmp ule i8* %_pot_address_in_parent_stack_244, %_parent_stack_end_ptr_
  %_cond1_n_cond2_250 = and i1 %_cond1_245, %_cond2_248
  %_cond1_n_cond2_cond3_251 = and i1 %_cond1_n_cond2_250, %_cond4_249
  br i1 %_cond1_n_cond2_cond3_251, label %192, label %193

; <label>:192:                                    ; preds = %190
  %_address_in_parent_stack_bt_253 = bitcast i8* %_pot_address_in_parent_stack_244 to i64*
  br label %193

; <label>:193:                                    ; preds = %190, %192
  %194 = phi i64* [ %_allin_new_bt_36, %190 ], [ %_address_in_parent_stack_bt_253, %192 ]
  %_new_load_254 = load i64, i64* %194
  %_new_gep_37 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 80
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %_ptr_to_int_255 = ptrtoint i64* %_allin_new_bt_38 to i64
  %_offset_above_rbp_258 = sub i64 %_ptr_to_int_255, %_local_end_to_int_
  %_pot_address_in_parent_stack_259 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_258
  %_cond1_260 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_261 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_262 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_263 = or i1 %_cond2_1_261, %_cond2_2_262
  %_cond4_264 = icmp ule i8* %_pot_address_in_parent_stack_259, %_parent_stack_end_ptr_
  %_cond1_n_cond2_265 = and i1 %_cond1_260, %_cond2_263
  %_cond1_n_cond2_cond3_266 = and i1 %_cond1_n_cond2_265, %_cond4_264
  br i1 %_cond1_n_cond2_cond3_266, label %195, label %196

; <label>:195:                                    ; preds = %193
  %_address_in_parent_stack_bt_268 = bitcast i8* %_pot_address_in_parent_stack_259 to i64*
  br label %196

; <label>:196:                                    ; preds = %193, %195
  %197 = phi i64* [ %_allin_new_bt_38, %193 ], [ %_address_in_parent_stack_bt_268, %195 ]
  %_new_load_269 = load i64, i64* %197
  %_new_gep_39 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 88
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_270 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_273 = sub i64 %_ptr_to_int_270, %_local_end_to_int_
  %_pot_address_in_parent_stack_274 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_273
  %_cond1_275 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_276 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_277 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_278 = or i1 %_cond2_1_276, %_cond2_2_277
  %_cond4_279 = icmp ule i8* %_pot_address_in_parent_stack_274, %_parent_stack_end_ptr_
  %_cond1_n_cond2_280 = and i1 %_cond1_275, %_cond2_278
  %_cond1_n_cond2_cond3_281 = and i1 %_cond1_n_cond2_280, %_cond4_279
  br i1 %_cond1_n_cond2_cond3_281, label %198, label %199

; <label>:198:                                    ; preds = %196
  %_address_in_parent_stack_bt_283 = bitcast i8* %_pot_address_in_parent_stack_274 to i64*
  br label %199

; <label>:199:                                    ; preds = %196, %198
  %200 = phi i64* [ %_allin_new_bt_40, %196 ], [ %_address_in_parent_stack_bt_283, %198 ]
  %_new_load_284 = load i64, i64* %200
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 96
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_285 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_288 = sub i64 %_ptr_to_int_285, %_local_end_to_int_
  %_pot_address_in_parent_stack_289 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_288
  %_cond1_290 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_291 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_292 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_293 = or i1 %_cond2_1_291, %_cond2_2_292
  %_cond4_294 = icmp ule i8* %_pot_address_in_parent_stack_289, %_parent_stack_end_ptr_
  %_cond1_n_cond2_295 = and i1 %_cond1_290, %_cond2_293
  %_cond1_n_cond2_cond3_296 = and i1 %_cond1_n_cond2_295, %_cond4_294
  br i1 %_cond1_n_cond2_cond3_296, label %201, label %202

; <label>:201:                                    ; preds = %199
  %_address_in_parent_stack_bt_298 = bitcast i8* %_pot_address_in_parent_stack_289 to i64*
  br label %202

; <label>:202:                                    ; preds = %199, %201
  %203 = phi i64* [ %_allin_new_bt_42, %199 ], [ %_address_in_parent_stack_bt_298, %201 ]
  %_new_load_299 = load i64, i64* %203
  %_new_gep_43 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 104
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %_ptr_to_int_300 = ptrtoint i64* %_allin_new_bt_44 to i64
  %_offset_above_rbp_303 = sub i64 %_ptr_to_int_300, %_local_end_to_int_
  %_pot_address_in_parent_stack_304 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_303
  %_cond1_305 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_306 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_307 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_308 = or i1 %_cond2_1_306, %_cond2_2_307
  %_cond4_309 = icmp ule i8* %_pot_address_in_parent_stack_304, %_parent_stack_end_ptr_
  %_cond1_n_cond2_310 = and i1 %_cond1_305, %_cond2_308
  %_cond1_n_cond2_cond3_311 = and i1 %_cond1_n_cond2_310, %_cond4_309
  br i1 %_cond1_n_cond2_cond3_311, label %204, label %205

; <label>:204:                                    ; preds = %202
  %_address_in_parent_stack_bt_313 = bitcast i8* %_pot_address_in_parent_stack_304 to i64*
  br label %205

; <label>:205:                                    ; preds = %202, %204
  %206 = phi i64* [ %_allin_new_bt_44, %202 ], [ %_address_in_parent_stack_bt_313, %204 ]
  %_new_load_314 = load i64, i64* %206
  %207 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 4) to i64), i64 %167, i64 %130, i64 %RCX_val.1, i64 %R8_val.1, i64 %3, i64 %_new_load_179, i64 %_new_load_194, i64 %_new_load_209, i64 %_new_load_224, i64 %_new_load_239, i64 %_new_load_254, i64 %_new_load_269, i64 %_new_load_284, i64 %_new_load_299, i64 %_new_load_314), !mcsema_real_eip !57
  %_new_gep_46 = getelementptr i8, i8* %_new_gep_24, i64 8
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_
  store i64 %207, i64* %RAX, !mcsema_real_eip !57
  store i64 %_new_load_134, i64* %RBX, !mcsema_real_eip !57
  store i64 %RCX_val.1, i64* %RCX, !mcsema_real_eip !57
  store i64 %130, i64* %RDX, !mcsema_real_eip !57
  store i64 %167, i64* %RSI, !mcsema_real_eip !57
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 4) to i64), i64* %RDI, !mcsema_real_eip !57
  %_new_ptr2int_48 = ptrtoint i8* %_new_gep_46 to i64
  store volatile i64 %_new_ptr2int_48, i64* %RSP
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_50 = ptrtoint i8* %_load_rbp_ptr_49 to i64
  store volatile i64 %_new_ptr2int_50, i64* %RBP
  store i64 %R8_val.1, i64* %R8, !mcsema_real_eip !57
  store i64 %3, i64* %R9, !mcsema_real_eip !57
  store i64 %4, i64* %R10, !mcsema_real_eip !57
  store i64 %5, i64* %R11, !mcsema_real_eip !57
  store i64 %6, i64* %R12, !mcsema_real_eip !57
  store i64 %7, i64* %R13, !mcsema_real_eip !57
  store i64 %_new_load_149, i64* %R14, !mcsema_real_eip !57
  store i64 %9, i64* %R15, !mcsema_real_eip !57
  store i64 %10, i64* %RIP, !mcsema_real_eip !57
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !57
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !57
  store i1 %158, i1* %AF, align 1, !mcsema_real_eip !57
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !57
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !57
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !57
  store i1 %11, i1* %DF, align 1, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %14, i32 128, i32 8, i1 false), !mcsema_real_eip !57
  store i1 %15, i1* %FPU_B, align 1, !mcsema_real_eip !57
  store i1 %16, i1* %FPU_C3, align 1, !mcsema_real_eip !57
  store i3 %17, i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  store i1 %18, i1* %FPU_C2, align 1, !mcsema_real_eip !57
  store i1 %19, i1* %FPU_C1, align 1, !mcsema_real_eip !57
  store i1 %20, i1* %FPU_C0, align 1, !mcsema_real_eip !57
  store i1 %21, i1* %FPU_ES, align 1, !mcsema_real_eip !57
  store i1 %22, i1* %FPU_SF, align 1, !mcsema_real_eip !57
  store i1 %23, i1* %FPU_PE, align 1, !mcsema_real_eip !57
  store i1 %24, i1* %FPU_UE, align 1, !mcsema_real_eip !57
  store i1 %25, i1* %FPU_OE, align 1, !mcsema_real_eip !57
  store i1 %26, i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  store i1 %27, i1* %FPU_DE, align 1, !mcsema_real_eip !57
  store i1 %28, i1* %FPU_IE, align 1, !mcsema_real_eip !57
  store i1 %29, i1* %FPU_X, align 1, !mcsema_real_eip !57
  store i2 %30, i2* %FPU_RC, align 1, !mcsema_real_eip !57
  store i2 %31, i2* %FPU_PC, align 1, !mcsema_real_eip !57
  store i1 %32, i1* %FPU_PM, align 1, !mcsema_real_eip !57
  store i1 %33, i1* %FPU_UM, align 1, !mcsema_real_eip !57
  store i1 %34, i1* %FPU_OM, align 1, !mcsema_real_eip !57
  store i1 %35, i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  store i1 %36, i1* %FPU_DM, align 1, !mcsema_real_eip !57
  store i1 %37, i1* %FPU_IM, align 1, !mcsema_real_eip !57
  %_ptr_to_int_315 = ptrtoint i64* %40 to i64
  %_ptr_bt_317 = bitcast i64* %40 to i8*
  %_offset_above_rbp_318 = sub i64 %_ptr_to_int_315, %_local_end_to_int_
  %_pot_address_in_parent_stack_319 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_318
  %_cond1_320 = icmp ugt i8* %_ptr_bt_317, %_local_stack_end_ptr_
  %_cond2_1_321 = icmp ugt i8* %_ptr_bt_317, %_parent_stack_end_ptr_
  %_cond2_2_322 = icmp ult i8* %_ptr_bt_317, %_parent_stack_start_ptr_
  %_cond2_323 = or i1 %_cond2_1_321, %_cond2_2_322
  %_cond4_324 = icmp ule i8* %_pot_address_in_parent_stack_319, %_parent_stack_end_ptr_
  %_cond1_n_cond2_325 = and i1 %_cond1_320, %_cond2_323
  %_cond1_n_cond2_cond3_326 = and i1 %_cond1_n_cond2_325, %_cond4_324
  br i1 %_cond1_n_cond2_cond3_326, label %208, label %209

; <label>:208:                                    ; preds = %205
  %_address_in_parent_stack_bt_328 = bitcast i8* %_pot_address_in_parent_stack_319 to i64*
  br label %209

; <label>:209:                                    ; preds = %205, %208
  %210 = phi i64* [ %40, %205 ], [ %_address_in_parent_stack_bt_328, %208 ]
  %_new_load_329 = load i64, i64* %210
  store i64 %_new_load_329, i64* %39, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !57
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !57
  store i11 %48, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !57
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !57
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !57
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !57
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !57
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !57
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !57
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !57
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !57
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !57
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !57
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !57
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !57
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !57
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !57
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !57
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !57
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !57
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !57
  ret void, !mcsema_real_eip !57
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 4196432}
!3 = !{i64 4196448}
!4 = !{i64 4196450}
!5 = !{i64 4196455}
!6 = !{i64 4196457}
!7 = !{i64 4196460}
!8 = !{i64 4196464}
!9 = !{i64 4196465}
!10 = !{i64 4196112}
!11 = !{i64 4196113}
!12 = !{i64 4196115}
!13 = !{i64 4196119}
!14 = !{i64 4196130}
!15 = !{i64 4196140}
!16 = !{i64 4196192}
!17 = !{i64 4196203}
!18 = !{i64 4196213}
!19 = !{i64 4196230}
!20 = !{i64 4196235}
!21 = !{i64 4196237}
!22 = !{i64 4196243}
!23 = !{i64 4196245}
!24 = !{i64 4196253}
!25 = !{i64 4196256}
!26 = !{i64 4196259}
!27 = !{i64 4196261}
!28 = !{i64 4196276}
!29 = !{i64 4196270}
!30 = !{i64 4196274}
!31 = !{i64 4196283}
!32 = !{i64 4196304}
!33 = !{i64 4196320}
!34 = !{i64 4196322}
!35 = !{i64 4196324}
!36 = !{i64 4196326}
!37 = !{i64 4196329}
!38 = !{i64 4196331}
!39 = !{i64 4196342}
!40 = !{i64 4196344}
!41 = !{i64 4196346}
!42 = !{i64 4196348}
!43 = !{i64 4196350}
!44 = !{i64 4196353}
!45 = !{i64 4196355}
!46 = !{i64 4196365}
!47 = !{i64 4196372}
!48 = !{i64 4196374}
!49 = !{i64 4196380}
!50 = !{i64 4196387}
!51 = !{i64 4196392}
!52 = !{i64 4196395}
!53 = !{i64 4196398}
!54 = !{i64 4196412}
!55 = !{i64 4196413}
!56 = !{i64 4196415}
!57 = !{i64 4195600}
