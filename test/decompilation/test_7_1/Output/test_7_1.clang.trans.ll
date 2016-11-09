; ModuleID = 'Output/test_7_1.clang.trans.bc'
source_filename = "Output/test_7_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_30(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
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
  %2 = load i64, i64* %R11, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %3 = load i64, i64* %R12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %4 = load i64, i64* %R13, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %5 = load i64, i64* %R14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %6 = load i64, i64* %R15, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %7 = load i64, i64* %RIP, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %8 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %10 = bitcast x86_fp80* %9 to i8*, !mcsema_real_eip !2
  %11 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %10, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %12 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %13 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %14 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %27 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %28 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %35 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %36 = bitcast i8* %35 to i64*
  %37 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %38 = load i64, i64* %36, align 4
  store i64 %38, i64* %37, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %39 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %40 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %41 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %42 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %43 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %44 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %60 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %61 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -88
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %62 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %62, !mcsema_real_eip !3
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -52
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %63 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 0, i32* %63, !mcsema_real_eip !4
  br label %block_0x46, !mcsema_real_eip !5

block_0x46:                                       ; preds = %block_0x53, %entry
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -52
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %64 = bitcast i64* %_allin_new_bt_18 to i32*
  %65 = load i32, i32* %64, !mcsema_real_eip !5
  %66 = add i32 %65, -10
  %67 = xor i32 %66, %65, !mcsema_real_eip !5
  %68 = and i32 %67, 16, !mcsema_real_eip !5
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !5
  %70 = trunc i32 %66 to i8, !mcsema_real_eip !5
  %71 = tail call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !5
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  %74 = icmp eq i32 %66, 0, !mcsema_real_eip !5
  %75 = icmp slt i32 %66, 0
  %76 = icmp ult i32 %65, 10, !mcsema_real_eip !5
  %77 = and i32 %67, %65, !mcsema_real_eip !5
  %78 = icmp slt i32 %77, 0
  %tmp = xor i1 %75, %78
  br i1 %tmp, label %block_0x53, label %block_0x6f, !mcsema_real_eip !6

block_0x53:                                       ; preds = %block_0x46
  %79 = sext i32 %65 to i64, !mcsema_real_eip !7
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -48
  %80 = shl nsw i64 %79, 2
  %_new_gep_24 = getelementptr i8, i8* %_new_gep_23, i64 %80
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %81 = bitcast i64* %_allin_new_bt_25 to i32*
  store i32 21, i32* %81, !mcsema_real_eip !8
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -52
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %82 = bitcast i64* %_allin_new_bt_28 to i32*
  %83 = load i32, i32* %82, !mcsema_real_eip !9
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 1)
  %84 = extractvalue { i32, i1 } %uadd, 0
  store i32 %84, i32* %82, !mcsema_real_eip !10
  br label %block_0x46, !mcsema_real_eip !11

block_0x6f:                                       ; preds = %block_0x46
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -48
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %85 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !12
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -64
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  store i64 %85, i64* %_allin_new_bt_37, !mcsema_real_eip !13
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -64
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %86 = load i64, i64* %_allin_new_bt_40, !mcsema_real_eip !14
  %_load_rsp_ptr_41 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_42 = bitcast i8* %_load_rsp_ptr_41 to i64*
  store i64 %86, i64* %_allin_new_bt_42, !mcsema_real_eip !15
  %_load_rsp_ptr_43 = load i8*, i8** %_RSP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rsp_ptr_43, i64 -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_45, !mcsema_real_eip !16
  store volatile i8* %_new_gep_44, i8** %_RSP_ptr_
  store i64 10, i64* %RAX, !mcsema_real_eip !16
  store i64 %1, i64* %RBX, !mcsema_real_eip !16
  store i64 10, i64* %RCX, !mcsema_real_eip !16
  store i64 10, i64* %RDX, !mcsema_real_eip !16
  store i64 10, i64* %RSI, !mcsema_real_eip !16
  store i64 10, i64* %RDI, !mcsema_real_eip !16
  %_new_ptr2int_47 = ptrtoint i8* %_new_gep_44 to i64
  store volatile i64 %_new_ptr2int_47, i64* %RSP
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_49 = ptrtoint i8* %_load_rbp_ptr_48 to i64
  store volatile i64 %_new_ptr2int_49, i64* %RBP
  store i64 10, i64* %R8, !mcsema_real_eip !16
  store i64 10, i64* %R9, !mcsema_real_eip !16
  store i64 %86, i64* %R10, !mcsema_real_eip !16
  store i64 %2, i64* %R11, !mcsema_real_eip !16
  store i64 %3, i64* %R12, !mcsema_real_eip !16
  store i64 %4, i64* %R13, !mcsema_real_eip !16
  store i64 %5, i64* %R14, !mcsema_real_eip !16
  store i64 %6, i64* %R15, !mcsema_real_eip !16
  store i64 %7, i64* %RIP, !mcsema_real_eip !16
  store i1 %76, i1* %CF, align 1, !mcsema_real_eip !16
  store i1 %73, i1* %PF, align 1, !mcsema_real_eip !16
  store i1 %69, i1* %AF, align 1, !mcsema_real_eip !16
  store i1 %74, i1* %ZF, align 1, !mcsema_real_eip !16
  store i1 %75, i1* %SF, align 1, !mcsema_real_eip !16
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !16
  store i1 %8, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  store i1 %12, i1* %FPU_B, align 1, !mcsema_real_eip !16
  store i1 %13, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  store i3 %14, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  store i1 %15, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  store i1 %16, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  store i1 %17, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  store i1 %18, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  store i1 %19, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  store i1 %20, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  store i1 %21, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  store i1 %22, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  store i1 %25, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  store i1 %26, i1* %FPU_X, align 1, !mcsema_real_eip !16
  store i2 %27, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  store i2 %28, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  store i1 %30, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %87 = load i64, i64* %37, align 4
  store i64 %87, i64* %36, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  store i64 %40, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  store i16 %41, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  store i64 %42, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  store i11 %43, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !16
  store i128 %44, i128* %XMM0, align 1, !mcsema_real_eip !16
  store i128 %45, i128* %XMM1, align 1, !mcsema_real_eip !16
  store i128 %46, i128* %XMM2, align 1, !mcsema_real_eip !16
  store i128 %47, i128* %XMM3, align 1, !mcsema_real_eip !16
  store i128 %48, i128* %XMM4, align 1, !mcsema_real_eip !16
  store i128 %49, i128* %XMM5, align 1, !mcsema_real_eip !16
  store i128 %50, i128* %XMM6, align 1, !mcsema_real_eip !16
  store i128 %51, i128* %XMM7, align 1, !mcsema_real_eip !16
  store i128 %52, i128* %XMM8, align 1, !mcsema_real_eip !16
  store i128 %53, i128* %XMM9, align 1, !mcsema_real_eip !16
  store i128 %54, i128* %XMM10, align 1, !mcsema_real_eip !16
  store i128 %55, i128* %XMM11, align 1, !mcsema_real_eip !16
  store i128 %56, i128* %XMM12, align 1, !mcsema_real_eip !16
  store i128 %57, i128* %XMM13, align 1, !mcsema_real_eip !16
  store i128 %58, i128* %XMM14, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM15, align 1, !mcsema_real_eip !16
  store i64 %60, i64* %STACK_BASE, align 1, !mcsema_real_eip !16
  store i64 %61, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !16
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_58)
  %88 = load i64, i64* %RAX, !mcsema_real_eip !16
  %89 = load i64, i64* %RBX, !mcsema_real_eip !16
  %90 = load i64, i64* %RCX, !mcsema_real_eip !16
  %91 = load i64, i64* %RDX, !mcsema_real_eip !16
  %92 = load i64, i64* %RSI, !mcsema_real_eip !16
  %93 = load i64, i64* %RDI, !mcsema_real_eip !16
  %94 = load i64, i64* %R8, !mcsema_real_eip !16
  %95 = load i64, i64* %R9, !mcsema_real_eip !16
  %96 = load i64, i64* %R10, !mcsema_real_eip !16
  %97 = load i64, i64* %R11, !mcsema_real_eip !16
  %98 = load i64, i64* %R12, !mcsema_real_eip !16
  %99 = load i64, i64* %R13, !mcsema_real_eip !16
  %100 = load i64, i64* %R14, !mcsema_real_eip !16
  %101 = load i64, i64* %R15, !mcsema_real_eip !16
  %102 = load i64, i64* %RIP, !mcsema_real_eip !16
  %103 = load i1, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %10, i32 128, i32 4, i1 false), !mcsema_real_eip !16
  %104 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %105 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %106 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %107 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %108 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %109 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %110 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %111 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %112 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %113 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %114 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %115 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %116 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %117 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %118 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %119 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %120 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %121 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %122 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %123 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %124 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %125 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %126 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %127 = load i64, i64* %36, align 4
  store i64 %127, i64* %37, align 4
  %128 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %129 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !16
  %130 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %131 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !16
  %132 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !16
  %133 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !16
  %134 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !16
  %135 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !16
  %136 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !16
  %137 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !16
  %138 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !16
  %139 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !16
  %140 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !16
  %141 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !16
  %142 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !16
  %143 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !16
  %144 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !16
  %145 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !16
  %146 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !16
  %147 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !16
  %148 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !16
  %149 = load i64, i64* %STACK_BASE, !mcsema_real_eip !16
  %150 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !16
  %_load_rsp_ptr_50 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_51 = ptrtoint i8* %_load_rsp_ptr_50 to i64
  %uadd211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_51, i64 80)
  %151 = extractvalue { i64, i1 } %uadd211, 0
  %152 = xor i64 %151, %_new_ptr2int_51, !mcsema_real_eip !17
  %153 = and i64 %152, 16
  %154 = icmp eq i64 %153, 0
  %155 = icmp slt i64 %151, 0
  %156 = icmp eq i64 %151, 0, !mcsema_real_eip !17
  %157 = xor i64 %_new_ptr2int_51, -9223372036854775808, !mcsema_real_eip !17
  %158 = and i64 %152, %157, !mcsema_real_eip !17
  %159 = icmp slt i64 %158, 0
  %160 = trunc i64 %151 to i8, !mcsema_real_eip !17
  %161 = tail call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !17
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  %164 = extractvalue { i64, i1 } %uadd211, 1
  %_new_int2ptr_ = inttoptr i64 %151 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %165 = inttoptr i64 %151 to i64*, !mcsema_real_eip !18
  %166 = load i64, i64* %165, !mcsema_real_eip !18
  %_new_int2ptr_52 = inttoptr i64 %166 to i8*
  store volatile i8* %_new_int2ptr_52, i8** %_RBP_ptr_
  %167 = add i64 %151, 16, !mcsema_real_eip !19
  %_new_int2ptr_53 = inttoptr i64 %167 to i8*
  store volatile i8* %_new_int2ptr_53, i8** %_RSP_ptr_
  store i64 %88, i64* %RAX, !mcsema_real_eip !19
  store i64 %89, i64* %RBX, !mcsema_real_eip !19
  store i64 %90, i64* %RCX, !mcsema_real_eip !19
  store i64 %91, i64* %RDX, !mcsema_real_eip !19
  store i64 %92, i64* %RSI, !mcsema_real_eip !19
  store i64 %93, i64* %RDI, !mcsema_real_eip !19
  store volatile i64 %167, i64* %RSP
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_57 = ptrtoint i8* %_load_rbp_ptr_56 to i64
  store volatile i64 %_new_ptr2int_57, i64* %RBP
  store i64 %94, i64* %R8, !mcsema_real_eip !19
  store i64 %95, i64* %R9, !mcsema_real_eip !19
  store i64 %96, i64* %R10, !mcsema_real_eip !19
  store i64 %97, i64* %R11, !mcsema_real_eip !19
  store i64 %98, i64* %R12, !mcsema_real_eip !19
  store i64 %99, i64* %R13, !mcsema_real_eip !19
  store i64 %100, i64* %R14, !mcsema_real_eip !19
  store i64 %101, i64* %R15, !mcsema_real_eip !19
  store i64 %102, i64* %RIP, !mcsema_real_eip !19
  store i1 %164, i1* %CF, align 1, !mcsema_real_eip !19
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !19
  store i1 %154, i1* %AF, align 1, !mcsema_real_eip !19
  store i1 %156, i1* %ZF, align 1, !mcsema_real_eip !19
  store i1 %155, i1* %SF, align 1, !mcsema_real_eip !19
  store i1 %159, i1* %OF, align 1, !mcsema_real_eip !19
  store i1 %103, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  store i1 %104, i1* %FPU_B, align 1, !mcsema_real_eip !19
  store i1 %105, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  store i3 %106, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  store i1 %107, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  store i1 %108, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  store i1 %109, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  store i1 %110, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  store i1 %111, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  store i1 %112, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  store i1 %113, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  store i1 %114, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  store i1 %115, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  store i1 %116, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  store i1 %117, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  store i1 %118, i1* %FPU_X, align 1, !mcsema_real_eip !19
  store i2 %119, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  store i2 %120, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  store i1 %121, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  store i1 %122, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  store i1 %123, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  store i1 %124, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  store i1 %125, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  store i1 %126, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %168 = load i64, i64* %37, align 4
  store i64 %168, i64* %36, align 4
  store i16 %128, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  store i64 %129, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  store i16 %130, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  store i64 %131, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  store i11 %132, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !19
  store i128 %133, i128* %XMM0, align 1, !mcsema_real_eip !19
  store i128 %134, i128* %XMM1, align 1, !mcsema_real_eip !19
  store i128 %135, i128* %XMM2, align 1, !mcsema_real_eip !19
  store i128 %136, i128* %XMM3, align 1, !mcsema_real_eip !19
  store i128 %137, i128* %XMM4, align 1, !mcsema_real_eip !19
  store i128 %138, i128* %XMM5, align 1, !mcsema_real_eip !19
  store i128 %139, i128* %XMM6, align 1, !mcsema_real_eip !19
  store i128 %140, i128* %XMM7, align 1, !mcsema_real_eip !19
  store i128 %141, i128* %XMM8, align 1, !mcsema_real_eip !19
  store i128 %142, i128* %XMM9, align 1, !mcsema_real_eip !19
  store i128 %143, i128* %XMM10, align 1, !mcsema_real_eip !19
  store i128 %144, i128* %XMM11, align 1, !mcsema_real_eip !19
  store i128 %145, i128* %XMM12, align 1, !mcsema_real_eip !19
  store i128 %146, i128* %XMM13, align 1, !mcsema_real_eip !19
  store i128 %147, i128* %XMM14, align 1, !mcsema_real_eip !19
  store i128 %148, i128* %XMM15, align 1, !mcsema_real_eip !19
  store i64 %149, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  store i64 %150, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !20
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !20
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !20
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !20
  %1 = load i64, i64* %RBX, !mcsema_real_eip !20
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !20
  %2 = load i64, i64* %RCX, !mcsema_real_eip !20
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !20
  %3 = load i64, i64* %RDX, !mcsema_real_eip !20
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !20
  %4 = load i64, i64* %RSI, !mcsema_real_eip !20
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !20
  %5 = load i64, i64* %RDI, !mcsema_real_eip !20
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !20
  %6 = load i64, i64* %RSP, !mcsema_real_eip !20
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !20
  %7 = load i64, i64* %RBP, !mcsema_real_eip !20
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !20
  %8 = load i64, i64* %R8, !mcsema_real_eip !20
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !20
  %9 = load i64, i64* %R9, !mcsema_real_eip !20
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !20
  %10 = load i64, i64* %R10, !mcsema_real_eip !20
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !20
  %11 = load i64, i64* %R11, !mcsema_real_eip !20
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !20
  %12 = load i64, i64* %R12, !mcsema_real_eip !20
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !20
  %13 = load i64, i64* %R13, !mcsema_real_eip !20
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !20
  %14 = load i64, i64* %R14, !mcsema_real_eip !20
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !20
  %15 = load i64, i64* %R15, !mcsema_real_eip !20
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !20
  %16 = load i64, i64* %RIP, !mcsema_real_eip !20
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !20
  %17 = load i1, i1* %CF, align 1, !mcsema_real_eip !20
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !20
  %18 = load i1, i1* %PF, align 1, !mcsema_real_eip !20
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !20
  %19 = load i1, i1* %AF, align 1, !mcsema_real_eip !20
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !20
  %20 = load i1, i1* %ZF, align 1, !mcsema_real_eip !20
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !20
  %21 = load i1, i1* %SF, align 1, !mcsema_real_eip !20
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !20
  %22 = load i1, i1* %OF, align 1, !mcsema_real_eip !20
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !20
  %23 = load i1, i1* %DF, align 1, !mcsema_real_eip !20
  %24 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !20
  %25 = bitcast x86_fp80* %24 to i8*, !mcsema_real_eip !20
  %26 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %25, i32 128, i32 4, i1 false), !mcsema_real_eip !20
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !20
  %27 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !20
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !20
  %28 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !20
  %29 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !20
  %30 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !20
  %31 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !20
  %32 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !20
  %33 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !20
  %34 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !20
  %35 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !20
  %36 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !20
  %37 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !20
  %38 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !20
  %39 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !20
  %40 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !20
  %41 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !20
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !20
  %42 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !20
  %43 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !20
  %44 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !20
  %45 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !20
  %46 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !20
  %47 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !20
  %48 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !20
  %49 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %50 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !20
  %51 = bitcast i8* %50 to i64*
  %52 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %53 = load i64, i64* %51, align 4
  store i64 %53, i64* %52, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !20
  %54 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !20
  %55 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !20
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !20
  %56 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !20
  %57 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !20
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !20
  %58 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !20
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !20
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !20
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !20
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !20
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !20
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !20
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !20
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !20
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !20
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !20
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !20
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !20
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !20
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !20
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !20
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !20
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !20
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !20
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !20
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !20
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !20
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !20
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !20
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !20
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !20
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !20
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !20
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !20
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !20
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !20
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !20
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !20
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !20
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !20
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !20
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !20
  %77 = add i64 %6, -8
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !20
  store i64 %7, i64* %78, !mcsema_real_eip !20
  %79 = add i64 %6, 8, !mcsema_real_eip !21
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !21
  %81 = load i64, i64* %80, !mcsema_real_eip !21
  %82 = add i64 %6, -12, !mcsema_real_eip !22
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !22
  %84 = trunc i64 %5 to i32, !mcsema_real_eip !22
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !22
  %86 = add i64 %77, -8, !mcsema_real_eip !23
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !23
  %88 = trunc i64 %4 to i32, !mcsema_real_eip !23
  %89 = bitcast i64* %87 to i32*
  store i32 %88, i32* %89, !mcsema_real_eip !23
  %90 = add i64 %77, -12, !mcsema_real_eip !24
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !24
  %92 = trunc i64 %3 to i32, !mcsema_real_eip !24
  %93 = bitcast i64* %91 to i32*
  store i32 %92, i32* %93, !mcsema_real_eip !24
  %94 = add i64 %77, -16, !mcsema_real_eip !25
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !25
  %96 = trunc i64 %2 to i32, !mcsema_real_eip !25
  %97 = bitcast i64* %95 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !25
  %98 = add i64 %77, -20, !mcsema_real_eip !26
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !26
  %100 = trunc i64 %8 to i32, !mcsema_real_eip !26
  %101 = bitcast i64* %99 to i32*
  store i32 %100, i32* %101, !mcsema_real_eip !26
  %102 = add i64 %77, -24, !mcsema_real_eip !27
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !27
  %104 = trunc i64 %9 to i32, !mcsema_real_eip !27
  %105 = bitcast i64* %103 to i32*
  store i32 %104, i32* %105, !mcsema_real_eip !27
  %106 = add i64 %77, -32, !mcsema_real_eip !28
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !28
  store i64 %81, i64* %107, !mcsema_real_eip !28
  %108 = inttoptr i64 %81 to i64*, !mcsema_real_eip !29
  %109 = bitcast i64* %108 to i32*
  %110 = load i32, i32* %109, !mcsema_real_eip !29
  %111 = zext i32 %110 to i64, !mcsema_real_eip !29
  %112 = add i64 %77, -36, !mcsema_real_eip !30
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !30
  %114 = bitcast i64* %113 to i32*
  store i32 %110, i32* %114, !mcsema_real_eip !30
  %115 = load i64, i64* %78, !mcsema_real_eip !31
  %116 = add i64 %77, 16, !mcsema_real_eip !32
  store i64 %111, i64* %RAX, !mcsema_real_eip !32
  store i64 %1, i64* %RBX, !mcsema_real_eip !32
  store i64 %111, i64* %RCX, !mcsema_real_eip !32
  store i64 %3, i64* %RDX, !mcsema_real_eip !32
  store i64 %4, i64* %RSI, !mcsema_real_eip !32
  store i64 %5, i64* %RDI, !mcsema_real_eip !32
  store i64 %116, i64* %RSP, !mcsema_real_eip !32
  store i64 %115, i64* %RBP, !mcsema_real_eip !32
  store i64 %8, i64* %R8, !mcsema_real_eip !32
  store i64 %9, i64* %R9, !mcsema_real_eip !32
  store i64 %10, i64* %R10, !mcsema_real_eip !32
  store i64 %11, i64* %R11, !mcsema_real_eip !32
  store i64 %12, i64* %R12, !mcsema_real_eip !32
  store i64 %13, i64* %R13, !mcsema_real_eip !32
  store i64 %14, i64* %R14, !mcsema_real_eip !32
  store i64 %15, i64* %R15, !mcsema_real_eip !32
  store i64 %16, i64* %RIP, !mcsema_real_eip !32
  store i1 %17, i1* %CF, align 1, !mcsema_real_eip !32
  store i1 %18, i1* %PF, align 1, !mcsema_real_eip !32
  store i1 %19, i1* %AF, align 1, !mcsema_real_eip !32
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !32
  store i1 %21, i1* %SF, align 1, !mcsema_real_eip !32
  store i1 %22, i1* %OF, align 1, !mcsema_real_eip !32
  store i1 %23, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  store i1 %27, i1* %FPU_B, align 1, !mcsema_real_eip !32
  store i1 %28, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  store i3 %29, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  store i1 %30, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  store i1 %31, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  store i1 %32, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  store i1 %33, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  store i1 %34, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  store i1 %35, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  store i1 %36, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  store i1 %37, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  store i1 %38, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  store i1 %39, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  store i1 %40, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  store i1 %41, i1* %FPU_X, align 1, !mcsema_real_eip !32
  store i2 %42, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  store i2 %43, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  store i1 %44, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  store i1 %45, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  store i1 %46, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  store i1 %47, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  store i1 %48, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  store i1 %49, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %117 = load i64, i64* %52, align 4
  store i64 %117, i64* %51, align 4
  store i16 %54, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  store i64 %55, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  store i16 %56, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  store i64 %57, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  store i11 %58, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !32
  store i128 %59, i128* %XMM0, align 1, !mcsema_real_eip !32
  store i128 %60, i128* %XMM1, align 1, !mcsema_real_eip !32
  store i128 %61, i128* %XMM2, align 1, !mcsema_real_eip !32
  store i128 %62, i128* %XMM3, align 1, !mcsema_real_eip !32
  store i128 %63, i128* %XMM4, align 1, !mcsema_real_eip !32
  store i128 %64, i128* %XMM5, align 1, !mcsema_real_eip !32
  store i128 %65, i128* %XMM6, align 1, !mcsema_real_eip !32
  store i128 %66, i128* %XMM7, align 1, !mcsema_real_eip !32
  store i128 %67, i128* %XMM8, align 1, !mcsema_real_eip !32
  store i128 %68, i128* %XMM9, align 1, !mcsema_real_eip !32
  store i128 %69, i128* %XMM10, align 1, !mcsema_real_eip !32
  store i128 %70, i128* %XMM11, align 1, !mcsema_real_eip !32
  store i128 %71, i128* %XMM12, align 1, !mcsema_real_eip !32
  store i128 %72, i128* %XMM13, align 1, !mcsema_real_eip !32
  store i128 %73, i128* %XMM14, align 1, !mcsema_real_eip !32
  store i128 %74, i128* %XMM15, align 1, !mcsema_real_eip !32
  store i64 %75, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  store i64 %76, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_30(%struct.regs* %0)
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
  %_local_stack_start_ptr_ = alloca i8, i64 44
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 44
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !20
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !20
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !20
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !20
  %1 = load i64, i64* %RBX, !mcsema_real_eip !20
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !20
  %2 = load i64, i64* %RCX, !mcsema_real_eip !20
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !20
  %3 = load i64, i64* %RDX, !mcsema_real_eip !20
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !20
  %4 = load i64, i64* %RSI, !mcsema_real_eip !20
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !20
  %5 = load i64, i64* %RDI, !mcsema_real_eip !20
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !20
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !20
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !20
  %6 = load i64, i64* %R8, !mcsema_real_eip !20
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !20
  %7 = load i64, i64* %R9, !mcsema_real_eip !20
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !20
  %8 = load i64, i64* %R10, !mcsema_real_eip !20
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !20
  %9 = load i64, i64* %R11, !mcsema_real_eip !20
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !20
  %10 = load i64, i64* %R12, !mcsema_real_eip !20
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !20
  %11 = load i64, i64* %R13, !mcsema_real_eip !20
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !20
  %12 = load i64, i64* %R14, !mcsema_real_eip !20
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !20
  %13 = load i64, i64* %R15, !mcsema_real_eip !20
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !20
  %14 = load i64, i64* %RIP, !mcsema_real_eip !20
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !20
  %15 = load i1, i1* %CF, align 1, !mcsema_real_eip !20
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !20
  %16 = load i1, i1* %PF, align 1, !mcsema_real_eip !20
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !20
  %17 = load i1, i1* %AF, align 1, !mcsema_real_eip !20
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !20
  %18 = load i1, i1* %ZF, align 1, !mcsema_real_eip !20
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !20
  %19 = load i1, i1* %SF, align 1, !mcsema_real_eip !20
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !20
  %20 = load i1, i1* %OF, align 1, !mcsema_real_eip !20
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !20
  %21 = load i1, i1* %DF, align 1, !mcsema_real_eip !20
  %22 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !20
  %23 = bitcast x86_fp80* %22 to i8*, !mcsema_real_eip !20
  %24 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %23, i32 128, i32 4, i1 false), !mcsema_real_eip !20
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !20
  %25 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !20
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !20
  %26 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !20
  %27 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !20
  %28 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !20
  %29 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !20
  %30 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !20
  %31 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !20
  %32 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !20
  %33 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !20
  %34 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !20
  %35 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !20
  %36 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !20
  %37 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !20
  %38 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !20
  %39 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !20
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !20
  %40 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !20
  %41 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !20
  %42 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !20
  %43 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !20
  %44 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !20
  %45 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !20
  %46 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !20
  %47 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %48 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !20
  %49 = bitcast i8* %48 to i64*
  %50 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_ptr_to_int_ = ptrtoint i64* %49 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %48, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %48, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %48, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %51, label %52

; <label>:51:                                     ; preds = %entry
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %52

; <label>:52:                                     ; preds = %entry, %51
  %53 = phi i64* [ %49, %entry ], [ %_address_in_parent_stack_bt_, %51 ]
  %_new_load_ = load i64, i64* %53
  store i64 %_new_load_, i64* %50, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !20
  %54 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !20
  %55 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !20
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !20
  %56 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !20
  %57 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !20
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !20
  %58 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !20
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !20
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !20
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !20
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !20
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !20
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !20
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !20
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !20
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !20
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !20
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !20
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !20
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !20
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !20
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !20
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !20
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !20
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !20
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !20
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !20
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !20
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !20
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !20
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !20
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !20
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !20
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !20
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !20
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !20
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !20
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !20
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !20
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !20
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !20
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !20
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !20
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 8
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %_ptr_to_int_39 = ptrtoint i64* %_allin_new_bt_2 to i64
  %_offset_above_rbp_42 = sub i64 %_ptr_to_int_39, %_local_end_to_int_
  %_pot_address_in_parent_stack_43 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_42
  %_cond1_44 = icmp ugt i8* %_new_gep_1, %_local_stack_end_ptr_
  %_cond2_1_45 = icmp ugt i8* %_new_gep_1, %_parent_stack_end_ptr_
  %_cond2_2_46 = icmp ult i8* %_new_gep_1, %_parent_stack_start_ptr_
  %_cond2_47 = or i1 %_cond2_1_45, %_cond2_2_46
  %_cond4_48 = icmp ule i8* %_pot_address_in_parent_stack_43, %_parent_stack_end_ptr_
  %_cond1_n_cond2_49 = and i1 %_cond1_44, %_cond2_47
  %_cond1_n_cond2_cond3_50 = and i1 %_cond1_n_cond2_49, %_cond4_48
  br i1 %_cond1_n_cond2_cond3_50, label %77, label %78

; <label>:77:                                     ; preds = %52
  %_address_in_parent_stack_bt_52 = bitcast i8* %_pot_address_in_parent_stack_43 to i64*
  br label %78

; <label>:78:                                     ; preds = %52, %77
  %79 = phi i64* [ %_allin_new_bt_2, %52 ], [ %_address_in_parent_stack_bt_52, %77 ]
  %_new_load_53 = load i64, i64* %79
  %_new_gep_3 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -12
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %80 = trunc i64 %5 to i32, !mcsema_real_eip !22
  %81 = bitcast i64* %_allin_new_bt_4 to i32*
  store i32 %80, i32* %81, !mcsema_real_eip !22
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %82 = trunc i64 %4 to i32, !mcsema_real_eip !23
  %83 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 %82, i32* %83, !mcsema_real_eip !23
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_, i64 -12
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %84 = trunc i64 %3 to i32, !mcsema_real_eip !24
  %85 = bitcast i64* %_allin_new_bt_10 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !24
  %_new_gep_12 = getelementptr i8, i8* %_new_gep_, i64 -16
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %86 = trunc i64 %2 to i32, !mcsema_real_eip !25
  %87 = bitcast i64* %_allin_new_bt_13 to i32*
  store i32 %86, i32* %87, !mcsema_real_eip !25
  %_new_gep_15 = getelementptr i8, i8* %_new_gep_, i64 -20
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %88 = trunc i64 %6 to i32, !mcsema_real_eip !26
  %89 = bitcast i64* %_allin_new_bt_16 to i32*
  store i32 %88, i32* %89, !mcsema_real_eip !26
  %_new_gep_18 = getelementptr i8, i8* %_new_gep_, i64 -24
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %90 = trunc i64 %7 to i32, !mcsema_real_eip !27
  %91 = bitcast i64* %_allin_new_bt_19 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !27
  %_new_gep_21 = getelementptr i8, i8* %_new_gep_, i64 -32
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  store i64 %_new_load_53, i64* %_allin_new_bt_22, !mcsema_real_eip !28
  %_ptr_to_int_54 = ptrtoint i64* %_allin_new_bt_22 to i64
  %_offset_above_rbp_57 = sub i64 %_ptr_to_int_54, %_local_end_to_int_
  %_pot_address_in_parent_stack_58 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_57
  %_cond1_59 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_60 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_61 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_62 = or i1 %_cond2_1_60, %_cond2_2_61
  %_cond4_63 = icmp ule i8* %_pot_address_in_parent_stack_58, %_parent_stack_end_ptr_
  %_cond1_n_cond2_64 = and i1 %_cond1_59, %_cond2_62
  %_cond1_n_cond2_cond3_65 = and i1 %_cond1_n_cond2_64, %_cond4_63
  br i1 %_cond1_n_cond2_cond3_65, label %92, label %93

; <label>:92:                                     ; preds = %78
  %_address_in_parent_stack_bt_67 = bitcast i8* %_pot_address_in_parent_stack_58 to i64*
  br label %93

; <label>:93:                                     ; preds = %78, %92
  %94 = phi i64* [ %_allin_new_bt_22, %78 ], [ %_address_in_parent_stack_bt_67, %92 ]
  %_new_load_68 = load i64, i64* %94
  %95 = inttoptr i64 %_new_load_68 to i64*, !mcsema_real_eip !29
  %96 = bitcast i64* %95 to i32*
  %_ptr_to_int_69 = ptrtoint i32* %96 to i64
  %_ptr_bt_71 = bitcast i32* %96 to i8*
  %_offset_above_rbp_72 = sub i64 %_ptr_to_int_69, %_local_end_to_int_
  %_pot_address_in_parent_stack_73 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_72
  %_cond1_74 = icmp ugt i8* %_ptr_bt_71, %_local_stack_end_ptr_
  %_cond2_1_75 = icmp ugt i8* %_ptr_bt_71, %_parent_stack_end_ptr_
  %_cond2_2_76 = icmp ult i8* %_ptr_bt_71, %_parent_stack_start_ptr_
  %_cond2_77 = or i1 %_cond2_1_75, %_cond2_2_76
  %_cond4_78 = icmp ule i8* %_pot_address_in_parent_stack_73, %_parent_stack_end_ptr_
  %_cond1_n_cond2_79 = and i1 %_cond1_74, %_cond2_77
  %_cond1_n_cond2_cond3_80 = and i1 %_cond1_n_cond2_79, %_cond4_78
  br i1 %_cond1_n_cond2_cond3_80, label %97, label %98

; <label>:97:                                     ; preds = %93
  %_address_in_parent_stack_bt_82 = bitcast i8* %_pot_address_in_parent_stack_73 to i32*
  br label %98

; <label>:98:                                     ; preds = %93, %97
  %99 = phi i32* [ %96, %93 ], [ %_address_in_parent_stack_bt_82, %97 ]
  %_new_load_83 = load i32, i32* %99
  %100 = zext i32 %_new_load_83 to i64, !mcsema_real_eip !29
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_, i64 -36
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %101 = bitcast i64* %_allin_new_bt_28 to i32*
  store i32 %_new_load_83, i32* %101, !mcsema_real_eip !30
  %_ptr_to_int_84 = ptrtoint i32* %101 to i64
  %_ptr_bt_86 = bitcast i32* %101 to i8*
  %_offset_above_rbp_87 = sub i64 %_ptr_to_int_84, %_local_end_to_int_
  %_pot_address_in_parent_stack_88 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_87
  %_cond1_89 = icmp ugt i8* %_ptr_bt_86, %_local_stack_end_ptr_
  %_cond2_1_90 = icmp ugt i8* %_ptr_bt_86, %_parent_stack_end_ptr_
  %_cond2_2_91 = icmp ult i8* %_ptr_bt_86, %_parent_stack_start_ptr_
  %_cond2_92 = or i1 %_cond2_1_90, %_cond2_2_91
  %_cond4_93 = icmp ule i8* %_pot_address_in_parent_stack_88, %_parent_stack_end_ptr_
  %_cond1_n_cond2_94 = and i1 %_cond1_89, %_cond2_92
  %_cond1_n_cond2_cond3_95 = and i1 %_cond1_n_cond2_94, %_cond4_93
  br i1 %_cond1_n_cond2_cond3_95, label %102, label %103

; <label>:102:                                    ; preds = %98
  %_address_in_parent_stack_bt_97 = bitcast i8* %_pot_address_in_parent_stack_88 to i32*
  br label %103

; <label>:103:                                    ; preds = %98, %102
  %104 = phi i32* [ %101, %98 ], [ %_address_in_parent_stack_bt_97, %102 ]
  %_new_load_98 = load i32, i32* %104
  %105 = zext i32 %_new_load_98 to i64, !mcsema_real_eip !33
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_33 = bitcast i8* %_load_rsp_ptr_32 to i64*
  %_ptr_to_int_99 = ptrtoint i64* %_allin_new_bt_33 to i64
  %_offset_above_rbp_102 = sub i64 %_ptr_to_int_99, %_local_end_to_int_
  %_pot_address_in_parent_stack_103 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_cond1_104 = icmp ugt i8* %_load_rsp_ptr_32, %_local_stack_end_ptr_
  %_cond2_1_105 = icmp ugt i8* %_load_rsp_ptr_32, %_parent_stack_end_ptr_
  %_cond2_2_106 = icmp ult i8* %_load_rsp_ptr_32, %_parent_stack_start_ptr_
  %_cond2_107 = or i1 %_cond2_1_105, %_cond2_2_106
  %_cond4_108 = icmp ule i8* %_pot_address_in_parent_stack_103, %_parent_stack_end_ptr_
  %_cond1_n_cond2_109 = and i1 %_cond1_104, %_cond2_107
  %_cond1_n_cond2_cond3_110 = and i1 %_cond1_n_cond2_109, %_cond4_108
  br i1 %_cond1_n_cond2_cond3_110, label %106, label %107

; <label>:106:                                    ; preds = %103
  %_address_in_parent_stack_bt_112 = bitcast i8* %_pot_address_in_parent_stack_103 to i64*
  br label %107

; <label>:107:                                    ; preds = %103, %106
  %108 = phi i64* [ %_allin_new_bt_33, %103 ], [ %_address_in_parent_stack_bt_112, %106 ]
  %_new_load_113 = load i64, i64* %108
  %_new_int2ptr_ = inttoptr i64 %_new_load_113 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_34 = getelementptr i8, i8* %_load_rsp_ptr_32, i64 16
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_
  store i64 %105, i64* %RAX, !mcsema_real_eip !32
  store i64 %1, i64* %RBX, !mcsema_real_eip !32
  store i64 %100, i64* %RCX, !mcsema_real_eip !32
  store i64 %3, i64* %RDX, !mcsema_real_eip !32
  store i64 %4, i64* %RSI, !mcsema_real_eip !32
  store i64 %5, i64* %RDI, !mcsema_real_eip !32
  %_new_ptr2int_36 = ptrtoint i8* %_new_gep_34 to i64
  store volatile i64 %_new_ptr2int_36, i64* %RSP
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_38 = ptrtoint i8* %_load_rbp_ptr_37 to i64
  store volatile i64 %_new_ptr2int_38, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !32
  store i64 %7, i64* %R9, !mcsema_real_eip !32
  store i64 %8, i64* %R10, !mcsema_real_eip !32
  store i64 %9, i64* %R11, !mcsema_real_eip !32
  store i64 %10, i64* %R12, !mcsema_real_eip !32
  store i64 %11, i64* %R13, !mcsema_real_eip !32
  store i64 %12, i64* %R14, !mcsema_real_eip !32
  store i64 %13, i64* %R15, !mcsema_real_eip !32
  store i64 %14, i64* %RIP, !mcsema_real_eip !32
  store i1 %15, i1* %CF, align 1, !mcsema_real_eip !32
  store i1 %16, i1* %PF, align 1, !mcsema_real_eip !32
  store i1 %17, i1* %AF, align 1, !mcsema_real_eip !32
  store i1 %18, i1* %ZF, align 1, !mcsema_real_eip !32
  store i1 %19, i1* %SF, align 1, !mcsema_real_eip !32
  store i1 %20, i1* %OF, align 1, !mcsema_real_eip !32
  store i1 %21, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  store i1 %25, i1* %FPU_B, align 1, !mcsema_real_eip !32
  store i1 %26, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  store i3 %27, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  store i1 %28, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  store i1 %29, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  store i1 %30, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  store i1 %31, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  store i1 %32, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  store i1 %33, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  store i1 %34, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  store i1 %35, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  store i1 %36, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  store i1 %37, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  store i1 %38, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  store i1 %39, i1* %FPU_X, align 1, !mcsema_real_eip !32
  store i2 %40, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  store i2 %41, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  store i1 %42, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  store i1 %43, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  store i1 %44, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  store i1 %45, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  store i1 %46, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  store i1 %47, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %_ptr_to_int_114 = ptrtoint i64* %50 to i64
  %_ptr_bt_116 = bitcast i64* %50 to i8*
  %_offset_above_rbp_117 = sub i64 %_ptr_to_int_114, %_local_end_to_int_
  %_pot_address_in_parent_stack_118 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_cond1_119 = icmp ugt i8* %_ptr_bt_116, %_local_stack_end_ptr_
  %_cond2_1_120 = icmp ugt i8* %_ptr_bt_116, %_parent_stack_end_ptr_
  %_cond2_2_121 = icmp ult i8* %_ptr_bt_116, %_parent_stack_start_ptr_
  %_cond2_122 = or i1 %_cond2_1_120, %_cond2_2_121
  %_cond4_123 = icmp ule i8* %_pot_address_in_parent_stack_118, %_parent_stack_end_ptr_
  %_cond1_n_cond2_124 = and i1 %_cond1_119, %_cond2_122
  %_cond1_n_cond2_cond3_125 = and i1 %_cond1_n_cond2_124, %_cond4_123
  br i1 %_cond1_n_cond2_cond3_125, label %109, label %110

; <label>:109:                                    ; preds = %107
  %_address_in_parent_stack_bt_127 = bitcast i8* %_pot_address_in_parent_stack_118 to i64*
  br label %110

; <label>:110:                                    ; preds = %107, %109
  %111 = phi i64* [ %50, %107 ], [ %_address_in_parent_stack_bt_127, %109 ]
  %_new_load_128 = load i64, i64* %111
  store i64 %_new_load_128, i64* %49, align 4
  store i16 %54, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  store i64 %55, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  store i16 %56, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  store i64 %57, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  store i11 %58, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !32
  store i128 %59, i128* %XMM0, align 1, !mcsema_real_eip !32
  store i128 %60, i128* %XMM1, align 1, !mcsema_real_eip !32
  store i128 %61, i128* %XMM2, align 1, !mcsema_real_eip !32
  store i128 %62, i128* %XMM3, align 1, !mcsema_real_eip !32
  store i128 %63, i128* %XMM4, align 1, !mcsema_real_eip !32
  store i128 %64, i128* %XMM5, align 1, !mcsema_real_eip !32
  store i128 %65, i128* %XMM6, align 1, !mcsema_real_eip !32
  store i128 %66, i128* %XMM7, align 1, !mcsema_real_eip !32
  store i128 %67, i128* %XMM8, align 1, !mcsema_real_eip !32
  store i128 %68, i128* %XMM9, align 1, !mcsema_real_eip !32
  store i128 %69, i128* %XMM10, align 1, !mcsema_real_eip !32
  store i128 %70, i128* %XMM11, align 1, !mcsema_real_eip !32
  store i128 %71, i128* %XMM12, align 1, !mcsema_real_eip !32
  store i128 %72, i128* %XMM13, align 1, !mcsema_real_eip !32
  store i128 %73, i128* %XMM14, align 1, !mcsema_real_eip !32
  store i128 %74, i128* %XMM15, align 1, !mcsema_real_eip !32
  store i64 %75, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  store i64 %76, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 48}
!3 = !{i64 56}
!4 = !{i64 63}
!5 = !{i64 70}
!6 = !{i64 77}
!7 = !{i64 83}
!8 = !{i64 87}
!9 = !{i64 95}
!10 = !{i64 103}
!11 = !{i64 106}
!12 = !{i64 116}
!13 = !{i64 126}
!14 = !{i64 138}
!15 = !{i64 142}
!16 = !{i64 146}
!17 = !{i64 151}
!18 = !{i64 155}
!19 = !{i64 156}
!20 = !{i64 0}
!21 = !{i64 4}
!22 = !{i64 8}
!23 = !{i64 11}
!24 = !{i64 14}
!25 = !{i64 17}
!26 = !{i64 20}
!27 = !{i64 24}
!28 = !{i64 28}
!29 = !{i64 36}
!30 = !{i64 38}
!31 = !{i64 44}
!32 = !{i64 45}
!33 = !{i64 41}
