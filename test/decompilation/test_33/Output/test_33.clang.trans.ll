; ModuleID = 'Output/test_33.clang.trans.bc'
source_filename = "Output/test_33.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [15 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x100 = internal constant %0 <{ [15 x i8] c"Ack(3,%d): %d\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_80(%struct.regs*) {
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
  br i1 %82, label %block_0xa0, label %block_0xb5, !mcsema_real_eip !7

block_0xa0:                                       ; preds = %entry
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
  br label %block_0xc2, !mcsema_real_eip !12

block_0xb5:                                       ; preds = %entry
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %94 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 8, i32* %94, !mcsema_real_eip !13
  br label %block_0xc2, !mcsema_real_eip !14

block_0xc2:                                       ; preds = %block_0xb5, %block_0xa0
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %95 = bitcast i64* %_allin_new_bt_33 to i32*
  %96 = load i32, i32* %95, !mcsema_real_eip !15
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -20
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %97 = bitcast i64* %_allin_new_bt_36 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !16
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -20
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %98 = bitcast i64* %_allin_new_bt_39 to i32*
  %99 = load i32, i32* %98, !mcsema_real_eip !17
  %100 = zext i32 %99 to i64, !mcsema_real_eip !17
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -28
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %101 = bitcast i64* %_allin_new_bt_45 to i32*
  store i32 %99, i32* %101, !mcsema_real_eip !18
  %102 = and i64 %100, 4294967295
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 -8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_48, !mcsema_real_eip !19
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %100, i64* %RAX, !mcsema_real_eip !19
  store i64 %1, i64* %RBX, !mcsema_real_eip !19
  store i64 %2, i64* %RCX, !mcsema_real_eip !19
  store i64 %3, i64* %RDX, !mcsema_real_eip !19
  store i64 %102, i64* %RSI, !mcsema_real_eip !19
  store i64 3, i64* %RDI, !mcsema_real_eip !19
  %_new_ptr2int_50 = ptrtoint i8* %_new_gep_47 to i64
  store volatile i64 %_new_ptr2int_50, i64* %RSP
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_52 = ptrtoint i8* %_load_rbp_ptr_51 to i64
  store volatile i64 %_new_ptr2int_52, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !19
  store i64 %7, i64* %R9, !mcsema_real_eip !19
  store i64 %8, i64* %R10, !mcsema_real_eip !19
  store i64 %9, i64* %R11, !mcsema_real_eip !19
  store i64 %10, i64* %R12, !mcsema_real_eip !19
  store i64 %11, i64* %R13, !mcsema_real_eip !19
  store i64 %12, i64* %R14, !mcsema_real_eip !19
  store i64 %13, i64* %R15, !mcsema_real_eip !19
  store i64 %14, i64* %RIP, !mcsema_real_eip !19
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !19
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !19
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !19
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !19
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !19
  store i1 %86, i1* %OF, align 1, !mcsema_real_eip !19
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !19
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !19
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %103 = load i64, i64* %44, align 4
  store i64 %103, i64* %43, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !19
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !19
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !19
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !19
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !19
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !19
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !19
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !19
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !19
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !19
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !19
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_79)
  %104 = load i64, i64* %RAX, !mcsema_real_eip !19
  %105 = load i64, i64* %RBX, !mcsema_real_eip !19
  %106 = load i64, i64* %RCX, !mcsema_real_eip !19
  %107 = load i64, i64* %R8, !mcsema_real_eip !19
  %108 = load i64, i64* %R9, !mcsema_real_eip !19
  %109 = load i64, i64* %R10, !mcsema_real_eip !19
  %110 = load i64, i64* %R11, !mcsema_real_eip !19
  %111 = load i64, i64* %R12, !mcsema_real_eip !19
  %112 = load i64, i64* %R13, !mcsema_real_eip !19
  %113 = load i64, i64* %R14, !mcsema_real_eip !19
  %114 = load i64, i64* %R15, !mcsema_real_eip !19
  %115 = load i64, i64* %RIP, !mcsema_real_eip !19
  %116 = load i1, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !19
  %117 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %118 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %119 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %120 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %121 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %122 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %123 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %124 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %125 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %126 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %127 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %128 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %129 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %130 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %131 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %132 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %133 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %134 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %135 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %136 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %137 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %138 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %139 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %140 = load i64, i64* %43, align 4
  store i64 %140, i64* %44, align 4
  %141 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %142 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !19
  %143 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %144 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !19
  %145 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !19
  %146 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !19
  %147 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !19
  %148 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !19
  %149 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !19
  %150 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !19
  %151 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !19
  %152 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !19
  %153 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !19
  %154 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !19
  %155 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !19
  %156 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !19
  %157 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !19
  %158 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !19
  %159 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !19
  %160 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !19
  %161 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !19
  %162 = load i64, i64* %STACK_BASE, !mcsema_real_eip !19
  %163 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !19
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -28
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %164 = bitcast i64* %_allin_new_bt_55 to i32*
  %165 = load i32, i32* %164, !mcsema_real_eip !20
  %166 = zext i32 %165 to i64, !mcsema_real_eip !20
  %167 = and i64 %104, 4294967295
  %_load_rsp_ptr_56 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_57 = bitcast i8* %_load_rsp_ptr_56 to i64*
  %168 = load i64, i64* %_allin_new_bt_57, !mcsema_real_eip !21
  %_new_gep_58 = getelementptr i8, i8* %_load_rsp_ptr_56, i64 8
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %169 = load i64, i64* %_allin_new_bt_59, !mcsema_real_eip !21
  %_new_gep_60 = getelementptr i8, i8* %_load_rsp_ptr_56, i64 16
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %170 = load i64, i64* %_allin_new_bt_61, !mcsema_real_eip !21
  %_new_gep_62 = getelementptr i8, i8* %_load_rsp_ptr_56, i64 24
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %171 = load i64, i64* %_allin_new_bt_63, !mcsema_real_eip !21
  %_new_gep_64 = getelementptr i8, i8* %_load_rsp_ptr_56, i64 32
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %172 = load i64, i64* %_allin_new_bt_65, !mcsema_real_eip !21
  %_new_gep_66 = getelementptr i8, i8* %_load_rsp_ptr_56, i64 40
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %173 = load i64, i64* %_allin_new_bt_67, !mcsema_real_eip !21
  %174 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %166, i64 %167, i64 %106, i64 %107, i64 %108, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173), !mcsema_real_eip !21
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -32
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %175 = trunc i64 %174 to i32, !mcsema_real_eip !22
  %176 = bitcast i64* %_allin_new_bt_70 to i32*
  store i32 %175, i32* %176, !mcsema_real_eip !22
  %_load_rsp_ptr_71 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_72 = ptrtoint i8* %_load_rsp_ptr_71 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_72, i64 32)
  %177 = extractvalue { i64, i1 } %uadd, 0
  %178 = xor i64 %177, %_new_ptr2int_72, !mcsema_real_eip !23
  %179 = and i64 %178, 16, !mcsema_real_eip !23
  %180 = icmp ne i64 %179, 0, !mcsema_real_eip !23
  %181 = icmp slt i64 %177, 0
  %182 = icmp eq i64 %177, 0, !mcsema_real_eip !23
  %183 = xor i64 %_new_ptr2int_72, -9223372036854775808, !mcsema_real_eip !23
  %184 = and i64 %178, %183, !mcsema_real_eip !23
  %185 = icmp slt i64 %184, 0
  %186 = trunc i64 %177 to i8, !mcsema_real_eip !23
  %187 = tail call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !23
  %188 = and i8 %187, 1
  %189 = icmp eq i8 %188, 0
  %190 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %177 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %191 = inttoptr i64 %177 to i64*, !mcsema_real_eip !24
  %192 = load i64, i64* %191, !mcsema_real_eip !24
  %_new_int2ptr_73 = inttoptr i64 %192 to i8*
  store volatile i8* %_new_int2ptr_73, i8** %_RBP_ptr_
  %193 = add i64 %177, 16, !mcsema_real_eip !25
  %_new_int2ptr_74 = inttoptr i64 %193 to i8*
  store volatile i8* %_new_int2ptr_74, i8** %_RSP_ptr_
  store i64 0, i64* %RAX, !mcsema_real_eip !25
  store i64 %105, i64* %RBX, !mcsema_real_eip !25
  store i64 %106, i64* %RCX, !mcsema_real_eip !25
  store i64 0, i64* %RDX, !mcsema_real_eip !25
  store i64 %166, i64* %RSI, !mcsema_real_eip !25
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %RDI, !mcsema_real_eip !25
  store volatile i64 %193, i64* %RSP
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_78 = ptrtoint i8* %_load_rbp_ptr_77 to i64
  store volatile i64 %_new_ptr2int_78, i64* %RBP
  store i64 %107, i64* %R8, !mcsema_real_eip !25
  store i64 %108, i64* %R9, !mcsema_real_eip !25
  store i64 %109, i64* %R10, !mcsema_real_eip !25
  store i64 %110, i64* %R11, !mcsema_real_eip !25
  store i64 %111, i64* %R12, !mcsema_real_eip !25
  store i64 %112, i64* %R13, !mcsema_real_eip !25
  store i64 %113, i64* %R14, !mcsema_real_eip !25
  store i64 %114, i64* %R15, !mcsema_real_eip !25
  store i64 %115, i64* %RIP, !mcsema_real_eip !25
  store i1 %190, i1* %CF, align 1, !mcsema_real_eip !25
  store i1 %189, i1* %PF, align 1, !mcsema_real_eip !25
  store i1 %180, i1* %AF, align 1, !mcsema_real_eip !25
  store i1 %182, i1* %ZF, align 1, !mcsema_real_eip !25
  store i1 %181, i1* %SF, align 1, !mcsema_real_eip !25
  store i1 %185, i1* %OF, align 1, !mcsema_real_eip !25
  store i1 %116, i1* %DF, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !25
  store i1 %117, i1* %FPU_B, align 1, !mcsema_real_eip !25
  store i1 %118, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  store i3 %119, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  store i1 %120, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  store i1 %121, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  store i1 %122, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  store i1 %123, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  store i1 %124, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  store i1 %125, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  store i1 %126, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  store i1 %127, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  store i1 %128, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  store i1 %129, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  store i1 %130, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  store i1 %131, i1* %FPU_X, align 1, !mcsema_real_eip !25
  store i2 %132, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  store i2 %133, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  store i1 %134, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  store i1 %135, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  store i1 %136, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  store i1 %137, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  store i1 %138, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  store i1 %139, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %194 = load i64, i64* %44, align 4
  store i64 %194, i64* %43, align 4
  store i16 %141, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  store i64 %142, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !25
  store i16 %143, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  store i64 %144, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !25
  store i11 %145, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !25
  store i128 %146, i128* %XMM0, align 1, !mcsema_real_eip !25
  store i128 %147, i128* %XMM1, align 1, !mcsema_real_eip !25
  store i128 %148, i128* %XMM2, align 1, !mcsema_real_eip !25
  store i128 %149, i128* %XMM3, align 1, !mcsema_real_eip !25
  store i128 %150, i128* %XMM4, align 1, !mcsema_real_eip !25
  store i128 %151, i128* %XMM5, align 1, !mcsema_real_eip !25
  store i128 %152, i128* %XMM6, align 1, !mcsema_real_eip !25
  store i128 %153, i128* %XMM7, align 1, !mcsema_real_eip !25
  store i128 %154, i128* %XMM8, align 1, !mcsema_real_eip !25
  store i128 %155, i128* %XMM9, align 1, !mcsema_real_eip !25
  store i128 %156, i128* %XMM10, align 1, !mcsema_real_eip !25
  store i128 %157, i128* %XMM11, align 1, !mcsema_real_eip !25
  store i128 %158, i128* %XMM12, align 1, !mcsema_real_eip !25
  store i128 %159, i128* %XMM13, align 1, !mcsema_real_eip !25
  store i128 %160, i128* %XMM14, align 1, !mcsema_real_eip !25
  store i128 %161, i128* %XMM15, align 1, !mcsema_real_eip !25
  store i64 %162, i64* %STACK_BASE, align 1, !mcsema_real_eip !25
  store i64 %163, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !25
  ret void, !mcsema_real_eip !25
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !26
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !26
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !26
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !26
  %1 = load i64, i64* %RBX, !mcsema_real_eip !26
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !26
  %2 = load i64, i64* %RCX, !mcsema_real_eip !26
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !26
  %3 = load i64, i64* %RDX, !mcsema_real_eip !26
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !26
  %4 = load i64, i64* %RSI, !mcsema_real_eip !26
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !26
  %5 = load i64, i64* %RDI, !mcsema_real_eip !26
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !26
  %6 = load i64, i64* %RSP, !mcsema_real_eip !26
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !26
  %7 = load i64, i64* %RBP, !mcsema_real_eip !26
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !26
  %8 = load i64, i64* %R8, !mcsema_real_eip !26
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !26
  %9 = load i64, i64* %R9, !mcsema_real_eip !26
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !26
  %10 = load i64, i64* %R10, !mcsema_real_eip !26
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !26
  %11 = load i64, i64* %R11, !mcsema_real_eip !26
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !26
  %12 = load i64, i64* %R12, !mcsema_real_eip !26
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !26
  %13 = load i64, i64* %R13, !mcsema_real_eip !26
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !26
  %14 = load i64, i64* %R14, !mcsema_real_eip !26
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !26
  %15 = load i64, i64* %R15, !mcsema_real_eip !26
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !26
  %16 = load i64, i64* %RIP, !mcsema_real_eip !26
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !26
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !26
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !26
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !26
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !26
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !26
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !26
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !26
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !26
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !26
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !26
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !26
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !26
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !26
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !26
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !26
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !26
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !26
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !26
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !26
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !26
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !26
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !26
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !26
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !26
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !26
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !26
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !26
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !26
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !26
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !26
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !26
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !26
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !26
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !26
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !26
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !26
  %45 = bitcast i8* %44 to i64*
  %46 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %47 = load i64, i64* %45, align 4
  store i64 %47, i64* %46, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !26
  %48 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !26
  %49 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !26
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !26
  %50 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !26
  %51 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !26
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !26
  %52 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !26
  %53 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !26
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !26
  %54 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !26
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !26
  %55 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !26
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !26
  %56 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !26
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !26
  %57 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !26
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !26
  %58 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !26
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !26
  %59 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !26
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !26
  %60 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !26
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !26
  %61 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !26
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !26
  %62 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !26
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !26
  %63 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !26
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !26
  %64 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !26
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !26
  %65 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !26
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !26
  %66 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !26
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !26
  %67 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !26
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !26
  %68 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !26
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !26
  %69 = load i64, i64* %STACK_BASE, !mcsema_real_eip !26
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !26
  %70 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !26
  %71 = add i64 %6, -8
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !26
  store i64 %7, i64* %72, !mcsema_real_eip !26
  %73 = add i64 %6, -24
  %74 = add i64 %71, -8, !mcsema_real_eip !27
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !27
  %76 = trunc i64 %5 to i32, !mcsema_real_eip !27
  %77 = bitcast i64* %75 to i32*
  store i32 %76, i32* %77, !mcsema_real_eip !27
  %78 = add i64 %71, -12, !mcsema_real_eip !28
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !28
  %80 = trunc i64 %4 to i32, !mcsema_real_eip !28
  %81 = bitcast i64* %79 to i32*
  store i32 %80, i32* %81, !mcsema_real_eip !28
  %82 = load i32, i32* %77, !mcsema_real_eip !29
  %83 = icmp eq i32 %82, 0, !mcsema_real_eip !29
  br i1 %83, label %block_0x18, label %block_0x26, !mcsema_real_eip !30

block_0x18:                                       ; preds = %entry
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %80, i32 1)
  %84 = extractvalue { i32, i1 } %uadd, 0
  %85 = add i64 %71, -4, !mcsema_real_eip !31
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !31
  %87 = bitcast i64* %86 to i32*
  store i32 %84, i32* %87, !mcsema_real_eip !31
  br label %block_0x70, !mcsema_real_eip !32

block_0x26:                                       ; preds = %entry
  %88 = icmp eq i32 %80, 0, !mcsema_real_eip !33
  br i1 %88, label %block_0x30, label %block_0x4a, !mcsema_real_eip !34

block_0x30:                                       ; preds = %block_0x26
  %89 = add i32 %82, -1
  %90 = xor i32 %89, %82, !mcsema_real_eip !35
  %91 = and i32 %90, 16, !mcsema_real_eip !35
  %92 = icmp ne i32 %91, 0, !mcsema_real_eip !35
  %93 = trunc i32 %89 to i8, !mcsema_real_eip !35
  %94 = tail call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !35
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  %97 = icmp eq i32 %89, 0, !mcsema_real_eip !35
  %98 = icmp slt i32 %89, 0
  %99 = and i32 %90, %82, !mcsema_real_eip !35
  %100 = icmp slt i32 %99, 0
  %101 = zext i32 %89 to i64, !mcsema_real_eip !35
  %102 = add i64 %73, -8
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !36
  store i64 -4981261766360305936, i64* %103, !mcsema_real_eip !36
  store i64 %101, i64* %RAX, !mcsema_real_eip !36
  store i64 %1, i64* %RBX, !mcsema_real_eip !36
  store i64 %2, i64* %RCX, !mcsema_real_eip !36
  store i64 %3, i64* %RDX, !mcsema_real_eip !36
  store i64 1, i64* %RSI, !mcsema_real_eip !36
  store i64 %101, i64* %RDI, !mcsema_real_eip !36
  store i64 %102, i64* %RSP, !mcsema_real_eip !36
  store i64 %71, i64* %RBP, !mcsema_real_eip !36
  store i64 %8, i64* %R8, !mcsema_real_eip !36
  store i64 %9, i64* %R9, !mcsema_real_eip !36
  store i64 %10, i64* %R10, !mcsema_real_eip !36
  store i64 %11, i64* %R11, !mcsema_real_eip !36
  store i64 %12, i64* %R12, !mcsema_real_eip !36
  store i64 %13, i64* %R13, !mcsema_real_eip !36
  store i64 %14, i64* %R14, !mcsema_real_eip !36
  store i64 %15, i64* %R15, !mcsema_real_eip !36
  store i64 %16, i64* %RIP, !mcsema_real_eip !36
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !36
  store i1 %96, i1* %PF, align 1, !mcsema_real_eip !36
  store i1 %92, i1* %AF, align 1, !mcsema_real_eip !36
  store i1 %97, i1* %ZF, align 1, !mcsema_real_eip !36
  store i1 %98, i1* %SF, align 1, !mcsema_real_eip !36
  store i1 %100, i1* %OF, align 1, !mcsema_real_eip !36
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !36
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !36
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %104 = load i64, i64* %46, align 4
  store i64 %104, i64* %45, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !36
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !36
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !36
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !36
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !36
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !36
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !36
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !36
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !36
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !36
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !36
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !36
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !36
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !36
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !36
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !36
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !36
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !36
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !36
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !36
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !36
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !36
  %105 = load i64, i64* %RAX, !mcsema_real_eip !36
  %106 = load i64, i64* %RBX, !mcsema_real_eip !36
  %107 = load i64, i64* %RCX, !mcsema_real_eip !36
  %108 = load i64, i64* %RDX, !mcsema_real_eip !36
  %109 = load i64, i64* %RSI, !mcsema_real_eip !36
  %110 = load i64, i64* %RDI, !mcsema_real_eip !36
  %111 = load i64, i64* %RSP, !mcsema_real_eip !36
  %112 = load i64, i64* %RBP, !mcsema_real_eip !36
  %113 = load i64, i64* %R8, !mcsema_real_eip !36
  %114 = load i64, i64* %R9, !mcsema_real_eip !36
  %115 = load i64, i64* %R10, !mcsema_real_eip !36
  %116 = load i64, i64* %R11, !mcsema_real_eip !36
  %117 = load i64, i64* %R12, !mcsema_real_eip !36
  %118 = load i64, i64* %R13, !mcsema_real_eip !36
  %119 = load i64, i64* %R14, !mcsema_real_eip !36
  %120 = load i64, i64* %R15, !mcsema_real_eip !36
  %121 = load i64, i64* %RIP, !mcsema_real_eip !36
  %122 = load i1, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !36
  %123 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !36
  %124 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  %125 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  %126 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  %127 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  %128 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  %129 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  %130 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  %131 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  %132 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  %133 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  %134 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  %135 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  %136 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  %137 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !36
  %138 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  %139 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  %140 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  %141 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  %142 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  %143 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  %144 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  %145 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %146 = load i64, i64* %45, align 4
  store i64 %146, i64* %46, align 4
  %147 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  %148 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !36
  %149 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  %150 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !36
  %151 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !36
  %152 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !36
  %153 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !36
  %154 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !36
  %155 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !36
  %156 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !36
  %157 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !36
  %158 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !36
  %159 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !36
  %160 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !36
  %161 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !36
  %162 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !36
  %163 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !36
  %164 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !36
  %165 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !36
  %166 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !36
  %167 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !36
  %168 = load i64, i64* %STACK_BASE, !mcsema_real_eip !36
  %169 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !36
  %170 = add i64 %112, -4, !mcsema_real_eip !37
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !37
  %172 = trunc i64 %105 to i32, !mcsema_real_eip !37
  %173 = bitcast i64* %171 to i32*
  store i32 %172, i32* %173, !mcsema_real_eip !37
  br label %block_0x70, !mcsema_real_eip !38

block_0x4a:                                       ; preds = %block_0x26
  %174 = add i32 %82, -1
  %175 = zext i32 %174 to i64, !mcsema_real_eip !39
  %176 = zext i32 %82 to i64, !mcsema_real_eip !40
  %177 = add i32 %80, -1
  %178 = xor i32 %177, %80, !mcsema_real_eip !41
  %179 = and i32 %178, 16, !mcsema_real_eip !41
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !41
  %181 = trunc i32 %177 to i8, !mcsema_real_eip !41
  %182 = tail call i8 @llvm.ctpop.i8(i8 %181), !mcsema_real_eip !41
  %183 = and i8 %182, 1
  %184 = icmp eq i8 %183, 0
  %185 = icmp eq i32 %177, 0, !mcsema_real_eip !41
  %186 = icmp slt i32 %177, 0
  %187 = and i32 %178, %80, !mcsema_real_eip !41
  %188 = icmp slt i32 %187, 0
  %189 = zext i32 %177 to i64, !mcsema_real_eip !41
  %190 = add i64 %71, -16, !mcsema_real_eip !42
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !42
  %192 = bitcast i64* %191 to i32*
  store i32 %174, i32* %192, !mcsema_real_eip !42
  %193 = add i64 %73, -8
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !43
  store i64 -4981261766360305936, i64* %194, !mcsema_real_eip !43
  store i64 %175, i64* %RAX, !mcsema_real_eip !43
  store i64 %1, i64* %RBX, !mcsema_real_eip !43
  store i64 %189, i64* %RCX, !mcsema_real_eip !43
  store i64 %3, i64* %RDX, !mcsema_real_eip !43
  store i64 %189, i64* %RSI, !mcsema_real_eip !43
  store i64 %176, i64* %RDI, !mcsema_real_eip !43
  store i64 %193, i64* %RSP, !mcsema_real_eip !43
  store i64 %71, i64* %RBP, !mcsema_real_eip !43
  store i64 %8, i64* %R8, !mcsema_real_eip !43
  store i64 %9, i64* %R9, !mcsema_real_eip !43
  store i64 %10, i64* %R10, !mcsema_real_eip !43
  store i64 %11, i64* %R11, !mcsema_real_eip !43
  store i64 %12, i64* %R12, !mcsema_real_eip !43
  store i64 %13, i64* %R13, !mcsema_real_eip !43
  store i64 %14, i64* %R14, !mcsema_real_eip !43
  store i64 %15, i64* %R15, !mcsema_real_eip !43
  store i64 %16, i64* %RIP, !mcsema_real_eip !43
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !43
  store i1 %184, i1* %PF, align 1, !mcsema_real_eip !43
  store i1 %180, i1* %AF, align 1, !mcsema_real_eip !43
  store i1 %185, i1* %ZF, align 1, !mcsema_real_eip !43
  store i1 %186, i1* %SF, align 1, !mcsema_real_eip !43
  store i1 %188, i1* %OF, align 1, !mcsema_real_eip !43
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !43
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !43
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !43
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !43
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !43
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !43
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !43
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !43
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !43
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !43
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !43
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !43
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !43
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !43
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !43
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !43
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !43
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !43
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !43
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !43
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !43
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !43
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !43
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !43
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !43
  %195 = load i64, i64* %46, align 4
  store i64 %195, i64* %45, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !43
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !43
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !43
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !43
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !43
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !43
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !43
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !43
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !43
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !43
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !43
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !43
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !43
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !43
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !43
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !43
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !43
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !43
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !43
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !43
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !43
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !43
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !43
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !43
  %196 = load i64, i64* %RAX, !mcsema_real_eip !43
  %197 = load i64, i64* %RBX, !mcsema_real_eip !43
  %198 = load i64, i64* %RCX, !mcsema_real_eip !43
  %199 = load i64, i64* %RDX, !mcsema_real_eip !43
  %200 = load i64, i64* %RSP, !mcsema_real_eip !43
  %201 = load i64, i64* %RBP, !mcsema_real_eip !43
  %202 = load i64, i64* %R8, !mcsema_real_eip !43
  %203 = load i64, i64* %R9, !mcsema_real_eip !43
  %204 = load i64, i64* %R10, !mcsema_real_eip !43
  %205 = load i64, i64* %R11, !mcsema_real_eip !43
  %206 = load i64, i64* %R12, !mcsema_real_eip !43
  %207 = load i64, i64* %R13, !mcsema_real_eip !43
  %208 = load i64, i64* %R14, !mcsema_real_eip !43
  %209 = load i64, i64* %R15, !mcsema_real_eip !43
  %210 = load i64, i64* %RIP, !mcsema_real_eip !43
  %211 = load i1, i1* %CF, align 1, !mcsema_real_eip !43
  %212 = load i1, i1* %PF, align 1, !mcsema_real_eip !43
  %213 = load i1, i1* %AF, align 1, !mcsema_real_eip !43
  %214 = load i1, i1* %ZF, align 1, !mcsema_real_eip !43
  %215 = load i1, i1* %SF, align 1, !mcsema_real_eip !43
  %216 = load i1, i1* %OF, align 1, !mcsema_real_eip !43
  %217 = load i1, i1* %DF, align 1, !mcsema_real_eip !43
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !43
  %218 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !43
  %219 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !43
  %220 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !43
  %221 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !43
  %222 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !43
  %223 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !43
  %224 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !43
  %225 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !43
  %226 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !43
  %227 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !43
  %228 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !43
  %229 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !43
  %230 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !43
  %231 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !43
  %232 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !43
  %233 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !43
  %234 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !43
  %235 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !43
  %236 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !43
  %237 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !43
  %238 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !43
  %239 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !43
  %240 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !43
  %241 = load i64, i64* %45, align 4
  store i64 %241, i64* %46, align 4
  %242 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !43
  %243 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !43
  %244 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !43
  %245 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !43
  %246 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !43
  %247 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !43
  %248 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !43
  %249 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !43
  %250 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !43
  %251 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !43
  %252 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !43
  %253 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !43
  %254 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !43
  %255 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !43
  %256 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !43
  %257 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !43
  %258 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !43
  %259 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !43
  %260 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !43
  %261 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !43
  %262 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !43
  %263 = load i64, i64* %STACK_BASE, !mcsema_real_eip !43
  %264 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !43
  %265 = add i64 %201, -16, !mcsema_real_eip !44
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !44
  %267 = bitcast i64* %266 to i32*
  %268 = load i32, i32* %267, !mcsema_real_eip !44
  %269 = zext i32 %268 to i64, !mcsema_real_eip !44
  %270 = and i64 %196, 4294967295
  %271 = add i64 %200, -8
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !45
  store i64 -4981261766360305936, i64* %272, !mcsema_real_eip !45
  store i64 %196, i64* %RAX, !mcsema_real_eip !45
  store i64 %197, i64* %RBX, !mcsema_real_eip !45
  store i64 %198, i64* %RCX, !mcsema_real_eip !45
  store i64 %199, i64* %RDX, !mcsema_real_eip !45
  store i64 %270, i64* %RSI, !mcsema_real_eip !45
  store i64 %269, i64* %RDI, !mcsema_real_eip !45
  store i64 %271, i64* %RSP, !mcsema_real_eip !45
  store i64 %201, i64* %RBP, !mcsema_real_eip !45
  store i64 %202, i64* %R8, !mcsema_real_eip !45
  store i64 %203, i64* %R9, !mcsema_real_eip !45
  store i64 %204, i64* %R10, !mcsema_real_eip !45
  store i64 %205, i64* %R11, !mcsema_real_eip !45
  store i64 %206, i64* %R12, !mcsema_real_eip !45
  store i64 %207, i64* %R13, !mcsema_real_eip !45
  store i64 %208, i64* %R14, !mcsema_real_eip !45
  store i64 %209, i64* %R15, !mcsema_real_eip !45
  store i64 %210, i64* %RIP, !mcsema_real_eip !45
  store i1 %211, i1* %CF, align 1, !mcsema_real_eip !45
  store i1 %212, i1* %PF, align 1, !mcsema_real_eip !45
  store i1 %213, i1* %AF, align 1, !mcsema_real_eip !45
  store i1 %214, i1* %ZF, align 1, !mcsema_real_eip !45
  store i1 %215, i1* %SF, align 1, !mcsema_real_eip !45
  store i1 %216, i1* %OF, align 1, !mcsema_real_eip !45
  store i1 %217, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  store i1 %218, i1* %FPU_B, align 1, !mcsema_real_eip !45
  store i1 %219, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  store i3 %220, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  store i1 %221, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  store i1 %222, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  store i1 %223, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  store i1 %224, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  store i1 %225, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  store i1 %226, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  store i1 %227, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  store i1 %228, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  store i1 %229, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  store i1 %230, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  store i1 %231, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  store i1 %232, i1* %FPU_X, align 1, !mcsema_real_eip !45
  store i2 %233, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  store i2 %234, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  store i1 %235, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  store i1 %236, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  store i1 %237, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  store i1 %238, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  store i1 %239, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  store i1 %240, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %273 = load i64, i64* %46, align 4
  store i64 %273, i64* %45, align 4
  store i16 %242, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  store i64 %243, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  store i16 %244, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  store i64 %245, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  store i11 %246, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !45
  store i128 %247, i128* %XMM0, align 1, !mcsema_real_eip !45
  store i128 %248, i128* %XMM1, align 1, !mcsema_real_eip !45
  store i128 %249, i128* %XMM2, align 1, !mcsema_real_eip !45
  store i128 %250, i128* %XMM3, align 1, !mcsema_real_eip !45
  store i128 %251, i128* %XMM4, align 1, !mcsema_real_eip !45
  store i128 %252, i128* %XMM5, align 1, !mcsema_real_eip !45
  store i128 %253, i128* %XMM6, align 1, !mcsema_real_eip !45
  store i128 %254, i128* %XMM7, align 1, !mcsema_real_eip !45
  store i128 %255, i128* %XMM8, align 1, !mcsema_real_eip !45
  store i128 %256, i128* %XMM9, align 1, !mcsema_real_eip !45
  store i128 %257, i128* %XMM10, align 1, !mcsema_real_eip !45
  store i128 %258, i128* %XMM11, align 1, !mcsema_real_eip !45
  store i128 %259, i128* %XMM12, align 1, !mcsema_real_eip !45
  store i128 %260, i128* %XMM13, align 1, !mcsema_real_eip !45
  store i128 %261, i128* %XMM14, align 1, !mcsema_real_eip !45
  store i128 %262, i128* %XMM15, align 1, !mcsema_real_eip !45
  store i64 %263, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  store i64 %264, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !45
  %274 = load i64, i64* %RAX, !mcsema_real_eip !45
  %275 = load i64, i64* %RBX, !mcsema_real_eip !45
  %276 = load i64, i64* %RCX, !mcsema_real_eip !45
  %277 = load i64, i64* %RDX, !mcsema_real_eip !45
  %278 = load i64, i64* %RSI, !mcsema_real_eip !45
  %279 = load i64, i64* %RDI, !mcsema_real_eip !45
  %280 = load i64, i64* %RSP, !mcsema_real_eip !45
  %281 = load i64, i64* %RBP, !mcsema_real_eip !45
  %282 = load i64, i64* %R8, !mcsema_real_eip !45
  %283 = load i64, i64* %R9, !mcsema_real_eip !45
  %284 = load i64, i64* %R10, !mcsema_real_eip !45
  %285 = load i64, i64* %R11, !mcsema_real_eip !45
  %286 = load i64, i64* %R12, !mcsema_real_eip !45
  %287 = load i64, i64* %R13, !mcsema_real_eip !45
  %288 = load i64, i64* %R14, !mcsema_real_eip !45
  %289 = load i64, i64* %R15, !mcsema_real_eip !45
  %290 = load i64, i64* %RIP, !mcsema_real_eip !45
  %291 = load i1, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !45
  %292 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !45
  %293 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %294 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %295 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %296 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %297 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %298 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %299 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %300 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %301 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %302 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %303 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %304 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %305 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %306 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !45
  %307 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %308 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %309 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %310 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %311 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %312 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %313 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %314 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %315 = load i64, i64* %45, align 4
  store i64 %315, i64* %46, align 4
  %316 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %317 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !45
  %318 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %319 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !45
  %320 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !45
  %321 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !45
  %322 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !45
  %323 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !45
  %324 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !45
  %325 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !45
  %326 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !45
  %327 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !45
  %328 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !45
  %329 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !45
  %330 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !45
  %331 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !45
  %332 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !45
  %333 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !45
  %334 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !45
  %335 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !45
  %336 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !45
  %337 = load i64, i64* %STACK_BASE, !mcsema_real_eip !45
  %338 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !45
  %339 = add i64 %281, -4, !mcsema_real_eip !46
  %340 = inttoptr i64 %339 to i64*, !mcsema_real_eip !46
  %341 = trunc i64 %274 to i32, !mcsema_real_eip !46
  %342 = bitcast i64* %340 to i32*
  store i32 %341, i32* %342, !mcsema_real_eip !46
  br label %block_0x70, !mcsema_real_eip !47

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %RBX_val.0 = phi i64 [ %1, %block_0x18 ], [ %106, %block_0x30 ], [ %275, %block_0x4a ]
  %RCX_val.0 = phi i64 [ %2, %block_0x18 ], [ %107, %block_0x30 ], [ %276, %block_0x4a ]
  %RDX_val.0 = phi i64 [ %3, %block_0x18 ], [ %108, %block_0x30 ], [ %277, %block_0x4a ]
  %RSI_val.0 = phi i64 [ %4, %block_0x18 ], [ %109, %block_0x30 ], [ %278, %block_0x4a ]
  %RDI_val.0 = phi i64 [ %5, %block_0x18 ], [ %110, %block_0x30 ], [ %279, %block_0x4a ]
  %RBP_val.0 = phi i64 [ %71, %block_0x18 ], [ %112, %block_0x30 ], [ %281, %block_0x4a ]
  %RSP_val.0 = phi i64 [ %73, %block_0x18 ], [ %111, %block_0x30 ], [ %280, %block_0x4a ]
  %R8_val.0 = phi i64 [ %8, %block_0x18 ], [ %113, %block_0x30 ], [ %282, %block_0x4a ]
  %R9_val.0 = phi i64 [ %9, %block_0x18 ], [ %114, %block_0x30 ], [ %283, %block_0x4a ]
  %R10_val.0 = phi i64 [ %10, %block_0x18 ], [ %115, %block_0x30 ], [ %284, %block_0x4a ]
  %R11_val.0 = phi i64 [ %11, %block_0x18 ], [ %116, %block_0x30 ], [ %285, %block_0x4a ]
  %R12_val.0 = phi i64 [ %12, %block_0x18 ], [ %117, %block_0x30 ], [ %286, %block_0x4a ]
  %R13_val.0 = phi i64 [ %13, %block_0x18 ], [ %118, %block_0x30 ], [ %287, %block_0x4a ]
  %R14_val.0 = phi i64 [ %14, %block_0x18 ], [ %119, %block_0x30 ], [ %288, %block_0x4a ]
  %RIP_val.0 = phi i64 [ %16, %block_0x18 ], [ %121, %block_0x30 ], [ %290, %block_0x4a ]
  %DF_val.0 = phi i1 [ %17, %block_0x18 ], [ %122, %block_0x30 ], [ %291, %block_0x4a ]
  %FPU_B_val.0 = phi i1 [ %21, %block_0x18 ], [ %123, %block_0x30 ], [ %292, %block_0x4a ]
  %FPU_C3_val.0 = phi i1 [ %22, %block_0x18 ], [ %124, %block_0x30 ], [ %293, %block_0x4a ]
  %FPU_TOP_val.0 = phi i3 [ %23, %block_0x18 ], [ %125, %block_0x30 ], [ %294, %block_0x4a ]
  %FPU_C2_val.0 = phi i1 [ %24, %block_0x18 ], [ %126, %block_0x30 ], [ %295, %block_0x4a ]
  %FPU_C1_val.0 = phi i1 [ %25, %block_0x18 ], [ %127, %block_0x30 ], [ %296, %block_0x4a ]
  %FPU_C0_val.0 = phi i1 [ %26, %block_0x18 ], [ %128, %block_0x30 ], [ %297, %block_0x4a ]
  %FPU_ES_val.0 = phi i1 [ %27, %block_0x18 ], [ %129, %block_0x30 ], [ %298, %block_0x4a ]
  %FPU_SF_val.0 = phi i1 [ %28, %block_0x18 ], [ %130, %block_0x30 ], [ %299, %block_0x4a ]
  %FPU_PE_val.0 = phi i1 [ %29, %block_0x18 ], [ %131, %block_0x30 ], [ %300, %block_0x4a ]
  %FPU_UE_val.0 = phi i1 [ %30, %block_0x18 ], [ %132, %block_0x30 ], [ %301, %block_0x4a ]
  %FPU_OE_val.0 = phi i1 [ %31, %block_0x18 ], [ %133, %block_0x30 ], [ %302, %block_0x4a ]
  %FPU_ZE_val.0 = phi i1 [ %32, %block_0x18 ], [ %134, %block_0x30 ], [ %303, %block_0x4a ]
  %FPU_DE_val.0 = phi i1 [ %33, %block_0x18 ], [ %135, %block_0x30 ], [ %304, %block_0x4a ]
  %FPU_IE_val.0 = phi i1 [ %34, %block_0x18 ], [ %136, %block_0x30 ], [ %305, %block_0x4a ]
  %FPU_X_val.0 = phi i1 [ %35, %block_0x18 ], [ %137, %block_0x30 ], [ %306, %block_0x4a ]
  %FPU_RC_val.0 = phi i2 [ %36, %block_0x18 ], [ %138, %block_0x30 ], [ %307, %block_0x4a ]
  %FPU_PC_val.0 = phi i2 [ %37, %block_0x18 ], [ %139, %block_0x30 ], [ %308, %block_0x4a ]
  %FPU_PM_val.0 = phi i1 [ %38, %block_0x18 ], [ %140, %block_0x30 ], [ %309, %block_0x4a ]
  %FPU_UM_val.0 = phi i1 [ %39, %block_0x18 ], [ %141, %block_0x30 ], [ %310, %block_0x4a ]
  %FPU_OM_val.0 = phi i1 [ %40, %block_0x18 ], [ %142, %block_0x30 ], [ %311, %block_0x4a ]
  %FPU_ZM_val.0 = phi i1 [ %41, %block_0x18 ], [ %143, %block_0x30 ], [ %312, %block_0x4a ]
  %FPU_DM_val.0 = phi i1 [ %42, %block_0x18 ], [ %144, %block_0x30 ], [ %313, %block_0x4a ]
  %FPU_IM_val.0 = phi i1 [ %43, %block_0x18 ], [ %145, %block_0x30 ], [ %314, %block_0x4a ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %48, %block_0x18 ], [ %147, %block_0x30 ], [ %316, %block_0x4a ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %49, %block_0x18 ], [ %148, %block_0x30 ], [ %317, %block_0x4a ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %50, %block_0x18 ], [ %149, %block_0x30 ], [ %318, %block_0x4a ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %51, %block_0x18 ], [ %150, %block_0x30 ], [ %319, %block_0x4a ]
  %FPU_FOPCODE_val.0 = phi i11 [ %52, %block_0x18 ], [ %151, %block_0x30 ], [ %320, %block_0x4a ]
  %XMM0_val.0 = phi i128 [ %53, %block_0x18 ], [ %152, %block_0x30 ], [ %321, %block_0x4a ]
  %XMM1_val.0 = phi i128 [ %54, %block_0x18 ], [ %153, %block_0x30 ], [ %322, %block_0x4a ]
  %XMM2_val.0 = phi i128 [ %55, %block_0x18 ], [ %154, %block_0x30 ], [ %323, %block_0x4a ]
  %XMM3_val.0 = phi i128 [ %56, %block_0x18 ], [ %155, %block_0x30 ], [ %324, %block_0x4a ]
  %XMM4_val.0 = phi i128 [ %57, %block_0x18 ], [ %156, %block_0x30 ], [ %325, %block_0x4a ]
  %XMM5_val.0 = phi i128 [ %58, %block_0x18 ], [ %157, %block_0x30 ], [ %326, %block_0x4a ]
  %XMM6_val.0 = phi i128 [ %59, %block_0x18 ], [ %158, %block_0x30 ], [ %327, %block_0x4a ]
  %XMM7_val.0 = phi i128 [ %60, %block_0x18 ], [ %159, %block_0x30 ], [ %328, %block_0x4a ]
  %XMM8_val.0 = phi i128 [ %61, %block_0x18 ], [ %160, %block_0x30 ], [ %329, %block_0x4a ]
  %XMM9_val.0 = phi i128 [ %62, %block_0x18 ], [ %161, %block_0x30 ], [ %330, %block_0x4a ]
  %XMM10_val.0 = phi i128 [ %63, %block_0x18 ], [ %162, %block_0x30 ], [ %331, %block_0x4a ]
  %XMM11_val.0 = phi i128 [ %64, %block_0x18 ], [ %163, %block_0x30 ], [ %332, %block_0x4a ]
  %XMM12_val.0 = phi i128 [ %65, %block_0x18 ], [ %164, %block_0x30 ], [ %333, %block_0x4a ]
  %XMM13_val.0 = phi i128 [ %66, %block_0x18 ], [ %165, %block_0x30 ], [ %334, %block_0x4a ]
  %XMM14_val.0 = phi i128 [ %67, %block_0x18 ], [ %166, %block_0x30 ], [ %335, %block_0x4a ]
  %XMM15_val.0 = phi i128 [ %68, %block_0x18 ], [ %167, %block_0x30 ], [ %336, %block_0x4a ]
  %STACK_BASE_val.0 = phi i64 [ %69, %block_0x18 ], [ %168, %block_0x30 ], [ %337, %block_0x4a ]
  %STACK_LIMIT_val.0 = phi i64 [ %70, %block_0x18 ], [ %169, %block_0x30 ], [ %338, %block_0x4a ]
  %R15_val.0 = phi i64 [ %15, %block_0x18 ], [ %120, %block_0x30 ], [ %289, %block_0x4a ]
  %343 = add i64 %RBP_val.0, -4, !mcsema_real_eip !48
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !48
  %345 = bitcast i64* %344 to i32*
  %346 = load i32, i32* %345, !mcsema_real_eip !48
  %347 = zext i32 %346 to i64, !mcsema_real_eip !48
  %uadd491 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0, i64 16)
  %348 = extractvalue { i64, i1 } %uadd491, 0
  %349 = xor i64 %348, %RSP_val.0, !mcsema_real_eip !49
  %350 = and i64 %349, 16
  %351 = icmp eq i64 %350, 0
  %352 = icmp slt i64 %348, 0
  %353 = icmp eq i64 %348, 0, !mcsema_real_eip !49
  %354 = xor i64 %RSP_val.0, -9223372036854775808, !mcsema_real_eip !49
  %355 = and i64 %349, %354, !mcsema_real_eip !49
  %356 = icmp slt i64 %355, 0
  %357 = trunc i64 %348 to i8, !mcsema_real_eip !49
  %358 = tail call i8 @llvm.ctpop.i8(i8 %357), !mcsema_real_eip !49
  %359 = and i8 %358, 1
  %360 = icmp eq i8 %359, 0
  %361 = extractvalue { i64, i1 } %uadd491, 1
  %362 = inttoptr i64 %348 to i64*, !mcsema_real_eip !50
  %363 = load i64, i64* %362, !mcsema_real_eip !50
  %364 = add i64 %348, 16, !mcsema_real_eip !51
  store i64 %347, i64* %RAX, !mcsema_real_eip !51
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !51
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !51
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !51
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !51
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !51
  store i64 %364, i64* %RSP, !mcsema_real_eip !51
  store i64 %363, i64* %RBP, !mcsema_real_eip !51
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !51
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !51
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !51
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !51
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !51
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !51
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !51
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !51
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !51
  store i1 %361, i1* %CF, align 1, !mcsema_real_eip !51
  store i1 %360, i1* %PF, align 1, !mcsema_real_eip !51
  store i1 %351, i1* %AF, align 1, !mcsema_real_eip !51
  store i1 %353, i1* %ZF, align 1, !mcsema_real_eip !51
  store i1 %352, i1* %SF, align 1, !mcsema_real_eip !51
  store i1 %356, i1* %OF, align 1, !mcsema_real_eip !51
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !51
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !51
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !51
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %365 = load i64, i64* %46, align 4
  store i64 %365, i64* %45, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !51
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !51
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !51
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !51
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !51
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !51
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !51
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !51
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !51
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !51
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !51
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !51
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !51
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !51
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !51
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !51
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !51
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !51
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !51
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !51
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
}

declare x86_64_sysvcc i64 @atoi(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_80(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !26
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !26
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !26
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !26
  %1 = load i64, i64* %RBX, !mcsema_real_eip !26
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !26
  %2 = load i64, i64* %RCX, !mcsema_real_eip !26
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !26
  %3 = load i64, i64* %RDX, !mcsema_real_eip !26
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !26
  %4 = load i64, i64* %RSI, !mcsema_real_eip !26
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !26
  %5 = load i64, i64* %RDI, !mcsema_real_eip !26
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !26
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !26
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !26
  %6 = load i64, i64* %R8, !mcsema_real_eip !26
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !26
  %7 = load i64, i64* %R9, !mcsema_real_eip !26
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !26
  %8 = load i64, i64* %R10, !mcsema_real_eip !26
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !26
  %9 = load i64, i64* %R11, !mcsema_real_eip !26
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !26
  %10 = load i64, i64* %R12, !mcsema_real_eip !26
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !26
  %11 = load i64, i64* %R13, !mcsema_real_eip !26
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !26
  %12 = load i64, i64* %R14, !mcsema_real_eip !26
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !26
  %13 = load i64, i64* %R15, !mcsema_real_eip !26
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !26
  %14 = load i64, i64* %RIP, !mcsema_real_eip !26
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !26
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !26
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !26
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !26
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !26
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !26
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !26
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !26
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !26
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !26
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !26
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !26
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !26
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !26
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !26
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !26
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !26
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !26
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !26
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !26
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !26
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !26
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !26
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !26
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !26
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !26
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !26
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !26
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !26
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !26
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !26
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !26
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !26
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !26
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !26
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !26
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !26
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !26
  %48 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !26
  %49 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !26
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !26
  %50 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !26
  %51 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !26
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !26
  %52 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !26
  %53 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !26
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !26
  %54 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !26
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !26
  %55 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !26
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !26
  %56 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !26
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !26
  %57 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !26
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !26
  %58 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !26
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !26
  %59 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !26
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !26
  %60 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !26
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !26
  %61 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !26
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !26
  %62 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !26
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !26
  %63 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !26
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !26
  %64 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !26
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !26
  %65 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !26
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !26
  %66 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !26
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !26
  %67 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !26
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !26
  %68 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !26
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !26
  %69 = load i64, i64* %STACK_BASE, !mcsema_real_eip !26
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !26
  %70 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !26
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -24
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -8
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %71 = trunc i64 %5 to i32, !mcsema_real_eip !27
  %72 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 %71, i32* %72, !mcsema_real_eip !27
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -12
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %73 = trunc i64 %4 to i32, !mcsema_real_eip !28
  %74 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %73, i32* %74, !mcsema_real_eip !28
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %75 = bitcast i64* %_allin_new_bt_18 to i32*
  %_ptr_to_int_84 = ptrtoint i32* %75 to i64
  %_ptr_bt_86 = bitcast i32* %75 to i8*
  %_offset_above_rbp_87 = sub i64 %_ptr_to_int_84, %_local_end_to_int_
  %_pot_address_in_parent_stack_88 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_87
  %_cond1_89 = icmp ugt i8* %_ptr_bt_86, %_local_stack_end_ptr_
  %_cond2_1_90 = icmp ugt i8* %_ptr_bt_86, %_parent_stack_end_ptr_
  %_cond2_2_91 = icmp ult i8* %_ptr_bt_86, %_parent_stack_start_ptr_
  %_cond2_92 = or i1 %_cond2_1_90, %_cond2_2_91
  %_cond4_93 = icmp ule i8* %_pot_address_in_parent_stack_88, %_parent_stack_end_ptr_
  %_cond1_n_cond2_94 = and i1 %_cond1_89, %_cond2_92
  %_cond1_n_cond2_cond3_95 = and i1 %_cond1_n_cond2_94, %_cond4_93
  br i1 %_cond1_n_cond2_cond3_95, label %76, label %77

; <label>:76:                                     ; preds = %46
  %_address_in_parent_stack_bt_97 = bitcast i8* %_pot_address_in_parent_stack_88 to i32*
  br label %77

; <label>:77:                                     ; preds = %46, %76
  %78 = phi i32* [ %75, %46 ], [ %_address_in_parent_stack_bt_97, %76 ]
  %_new_load_98 = load i32, i32* %78
  %79 = icmp eq i32 %_new_load_98, 0, !mcsema_real_eip !29
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %80 = bitcast i64* %_allin_new_bt_21 to i32*
  %_ptr_to_int_99 = ptrtoint i32* %80 to i64
  %_ptr_bt_101 = bitcast i32* %80 to i8*
  %_offset_above_rbp_102 = sub i64 %_ptr_to_int_99, %_local_end_to_int_
  %_pot_address_in_parent_stack_103 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_cond1_104 = icmp ugt i8* %_ptr_bt_101, %_local_stack_end_ptr_
  %_cond2_1_105 = icmp ugt i8* %_ptr_bt_101, %_parent_stack_end_ptr_
  %_cond2_2_106 = icmp ult i8* %_ptr_bt_101, %_parent_stack_start_ptr_
  %_cond2_107 = or i1 %_cond2_1_105, %_cond2_2_106
  %_cond4_108 = icmp ule i8* %_pot_address_in_parent_stack_103, %_parent_stack_end_ptr_
  %_cond1_n_cond2_109 = and i1 %_cond1_104, %_cond2_107
  %_cond1_n_cond2_cond3_110 = and i1 %_cond1_n_cond2_109, %_cond4_108
  br i1 %_cond1_n_cond2_cond3_110, label %81, label %82

; <label>:81:                                     ; preds = %77
  %_address_in_parent_stack_bt_112 = bitcast i8* %_pot_address_in_parent_stack_103 to i32*
  br label %82

; <label>:82:                                     ; preds = %77, %81
  %83 = phi i32* [ %80, %77 ], [ %_address_in_parent_stack_bt_112, %81 ]
  %_new_load_113 = load i32, i32* %83
  br i1 %79, label %block_0x18, label %block_0x26, !mcsema_real_eip !30

block_0x18:                                       ; preds = %82
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_113, i32 1)
  %84 = extractvalue { i32, i1 } %uadd, 0
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -4
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %85 = bitcast i64* %_allin_new_bt_24 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !31
  br label %block_0x70, !mcsema_real_eip !32

block_0x26:                                       ; preds = %82
  %86 = icmp eq i32 %_new_load_113, 0, !mcsema_real_eip !33
  br i1 %86, label %block_0x30, label %block_0x4a, !mcsema_real_eip !34

block_0x30:                                       ; preds = %block_0x26
  br i1 %_cond1_n_cond2_cond3_95, label %87, label %88

; <label>:87:                                     ; preds = %block_0x30
  %_address_in_parent_stack_bt_127 = bitcast i8* %_pot_address_in_parent_stack_88 to i32*
  br label %88

; <label>:88:                                     ; preds = %block_0x30, %87
  %89 = phi i32* [ %75, %block_0x30 ], [ %_address_in_parent_stack_bt_127, %87 ]
  %_new_load_128 = load i32, i32* %89
  %90 = add i32 %_new_load_128, -1
  %91 = xor i32 %90, %_new_load_128, !mcsema_real_eip !35
  %92 = and i32 %91, 16, !mcsema_real_eip !35
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !35
  %94 = trunc i32 %90 to i8, !mcsema_real_eip !35
  %95 = tail call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !35
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  %98 = icmp eq i32 %90, 0, !mcsema_real_eip !35
  %99 = icmp slt i32 %90, 0
  %100 = icmp eq i32 %_new_load_128, 0
  %101 = and i32 %91, %_new_load_128, !mcsema_real_eip !35
  %102 = icmp slt i32 %101, 0
  %103 = zext i32 %90 to i64, !mcsema_real_eip !35
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_30, !mcsema_real_eip !36
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %103, i64* %RAX, !mcsema_real_eip !36
  store i64 %1, i64* %RBX, !mcsema_real_eip !36
  store i64 %2, i64* %RCX, !mcsema_real_eip !36
  store i64 %3, i64* %RDX, !mcsema_real_eip !36
  store i64 1, i64* %RSI, !mcsema_real_eip !36
  store i64 %103, i64* %RDI, !mcsema_real_eip !36
  %_new_ptr2int_32 = ptrtoint i8* %_new_gep_29 to i64
  store volatile i64 %_new_ptr2int_32, i64* %RSP
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_34 = ptrtoint i8* %_load_rbp_ptr_33 to i64
  store volatile i64 %_new_ptr2int_34, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !36
  store i64 %7, i64* %R9, !mcsema_real_eip !36
  store i64 %8, i64* %R10, !mcsema_real_eip !36
  store i64 %9, i64* %R11, !mcsema_real_eip !36
  store i64 %10, i64* %R12, !mcsema_real_eip !36
  store i64 %11, i64* %R13, !mcsema_real_eip !36
  store i64 %12, i64* %R14, !mcsema_real_eip !36
  store i64 %13, i64* %R15, !mcsema_real_eip !36
  store i64 %14, i64* %RIP, !mcsema_real_eip !36
  store i1 %100, i1* %CF, align 1, !mcsema_real_eip !36
  store i1 %97, i1* %PF, align 1, !mcsema_real_eip !36
  store i1 %93, i1* %AF, align 1, !mcsema_real_eip !36
  store i1 %98, i1* %ZF, align 1, !mcsema_real_eip !36
  store i1 %99, i1* %SF, align 1, !mcsema_real_eip !36
  store i1 %102, i1* %OF, align 1, !mcsema_real_eip !36
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !36
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !36
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %_ptr_to_int_129 = ptrtoint i64* %44 to i64
  %_ptr_bt_131 = bitcast i64* %44 to i8*
  %_offset_above_rbp_132 = sub i64 %_ptr_to_int_129, %_local_end_to_int_
  %_pot_address_in_parent_stack_133 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_132
  %_cond1_134 = icmp ugt i8* %_ptr_bt_131, %_local_stack_end_ptr_
  %_cond2_1_135 = icmp ugt i8* %_ptr_bt_131, %_parent_stack_end_ptr_
  %_cond2_2_136 = icmp ult i8* %_ptr_bt_131, %_parent_stack_start_ptr_
  %_cond2_137 = or i1 %_cond2_1_135, %_cond2_2_136
  %_cond4_138 = icmp ule i8* %_pot_address_in_parent_stack_133, %_parent_stack_end_ptr_
  %_cond1_n_cond2_139 = and i1 %_cond1_134, %_cond2_137
  %_cond1_n_cond2_cond3_140 = and i1 %_cond1_n_cond2_139, %_cond4_138
  br i1 %_cond1_n_cond2_cond3_140, label %104, label %105

; <label>:104:                                    ; preds = %88
  %_address_in_parent_stack_bt_142 = bitcast i8* %_pot_address_in_parent_stack_133 to i64*
  br label %105

; <label>:105:                                    ; preds = %88, %104
  %106 = phi i64* [ %44, %88 ], [ %_address_in_parent_stack_bt_142, %104 ]
  %_new_load_143 = load i64, i64* %106
  store i64 %_new_load_143, i64* %43, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !36
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !36
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !36
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !36
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !36
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !36
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !36
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !36
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !36
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !36
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !36
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !36
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !36
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !36
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !36
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !36
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !36
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !36
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !36
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !36
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !36
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_81)
  %107 = load i64, i64* %RAX, !mcsema_real_eip !36
  %108 = load i64, i64* %RBX, !mcsema_real_eip !36
  %109 = load i64, i64* %RCX, !mcsema_real_eip !36
  %110 = load i64, i64* %RDX, !mcsema_real_eip !36
  %111 = load i64, i64* %RSI, !mcsema_real_eip !36
  %112 = load i64, i64* %RDI, !mcsema_real_eip !36
  %113 = load i64, i64* %R8, !mcsema_real_eip !36
  %114 = load i64, i64* %R9, !mcsema_real_eip !36
  %115 = load i64, i64* %R10, !mcsema_real_eip !36
  %116 = load i64, i64* %R11, !mcsema_real_eip !36
  %117 = load i64, i64* %R12, !mcsema_real_eip !36
  %118 = load i64, i64* %R13, !mcsema_real_eip !36
  %119 = load i64, i64* %R14, !mcsema_real_eip !36
  %120 = load i64, i64* %R15, !mcsema_real_eip !36
  %121 = load i64, i64* %RIP, !mcsema_real_eip !36
  %122 = load i1, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !36
  %123 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !36
  %124 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  %125 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  %126 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  %127 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  %128 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  %129 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  %130 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  %131 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  %132 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  %133 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  %134 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  %135 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  %136 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  %137 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !36
  %138 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  %139 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  %140 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  %141 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  %142 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  %143 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  %144 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  %145 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  br i1 %_cond1_n_cond2_cond3_, label %146, label %147

; <label>:146:                                    ; preds = %105
  %_address_in_parent_stack_bt_157 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %147

; <label>:147:                                    ; preds = %105, %146
  %148 = phi i64* [ %43, %105 ], [ %_address_in_parent_stack_bt_157, %146 ]
  %_new_load_158 = load i64, i64* %148
  store i64 %_new_load_158, i64* %44, align 4
  %149 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  %150 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !36
  %151 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  %152 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !36
  %153 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !36
  %154 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !36
  %155 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !36
  %156 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !36
  %157 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !36
  %158 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !36
  %159 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !36
  %160 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !36
  %161 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !36
  %162 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !36
  %163 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !36
  %164 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !36
  %165 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !36
  %166 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !36
  %167 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !36
  %168 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !36
  %169 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !36
  %170 = load i64, i64* %STACK_BASE, !mcsema_real_eip !36
  %171 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !36
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -4
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %172 = trunc i64 %107 to i32, !mcsema_real_eip !37
  %173 = bitcast i64* %_allin_new_bt_37 to i32*
  store i32 %172, i32* %173, !mcsema_real_eip !37
  br label %block_0x70, !mcsema_real_eip !38

block_0x4a:                                       ; preds = %block_0x26
  br i1 %_cond1_n_cond2_cond3_95, label %174, label %175

; <label>:174:                                    ; preds = %block_0x4a
  %_address_in_parent_stack_bt_172 = bitcast i8* %_pot_address_in_parent_stack_88 to i32*
  br label %175

; <label>:175:                                    ; preds = %block_0x4a, %174
  %176 = phi i32* [ %75, %block_0x4a ], [ %_address_in_parent_stack_bt_172, %174 ]
  %_new_load_173 = load i32, i32* %176
  %177 = add i32 %_new_load_173, -1
  %178 = zext i32 %177 to i64, !mcsema_real_eip !39
  br i1 %_cond1_n_cond2_cond3_95, label %179, label %180

; <label>:179:                                    ; preds = %175
  %_address_in_parent_stack_bt_187 = bitcast i8* %_pot_address_in_parent_stack_88 to i32*
  br label %180

; <label>:180:                                    ; preds = %175, %179
  %181 = phi i32* [ %75, %175 ], [ %_address_in_parent_stack_bt_187, %179 ]
  %_new_load_188 = load i32, i32* %181
  %182 = zext i32 %_new_load_188 to i64, !mcsema_real_eip !40
  br i1 %_cond1_n_cond2_cond3_110, label %183, label %184

; <label>:183:                                    ; preds = %180
  %_address_in_parent_stack_bt_202 = bitcast i8* %_pot_address_in_parent_stack_103 to i32*
  br label %184

; <label>:184:                                    ; preds = %180, %183
  %185 = phi i32* [ %80, %180 ], [ %_address_in_parent_stack_bt_202, %183 ]
  %_new_load_203 = load i32, i32* %185
  %186 = add i32 %_new_load_203, -1
  %187 = xor i32 %186, %_new_load_203, !mcsema_real_eip !41
  %188 = and i32 %187, 16, !mcsema_real_eip !41
  %189 = icmp ne i32 %188, 0, !mcsema_real_eip !41
  %190 = trunc i32 %186 to i8, !mcsema_real_eip !41
  %191 = tail call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !41
  %192 = and i8 %191, 1
  %193 = icmp eq i8 %192, 0
  %194 = icmp eq i32 %186, 0, !mcsema_real_eip !41
  %195 = icmp slt i32 %186, 0
  %196 = icmp eq i32 %_new_load_203, 0
  %197 = and i32 %187, %_new_load_203, !mcsema_real_eip !41
  %198 = icmp slt i32 %197, 0
  %199 = zext i32 %186 to i64, !mcsema_real_eip !41
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %200 = bitcast i64* %_allin_new_bt_49 to i32*
  store i32 %177, i32* %200, !mcsema_real_eip !42
  %_load_rsp_ptr_50 = load i8*, i8** %_RSP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rsp_ptr_50, i64 -8
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_52, !mcsema_real_eip !43
  store volatile i8* %_new_gep_51, i8** %_RSP_ptr_
  store i64 %178, i64* %RAX, !mcsema_real_eip !43
  store i64 %1, i64* %RBX, !mcsema_real_eip !43
  store i64 %199, i64* %RCX, !mcsema_real_eip !43
  store i64 %3, i64* %RDX, !mcsema_real_eip !43
  store i64 %199, i64* %RSI, !mcsema_real_eip !43
  store i64 %182, i64* %RDI, !mcsema_real_eip !43
  %_new_ptr2int_54 = ptrtoint i8* %_new_gep_51 to i64
  store volatile i64 %_new_ptr2int_54, i64* %RSP
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_56 = ptrtoint i8* %_load_rbp_ptr_55 to i64
  store volatile i64 %_new_ptr2int_56, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !43
  store i64 %7, i64* %R9, !mcsema_real_eip !43
  store i64 %8, i64* %R10, !mcsema_real_eip !43
  store i64 %9, i64* %R11, !mcsema_real_eip !43
  store i64 %10, i64* %R12, !mcsema_real_eip !43
  store i64 %11, i64* %R13, !mcsema_real_eip !43
  store i64 %12, i64* %R14, !mcsema_real_eip !43
  store i64 %13, i64* %R15, !mcsema_real_eip !43
  store i64 %14, i64* %RIP, !mcsema_real_eip !43
  store i1 %196, i1* %CF, align 1, !mcsema_real_eip !43
  store i1 %193, i1* %PF, align 1, !mcsema_real_eip !43
  store i1 %189, i1* %AF, align 1, !mcsema_real_eip !43
  store i1 %194, i1* %ZF, align 1, !mcsema_real_eip !43
  store i1 %195, i1* %SF, align 1, !mcsema_real_eip !43
  store i1 %198, i1* %OF, align 1, !mcsema_real_eip !43
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !43
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !43
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !43
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !43
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !43
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !43
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !43
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !43
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !43
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !43
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !43
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !43
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !43
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !43
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !43
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !43
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !43
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !43
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !43
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !43
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !43
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !43
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !43
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !43
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !43
  %_ptr_to_int_204 = ptrtoint i64* %44 to i64
  %_ptr_bt_206 = bitcast i64* %44 to i8*
  %_offset_above_rbp_207 = sub i64 %_ptr_to_int_204, %_local_end_to_int_
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_ptr_bt_206, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_ptr_bt_206, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_ptr_bt_206, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  br i1 %_cond1_n_cond2_cond3_215, label %201, label %202

; <label>:201:                                    ; preds = %184
  %_address_in_parent_stack_bt_217 = bitcast i8* %_pot_address_in_parent_stack_208 to i64*
  br label %202

; <label>:202:                                    ; preds = %184, %201
  %203 = phi i64* [ %44, %184 ], [ %_address_in_parent_stack_bt_217, %201 ]
  %_new_load_218 = load i64, i64* %203
  store i64 %_new_load_218, i64* %43, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !43
  store i64 %49, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !43
  store i16 %50, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !43
  store i64 %51, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !43
  store i11 %52, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !43
  store i128 %53, i128* %XMM0, align 1, !mcsema_real_eip !43
  store i128 %54, i128* %XMM1, align 1, !mcsema_real_eip !43
  store i128 %55, i128* %XMM2, align 1, !mcsema_real_eip !43
  store i128 %56, i128* %XMM3, align 1, !mcsema_real_eip !43
  store i128 %57, i128* %XMM4, align 1, !mcsema_real_eip !43
  store i128 %58, i128* %XMM5, align 1, !mcsema_real_eip !43
  store i128 %59, i128* %XMM6, align 1, !mcsema_real_eip !43
  store i128 %60, i128* %XMM7, align 1, !mcsema_real_eip !43
  store i128 %61, i128* %XMM8, align 1, !mcsema_real_eip !43
  store i128 %62, i128* %XMM9, align 1, !mcsema_real_eip !43
  store i128 %63, i128* %XMM10, align 1, !mcsema_real_eip !43
  store i128 %64, i128* %XMM11, align 1, !mcsema_real_eip !43
  store i128 %65, i128* %XMM12, align 1, !mcsema_real_eip !43
  store i128 %66, i128* %XMM13, align 1, !mcsema_real_eip !43
  store i128 %67, i128* %XMM14, align 1, !mcsema_real_eip !43
  store i128 %68, i128* %XMM15, align 1, !mcsema_real_eip !43
  store i64 %69, i64* %STACK_BASE, align 1, !mcsema_real_eip !43
  store i64 %70, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !43
  %_load_rbp_ptr_82 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_82)
  %204 = load i64, i64* %RAX, !mcsema_real_eip !43
  %205 = load i64, i64* %RBX, !mcsema_real_eip !43
  %206 = load i64, i64* %RCX, !mcsema_real_eip !43
  %207 = load i64, i64* %RDX, !mcsema_real_eip !43
  %208 = load i64, i64* %R8, !mcsema_real_eip !43
  %209 = load i64, i64* %R9, !mcsema_real_eip !43
  %210 = load i64, i64* %R10, !mcsema_real_eip !43
  %211 = load i64, i64* %R11, !mcsema_real_eip !43
  %212 = load i64, i64* %R12, !mcsema_real_eip !43
  %213 = load i64, i64* %R13, !mcsema_real_eip !43
  %214 = load i64, i64* %R14, !mcsema_real_eip !43
  %215 = load i64, i64* %R15, !mcsema_real_eip !43
  %216 = load i64, i64* %RIP, !mcsema_real_eip !43
  %217 = load i1, i1* %CF, align 1, !mcsema_real_eip !43
  %218 = load i1, i1* %PF, align 1, !mcsema_real_eip !43
  %219 = load i1, i1* %AF, align 1, !mcsema_real_eip !43
  %220 = load i1, i1* %ZF, align 1, !mcsema_real_eip !43
  %221 = load i1, i1* %SF, align 1, !mcsema_real_eip !43
  %222 = load i1, i1* %OF, align 1, !mcsema_real_eip !43
  %223 = load i1, i1* %DF, align 1, !mcsema_real_eip !43
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !43
  %224 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !43
  %225 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !43
  %226 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !43
  %227 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !43
  %228 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !43
  %229 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !43
  %230 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !43
  %231 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !43
  %232 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !43
  %233 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !43
  %234 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !43
  %235 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !43
  %236 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !43
  %237 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !43
  %238 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !43
  %239 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !43
  %240 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !43
  %241 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !43
  %242 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !43
  %243 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !43
  %244 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !43
  %245 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !43
  %246 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !43
  br i1 %_cond1_n_cond2_cond3_, label %247, label %248

; <label>:247:                                    ; preds = %202
  %_address_in_parent_stack_bt_232 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %248

; <label>:248:                                    ; preds = %202, %247
  %249 = phi i64* [ %43, %202 ], [ %_address_in_parent_stack_bt_232, %247 ]
  %_new_load_233 = load i64, i64* %249
  store i64 %_new_load_233, i64* %44, align 4
  %250 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !43
  %251 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !43
  %252 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !43
  %253 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !43
  %254 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !43
  %255 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !43
  %256 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !43
  %257 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !43
  %258 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !43
  %259 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !43
  %260 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !43
  %261 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !43
  %262 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !43
  %263 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !43
  %264 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !43
  %265 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !43
  %266 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !43
  %267 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !43
  %268 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !43
  %269 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !43
  %270 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !43
  %271 = load i64, i64* %STACK_BASE, !mcsema_real_eip !43
  %272 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !43
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -16
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %273 = bitcast i64* %_allin_new_bt_59 to i32*
  %_ptr_to_int_234 = ptrtoint i32* %273 to i64
  %_ptr_bt_236 = bitcast i32* %273 to i8*
  %_offset_above_rbp_237 = sub i64 %_ptr_to_int_234, %_local_end_to_int_
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* %_ptr_bt_236, %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* %_ptr_bt_236, %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* %_ptr_bt_236, %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond1_n_cond2_244, %_cond4_243
  br i1 %_cond1_n_cond2_cond3_245, label %274, label %275

; <label>:274:                                    ; preds = %248
  %_address_in_parent_stack_bt_247 = bitcast i8* %_pot_address_in_parent_stack_238 to i32*
  br label %275

; <label>:275:                                    ; preds = %248, %274
  %276 = phi i32* [ %273, %248 ], [ %_address_in_parent_stack_bt_247, %274 ]
  %_new_load_248 = load i32, i32* %276
  %277 = zext i32 %_new_load_248 to i64, !mcsema_real_eip !44
  %278 = and i64 %204, 4294967295
  %_load_rsp_ptr_60 = load i8*, i8** %_RSP_ptr_
  %_new_gep_61 = getelementptr i8, i8* %_load_rsp_ptr_60, i64 -8
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_62, !mcsema_real_eip !45
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_
  store i64 %204, i64* %RAX, !mcsema_real_eip !45
  store i64 %205, i64* %RBX, !mcsema_real_eip !45
  store i64 %206, i64* %RCX, !mcsema_real_eip !45
  store i64 %207, i64* %RDX, !mcsema_real_eip !45
  store i64 %278, i64* %RSI, !mcsema_real_eip !45
  store i64 %277, i64* %RDI, !mcsema_real_eip !45
  %_new_ptr2int_64 = ptrtoint i8* %_new_gep_61 to i64
  store volatile i64 %_new_ptr2int_64, i64* %RSP
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_66 = ptrtoint i8* %_load_rbp_ptr_65 to i64
  store volatile i64 %_new_ptr2int_66, i64* %RBP
  store i64 %208, i64* %R8, !mcsema_real_eip !45
  store i64 %209, i64* %R9, !mcsema_real_eip !45
  store i64 %210, i64* %R10, !mcsema_real_eip !45
  store i64 %211, i64* %R11, !mcsema_real_eip !45
  store i64 %212, i64* %R12, !mcsema_real_eip !45
  store i64 %213, i64* %R13, !mcsema_real_eip !45
  store i64 %214, i64* %R14, !mcsema_real_eip !45
  store i64 %215, i64* %R15, !mcsema_real_eip !45
  store i64 %216, i64* %RIP, !mcsema_real_eip !45
  store i1 %217, i1* %CF, align 1, !mcsema_real_eip !45
  store i1 %218, i1* %PF, align 1, !mcsema_real_eip !45
  store i1 %219, i1* %AF, align 1, !mcsema_real_eip !45
  store i1 %220, i1* %ZF, align 1, !mcsema_real_eip !45
  store i1 %221, i1* %SF, align 1, !mcsema_real_eip !45
  store i1 %222, i1* %OF, align 1, !mcsema_real_eip !45
  store i1 %223, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  store i1 %224, i1* %FPU_B, align 1, !mcsema_real_eip !45
  store i1 %225, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  store i3 %226, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  store i1 %227, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  store i1 %228, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  store i1 %229, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  store i1 %230, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  store i1 %231, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  store i1 %232, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  store i1 %233, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  store i1 %234, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  store i1 %235, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  store i1 %236, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  store i1 %237, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  store i1 %238, i1* %FPU_X, align 1, !mcsema_real_eip !45
  store i2 %239, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  store i2 %240, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  store i1 %241, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  store i1 %242, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  store i1 %243, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  store i1 %244, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  store i1 %245, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  store i1 %246, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  br i1 %_cond1_n_cond2_cond3_215, label %279, label %280

; <label>:279:                                    ; preds = %275
  %_address_in_parent_stack_bt_262 = bitcast i8* %_pot_address_in_parent_stack_208 to i64*
  br label %280

; <label>:280:                                    ; preds = %275, %279
  %281 = phi i64* [ %44, %275 ], [ %_address_in_parent_stack_bt_262, %279 ]
  %_new_load_263 = load i64, i64* %281
  store i64 %_new_load_263, i64* %43, align 4
  store i16 %250, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  store i64 %251, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  store i16 %252, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  store i64 %253, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  store i11 %254, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !45
  store i128 %255, i128* %XMM0, align 1, !mcsema_real_eip !45
  store i128 %256, i128* %XMM1, align 1, !mcsema_real_eip !45
  store i128 %257, i128* %XMM2, align 1, !mcsema_real_eip !45
  store i128 %258, i128* %XMM3, align 1, !mcsema_real_eip !45
  store i128 %259, i128* %XMM4, align 1, !mcsema_real_eip !45
  store i128 %260, i128* %XMM5, align 1, !mcsema_real_eip !45
  store i128 %261, i128* %XMM6, align 1, !mcsema_real_eip !45
  store i128 %262, i128* %XMM7, align 1, !mcsema_real_eip !45
  store i128 %263, i128* %XMM8, align 1, !mcsema_real_eip !45
  store i128 %264, i128* %XMM9, align 1, !mcsema_real_eip !45
  store i128 %265, i128* %XMM10, align 1, !mcsema_real_eip !45
  store i128 %266, i128* %XMM11, align 1, !mcsema_real_eip !45
  store i128 %267, i128* %XMM12, align 1, !mcsema_real_eip !45
  store i128 %268, i128* %XMM13, align 1, !mcsema_real_eip !45
  store i128 %269, i128* %XMM14, align 1, !mcsema_real_eip !45
  store i128 %270, i128* %XMM15, align 1, !mcsema_real_eip !45
  store i64 %271, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  store i64 %272, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_83)
  %282 = load i64, i64* %RAX, !mcsema_real_eip !45
  %283 = load i64, i64* %RBX, !mcsema_real_eip !45
  %284 = load i64, i64* %RCX, !mcsema_real_eip !45
  %285 = load i64, i64* %RDX, !mcsema_real_eip !45
  %286 = load i64, i64* %RSI, !mcsema_real_eip !45
  %287 = load i64, i64* %RDI, !mcsema_real_eip !45
  %288 = load i64, i64* %R8, !mcsema_real_eip !45
  %289 = load i64, i64* %R9, !mcsema_real_eip !45
  %290 = load i64, i64* %R10, !mcsema_real_eip !45
  %291 = load i64, i64* %R11, !mcsema_real_eip !45
  %292 = load i64, i64* %R12, !mcsema_real_eip !45
  %293 = load i64, i64* %R13, !mcsema_real_eip !45
  %294 = load i64, i64* %R14, !mcsema_real_eip !45
  %295 = load i64, i64* %R15, !mcsema_real_eip !45
  %296 = load i64, i64* %RIP, !mcsema_real_eip !45
  %297 = load i1, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !45
  %298 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !45
  %299 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %300 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %301 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %302 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %303 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %304 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %305 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %306 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %307 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %308 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %309 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %310 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %311 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %312 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !45
  %313 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %314 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %315 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %316 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %317 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %318 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %319 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %320 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  br i1 %_cond1_n_cond2_cond3_, label %321, label %322

; <label>:321:                                    ; preds = %280
  %_address_in_parent_stack_bt_277 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %322

; <label>:322:                                    ; preds = %280, %321
  %323 = phi i64* [ %43, %280 ], [ %_address_in_parent_stack_bt_277, %321 ]
  %_new_load_278 = load i64, i64* %323
  store i64 %_new_load_278, i64* %44, align 4
  %324 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %325 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !45
  %326 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %327 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !45
  %328 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !45
  %329 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !45
  %330 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !45
  %331 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !45
  %332 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !45
  %333 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !45
  %334 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !45
  %335 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !45
  %336 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !45
  %337 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !45
  %338 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !45
  %339 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !45
  %340 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !45
  %341 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !45
  %342 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !45
  %343 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !45
  %344 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !45
  %345 = load i64, i64* %STACK_BASE, !mcsema_real_eip !45
  %346 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !45
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -4
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %347 = trunc i64 %282 to i32, !mcsema_real_eip !46
  %348 = bitcast i64* %_allin_new_bt_69 to i32*
  store i32 %347, i32* %348, !mcsema_real_eip !46
  br label %block_0x70, !mcsema_real_eip !47

block_0x70:                                       ; preds = %322, %147, %block_0x18
  %RBX_val.0 = phi i64 [ %1, %block_0x18 ], [ %108, %147 ], [ %283, %322 ]
  %RCX_val.0 = phi i64 [ %2, %block_0x18 ], [ %109, %147 ], [ %284, %322 ]
  %RDX_val.0 = phi i64 [ %3, %block_0x18 ], [ %110, %147 ], [ %285, %322 ]
  %RSI_val.0 = phi i64 [ %4, %block_0x18 ], [ %111, %147 ], [ %286, %322 ]
  %RDI_val.0 = phi i64 [ %5, %block_0x18 ], [ %112, %147 ], [ %287, %322 ]
  %R8_val.0 = phi i64 [ %6, %block_0x18 ], [ %113, %147 ], [ %288, %322 ]
  %R9_val.0 = phi i64 [ %7, %block_0x18 ], [ %114, %147 ], [ %289, %322 ]
  %R10_val.0 = phi i64 [ %8, %block_0x18 ], [ %115, %147 ], [ %290, %322 ]
  %R11_val.0 = phi i64 [ %9, %block_0x18 ], [ %116, %147 ], [ %291, %322 ]
  %R12_val.0 = phi i64 [ %10, %block_0x18 ], [ %117, %147 ], [ %292, %322 ]
  %R13_val.0 = phi i64 [ %11, %block_0x18 ], [ %118, %147 ], [ %293, %322 ]
  %R14_val.0 = phi i64 [ %12, %block_0x18 ], [ %119, %147 ], [ %294, %322 ]
  %RIP_val.0 = phi i64 [ %14, %block_0x18 ], [ %121, %147 ], [ %296, %322 ]
  %DF_val.0 = phi i1 [ %15, %block_0x18 ], [ %122, %147 ], [ %297, %322 ]
  %FPU_B_val.0 = phi i1 [ %19, %block_0x18 ], [ %123, %147 ], [ %298, %322 ]
  %FPU_C3_val.0 = phi i1 [ %20, %block_0x18 ], [ %124, %147 ], [ %299, %322 ]
  %FPU_TOP_val.0 = phi i3 [ %21, %block_0x18 ], [ %125, %147 ], [ %300, %322 ]
  %FPU_C2_val.0 = phi i1 [ %22, %block_0x18 ], [ %126, %147 ], [ %301, %322 ]
  %FPU_C1_val.0 = phi i1 [ %23, %block_0x18 ], [ %127, %147 ], [ %302, %322 ]
  %FPU_C0_val.0 = phi i1 [ %24, %block_0x18 ], [ %128, %147 ], [ %303, %322 ]
  %FPU_ES_val.0 = phi i1 [ %25, %block_0x18 ], [ %129, %147 ], [ %304, %322 ]
  %FPU_SF_val.0 = phi i1 [ %26, %block_0x18 ], [ %130, %147 ], [ %305, %322 ]
  %FPU_PE_val.0 = phi i1 [ %27, %block_0x18 ], [ %131, %147 ], [ %306, %322 ]
  %FPU_UE_val.0 = phi i1 [ %28, %block_0x18 ], [ %132, %147 ], [ %307, %322 ]
  %FPU_OE_val.0 = phi i1 [ %29, %block_0x18 ], [ %133, %147 ], [ %308, %322 ]
  %FPU_ZE_val.0 = phi i1 [ %30, %block_0x18 ], [ %134, %147 ], [ %309, %322 ]
  %FPU_DE_val.0 = phi i1 [ %31, %block_0x18 ], [ %135, %147 ], [ %310, %322 ]
  %FPU_IE_val.0 = phi i1 [ %32, %block_0x18 ], [ %136, %147 ], [ %311, %322 ]
  %FPU_X_val.0 = phi i1 [ %33, %block_0x18 ], [ %137, %147 ], [ %312, %322 ]
  %FPU_RC_val.0 = phi i2 [ %34, %block_0x18 ], [ %138, %147 ], [ %313, %322 ]
  %FPU_PC_val.0 = phi i2 [ %35, %block_0x18 ], [ %139, %147 ], [ %314, %322 ]
  %FPU_PM_val.0 = phi i1 [ %36, %block_0x18 ], [ %140, %147 ], [ %315, %322 ]
  %FPU_UM_val.0 = phi i1 [ %37, %block_0x18 ], [ %141, %147 ], [ %316, %322 ]
  %FPU_OM_val.0 = phi i1 [ %38, %block_0x18 ], [ %142, %147 ], [ %317, %322 ]
  %FPU_ZM_val.0 = phi i1 [ %39, %block_0x18 ], [ %143, %147 ], [ %318, %322 ]
  %FPU_DM_val.0 = phi i1 [ %40, %block_0x18 ], [ %144, %147 ], [ %319, %322 ]
  %FPU_IM_val.0 = phi i1 [ %41, %block_0x18 ], [ %145, %147 ], [ %320, %322 ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %48, %block_0x18 ], [ %149, %147 ], [ %324, %322 ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %49, %block_0x18 ], [ %150, %147 ], [ %325, %322 ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %50, %block_0x18 ], [ %151, %147 ], [ %326, %322 ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %51, %block_0x18 ], [ %152, %147 ], [ %327, %322 ]
  %FPU_FOPCODE_val.0 = phi i11 [ %52, %block_0x18 ], [ %153, %147 ], [ %328, %322 ]
  %XMM0_val.0 = phi i128 [ %53, %block_0x18 ], [ %154, %147 ], [ %329, %322 ]
  %XMM1_val.0 = phi i128 [ %54, %block_0x18 ], [ %155, %147 ], [ %330, %322 ]
  %XMM2_val.0 = phi i128 [ %55, %block_0x18 ], [ %156, %147 ], [ %331, %322 ]
  %XMM3_val.0 = phi i128 [ %56, %block_0x18 ], [ %157, %147 ], [ %332, %322 ]
  %XMM4_val.0 = phi i128 [ %57, %block_0x18 ], [ %158, %147 ], [ %333, %322 ]
  %XMM5_val.0 = phi i128 [ %58, %block_0x18 ], [ %159, %147 ], [ %334, %322 ]
  %XMM6_val.0 = phi i128 [ %59, %block_0x18 ], [ %160, %147 ], [ %335, %322 ]
  %XMM7_val.0 = phi i128 [ %60, %block_0x18 ], [ %161, %147 ], [ %336, %322 ]
  %XMM8_val.0 = phi i128 [ %61, %block_0x18 ], [ %162, %147 ], [ %337, %322 ]
  %XMM9_val.0 = phi i128 [ %62, %block_0x18 ], [ %163, %147 ], [ %338, %322 ]
  %XMM10_val.0 = phi i128 [ %63, %block_0x18 ], [ %164, %147 ], [ %339, %322 ]
  %XMM11_val.0 = phi i128 [ %64, %block_0x18 ], [ %165, %147 ], [ %340, %322 ]
  %XMM12_val.0 = phi i128 [ %65, %block_0x18 ], [ %166, %147 ], [ %341, %322 ]
  %XMM13_val.0 = phi i128 [ %66, %block_0x18 ], [ %167, %147 ], [ %342, %322 ]
  %XMM14_val.0 = phi i128 [ %67, %block_0x18 ], [ %168, %147 ], [ %343, %322 ]
  %XMM15_val.0 = phi i128 [ %68, %block_0x18 ], [ %169, %147 ], [ %344, %322 ]
  %STACK_BASE_val.0 = phi i64 [ %69, %block_0x18 ], [ %170, %147 ], [ %345, %322 ]
  %STACK_LIMIT_val.0 = phi i64 [ %70, %block_0x18 ], [ %171, %147 ], [ %346, %322 ]
  %R15_val.0 = phi i64 [ %13, %block_0x18 ], [ %120, %147 ], [ %295, %322 ]
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -4
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %349 = bitcast i64* %_allin_new_bt_72 to i32*
  %_ptr_to_int_279 = ptrtoint i32* %349 to i64
  %_ptr_bt_281 = bitcast i32* %349 to i8*
  %_offset_above_rbp_282 = sub i64 %_ptr_to_int_279, %_local_end_to_int_
  %_pot_address_in_parent_stack_283 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_282
  %_cond1_284 = icmp ugt i8* %_ptr_bt_281, %_local_stack_end_ptr_
  %_cond2_1_285 = icmp ugt i8* %_ptr_bt_281, %_parent_stack_end_ptr_
  %_cond2_2_286 = icmp ult i8* %_ptr_bt_281, %_parent_stack_start_ptr_
  %_cond2_287 = or i1 %_cond2_1_285, %_cond2_2_286
  %_cond4_288 = icmp ule i8* %_pot_address_in_parent_stack_283, %_parent_stack_end_ptr_
  %_cond1_n_cond2_289 = and i1 %_cond1_284, %_cond2_287
  %_cond1_n_cond2_cond3_290 = and i1 %_cond1_n_cond2_289, %_cond4_288
  br i1 %_cond1_n_cond2_cond3_290, label %350, label %351

; <label>:350:                                    ; preds = %block_0x70
  %_address_in_parent_stack_bt_292 = bitcast i8* %_pot_address_in_parent_stack_283 to i32*
  br label %351

; <label>:351:                                    ; preds = %block_0x70, %350
  %352 = phi i32* [ %349, %block_0x70 ], [ %_address_in_parent_stack_bt_292, %350 ]
  %_new_load_293 = load i32, i32* %352
  %353 = zext i32 %_new_load_293 to i64, !mcsema_real_eip !48
  %_load_rsp_ptr_73 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_74 = ptrtoint i8* %_load_rsp_ptr_73 to i64
  %uadd491 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_74, i64 16)
  %354 = extractvalue { i64, i1 } %uadd491, 0
  %355 = xor i64 %354, %_new_ptr2int_74, !mcsema_real_eip !49
  %356 = and i64 %355, 16
  %357 = icmp eq i64 %356, 0
  %358 = icmp slt i64 %354, 0
  %359 = icmp eq i64 %354, 0, !mcsema_real_eip !49
  %360 = xor i64 %_new_ptr2int_74, -9223372036854775808, !mcsema_real_eip !49
  %361 = and i64 %355, %360, !mcsema_real_eip !49
  %362 = icmp slt i64 %361, 0
  %363 = trunc i64 %354 to i8, !mcsema_real_eip !49
  %364 = tail call i8 @llvm.ctpop.i8(i8 %363), !mcsema_real_eip !49
  %365 = and i8 %364, 1
  %366 = icmp eq i8 %365, 0
  %367 = extractvalue { i64, i1 } %uadd491, 1
  %_new_int2ptr_ = inttoptr i64 %354 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %368 = inttoptr i64 %354 to i64*, !mcsema_real_eip !50
  %_ptr_bt_296 = bitcast i64* %368 to i8*
  %_offset_above_rbp_297 = sub i64 %354, %_local_end_to_int_
  %_pot_address_in_parent_stack_298 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_297
  %_cond1_299 = icmp ugt i8* %_ptr_bt_296, %_local_stack_end_ptr_
  %_cond2_1_300 = icmp ugt i8* %_ptr_bt_296, %_parent_stack_end_ptr_
  %_cond2_2_301 = icmp ult i8* %_ptr_bt_296, %_parent_stack_start_ptr_
  %_cond2_302 = or i1 %_cond2_1_300, %_cond2_2_301
  %_cond4_303 = icmp ule i8* %_pot_address_in_parent_stack_298, %_parent_stack_end_ptr_
  %_cond1_n_cond2_304 = and i1 %_cond1_299, %_cond2_302
  %_cond1_n_cond2_cond3_305 = and i1 %_cond1_n_cond2_304, %_cond4_303
  br i1 %_cond1_n_cond2_cond3_305, label %369, label %370

; <label>:369:                                    ; preds = %351
  %_address_in_parent_stack_bt_307 = bitcast i8* %_pot_address_in_parent_stack_298 to i64*
  br label %370

; <label>:370:                                    ; preds = %351, %369
  %371 = phi i64* [ %368, %351 ], [ %_address_in_parent_stack_bt_307, %369 ]
  %_new_load_308 = load i64, i64* %371
  %_new_int2ptr_75 = inttoptr i64 %_new_load_308 to i8*
  store volatile i8* %_new_int2ptr_75, i8** %_RBP_ptr_
  %372 = add i64 %354, 16, !mcsema_real_eip !51
  %_new_int2ptr_76 = inttoptr i64 %372 to i8*
  store volatile i8* %_new_int2ptr_76, i8** %_RSP_ptr_
  store i64 %353, i64* %RAX, !mcsema_real_eip !51
  store i64 %RBX_val.0, i64* %RBX, !mcsema_real_eip !51
  store i64 %RCX_val.0, i64* %RCX, !mcsema_real_eip !51
  store i64 %RDX_val.0, i64* %RDX, !mcsema_real_eip !51
  store i64 %RSI_val.0, i64* %RSI, !mcsema_real_eip !51
  store i64 %RDI_val.0, i64* %RDI, !mcsema_real_eip !51
  store volatile i64 %372, i64* %RSP
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_80 = ptrtoint i8* %_load_rbp_ptr_79 to i64
  store volatile i64 %_new_ptr2int_80, i64* %RBP
  store i64 %R8_val.0, i64* %R8, !mcsema_real_eip !51
  store i64 %R9_val.0, i64* %R9, !mcsema_real_eip !51
  store i64 %R10_val.0, i64* %R10, !mcsema_real_eip !51
  store i64 %R11_val.0, i64* %R11, !mcsema_real_eip !51
  store i64 %R12_val.0, i64* %R12, !mcsema_real_eip !51
  store i64 %R13_val.0, i64* %R13, !mcsema_real_eip !51
  store i64 %R14_val.0, i64* %R14, !mcsema_real_eip !51
  store i64 %R15_val.0, i64* %R15, !mcsema_real_eip !51
  store i64 %RIP_val.0, i64* %RIP, !mcsema_real_eip !51
  store i1 %367, i1* %CF, align 1, !mcsema_real_eip !51
  store i1 %366, i1* %PF, align 1, !mcsema_real_eip !51
  store i1 %357, i1* %AF, align 1, !mcsema_real_eip !51
  store i1 %359, i1* %ZF, align 1, !mcsema_real_eip !51
  store i1 %358, i1* %SF, align 1, !mcsema_real_eip !51
  store i1 %362, i1* %OF, align 1, !mcsema_real_eip !51
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !51
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !51
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !51
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %_ptr_to_int_309 = ptrtoint i64* %44 to i64
  %_ptr_bt_311 = bitcast i64* %44 to i8*
  %_offset_above_rbp_312 = sub i64 %_ptr_to_int_309, %_local_end_to_int_
  %_pot_address_in_parent_stack_313 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_312
  %_cond1_314 = icmp ugt i8* %_ptr_bt_311, %_local_stack_end_ptr_
  %_cond2_1_315 = icmp ugt i8* %_ptr_bt_311, %_parent_stack_end_ptr_
  %_cond2_2_316 = icmp ult i8* %_ptr_bt_311, %_parent_stack_start_ptr_
  %_cond2_317 = or i1 %_cond2_1_315, %_cond2_2_316
  %_cond4_318 = icmp ule i8* %_pot_address_in_parent_stack_313, %_parent_stack_end_ptr_
  %_cond1_n_cond2_319 = and i1 %_cond1_314, %_cond2_317
  %_cond1_n_cond2_cond3_320 = and i1 %_cond1_n_cond2_319, %_cond4_318
  br i1 %_cond1_n_cond2_cond3_320, label %373, label %374

; <label>:373:                                    ; preds = %370
  %_address_in_parent_stack_bt_322 = bitcast i8* %_pot_address_in_parent_stack_313 to i64*
  br label %374

; <label>:374:                                    ; preds = %370, %373
  %375 = phi i64* [ %44, %370 ], [ %_address_in_parent_stack_bt_322, %373 ]
  %_new_load_323 = load i64, i64* %375
  store i64 %_new_load_323, i64* %43, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !51
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !51
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !51
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !51
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !51
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !51
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !51
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !51
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !51
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !51
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !51
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !51
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !51
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !51
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !51
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !51
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !51
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !51
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !51
  store i64 %STACK_BASE_val.0, i64* %STACK_BASE, align 1, !mcsema_real_eip !51
  store i64 %STACK_LIMIT_val.0, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 128}
!3 = !{i64 136}
!4 = !{i64 143}
!5 = !{i64 146}
!6 = !{i64 150}
!7 = !{i64 154}
!8 = !{i64 160}
!9 = !{i64 164}
!10 = !{i64 168}
!11 = !{i64 173}
!12 = !{i64 176}
!13 = !{i64 186}
!14 = !{i64 189}
!15 = !{i64 194}
!16 = !{i64 202}
!17 = !{i64 205}
!18 = !{i64 211}
!19 = !{i64 216}
!20 = !{i64 231}
!21 = !{i64 238}
!22 = !{i64 245}
!23 = !{i64 250}
!24 = !{i64 254}
!25 = !{i64 255}
!26 = !{i64 0}
!27 = !{i64 8}
!28 = !{i64 11}
!29 = !{i64 14}
!30 = !{i64 18}
!31 = !{i64 30}
!32 = !{i64 33}
!33 = !{i64 38}
!34 = !{i64 42}
!35 = !{i64 56}
!36 = !{i64 61}
!37 = !{i64 66}
!38 = !{i64 69}
!39 = !{i64 77}
!40 = !{i64 80}
!41 = !{i64 86}
!42 = !{i64 91}
!43 = !{i64 94}
!44 = !{i64 99}
!45 = !{i64 104}
!46 = !{i64 109}
!47 = !{i64 48}
!48 = !{i64 112}
!49 = !{i64 115}
!50 = !{i64 119}
!51 = !{i64 120}
