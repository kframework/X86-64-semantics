; ModuleID = 'Output/test_5.clang.trans.bc'
source_filename = "Output/test_5.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 28
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 28
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
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  store i64 %5, i64* %_allin_new_bt_2, !mcsema_real_eip !3
  %_new_gep_4 = getelementptr i8, i8* %_new_gep_, i64 -12
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %69 = trunc i64 %4 to i32, !mcsema_real_eip !4
  %70 = bitcast i64* %_allin_new_bt_5 to i32*
  store i32 %69, i32* %70, !mcsema_real_eip !4
  %_new_gep_7 = getelementptr i8, i8* %_new_gep_, i64 -16
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %71 = bitcast i64* %_allin_new_bt_8 to i32*
  store i32 0, i32* %71, !mcsema_real_eip !5
  %_new_gep_10 = getelementptr i8, i8* %_new_gep_, i64 -20
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %72 = bitcast i64* %_allin_new_bt_11 to i32*
  store i32 0, i32* %72, !mcsema_real_eip !6
  br label %block_0x19, !mcsema_real_eip !7

block_0x19:                                       ; preds = %block_0x25, %entry
  %RSI_val.0 = phi i64 [ %4, %entry ], [ %103, %block_0x25 ]
  %RDX_val.0 = phi i64 [ %3, %entry ], [ %99, %block_0x25 ]
  %RCX_val.0 = phi i64 [ %2, %entry ], [ %93, %block_0x25 ]
  %_load_rbp_ptr_12 = load i8*, i8** %_RBP_ptr_
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -20
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %73 = bitcast i64* %_allin_new_bt_14 to i32*
  %74 = load i32, i32* %73, !mcsema_real_eip !7
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -12
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %75 = bitcast i64* %_allin_new_bt_17 to i32*
  %76 = load i32, i32* %75, !mcsema_real_eip !8
  %77 = sub i32 %74, %76, !mcsema_real_eip !8
  %78 = xor i32 %77, %74, !mcsema_real_eip !8
  %79 = xor i32 %78, %76, !mcsema_real_eip !8
  %80 = and i32 %79, 16, !mcsema_real_eip !8
  %81 = icmp ne i32 %80, 0, !mcsema_real_eip !8
  %82 = trunc i32 %77 to i8, !mcsema_real_eip !8
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !8
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = icmp eq i32 %74, %76
  %87 = icmp slt i32 %77, 0
  %88 = icmp ult i32 %74, %76, !mcsema_real_eip !8
  %89 = xor i32 %76, %74, !mcsema_real_eip !8
  %90 = and i32 %78, %89, !mcsema_real_eip !8
  %91 = icmp slt i32 %90, 0
  %tmp = xor i1 %87, %91
  br i1 %tmp, label %block_0x25, label %block_0x48, !mcsema_real_eip !9

block_0x25:                                       ; preds = %block_0x19
  %92 = sext i32 %74 to i64, !mcsema_real_eip !10
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -8
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %93 = load i64, i64* %_allin_new_bt_23, !mcsema_real_eip !11
  %94 = shl nsw i64 %92, 2
  %95 = add i64 %93, %94, !mcsema_real_eip !12
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !12
  %97 = bitcast i64* %96 to i32*
  %98 = load i32, i32* %97, !mcsema_real_eip !12
  %99 = zext i32 %98 to i64, !mcsema_real_eip !12
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -16
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %100 = bitcast i64* %_allin_new_bt_26 to i32*
  %101 = load i32, i32* %100, !mcsema_real_eip !13
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %98, i32 %101)
  %102 = extractvalue { i32, i1 } %uadd, 0
  %103 = zext i32 %102 to i64, !mcsema_real_eip !14
  store i32 %102, i32* %100, !mcsema_real_eip !15
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -20
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %104 = bitcast i64* %_allin_new_bt_32 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !16
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %105, i32 1)
  %106 = extractvalue { i32, i1 } %uadd71, 0
  store i32 %106, i32* %104, !mcsema_real_eip !17
  br label %block_0x19, !mcsema_real_eip !18

block_0x48:                                       ; preds = %block_0x19
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -16
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %107 = bitcast i64* %_allin_new_bt_37 to i32*
  %108 = load i32, i32* %107, !mcsema_real_eip !19
  %109 = zext i32 %108 to i64, !mcsema_real_eip !19
  %_load_rsp_ptr_38 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_39 = bitcast i8* %_load_rsp_ptr_38 to i64*
  %110 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !20
  %_new_int2ptr_ = inttoptr i64 %110 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_40 = getelementptr i8, i8* %_load_rsp_ptr_38, i64 16
  store volatile i8* %_new_gep_40, i8** %_RSP_ptr_
  store i64 %109, i64* %RAX, !mcsema_real_eip !21
  store i64 %1, i64* %RBX, !mcsema_real_eip !21
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !21
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !21
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !21
  store i64 %5, i64* %RDI, !mcsema_real_eip !21
  %_new_ptr2int_42 = ptrtoint i8* %_new_gep_40 to i64
  store volatile i64 %_new_ptr2int_42, i64* %RSP
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_44 = ptrtoint i8* %_load_rbp_ptr_43 to i64
  store volatile i64 %_new_ptr2int_44, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !21
  store i64 %7, i64* %R9, !mcsema_real_eip !21
  store i64 %8, i64* %R10, !mcsema_real_eip !21
  store i64 %9, i64* %R11, !mcsema_real_eip !21
  store i64 %10, i64* %R12, !mcsema_real_eip !21
  store i64 %11, i64* %R13, !mcsema_real_eip !21
  store i64 %12, i64* %R14, !mcsema_real_eip !21
  store i64 %13, i64* %R15, !mcsema_real_eip !21
  store i64 %14, i64* %RIP, !mcsema_real_eip !21
  store i1 %88, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %81, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %111 = load i64, i64* %44, align 4
  store i64 %111, i64* %43, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !21
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 4}
!4 = !{i64 8}
!5 = !{i64 11}
!6 = !{i64 18}
!7 = !{i64 25}
!8 = !{i64 28}
!9 = !{i64 31}
!10 = !{i64 37}
!11 = !{i64 41}
!12 = !{i64 45}
!13 = !{i64 48}
!14 = !{i64 51}
!15 = !{i64 53}
!16 = !{i64 56}
!17 = !{i64 64}
!18 = !{i64 67}
!19 = !{i64 72}
!20 = !{i64 75}
!21 = !{i64 76}
