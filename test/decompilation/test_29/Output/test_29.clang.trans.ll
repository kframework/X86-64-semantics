; ModuleID = 'Output/test_29.clang.trans.bc'
source_filename = "Output/test_29.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [20 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x4007d0 = internal constant %0 <{ [20 x i8] c"\01\00\02\00%d %d %d %d %d\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_400630(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
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
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 %2, i64* %_allin_new_bt_, !mcsema_real_eip !2
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %68 = and i64 %_trans_xor_, 16
  %69 = icmp eq i64 %68, 0
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  %_allin_new_bt_3 = bitcast i8* %_new_gep_1 to i64*
  %70 = bitcast i64* %_allin_new_bt_3 to i32*
  store i32 5, i32* %70, !mcsema_real_eip !3
  %_new_gep_5 = getelementptr i8, i8* %_new_gep_1, i64 4
  %_allin_new_bt_6 = bitcast i8* %_new_gep_5 to i64*
  %71 = bitcast i64* %_allin_new_bt_6 to i32*
  store i32 6, i32* %71, !mcsema_real_eip !4
  %_new_gep_8 = getelementptr i8, i8* %_new_gep_1, i64 8
  %_allin_new_bt_9 = bitcast i8* %_new_gep_8 to i64*
  %72 = bitcast i64* %_allin_new_bt_9 to i32*
  store i32 7, i32* %72, !mcsema_real_eip !5
  %_new_gep_11 = getelementptr i8, i8* %_new_gep_1, i64 12
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %73 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 8, i32* %73, !mcsema_real_eip !6
  %74 = ptrtoint i64* %_allin_new_bt_3 to i64, !mcsema_real_eip !7
  %_new_gep_16 = getelementptr i8, i8* %_new_gep_1, i64 -8
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_17, !mcsema_real_eip !8
  store volatile i8* %_new_gep_16, i8** %_RSP_ptr_
  store i64 %1, i64* %RAX, !mcsema_real_eip !8
  store i64 %74, i64* %RBX, !mcsema_real_eip !8
  store i64 %3, i64* %RCX, !mcsema_real_eip !8
  store i64 %4, i64* %RDX, !mcsema_real_eip !8
  store i64 %74, i64* %RSI, !mcsema_real_eip !8
  store i64 0, i64* %RDI, !mcsema_real_eip !8
  %_new_ptr2int_ = ptrtoint i8* %_new_gep_16 to i64
  store volatile i64 %_new_ptr2int_, i64* %RSP
  store volatile i64 undef, i64* %RBP
  store i64 %5, i64* %R8, !mcsema_real_eip !8
  store i64 %6, i64* %R9, !mcsema_real_eip !8
  store i64 %7, i64* %R10, !mcsema_real_eip !8
  store i64 %8, i64* %R11, !mcsema_real_eip !8
  store i64 %9, i64* %R12, !mcsema_real_eip !8
  store i64 %10, i64* %R13, !mcsema_real_eip !8
  store i64 %11, i64* %R14, !mcsema_real_eip !8
  store i64 %12, i64* %R15, !mcsema_real_eip !8
  store i64 %13, i64* %RIP, !mcsema_real_eip !8
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !8
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !8
  store i1 %69, i1* %AF, align 1, !mcsema_real_eip !8
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !8
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !8
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !8
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !8
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !8
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !8
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !8
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !8
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !8
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !8
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !8
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !8
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !8
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !8
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !8
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !8
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !8
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !8
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !8
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !8
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !8
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !8
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !8
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !8
  %75 = load i64, i64* %43, align 4
  store i64 %75, i64* %42, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !8
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !8
  store i11 %49, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !8
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !8
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !8
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !8
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !8
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !8
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !8
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !8
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !8
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !8
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !8
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !8
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !8
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !8
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !8
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !8
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !8
  store i64 %66, i64* %STACK_BASE, align 1, !mcsema_real_eip !8
  store i64 %67, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !8
  call void @sub_4005f0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* undef)
  %76 = load i64, i64* %RAX, !mcsema_real_eip !8
  %77 = load i64, i64* %RBX, !mcsema_real_eip !8
  %78 = load i64, i64* %RCX, !mcsema_real_eip !8
  %79 = load i64, i64* %RDX, !mcsema_real_eip !8
  %80 = load i64, i64* %R8, !mcsema_real_eip !8
  %81 = load i64, i64* %R9, !mcsema_real_eip !8
  %82 = load i64, i64* %R10, !mcsema_real_eip !8
  %83 = load i64, i64* %R11, !mcsema_real_eip !8
  %84 = load i64, i64* %R12, !mcsema_real_eip !8
  %85 = load i64, i64* %R13, !mcsema_real_eip !8
  %86 = load i64, i64* %R14, !mcsema_real_eip !8
  %87 = load i64, i64* %R15, !mcsema_real_eip !8
  %88 = load i64, i64* %RIP, !mcsema_real_eip !8
  %89 = load i1, i1* %CF, align 1, !mcsema_real_eip !8
  %90 = load i1, i1* %PF, align 1, !mcsema_real_eip !8
  %91 = load i1, i1* %AF, align 1, !mcsema_real_eip !8
  %92 = load i1, i1* %ZF, align 1, !mcsema_real_eip !8
  %93 = load i1, i1* %SF, align 1, !mcsema_real_eip !8
  %94 = load i1, i1* %OF, align 1, !mcsema_real_eip !8
  %95 = load i1, i1* %DF, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !8
  %96 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !8
  %97 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !8
  %98 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  %99 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !8
  %100 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !8
  %101 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !8
  %102 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !8
  %103 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !8
  %104 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !8
  %105 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !8
  %106 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !8
  %107 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  %108 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !8
  %109 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !8
  %110 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !8
  %111 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !8
  %112 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !8
  %113 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !8
  %114 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !8
  %115 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !8
  %116 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  %117 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !8
  %118 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !8
  %119 = load i64, i64* %42, align 4
  store i64 %119, i64* %43, align 4
  %120 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  %121 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !8
  %122 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  %123 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !8
  %124 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !8
  %125 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !8
  %126 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !8
  %127 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !8
  %128 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !8
  %129 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !8
  %130 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !8
  %131 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !8
  %132 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !8
  %133 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !8
  %134 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !8
  %135 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !8
  %136 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !8
  %137 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !8
  %138 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !8
  %139 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !8
  %140 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !8
  %141 = load i64, i64* %STACK_BASE, !mcsema_real_eip !8
  %142 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !8
  %_load_rsp_ptr_20 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_21 = bitcast i8* %_load_rsp_ptr_20 to i64*
  %143 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 5, i32* %143, !mcsema_real_eip !9
  %_load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_22, i64 4
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %144 = bitcast i64* %_allin_new_bt_24 to i32*
  store i32 6, i32* %144, !mcsema_real_eip !10
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 8
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %145 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 7, i32* %145, !mcsema_real_eip !11
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 12
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %146 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 8, i32* %146, !mcsema_real_eip !12
  %_load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_33, !mcsema_real_eip !13
  store volatile i8* %_new_gep_32, i8** %_RSP_ptr_
  store i64 %76, i64* %RAX, !mcsema_real_eip !13
  store i64 %77, i64* %RBX, !mcsema_real_eip !13
  store i64 %78, i64* %RCX, !mcsema_real_eip !13
  store i64 %79, i64* %RDX, !mcsema_real_eip !13
  store i64 %77, i64* %RSI, !mcsema_real_eip !13
  store i64 1, i64* %RDI, !mcsema_real_eip !13
  %_new_ptr2int_35 = ptrtoint i8* %_new_gep_32 to i64
  store volatile i64 %_new_ptr2int_35, i64* %RSP
  store volatile i64 undef, i64* %RBP
  store i64 %80, i64* %R8, !mcsema_real_eip !13
  store i64 %81, i64* %R9, !mcsema_real_eip !13
  store i64 %82, i64* %R10, !mcsema_real_eip !13
  store i64 %83, i64* %R11, !mcsema_real_eip !13
  store i64 %84, i64* %R12, !mcsema_real_eip !13
  store i64 %85, i64* %R13, !mcsema_real_eip !13
  store i64 %86, i64* %R14, !mcsema_real_eip !13
  store i64 %87, i64* %R15, !mcsema_real_eip !13
  store i64 %88, i64* %RIP, !mcsema_real_eip !13
  store i1 %89, i1* %CF, align 1, !mcsema_real_eip !13
  store i1 %90, i1* %PF, align 1, !mcsema_real_eip !13
  store i1 %91, i1* %AF, align 1, !mcsema_real_eip !13
  store i1 %92, i1* %ZF, align 1, !mcsema_real_eip !13
  store i1 %93, i1* %SF, align 1, !mcsema_real_eip !13
  store i1 %94, i1* %OF, align 1, !mcsema_real_eip !13
  store i1 %95, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  store i1 %96, i1* %FPU_B, align 1, !mcsema_real_eip !13
  store i1 %97, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  store i3 %98, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  store i1 %99, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  store i1 %100, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  store i1 %101, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  store i1 %102, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  store i1 %103, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  store i1 %104, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  store i1 %105, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  store i1 %106, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  store i1 %107, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  store i1 %108, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  store i1 %109, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  store i1 %110, i1* %FPU_X, align 1, !mcsema_real_eip !13
  store i2 %111, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  store i2 %112, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  store i1 %113, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  store i1 %114, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  store i1 %115, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  store i1 %116, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  store i1 %117, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  store i1 %118, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %147 = load i64, i64* %43, align 4
  store i64 %147, i64* %42, align 4
  store i16 %120, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  store i64 %121, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  store i16 %122, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  store i64 %123, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  store i11 %124, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !13
  store i128 %125, i128* %XMM0, align 1, !mcsema_real_eip !13
  store i128 %126, i128* %XMM1, align 1, !mcsema_real_eip !13
  store i128 %127, i128* %XMM2, align 1, !mcsema_real_eip !13
  store i128 %128, i128* %XMM3, align 1, !mcsema_real_eip !13
  store i128 %129, i128* %XMM4, align 1, !mcsema_real_eip !13
  store i128 %130, i128* %XMM5, align 1, !mcsema_real_eip !13
  store i128 %131, i128* %XMM6, align 1, !mcsema_real_eip !13
  store i128 %132, i128* %XMM7, align 1, !mcsema_real_eip !13
  store i128 %133, i128* %XMM8, align 1, !mcsema_real_eip !13
  store i128 %134, i128* %XMM9, align 1, !mcsema_real_eip !13
  store i128 %135, i128* %XMM10, align 1, !mcsema_real_eip !13
  store i128 %136, i128* %XMM11, align 1, !mcsema_real_eip !13
  store i128 %137, i128* %XMM12, align 1, !mcsema_real_eip !13
  store i128 %138, i128* %XMM13, align 1, !mcsema_real_eip !13
  store i128 %139, i128* %XMM14, align 1, !mcsema_real_eip !13
  store i128 %140, i128* %XMM15, align 1, !mcsema_real_eip !13
  store i64 %141, i64* %STACK_BASE, align 1, !mcsema_real_eip !13
  store i64 %142, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !13
  call void @sub_4005f0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* undef)
  %148 = load i64, i64* %RAX, !mcsema_real_eip !13
  %149 = load i64, i64* %RBX, !mcsema_real_eip !13
  %150 = load i64, i64* %RCX, !mcsema_real_eip !13
  %151 = load i64, i64* %RDX, !mcsema_real_eip !13
  %152 = load i64, i64* %R8, !mcsema_real_eip !13
  %153 = load i64, i64* %R9, !mcsema_real_eip !13
  %154 = load i64, i64* %R10, !mcsema_real_eip !13
  %155 = load i64, i64* %R11, !mcsema_real_eip !13
  %156 = load i64, i64* %R12, !mcsema_real_eip !13
  %157 = load i64, i64* %R13, !mcsema_real_eip !13
  %158 = load i64, i64* %R14, !mcsema_real_eip !13
  %159 = load i64, i64* %R15, !mcsema_real_eip !13
  %160 = load i64, i64* %RIP, !mcsema_real_eip !13
  %161 = load i1, i1* %CF, align 1, !mcsema_real_eip !13
  %162 = load i1, i1* %PF, align 1, !mcsema_real_eip !13
  %163 = load i1, i1* %AF, align 1, !mcsema_real_eip !13
  %164 = load i1, i1* %ZF, align 1, !mcsema_real_eip !13
  %165 = load i1, i1* %SF, align 1, !mcsema_real_eip !13
  %166 = load i1, i1* %OF, align 1, !mcsema_real_eip !13
  %167 = load i1, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !13
  %168 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !13
  %169 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  %170 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  %171 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  %172 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  %173 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  %174 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  %175 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  %176 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  %177 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  %178 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  %179 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  %180 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  %181 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  %182 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !13
  %183 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  %184 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  %185 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  %186 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  %187 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  %188 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  %189 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  %190 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %191 = load i64, i64* %42, align 4
  store i64 %191, i64* %43, align 4
  %192 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  %193 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !13
  %194 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  %195 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !13
  %196 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !13
  %197 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !13
  %198 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !13
  %199 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !13
  %200 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !13
  %201 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !13
  %202 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !13
  %203 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !13
  %204 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !13
  %205 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !13
  %206 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !13
  %207 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !13
  %208 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !13
  %209 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !13
  %210 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !13
  %211 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !13
  %212 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !13
  %213 = load i64, i64* %STACK_BASE, !mcsema_real_eip !13
  %214 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !13
  %_load_rsp_ptr_38 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_39 = bitcast i8* %_load_rsp_ptr_38 to i64*
  %215 = bitcast i64* %_allin_new_bt_39 to i32*
  store i32 5, i32* %215, !mcsema_real_eip !14
  %_load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_40, i64 4
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %216 = bitcast i64* %_allin_new_bt_42 to i32*
  store i32 6, i32* %216, !mcsema_real_eip !15
  %_load_rsp_ptr_43 = load i8*, i8** %_RSP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rsp_ptr_43, i64 8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %217 = bitcast i64* %_allin_new_bt_45 to i32*
  store i32 7, i32* %217, !mcsema_real_eip !16
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 12
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %218 = bitcast i64* %_allin_new_bt_48 to i32*
  store i32 8, i32* %218, !mcsema_real_eip !17
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_51, !mcsema_real_eip !18
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %148, i64* %RAX, !mcsema_real_eip !18
  store i64 %149, i64* %RBX, !mcsema_real_eip !18
  store i64 %150, i64* %RCX, !mcsema_real_eip !18
  store i64 %151, i64* %RDX, !mcsema_real_eip !18
  store i64 %149, i64* %RSI, !mcsema_real_eip !18
  store i64 2, i64* %RDI, !mcsema_real_eip !18
  %_new_ptr2int_53 = ptrtoint i8* %_new_gep_50 to i64
  store volatile i64 %_new_ptr2int_53, i64* %RSP
  store volatile i64 undef, i64* %RBP
  store i64 %152, i64* %R8, !mcsema_real_eip !18
  store i64 %153, i64* %R9, !mcsema_real_eip !18
  store i64 %154, i64* %R10, !mcsema_real_eip !18
  store i64 %155, i64* %R11, !mcsema_real_eip !18
  store i64 %156, i64* %R12, !mcsema_real_eip !18
  store i64 %157, i64* %R13, !mcsema_real_eip !18
  store i64 %158, i64* %R14, !mcsema_real_eip !18
  store i64 %159, i64* %R15, !mcsema_real_eip !18
  store i64 %160, i64* %RIP, !mcsema_real_eip !18
  store i1 %161, i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %162, i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %163, i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %164, i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %165, i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %166, i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %167, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  store i1 %168, i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %169, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i3 %170, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i1 %171, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %172, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %173, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %174, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %175, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %176, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %177, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %178, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %179, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %180, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %181, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %182, i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i2 %183, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %184, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i1 %185, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %186, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %187, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %188, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %189, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %190, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %219 = load i64, i64* %43, align 4
  store i64 %219, i64* %42, align 4
  store i16 %192, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i64 %193, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  store i16 %194, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i64 %195, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  store i11 %196, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  store i128 %197, i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %198, i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %199, i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %200, i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %201, i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %202, i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %203, i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %204, i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %205, i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %206, i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %207, i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %208, i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %209, i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %210, i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %211, i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %212, i128* %XMM15, align 1, !mcsema_real_eip !18
  store i64 %213, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  store i64 %214, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  call void @sub_4005f0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* undef)
  %220 = load i64, i64* %RAX, !mcsema_real_eip !18
  %221 = load i64, i64* %RBX, !mcsema_real_eip !18
  %222 = load i64, i64* %RCX, !mcsema_real_eip !18
  %223 = load i64, i64* %RDX, !mcsema_real_eip !18
  %224 = load i64, i64* %R8, !mcsema_real_eip !18
  %225 = load i64, i64* %R9, !mcsema_real_eip !18
  %226 = load i64, i64* %R10, !mcsema_real_eip !18
  %227 = load i64, i64* %R11, !mcsema_real_eip !18
  %228 = load i64, i64* %R12, !mcsema_real_eip !18
  %229 = load i64, i64* %R13, !mcsema_real_eip !18
  %230 = load i64, i64* %R14, !mcsema_real_eip !18
  %231 = load i64, i64* %R15, !mcsema_real_eip !18
  %232 = load i64, i64* %RIP, !mcsema_real_eip !18
  %233 = load i1, i1* %CF, align 1, !mcsema_real_eip !18
  %234 = load i1, i1* %PF, align 1, !mcsema_real_eip !18
  %235 = load i1, i1* %AF, align 1, !mcsema_real_eip !18
  %236 = load i1, i1* %ZF, align 1, !mcsema_real_eip !18
  %237 = load i1, i1* %SF, align 1, !mcsema_real_eip !18
  %238 = load i1, i1* %OF, align 1, !mcsema_real_eip !18
  %239 = load i1, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %240 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %241 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %242 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %243 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %244 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %245 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %246 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %247 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %248 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %249 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %250 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %251 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %252 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %253 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %254 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %255 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %256 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %257 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %258 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %259 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %260 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %261 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %262 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %263 = load i64, i64* %42, align 4
  store i64 %263, i64* %43, align 4
  %264 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %265 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  %266 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %267 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  %268 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  %269 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !18
  %270 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !18
  %271 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !18
  %272 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !18
  %273 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !18
  %274 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !18
  %275 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !18
  %276 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !18
  %277 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !18
  %278 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !18
  %279 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !18
  %280 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !18
  %281 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !18
  %282 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !18
  %283 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !18
  %284 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !18
  %285 = load i64, i64* %STACK_BASE, !mcsema_real_eip !18
  %286 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !18
  %_load_rsp_ptr_56 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_57 = bitcast i8* %_load_rsp_ptr_56 to i64*
  %287 = bitcast i64* %_allin_new_bt_57 to i32*
  store i32 5, i32* %287, !mcsema_real_eip !19
  %_load_rsp_ptr_58 = load i8*, i8** %_RSP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rsp_ptr_58, i64 4
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %288 = bitcast i64* %_allin_new_bt_60 to i32*
  store i32 6, i32* %288, !mcsema_real_eip !20
  %_load_rsp_ptr_61 = load i8*, i8** %_RSP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rsp_ptr_61, i64 8
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %289 = bitcast i64* %_allin_new_bt_63 to i32*
  store i32 7, i32* %289, !mcsema_real_eip !21
  %_load_rsp_ptr_64 = load i8*, i8** %_RSP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rsp_ptr_64, i64 12
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %290 = bitcast i64* %_allin_new_bt_66 to i32*
  store i32 8, i32* %290, !mcsema_real_eip !22
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %_new_gep_68 = getelementptr i8, i8* %_load_rsp_ptr_67, i64 -8
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_69, !mcsema_real_eip !23
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_
  store i64 %220, i64* %RAX, !mcsema_real_eip !23
  store i64 %221, i64* %RBX, !mcsema_real_eip !23
  store i64 %222, i64* %RCX, !mcsema_real_eip !23
  store i64 %223, i64* %RDX, !mcsema_real_eip !23
  store i64 %221, i64* %RSI, !mcsema_real_eip !23
  store i64 3, i64* %RDI, !mcsema_real_eip !23
  %_new_ptr2int_71 = ptrtoint i8* %_new_gep_68 to i64
  store volatile i64 %_new_ptr2int_71, i64* %RSP
  store volatile i64 undef, i64* %RBP
  store i64 %224, i64* %R8, !mcsema_real_eip !23
  store i64 %225, i64* %R9, !mcsema_real_eip !23
  store i64 %226, i64* %R10, !mcsema_real_eip !23
  store i64 %227, i64* %R11, !mcsema_real_eip !23
  store i64 %228, i64* %R12, !mcsema_real_eip !23
  store i64 %229, i64* %R13, !mcsema_real_eip !23
  store i64 %230, i64* %R14, !mcsema_real_eip !23
  store i64 %231, i64* %R15, !mcsema_real_eip !23
  store i64 %232, i64* %RIP, !mcsema_real_eip !23
  store i1 %233, i1* %CF, align 1, !mcsema_real_eip !23
  store i1 %234, i1* %PF, align 1, !mcsema_real_eip !23
  store i1 %235, i1* %AF, align 1, !mcsema_real_eip !23
  store i1 %236, i1* %ZF, align 1, !mcsema_real_eip !23
  store i1 %237, i1* %SF, align 1, !mcsema_real_eip !23
  store i1 %238, i1* %OF, align 1, !mcsema_real_eip !23
  store i1 %239, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  store i1 %240, i1* %FPU_B, align 1, !mcsema_real_eip !23
  store i1 %241, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  store i3 %242, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  store i1 %243, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  store i1 %244, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  store i1 %245, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  store i1 %246, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  store i1 %247, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  store i1 %248, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  store i1 %249, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  store i1 %250, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  store i1 %251, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  store i1 %252, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  store i1 %253, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  store i1 %254, i1* %FPU_X, align 1, !mcsema_real_eip !23
  store i2 %255, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  store i2 %256, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  store i1 %257, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  store i1 %258, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  store i1 %259, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  store i1 %260, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  store i1 %261, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  store i1 %262, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %291 = load i64, i64* %43, align 4
  store i64 %291, i64* %42, align 4
  store i16 %264, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  store i64 %265, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  store i16 %266, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  store i64 %267, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  store i11 %268, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  store i128 %269, i128* %XMM0, align 1, !mcsema_real_eip !23
  store i128 %270, i128* %XMM1, align 1, !mcsema_real_eip !23
  store i128 %271, i128* %XMM2, align 1, !mcsema_real_eip !23
  store i128 %272, i128* %XMM3, align 1, !mcsema_real_eip !23
  store i128 %273, i128* %XMM4, align 1, !mcsema_real_eip !23
  store i128 %274, i128* %XMM5, align 1, !mcsema_real_eip !23
  store i128 %275, i128* %XMM6, align 1, !mcsema_real_eip !23
  store i128 %276, i128* %XMM7, align 1, !mcsema_real_eip !23
  store i128 %277, i128* %XMM8, align 1, !mcsema_real_eip !23
  store i128 %278, i128* %XMM9, align 1, !mcsema_real_eip !23
  store i128 %279, i128* %XMM10, align 1, !mcsema_real_eip !23
  store i128 %280, i128* %XMM11, align 1, !mcsema_real_eip !23
  store i128 %281, i128* %XMM12, align 1, !mcsema_real_eip !23
  store i128 %282, i128* %XMM13, align 1, !mcsema_real_eip !23
  store i128 %283, i128* %XMM14, align 1, !mcsema_real_eip !23
  store i128 %284, i128* %XMM15, align 1, !mcsema_real_eip !23
  store i64 %285, i64* %STACK_BASE, align 1, !mcsema_real_eip !23
  store i64 %286, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !23
  call void @sub_4005f0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* undef)
  %292 = load i64, i64* %RAX, !mcsema_real_eip !23
  %293 = load i64, i64* %RBX, !mcsema_real_eip !23
  %294 = load i64, i64* %RCX, !mcsema_real_eip !23
  %295 = load i64, i64* %RDX, !mcsema_real_eip !23
  %296 = load i64, i64* %R8, !mcsema_real_eip !23
  %297 = load i64, i64* %R9, !mcsema_real_eip !23
  %298 = load i64, i64* %R10, !mcsema_real_eip !23
  %299 = load i64, i64* %R11, !mcsema_real_eip !23
  %300 = load i64, i64* %R12, !mcsema_real_eip !23
  %301 = load i64, i64* %R13, !mcsema_real_eip !23
  %302 = load i64, i64* %R14, !mcsema_real_eip !23
  %303 = load i64, i64* %R15, !mcsema_real_eip !23
  %304 = load i64, i64* %RIP, !mcsema_real_eip !23
  %305 = load i1, i1* %CF, align 1, !mcsema_real_eip !23
  %306 = load i1, i1* %PF, align 1, !mcsema_real_eip !23
  %307 = load i1, i1* %AF, align 1, !mcsema_real_eip !23
  %308 = load i1, i1* %ZF, align 1, !mcsema_real_eip !23
  %309 = load i1, i1* %SF, align 1, !mcsema_real_eip !23
  %310 = load i1, i1* %OF, align 1, !mcsema_real_eip !23
  %311 = load i1, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !23
  %312 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %313 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %314 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %315 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %316 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %317 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %318 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %319 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %320 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %321 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %322 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %323 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %324 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %325 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %326 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %327 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %328 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %329 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %330 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %331 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %332 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %333 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %334 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %335 = load i64, i64* %42, align 4
  store i64 %335, i64* %43, align 4
  %336 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %337 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !23
  %338 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %339 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !23
  %340 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  %341 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !23
  %342 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !23
  %343 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !23
  %344 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !23
  %345 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !23
  %346 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !23
  %347 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !23
  %348 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !23
  %349 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !23
  %350 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !23
  %351 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !23
  %352 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !23
  %353 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !23
  %354 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !23
  %355 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !23
  %356 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !23
  %357 = load i64, i64* %STACK_BASE, !mcsema_real_eip !23
  %358 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !23
  %_load_rsp_ptr_74 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_75 = bitcast i8* %_load_rsp_ptr_74 to i64*
  %359 = bitcast i64* %_allin_new_bt_75 to i32*
  store i32 5, i32* %359, !mcsema_real_eip !24
  %_load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rsp_ptr_76, i64 4
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %360 = bitcast i64* %_allin_new_bt_78 to i32*
  store i32 6, i32* %360, !mcsema_real_eip !25
  %_load_rsp_ptr_79 = load i8*, i8** %_RSP_ptr_
  %_new_gep_80 = getelementptr i8, i8* %_load_rsp_ptr_79, i64 8
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %361 = bitcast i64* %_allin_new_bt_81 to i32*
  store i32 7, i32* %361, !mcsema_real_eip !26
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %_new_gep_83 = getelementptr i8, i8* %_load_rsp_ptr_82, i64 12
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %362 = bitcast i64* %_allin_new_bt_84 to i32*
  store i32 8, i32* %362, !mcsema_real_eip !27
  %_load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_
  %_new_gep_86 = getelementptr i8, i8* %_load_rsp_ptr_85, i64 -8
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_87, !mcsema_real_eip !28
  store volatile i8* %_new_gep_86, i8** %_RSP_ptr_
  store i64 %292, i64* %RAX, !mcsema_real_eip !28
  store i64 %293, i64* %RBX, !mcsema_real_eip !28
  store i64 %294, i64* %RCX, !mcsema_real_eip !28
  store i64 %295, i64* %RDX, !mcsema_real_eip !28
  store i64 %293, i64* %RSI, !mcsema_real_eip !28
  store i64 4, i64* %RDI, !mcsema_real_eip !28
  %_new_ptr2int_89 = ptrtoint i8* %_new_gep_86 to i64
  store volatile i64 %_new_ptr2int_89, i64* %RSP
  store volatile i64 undef, i64* %RBP
  store i64 %296, i64* %R8, !mcsema_real_eip !28
  store i64 %297, i64* %R9, !mcsema_real_eip !28
  store i64 %298, i64* %R10, !mcsema_real_eip !28
  store i64 %299, i64* %R11, !mcsema_real_eip !28
  store i64 %300, i64* %R12, !mcsema_real_eip !28
  store i64 %301, i64* %R13, !mcsema_real_eip !28
  store i64 %302, i64* %R14, !mcsema_real_eip !28
  store i64 %303, i64* %R15, !mcsema_real_eip !28
  store i64 %304, i64* %RIP, !mcsema_real_eip !28
  store i1 %305, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %306, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %307, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %308, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %309, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %310, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %311, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %312, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %313, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %314, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %315, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %316, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %317, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %318, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %319, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %320, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %321, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %322, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %323, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %324, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %325, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %326, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %327, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %328, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %329, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %330, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %331, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %332, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %333, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %334, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %363 = load i64, i64* %43, align 4
  store i64 %363, i64* %42, align 4
  store i16 %336, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %337, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %338, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %339, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i11 %340, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !28
  store i128 %341, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %342, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %343, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %344, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %345, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %346, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %347, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %348, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %349, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %350, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %351, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %352, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %353, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %354, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %355, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %356, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %357, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %358, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  call void @sub_4005f0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* undef)
  %364 = load i64, i64* %RAX, !mcsema_real_eip !28
  %365 = load i64, i64* %RBX, !mcsema_real_eip !28
  %366 = load i64, i64* %RCX, !mcsema_real_eip !28
  %367 = load i64, i64* %RDX, !mcsema_real_eip !28
  %368 = load i64, i64* %R8, !mcsema_real_eip !28
  %369 = load i64, i64* %R9, !mcsema_real_eip !28
  %370 = load i64, i64* %R10, !mcsema_real_eip !28
  %371 = load i64, i64* %R11, !mcsema_real_eip !28
  %372 = load i64, i64* %R12, !mcsema_real_eip !28
  %373 = load i64, i64* %R13, !mcsema_real_eip !28
  %374 = load i64, i64* %R14, !mcsema_real_eip !28
  %375 = load i64, i64* %R15, !mcsema_real_eip !28
  %376 = load i64, i64* %RIP, !mcsema_real_eip !28
  %377 = load i1, i1* %CF, align 1, !mcsema_real_eip !28
  %378 = load i1, i1* %PF, align 1, !mcsema_real_eip !28
  %379 = load i1, i1* %AF, align 1, !mcsema_real_eip !28
  %380 = load i1, i1* %ZF, align 1, !mcsema_real_eip !28
  %381 = load i1, i1* %SF, align 1, !mcsema_real_eip !28
  %382 = load i1, i1* %OF, align 1, !mcsema_real_eip !28
  %383 = load i1, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !28
  %384 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !28
  %385 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  %386 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  %387 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  %388 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  %389 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  %390 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  %391 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  %392 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  %393 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  %394 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  %395 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  %396 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  %397 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  %398 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !28
  %399 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  %400 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  %401 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  %402 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  %403 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  %404 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  %405 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  %406 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %407 = load i64, i64* %42, align 4
  store i64 %407, i64* %43, align 4
  %408 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  %409 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !28
  %410 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  %411 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !28
  %412 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !28
  %413 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !28
  %414 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !28
  %415 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !28
  %416 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !28
  %417 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !28
  %418 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !28
  %419 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !28
  %420 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !28
  %421 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !28
  %422 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !28
  %423 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !28
  %424 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !28
  %425 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !28
  %426 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !28
  %427 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !28
  %428 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !28
  %429 = load i64, i64* %STACK_BASE, !mcsema_real_eip !28
  %430 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !28
  %_load_rsp_ptr_92 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_93 = bitcast i8* %_load_rsp_ptr_92 to i64*
  %431 = bitcast i64* %_allin_new_bt_93 to i32*
  store i32 5, i32* %431, !mcsema_real_eip !29
  %_load_rsp_ptr_94 = load i8*, i8** %_RSP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rsp_ptr_94, i64 4
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %432 = bitcast i64* %_allin_new_bt_96 to i32*
  store i32 6, i32* %432, !mcsema_real_eip !30
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 8
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  %433 = bitcast i64* %_allin_new_bt_99 to i32*
  store i32 7, i32* %433, !mcsema_real_eip !31
  %_load_rsp_ptr_100 = load i8*, i8** %_RSP_ptr_
  %_new_gep_101 = getelementptr i8, i8* %_load_rsp_ptr_100, i64 12
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %434 = bitcast i64* %_allin_new_bt_102 to i32*
  store i32 8, i32* %434, !mcsema_real_eip !32
  %_load_rsp_ptr_103 = load i8*, i8** %_RSP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rsp_ptr_103, i64 -8
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_105, !mcsema_real_eip !33
  store volatile i8* %_new_gep_104, i8** %_RSP_ptr_
  store i64 %364, i64* %RAX, !mcsema_real_eip !33
  store i64 %365, i64* %RBX, !mcsema_real_eip !33
  store i64 %366, i64* %RCX, !mcsema_real_eip !33
  store i64 %367, i64* %RDX, !mcsema_real_eip !33
  store i64 %365, i64* %RSI, !mcsema_real_eip !33
  store i64 4294967295, i64* %RDI, !mcsema_real_eip !33
  %_new_ptr2int_107 = ptrtoint i8* %_new_gep_104 to i64
  store volatile i64 %_new_ptr2int_107, i64* %RSP
  store volatile i64 undef, i64* %RBP
  store i64 %368, i64* %R8, !mcsema_real_eip !33
  store i64 %369, i64* %R9, !mcsema_real_eip !33
  store i64 %370, i64* %R10, !mcsema_real_eip !33
  store i64 %371, i64* %R11, !mcsema_real_eip !33
  store i64 %372, i64* %R12, !mcsema_real_eip !33
  store i64 %373, i64* %R13, !mcsema_real_eip !33
  store i64 %374, i64* %R14, !mcsema_real_eip !33
  store i64 %375, i64* %R15, !mcsema_real_eip !33
  store i64 %376, i64* %RIP, !mcsema_real_eip !33
  store i1 %377, i1* %CF, align 1, !mcsema_real_eip !33
  store i1 %378, i1* %PF, align 1, !mcsema_real_eip !33
  store i1 %379, i1* %AF, align 1, !mcsema_real_eip !33
  store i1 %380, i1* %ZF, align 1, !mcsema_real_eip !33
  store i1 %381, i1* %SF, align 1, !mcsema_real_eip !33
  store i1 %382, i1* %OF, align 1, !mcsema_real_eip !33
  store i1 %383, i1* %DF, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  store i1 %384, i1* %FPU_B, align 1, !mcsema_real_eip !33
  store i1 %385, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  store i3 %386, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  store i1 %387, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  store i1 %388, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  store i1 %389, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  store i1 %390, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  store i1 %391, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  store i1 %392, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  store i1 %393, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  store i1 %394, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  store i1 %395, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  store i1 %396, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  store i1 %397, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  store i1 %398, i1* %FPU_X, align 1, !mcsema_real_eip !33
  store i2 %399, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  store i2 %400, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  store i1 %401, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  store i1 %402, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  store i1 %403, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  store i1 %404, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  store i1 %405, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  store i1 %406, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %435 = load i64, i64* %43, align 4
  store i64 %435, i64* %42, align 4
  store i16 %408, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  store i64 %409, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !33
  store i16 %410, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  store i64 %411, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !33
  store i11 %412, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !33
  store i128 %413, i128* %XMM0, align 1, !mcsema_real_eip !33
  store i128 %414, i128* %XMM1, align 1, !mcsema_real_eip !33
  store i128 %415, i128* %XMM2, align 1, !mcsema_real_eip !33
  store i128 %416, i128* %XMM3, align 1, !mcsema_real_eip !33
  store i128 %417, i128* %XMM4, align 1, !mcsema_real_eip !33
  store i128 %418, i128* %XMM5, align 1, !mcsema_real_eip !33
  store i128 %419, i128* %XMM6, align 1, !mcsema_real_eip !33
  store i128 %420, i128* %XMM7, align 1, !mcsema_real_eip !33
  store i128 %421, i128* %XMM8, align 1, !mcsema_real_eip !33
  store i128 %422, i128* %XMM9, align 1, !mcsema_real_eip !33
  store i128 %423, i128* %XMM10, align 1, !mcsema_real_eip !33
  store i128 %424, i128* %XMM11, align 1, !mcsema_real_eip !33
  store i128 %425, i128* %XMM12, align 1, !mcsema_real_eip !33
  store i128 %426, i128* %XMM13, align 1, !mcsema_real_eip !33
  store i128 %427, i128* %XMM14, align 1, !mcsema_real_eip !33
  store i128 %428, i128* %XMM15, align 1, !mcsema_real_eip !33
  store i64 %429, i64* %STACK_BASE, align 1, !mcsema_real_eip !33
  store i64 %430, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !33
  call void @sub_4005f0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* undef)
  %436 = load i64, i64* %RCX, !mcsema_real_eip !33
  %437 = load i64, i64* %RDX, !mcsema_real_eip !33
  %438 = load i64, i64* %RSI, !mcsema_real_eip !33
  %439 = load i64, i64* %RDI, !mcsema_real_eip !33
  %440 = load i64, i64* %R8, !mcsema_real_eip !33
  %441 = load i64, i64* %R9, !mcsema_real_eip !33
  %442 = load i64, i64* %R10, !mcsema_real_eip !33
  %443 = load i64, i64* %R11, !mcsema_real_eip !33
  %444 = load i64, i64* %R12, !mcsema_real_eip !33
  %445 = load i64, i64* %R13, !mcsema_real_eip !33
  %446 = load i64, i64* %R14, !mcsema_real_eip !33
  %447 = load i64, i64* %R15, !mcsema_real_eip !33
  %448 = load i64, i64* %RIP, !mcsema_real_eip !33
  %449 = load i1, i1* %DF, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !33
  %450 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !33
  %451 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  %452 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  %453 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  %454 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  %455 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  %456 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  %457 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  %458 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  %459 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  %460 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  %461 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  %462 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  %463 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  %464 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !33
  %465 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  %466 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  %467 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  %468 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  %469 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  %470 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  %471 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  %472 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %473 = load i64, i64* %42, align 4
  store i64 %473, i64* %43, align 4
  %474 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  %475 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !33
  %476 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  %477 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !33
  %478 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !33
  %479 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !33
  %480 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !33
  %481 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !33
  %482 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !33
  %483 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !33
  %484 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !33
  %485 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !33
  %486 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !33
  %487 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !33
  %488 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !33
  %489 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !33
  %490 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !33
  %491 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !33
  %492 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !33
  %493 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !33
  %494 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !33
  %495 = load i64, i64* %STACK_BASE, !mcsema_real_eip !33
  %496 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !33
  %_load_rsp_ptr_110 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_111 = ptrtoint i8* %_load_rsp_ptr_110 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_111, i64 16)
  %497 = extractvalue { i64, i1 } %uadd, 0
  %498 = xor i64 %497, %_new_ptr2int_111, !mcsema_real_eip !34
  %499 = and i64 %498, 16
  %500 = icmp eq i64 %499, 0
  %501 = icmp slt i64 %497, 0
  %502 = icmp eq i64 %497, 0, !mcsema_real_eip !34
  %503 = xor i64 %_new_ptr2int_111, -9223372036854775808, !mcsema_real_eip !34
  %504 = and i64 %498, %503, !mcsema_real_eip !34
  %505 = icmp slt i64 %504, 0
  %506 = trunc i64 %497 to i8, !mcsema_real_eip !34
  %507 = tail call i8 @llvm.ctpop.i8(i8 %506), !mcsema_real_eip !34
  %508 = and i8 %507, 1
  %509 = icmp eq i8 %508, 0
  %510 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %497 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  %511 = inttoptr i64 %497 to i64*, !mcsema_real_eip !35
  %512 = load i64, i64* %511, !mcsema_real_eip !35
  %513 = add i64 %497, 16, !mcsema_real_eip !36
  %_new_int2ptr_112 = inttoptr i64 %513 to i8*
  store volatile i8* %_new_int2ptr_112, i8** %_RSP_ptr_
  store i64 0, i64* %RAX, !mcsema_real_eip !36
  store i64 %512, i64* %RBX, !mcsema_real_eip !36
  store i64 %436, i64* %RCX, !mcsema_real_eip !36
  store i64 %437, i64* %RDX, !mcsema_real_eip !36
  store i64 %438, i64* %RSI, !mcsema_real_eip !36
  store i64 %439, i64* %RDI, !mcsema_real_eip !36
  store volatile i64 %513, i64* %RSP
  store volatile i64 undef, i64* %RBP
  store i64 %440, i64* %R8, !mcsema_real_eip !36
  store i64 %441, i64* %R9, !mcsema_real_eip !36
  store i64 %442, i64* %R10, !mcsema_real_eip !36
  store i64 %443, i64* %R11, !mcsema_real_eip !36
  store i64 %444, i64* %R12, !mcsema_real_eip !36
  store i64 %445, i64* %R13, !mcsema_real_eip !36
  store i64 %446, i64* %R14, !mcsema_real_eip !36
  store i64 %447, i64* %R15, !mcsema_real_eip !36
  store i64 %448, i64* %RIP, !mcsema_real_eip !36
  store i1 %510, i1* %CF, align 1, !mcsema_real_eip !36
  store i1 %509, i1* %PF, align 1, !mcsema_real_eip !36
  store i1 %500, i1* %AF, align 1, !mcsema_real_eip !36
  store i1 %502, i1* %ZF, align 1, !mcsema_real_eip !36
  store i1 %501, i1* %SF, align 1, !mcsema_real_eip !36
  store i1 %505, i1* %OF, align 1, !mcsema_real_eip !36
  store i1 %449, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  store i1 %450, i1* %FPU_B, align 1, !mcsema_real_eip !36
  store i1 %451, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  store i3 %452, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  store i1 %453, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  store i1 %454, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  store i1 %455, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  store i1 %456, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  store i1 %457, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  store i1 %458, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  store i1 %459, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  store i1 %460, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  store i1 %461, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  store i1 %462, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  store i1 %463, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  store i1 %464, i1* %FPU_X, align 1, !mcsema_real_eip !36
  store i2 %465, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  store i2 %466, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  store i1 %467, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  store i1 %468, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  store i1 %469, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  store i1 %470, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  store i1 %471, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  store i1 %472, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %514 = load i64, i64* %43, align 4
  store i64 %514, i64* %42, align 4
  store i16 %474, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  store i64 %475, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !36
  store i16 %476, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  store i64 %477, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !36
  store i11 %478, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !36
  store i128 %479, i128* %XMM0, align 1, !mcsema_real_eip !36
  store i128 %480, i128* %XMM1, align 1, !mcsema_real_eip !36
  store i128 %481, i128* %XMM2, align 1, !mcsema_real_eip !36
  store i128 %482, i128* %XMM3, align 1, !mcsema_real_eip !36
  store i128 %483, i128* %XMM4, align 1, !mcsema_real_eip !36
  store i128 %484, i128* %XMM5, align 1, !mcsema_real_eip !36
  store i128 %485, i128* %XMM6, align 1, !mcsema_real_eip !36
  store i128 %486, i128* %XMM7, align 1, !mcsema_real_eip !36
  store i128 %487, i128* %XMM8, align 1, !mcsema_real_eip !36
  store i128 %488, i128* %XMM9, align 1, !mcsema_real_eip !36
  store i128 %489, i128* %XMM10, align 1, !mcsema_real_eip !36
  store i128 %490, i128* %XMM11, align 1, !mcsema_real_eip !36
  store i128 %491, i128* %XMM12, align 1, !mcsema_real_eip !36
  store i128 %492, i128* %XMM13, align 1, !mcsema_real_eip !36
  store i128 %493, i128* %XMM14, align 1, !mcsema_real_eip !36
  store i128 %494, i128* %XMM15, align 1, !mcsema_real_eip !36
  store i64 %495, i64* %STACK_BASE, align 1, !mcsema_real_eip !36
  store i64 %496, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

define internal x86_64_sysvcc void @sub_4005f0(%struct.regs*) {
entry:
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !37
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !37
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !37
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !37
  %1 = load i64, i64* %RBX, !mcsema_real_eip !37
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !37
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !37
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !37
  %2 = load i64, i64* %RSI, !mcsema_real_eip !37
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !37
  %3 = load i64, i64* %RDI, !mcsema_real_eip !37
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !37
  %4 = load i64, i64* %RSP, !mcsema_real_eip !37
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !37
  %5 = load i64, i64* %RBP, !mcsema_real_eip !37
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !37
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !37
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !37
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !37
  %6 = load i64, i64* %R11, !mcsema_real_eip !37
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !37
  %7 = load i64, i64* %R12, !mcsema_real_eip !37
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !37
  %8 = load i64, i64* %R13, !mcsema_real_eip !37
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !37
  %9 = load i64, i64* %R14, !mcsema_real_eip !37
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !37
  %10 = load i64, i64* %R15, !mcsema_real_eip !37
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !37
  %11 = load i64, i64* %RIP, !mcsema_real_eip !37
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !37
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !37
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !37
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !37
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !37
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !37
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !37
  %12 = load i1, i1* %DF, align 1, !mcsema_real_eip !37
  %13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !37
  %14 = bitcast x86_fp80* %13 to i8*, !mcsema_real_eip !37
  %15 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !37
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %14, i32 128, i32 4, i1 false), !mcsema_real_eip !37
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !37
  %16 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !37
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !37
  %17 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !37
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !37
  %18 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !37
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !37
  %19 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !37
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !37
  %20 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !37
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !37
  %21 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !37
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !37
  %22 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !37
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !37
  %23 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !37
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !37
  %24 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !37
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !37
  %25 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !37
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !37
  %26 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !37
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !37
  %27 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !37
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !37
  %28 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !37
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !37
  %29 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !37
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !37
  %30 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !37
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !37
  %31 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !37
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !37
  %32 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !37
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !37
  %33 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !37
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !37
  %34 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !37
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !37
  %35 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !37
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !37
  %36 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !37
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !37
  %37 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !37
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !37
  %38 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !37
  %39 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !37
  %40 = bitcast i8* %39 to i64*
  %41 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %42 = load i64, i64* %40, align 4
  store i64 %42, i64* %41, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !37
  %43 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !37
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !37
  %44 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !37
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !37
  %45 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !37
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !37
  %46 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !37
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !37
  %47 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !37
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !37
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !37
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !37
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !37
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !37
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !37
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !37
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !37
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !37
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !37
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !37
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !37
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !37
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !37
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !37
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !37
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !37
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !37
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !37
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !37
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !37
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !37
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !37
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !37
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !37
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !37
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !37
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !37
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !37
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !37
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !37
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !37
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !37
  %64 = load i64, i64* %STACK_BASE, !mcsema_real_eip !37
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !37
  %65 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !37
  %66 = and i64 %3, 4294967295
  br label %block_0x400600, !mcsema_real_eip !38

block_0x400600:                                   ; preds = %block_0x400600, %entry
  %RAX_val.0 = phi i64 [ 3, %entry ], [ %76, %block_0x400600 ]
  %67 = add i64 %2, -4, !mcsema_real_eip !38
  %68 = shl i64 %RAX_val.0, 2
  %69 = add i64 %67, %68, !mcsema_real_eip !38
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !38
  %71 = bitcast i64* %70 to i32*
  %72 = load i32, i32* %71, !mcsema_real_eip !38
  %73 = add i64 %68, %2, !mcsema_real_eip !39
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !39
  %75 = bitcast i64* %74 to i32*
  store i32 %72, i32* %75, !mcsema_real_eip !39
  %76 = add i64 %RAX_val.0, -1, !mcsema_real_eip !40
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !40
  %78 = trunc i64 %76 to i32, !mcsema_real_eip !41
  %79 = trunc i64 %66 to i32, !mcsema_real_eip !41
  %80 = sub i32 %78, %79, !mcsema_real_eip !41
  %81 = xor i32 %80, %78, !mcsema_real_eip !41
  %82 = xor i32 %81, %79, !mcsema_real_eip !41
  %83 = and i32 %82, 16, !mcsema_real_eip !41
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !41
  %85 = icmp eq i32 %78, %79
  %86 = icmp ult i32 %78, %79, !mcsema_real_eip !41
  %.demorgan = or i1 %86, %85
  br i1 %.demorgan, label %block_0x400610, label %block_0x400600, !mcsema_real_eip !42

block_0x400610:                                   ; preds = %block_0x400600
  %87 = inttoptr i64 %2 to i64*, !mcsema_real_eip !43
  %88 = bitcast i64* %87 to i32*
  %89 = load i32, i32* %88, !mcsema_real_eip !43
  %90 = zext i32 %89 to i64, !mcsema_real_eip !43
  %91 = add i64 %2, 4, !mcsema_real_eip !44
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !44
  %93 = bitcast i64* %92 to i32*
  %94 = load i32, i32* %93, !mcsema_real_eip !44
  %95 = zext i32 %94 to i64, !mcsema_real_eip !44
  %96 = add i64 %2, 8, !mcsema_real_eip !45
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !45
  %98 = bitcast i64* %97 to i32*
  %99 = load i32, i32* %98, !mcsema_real_eip !45
  %100 = zext i32 %99 to i64, !mcsema_real_eip !45
  %101 = add i64 %2, 12, !mcsema_real_eip !46
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !46
  %103 = bitcast i64* %102 to i32*
  %104 = load i32, i32* %103, !mcsema_real_eip !46
  %105 = zext i32 %104 to i64, !mcsema_real_eip !46
  %106 = add i64 %4, 8, !mcsema_real_eip !47
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !47
  %108 = load i64, i64* %107, !mcsema_real_eip !47
  %109 = add i64 %4, 16, !mcsema_real_eip !47
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !47
  %111 = load i64, i64* %110, !mcsema_real_eip !47
  %112 = add i64 %4, 24, !mcsema_real_eip !47
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !47
  %114 = load i64, i64* %113, !mcsema_real_eip !47
  %115 = add i64 %4, 32, !mcsema_real_eip !47
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !47
  %117 = load i64, i64* %116, !mcsema_real_eip !47
  %118 = add i64 %4, 40, !mcsema_real_eip !47
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !47
  %120 = load i64, i64* %119, !mcsema_real_eip !47
  %121 = add i64 %4, 48, !mcsema_real_eip !47
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !47
  %123 = load i64, i64* %122, !mcsema_real_eip !47
  %124 = add i64 %4, 56, !mcsema_real_eip !47
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !47
  %126 = load i64, i64* %125, !mcsema_real_eip !47
  %127 = add i64 %4, 64, !mcsema_real_eip !47
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !47
  %129 = load i64, i64* %128, !mcsema_real_eip !47
  %130 = add i64 %4, 72, !mcsema_real_eip !47
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !47
  %132 = load i64, i64* %131, !mcsema_real_eip !47
  %133 = add i64 %4, 80, !mcsema_real_eip !47
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !47
  %135 = load i64, i64* %134, !mcsema_real_eip !47
  %136 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x4007d0 to i32), i32 4) to i64), i64 %66, i64 %90, i64 %95, i64 %100, i64 %105, i64 %108, i64 %111, i64 %114, i64 %117, i64 %120, i64 %123, i64 %126, i64 %129, i64 %132, i64 %135), !mcsema_real_eip !47
  store i64 %136, i64* %RAX, !mcsema_real_eip !47
  store i64 %1, i64* %RBX, !mcsema_real_eip !47
  store i64 %95, i64* %RCX, !mcsema_real_eip !47
  store i64 %90, i64* %RDX, !mcsema_real_eip !47
  store i64 %66, i64* %RSI, !mcsema_real_eip !47
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x4007d0 to i32), i32 4) to i64), i64* %RDI, !mcsema_real_eip !47
  store i64 %106, i64* %RSP, !mcsema_real_eip !47
  store i64 %5, i64* %RBP, !mcsema_real_eip !47
  store i64 %100, i64* %R8, !mcsema_real_eip !47
  store i64 %105, i64* %R9, !mcsema_real_eip !47
  store i64 %66, i64* %R10, !mcsema_real_eip !47
  store i64 %6, i64* %R11, !mcsema_real_eip !47
  store i64 %7, i64* %R12, !mcsema_real_eip !47
  store i64 %8, i64* %R13, !mcsema_real_eip !47
  store i64 %9, i64* %R14, !mcsema_real_eip !47
  store i64 %10, i64* %R15, !mcsema_real_eip !47
  store i64 %11, i64* %RIP, !mcsema_real_eip !47
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %12, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %15, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  store i1 %16, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %17, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i3 %18, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i1 %19, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %20, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %21, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %22, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %23, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %24, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %25, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %26, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %27, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %28, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %29, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %30, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i2 %31, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %32, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i1 %33, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %34, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %35, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %36, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %37, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %38, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %137 = load i64, i64* %41, align 4
  store i64 %137, i64* %40, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  store i11 %47, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !47
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_400630(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

define internal x86_64_sysvcc void @sub_4005f0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 0
  store i8* %_local_stack_start_ptr_, i8** %_RSP_ptr_
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !37
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !37
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !37
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !37
  %1 = load i64, i64* %RBX, !mcsema_real_eip !37
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !37
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !37
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !37
  %2 = load i64, i64* %RSI, !mcsema_real_eip !37
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !37
  %3 = load i64, i64* %RDI, !mcsema_real_eip !37
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !37
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !37
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !37
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !37
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !37
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !37
  %4 = load i64, i64* %R11, !mcsema_real_eip !37
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !37
  %5 = load i64, i64* %R12, !mcsema_real_eip !37
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !37
  %6 = load i64, i64* %R13, !mcsema_real_eip !37
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !37
  %7 = load i64, i64* %R14, !mcsema_real_eip !37
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !37
  %8 = load i64, i64* %R15, !mcsema_real_eip !37
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !37
  %9 = load i64, i64* %RIP, !mcsema_real_eip !37
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !37
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !37
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !37
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !37
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !37
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !37
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !37
  %10 = load i1, i1* %DF, align 1, !mcsema_real_eip !37
  %11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !37
  %12 = bitcast x86_fp80* %11 to i8*, !mcsema_real_eip !37
  %13 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !37
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %12, i32 128, i32 4, i1 false), !mcsema_real_eip !37
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !37
  %14 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !37
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !37
  %15 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !37
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !37
  %16 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !37
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !37
  %17 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !37
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !37
  %18 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !37
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !37
  %19 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !37
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !37
  %20 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !37
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !37
  %21 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !37
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !37
  %22 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !37
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !37
  %23 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !37
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !37
  %24 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !37
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !37
  %25 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !37
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !37
  %26 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !37
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !37
  %27 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !37
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !37
  %28 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !37
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !37
  %29 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !37
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !37
  %30 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !37
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !37
  %31 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !37
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !37
  %32 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !37
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !37
  %33 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !37
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !37
  %34 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !37
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !37
  %35 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !37
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !37
  %36 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !37
  %37 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !37
  %38 = bitcast i8* %37 to i64*
  %39 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_ptr_to_int_ = ptrtoint i64* %38 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_start_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %37, %_local_stack_start_ptr_
  %_cond2_1_ = icmp ugt i8* %37, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %37, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %40, label %41

; <label>:40:                                     ; preds = %entry
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %41

; <label>:41:                                     ; preds = %entry, %40
  %42 = phi i64* [ %38, %entry ], [ %_address_in_parent_stack_bt_, %40 ]
  %_new_load_ = load i64, i64* %42
  store i64 %_new_load_, i64* %39, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !37
  %43 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !37
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !37
  %44 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !37
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !37
  %45 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !37
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !37
  %46 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !37
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !37
  %47 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !37
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !37
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !37
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !37
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !37
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !37
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !37
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !37
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !37
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !37
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !37
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !37
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !37
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !37
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !37
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !37
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !37
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !37
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !37
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !37
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !37
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !37
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !37
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !37
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !37
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !37
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !37
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !37
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !37
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !37
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !37
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !37
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !37
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !37
  %64 = load i64, i64* %STACK_BASE, !mcsema_real_eip !37
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !37
  %65 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !37
  %66 = and i64 %3, 4294967295
  br label %block_0x400600, !mcsema_real_eip !38

block_0x400600:                                   ; preds = %73, %41
  %RAX_val.0 = phi i64 [ 3, %41 ], [ %78, %73 ]
  %67 = add i64 %2, -4, !mcsema_real_eip !38
  %68 = shl i64 %RAX_val.0, 2
  %69 = add i64 %67, %68, !mcsema_real_eip !38
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !38
  %71 = bitcast i64* %70 to i32*
  %_ptr_to_int_23 = ptrtoint i32* %71 to i64
  %_ptr_bt_25 = bitcast i32* %71 to i8*
  %_offset_above_rbp_26 = sub i64 %_ptr_to_int_23, %_local_end_to_int_
  %_pot_address_in_parent_stack_27 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_26
  %_cond1_28 = icmp ugt i8* %_ptr_bt_25, %_local_stack_start_ptr_
  %_cond2_1_29 = icmp ugt i8* %_ptr_bt_25, %_parent_stack_end_ptr_
  %_cond2_2_30 = icmp ult i8* %_ptr_bt_25, %_parent_stack_start_ptr_
  %_cond2_31 = or i1 %_cond2_1_29, %_cond2_2_30
  %_cond4_32 = icmp ule i8* %_pot_address_in_parent_stack_27, %_parent_stack_end_ptr_
  %_cond1_n_cond2_33 = and i1 %_cond1_28, %_cond2_31
  %_cond1_n_cond2_cond3_34 = and i1 %_cond1_n_cond2_33, %_cond4_32
  br i1 %_cond1_n_cond2_cond3_34, label %72, label %73

; <label>:72:                                     ; preds = %block_0x400600
  %_address_in_parent_stack_bt_36 = bitcast i8* %_pot_address_in_parent_stack_27 to i32*
  br label %73

; <label>:73:                                     ; preds = %block_0x400600, %72
  %74 = phi i32* [ %71, %block_0x400600 ], [ %_address_in_parent_stack_bt_36, %72 ]
  %_new_load_37 = load i32, i32* %74
  %75 = add i64 %68, %2, !mcsema_real_eip !39
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !39
  %77 = bitcast i64* %76 to i32*
  store i32 %_new_load_37, i32* %77, !mcsema_real_eip !39
  %78 = add i64 %RAX_val.0, -1, !mcsema_real_eip !40
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !40
  %80 = trunc i64 %78 to i32, !mcsema_real_eip !41
  %81 = trunc i64 %66 to i32, !mcsema_real_eip !41
  %82 = sub i32 %80, %81, !mcsema_real_eip !41
  %83 = xor i32 %82, %80, !mcsema_real_eip !41
  %84 = xor i32 %83, %81, !mcsema_real_eip !41
  %85 = and i32 %84, 16, !mcsema_real_eip !41
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !41
  %87 = icmp eq i32 %80, %81
  %88 = icmp ult i32 %80, %81, !mcsema_real_eip !41
  %.demorgan = or i1 %88, %87
  br i1 %.demorgan, label %block_0x400610, label %block_0x400600, !mcsema_real_eip !42

block_0x400610:                                   ; preds = %73
  %89 = inttoptr i64 %2 to i64*, !mcsema_real_eip !43
  %90 = bitcast i64* %89 to i32*
  %_ptr_to_int_38 = ptrtoint i32* %90 to i64
  %_ptr_bt_40 = bitcast i32* %90 to i8*
  %_offset_above_rbp_41 = sub i64 %_ptr_to_int_38, %_local_end_to_int_
  %_pot_address_in_parent_stack_42 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_41
  %_cond1_43 = icmp ugt i8* %_ptr_bt_40, %_local_stack_start_ptr_
  %_cond2_1_44 = icmp ugt i8* %_ptr_bt_40, %_parent_stack_end_ptr_
  %_cond2_2_45 = icmp ult i8* %_ptr_bt_40, %_parent_stack_start_ptr_
  %_cond2_46 = or i1 %_cond2_1_44, %_cond2_2_45
  %_cond4_47 = icmp ule i8* %_pot_address_in_parent_stack_42, %_parent_stack_end_ptr_
  %_cond1_n_cond2_48 = and i1 %_cond1_43, %_cond2_46
  %_cond1_n_cond2_cond3_49 = and i1 %_cond1_n_cond2_48, %_cond4_47
  br i1 %_cond1_n_cond2_cond3_49, label %91, label %92

; <label>:91:                                     ; preds = %block_0x400610
  %_address_in_parent_stack_bt_51 = bitcast i8* %_pot_address_in_parent_stack_42 to i32*
  br label %92

; <label>:92:                                     ; preds = %block_0x400610, %91
  %93 = phi i32* [ %90, %block_0x400610 ], [ %_address_in_parent_stack_bt_51, %91 ]
  %_new_load_52 = load i32, i32* %93
  %94 = zext i32 %_new_load_52 to i64, !mcsema_real_eip !43
  %95 = add i64 %2, 4, !mcsema_real_eip !44
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !44
  %97 = bitcast i64* %96 to i32*
  %_ptr_to_int_53 = ptrtoint i32* %97 to i64
  %_ptr_bt_55 = bitcast i32* %97 to i8*
  %_offset_above_rbp_56 = sub i64 %_ptr_to_int_53, %_local_end_to_int_
  %_pot_address_in_parent_stack_57 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_56
  %_cond1_58 = icmp ugt i8* %_ptr_bt_55, %_local_stack_start_ptr_
  %_cond2_1_59 = icmp ugt i8* %_ptr_bt_55, %_parent_stack_end_ptr_
  %_cond2_2_60 = icmp ult i8* %_ptr_bt_55, %_parent_stack_start_ptr_
  %_cond2_61 = or i1 %_cond2_1_59, %_cond2_2_60
  %_cond4_62 = icmp ule i8* %_pot_address_in_parent_stack_57, %_parent_stack_end_ptr_
  %_cond1_n_cond2_63 = and i1 %_cond1_58, %_cond2_61
  %_cond1_n_cond2_cond3_64 = and i1 %_cond1_n_cond2_63, %_cond4_62
  br i1 %_cond1_n_cond2_cond3_64, label %98, label %99

; <label>:98:                                     ; preds = %92
  %_address_in_parent_stack_bt_66 = bitcast i8* %_pot_address_in_parent_stack_57 to i32*
  br label %99

; <label>:99:                                     ; preds = %92, %98
  %100 = phi i32* [ %97, %92 ], [ %_address_in_parent_stack_bt_66, %98 ]
  %_new_load_67 = load i32, i32* %100
  %101 = zext i32 %_new_load_67 to i64, !mcsema_real_eip !44
  %102 = add i64 %2, 8, !mcsema_real_eip !45
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !45
  %104 = bitcast i64* %103 to i32*
  %_ptr_to_int_68 = ptrtoint i32* %104 to i64
  %_ptr_bt_70 = bitcast i32* %104 to i8*
  %_offset_above_rbp_71 = sub i64 %_ptr_to_int_68, %_local_end_to_int_
  %_pot_address_in_parent_stack_72 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_71
  %_cond1_73 = icmp ugt i8* %_ptr_bt_70, %_local_stack_start_ptr_
  %_cond2_1_74 = icmp ugt i8* %_ptr_bt_70, %_parent_stack_end_ptr_
  %_cond2_2_75 = icmp ult i8* %_ptr_bt_70, %_parent_stack_start_ptr_
  %_cond2_76 = or i1 %_cond2_1_74, %_cond2_2_75
  %_cond4_77 = icmp ule i8* %_pot_address_in_parent_stack_72, %_parent_stack_end_ptr_
  %_cond1_n_cond2_78 = and i1 %_cond1_73, %_cond2_76
  %_cond1_n_cond2_cond3_79 = and i1 %_cond1_n_cond2_78, %_cond4_77
  br i1 %_cond1_n_cond2_cond3_79, label %105, label %106

; <label>:105:                                    ; preds = %99
  %_address_in_parent_stack_bt_81 = bitcast i8* %_pot_address_in_parent_stack_72 to i32*
  br label %106

; <label>:106:                                    ; preds = %99, %105
  %107 = phi i32* [ %104, %99 ], [ %_address_in_parent_stack_bt_81, %105 ]
  %_new_load_82 = load i32, i32* %107
  %108 = zext i32 %_new_load_82 to i64, !mcsema_real_eip !45
  %109 = add i64 %2, 12, !mcsema_real_eip !46
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !46
  %111 = bitcast i64* %110 to i32*
  %_ptr_to_int_83 = ptrtoint i32* %111 to i64
  %_ptr_bt_85 = bitcast i32* %111 to i8*
  %_offset_above_rbp_86 = sub i64 %_ptr_to_int_83, %_local_end_to_int_
  %_pot_address_in_parent_stack_87 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_86
  %_cond1_88 = icmp ugt i8* %_ptr_bt_85, %_local_stack_start_ptr_
  %_cond2_1_89 = icmp ugt i8* %_ptr_bt_85, %_parent_stack_end_ptr_
  %_cond2_2_90 = icmp ult i8* %_ptr_bt_85, %_parent_stack_start_ptr_
  %_cond2_91 = or i1 %_cond2_1_89, %_cond2_2_90
  %_cond4_92 = icmp ule i8* %_pot_address_in_parent_stack_87, %_parent_stack_end_ptr_
  %_cond1_n_cond2_93 = and i1 %_cond1_88, %_cond2_91
  %_cond1_n_cond2_cond3_94 = and i1 %_cond1_n_cond2_93, %_cond4_92
  br i1 %_cond1_n_cond2_cond3_94, label %112, label %113

; <label>:112:                                    ; preds = %106
  %_address_in_parent_stack_bt_96 = bitcast i8* %_pot_address_in_parent_stack_87 to i32*
  br label %113

; <label>:113:                                    ; preds = %106, %112
  %114 = phi i32* [ %111, %106 ], [ %_address_in_parent_stack_bt_96, %112 ]
  %_new_load_97 = load i32, i32* %114
  %115 = zext i32 %_new_load_97 to i64, !mcsema_real_eip !46
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_ptr_to_int_98 = ptrtoint i64* %_allin_new_bt_ to i64
  %_offset_above_rbp_101 = sub i64 %_ptr_to_int_98, %_local_end_to_int_
  %_pot_address_in_parent_stack_102 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_101
  %_cond1_103 = icmp ugt i8* %_new_gep_, %_local_stack_start_ptr_
  %_cond2_1_104 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_105 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_106 = or i1 %_cond2_1_104, %_cond2_2_105
  %_cond4_107 = icmp ule i8* %_pot_address_in_parent_stack_102, %_parent_stack_end_ptr_
  %_cond1_n_cond2_108 = and i1 %_cond1_103, %_cond2_106
  %_cond1_n_cond2_cond3_109 = and i1 %_cond1_n_cond2_108, %_cond4_107
  br i1 %_cond1_n_cond2_cond3_109, label %116, label %117

; <label>:116:                                    ; preds = %113
  %_address_in_parent_stack_bt_111 = bitcast i8* %_pot_address_in_parent_stack_102 to i64*
  br label %117

; <label>:117:                                    ; preds = %113, %116
  %118 = phi i64* [ %_allin_new_bt_, %113 ], [ %_address_in_parent_stack_bt_111, %116 ]
  %_new_load_112 = load i64, i64* %118
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %_ptr_to_int_113 = ptrtoint i64* %_allin_new_bt_2 to i64
  %_offset_above_rbp_116 = sub i64 %_ptr_to_int_113, %_local_end_to_int_
  %_pot_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_116
  %_cond1_118 = icmp ugt i8* %_new_gep_1, %_local_stack_start_ptr_
  %_cond2_1_119 = icmp ugt i8* %_new_gep_1, %_parent_stack_end_ptr_
  %_cond2_2_120 = icmp ult i8* %_new_gep_1, %_parent_stack_start_ptr_
  %_cond2_121 = or i1 %_cond2_1_119, %_cond2_2_120
  %_cond4_122 = icmp ule i8* %_pot_address_in_parent_stack_117, %_parent_stack_end_ptr_
  %_cond1_n_cond2_123 = and i1 %_cond1_118, %_cond2_121
  %_cond1_n_cond2_cond3_124 = and i1 %_cond1_n_cond2_123, %_cond4_122
  br i1 %_cond1_n_cond2_cond3_124, label %119, label %120

; <label>:119:                                    ; preds = %117
  %_address_in_parent_stack_bt_126 = bitcast i8* %_pot_address_in_parent_stack_117 to i64*
  br label %120

; <label>:120:                                    ; preds = %117, %119
  %121 = phi i64* [ %_allin_new_bt_2, %117 ], [ %_address_in_parent_stack_bt_126, %119 ]
  %_new_load_127 = load i64, i64* %121
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %_ptr_to_int_128 = ptrtoint i64* %_allin_new_bt_4 to i64
  %_offset_above_rbp_131 = sub i64 %_ptr_to_int_128, %_local_end_to_int_
  %_pot_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_131
  %_cond1_133 = icmp ugt i8* %_new_gep_3, %_local_stack_start_ptr_
  %_cond2_1_134 = icmp ugt i8* %_new_gep_3, %_parent_stack_end_ptr_
  %_cond2_2_135 = icmp ult i8* %_new_gep_3, %_parent_stack_start_ptr_
  %_cond2_136 = or i1 %_cond2_1_134, %_cond2_2_135
  %_cond4_137 = icmp ule i8* %_pot_address_in_parent_stack_132, %_parent_stack_end_ptr_
  %_cond1_n_cond2_138 = and i1 %_cond1_133, %_cond2_136
  %_cond1_n_cond2_cond3_139 = and i1 %_cond1_n_cond2_138, %_cond4_137
  br i1 %_cond1_n_cond2_cond3_139, label %122, label %123

; <label>:122:                                    ; preds = %120
  %_address_in_parent_stack_bt_141 = bitcast i8* %_pot_address_in_parent_stack_132 to i64*
  br label %123

; <label>:123:                                    ; preds = %120, %122
  %124 = phi i64* [ %_allin_new_bt_4, %120 ], [ %_address_in_parent_stack_bt_141, %122 ]
  %_new_load_142 = load i64, i64* %124
  %_new_gep_5 = getelementptr i8, i8* %_load_rsp_ptr_, i64 32
  %_allin_new_bt_6 = bitcast i8* %_new_gep_5 to i64*
  %_ptr_to_int_143 = ptrtoint i64* %_allin_new_bt_6 to i64
  %_offset_above_rbp_146 = sub i64 %_ptr_to_int_143, %_local_end_to_int_
  %_pot_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_146
  %_cond1_148 = icmp ugt i8* %_new_gep_5, %_local_stack_start_ptr_
  %_cond2_1_149 = icmp ugt i8* %_new_gep_5, %_parent_stack_end_ptr_
  %_cond2_2_150 = icmp ult i8* %_new_gep_5, %_parent_stack_start_ptr_
  %_cond2_151 = or i1 %_cond2_1_149, %_cond2_2_150
  %_cond4_152 = icmp ule i8* %_pot_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond1_n_cond2_153 = and i1 %_cond1_148, %_cond2_151
  %_cond1_n_cond2_cond3_154 = and i1 %_cond1_n_cond2_153, %_cond4_152
  br i1 %_cond1_n_cond2_cond3_154, label %125, label %126

; <label>:125:                                    ; preds = %123
  %_address_in_parent_stack_bt_156 = bitcast i8* %_pot_address_in_parent_stack_147 to i64*
  br label %126

; <label>:126:                                    ; preds = %123, %125
  %127 = phi i64* [ %_allin_new_bt_6, %123 ], [ %_address_in_parent_stack_bt_156, %125 ]
  %_new_load_157 = load i64, i64* %127
  %_new_gep_7 = getelementptr i8, i8* %_load_rsp_ptr_, i64 40
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %_ptr_to_int_158 = ptrtoint i64* %_allin_new_bt_8 to i64
  %_offset_above_rbp_161 = sub i64 %_ptr_to_int_158, %_local_end_to_int_
  %_pot_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_cond1_163 = icmp ugt i8* %_new_gep_7, %_local_stack_start_ptr_
  %_cond2_1_164 = icmp ugt i8* %_new_gep_7, %_parent_stack_end_ptr_
  %_cond2_2_165 = icmp ult i8* %_new_gep_7, %_parent_stack_start_ptr_
  %_cond2_166 = or i1 %_cond2_1_164, %_cond2_2_165
  %_cond4_167 = icmp ule i8* %_pot_address_in_parent_stack_162, %_parent_stack_end_ptr_
  %_cond1_n_cond2_168 = and i1 %_cond1_163, %_cond2_166
  %_cond1_n_cond2_cond3_169 = and i1 %_cond1_n_cond2_168, %_cond4_167
  br i1 %_cond1_n_cond2_cond3_169, label %128, label %129

; <label>:128:                                    ; preds = %126
  %_address_in_parent_stack_bt_171 = bitcast i8* %_pot_address_in_parent_stack_162 to i64*
  br label %129

; <label>:129:                                    ; preds = %126, %128
  %130 = phi i64* [ %_allin_new_bt_8, %126 ], [ %_address_in_parent_stack_bt_171, %128 ]
  %_new_load_172 = load i64, i64* %130
  %_new_gep_9 = getelementptr i8, i8* %_load_rsp_ptr_, i64 48
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %_ptr_to_int_173 = ptrtoint i64* %_allin_new_bt_10 to i64
  %_offset_above_rbp_176 = sub i64 %_ptr_to_int_173, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_new_gep_9, %_local_stack_start_ptr_
  %_cond2_1_179 = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  br i1 %_cond1_n_cond2_cond3_184, label %131, label %132

; <label>:131:                                    ; preds = %129
  %_address_in_parent_stack_bt_186 = bitcast i8* %_pot_address_in_parent_stack_177 to i64*
  br label %132

; <label>:132:                                    ; preds = %129, %131
  %133 = phi i64* [ %_allin_new_bt_10, %129 ], [ %_address_in_parent_stack_bt_186, %131 ]
  %_new_load_187 = load i64, i64* %133
  %_new_gep_11 = getelementptr i8, i8* %_load_rsp_ptr_, i64 56
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %_ptr_to_int_188 = ptrtoint i64* %_allin_new_bt_12 to i64
  %_offset_above_rbp_191 = sub i64 %_ptr_to_int_188, %_local_end_to_int_
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_191
  %_cond1_193 = icmp ugt i8* %_new_gep_11, %_local_stack_start_ptr_
  %_cond2_1_194 = icmp ugt i8* %_new_gep_11, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_new_gep_11, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  br i1 %_cond1_n_cond2_cond3_199, label %134, label %135

; <label>:134:                                    ; preds = %132
  %_address_in_parent_stack_bt_201 = bitcast i8* %_pot_address_in_parent_stack_192 to i64*
  br label %135

; <label>:135:                                    ; preds = %132, %134
  %136 = phi i64* [ %_allin_new_bt_12, %132 ], [ %_address_in_parent_stack_bt_201, %134 ]
  %_new_load_202 = load i64, i64* %136
  %_new_gep_13 = getelementptr i8, i8* %_load_rsp_ptr_, i64 64
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %_ptr_to_int_203 = ptrtoint i64* %_allin_new_bt_14 to i64
  %_offset_above_rbp_206 = sub i64 %_ptr_to_int_203, %_local_end_to_int_
  %_pot_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_cond1_208 = icmp ugt i8* %_new_gep_13, %_local_stack_start_ptr_
  %_cond2_1_209 = icmp ugt i8* %_new_gep_13, %_parent_stack_end_ptr_
  %_cond2_2_210 = icmp ult i8* %_new_gep_13, %_parent_stack_start_ptr_
  %_cond2_211 = or i1 %_cond2_1_209, %_cond2_2_210
  %_cond4_212 = icmp ule i8* %_pot_address_in_parent_stack_207, %_parent_stack_end_ptr_
  %_cond1_n_cond2_213 = and i1 %_cond1_208, %_cond2_211
  %_cond1_n_cond2_cond3_214 = and i1 %_cond1_n_cond2_213, %_cond4_212
  br i1 %_cond1_n_cond2_cond3_214, label %137, label %138

; <label>:137:                                    ; preds = %135
  %_address_in_parent_stack_bt_216 = bitcast i8* %_pot_address_in_parent_stack_207 to i64*
  br label %138

; <label>:138:                                    ; preds = %135, %137
  %139 = phi i64* [ %_allin_new_bt_14, %135 ], [ %_address_in_parent_stack_bt_216, %137 ]
  %_new_load_217 = load i64, i64* %139
  %_new_gep_15 = getelementptr i8, i8* %_load_rsp_ptr_, i64 72
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %_ptr_to_int_218 = ptrtoint i64* %_allin_new_bt_16 to i64
  %_offset_above_rbp_221 = sub i64 %_ptr_to_int_218, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_new_gep_15, %_local_stack_start_ptr_
  %_cond2_1_224 = icmp ugt i8* %_new_gep_15, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_new_gep_15, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  br i1 %_cond1_n_cond2_cond3_229, label %140, label %141

; <label>:140:                                    ; preds = %138
  %_address_in_parent_stack_bt_231 = bitcast i8* %_pot_address_in_parent_stack_222 to i64*
  br label %141

; <label>:141:                                    ; preds = %138, %140
  %142 = phi i64* [ %_allin_new_bt_16, %138 ], [ %_address_in_parent_stack_bt_231, %140 ]
  %_new_load_232 = load i64, i64* %142
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_, i64 80
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %_ptr_to_int_233 = ptrtoint i64* %_allin_new_bt_18 to i64
  %_offset_above_rbp_236 = sub i64 %_ptr_to_int_233, %_local_end_to_int_
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_new_gep_17, %_local_stack_start_ptr_
  %_cond2_1_239 = icmp ugt i8* %_new_gep_17, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_new_gep_17, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  br i1 %_cond1_n_cond2_cond3_244, label %143, label %144

; <label>:143:                                    ; preds = %141
  %_address_in_parent_stack_bt_246 = bitcast i8* %_pot_address_in_parent_stack_237 to i64*
  br label %144

; <label>:144:                                    ; preds = %141, %143
  %145 = phi i64* [ %_allin_new_bt_18, %141 ], [ %_address_in_parent_stack_bt_246, %143 ]
  %_new_load_247 = load i64, i64* %145
  %146 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x4007d0 to i32), i32 4) to i64), i64 %66, i64 %94, i64 %101, i64 %108, i64 %115, i64 %_new_load_112, i64 %_new_load_127, i64 %_new_load_142, i64 %_new_load_157, i64 %_new_load_172, i64 %_new_load_187, i64 %_new_load_202, i64 %_new_load_217, i64 %_new_load_232, i64 %_new_load_247), !mcsema_real_eip !47
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %146, i64* %RAX, !mcsema_real_eip !47
  store i64 %1, i64* %RBX, !mcsema_real_eip !47
  store i64 %101, i64* %RCX, !mcsema_real_eip !47
  store i64 %94, i64* %RDX, !mcsema_real_eip !47
  store i64 %66, i64* %RSI, !mcsema_real_eip !47
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x4007d0 to i32), i32 4) to i64), i64* %RDI, !mcsema_real_eip !47
  %_new_ptr2int_ = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %_new_ptr2int_, i64* %RSP
  %_new_ptr2int_22 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_22, i64* %RBP
  store i64 %108, i64* %R8, !mcsema_real_eip !47
  store i64 %115, i64* %R9, !mcsema_real_eip !47
  store i64 %66, i64* %R10, !mcsema_real_eip !47
  store i64 %4, i64* %R11, !mcsema_real_eip !47
  store i64 %5, i64* %R12, !mcsema_real_eip !47
  store i64 %6, i64* %R13, !mcsema_real_eip !47
  store i64 %7, i64* %R14, !mcsema_real_eip !47
  store i64 %8, i64* %R15, !mcsema_real_eip !47
  store i64 %9, i64* %RIP, !mcsema_real_eip !47
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %10, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  store i1 %14, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %15, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i3 %16, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i1 %17, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %18, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %19, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %20, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %21, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %22, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %23, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %24, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %25, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %26, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %27, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %28, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i2 %29, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %30, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i1 %31, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %32, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %33, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %34, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %35, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %36, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %_ptr_to_int_248 = ptrtoint i64* %39 to i64
  %_ptr_bt_250 = bitcast i64* %39 to i8*
  %_offset_above_rbp_251 = sub i64 %_ptr_to_int_248, %_local_end_to_int_
  %_pot_address_in_parent_stack_252 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_251
  %_cond1_253 = icmp ugt i8* %_ptr_bt_250, %_local_stack_start_ptr_
  %_cond2_1_254 = icmp ugt i8* %_ptr_bt_250, %_parent_stack_end_ptr_
  %_cond2_2_255 = icmp ult i8* %_ptr_bt_250, %_parent_stack_start_ptr_
  %_cond2_256 = or i1 %_cond2_1_254, %_cond2_2_255
  %_cond4_257 = icmp ule i8* %_pot_address_in_parent_stack_252, %_parent_stack_end_ptr_
  %_cond1_n_cond2_258 = and i1 %_cond1_253, %_cond2_256
  %_cond1_n_cond2_cond3_259 = and i1 %_cond1_n_cond2_258, %_cond4_257
  br i1 %_cond1_n_cond2_cond3_259, label %147, label %148

; <label>:147:                                    ; preds = %144
  %_address_in_parent_stack_bt_261 = bitcast i8* %_pot_address_in_parent_stack_252 to i64*
  br label %148

; <label>:148:                                    ; preds = %144, %147
  %149 = phi i64* [ %39, %144 ], [ %_address_in_parent_stack_bt_261, %147 ]
  %_new_load_262 = load i64, i64* %149
  store i64 %_new_load_262, i64* %38, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  store i11 %47, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !47
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 4195888}
!3 = !{i64 4195893}
!4 = !{i64 4195900}
!5 = !{i64 4195908}
!6 = !{i64 4195916}
!7 = !{i64 4195924}
!8 = !{i64 4195933}
!9 = !{i64 4195938}
!10 = !{i64 4195945}
!11 = !{i64 4195953}
!12 = !{i64 4195961}
!13 = !{i64 4195977}
!14 = !{i64 4195982}
!15 = !{i64 4195989}
!16 = !{i64 4195997}
!17 = !{i64 4196005}
!18 = !{i64 4196021}
!19 = !{i64 4196026}
!20 = !{i64 4196033}
!21 = !{i64 4196041}
!22 = !{i64 4196049}
!23 = !{i64 4196065}
!24 = !{i64 4196070}
!25 = !{i64 4196077}
!26 = !{i64 4196085}
!27 = !{i64 4196093}
!28 = !{i64 4196109}
!29 = !{i64 4196114}
!30 = !{i64 4196121}
!31 = !{i64 4196129}
!32 = !{i64 4196137}
!33 = !{i64 4196153}
!34 = !{i64 4196160}
!35 = !{i64 4196164}
!36 = !{i64 4196165}
!37 = !{i64 4195824}
!38 = !{i64 4195840}
!39 = !{i64 4195844}
!40 = !{i64 4195847}
!41 = !{i64 4195851}
!42 = !{i64 4195854}
!43 = !{i64 4195856}
!44 = !{i64 4195858}
!45 = !{i64 4195861}
!46 = !{i64 4195865}
!47 = !{i64 4195536}
