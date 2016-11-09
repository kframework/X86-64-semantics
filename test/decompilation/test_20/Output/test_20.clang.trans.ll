; ModuleID = 'Output/test_20.clang.trans.bc'
source_filename = "Output/test_20.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 92
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 92
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
  %_new_gep_1 = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -12
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %69 = trunc i64 %5 to i32, !mcsema_real_eip !3
  %70 = bitcast i64* %_allin_new_bt_2 to i32*
  store i32 %69, i32* %70, !mcsema_real_eip !3
  %_new_gep_4 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %71 = bitcast i64* %_allin_new_bt_5 to i32*
  store i32 0, i32* %71, !mcsema_real_eip !4
  %_new_gep_7 = getelementptr i8, i8* %_new_gep_, i64 -4
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %72 = bitcast i64* %_allin_new_bt_8 to i32*
  %73 = load i32, i32* %72, !mcsema_real_eip !5
  %74 = zext i32 %73 to i64, !mcsema_real_eip !5
  %75 = icmp eq i32 %73, 0, !mcsema_real_eip !6
  %_new_gep_10 = getelementptr i8, i8* %_new_gep_, i64 -12
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %76 = bitcast i64* %_allin_new_bt_11 to i32*
  store i32 %73, i32* %76, !mcsema_real_eip !7
  br i1 %75, label %block_0x19f, label %block_0x21, !mcsema_real_eip !8

block_0x19f:                                      ; preds = %entry
  store i32 0, i32* %71, !mcsema_real_eip !9
  br label %block_0x2c8, !mcsema_real_eip !10

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %OF_val.0 = phi i1 [ false, %block_0x19f ], [ false, %block_0x1ad ], [ false, %block_0x1bb ], [ false, %block_0x1c9 ], [ false, %block_0x1d7 ], [ false, %block_0x1e5 ], [ false, %block_0x1f3 ], [ false, %block_0x201 ], [ false, %block_0x20f ], [ false, %block_0x21f ], [ false, %block_0x22f ], [ false, %block_0x23f ], [ false, %block_0x24f ], [ false, %block_0x25f ], [ false, %block_0x26f ], [ false, %block_0x27f ], [ false, %block_0x28f ], [ false, %block_0x29f ], [ false, %block_0x2af ], [ false, %block_0x2bf ]
  %SF_val.0 = phi i1 [ false, %block_0x19f ], [ false, %block_0x1ad ], [ false, %block_0x1bb ], [ false, %block_0x1c9 ], [ false, %block_0x1d7 ], [ false, %block_0x1e5 ], [ false, %block_0x1f3 ], [ false, %block_0x201 ], [ false, %block_0x20f ], [ false, %block_0x21f ], [ false, %block_0x22f ], [ false, %block_0x23f ], [ false, %block_0x24f ], [ false, %block_0x25f ], [ false, %block_0x26f ], [ false, %block_0x27f ], [ false, %block_0x28f ], [ false, %block_0x29f ], [ false, %block_0x2af ], [ false, %block_0x2bf ]
  %CF_val.0 = phi i1 [ false, %block_0x19f ], [ false, %block_0x1ad ], [ false, %block_0x1bb ], [ false, %block_0x1c9 ], [ false, %block_0x1d7 ], [ false, %block_0x1e5 ], [ false, %block_0x1f3 ], [ false, %block_0x201 ], [ false, %block_0x20f ], [ false, %block_0x21f ], [ false, %block_0x22f ], [ false, %block_0x23f ], [ false, %block_0x24f ], [ false, %block_0x25f ], [ false, %block_0x26f ], [ false, %block_0x27f ], [ false, %block_0x28f ], [ false, %block_0x29f ], [ false, %block_0x2af ], [ false, %block_0x2bf ]
  %AF_val.0 = phi i1 [ false, %block_0x19f ], [ false, %block_0x1ad ], [ false, %block_0x1bb ], [ false, %block_0x1c9 ], [ false, %block_0x1d7 ], [ false, %block_0x1e5 ], [ false, %block_0x1f3 ], [ false, %block_0x201 ], [ false, %block_0x20f ], [ false, %block_0x21f ], [ false, %block_0x22f ], [ false, %block_0x23f ], [ false, %block_0x24f ], [ false, %block_0x25f ], [ false, %block_0x26f ], [ false, %block_0x27f ], [ false, %block_0x28f ], [ false, %block_0x29f ], [ false, %block_0x2af ], [ false, %block_0x2bf ]
  %PF_val.0 = phi i1 [ true, %block_0x19f ], [ false, %block_0x1ad ], [ false, %block_0x1bb ], [ false, %block_0x1c9 ], [ true, %block_0x1d7 ], [ true, %block_0x1e5 ], [ false, %block_0x1f3 ], [ false, %block_0x201 ], [ true, %block_0x20f ], [ false, %block_0x21f ], [ false, %block_0x22f ], [ true, %block_0x23f ], [ false, %block_0x24f ], [ true, %block_0x25f ], [ false, %block_0x26f ], [ true, %block_0x27f ], [ false, %block_0x28f ], [ false, %block_0x29f ], [ true, %block_0x2af ], [ true, %block_0x2bf ]
  %ZF_val.0 = phi i1 [ true, %block_0x19f ], [ false, %block_0x1ad ], [ false, %block_0x1bb ], [ false, %block_0x1c9 ], [ false, %block_0x1d7 ], [ false, %block_0x1e5 ], [ false, %block_0x1f3 ], [ false, %block_0x201 ], [ false, %block_0x20f ], [ false, %block_0x21f ], [ false, %block_0x22f ], [ false, %block_0x23f ], [ false, %block_0x24f ], [ false, %block_0x25f ], [ false, %block_0x26f ], [ false, %block_0x27f ], [ false, %block_0x28f ], [ false, %block_0x29f ], [ false, %block_0x2af ], [ true, %block_0x2bf ]
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -8
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %77 = bitcast i64* %_allin_new_bt_20 to i32*
  %78 = load i32, i32* %77, !mcsema_real_eip !11
  %79 = zext i32 %78 to i64, !mcsema_real_eip !11
  %_load_rsp_ptr_21 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_22 = bitcast i8* %_load_rsp_ptr_21 to i64*
  %80 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !12
  %_new_int2ptr_ = inttoptr i64 %80 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_21, i64 16
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %79, i64* %RAX, !mcsema_real_eip !13
  store i64 %1, i64* %RBX, !mcsema_real_eip !13
  store i64 %2, i64* %RCX, !mcsema_real_eip !13
  store i64 %3, i64* %RDX, !mcsema_real_eip !13
  store i64 %4, i64* %RSI, !mcsema_real_eip !13
  store i64 %74, i64* %RDI, !mcsema_real_eip !13
  %_new_ptr2int_25 = ptrtoint i8* %_new_gep_23 to i64
  store volatile i64 %_new_ptr2int_25, i64* %RSP
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_27 = ptrtoint i8* %_load_rbp_ptr_26 to i64
  store volatile i64 %_new_ptr2int_27, i64* %RBP
  store i64 %6, i64* %R8, !mcsema_real_eip !13
  store i64 %7, i64* %R9, !mcsema_real_eip !13
  store i64 %8, i64* %R10, !mcsema_real_eip !13
  store i64 %9, i64* %R11, !mcsema_real_eip !13
  store i64 %10, i64* %R12, !mcsema_real_eip !13
  store i64 %11, i64* %R13, !mcsema_real_eip !13
  store i64 %12, i64* %R14, !mcsema_real_eip !13
  store i64 %13, i64* %R15, !mcsema_real_eip !13
  store i64 %14, i64* %RIP, !mcsema_real_eip !13
  store i1 %CF_val.0, i1* %CF, align 1, !mcsema_real_eip !13
  store i1 %PF_val.0, i1* %PF, align 1, !mcsema_real_eip !13
  store i1 %AF_val.0, i1* %AF, align 1, !mcsema_real_eip !13
  store i1 %ZF_val.0, i1* %ZF, align 1, !mcsema_real_eip !13
  store i1 %SF_val.0, i1* %SF, align 1, !mcsema_real_eip !13
  store i1 %OF_val.0, i1* %OF, align 1, !mcsema_real_eip !13
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !13
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !13
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %81 = load i64, i64* %44, align 4
  store i64 %81, i64* %43, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  store i11 %50, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !13
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !13
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !13
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !13
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !13
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !13
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !13
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !13
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !13
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !13
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !13
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !13
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !13
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !13
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !13
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !13
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !13
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !13
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13

block_0x21:                                       ; preds = %entry
  %82 = add i32 %73, -1
  %83 = icmp eq i32 %82, 0, !mcsema_real_eip !14
  %_new_gep_31 = getelementptr i8, i8* %_new_gep_, i64 -16
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %84 = bitcast i64* %_allin_new_bt_32 to i32*
  store i32 %82, i32* %84, !mcsema_real_eip !15
  br i1 %83, label %block_0x1ad, label %block_0x35, !mcsema_real_eip !16

block_0x1ad:                                      ; preds = %block_0x21
  store i32 1, i32* %71, !mcsema_real_eip !17
  br label %block_0x2c8, !mcsema_real_eip !18

block_0x35:                                       ; preds = %block_0x21
  %85 = add i32 %73, -2
  %86 = icmp eq i32 %85, 0, !mcsema_real_eip !19
  %_new_gep_42 = getelementptr i8, i8* %_new_gep_, i64 -20
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %87 = bitcast i64* %_allin_new_bt_43 to i32*
  store i32 %85, i32* %87, !mcsema_real_eip !20
  br i1 %86, label %block_0x1bb, label %block_0x49, !mcsema_real_eip !21

block_0x1bb:                                      ; preds = %block_0x35
  store i32 2, i32* %71, !mcsema_real_eip !22
  br label %block_0x2c8, !mcsema_real_eip !23

block_0x49:                                       ; preds = %block_0x35
  %88 = add i32 %73, -4
  %89 = icmp eq i32 %88, 0, !mcsema_real_eip !24
  %_new_gep_53 = getelementptr i8, i8* %_new_gep_, i64 -24
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %90 = bitcast i64* %_allin_new_bt_54 to i32*
  store i32 %88, i32* %90, !mcsema_real_eip !25
  br i1 %89, label %block_0x1c9, label %block_0x5d, !mcsema_real_eip !26

block_0x1c9:                                      ; preds = %block_0x49
  store i32 4, i32* %71, !mcsema_real_eip !27
  br label %block_0x2c8, !mcsema_real_eip !28

block_0x5d:                                       ; preds = %block_0x49
  %91 = add i32 %73, -6
  %92 = icmp eq i32 %91, 0, !mcsema_real_eip !29
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_, i64 -28
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %93 = bitcast i64* %_allin_new_bt_65 to i32*
  store i32 %91, i32* %93, !mcsema_real_eip !30
  br i1 %92, label %block_0x1d7, label %block_0x71, !mcsema_real_eip !31

block_0x1d7:                                      ; preds = %block_0x5d
  store i32 6, i32* %71, !mcsema_real_eip !32
  br label %block_0x2c8, !mcsema_real_eip !33

block_0x71:                                       ; preds = %block_0x5d
  %94 = add i32 %73, -12
  %95 = icmp eq i32 %94, 0, !mcsema_real_eip !34
  %_new_gep_75 = getelementptr i8, i8* %_new_gep_, i64 -32
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %96 = bitcast i64* %_allin_new_bt_76 to i32*
  store i32 %94, i32* %96, !mcsema_real_eip !35
  br i1 %95, label %block_0x1e5, label %block_0x85, !mcsema_real_eip !36

block_0x1e5:                                      ; preds = %block_0x71
  store i32 12, i32* %71, !mcsema_real_eip !37
  br label %block_0x2c8, !mcsema_real_eip !38

block_0x85:                                       ; preds = %block_0x71
  %97 = add i32 %73, -13
  %98 = icmp eq i32 %97, 0, !mcsema_real_eip !39
  %_new_gep_86 = getelementptr i8, i8* %_new_gep_, i64 -36
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %99 = bitcast i64* %_allin_new_bt_87 to i32*
  store i32 %97, i32* %99, !mcsema_real_eip !40
  br i1 %98, label %block_0x1f3, label %block_0x99, !mcsema_real_eip !41

block_0x1f3:                                      ; preds = %block_0x85
  store i32 13, i32* %71, !mcsema_real_eip !42
  br label %block_0x2c8, !mcsema_real_eip !43

block_0x99:                                       ; preds = %block_0x85
  %100 = add i32 %73, -19
  %101 = icmp eq i32 %100, 0, !mcsema_real_eip !44
  %_new_gep_97 = getelementptr i8, i8* %_new_gep_, i64 -40
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %102 = bitcast i64* %_allin_new_bt_98 to i32*
  store i32 %100, i32* %102, !mcsema_real_eip !45
  br i1 %101, label %block_0x201, label %block_0xad, !mcsema_real_eip !46

block_0x201:                                      ; preds = %block_0x99
  store i32 19, i32* %71, !mcsema_real_eip !47
  br label %block_0x2c8, !mcsema_real_eip !48

block_0xad:                                       ; preds = %block_0x99
  %103 = add i32 %73, -255
  %104 = icmp eq i32 %103, 0, !mcsema_real_eip !49
  %_new_gep_108 = getelementptr i8, i8* %_new_gep_, i64 -44
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %105 = bitcast i64* %_allin_new_bt_109 to i32*
  store i32 %103, i32* %105, !mcsema_real_eip !50
  br i1 %104, label %block_0x20f, label %block_0xc3, !mcsema_real_eip !51

block_0x20f:                                      ; preds = %block_0xad
  store i32 255, i32* %71, !mcsema_real_eip !52
  br label %block_0x2c8, !mcsema_real_eip !53

block_0xc3:                                       ; preds = %block_0xad
  %106 = add i32 %73, -74633
  %107 = icmp eq i32 %106, 0, !mcsema_real_eip !54
  %_new_gep_119 = getelementptr i8, i8* %_new_gep_, i64 -48
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  %108 = bitcast i64* %_allin_new_bt_120 to i32*
  store i32 %106, i32* %108, !mcsema_real_eip !55
  br i1 %107, label %block_0x21f, label %block_0xd9, !mcsema_real_eip !56

block_0x21f:                                      ; preds = %block_0xc3
  store i32 74633, i32* %71, !mcsema_real_eip !57
  br label %block_0x2c8, !mcsema_real_eip !58

block_0xd9:                                       ; preds = %block_0xc3
  %109 = add i32 %73, -74634
  %110 = icmp eq i32 %109, 0, !mcsema_real_eip !59
  %_new_gep_130 = getelementptr i8, i8* %_new_gep_, i64 -52
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %111 = bitcast i64* %_allin_new_bt_131 to i32*
  store i32 %109, i32* %111, !mcsema_real_eip !60
  br i1 %110, label %block_0x22f, label %block_0xef, !mcsema_real_eip !61

block_0x22f:                                      ; preds = %block_0xd9
  store i32 74634, i32* %71, !mcsema_real_eip !62
  br label %block_0x2c8, !mcsema_real_eip !63

block_0xef:                                       ; preds = %block_0xd9
  %112 = add i32 %73, -74635
  %113 = icmp eq i32 %112, 0, !mcsema_real_eip !64
  %_new_gep_141 = getelementptr i8, i8* %_new_gep_, i64 -56
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %114 = bitcast i64* %_allin_new_bt_142 to i32*
  store i32 %112, i32* %114, !mcsema_real_eip !65
  br i1 %113, label %block_0x23f, label %block_0x105, !mcsema_real_eip !66

block_0x23f:                                      ; preds = %block_0xef
  store i32 74635, i32* %71, !mcsema_real_eip !67
  br label %block_0x2c8, !mcsema_real_eip !68

block_0x105:                                      ; preds = %block_0xef
  %115 = add i32 %73, -74636
  %116 = icmp eq i32 %115, 0, !mcsema_real_eip !69
  %_new_gep_152 = getelementptr i8, i8* %_new_gep_, i64 -60
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %117 = bitcast i64* %_allin_new_bt_153 to i32*
  store i32 %115, i32* %117, !mcsema_real_eip !70
  br i1 %116, label %block_0x24f, label %block_0x11b, !mcsema_real_eip !71

block_0x24f:                                      ; preds = %block_0x105
  store i32 74636, i32* %71, !mcsema_real_eip !72
  br label %block_0x2c8, !mcsema_real_eip !73

block_0x11b:                                      ; preds = %block_0x105
  %118 = add i32 %73, -74637
  %119 = icmp eq i32 %118, 0, !mcsema_real_eip !74
  %_new_gep_163 = getelementptr i8, i8* %_new_gep_, i64 -64
  %_allin_new_bt_164 = bitcast i8* %_new_gep_163 to i64*
  %120 = bitcast i64* %_allin_new_bt_164 to i32*
  store i32 %118, i32* %120, !mcsema_real_eip !75
  br i1 %119, label %block_0x25f, label %block_0x131, !mcsema_real_eip !76

block_0x25f:                                      ; preds = %block_0x11b
  store i32 74637, i32* %71, !mcsema_real_eip !77
  br label %block_0x2c8, !mcsema_real_eip !78

block_0x131:                                      ; preds = %block_0x11b
  %121 = add i32 %73, -74639
  %122 = icmp eq i32 %121, 0, !mcsema_real_eip !79
  %_new_gep_174 = getelementptr i8, i8* %_new_gep_, i64 -68
  %_allin_new_bt_175 = bitcast i8* %_new_gep_174 to i64*
  %123 = bitcast i64* %_allin_new_bt_175 to i32*
  store i32 %121, i32* %123, !mcsema_real_eip !80
  br i1 %122, label %block_0x26f, label %block_0x147, !mcsema_real_eip !81

block_0x26f:                                      ; preds = %block_0x131
  store i32 74639, i32* %71, !mcsema_real_eip !82
  br label %block_0x2c8, !mcsema_real_eip !83

block_0x147:                                      ; preds = %block_0x131
  %124 = add i32 %73, -74640
  %125 = icmp eq i32 %124, 0, !mcsema_real_eip !84
  %_new_gep_185 = getelementptr i8, i8* %_new_gep_, i64 -72
  %_allin_new_bt_186 = bitcast i8* %_new_gep_185 to i64*
  %126 = bitcast i64* %_allin_new_bt_186 to i32*
  store i32 %124, i32* %126, !mcsema_real_eip !85
  br i1 %125, label %block_0x27f, label %block_0x15d, !mcsema_real_eip !86

block_0x27f:                                      ; preds = %block_0x147
  store i32 74640, i32* %71, !mcsema_real_eip !87
  br label %block_0x2c8, !mcsema_real_eip !88

block_0x15d:                                      ; preds = %block_0x147
  %127 = add i32 %73, -74641
  %128 = icmp eq i32 %127, 0, !mcsema_real_eip !89
  %_new_gep_196 = getelementptr i8, i8* %_new_gep_, i64 -76
  %_allin_new_bt_197 = bitcast i8* %_new_gep_196 to i64*
  %129 = bitcast i64* %_allin_new_bt_197 to i32*
  store i32 %127, i32* %129, !mcsema_real_eip !90
  br i1 %128, label %block_0x28f, label %block_0x173, !mcsema_real_eip !91

block_0x28f:                                      ; preds = %block_0x15d
  store i32 74641, i32* %71, !mcsema_real_eip !92
  br label %block_0x2c8, !mcsema_real_eip !93

block_0x173:                                      ; preds = %block_0x15d
  %130 = add i32 %73, -74642
  %131 = icmp eq i32 %130, 0, !mcsema_real_eip !94
  %_new_gep_207 = getelementptr i8, i8* %_new_gep_, i64 -80
  %_allin_new_bt_208 = bitcast i8* %_new_gep_207 to i64*
  %132 = bitcast i64* %_allin_new_bt_208 to i32*
  store i32 %130, i32* %132, !mcsema_real_eip !95
  br i1 %131, label %block_0x29f, label %block_0x189, !mcsema_real_eip !96

block_0x29f:                                      ; preds = %block_0x173
  store i32 74642, i32* %71, !mcsema_real_eip !97
  br label %block_0x2c8, !mcsema_real_eip !98

block_0x189:                                      ; preds = %block_0x173
  %133 = add i32 %73, -74643
  %134 = icmp eq i32 %133, 0, !mcsema_real_eip !99
  %_new_gep_218 = getelementptr i8, i8* %_new_gep_, i64 -84
  %_allin_new_bt_219 = bitcast i8* %_new_gep_218 to i64*
  %135 = bitcast i64* %_allin_new_bt_219 to i32*
  store i32 %133, i32* %135, !mcsema_real_eip !100
  br i1 %134, label %block_0x2af, label %block_0x2bf, !mcsema_real_eip !101

block_0x2af:                                      ; preds = %block_0x189
  store i32 74643, i32* %71, !mcsema_real_eip !102
  br label %block_0x2c8, !mcsema_real_eip !103

block_0x2bf:                                      ; preds = %block_0x189
  store i32 0, i32* %71, !mcsema_real_eip !104
  br label %block_0x2c8
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
!4 = !{i64 7}
!5 = !{i64 14}
!6 = !{i64 17}
!7 = !{i64 19}
!8 = !{i64 22}
!9 = !{i64 421}
!10 = !{i64 424}
!11 = !{i64 712}
!12 = !{i64 715}
!13 = !{i64 716}
!14 = !{i64 36}
!15 = !{i64 39}
!16 = !{i64 42}
!17 = !{i64 435}
!18 = !{i64 438}
!19 = !{i64 56}
!20 = !{i64 59}
!21 = !{i64 62}
!22 = !{i64 449}
!23 = !{i64 452}
!24 = !{i64 76}
!25 = !{i64 79}
!26 = !{i64 82}
!27 = !{i64 463}
!28 = !{i64 466}
!29 = !{i64 96}
!30 = !{i64 99}
!31 = !{i64 102}
!32 = !{i64 477}
!33 = !{i64 480}
!34 = !{i64 116}
!35 = !{i64 119}
!36 = !{i64 122}
!37 = !{i64 491}
!38 = !{i64 494}
!39 = !{i64 136}
!40 = !{i64 139}
!41 = !{i64 142}
!42 = !{i64 505}
!43 = !{i64 508}
!44 = !{i64 156}
!45 = !{i64 159}
!46 = !{i64 162}
!47 = !{i64 519}
!48 = !{i64 522}
!49 = !{i64 176}
!50 = !{i64 181}
!51 = !{i64 184}
!52 = !{i64 535}
!53 = !{i64 538}
!54 = !{i64 198}
!55 = !{i64 203}
!56 = !{i64 206}
!57 = !{i64 551}
!58 = !{i64 554}
!59 = !{i64 220}
!60 = !{i64 225}
!61 = !{i64 228}
!62 = !{i64 567}
!63 = !{i64 570}
!64 = !{i64 242}
!65 = !{i64 247}
!66 = !{i64 250}
!67 = !{i64 583}
!68 = !{i64 586}
!69 = !{i64 264}
!70 = !{i64 269}
!71 = !{i64 272}
!72 = !{i64 599}
!73 = !{i64 602}
!74 = !{i64 286}
!75 = !{i64 291}
!76 = !{i64 294}
!77 = !{i64 615}
!78 = !{i64 618}
!79 = !{i64 308}
!80 = !{i64 313}
!81 = !{i64 316}
!82 = !{i64 631}
!83 = !{i64 634}
!84 = !{i64 330}
!85 = !{i64 335}
!86 = !{i64 338}
!87 = !{i64 647}
!88 = !{i64 650}
!89 = !{i64 352}
!90 = !{i64 357}
!91 = !{i64 360}
!92 = !{i64 663}
!93 = !{i64 666}
!94 = !{i64 374}
!95 = !{i64 379}
!96 = !{i64 382}
!97 = !{i64 679}
!98 = !{i64 682}
!99 = !{i64 396}
!100 = !{i64 401}
!101 = !{i64 404}
!102 = !{i64 695}
!103 = !{i64 698}
!104 = !{i64 709}
