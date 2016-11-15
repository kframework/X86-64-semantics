; ModuleID = 'Output/test_32.clang.trans.bc'
source_filename = "Output/test_32.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [5 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [5 x i8] c"%ld\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_60(%struct.regs*) {
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
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %69 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %69, !mcsema_real_eip !3
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %70 = trunc i64 %5 to i32, !mcsema_real_eip !4
  %71 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %70, i32* %71, !mcsema_real_eip !4
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 %4, i64* %_allin_new_bt_18, !mcsema_real_eip !5
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %72 = bitcast i64* %_allin_new_bt_21 to i32*
  %73 = load i32, i32* %72, !mcsema_real_eip !6
  %74 = add i32 %73, -2
  %75 = xor i32 %74, %73, !mcsema_real_eip !6
  %76 = and i32 %75, 16, !mcsema_real_eip !6
  %77 = icmp ne i32 %76, 0, !mcsema_real_eip !6
  %78 = trunc i32 %74 to i8, !mcsema_real_eip !6
  %79 = tail call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !6
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = icmp eq i32 %74, 0, !mcsema_real_eip !6
  %83 = icmp slt i32 %74, 0
  %84 = icmp ult i32 %73, 2, !mcsema_real_eip !6
  %85 = and i32 %75, %73, !mcsema_real_eip !6
  %86 = icmp slt i32 %85, 0
  br i1 %82, label %block_0x80, label %block_0x95, !mcsema_real_eip !7

block_0x80:                                       ; preds = %entry
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %87 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !8
  %88 = add i64 %87, 8, !mcsema_real_eip !9
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !9
  %90 = load i64, i64* %89, !mcsema_real_eip !9
  %91 = tail call x86_64_sysvcc i64 @atoi(i64 %90), !mcsema_real_eip !10
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %92 = trunc i64 %91 to i32, !mcsema_real_eip !11
  %93 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 %92, i32* %93, !mcsema_real_eip !11
  br label %block_0xa2, !mcsema_real_eip !12

block_0x95:                                       ; preds = %entry
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %94 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 20, i32* %94, !mcsema_real_eip !13
  br label %block_0xa2, !mcsema_real_eip !14

block_0xa2:                                       ; preds = %block_0x95, %block_0x80
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %95 = bitcast i64* %_allin_new_bt_33 to i32*
  %96 = load i32, i32* %95, !mcsema_real_eip !15
  %97 = zext i32 %96 to i64, !mcsema_real_eip !15
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -20
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %98 = bitcast i64* %_allin_new_bt_36 to i32*
  store i32 %96, i32* %98, !mcsema_real_eip !16
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -20
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %99 = bitcast i64* %_allin_new_bt_39 to i32*
  %100 = load i32, i32* %99, !mcsema_real_eip !17
  %101 = sext i32 %100 to i64, !mcsema_real_eip !17
  %_load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_40, i64 -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_42, !mcsema_real_eip !18
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %97, i64* %RAX, !mcsema_real_eip !18
  store i64 %1, i64* %RBX, !mcsema_real_eip !18
  store i64 %2, i64* %RCX, !mcsema_real_eip !18
  store i64 %3, i64* %RDX, !mcsema_real_eip !18
  store i64 %4, i64* %RSI, !mcsema_real_eip !18
  store i64 %101, i64* %RDI, !mcsema_real_eip !18
  %_new_ptr2int_44 = ptrtoint i8* %_new_gep_41 to i64
  store volatile i64 %_new_ptr2int_44, i64* %RSP
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_46 = ptrtoint i8* %_load_rbp_ptr_45 to i64
  store volatile i64 %_new_ptr2int_46, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !18
  store i64 %7, i64* %R9, !mcsema_real_eip !18
  store i64 %8, i64* %R10, !mcsema_real_eip !18
  store i64 %9, i64* %R11, !mcsema_real_eip !18
  store i64 %10, i64* %R12, !mcsema_real_eip !18
  store i64 %11, i64* %R13, !mcsema_real_eip !18
  store i64 %12, i64* %R14, !mcsema_real_eip !18
  store i64 %13, i64* %R15, !mcsema_real_eip !18
  store i64 %14, i64* %RIP, !mcsema_real_eip !18
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %86, i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %102 = load i64, i64* %44, align 4
  store i64 %102, i64* %43, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !18
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_70)
  %103 = load i64, i64* %RAX, !mcsema_real_eip !18
  %104 = load i64, i64* %RBX, !mcsema_real_eip !18
  %105 = load i64, i64* %RCX, !mcsema_real_eip !18
  %106 = load i64, i64* %RDX, !mcsema_real_eip !18
  %107 = load i64, i64* %R8, !mcsema_real_eip !18
  %108 = load i64, i64* %R9, !mcsema_real_eip !18
  %109 = load i64, i64* %R10, !mcsema_real_eip !18
  %110 = load i64, i64* %R11, !mcsema_real_eip !18
  %111 = load i64, i64* %R12, !mcsema_real_eip !18
  %112 = load i64, i64* %R13, !mcsema_real_eip !18
  %113 = load i64, i64* %R14, !mcsema_real_eip !18
  %114 = load i64, i64* %R15, !mcsema_real_eip !18
  %115 = load i64, i64* %RIP, !mcsema_real_eip !18
  %116 = load i1, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %117 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %118 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %119 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %120 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %121 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %122 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %123 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %124 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %125 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %126 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %127 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %128 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %129 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %130 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %131 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %132 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %133 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %134 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %135 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %136 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %137 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %138 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %139 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %140 = load i64, i64* %43, align 4
  store i64 %140, i64* %44, align 4
  %141 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %142 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  %143 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %144 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  %145 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  %146 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !18
  %147 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !18
  %148 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !18
  %149 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !18
  %150 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !18
  %151 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !18
  %152 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !18
  %153 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !18
  %154 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !18
  %155 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !18
  %156 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !18
  %157 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !18
  %158 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !18
  %159 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !18
  %160 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !18
  %161 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !18
  %162 = load i64, i64* %STACK_BASE, !mcsema_real_eip !18
  %163 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !18
  %_load_rsp_ptr_47 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_48 = bitcast i8* %_load_rsp_ptr_47 to i64*
  %164 = load i64, i64* %_allin_new_bt_48, !mcsema_real_eip !19
  %_new_gep_49 = getelementptr i8, i8* %_load_rsp_ptr_47, i64 8
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %165 = load i64, i64* %_allin_new_bt_50, !mcsema_real_eip !19
  %_new_gep_51 = getelementptr i8, i8* %_load_rsp_ptr_47, i64 16
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %166 = load i64, i64* %_allin_new_bt_52, !mcsema_real_eip !19
  %_new_gep_53 = getelementptr i8, i8* %_load_rsp_ptr_47, i64 24
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %167 = load i64, i64* %_allin_new_bt_54, !mcsema_real_eip !19
  %_new_gep_55 = getelementptr i8, i8* %_load_rsp_ptr_47, i64 32
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %168 = load i64, i64* %_allin_new_bt_56, !mcsema_real_eip !19
  %_new_gep_57 = getelementptr i8, i8* %_load_rsp_ptr_47, i64 40
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %169 = load i64, i64* %_allin_new_bt_58, !mcsema_real_eip !19
  %170 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %103, i64 %106, i64 %105, i64 %107, i64 %108, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169), !mcsema_real_eip !19
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -28
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %171 = trunc i64 %170 to i32, !mcsema_real_eip !20
  %172 = bitcast i64* %_allin_new_bt_61 to i32*
  store i32 %171, i32* %172, !mcsema_real_eip !20
  %_load_rsp_ptr_62 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_63 = ptrtoint i8* %_load_rsp_ptr_62 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_63, i64 32)
  %173 = extractvalue { i64, i1 } %uadd, 0
  %174 = xor i64 %173, %_new_ptr2int_63, !mcsema_real_eip !21
  %175 = and i64 %174, 16, !mcsema_real_eip !21
  %176 = icmp ne i64 %175, 0, !mcsema_real_eip !21
  %177 = icmp slt i64 %173, 0
  %178 = icmp eq i64 %173, 0, !mcsema_real_eip !21
  %179 = xor i64 %_new_ptr2int_63, -9223372036854775808, !mcsema_real_eip !21
  %180 = and i64 %174, %179, !mcsema_real_eip !21
  %181 = icmp slt i64 %180, 0
  %182 = trunc i64 %173 to i8, !mcsema_real_eip !21
  %183 = tail call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !21
  %184 = and i8 %183, 1
  %185 = icmp eq i8 %184, 0
  %186 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %173 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %187 = inttoptr i64 %173 to i64*, !mcsema_real_eip !22
  %188 = load i64, i64* %187, !mcsema_real_eip !22
  %_new_int2ptr_64 = inttoptr i64 %188 to i8*
  store volatile i8* %_new_int2ptr_64, i8** %_RBP_ptr_
  %189 = add i64 %173, 16, !mcsema_real_eip !23
  %_new_int2ptr_65 = inttoptr i64 %189 to i8*
  store volatile i8* %_new_int2ptr_65, i8** %_RSP_ptr_
  store i64 0, i64* %RAX, !mcsema_real_eip !23
  store i64 %104, i64* %RBX, !mcsema_real_eip !23
  store i64 0, i64* %RCX, !mcsema_real_eip !23
  store i64 %106, i64* %RDX, !mcsema_real_eip !23
  store i64 %103, i64* %RSI, !mcsema_real_eip !23
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %RDI, !mcsema_real_eip !23
  store volatile i64 %189, i64* %RSP
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_69 = ptrtoint i8* %_load_rbp_ptr_68 to i64
  store volatile i64 %_new_ptr2int_69, i64* %RBP
  store i64 %107, i64* %R8, !mcsema_real_eip !23
  store i64 %108, i64* %R9, !mcsema_real_eip !23
  store i64 %109, i64* %R10, !mcsema_real_eip !23
  store i64 %110, i64* %R11, !mcsema_real_eip !23
  store i64 %111, i64* %R12, !mcsema_real_eip !23
  store i64 %112, i64* %R13, !mcsema_real_eip !23
  store i64 %113, i64* %R14, !mcsema_real_eip !23
  store i64 %114, i64* %R15, !mcsema_real_eip !23
  store i64 %115, i64* %RIP, !mcsema_real_eip !23
  store i1 %186, i1* %CF, align 1, !mcsema_real_eip !23
  store i1 %185, i1* %PF, align 1, !mcsema_real_eip !23
  store i1 %176, i1* %AF, align 1, !mcsema_real_eip !23
  store i1 %178, i1* %ZF, align 1, !mcsema_real_eip !23
  store i1 %177, i1* %SF, align 1, !mcsema_real_eip !23
  store i1 %181, i1* %OF, align 1, !mcsema_real_eip !23
  store i1 %116, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  store i1 %117, i1* %FPU_B, align 1, !mcsema_real_eip !23
  store i1 %118, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  store i3 %119, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  store i1 %120, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  store i1 %121, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  store i1 %122, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  store i1 %123, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  store i1 %124, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  store i1 %125, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  store i1 %126, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  store i1 %127, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  store i1 %128, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  store i1 %129, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  store i1 %130, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  store i1 %131, i1* %FPU_X, align 1, !mcsema_real_eip !23
  store i2 %132, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  store i2 %133, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  store i1 %134, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  store i1 %135, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  store i1 %136, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  store i1 %137, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  store i1 %138, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  store i1 %139, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %190 = load i64, i64* %44, align 4
  store i64 %190, i64* %43, align 4
  store i16 %141, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  store i64 %142, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  store i16 %143, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  store i64 %144, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  store i11 %145, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  store i128 %146, i128* %XMM0, align 1, !mcsema_real_eip !23
  store i128 %147, i128* %XMM1, align 1, !mcsema_real_eip !23
  store i128 %148, i128* %XMM2, align 1, !mcsema_real_eip !23
  store i128 %149, i128* %XMM3, align 1, !mcsema_real_eip !23
  store i128 %150, i128* %XMM4, align 1, !mcsema_real_eip !23
  store i128 %151, i128* %XMM5, align 1, !mcsema_real_eip !23
  store i128 %152, i128* %XMM6, align 1, !mcsema_real_eip !23
  store i128 %153, i128* %XMM7, align 1, !mcsema_real_eip !23
  store i128 %154, i128* %XMM8, align 1, !mcsema_real_eip !23
  store i128 %155, i128* %XMM9, align 1, !mcsema_real_eip !23
  store i128 %156, i128* %XMM10, align 1, !mcsema_real_eip !23
  store i128 %157, i128* %XMM11, align 1, !mcsema_real_eip !23
  store i128 %158, i128* %XMM12, align 1, !mcsema_real_eip !23
  store i128 %159, i128* %XMM13, align 1, !mcsema_real_eip !23
  store i128 %160, i128* %XMM14, align 1, !mcsema_real_eip !23
  store i128 %161, i128* %XMM15, align 1, !mcsema_real_eip !23
  store i64 %162, i64* %STACK_BASE, align 1, !mcsema_real_eip !23
  store i64 %163, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !24
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !24
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !24
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !24
  %1 = load i64, i64* %RBX, !mcsema_real_eip !24
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !24
  %2 = load i64, i64* %RCX, !mcsema_real_eip !24
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !24
  %3 = load i64, i64* %RDX, !mcsema_real_eip !24
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !24
  %4 = load i64, i64* %RSI, !mcsema_real_eip !24
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !24
  %5 = load i64, i64* %RDI, !mcsema_real_eip !24
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !24
  %6 = load i64, i64* %RSP, !mcsema_real_eip !24
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !24
  %7 = load i64, i64* %RBP, !mcsema_real_eip !24
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !24
  %8 = load i64, i64* %R8, !mcsema_real_eip !24
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !24
  %9 = load i64, i64* %R9, !mcsema_real_eip !24
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !24
  %10 = load i64, i64* %R10, !mcsema_real_eip !24
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !24
  %11 = load i64, i64* %R11, !mcsema_real_eip !24
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !24
  %12 = load i64, i64* %R12, !mcsema_real_eip !24
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !24
  %13 = load i64, i64* %R13, !mcsema_real_eip !24
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !24
  %14 = load i64, i64* %R14, !mcsema_real_eip !24
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !24
  %15 = load i64, i64* %R15, !mcsema_real_eip !24
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !24
  %16 = load i64, i64* %RIP, !mcsema_real_eip !24
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !24
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !24
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !24
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !24
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !24
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !24
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !24
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !24
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !24
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !24
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !24
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !24
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !24
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !24
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !24
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !24
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !24
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !24
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !24
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !24
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !24
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !24
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !24
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !24
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !24
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !24
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !24
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !24
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !24
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !24
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !24
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !24
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !24
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !24
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !24
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !24
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !24
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !24
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !24
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !24
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !24
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !24
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !24
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !24
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !24
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !24
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !24
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !24
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !24
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !24
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !24
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !24
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !24
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !24
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !24
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !24
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !24
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !24
  %45 = bitcast i8* %44 to i64*
  %46 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %47 = load i64, i64* %45, align 4
  store i64 %47, i64* %46, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !24
  %48 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !24
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !24
  %49 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !24
  %50 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !24
  %51 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !24
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !24
  %52 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !24
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !24
  %53 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !24
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !24
  %54 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !24
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !24
  %55 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !24
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !24
  %56 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !24
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !24
  %57 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !24
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !24
  %58 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !24
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !24
  %59 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !24
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !24
  %60 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !24
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !24
  %61 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !24
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !24
  %62 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !24
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !24
  %63 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !24
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !24
  %64 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !24
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !24
  %65 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !24
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !24
  %66 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !24
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !24
  %67 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !24
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !24
  %68 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !24
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !24
  %69 = load i64, i64* %STACK_BASE, !mcsema_real_eip !24
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !24
  %70 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !24
  %71 = add i64 %6, -8
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !24
  store i64 %7, i64* %72, !mcsema_real_eip !24
  %73 = add i64 %6, -40
  %74 = add i64 %71, -16, !mcsema_real_eip !25
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !25
  store i64 %5, i64* %75, !mcsema_real_eip !25
  %76 = icmp ult i64 %5, 2, !mcsema_real_eip !26
  br i1 %76, label %block_0x17, label %block_0x24, !mcsema_real_eip !27

block_0x17:                                       ; preds = %entry
  %77 = add i64 %71, -8, !mcsema_real_eip !28
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !28
  store i64 1, i64* %78, !mcsema_real_eip !28
  br label %block_0x50, !mcsema_real_eip !29

block_0x24:                                       ; preds = %entry
  %79 = add i64 %5, -2
  %80 = xor i64 %79, %5, !mcsema_real_eip !30
  %81 = and i64 %80, 16, !mcsema_real_eip !30
  %82 = icmp ne i64 %81, 0, !mcsema_real_eip !30
  %83 = trunc i64 %79 to i8, !mcsema_real_eip !30
  %84 = tail call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !30
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  %87 = icmp eq i64 %79, 0, !mcsema_real_eip !30
  %88 = icmp slt i64 %79, 0
  %89 = and i64 %80, %5, !mcsema_real_eip !30
  %90 = icmp slt i64 %89, 0
  %91 = add i64 %73, -8
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !31
  store i64 -4981261766360305936, i64* %92, !mcsema_real_eip !31
  store i64 %79, i64* %RAX, !mcsema_real_eip !31
  store i64 %1, i64* %RBX, !mcsema_real_eip !31
  store i64 %2, i64* %RCX, !mcsema_real_eip !31
  store i64 %3, i64* %RDX, !mcsema_real_eip !31
  store i64 %4, i64* %RSI, !mcsema_real_eip !31
  store i64 %79, i64* %RDI, !mcsema_real_eip !31
  store i64 %91, i64* %RSP, !mcsema_real_eip !31
  store i64 %71, i64* %RBP, !mcsema_real_eip !31
  store i64 %8, i64* %R8, !mcsema_real_eip !31
  store i64 %9, i64* %R9, !mcsema_real_eip !31
  store i64 %10, i64* %R10, !mcsema_real_eip !31
  store i64 %11, i64* %R11, !mcsema_real_eip !31
  store i64 %12, i64* %R12, !mcsema_real_eip !31
  store i64 %13, i64* %R13, !mcsema_real_eip !31
  store i64 %14, i64* %R14, !mcsema_real_eip !31
  store i64 %15, i64* %R15, !mcsema_real_eip !31
  store i64 %16, i64* %RIP, !mcsema_real_eip !31
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !31
  store i1 %86, i1* %PF, align 1, !mcsema_real_eip !31
  store i1 %82, i1* %AF, align 1, !mcsema_real_eip !31
  store i1 %87, i1* %ZF, align 1, !mcsema_real_eip !31
  store i1 %88, i1* %SF, align 1, !mcsema_real_eip !31
  store i1 %90, i1* %OF, align 1, !mcsema_real_eip !31
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !31
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !31
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %93 = load i64, i64* %46, align 4
  store i64 %93, i64* %45, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !31
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !31
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !31
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !31
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !31
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !31
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !31
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !31
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !31
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !31
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !31
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !31
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !31
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !31
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !31
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !31
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !31
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !31
  %94 = load i64, i64* %RAX, !mcsema_real_eip !31
  %95 = load i64, i64* %RBX, !mcsema_real_eip !31
  %96 = load i64, i64* %RCX, !mcsema_real_eip !31
  %97 = load i64, i64* %RDX, !mcsema_real_eip !31
  %98 = load i64, i64* %RSI, !mcsema_real_eip !31
  %99 = load i64, i64* %RSP, !mcsema_real_eip !31
  %100 = load i64, i64* %RBP, !mcsema_real_eip !31
  %101 = load i64, i64* %R8, !mcsema_real_eip !31
  %102 = load i64, i64* %R9, !mcsema_real_eip !31
  %103 = load i64, i64* %R10, !mcsema_real_eip !31
  %104 = load i64, i64* %R11, !mcsema_real_eip !31
  %105 = load i64, i64* %R12, !mcsema_real_eip !31
  %106 = load i64, i64* %R13, !mcsema_real_eip !31
  %107 = load i64, i64* %R14, !mcsema_real_eip !31
  %108 = load i64, i64* %R15, !mcsema_real_eip !31
  %109 = load i64, i64* %RIP, !mcsema_real_eip !31
  %110 = load i1, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !31
  %111 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %112 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %113 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %114 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %115 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %116 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %117 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %118 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %119 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %120 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %121 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %122 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %123 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %124 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %125 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %126 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %127 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %128 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %129 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %130 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %131 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %132 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %133 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %134 = load i64, i64* %45, align 4
  store i64 %134, i64* %46, align 4
  %135 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %136 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !31
  %137 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %138 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !31
  %139 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !31
  %140 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !31
  %141 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !31
  %142 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !31
  %143 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !31
  %144 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !31
  %145 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !31
  %146 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !31
  %147 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !31
  %148 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !31
  %149 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !31
  %150 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !31
  %151 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !31
  %152 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !31
  %153 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !31
  %154 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !31
  %155 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !31
  %156 = load i64, i64* %STACK_BASE, !mcsema_real_eip !31
  %157 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !31
  %158 = add i64 %100, -16, !mcsema_real_eip !32
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !32
  %160 = load i64, i64* %159, !mcsema_real_eip !32
  %161 = add i64 %160, -1
  %162 = xor i64 %161, %160, !mcsema_real_eip !33
  %163 = and i64 %162, 16, !mcsema_real_eip !33
  %164 = icmp ne i64 %163, 0, !mcsema_real_eip !33
  %165 = trunc i64 %161 to i8, !mcsema_real_eip !33
  %166 = tail call i8 @llvm.ctpop.i8(i8 %165), !mcsema_real_eip !33
  %167 = and i8 %166, 1
  %168 = icmp eq i8 %167, 0
  %169 = icmp eq i64 %161, 0, !mcsema_real_eip !33
  %170 = icmp slt i64 %161, 0
  %171 = icmp eq i64 %160, 0
  %172 = and i64 %162, %160, !mcsema_real_eip !33
  %173 = icmp slt i64 %172, 0
  %174 = add i64 %100, -24, !mcsema_real_eip !34
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !34
  store i64 %94, i64* %175, !mcsema_real_eip !34
  %176 = add i64 %99, -8
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !35
  store i64 -4981261766360305936, i64* %177, !mcsema_real_eip !35
  store i64 %94, i64* %RAX, !mcsema_real_eip !35
  store i64 %95, i64* %RBX, !mcsema_real_eip !35
  store i64 %96, i64* %RCX, !mcsema_real_eip !35
  store i64 %97, i64* %RDX, !mcsema_real_eip !35
  store i64 %98, i64* %RSI, !mcsema_real_eip !35
  store i64 %161, i64* %RDI, !mcsema_real_eip !35
  store i64 %176, i64* %RSP, !mcsema_real_eip !35
  store i64 %100, i64* %RBP, !mcsema_real_eip !35
  store i64 %101, i64* %R8, !mcsema_real_eip !35
  store i64 %102, i64* %R9, !mcsema_real_eip !35
  store i64 %103, i64* %R10, !mcsema_real_eip !35
  store i64 %104, i64* %R11, !mcsema_real_eip !35
  store i64 %105, i64* %R12, !mcsema_real_eip !35
  store i64 %106, i64* %R13, !mcsema_real_eip !35
  store i64 %107, i64* %R14, !mcsema_real_eip !35
  store i64 %108, i64* %R15, !mcsema_real_eip !35
  store i64 %109, i64* %RIP, !mcsema_real_eip !35
  store i1 %171, i1* %CF, align 1, !mcsema_real_eip !35
  store i1 %168, i1* %PF, align 1, !mcsema_real_eip !35
  store i1 %164, i1* %AF, align 1, !mcsema_real_eip !35
  store i1 %169, i1* %ZF, align 1, !mcsema_real_eip !35
  store i1 %170, i1* %SF, align 1, !mcsema_real_eip !35
  store i1 %173, i1* %OF, align 1, !mcsema_real_eip !35
  store i1 %110, i1* %DF, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !35
  store i1 %111, i1* %FPU_B, align 1, !mcsema_real_eip !35
  store i1 %112, i1* %FPU_C3, align 1, !mcsema_real_eip !35
  store i3 %113, i3* %FPU_TOP, align 1, !mcsema_real_eip !35
  store i1 %114, i1* %FPU_C2, align 1, !mcsema_real_eip !35
  store i1 %115, i1* %FPU_C1, align 1, !mcsema_real_eip !35
  store i1 %116, i1* %FPU_C0, align 1, !mcsema_real_eip !35
  store i1 %117, i1* %FPU_ES, align 1, !mcsema_real_eip !35
  store i1 %118, i1* %FPU_SF, align 1, !mcsema_real_eip !35
  store i1 %119, i1* %FPU_PE, align 1, !mcsema_real_eip !35
  store i1 %120, i1* %FPU_UE, align 1, !mcsema_real_eip !35
  store i1 %121, i1* %FPU_OE, align 1, !mcsema_real_eip !35
  store i1 %122, i1* %FPU_ZE, align 1, !mcsema_real_eip !35
  store i1 %123, i1* %FPU_DE, align 1, !mcsema_real_eip !35
  store i1 %124, i1* %FPU_IE, align 1, !mcsema_real_eip !35
  store i1 %125, i1* %FPU_X, align 1, !mcsema_real_eip !35
  store i2 %126, i2* %FPU_RC, align 1, !mcsema_real_eip !35
  store i2 %127, i2* %FPU_PC, align 1, !mcsema_real_eip !35
  store i1 %128, i1* %FPU_PM, align 1, !mcsema_real_eip !35
  store i1 %129, i1* %FPU_UM, align 1, !mcsema_real_eip !35
  store i1 %130, i1* %FPU_OM, align 1, !mcsema_real_eip !35
  store i1 %131, i1* %FPU_ZM, align 1, !mcsema_real_eip !35
  store i1 %132, i1* %FPU_DM, align 1, !mcsema_real_eip !35
  store i1 %133, i1* %FPU_IM, align 1, !mcsema_real_eip !35
  %178 = load i64, i64* %46, align 4
  store i64 %178, i64* %45, align 4
  store i16 %135, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !35
  store i64 %136, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !35
  store i16 %137, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !35
  store i64 %138, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !35
  store i11 %139, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !35
  store i128 %140, i128* %XMM0, align 1, !mcsema_real_eip !35
  store i128 %141, i128* %XMM1, align 1, !mcsema_real_eip !35
  store i128 %142, i128* %XMM2, align 1, !mcsema_real_eip !35
  store i128 %143, i128* %XMM3, align 1, !mcsema_real_eip !35
  store i128 %144, i128* %XMM4, align 1, !mcsema_real_eip !35
  store i128 %145, i128* %XMM5, align 1, !mcsema_real_eip !35
  store i128 %146, i128* %XMM6, align 1, !mcsema_real_eip !35
  store i128 %147, i128* %XMM7, align 1, !mcsema_real_eip !35
  store i128 %148, i128* %XMM8, align 1, !mcsema_real_eip !35
  store i128 %149, i128* %XMM9, align 1, !mcsema_real_eip !35
  store i128 %150, i128* %XMM10, align 1, !mcsema_real_eip !35
  store i128 %151, i128* %XMM11, align 1, !mcsema_real_eip !35
  store i128 %152, i128* %XMM12, align 1, !mcsema_real_eip !35
  store i128 %153, i128* %XMM13, align 1, !mcsema_real_eip !35
  store i128 %154, i128* %XMM14, align 1, !mcsema_real_eip !35
  store i128 %155, i128* %XMM15, align 1, !mcsema_real_eip !35
  store i64 %156, i64* %STACK_BASE, align 1, !mcsema_real_eip !35
  store i64 %157, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !35
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !35
  %179 = load i64, i64* %RAX, !mcsema_real_eip !35
  %180 = load i64, i64* %RBX, !mcsema_real_eip !35
  %181 = load i64, i64* %RCX, !mcsema_real_eip !35
  %182 = load i64, i64* %RDX, !mcsema_real_eip !35
  %183 = load i64, i64* %RSI, !mcsema_real_eip !35
  %184 = load i64, i64* %RSP, !mcsema_real_eip !35
  %185 = load i64, i64* %RBP, !mcsema_real_eip !35
  %186 = load i64, i64* %R8, !mcsema_real_eip !35
  %187 = load i64, i64* %R9, !mcsema_real_eip !35
  %188 = load i64, i64* %R10, !mcsema_real_eip !35
  %189 = load i64, i64* %R11, !mcsema_real_eip !35
  %190 = load i64, i64* %R12, !mcsema_real_eip !35
  %191 = load i64, i64* %R13, !mcsema_real_eip !35
  %192 = load i64, i64* %R14, !mcsema_real_eip !35
  %193 = load i64, i64* %R15, !mcsema_real_eip !35
  %194 = load i64, i64* %RIP, !mcsema_real_eip !35
  %195 = load i1, i1* %DF, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !35
  %196 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !35
  %197 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !35
  %198 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !35
  %199 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !35
  %200 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !35
  %201 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !35
  %202 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !35
  %203 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !35
  %204 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !35
  %205 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !35
  %206 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !35
  %207 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !35
  %208 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !35
  %209 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !35
  %210 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !35
  %211 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !35
  %212 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !35
  %213 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !35
  %214 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !35
  %215 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !35
  %216 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !35
  %217 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !35
  %218 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !35
  %219 = load i64, i64* %45, align 4
  store i64 %219, i64* %46, align 4
  %220 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !35
  %221 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !35
  %222 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !35
  %223 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !35
  %224 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !35
  %225 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !35
  %226 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !35
  %227 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !35
  %228 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !35
  %229 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !35
  %230 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !35
  %231 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !35
  %232 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !35
  %233 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !35
  %234 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !35
  %235 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !35
  %236 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !35
  %237 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !35
  %238 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !35
  %239 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !35
  %240 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !35
  %241 = load i64, i64* %STACK_BASE, !mcsema_real_eip !35
  %242 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !35
  %243 = add i64 %185, -24, !mcsema_real_eip !36
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !36
  %245 = load i64, i64* %244, !mcsema_real_eip !36
  %uadd351 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %179, i64 %245)
  %246 = extractvalue { i64, i1 } %uadd351, 0
  %247 = add i64 %185, -8, !mcsema_real_eip !37
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !37
  store i64 %246, i64* %248, !mcsema_real_eip !37
  br label %block_0x50, !mcsema_real_eip !28

block_0x50:                                       ; preds = %block_0x24, %block_0x17
  %RBX_val.0 = phi i64 [ %1, %block_0x17 ], [ %180, %block_0x24 ]
  %RCX_val.0 = phi i64 [ %2, %block_0x17 ], [ %181, %block_0x24 ]
  %RDX_val.0 = phi i64 [ %3, %block_0x17 ], [ %182, %block_0x24 ]
  %RSI_val.0 = phi i64 [ %4, %block_0x17 ], [ %183, %block_0x24 ]
  %RDI_val.0 = phi i64 [ %5, %block_0x17 ], [ %246, %block_0x24 ]
  %RBP_val.0 = phi i64 [ %71, %block_0x17 ], [ %185, %block_0x24 ]
  %RSP_val.0 = phi i64 [ %73, %block_0x17 ], [ %184, %block_0x24 ]
  %R8_val.0 = phi i64 [ %8, %block_0x17 ], [ %186, %block_0x24 ]
  %R9_val.0 = phi i64 [ %9, %block_0x17 ], [ %187, %block_0x24 ]
  %R10_val.0 = phi i64 [ %10, %block_0x17 ], [ %188, %block_0x24 ]
  %R11_val.0 = phi i64 [ %11, %block_0x17 ], [ %189, %block_0x24 ]
  %R12_val.0 = phi i64 [ %12, %block_0x17 ], [ %190, %block_0x24 ]
  %R13_val.0 = phi i64 [ %13, %block_0x17 ], [ %191, %block_0x24 ]
  %R14_val.0 = phi i64 [ %14, %block_0x17 ], [ %192, %block_0x24 ]
  %RIP_val.0 = phi i64 [ %16, %block_0x17 ], [ %194, %block_0x24 ]
  %DF_val.0 = phi i1 [ %17, %block_0x17 ], [ %195, %block_0x24 ]
  %FPU_B_val.0 = phi i1 [ %21, %block_0x17 ], [ %196, %block_0x24 ]
  %FPU_C3_val.0 = phi i1 [ %22, %block_0x17 ], [ %197, %block_0x24 ]
  %FPU_TOP_val.0 = phi i3 [ %23, %block_0x17 ], [ %198, %block_0x24 ]
  %FPU_C2_val.0 = phi i1 [ %24, %block_0x17 ], [ %199, %block_0x24 ]
  %FPU_C1_val.0 = phi i1 [ %25, %block_0x17 ], [ %200, %block_0x24 ]
  %FPU_C0_val.0 = phi i1 [ %26, %block_0x17 ], [ %201, %block_0x24 ]
  %FPU_ES_val.0 = phi i1 [ %27, %block_0x17 ], [ %202, %block_0x24 ]
  %FPU_SF_val.0 = phi i1 [ %28, %block_0x17 ], [ %203, %block_0x24 ]
  %FPU_PE_val.0 = phi i1 [ %29, %block_0x17 ], [ %204, %block_0x24 ]
  %FPU_UE_val.0 = phi i1 [ %30, %block_0x17 ], [ %205, %block_0x24 ]
  %FPU_OE_val.0 = phi i1 [ %31, %block_0x17 ], [ %206, %block_0x24 ]
  %FPU_ZE_val.0 = phi i1 [ %32, %block_0x17 ], [ %207, %block_0x24 ]
  %FPU_DE_val.0 = phi i1 [ %33, %block_0x17 ], [ %208, %block_0x24 ]
  %FPU_IE_val.0 = phi i1 [ %34, %block_0x17 ], [ %209, %block_0x24 ]
  %FPU_X_val.0 = phi i1 [ %35, %block_0x17 ], [ %210, %block_0x24 ]
  %FPU_RC_val.0 = phi i2 [ %36, %block_0x17 ], [ %211, %block_0x24 ]
  %FPU_PC_val.0 = phi i2 [ %37, %block_0x17 ], [ %212, %block_0x24 ]
  %FPU_PM_val.0 = phi i1 [ %38, %block_0x17 ], [ %213, %block_0x24 ]
  %FPU_UM_val.0 = phi i1 [ %39, %block_0x17 ], [ %214, %block_0x24 ]
  %FPU_OM_val.0 = phi i1 [ %40, %block_0x17 ], [ %215, %block_0x24 ]
  %FPU_ZM_val.0 = phi i1 [ %41, %block_0x17 ], [ %216, %block_0x24 ]
  %FPU_DM_val.0 = phi i1 [ %42, %block_0x17 ], [ %217, %block_0x24 ]
  %FPU_IM_val.0 = phi i1 [ %43, %block_0x17 ], [ %218, %block_0x24 ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %48, %block_0x17 ], [ %220, %block_0x24 ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %49, %block_0x17 ], [ %221, %block_0x24 ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %50, %block_0x17 ], [ %222, %block_0x24 ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %51, %block_0x17 ], [ %223, %block_0x24 ]
  %FPU_FOPCODE_val.0 = phi i11 [ %52, %block_0x17 ], [ %224, %block_0x24 ]
  %XMM0_val.0 = phi i128 [ %53, %block_0x17 ], [ %225, %block_0x24 ]
  %XMM1_val.0 = phi i128 [ %54, %block_0x17 ], [ %226, %block_0x24 ]
  %XMM2_val.0 = phi i128 [ %55, %block_0x17 ], [ %227, %block_0x24 ]
  %XMM3_val.0 = phi i128 [ %56, %block_0x17 ], [ %228, %block_0x24 ]
  %XMM4_val.0 = phi i128 [ %57, %block_0x17 ], [ %229, %block_0x24 ]
  %XMM5_val.0 = phi i128 [ %58, %block_0x17 ], [ %230, %block_0x24 ]
  %XMM6_val.0 = phi i128 [ %59, %block_0x17 ], [ %231, %block_0x24 ]
  %XMM7_val.0 = phi i128 [ %60, %block_0x17 ], [ %232, %block_0x24 ]
  %XMM8_val.0 = phi i128 [ %61, %block_0x17 ], [ %233, %block_0x24 ]
  %XMM9_val.0 = phi i128 [ %62, %block_0x17 ], [ %234, %block_0x24 ]
  %XMM10_val.0 = phi i128 [ %63, %block_0x17 ], [ %235, %block_0x24 ]
  %XMM11_val.0 = phi i128 [ %64, %block_0x17 ], [ %236, %block_0x24 ]
  %XMM12_val.0 = phi i128 [ %65, %block_0x17 ], [ %237, %block_0x24 ]
  %XMM13_val.0 = phi i128 [ %66, %block_0x17 ], [ %238, %block_0x24 ]
  %XMM14_val.0 = phi i128 [ %67, %block_0x17 ], [ %239, %block_0x24 ]
  %XMM15_val.0 = phi i128 [ %68, %block_0x17 ], [ %240, %block_0x24 ]
  %STACK_BASE_val.0 = phi i64 [ %69, %block_0x17 ], [ %241, %block_0x24 ]
  %STACK_LIMIT_val.0 = phi i64 [ %70, %block_0x17 ], [ %242, %block_0x24 ]
  %R15_val.0 = phi i64 [ %15, %block_0x17 ], [ %193, %block_0x24 ]
  %249 = add i64 %RBP_val.0, -8, !mcsema_real_eip !38
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !38
  %251 = load i64, i64* %250, !mcsema_real_eip !38
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0, i64 32)
  %252 = extractvalue { i64, i1 } %uadd, 0
  %253 = xor i64 %252, %RSP_val.0, !mcsema_real_eip !39
  %254 = and i64 %253, 16, !mcsema_real_eip !39
  %255 = icmp ne i64 %254, 0, !mcsema_real_eip !39
  %256 = icmp slt i64 %252, 0
  %257 = icmp eq i64 %252, 0, !mcsema_real_eip !39
  %258 = xor i64 %RSP_val.0, -9223372036854775808, !mcsema_real_eip !39
  %259 = and i64 %253, %258, !mcsema_real_eip !39
  %260 = icmp slt i64 %259, 0
  %261 = trunc i64 %252 to i8, !mcsema_real_eip !39
  %262 = tail call i8 @llvm.ctpop.i8(i8 %261), !mcsema_real_eip !39
  %263 = and i8 %262, 1
  %264 = icmp eq i8 %263, 0
  %265 = extractvalue { i64, i1 } %uadd, 1
  %266 = inttoptr i64 %252 to i64*, !mcsema_real_eip !40
  %267 = load i64, i64* %266, !mcsema_real_eip !40
  %268 = add i64 %252, 16, !mcsema_real_eip !41
  store i64 %251, i64* %RAX, !mcsema_real_eip !41
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !41
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !41
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !41
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !41
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !41
  store i64 %268, i64* %RSP, !mcsema_real_eip !41
  store i64 %267, i64* %RBP, !mcsema_real_eip !41
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !41
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !41
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !41
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !41
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !41
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !41
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !41
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !41
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !41
  store i1 %265, i1* %CF, align 1, !mcsema_real_eip !41
  store i1 %264, i1* %PF, align 1, !mcsema_real_eip !41
  store i1 %255, i1* %AF, align 1, !mcsema_real_eip !41
  store i1 %257, i1* %ZF, align 1, !mcsema_real_eip !41
  store i1 %256, i1* %SF, align 1, !mcsema_real_eip !41
  store i1 %260, i1* %OF, align 1, !mcsema_real_eip !41
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !41
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !41
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !41
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !41
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !41
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !41
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !41
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !41
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !41
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !41
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !41
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !41
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !41
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !41
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !41
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !41
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !41
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !41
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !41
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !41
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !41
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !41
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !41
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !41
  %269 = load i64, i64* %46, align 4
  store i64 %269, i64* %45, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !41
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !41
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !41
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !41
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !41
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !41
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !41
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !41
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !41
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !41
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !41
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !41
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !41
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !41
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !41
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !41
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !41
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !41
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !41
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !41
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !41
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !41
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !41
  ret void, !mcsema_real_eip !41
}

declare x86_64_sysvcc i64 @atoi(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_60(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !24
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !24
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !24
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !24
  %1 = load i64, i64* %RBX, !mcsema_real_eip !24
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !24
  %2 = load i64, i64* %RCX, !mcsema_real_eip !24
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !24
  %3 = load i64, i64* %RDX, !mcsema_real_eip !24
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !24
  %4 = load i64, i64* %RSI, !mcsema_real_eip !24
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !24
  %5 = load i64, i64* %RDI, !mcsema_real_eip !24
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !24
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !24
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !24
  %6 = load i64, i64* %R8, !mcsema_real_eip !24
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !24
  %7 = load i64, i64* %R9, !mcsema_real_eip !24
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !24
  %8 = load i64, i64* %R10, !mcsema_real_eip !24
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !24
  %9 = load i64, i64* %R11, !mcsema_real_eip !24
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !24
  %10 = load i64, i64* %R12, !mcsema_real_eip !24
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !24
  %11 = load i64, i64* %R13, !mcsema_real_eip !24
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !24
  %12 = load i64, i64* %R14, !mcsema_real_eip !24
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !24
  %13 = load i64, i64* %R15, !mcsema_real_eip !24
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !24
  %14 = load i64, i64* %RIP, !mcsema_real_eip !24
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !24
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !24
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !24
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !24
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !24
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !24
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !24
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !24
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !24
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !24
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !24
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !24
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !24
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !24
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !24
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !24
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !24
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !24
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !24
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !24
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !24
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !24
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !24
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !24
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !24
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !24
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !24
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !24
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !24
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !24
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !24
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !24
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !24
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !24
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !24
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !24
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !24
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !24
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !24
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !24
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !24
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !24
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !24
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !24
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !24
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !24
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !24
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !24
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !24
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !24
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !24
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !24
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !24
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !24
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !24
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !24
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !24
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !24
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !24
  %48 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !24
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !24
  %49 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !24
  %50 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !24
  %51 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !24
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !24
  %52 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !24
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !24
  %53 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !24
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !24
  %54 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !24
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !24
  %55 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !24
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !24
  %56 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !24
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !24
  %57 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !24
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !24
  %58 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !24
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !24
  %59 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !24
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !24
  %60 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !24
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !24
  %61 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !24
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !24
  %62 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !24
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !24
  %63 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !24
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !24
  %64 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !24
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !24
  %65 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !24
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !24
  %66 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !24
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !24
  %67 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !24
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !24
  %68 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !24
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !24
  %69 = load i64, i64* %STACK_BASE, !mcsema_real_eip !24
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !24
  %70 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !24
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -40
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -16
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  store i64 %5, i64* %_allin_new_bt_12, !mcsema_real_eip !25
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %_ptr_to_int_60 = ptrtoint i64* %_allin_new_bt_15 to i64
  %_offset_above_rbp_63 = sub i64 %_ptr_to_int_60, %_local_end_to_int_
  %_pot_address_in_parent_stack_64 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_63
  %_cond1_65 = icmp ugt i8* %_new_gep_14, %_local_stack_end_ptr_
  %_cond2_1_66 = icmp ugt i8* %_new_gep_14, %_parent_stack_end_ptr_
  %_cond2_2_67 = icmp ult i8* %_new_gep_14, %_parent_stack_start_ptr_
  %_cond2_68 = or i1 %_cond2_1_66, %_cond2_2_67
  %_cond4_69 = icmp ule i8* %_pot_address_in_parent_stack_64, %_parent_stack_end_ptr_
  %_cond1_n_cond2_70 = and i1 %_cond1_65, %_cond2_68
  %_cond1_n_cond2_cond3_71 = and i1 %_cond1_n_cond2_70, %_cond4_69
  br i1 %_cond1_n_cond2_cond3_71, label %71, label %72

; <label>:71:                                     ; preds = %46
  %_address_in_parent_stack_bt_73 = bitcast i8* %_pot_address_in_parent_stack_64 to i64*
  br label %72

; <label>:72:                                     ; preds = %46, %71
  %73 = phi i64* [ %_allin_new_bt_15, %46 ], [ %_address_in_parent_stack_bt_73, %71 ]
  %_new_load_74 = load i64, i64* %73
  %74 = icmp ult i64 %_new_load_74, 2, !mcsema_real_eip !26
  br i1 %74, label %block_0x17, label %block_0x24, !mcsema_real_eip !27

block_0x17:                                       ; preds = %72
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 1, i64* %_allin_new_bt_18, !mcsema_real_eip !28
  br label %block_0x50, !mcsema_real_eip !29

block_0x24:                                       ; preds = %72
  br i1 %_cond1_n_cond2_cond3_71, label %75, label %76

; <label>:75:                                     ; preds = %block_0x24
  %_address_in_parent_stack_bt_88 = bitcast i8* %_pot_address_in_parent_stack_64 to i64*
  br label %76

; <label>:76:                                     ; preds = %block_0x24, %75
  %77 = phi i64* [ %_allin_new_bt_15, %block_0x24 ], [ %_address_in_parent_stack_bt_88, %75 ]
  %_new_load_89 = load i64, i64* %77
  %78 = add i64 %_new_load_89, -2
  %79 = xor i64 %78, %_new_load_89, !mcsema_real_eip !30
  %80 = and i64 %79, 16, !mcsema_real_eip !30
  %81 = icmp ne i64 %80, 0, !mcsema_real_eip !30
  %82 = trunc i64 %78 to i8, !mcsema_real_eip !30
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !30
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = icmp eq i64 %78, 0, !mcsema_real_eip !30
  %87 = icmp slt i64 %78, 0
  %88 = icmp ult i64 %_new_load_89, 2, !mcsema_real_eip !30
  %89 = and i64 %79, %_new_load_89, !mcsema_real_eip !30
  %90 = icmp slt i64 %89, 0
  %_load_rsp_ptr_21 = load i8*, i8** %_RSP_ptr_
  %_new_gep_22 = getelementptr i8, i8* %_load_rsp_ptr_21, i64 -8
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_23, !mcsema_real_eip !31
  store volatile i8* %_new_gep_22, i8** %_RSP_ptr_
  store i64 %78, i64* %RAX, !mcsema_real_eip !31
  store i64 %1, i64* %RBX, !mcsema_real_eip !31
  store i64 %2, i64* %RCX, !mcsema_real_eip !31
  store i64 %3, i64* %RDX, !mcsema_real_eip !31
  store i64 %4, i64* %RSI, !mcsema_real_eip !31
  store i64 %78, i64* %RDI, !mcsema_real_eip !31
  %_new_ptr2int_25 = ptrtoint i8* %_new_gep_22 to i64
  store volatile i64 %_new_ptr2int_25, i64* %RSP
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_27 = ptrtoint i8* %_load_rbp_ptr_26 to i64
  store volatile i64 %_new_ptr2int_27, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !31
  store i64 %7, i64* %R9, !mcsema_real_eip !31
  store i64 %8, i64* %R10, !mcsema_real_eip !31
  store i64 %9, i64* %R11, !mcsema_real_eip !31
  store i64 %10, i64* %R12, !mcsema_real_eip !31
  store i64 %11, i64* %R13, !mcsema_real_eip !31
  store i64 %12, i64* %R14, !mcsema_real_eip !31
  store i64 %13, i64* %R15, !mcsema_real_eip !31
  store i64 %14, i64* %RIP, !mcsema_real_eip !31
  store i1 %88, i1* %CF, align 1, !mcsema_real_eip !31
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !31
  store i1 %81, i1* %AF, align 1, !mcsema_real_eip !31
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !31
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !31
  store i1 %90, i1* %OF, align 1, !mcsema_real_eip !31
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !31
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !31
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %_ptr_to_int_90 = ptrtoint i64* %44 to i64
  %_ptr_bt_92 = bitcast i64* %44 to i8*
  %_offset_above_rbp_93 = sub i64 %_ptr_to_int_90, %_local_end_to_int_
  %_pot_address_in_parent_stack_94 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_93
  %_cond1_95 = icmp ugt i8* %_ptr_bt_92, %_local_stack_end_ptr_
  %_cond2_1_96 = icmp ugt i8* %_ptr_bt_92, %_parent_stack_end_ptr_
  %_cond2_2_97 = icmp ult i8* %_ptr_bt_92, %_parent_stack_start_ptr_
  %_cond2_98 = or i1 %_cond2_1_96, %_cond2_2_97
  %_cond4_99 = icmp ule i8* %_pot_address_in_parent_stack_94, %_parent_stack_end_ptr_
  %_cond1_n_cond2_100 = and i1 %_cond1_95, %_cond2_98
  %_cond1_n_cond2_cond3_101 = and i1 %_cond1_n_cond2_100, %_cond4_99
  br i1 %_cond1_n_cond2_cond3_101, label %91, label %92

; <label>:91:                                     ; preds = %76
  %_address_in_parent_stack_bt_103 = bitcast i8* %_pot_address_in_parent_stack_94 to i64*
  br label %92

; <label>:92:                                     ; preds = %76, %91
  %93 = phi i64* [ %44, %76 ], [ %_address_in_parent_stack_bt_103, %91 ]
  %_new_load_104 = load i64, i64* %93
  store i64 %_new_load_104, i64* %43, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !31
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !31
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !31
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !31
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !31
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !31
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !31
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !31
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !31
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !31
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !31
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !31
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !31
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !31
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !31
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !31
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !31
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_58)
  %94 = load i64, i64* %RAX, !mcsema_real_eip !31
  %95 = load i64, i64* %RBX, !mcsema_real_eip !31
  %96 = load i64, i64* %RCX, !mcsema_real_eip !31
  %97 = load i64, i64* %RDX, !mcsema_real_eip !31
  %98 = load i64, i64* %RSI, !mcsema_real_eip !31
  %99 = load i64, i64* %R8, !mcsema_real_eip !31
  %100 = load i64, i64* %R9, !mcsema_real_eip !31
  %101 = load i64, i64* %R10, !mcsema_real_eip !31
  %102 = load i64, i64* %R11, !mcsema_real_eip !31
  %103 = load i64, i64* %R12, !mcsema_real_eip !31
  %104 = load i64, i64* %R13, !mcsema_real_eip !31
  %105 = load i64, i64* %R14, !mcsema_real_eip !31
  %106 = load i64, i64* %R15, !mcsema_real_eip !31
  %107 = load i64, i64* %RIP, !mcsema_real_eip !31
  %108 = load i1, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !31
  %109 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %110 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %111 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %112 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %113 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %114 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %115 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %116 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %117 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %118 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %119 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %120 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %121 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %122 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %123 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %124 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %125 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %126 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %127 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %128 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %129 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %130 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %131 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  br i1 %_cond1_n_cond2_cond3_, label %132, label %133

; <label>:132:                                    ; preds = %92
  %_address_in_parent_stack_bt_118 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %133

; <label>:133:                                    ; preds = %92, %132
  %134 = phi i64* [ %43, %92 ], [ %_address_in_parent_stack_bt_118, %132 ]
  %_new_load_119 = load i64, i64* %134
  store i64 %_new_load_119, i64* %44, align 4
  %135 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %136 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !31
  %137 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %138 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !31
  %139 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !31
  %140 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !31
  %141 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !31
  %142 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !31
  %143 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !31
  %144 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !31
  %145 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !31
  %146 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !31
  %147 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !31
  %148 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !31
  %149 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !31
  %150 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !31
  %151 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !31
  %152 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !31
  %153 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !31
  %154 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !31
  %155 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !31
  %156 = load i64, i64* %STACK_BASE, !mcsema_real_eip !31
  %157 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !31
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_120 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_123 = sub i64 %_ptr_to_int_120, %_local_end_to_int_
  %_pot_address_in_parent_stack_124 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_123
  %_cond1_125 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_126 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_127 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_128 = or i1 %_cond2_1_126, %_cond2_2_127
  %_cond4_129 = icmp ule i8* %_pot_address_in_parent_stack_124, %_parent_stack_end_ptr_
  %_cond1_n_cond2_130 = and i1 %_cond1_125, %_cond2_128
  %_cond1_n_cond2_cond3_131 = and i1 %_cond1_n_cond2_130, %_cond4_129
  br i1 %_cond1_n_cond2_cond3_131, label %158, label %159

; <label>:158:                                    ; preds = %133
  %_address_in_parent_stack_bt_133 = bitcast i8* %_pot_address_in_parent_stack_124 to i64*
  br label %159

; <label>:159:                                    ; preds = %133, %158
  %160 = phi i64* [ %_allin_new_bt_30, %133 ], [ %_address_in_parent_stack_bt_133, %158 ]
  %_new_load_134 = load i64, i64* %160
  %161 = add i64 %_new_load_134, -1
  %162 = xor i64 %161, %_new_load_134, !mcsema_real_eip !33
  %163 = and i64 %162, 16, !mcsema_real_eip !33
  %164 = icmp ne i64 %163, 0, !mcsema_real_eip !33
  %165 = trunc i64 %161 to i8, !mcsema_real_eip !33
  %166 = tail call i8 @llvm.ctpop.i8(i8 %165), !mcsema_real_eip !33
  %167 = and i8 %166, 1
  %168 = icmp eq i8 %167, 0
  %169 = icmp eq i64 %161, 0, !mcsema_real_eip !33
  %170 = icmp slt i64 %161, 0
  %171 = icmp eq i64 %_new_load_134, 0
  %172 = and i64 %162, %_new_load_134, !mcsema_real_eip !33
  %173 = icmp slt i64 %172, 0
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %94, i64* %_allin_new_bt_33, !mcsema_real_eip !34
  %_load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rsp_ptr_34, i64 -8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_36, !mcsema_real_eip !35
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_
  store i64 %94, i64* %RAX, !mcsema_real_eip !35
  store i64 %95, i64* %RBX, !mcsema_real_eip !35
  store i64 %96, i64* %RCX, !mcsema_real_eip !35
  store i64 %97, i64* %RDX, !mcsema_real_eip !35
  store i64 %98, i64* %RSI, !mcsema_real_eip !35
  store i64 %161, i64* %RDI, !mcsema_real_eip !35
  %_new_ptr2int_38 = ptrtoint i8* %_new_gep_35 to i64
  store volatile i64 %_new_ptr2int_38, i64* %RSP
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_40 = ptrtoint i8* %_load_rbp_ptr_39 to i64
  store volatile i64 %_new_ptr2int_40, i64* %RBP
  store i64 %99, i64* %R8, !mcsema_real_eip !35
  store i64 %100, i64* %R9, !mcsema_real_eip !35
  store i64 %101, i64* %R10, !mcsema_real_eip !35
  store i64 %102, i64* %R11, !mcsema_real_eip !35
  store i64 %103, i64* %R12, !mcsema_real_eip !35
  store i64 %104, i64* %R13, !mcsema_real_eip !35
  store i64 %105, i64* %R14, !mcsema_real_eip !35
  store i64 %106, i64* %R15, !mcsema_real_eip !35
  store i64 %107, i64* %RIP, !mcsema_real_eip !35
  store i1 %171, i1* %CF, align 1, !mcsema_real_eip !35
  store i1 %168, i1* %PF, align 1, !mcsema_real_eip !35
  store i1 %164, i1* %AF, align 1, !mcsema_real_eip !35
  store i1 %169, i1* %ZF, align 1, !mcsema_real_eip !35
  store i1 %170, i1* %SF, align 1, !mcsema_real_eip !35
  store i1 %173, i1* %OF, align 1, !mcsema_real_eip !35
  store i1 %108, i1* %DF, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !35
  store i1 %109, i1* %FPU_B, align 1, !mcsema_real_eip !35
  store i1 %110, i1* %FPU_C3, align 1, !mcsema_real_eip !35
  store i3 %111, i3* %FPU_TOP, align 1, !mcsema_real_eip !35
  store i1 %112, i1* %FPU_C2, align 1, !mcsema_real_eip !35
  store i1 %113, i1* %FPU_C1, align 1, !mcsema_real_eip !35
  store i1 %114, i1* %FPU_C0, align 1, !mcsema_real_eip !35
  store i1 %115, i1* %FPU_ES, align 1, !mcsema_real_eip !35
  store i1 %116, i1* %FPU_SF, align 1, !mcsema_real_eip !35
  store i1 %117, i1* %FPU_PE, align 1, !mcsema_real_eip !35
  store i1 %118, i1* %FPU_UE, align 1, !mcsema_real_eip !35
  store i1 %119, i1* %FPU_OE, align 1, !mcsema_real_eip !35
  store i1 %120, i1* %FPU_ZE, align 1, !mcsema_real_eip !35
  store i1 %121, i1* %FPU_DE, align 1, !mcsema_real_eip !35
  store i1 %122, i1* %FPU_IE, align 1, !mcsema_real_eip !35
  store i1 %123, i1* %FPU_X, align 1, !mcsema_real_eip !35
  store i2 %124, i2* %FPU_RC, align 1, !mcsema_real_eip !35
  store i2 %125, i2* %FPU_PC, align 1, !mcsema_real_eip !35
  store i1 %126, i1* %FPU_PM, align 1, !mcsema_real_eip !35
  store i1 %127, i1* %FPU_UM, align 1, !mcsema_real_eip !35
  store i1 %128, i1* %FPU_OM, align 1, !mcsema_real_eip !35
  store i1 %129, i1* %FPU_ZM, align 1, !mcsema_real_eip !35
  store i1 %130, i1* %FPU_DM, align 1, !mcsema_real_eip !35
  store i1 %131, i1* %FPU_IM, align 1, !mcsema_real_eip !35
  br i1 %_cond1_n_cond2_cond3_101, label %174, label %175

; <label>:174:                                    ; preds = %159
  %_address_in_parent_stack_bt_148 = bitcast i8* %_pot_address_in_parent_stack_94 to i64*
  br label %175

; <label>:175:                                    ; preds = %159, %174
  %176 = phi i64* [ %44, %159 ], [ %_address_in_parent_stack_bt_148, %174 ]
  %_new_load_149 = load i64, i64* %176
  store i64 %_new_load_149, i64* %43, align 4
  store i16 %135, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !35
  store i64 %136, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !35
  store i16 %137, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !35
  store i64 %138, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !35
  store i11 %139, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !35
  store i128 %140, i128* %XMM0, align 1, !mcsema_real_eip !35
  store i128 %141, i128* %XMM1, align 1, !mcsema_real_eip !35
  store i128 %142, i128* %XMM2, align 1, !mcsema_real_eip !35
  store i128 %143, i128* %XMM3, align 1, !mcsema_real_eip !35
  store i128 %144, i128* %XMM4, align 1, !mcsema_real_eip !35
  store i128 %145, i128* %XMM5, align 1, !mcsema_real_eip !35
  store i128 %146, i128* %XMM6, align 1, !mcsema_real_eip !35
  store i128 %147, i128* %XMM7, align 1, !mcsema_real_eip !35
  store i128 %148, i128* %XMM8, align 1, !mcsema_real_eip !35
  store i128 %149, i128* %XMM9, align 1, !mcsema_real_eip !35
  store i128 %150, i128* %XMM10, align 1, !mcsema_real_eip !35
  store i128 %151, i128* %XMM11, align 1, !mcsema_real_eip !35
  store i128 %152, i128* %XMM12, align 1, !mcsema_real_eip !35
  store i128 %153, i128* %XMM13, align 1, !mcsema_real_eip !35
  store i128 %154, i128* %XMM14, align 1, !mcsema_real_eip !35
  store i128 %155, i128* %XMM15, align 1, !mcsema_real_eip !35
  store i64 %156, i64* %STACK_BASE, align 1, !mcsema_real_eip !35
  store i64 %157, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !35
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_59)
  %177 = load i64, i64* %RAX, !mcsema_real_eip !35
  %178 = load i64, i64* %RBX, !mcsema_real_eip !35
  %179 = load i64, i64* %RCX, !mcsema_real_eip !35
  %180 = load i64, i64* %RDX, !mcsema_real_eip !35
  %181 = load i64, i64* %RSI, !mcsema_real_eip !35
  %182 = load i64, i64* %R8, !mcsema_real_eip !35
  %183 = load i64, i64* %R9, !mcsema_real_eip !35
  %184 = load i64, i64* %R10, !mcsema_real_eip !35
  %185 = load i64, i64* %R11, !mcsema_real_eip !35
  %186 = load i64, i64* %R12, !mcsema_real_eip !35
  %187 = load i64, i64* %R13, !mcsema_real_eip !35
  %188 = load i64, i64* %R14, !mcsema_real_eip !35
  %189 = load i64, i64* %R15, !mcsema_real_eip !35
  %190 = load i64, i64* %RIP, !mcsema_real_eip !35
  %191 = load i1, i1* %DF, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !35
  %192 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !35
  %193 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !35
  %194 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !35
  %195 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !35
  %196 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !35
  %197 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !35
  %198 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !35
  %199 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !35
  %200 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !35
  %201 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !35
  %202 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !35
  %203 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !35
  %204 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !35
  %205 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !35
  %206 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !35
  %207 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !35
  %208 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !35
  %209 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !35
  %210 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !35
  %211 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !35
  %212 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !35
  %213 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !35
  %214 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !35
  br i1 %_cond1_n_cond2_cond3_, label %215, label %216

; <label>:215:                                    ; preds = %175
  %_address_in_parent_stack_bt_163 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %216

; <label>:216:                                    ; preds = %175, %215
  %217 = phi i64* [ %43, %175 ], [ %_address_in_parent_stack_bt_163, %215 ]
  %_new_load_164 = load i64, i64* %217
  store i64 %_new_load_164, i64* %44, align 4
  %218 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !35
  %219 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !35
  %220 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !35
  %221 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !35
  %222 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !35
  %223 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !35
  %224 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !35
  %225 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !35
  %226 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !35
  %227 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !35
  %228 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !35
  %229 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !35
  %230 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !35
  %231 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !35
  %232 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !35
  %233 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !35
  %234 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !35
  %235 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !35
  %236 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !35
  %237 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !35
  %238 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !35
  %239 = load i64, i64* %STACK_BASE, !mcsema_real_eip !35
  %240 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !35
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -24
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %_ptr_to_int_165 = ptrtoint i64* %_allin_new_bt_43 to i64
  %_offset_above_rbp_168 = sub i64 %_ptr_to_int_165, %_local_end_to_int_
  %_pot_address_in_parent_stack_169 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_168
  %_cond1_170 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_171 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_172 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_173 = or i1 %_cond2_1_171, %_cond2_2_172
  %_cond4_174 = icmp ule i8* %_pot_address_in_parent_stack_169, %_parent_stack_end_ptr_
  %_cond1_n_cond2_175 = and i1 %_cond1_170, %_cond2_173
  %_cond1_n_cond2_cond3_176 = and i1 %_cond1_n_cond2_175, %_cond4_174
  br i1 %_cond1_n_cond2_cond3_176, label %241, label %242

; <label>:241:                                    ; preds = %216
  %_address_in_parent_stack_bt_178 = bitcast i8* %_pot_address_in_parent_stack_169 to i64*
  br label %242

; <label>:242:                                    ; preds = %216, %241
  %243 = phi i64* [ %_allin_new_bt_43, %216 ], [ %_address_in_parent_stack_bt_178, %241 ]
  %_new_load_179 = load i64, i64* %243
  %uadd351 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %177, i64 %_new_load_179)
  %244 = extractvalue { i64, i1 } %uadd351, 0
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -8
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  store i64 %244, i64* %_allin_new_bt_46, !mcsema_real_eip !37
  br label %block_0x50, !mcsema_real_eip !28

block_0x50:                                       ; preds = %242, %block_0x17
  %RBX_val.0 = phi i64 [ %1, %block_0x17 ], [ %178, %242 ]
  %RCX_val.0 = phi i64 [ %2, %block_0x17 ], [ %179, %242 ]
  %RDX_val.0 = phi i64 [ %3, %block_0x17 ], [ %180, %242 ]
  %RSI_val.0 = phi i64 [ %4, %block_0x17 ], [ %181, %242 ]
  %RDI_val.0 = phi i64 [ %5, %block_0x17 ], [ %244, %242 ]
  %R8_val.0 = phi i64 [ %6, %block_0x17 ], [ %182, %242 ]
  %R9_val.0 = phi i64 [ %7, %block_0x17 ], [ %183, %242 ]
  %R10_val.0 = phi i64 [ %8, %block_0x17 ], [ %184, %242 ]
  %R11_val.0 = phi i64 [ %9, %block_0x17 ], [ %185, %242 ]
  %R12_val.0 = phi i64 [ %10, %block_0x17 ], [ %186, %242 ]
  %R13_val.0 = phi i64 [ %11, %block_0x17 ], [ %187, %242 ]
  %R14_val.0 = phi i64 [ %12, %block_0x17 ], [ %188, %242 ]
  %RIP_val.0 = phi i64 [ %14, %block_0x17 ], [ %190, %242 ]
  %DF_val.0 = phi i1 [ %15, %block_0x17 ], [ %191, %242 ]
  %FPU_B_val.0 = phi i1 [ %19, %block_0x17 ], [ %192, %242 ]
  %FPU_C3_val.0 = phi i1 [ %20, %block_0x17 ], [ %193, %242 ]
  %FPU_TOP_val.0 = phi i3 [ %21, %block_0x17 ], [ %194, %242 ]
  %FPU_C2_val.0 = phi i1 [ %22, %block_0x17 ], [ %195, %242 ]
  %FPU_C1_val.0 = phi i1 [ %23, %block_0x17 ], [ %196, %242 ]
  %FPU_C0_val.0 = phi i1 [ %24, %block_0x17 ], [ %197, %242 ]
  %FPU_ES_val.0 = phi i1 [ %25, %block_0x17 ], [ %198, %242 ]
  %FPU_SF_val.0 = phi i1 [ %26, %block_0x17 ], [ %199, %242 ]
  %FPU_PE_val.0 = phi i1 [ %27, %block_0x17 ], [ %200, %242 ]
  %FPU_UE_val.0 = phi i1 [ %28, %block_0x17 ], [ %201, %242 ]
  %FPU_OE_val.0 = phi i1 [ %29, %block_0x17 ], [ %202, %242 ]
  %FPU_ZE_val.0 = phi i1 [ %30, %block_0x17 ], [ %203, %242 ]
  %FPU_DE_val.0 = phi i1 [ %31, %block_0x17 ], [ %204, %242 ]
  %FPU_IE_val.0 = phi i1 [ %32, %block_0x17 ], [ %205, %242 ]
  %FPU_X_val.0 = phi i1 [ %33, %block_0x17 ], [ %206, %242 ]
  %FPU_RC_val.0 = phi i2 [ %34, %block_0x17 ], [ %207, %242 ]
  %FPU_PC_val.0 = phi i2 [ %35, %block_0x17 ], [ %208, %242 ]
  %FPU_PM_val.0 = phi i1 [ %36, %block_0x17 ], [ %209, %242 ]
  %FPU_UM_val.0 = phi i1 [ %37, %block_0x17 ], [ %210, %242 ]
  %FPU_OM_val.0 = phi i1 [ %38, %block_0x17 ], [ %211, %242 ]
  %FPU_ZM_val.0 = phi i1 [ %39, %block_0x17 ], [ %212, %242 ]
  %FPU_DM_val.0 = phi i1 [ %40, %block_0x17 ], [ %213, %242 ]
  %FPU_IM_val.0 = phi i1 [ %41, %block_0x17 ], [ %214, %242 ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %48, %block_0x17 ], [ %218, %242 ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %49, %block_0x17 ], [ %219, %242 ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %50, %block_0x17 ], [ %220, %242 ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %51, %block_0x17 ], [ %221, %242 ]
  %FPU_FOPCODE_val.0 = phi i11 [ %52, %block_0x17 ], [ %222, %242 ]
  %XMM0_val.0 = phi i128 [ %53, %block_0x17 ], [ %223, %242 ]
  %XMM1_val.0 = phi i128 [ %54, %block_0x17 ], [ %224, %242 ]
  %XMM2_val.0 = phi i128 [ %55, %block_0x17 ], [ %225, %242 ]
  %XMM3_val.0 = phi i128 [ %56, %block_0x17 ], [ %226, %242 ]
  %XMM4_val.0 = phi i128 [ %57, %block_0x17 ], [ %227, %242 ]
  %XMM5_val.0 = phi i128 [ %58, %block_0x17 ], [ %228, %242 ]
  %XMM6_val.0 = phi i128 [ %59, %block_0x17 ], [ %229, %242 ]
  %XMM7_val.0 = phi i128 [ %60, %block_0x17 ], [ %230, %242 ]
  %XMM8_val.0 = phi i128 [ %61, %block_0x17 ], [ %231, %242 ]
  %XMM9_val.0 = phi i128 [ %62, %block_0x17 ], [ %232, %242 ]
  %XMM10_val.0 = phi i128 [ %63, %block_0x17 ], [ %233, %242 ]
  %XMM11_val.0 = phi i128 [ %64, %block_0x17 ], [ %234, %242 ]
  %XMM12_val.0 = phi i128 [ %65, %block_0x17 ], [ %235, %242 ]
  %XMM13_val.0 = phi i128 [ %66, %block_0x17 ], [ %236, %242 ]
  %XMM14_val.0 = phi i128 [ %67, %block_0x17 ], [ %237, %242 ]
  %XMM15_val.0 = phi i128 [ %68, %block_0x17 ], [ %238, %242 ]
  %STACK_BASE_val.0 = phi i64 [ %69, %block_0x17 ], [ %239, %242 ]
  %STACK_LIMIT_val.0 = phi i64 [ %70, %block_0x17 ], [ %240, %242 ]
  %R15_val.0 = phi i64 [ %13, %block_0x17 ], [ %189, %242 ]
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -8
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %_ptr_to_int_180 = ptrtoint i64* %_allin_new_bt_49 to i64
  %_offset_above_rbp_183 = sub i64 %_ptr_to_int_180, %_local_end_to_int_
  %_pot_address_in_parent_stack_184 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_183
  %_cond1_185 = icmp ugt i8* %_new_gep_48, %_local_stack_end_ptr_
  %_cond2_1_186 = icmp ugt i8* %_new_gep_48, %_parent_stack_end_ptr_
  %_cond2_2_187 = icmp ult i8* %_new_gep_48, %_parent_stack_start_ptr_
  %_cond2_188 = or i1 %_cond2_1_186, %_cond2_2_187
  %_cond4_189 = icmp ule i8* %_pot_address_in_parent_stack_184, %_parent_stack_end_ptr_
  %_cond1_n_cond2_190 = and i1 %_cond1_185, %_cond2_188
  %_cond1_n_cond2_cond3_191 = and i1 %_cond1_n_cond2_190, %_cond4_189
  br i1 %_cond1_n_cond2_cond3_191, label %245, label %246

; <label>:245:                                    ; preds = %block_0x50
  %_address_in_parent_stack_bt_193 = bitcast i8* %_pot_address_in_parent_stack_184 to i64*
  br label %246

; <label>:246:                                    ; preds = %block_0x50, %245
  %247 = phi i64* [ %_allin_new_bt_49, %block_0x50 ], [ %_address_in_parent_stack_bt_193, %245 ]
  %_new_load_194 = load i64, i64* %247
  %_load_rsp_ptr_50 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_51 = ptrtoint i8* %_load_rsp_ptr_50 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_51, i64 32)
  %248 = extractvalue { i64, i1 } %uadd, 0
  %249 = xor i64 %248, %_new_ptr2int_51, !mcsema_real_eip !39
  %250 = and i64 %249, 16, !mcsema_real_eip !39
  %251 = icmp ne i64 %250, 0, !mcsema_real_eip !39
  %252 = icmp slt i64 %248, 0
  %253 = icmp eq i64 %248, 0, !mcsema_real_eip !39
  %254 = xor i64 %_new_ptr2int_51, -9223372036854775808, !mcsema_real_eip !39
  %255 = and i64 %249, %254, !mcsema_real_eip !39
  %256 = icmp slt i64 %255, 0
  %257 = trunc i64 %248 to i8, !mcsema_real_eip !39
  %258 = tail call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !39
  %259 = and i8 %258, 1
  %260 = icmp eq i8 %259, 0
  %261 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %248 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %262 = inttoptr i64 %248 to i64*, !mcsema_real_eip !40
  %_ptr_bt_197 = bitcast i64* %262 to i8*
  %_offset_above_rbp_198 = sub i64 %248, %_local_end_to_int_
  %_pot_address_in_parent_stack_199 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_198
  %_cond1_200 = icmp ugt i8* %_ptr_bt_197, %_local_stack_end_ptr_
  %_cond2_1_201 = icmp ugt i8* %_ptr_bt_197, %_parent_stack_end_ptr_
  %_cond2_2_202 = icmp ult i8* %_ptr_bt_197, %_parent_stack_start_ptr_
  %_cond2_203 = or i1 %_cond2_1_201, %_cond2_2_202
  %_cond4_204 = icmp ule i8* %_pot_address_in_parent_stack_199, %_parent_stack_end_ptr_
  %_cond1_n_cond2_205 = and i1 %_cond1_200, %_cond2_203
  %_cond1_n_cond2_cond3_206 = and i1 %_cond1_n_cond2_205, %_cond4_204
  br i1 %_cond1_n_cond2_cond3_206, label %263, label %264

; <label>:263:                                    ; preds = %246
  %_address_in_parent_stack_bt_208 = bitcast i8* %_pot_address_in_parent_stack_199 to i64*
  br label %264

; <label>:264:                                    ; preds = %246, %263
  %265 = phi i64* [ %262, %246 ], [ %_address_in_parent_stack_bt_208, %263 ]
  %_new_load_209 = load i64, i64* %265
  %_new_int2ptr_52 = inttoptr i64 %_new_load_209 to i8*
  store volatile i8* %_new_int2ptr_52, i8** %_RBP_ptr_
  %266 = add i64 %248, 16, !mcsema_real_eip !41
  %_new_int2ptr_53 = inttoptr i64 %266 to i8*
  store volatile i8* %_new_int2ptr_53, i8** %_RSP_ptr_
  store i64 %_new_load_194, i64* %RAX, !mcsema_real_eip !41
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !41
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !41
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !41
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !41
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !41
  store volatile i64 %266, i64* %RSP
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_57 = ptrtoint i8* %_load_rbp_ptr_56 to i64
  store volatile i64 %_new_ptr2int_57, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !41
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !41
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !41
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !41
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !41
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !41
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !41
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !41
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !41
  store i1 %261, i1* %CF, align 1, !mcsema_real_eip !41
  store i1 %260, i1* %PF, align 1, !mcsema_real_eip !41
  store i1 %251, i1* %AF, align 1, !mcsema_real_eip !41
  store i1 %253, i1* %ZF, align 1, !mcsema_real_eip !41
  store i1 %252, i1* %SF, align 1, !mcsema_real_eip !41
  store i1 %256, i1* %OF, align 1, !mcsema_real_eip !41
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !41
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !41
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !41
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !41
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !41
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !41
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !41
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !41
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !41
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !41
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !41
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !41
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !41
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !41
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !41
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !41
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !41
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !41
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !41
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !41
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !41
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !41
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !41
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !41
  %_ptr_to_int_210 = ptrtoint i64* %44 to i64
  %_ptr_bt_212 = bitcast i64* %44 to i8*
  %_offset_above_rbp_213 = sub i64 %_ptr_to_int_210, %_local_end_to_int_
  %_pot_address_in_parent_stack_214 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_213
  %_cond1_215 = icmp ugt i8* %_ptr_bt_212, %_local_stack_end_ptr_
  %_cond2_1_216 = icmp ugt i8* %_ptr_bt_212, %_parent_stack_end_ptr_
  %_cond2_2_217 = icmp ult i8* %_ptr_bt_212, %_parent_stack_start_ptr_
  %_cond2_218 = or i1 %_cond2_1_216, %_cond2_2_217
  %_cond4_219 = icmp ule i8* %_pot_address_in_parent_stack_214, %_parent_stack_end_ptr_
  %_cond1_n_cond2_220 = and i1 %_cond1_215, %_cond2_218
  %_cond1_n_cond2_cond3_221 = and i1 %_cond1_n_cond2_220, %_cond4_219
  br i1 %_cond1_n_cond2_cond3_221, label %267, label %268

; <label>:267:                                    ; preds = %264
  %_address_in_parent_stack_bt_223 = bitcast i8* %_pot_address_in_parent_stack_214 to i64*
  br label %268

; <label>:268:                                    ; preds = %264, %267
  %269 = phi i64* [ %44, %264 ], [ %_address_in_parent_stack_bt_223, %267 ]
  %_new_load_224 = load i64, i64* %269
  store i64 %_new_load_224, i64* %43, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !41
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !41
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !41
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !41
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !41
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !41
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !41
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !41
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !41
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !41
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !41
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !41
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !41
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !41
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !41
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !41
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !41
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !41
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !41
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !41
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !41
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !41
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !41
  ret void, !mcsema_real_eip !41
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 96}
!3 = !{i64 104}
!4 = !{i64 111}
!5 = !{i64 114}
!6 = !{i64 118}
!7 = !{i64 122}
!8 = !{i64 128}
!9 = !{i64 132}
!10 = !{i64 136}
!11 = !{i64 141}
!12 = !{i64 144}
!13 = !{i64 154}
!14 = !{i64 157}
!15 = !{i64 162}
!16 = !{i64 165}
!17 = !{i64 168}
!18 = !{i64 172}
!19 = !{i64 192}
!20 = !{i64 199}
!21 = !{i64 204}
!22 = !{i64 208}
!23 = !{i64 209}
!24 = !{i64 0}
!25 = !{i64 8}
!26 = !{i64 12}
!27 = !{i64 17}
!28 = !{i64 23}
!29 = !{i64 31}
!30 = !{i64 40}
!31 = !{i64 47}
!32 = !{i64 52}
!33 = !{i64 56}
!34 = !{i64 60}
!35 = !{i64 64}
!36 = !{i64 69}
!37 = !{i64 76}
!38 = !{i64 80}
!39 = !{i64 84}
!40 = !{i64 88}
!41 = !{i64 89}
