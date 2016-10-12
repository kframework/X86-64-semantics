; ModuleID = 'Output/test_23.clang.trans.opt.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)* }>
%1 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2a1 = internal constant %0 <{ void (%struct.regs*)* @sub_172, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_180, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_164, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_156 }>, align 64
@data_0x359 = internal global %1 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_172(%struct.regs*) #0 {
entry:
  %_RSP_ptr_272.sroa.0 = alloca i64, align 8
  %_RBP_ptr_273.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_274 = alloca [84 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [84 x i8], [84 x i8]* %_local_stack_start_ptr_274, i64 0, i64 84
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_272.sroa.0, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX, align 8, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = load i64, i64* %RSI, align 8, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %4 = load i64, i64* %RDI, align 8, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %5 = load i64, i64* %R8, align 8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %9 = load i64, i64* %R12, align 8, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %10 = load i64, i64* %R13, align 8, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %11 = load i64, i64* %R14, align 8, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %12 = load i64, i64* %R15, align 8, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !2
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
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !2
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
  %43 = load i64, i64* %42, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !2
  %66 = bitcast i64* %_RBP_ptr_273.sroa.0 to i8**
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_286 = load i8*, i8** %66, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_286, i64 -20
  %67 = bitcast i8* %_new_gep_ to i32*
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !2
  %69 = add i32 %68, -1
  store i32 %69, i32* %67, align 4, !mcsema_real_eip !3
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287 = load i8*, i8** %66, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -24
  %70 = bitcast i8* %_new_gep_5 to i32*
  %71 = load i32, i32* %70, align 4, !mcsema_real_eip !4
  %72 = sext i32 %71 to i64, !mcsema_real_eip !4
  %73 = mul nsw i64 %72, 11, !mcsema_real_eip !5
  %74 = add i64 %73, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -20
  %75 = bitcast i8* %_new_gep_8 to i32*
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !6
  %77 = sext i32 %76 to i64, !mcsema_real_eip !6
  %78 = add i64 %74, %77, !mcsema_real_eip !7
  %79 = inttoptr i64 %78 to i8*
  %80 = load i8, i8* %79, align 1, !mcsema_real_eip !7
  %81 = sext i8 %80 to i64
  %82 = and i64 %81, 4294967295
  switch i8 %80, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %entry, %block_0x11e, %block_0x24e
  %_load_rbp_ptr_130.sink = phi i8* [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298, %block_0x24e ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296, %block_0x11e ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, %entry ]
  %RDX_val.0 = phi i64 [ %82, %block_0x24e ], [ %129, %block_0x11e ], [ %82, %entry ]
  %RCX_val.0 = phi i64 [ %77, %block_0x24e ], [ %180, %block_0x11e ], [ %77, %entry ]
  %.sink = phi i32 [ 2, %block_0x24e ], [ 1, %block_0x11e ], [ 0, %entry ]
  %_new_gep_131 = getelementptr i8, i8* %_load_rbp_ptr_130.sink, i64 -4
  %83 = bitcast i8* %_new_gep_131 to i32*
  store i32 %.sink, i32* %83, align 4
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_19297 = load i8*, i8** %66, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_19297, i64 -4
  %84 = bitcast i8* %_new_gep_20 to i32*
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !8
  %86 = zext i32 %85 to i64, !mcsema_real_eip !8
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, i64 96)
  %87 = extractvalue { i64, i1 } %uadd348, 0
  %88 = xor i64 %87, %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, !mcsema_real_eip !9
  %89 = and i64 %88, 16, !mcsema_real_eip !9
  %90 = icmp ne i64 %89, 0, !mcsema_real_eip !9
  %91 = icmp slt i64 %87, 0
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !9
  %93 = xor i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, -9223372036854775808, !mcsema_real_eip !9
  %94 = and i64 %88, %93, !mcsema_real_eip !9
  %95 = icmp slt i64 %94, 0
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !9
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !9
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  %100 = extractvalue { i64, i1 } %uadd348, 1
  store volatile i64 %87, i64* %_RSP_ptr_272.sroa.0, align 8
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !10
  %102 = load i64, i64* %101, align 8
  store volatile i64 %102, i64* %_RBP_ptr_273.sroa.0, align 8
  %103 = add i64 %87, 16
  store volatile i64 %103, i64* %_RSP_ptr_272.sroa.0, align 8
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %103, i64* %RSP, align 8
  store volatile i64 %102, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %100, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %99, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %92, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %91, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %95, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x242:                                      ; preds = %entry, %block_0x22c
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -28
  %104 = bitcast i8* %_new_gep_29 to i32*
  %105 = load i32, i32* %104, align 4, !mcsema_real_eip !12
  %106 = icmp eq i32 %105, %76
  br i1 %106, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %71, 2
  %notrhs = icmp ne i8 %80, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %107 = icmp slt i32 %76, 1
  %or.cond285 = or i1 %107, %or.cond.not
  br i1 %or.cond285, label %block_0x236, label %block_0x22c, !mcsema_real_eip !14

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -28
  %108 = bitcast i8* %_new_gep_38 to i32*
  %109 = load i32, i32* %108, align 4, !mcsema_real_eip !15
  store i32 %109, i32* %75, align 4, !mcsema_real_eip !16
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300 = load i8*, i8** %66, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300, i64 -32
  %110 = bitcast i8* %_new_gep_44 to i32*
  %111 = load i32, i32* %110, align 4, !mcsema_real_eip !17
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300, i64 -24
  %112 = bitcast i8* %_new_gep_47 to i32*
  store i32 %111, i32* %112, align 4, !mcsema_real_eip !18
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301 = load i8*, i8** %66, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -28
  %113 = bitcast i8* %_new_gep_50 to i32*
  %114 = load i32, i32* %113, align 4, !mcsema_real_eip !12
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -20
  %115 = bitcast i8* %_new_gep_53 to i32*
  %116 = load i32, i32* %115, align 4, !mcsema_real_eip !19
  %117 = icmp eq i32 %114, %116
  %_new_gep_81.phi.trans.insert = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -24
  %.phi.trans.insert = bitcast i8* %_new_gep_81.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 4
  br i1 %117, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x266:                                      ; preds = %block_0x236, %block_0x24e, %block_0x242
  %118 = phi i32 [ %76, %block_0x242 ], [ %.pre307, %block_0x24e ], [ %116, %block_0x236 ]
  %119 = phi i32 [ %71, %block_0x242 ], [ %137, %block_0x24e ], [ %.pre, %block_0x236 ]
  %120 = sext i32 %119 to i64, !mcsema_real_eip !20
  %121 = mul nsw i64 %120, 11, !mcsema_real_eip !21
  %122 = add i64 %121, ptrtoint (%1* @data_0x359 to i64)
  %123 = sext i32 %118 to i64, !mcsema_real_eip !22
  %124 = add i64 %122, %123, !mcsema_real_eip !23
  %125 = inttoptr i64 %124 to i8*
  store i8 88, i8* %125, align 1, !mcsema_real_eip !23
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_67290 = load i8*, i8** %66, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_67290, i64 -36
  %126 = bitcast i8* %_new_gep_68 to i32*
  %127 = load i32, i32* %126, align 4, !mcsema_real_eip !24
  %128 = add i32 %127, 1
  %129 = zext i32 %128 to i64, !mcsema_real_eip !25
  store i32 %128, i32* %126, align 4, !mcsema_real_eip !26
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291 = load i8*, i8** %66, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -36
  %130 = bitcast i8* %_new_gep_74 to i32*
  %131 = load i32, i32* %130, align 4, !mcsema_real_eip !27
  %132 = add i32 %131, -28
  %133 = icmp slt i32 %132, 0
  %134 = sub i32 27, %131
  %135 = and i32 %134, %131
  %136 = icmp slt i32 %135, 0
  %tmp = xor i1 %133, %136
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !28

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %.pre307 = phi i32 [ %76, %block_0x242 ], [ %114, %block_0x236 ]
  %137 = phi i32 [ %71, %block_0x242 ], [ %.pre, %block_0x236 ]
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298 = phi i8* [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, %block_0x242 ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, %block_0x236 ]
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298, i64 -32
  %138 = bitcast i8* %_new_gep_78 to i32*
  %139 = load i32, i32* %138, align 4, !mcsema_real_eip !29
  %140 = icmp eq i32 %139, %137
  br i1 %140, label %block_0x298, label %block_0x266, !mcsema_real_eip !30

block_0x22c:                                      ; preds = %block_0x1f2
  %141 = add i32 %76, -11
  %142 = icmp slt i32 %141, 0
  %143 = sub i32 10, %76
  %144 = and i32 %143, %76
  %145 = icmp slt i32 %144, 0
  %146 = xor i1 %142, %145
  br i1 %146, label %block_0x242, label %block_0x236, !mcsema_real_eip !31

block_0x291:                                      ; preds = %block_0x266
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -4
  %147 = bitcast i8* %_new_gep_92 to i32*
  store i32 1, i32* %147, align 4, !mcsema_real_eip !32
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_94292 = load i8*, i8** %66, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_94292, i64 -4
  %148 = bitcast i8* %_new_gep_95 to i32*
  %149 = load i32, i32* %148, align 4, !mcsema_real_eip !8
  %150 = zext i32 %149 to i64, !mcsema_real_eip !8
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, i64 96)
  %151 = extractvalue { i64, i1 } %uadd357, 0
  %152 = xor i64 %151, %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, !mcsema_real_eip !9
  %153 = and i64 %152, 16, !mcsema_real_eip !9
  %154 = icmp ne i64 %153, 0, !mcsema_real_eip !9
  %155 = icmp slt i64 %151, 0
  %156 = icmp eq i64 %151, 0, !mcsema_real_eip !9
  %157 = xor i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, -9223372036854775808, !mcsema_real_eip !9
  %158 = and i64 %152, %157, !mcsema_real_eip !9
  %159 = icmp slt i64 %158, 0
  %160 = trunc i64 %151 to i8, !mcsema_real_eip !9
  %161 = tail call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !9
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  %164 = extractvalue { i64, i1 } %uadd357, 1
  store volatile i64 %151, i64* %_RSP_ptr_272.sroa.0, align 8
  %165 = inttoptr i64 %151 to i64*, !mcsema_real_eip !10
  %166 = load i64, i64* %165, align 8
  store volatile i64 %166, i64* %_RBP_ptr_273.sroa.0, align 8
  %167 = add i64 %151, 16
  store volatile i64 %167, i64* %_RSP_ptr_272.sroa.0, align 8
  store i64 %150, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %123, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %129, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %167, i64* %RSP, align 8
  store volatile i64 %166, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %164, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %154, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %156, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %155, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %159, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x11e:                                      ; preds = %block_0x266
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -20
  %168 = bitcast i8* %_new_gep_106 to i32*
  %169 = load i32, i32* %168, align 4, !mcsema_real_eip !33
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -28
  %170 = bitcast i8* %_new_gep_109 to i32*
  store i32 %169, i32* %170, align 4, !mcsema_real_eip !34
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293 = load i8*, i8** %66, align 8
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293, i64 -24
  %171 = bitcast i8* %_new_gep_112 to i32*
  %172 = load i32, i32* %171, align 4, !mcsema_real_eip !35
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293, i64 -32
  %173 = bitcast i8* %_new_gep_115 to i32*
  store i32 %172, i32* %173, align 4, !mcsema_real_eip !36
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294 = load i8*, i8** %66, align 8
  %_new_gep_118 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -36
  %174 = bitcast i8* %_new_gep_118 to i32*
  %175 = load i32, i32* %174, align 4, !mcsema_real_eip !37
  %176 = sext i32 %175 to i64, !mcsema_real_eip !37
  %_new_gep_121 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -64
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_121, i64 %176
  %177 = load i8, i8* %_new_gep_122, align 1, !mcsema_real_eip !38
  %178 = sext i8 %177 to i32, !mcsema_real_eip !38
  %179 = add nsw i32 %178, -97
  %180 = zext i32 %179 to i64, !mcsema_real_eip !39
  %181 = add nsw i32 %178, -119
  %182 = xor i32 %181, %179, !mcsema_real_eip !40
  %183 = icmp eq i32 %181, 0, !mcsema_real_eip !40
  %184 = icmp ult i32 %179, 22, !mcsema_real_eip !40
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -80
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  store i64 %180, i64* %_allin_new_bt_126, align 8, !mcsema_real_eip !41
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_127295 = load i8*, i8** %66, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_127295, i64 -84
  %185 = bitcast i8* %_new_gep_128 to i32*
  store i32 %181, i32* %185, align 4, !mcsema_real_eip !42
  %.demorgan = or i1 %184, %183
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296 = load i8*, i8** %66, align 8
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !43

block_0x148:                                      ; preds = %block_0x11e
  %186 = ptrtoint i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296 to i64
  %187 = and i32 %182, %179, !mcsema_real_eip !40
  %188 = icmp slt i32 %187, 0
  %189 = icmp slt i8 %177, 119
  %190 = trunc i32 %181 to i8, !mcsema_real_eip !40
  %191 = tail call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !40
  %192 = and i8 %191, 1
  %193 = icmp eq i8 %192, 0
  %194 = and i32 %182, 16
  %195 = icmp eq i32 %194, 0
  %_new_gep_133 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296, i64 -80
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  %196 = load i64, i64* %_allin_new_bt_134, align 8, !mcsema_real_eip !44
  %197 = shl i64 %196, 3
  %198 = add i64 %197, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !45
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !45
  %200 = load i64, i64* %199, align 8, !mcsema_real_eip !45
  store i64 %196, i64* %RAX, align 8, !mcsema_real_eip !46
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !46
  store i64 %200, i64* %RCX, align 8, !mcsema_real_eip !46
  store i64 %129, i64* %RDX, align 8, !mcsema_real_eip !46
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !46
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !46
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_135281 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  store volatile i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_135281, i64* %RSP, align 8
  store volatile i64 %186, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !46
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !46
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !46
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !46
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !46
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !46
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !46
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !46
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !46
  store i1 %184, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %193, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %195, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %183, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %189, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %188, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_18e(%struct.regs*) #0 {
entry:
  %_RSP_ptr_4.sroa.0 = alloca i64, align 8
  %_RBP_ptr_5.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_6 = alloca [4 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [4 x i8], [4 x i8]* %_local_stack_start_ptr_6, i64 0, i64 4
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_4.sroa.0, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !47
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !47
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !47
  %2 = bitcast i64* %RBX to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !47
  %4 = bitcast i64* %RDX to <2 x i64>*
  %5 = load <2 x i64>, <2 x i64>* %4, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !47
  %6 = load i64, i64* %RDI, align 8, !mcsema_real_eip !47
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !47
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !47
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !47
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !47
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !47
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !47
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>, <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !47
  %15 = load i64, i64* %RIP, align 8, !mcsema_real_eip !47
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !47
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !47
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !47
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !47
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !47
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !47
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !47
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !47
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !47
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !47
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !47
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !47
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !47
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !47
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !47
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !47
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !47
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !47
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !47
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !47
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !47
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !47
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !47
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !47
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !47
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !47
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !47
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !47
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !47
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !47
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !47
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !47
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !47
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !47
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !47
  %47 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !47
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !47
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !47
  %49 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !47
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !47
  %50 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !47
  %51 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !47
  %52 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !47
  %53 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !47
  %54 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !47
  %55 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !47
  %56 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !47
  %57 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !47
  %58 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !47
  %59 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !47
  %60 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !47
  %61 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !47
  %62 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !47
  %63 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !47
  %64 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !47
  %65 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !47
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>, <2 x i64>* %66, align 8
  %68 = bitcast i64* %_RBP_ptr_5.sroa.0 to i8**
  %_RBP_ptr_5.sroa.0.0._RBP_ptr_5.sroa.0.0._load_rbp_ptr_10 = load i8*, i8** %68, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_5.sroa.0.0._RBP_ptr_5.sroa.0.0._load_rbp_ptr_10, i64 -4
  %69 = bitcast i8* %_new_gep_ to i32*
  store i32 1, i32* %69, align 4, !mcsema_real_eip !47
  %_RBP_ptr_5.sroa.0.0._RBP_ptr_5.sroa.0.0._load_rbp_ptr_111 = load i8*, i8** %68, align 8
  %_new_gep_2 = getelementptr i8, i8* %_RBP_ptr_5.sroa.0.0._RBP_ptr_5.sroa.0.0._load_rbp_ptr_111, i64 -4
  %70 = bitcast i8* %_new_gep_2 to i32*
  %71 = load i32, i32* %70, align 4, !mcsema_real_eip !8
  %72 = zext i32 %71 to i64, !mcsema_real_eip !8
  %_RSP_ptr_4.sroa.0.0._RSP_ptr_4.sroa.0.0._load_rsp_ptr_7 = load i64, i64* %_RSP_ptr_4.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_4.sroa.0.0._RSP_ptr_4.sroa.0.0._load_rsp_ptr_7, i64 96)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %_RSP_ptr_4.sroa.0.0._RSP_ptr_4.sroa.0.0._load_rsp_ptr_7, !mcsema_real_eip !9
  %75 = and i64 %74, 16, !mcsema_real_eip !9
  %76 = icmp ne i64 %75, 0, !mcsema_real_eip !9
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !9
  %79 = xor i64 %_RSP_ptr_4.sroa.0.0._RSP_ptr_4.sroa.0.0._load_rsp_ptr_7, -9223372036854775808, !mcsema_real_eip !9
  %80 = and i64 %74, %79, !mcsema_real_eip !9
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !9
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !9
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  store volatile i64 %73, i64* %_RSP_ptr_4.sroa.0, align 8
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !10
  %88 = load i64, i64* %87, align 8
  store volatile i64 %88, i64* %_RBP_ptr_5.sroa.0, align 8
  %89 = add i64 %73, 16
  store volatile i64 %89, i64* %_RSP_ptr_4.sroa.0, align 8
  store i64 %72, i64* %RAX, align 8, !mcsema_real_eip !11
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %91, align 8
  store i64 %6, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %89, i64* %RSP, align 8
  store volatile i64 %88, i64* %RBP, align 8
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %95, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !11
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !11
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_180(%struct.regs*) #0 {
entry:
  %_RSP_ptr_272.sroa.0 = alloca i64, align 8
  %_RBP_ptr_273.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_274 = alloca [84 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [84 x i8], [84 x i8]* %_local_stack_start_ptr_274, i64 0, i64 84
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_272.sroa.0, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !48
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !48
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !48
  %2 = load i64, i64* %RBX, align 8, !mcsema_real_eip !48
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !48
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !48
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !48
  %3 = load i64, i64* %RSI, align 8, !mcsema_real_eip !48
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !48
  %4 = load i64, i64* %RDI, align 8, !mcsema_real_eip !48
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !48
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !48
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !48
  %5 = load i64, i64* %R8, align 8, !mcsema_real_eip !48
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !48
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !48
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !48
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !48
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !48
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !48
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !48
  %9 = load i64, i64* %R12, align 8, !mcsema_real_eip !48
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !48
  %10 = load i64, i64* %R13, align 8, !mcsema_real_eip !48
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !48
  %11 = load i64, i64* %R14, align 8, !mcsema_real_eip !48
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !48
  %12 = load i64, i64* %R15, align 8, !mcsema_real_eip !48
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !48
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !48
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !48
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !48
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !48
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !48
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !48
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !48
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !48
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !48
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !48
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !48
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !48
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !48
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !48
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !48
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !48
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !48
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !48
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !48
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !48
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !48
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !48
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !48
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !48
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !48
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !48
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !48
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !48
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !48
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !48
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !48
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !48
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !48
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !48
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !48
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !48
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !48
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !48
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !48
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !48
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !48
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !48
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !48
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !48
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !48
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !48
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !48
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !48
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !48
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !48
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !48
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !48
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !48
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !48
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !48
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !48
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !48
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !48
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !48
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !48
  %42 = bitcast i8* %41 to i64*
  %43 = load i64, i64* %42, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !48
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !48
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !48
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !48
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !48
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !48
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !48
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !48
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !48
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !48
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !48
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !48
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !48
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !48
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !48
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !48
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !48
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !48
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !48
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !48
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !48
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !48
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !48
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !48
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !48
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !48
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !48
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !48
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !48
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !48
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !48
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !48
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !48
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !48
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !48
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !48
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !48
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !48
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !48
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !48
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !48
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !48
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !48
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !48
  %66 = bitcast i64* %_RBP_ptr_273.sroa.0 to i8**
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_286 = load i8*, i8** %66, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_286, i64 -20
  %67 = bitcast i8* %_new_gep_ to i32*
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !48
  %69 = add i32 %68, 1
  store i32 %69, i32* %67, align 4, !mcsema_real_eip !49
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287 = load i8*, i8** %66, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -24
  %70 = bitcast i8* %_new_gep_5 to i32*
  %71 = load i32, i32* %70, align 4, !mcsema_real_eip !4
  %72 = sext i32 %71 to i64, !mcsema_real_eip !4
  %73 = mul nsw i64 %72, 11, !mcsema_real_eip !5
  %74 = add i64 %73, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -20
  %75 = bitcast i8* %_new_gep_8 to i32*
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !6
  %77 = sext i32 %76 to i64, !mcsema_real_eip !6
  %78 = add i64 %74, %77, !mcsema_real_eip !7
  %79 = inttoptr i64 %78 to i8*
  %80 = load i8, i8* %79, align 1, !mcsema_real_eip !7
  %81 = sext i8 %80 to i64
  %82 = and i64 %81, 4294967295
  switch i8 %80, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %entry, %block_0x11e, %block_0x24e
  %_load_rbp_ptr_130.sink = phi i8* [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298, %block_0x24e ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296, %block_0x11e ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, %entry ]
  %RDX_val.0 = phi i64 [ %82, %block_0x24e ], [ %129, %block_0x11e ], [ %82, %entry ]
  %RCX_val.0 = phi i64 [ %77, %block_0x24e ], [ %180, %block_0x11e ], [ %77, %entry ]
  %.sink = phi i32 [ 2, %block_0x24e ], [ 1, %block_0x11e ], [ 0, %entry ]
  %_new_gep_131 = getelementptr i8, i8* %_load_rbp_ptr_130.sink, i64 -4
  %83 = bitcast i8* %_new_gep_131 to i32*
  store i32 %.sink, i32* %83, align 4
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_19297 = load i8*, i8** %66, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_19297, i64 -4
  %84 = bitcast i8* %_new_gep_20 to i32*
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !8
  %86 = zext i32 %85 to i64, !mcsema_real_eip !8
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, i64 96)
  %87 = extractvalue { i64, i1 } %uadd348, 0
  %88 = xor i64 %87, %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, !mcsema_real_eip !9
  %89 = and i64 %88, 16, !mcsema_real_eip !9
  %90 = icmp ne i64 %89, 0, !mcsema_real_eip !9
  %91 = icmp slt i64 %87, 0
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !9
  %93 = xor i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, -9223372036854775808, !mcsema_real_eip !9
  %94 = and i64 %88, %93, !mcsema_real_eip !9
  %95 = icmp slt i64 %94, 0
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !9
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !9
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  %100 = extractvalue { i64, i1 } %uadd348, 1
  store volatile i64 %87, i64* %_RSP_ptr_272.sroa.0, align 8
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !10
  %102 = load i64, i64* %101, align 8
  store volatile i64 %102, i64* %_RBP_ptr_273.sroa.0, align 8
  %103 = add i64 %87, 16
  store volatile i64 %103, i64* %_RSP_ptr_272.sroa.0, align 8
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %103, i64* %RSP, align 8
  store volatile i64 %102, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %100, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %99, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %92, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %91, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %95, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x242:                                      ; preds = %entry, %block_0x22c
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -28
  %104 = bitcast i8* %_new_gep_29 to i32*
  %105 = load i32, i32* %104, align 4, !mcsema_real_eip !12
  %106 = icmp eq i32 %105, %76
  br i1 %106, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %71, 2
  %notrhs = icmp ne i8 %80, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %107 = icmp slt i32 %76, 1
  %or.cond285 = or i1 %107, %or.cond.not
  br i1 %or.cond285, label %block_0x236, label %block_0x22c, !mcsema_real_eip !14

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -28
  %108 = bitcast i8* %_new_gep_38 to i32*
  %109 = load i32, i32* %108, align 4, !mcsema_real_eip !15
  store i32 %109, i32* %75, align 4, !mcsema_real_eip !16
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300 = load i8*, i8** %66, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300, i64 -32
  %110 = bitcast i8* %_new_gep_44 to i32*
  %111 = load i32, i32* %110, align 4, !mcsema_real_eip !17
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300, i64 -24
  %112 = bitcast i8* %_new_gep_47 to i32*
  store i32 %111, i32* %112, align 4, !mcsema_real_eip !18
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301 = load i8*, i8** %66, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -28
  %113 = bitcast i8* %_new_gep_50 to i32*
  %114 = load i32, i32* %113, align 4, !mcsema_real_eip !12
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -20
  %115 = bitcast i8* %_new_gep_53 to i32*
  %116 = load i32, i32* %115, align 4, !mcsema_real_eip !19
  %117 = icmp eq i32 %114, %116
  %_new_gep_81.phi.trans.insert = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -24
  %.phi.trans.insert = bitcast i8* %_new_gep_81.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 4
  br i1 %117, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x266:                                      ; preds = %block_0x236, %block_0x24e, %block_0x242
  %118 = phi i32 [ %76, %block_0x242 ], [ %.pre307, %block_0x24e ], [ %116, %block_0x236 ]
  %119 = phi i32 [ %71, %block_0x242 ], [ %137, %block_0x24e ], [ %.pre, %block_0x236 ]
  %120 = sext i32 %119 to i64, !mcsema_real_eip !20
  %121 = mul nsw i64 %120, 11, !mcsema_real_eip !21
  %122 = add i64 %121, ptrtoint (%1* @data_0x359 to i64)
  %123 = sext i32 %118 to i64, !mcsema_real_eip !22
  %124 = add i64 %122, %123, !mcsema_real_eip !23
  %125 = inttoptr i64 %124 to i8*
  store i8 88, i8* %125, align 1, !mcsema_real_eip !23
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_67290 = load i8*, i8** %66, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_67290, i64 -36
  %126 = bitcast i8* %_new_gep_68 to i32*
  %127 = load i32, i32* %126, align 4, !mcsema_real_eip !24
  %128 = add i32 %127, 1
  %129 = zext i32 %128 to i64, !mcsema_real_eip !25
  store i32 %128, i32* %126, align 4, !mcsema_real_eip !26
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291 = load i8*, i8** %66, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -36
  %130 = bitcast i8* %_new_gep_74 to i32*
  %131 = load i32, i32* %130, align 4, !mcsema_real_eip !27
  %132 = add i32 %131, -28
  %133 = icmp slt i32 %132, 0
  %134 = sub i32 27, %131
  %135 = and i32 %134, %131
  %136 = icmp slt i32 %135, 0
  %tmp = xor i1 %133, %136
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !28

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %.pre307 = phi i32 [ %76, %block_0x242 ], [ %114, %block_0x236 ]
  %137 = phi i32 [ %71, %block_0x242 ], [ %.pre, %block_0x236 ]
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298 = phi i8* [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, %block_0x242 ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, %block_0x236 ]
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298, i64 -32
  %138 = bitcast i8* %_new_gep_78 to i32*
  %139 = load i32, i32* %138, align 4, !mcsema_real_eip !29
  %140 = icmp eq i32 %139, %137
  br i1 %140, label %block_0x298, label %block_0x266, !mcsema_real_eip !30

block_0x22c:                                      ; preds = %block_0x1f2
  %141 = add i32 %76, -11
  %142 = icmp slt i32 %141, 0
  %143 = sub i32 10, %76
  %144 = and i32 %143, %76
  %145 = icmp slt i32 %144, 0
  %146 = xor i1 %142, %145
  br i1 %146, label %block_0x242, label %block_0x236, !mcsema_real_eip !31

block_0x291:                                      ; preds = %block_0x266
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -4
  %147 = bitcast i8* %_new_gep_92 to i32*
  store i32 1, i32* %147, align 4, !mcsema_real_eip !32
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_94292 = load i8*, i8** %66, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_94292, i64 -4
  %148 = bitcast i8* %_new_gep_95 to i32*
  %149 = load i32, i32* %148, align 4, !mcsema_real_eip !8
  %150 = zext i32 %149 to i64, !mcsema_real_eip !8
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, i64 96)
  %151 = extractvalue { i64, i1 } %uadd357, 0
  %152 = xor i64 %151, %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, !mcsema_real_eip !9
  %153 = and i64 %152, 16, !mcsema_real_eip !9
  %154 = icmp ne i64 %153, 0, !mcsema_real_eip !9
  %155 = icmp slt i64 %151, 0
  %156 = icmp eq i64 %151, 0, !mcsema_real_eip !9
  %157 = xor i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, -9223372036854775808, !mcsema_real_eip !9
  %158 = and i64 %152, %157, !mcsema_real_eip !9
  %159 = icmp slt i64 %158, 0
  %160 = trunc i64 %151 to i8, !mcsema_real_eip !9
  %161 = tail call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !9
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  %164 = extractvalue { i64, i1 } %uadd357, 1
  store volatile i64 %151, i64* %_RSP_ptr_272.sroa.0, align 8
  %165 = inttoptr i64 %151 to i64*, !mcsema_real_eip !10
  %166 = load i64, i64* %165, align 8
  store volatile i64 %166, i64* %_RBP_ptr_273.sroa.0, align 8
  %167 = add i64 %151, 16
  store volatile i64 %167, i64* %_RSP_ptr_272.sroa.0, align 8
  store i64 %150, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %123, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %129, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %167, i64* %RSP, align 8
  store volatile i64 %166, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %164, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %154, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %156, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %155, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %159, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x11e:                                      ; preds = %block_0x266
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -20
  %168 = bitcast i8* %_new_gep_106 to i32*
  %169 = load i32, i32* %168, align 4, !mcsema_real_eip !33
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -28
  %170 = bitcast i8* %_new_gep_109 to i32*
  store i32 %169, i32* %170, align 4, !mcsema_real_eip !34
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293 = load i8*, i8** %66, align 8
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293, i64 -24
  %171 = bitcast i8* %_new_gep_112 to i32*
  %172 = load i32, i32* %171, align 4, !mcsema_real_eip !35
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293, i64 -32
  %173 = bitcast i8* %_new_gep_115 to i32*
  store i32 %172, i32* %173, align 4, !mcsema_real_eip !36
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294 = load i8*, i8** %66, align 8
  %_new_gep_118 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -36
  %174 = bitcast i8* %_new_gep_118 to i32*
  %175 = load i32, i32* %174, align 4, !mcsema_real_eip !37
  %176 = sext i32 %175 to i64, !mcsema_real_eip !37
  %_new_gep_121 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -64
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_121, i64 %176
  %177 = load i8, i8* %_new_gep_122, align 1, !mcsema_real_eip !38
  %178 = sext i8 %177 to i32, !mcsema_real_eip !38
  %179 = add nsw i32 %178, -97
  %180 = zext i32 %179 to i64, !mcsema_real_eip !39
  %181 = add nsw i32 %178, -119
  %182 = xor i32 %181, %179, !mcsema_real_eip !40
  %183 = icmp eq i32 %181, 0, !mcsema_real_eip !40
  %184 = icmp ult i32 %179, 22, !mcsema_real_eip !40
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -80
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  store i64 %180, i64* %_allin_new_bt_126, align 8, !mcsema_real_eip !41
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_127295 = load i8*, i8** %66, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_127295, i64 -84
  %185 = bitcast i8* %_new_gep_128 to i32*
  store i32 %181, i32* %185, align 4, !mcsema_real_eip !42
  %.demorgan = or i1 %184, %183
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296 = load i8*, i8** %66, align 8
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !43

block_0x148:                                      ; preds = %block_0x11e
  %186 = ptrtoint i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296 to i64
  %187 = and i32 %182, %179, !mcsema_real_eip !40
  %188 = icmp slt i32 %187, 0
  %189 = icmp slt i8 %177, 119
  %190 = trunc i32 %181 to i8, !mcsema_real_eip !40
  %191 = tail call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !40
  %192 = and i8 %191, 1
  %193 = icmp eq i8 %192, 0
  %194 = and i32 %182, 16
  %195 = icmp eq i32 %194, 0
  %_new_gep_133 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296, i64 -80
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  %196 = load i64, i64* %_allin_new_bt_134, align 8, !mcsema_real_eip !44
  %197 = shl i64 %196, 3
  %198 = add i64 %197, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !45
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !45
  %200 = load i64, i64* %199, align 8, !mcsema_real_eip !45
  store i64 %196, i64* %RAX, align 8, !mcsema_real_eip !46
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !46
  store i64 %200, i64* %RCX, align 8, !mcsema_real_eip !46
  store i64 %129, i64* %RDX, align 8, !mcsema_real_eip !46
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !46
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !46
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_135281 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  store volatile i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_135281, i64* %RSP, align 8
  store volatile i64 %186, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !46
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !46
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !46
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !46
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !46
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !46
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !46
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !46
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !46
  store i1 %184, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %193, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %195, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %183, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %189, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %188, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_164(%struct.regs*) #0 {
entry:
  %_RSP_ptr_272.sroa.0 = alloca i64, align 8
  %_RBP_ptr_273.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_274 = alloca [84 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [84 x i8], [84 x i8]* %_local_stack_start_ptr_274, i64 0, i64 84
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_272.sroa.0, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !50
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !50
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !50
  %2 = load i64, i64* %RBX, align 8, !mcsema_real_eip !50
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !50
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !50
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !50
  %3 = load i64, i64* %RSI, align 8, !mcsema_real_eip !50
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !50
  %4 = load i64, i64* %RDI, align 8, !mcsema_real_eip !50
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !50
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !50
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !50
  %5 = load i64, i64* %R8, align 8, !mcsema_real_eip !50
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !50
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !50
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !50
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !50
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !50
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !50
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !50
  %9 = load i64, i64* %R12, align 8, !mcsema_real_eip !50
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !50
  %10 = load i64, i64* %R13, align 8, !mcsema_real_eip !50
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !50
  %11 = load i64, i64* %R14, align 8, !mcsema_real_eip !50
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !50
  %12 = load i64, i64* %R15, align 8, !mcsema_real_eip !50
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !50
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !50
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !50
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !50
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !50
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !50
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !50
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !50
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !50
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !50
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !50
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !50
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !50
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !50
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !50
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !50
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !50
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !50
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !50
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !50
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !50
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !50
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !50
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !50
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !50
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !50
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !50
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !50
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !50
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !50
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !50
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !50
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !50
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !50
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !50
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !50
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !50
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !50
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !50
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !50
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !50
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !50
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !50
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !50
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !50
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !50
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !50
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !50
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !50
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !50
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !50
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !50
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !50
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !50
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !50
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !50
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !50
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !50
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !50
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !50
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !50
  %42 = bitcast i8* %41 to i64*
  %43 = load i64, i64* %42, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !50
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !50
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !50
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !50
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !50
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !50
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !50
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !50
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !50
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !50
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !50
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !50
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !50
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !50
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !50
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !50
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !50
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !50
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !50
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !50
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !50
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !50
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !50
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !50
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !50
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !50
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !50
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !50
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !50
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !50
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !50
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !50
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !50
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !50
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !50
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !50
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !50
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !50
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !50
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !50
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !50
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !50
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !50
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !50
  %66 = bitcast i64* %_RBP_ptr_273.sroa.0 to i8**
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_286 = load i8*, i8** %66, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_286, i64 -24
  %67 = bitcast i8* %_new_gep_ to i32*
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !50
  %69 = add i32 %68, 1
  store i32 %69, i32* %67, align 4, !mcsema_real_eip !51
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287 = load i8*, i8** %66, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -24
  %70 = bitcast i8* %_new_gep_5 to i32*
  %71 = load i32, i32* %70, align 4, !mcsema_real_eip !4
  %72 = sext i32 %71 to i64, !mcsema_real_eip !4
  %73 = mul nsw i64 %72, 11, !mcsema_real_eip !5
  %74 = add i64 %73, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -20
  %75 = bitcast i8* %_new_gep_8 to i32*
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !6
  %77 = sext i32 %76 to i64, !mcsema_real_eip !6
  %78 = add i64 %74, %77, !mcsema_real_eip !7
  %79 = inttoptr i64 %78 to i8*
  %80 = load i8, i8* %79, align 1, !mcsema_real_eip !7
  %81 = sext i8 %80 to i64
  %82 = and i64 %81, 4294967295
  switch i8 %80, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %entry, %block_0x11e, %block_0x24e
  %_load_rbp_ptr_130.sink = phi i8* [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298, %block_0x24e ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296, %block_0x11e ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, %entry ]
  %RDX_val.0 = phi i64 [ %82, %block_0x24e ], [ %129, %block_0x11e ], [ %82, %entry ]
  %RCX_val.0 = phi i64 [ %77, %block_0x24e ], [ %180, %block_0x11e ], [ %77, %entry ]
  %.sink = phi i32 [ 2, %block_0x24e ], [ 1, %block_0x11e ], [ 0, %entry ]
  %_new_gep_131 = getelementptr i8, i8* %_load_rbp_ptr_130.sink, i64 -4
  %83 = bitcast i8* %_new_gep_131 to i32*
  store i32 %.sink, i32* %83, align 4
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_19297 = load i8*, i8** %66, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_19297, i64 -4
  %84 = bitcast i8* %_new_gep_20 to i32*
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !8
  %86 = zext i32 %85 to i64, !mcsema_real_eip !8
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, i64 96)
  %87 = extractvalue { i64, i1 } %uadd348, 0
  %88 = xor i64 %87, %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, !mcsema_real_eip !9
  %89 = and i64 %88, 16, !mcsema_real_eip !9
  %90 = icmp ne i64 %89, 0, !mcsema_real_eip !9
  %91 = icmp slt i64 %87, 0
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !9
  %93 = xor i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, -9223372036854775808, !mcsema_real_eip !9
  %94 = and i64 %88, %93, !mcsema_real_eip !9
  %95 = icmp slt i64 %94, 0
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !9
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !9
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  %100 = extractvalue { i64, i1 } %uadd348, 1
  store volatile i64 %87, i64* %_RSP_ptr_272.sroa.0, align 8
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !10
  %102 = load i64, i64* %101, align 8
  store volatile i64 %102, i64* %_RBP_ptr_273.sroa.0, align 8
  %103 = add i64 %87, 16
  store volatile i64 %103, i64* %_RSP_ptr_272.sroa.0, align 8
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %103, i64* %RSP, align 8
  store volatile i64 %102, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %100, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %99, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %92, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %91, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %95, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x242:                                      ; preds = %entry, %block_0x22c
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -28
  %104 = bitcast i8* %_new_gep_29 to i32*
  %105 = load i32, i32* %104, align 4, !mcsema_real_eip !12
  %106 = icmp eq i32 %105, %76
  br i1 %106, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %71, 2
  %notrhs = icmp ne i8 %80, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %107 = icmp slt i32 %76, 1
  %or.cond285 = or i1 %107, %or.cond.not
  br i1 %or.cond285, label %block_0x236, label %block_0x22c, !mcsema_real_eip !14

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -28
  %108 = bitcast i8* %_new_gep_38 to i32*
  %109 = load i32, i32* %108, align 4, !mcsema_real_eip !15
  store i32 %109, i32* %75, align 4, !mcsema_real_eip !16
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300 = load i8*, i8** %66, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300, i64 -32
  %110 = bitcast i8* %_new_gep_44 to i32*
  %111 = load i32, i32* %110, align 4, !mcsema_real_eip !17
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300, i64 -24
  %112 = bitcast i8* %_new_gep_47 to i32*
  store i32 %111, i32* %112, align 4, !mcsema_real_eip !18
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301 = load i8*, i8** %66, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -28
  %113 = bitcast i8* %_new_gep_50 to i32*
  %114 = load i32, i32* %113, align 4, !mcsema_real_eip !12
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -20
  %115 = bitcast i8* %_new_gep_53 to i32*
  %116 = load i32, i32* %115, align 4, !mcsema_real_eip !19
  %117 = icmp eq i32 %114, %116
  %_new_gep_81.phi.trans.insert = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -24
  %.phi.trans.insert = bitcast i8* %_new_gep_81.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 4
  br i1 %117, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x266:                                      ; preds = %block_0x236, %block_0x24e, %block_0x242
  %118 = phi i32 [ %76, %block_0x242 ], [ %.pre307, %block_0x24e ], [ %116, %block_0x236 ]
  %119 = phi i32 [ %71, %block_0x242 ], [ %137, %block_0x24e ], [ %.pre, %block_0x236 ]
  %120 = sext i32 %119 to i64, !mcsema_real_eip !20
  %121 = mul nsw i64 %120, 11, !mcsema_real_eip !21
  %122 = add i64 %121, ptrtoint (%1* @data_0x359 to i64)
  %123 = sext i32 %118 to i64, !mcsema_real_eip !22
  %124 = add i64 %122, %123, !mcsema_real_eip !23
  %125 = inttoptr i64 %124 to i8*
  store i8 88, i8* %125, align 1, !mcsema_real_eip !23
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_67290 = load i8*, i8** %66, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_67290, i64 -36
  %126 = bitcast i8* %_new_gep_68 to i32*
  %127 = load i32, i32* %126, align 4, !mcsema_real_eip !24
  %128 = add i32 %127, 1
  %129 = zext i32 %128 to i64, !mcsema_real_eip !25
  store i32 %128, i32* %126, align 4, !mcsema_real_eip !26
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291 = load i8*, i8** %66, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -36
  %130 = bitcast i8* %_new_gep_74 to i32*
  %131 = load i32, i32* %130, align 4, !mcsema_real_eip !27
  %132 = add i32 %131, -28
  %133 = icmp slt i32 %132, 0
  %134 = sub i32 27, %131
  %135 = and i32 %134, %131
  %136 = icmp slt i32 %135, 0
  %tmp = xor i1 %133, %136
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !28

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %.pre307 = phi i32 [ %76, %block_0x242 ], [ %114, %block_0x236 ]
  %137 = phi i32 [ %71, %block_0x242 ], [ %.pre, %block_0x236 ]
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298 = phi i8* [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, %block_0x242 ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, %block_0x236 ]
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298, i64 -32
  %138 = bitcast i8* %_new_gep_78 to i32*
  %139 = load i32, i32* %138, align 4, !mcsema_real_eip !29
  %140 = icmp eq i32 %139, %137
  br i1 %140, label %block_0x298, label %block_0x266, !mcsema_real_eip !30

block_0x22c:                                      ; preds = %block_0x1f2
  %141 = add i32 %76, -11
  %142 = icmp slt i32 %141, 0
  %143 = sub i32 10, %76
  %144 = and i32 %143, %76
  %145 = icmp slt i32 %144, 0
  %146 = xor i1 %142, %145
  br i1 %146, label %block_0x242, label %block_0x236, !mcsema_real_eip !31

block_0x291:                                      ; preds = %block_0x266
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -4
  %147 = bitcast i8* %_new_gep_92 to i32*
  store i32 1, i32* %147, align 4, !mcsema_real_eip !32
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_94292 = load i8*, i8** %66, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_94292, i64 -4
  %148 = bitcast i8* %_new_gep_95 to i32*
  %149 = load i32, i32* %148, align 4, !mcsema_real_eip !8
  %150 = zext i32 %149 to i64, !mcsema_real_eip !8
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, i64 96)
  %151 = extractvalue { i64, i1 } %uadd357, 0
  %152 = xor i64 %151, %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, !mcsema_real_eip !9
  %153 = and i64 %152, 16, !mcsema_real_eip !9
  %154 = icmp ne i64 %153, 0, !mcsema_real_eip !9
  %155 = icmp slt i64 %151, 0
  %156 = icmp eq i64 %151, 0, !mcsema_real_eip !9
  %157 = xor i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, -9223372036854775808, !mcsema_real_eip !9
  %158 = and i64 %152, %157, !mcsema_real_eip !9
  %159 = icmp slt i64 %158, 0
  %160 = trunc i64 %151 to i8, !mcsema_real_eip !9
  %161 = tail call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !9
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  %164 = extractvalue { i64, i1 } %uadd357, 1
  store volatile i64 %151, i64* %_RSP_ptr_272.sroa.0, align 8
  %165 = inttoptr i64 %151 to i64*, !mcsema_real_eip !10
  %166 = load i64, i64* %165, align 8
  store volatile i64 %166, i64* %_RBP_ptr_273.sroa.0, align 8
  %167 = add i64 %151, 16
  store volatile i64 %167, i64* %_RSP_ptr_272.sroa.0, align 8
  store i64 %150, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %123, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %129, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %167, i64* %RSP, align 8
  store volatile i64 %166, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %164, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %154, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %156, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %155, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %159, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x11e:                                      ; preds = %block_0x266
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -20
  %168 = bitcast i8* %_new_gep_106 to i32*
  %169 = load i32, i32* %168, align 4, !mcsema_real_eip !33
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -28
  %170 = bitcast i8* %_new_gep_109 to i32*
  store i32 %169, i32* %170, align 4, !mcsema_real_eip !34
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293 = load i8*, i8** %66, align 8
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293, i64 -24
  %171 = bitcast i8* %_new_gep_112 to i32*
  %172 = load i32, i32* %171, align 4, !mcsema_real_eip !35
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293, i64 -32
  %173 = bitcast i8* %_new_gep_115 to i32*
  store i32 %172, i32* %173, align 4, !mcsema_real_eip !36
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294 = load i8*, i8** %66, align 8
  %_new_gep_118 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -36
  %174 = bitcast i8* %_new_gep_118 to i32*
  %175 = load i32, i32* %174, align 4, !mcsema_real_eip !37
  %176 = sext i32 %175 to i64, !mcsema_real_eip !37
  %_new_gep_121 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -64
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_121, i64 %176
  %177 = load i8, i8* %_new_gep_122, align 1, !mcsema_real_eip !38
  %178 = sext i8 %177 to i32, !mcsema_real_eip !38
  %179 = add nsw i32 %178, -97
  %180 = zext i32 %179 to i64, !mcsema_real_eip !39
  %181 = add nsw i32 %178, -119
  %182 = xor i32 %181, %179, !mcsema_real_eip !40
  %183 = icmp eq i32 %181, 0, !mcsema_real_eip !40
  %184 = icmp ult i32 %179, 22, !mcsema_real_eip !40
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -80
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  store i64 %180, i64* %_allin_new_bt_126, align 8, !mcsema_real_eip !41
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_127295 = load i8*, i8** %66, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_127295, i64 -84
  %185 = bitcast i8* %_new_gep_128 to i32*
  store i32 %181, i32* %185, align 4, !mcsema_real_eip !42
  %.demorgan = or i1 %184, %183
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296 = load i8*, i8** %66, align 8
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !43

block_0x148:                                      ; preds = %block_0x11e
  %186 = ptrtoint i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296 to i64
  %187 = and i32 %182, %179, !mcsema_real_eip !40
  %188 = icmp slt i32 %187, 0
  %189 = icmp slt i8 %177, 119
  %190 = trunc i32 %181 to i8, !mcsema_real_eip !40
  %191 = tail call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !40
  %192 = and i8 %191, 1
  %193 = icmp eq i8 %192, 0
  %194 = and i32 %182, 16
  %195 = icmp eq i32 %194, 0
  %_new_gep_133 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296, i64 -80
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  %196 = load i64, i64* %_allin_new_bt_134, align 8, !mcsema_real_eip !44
  %197 = shl i64 %196, 3
  %198 = add i64 %197, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !45
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !45
  %200 = load i64, i64* %199, align 8, !mcsema_real_eip !45
  store i64 %196, i64* %RAX, align 8, !mcsema_real_eip !46
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !46
  store i64 %200, i64* %RCX, align 8, !mcsema_real_eip !46
  store i64 %129, i64* %RDX, align 8, !mcsema_real_eip !46
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !46
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !46
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_135281 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  store volatile i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_135281, i64* %RSP, align 8
  store volatile i64 %186, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !46
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !46
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !46
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !46
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !46
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !46
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !46
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !46
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !46
  store i1 %184, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %193, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %195, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %183, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %189, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %188, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_156(%struct.regs*) #0 {
entry:
  %_RSP_ptr_272.sroa.0 = alloca i64, align 8
  %_RBP_ptr_273.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_274 = alloca [84 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [84 x i8], [84 x i8]* %_local_stack_start_ptr_274, i64 0, i64 84
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_272.sroa.0, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !52
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !52
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !52
  %2 = load i64, i64* %RBX, align 8, !mcsema_real_eip !52
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !52
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !52
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !52
  %3 = load i64, i64* %RSI, align 8, !mcsema_real_eip !52
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !52
  %4 = load i64, i64* %RDI, align 8, !mcsema_real_eip !52
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !52
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !52
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !52
  %5 = load i64, i64* %R8, align 8, !mcsema_real_eip !52
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !52
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !52
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !52
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !52
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !52
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !52
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !52
  %9 = load i64, i64* %R12, align 8, !mcsema_real_eip !52
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !52
  %10 = load i64, i64* %R13, align 8, !mcsema_real_eip !52
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !52
  %11 = load i64, i64* %R14, align 8, !mcsema_real_eip !52
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !52
  %12 = load i64, i64* %R15, align 8, !mcsema_real_eip !52
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !52
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !52
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !52
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !52
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !52
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !52
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !52
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !52
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !52
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !52
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !52
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !52
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !52
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !52
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !52
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !52
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !52
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !52
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !52
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !52
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !52
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !52
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !52
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !52
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !52
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !52
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !52
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !52
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !52
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !52
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !52
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !52
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !52
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !52
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !52
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !52
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !52
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !52
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !52
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !52
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !52
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !52
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !52
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !52
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !52
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !52
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !52
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !52
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !52
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !52
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !52
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !52
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !52
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !52
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !52
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !52
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !52
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !52
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !52
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !52
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !52
  %42 = bitcast i8* %41 to i64*
  %43 = load i64, i64* %42, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !52
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !52
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !52
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !52
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !52
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !52
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !52
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !52
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !52
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !52
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !52
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !52
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !52
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !52
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !52
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !52
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !52
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !52
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !52
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !52
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !52
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !52
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !52
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !52
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !52
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !52
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !52
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !52
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !52
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !52
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !52
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !52
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !52
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !52
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !52
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !52
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !52
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !52
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !52
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !52
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !52
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !52
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !52
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !52
  %66 = bitcast i64* %_RBP_ptr_273.sroa.0 to i8**
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_286 = load i8*, i8** %66, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_286, i64 -24
  %67 = bitcast i8* %_new_gep_ to i32*
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !52
  %69 = add i32 %68, -1
  store i32 %69, i32* %67, align 4, !mcsema_real_eip !53
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287 = load i8*, i8** %66, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -24
  %70 = bitcast i8* %_new_gep_5 to i32*
  %71 = load i32, i32* %70, align 4, !mcsema_real_eip !4
  %72 = sext i32 %71 to i64, !mcsema_real_eip !4
  %73 = mul nsw i64 %72, 11, !mcsema_real_eip !5
  %74 = add i64 %73, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -20
  %75 = bitcast i8* %_new_gep_8 to i32*
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !6
  %77 = sext i32 %76 to i64, !mcsema_real_eip !6
  %78 = add i64 %74, %77, !mcsema_real_eip !7
  %79 = inttoptr i64 %78 to i8*
  %80 = load i8, i8* %79, align 1, !mcsema_real_eip !7
  %81 = sext i8 %80 to i64
  %82 = and i64 %81, 4294967295
  switch i8 %80, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %entry, %block_0x11e, %block_0x24e
  %_load_rbp_ptr_130.sink = phi i8* [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298, %block_0x24e ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296, %block_0x11e ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, %entry ]
  %RDX_val.0 = phi i64 [ %82, %block_0x24e ], [ %129, %block_0x11e ], [ %82, %entry ]
  %RCX_val.0 = phi i64 [ %77, %block_0x24e ], [ %180, %block_0x11e ], [ %77, %entry ]
  %.sink = phi i32 [ 2, %block_0x24e ], [ 1, %block_0x11e ], [ 0, %entry ]
  %_new_gep_131 = getelementptr i8, i8* %_load_rbp_ptr_130.sink, i64 -4
  %83 = bitcast i8* %_new_gep_131 to i32*
  store i32 %.sink, i32* %83, align 4
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_19297 = load i8*, i8** %66, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_19297, i64 -4
  %84 = bitcast i8* %_new_gep_20 to i32*
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !8
  %86 = zext i32 %85 to i64, !mcsema_real_eip !8
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, i64 96)
  %87 = extractvalue { i64, i1 } %uadd348, 0
  %88 = xor i64 %87, %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, !mcsema_real_eip !9
  %89 = and i64 %88, 16, !mcsema_real_eip !9
  %90 = icmp ne i64 %89, 0, !mcsema_real_eip !9
  %91 = icmp slt i64 %87, 0
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !9
  %93 = xor i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_278, -9223372036854775808, !mcsema_real_eip !9
  %94 = and i64 %88, %93, !mcsema_real_eip !9
  %95 = icmp slt i64 %94, 0
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !9
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !9
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  %100 = extractvalue { i64, i1 } %uadd348, 1
  store volatile i64 %87, i64* %_RSP_ptr_272.sroa.0, align 8
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !10
  %102 = load i64, i64* %101, align 8
  store volatile i64 %102, i64* %_RBP_ptr_273.sroa.0, align 8
  %103 = add i64 %87, 16
  store volatile i64 %103, i64* %_RSP_ptr_272.sroa.0, align 8
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %103, i64* %RSP, align 8
  store volatile i64 %102, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %100, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %99, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %92, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %91, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %95, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x242:                                      ; preds = %entry, %block_0x22c
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -28
  %104 = bitcast i8* %_new_gep_29 to i32*
  %105 = load i32, i32* %104, align 4, !mcsema_real_eip !12
  %106 = icmp eq i32 %105, %76
  br i1 %106, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %71, 2
  %notrhs = icmp ne i8 %80, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %107 = icmp slt i32 %76, 1
  %or.cond285 = or i1 %107, %or.cond.not
  br i1 %or.cond285, label %block_0x236, label %block_0x22c, !mcsema_real_eip !14

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, i64 -28
  %108 = bitcast i8* %_new_gep_38 to i32*
  %109 = load i32, i32* %108, align 4, !mcsema_real_eip !15
  store i32 %109, i32* %75, align 4, !mcsema_real_eip !16
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300 = load i8*, i8** %66, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300, i64 -32
  %110 = bitcast i8* %_new_gep_44 to i32*
  %111 = load i32, i32* %110, align 4, !mcsema_real_eip !17
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_43300, i64 -24
  %112 = bitcast i8* %_new_gep_47 to i32*
  store i32 %111, i32* %112, align 4, !mcsema_real_eip !18
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301 = load i8*, i8** %66, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -28
  %113 = bitcast i8* %_new_gep_50 to i32*
  %114 = load i32, i32* %113, align 4, !mcsema_real_eip !12
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -20
  %115 = bitcast i8* %_new_gep_53 to i32*
  %116 = load i32, i32* %115, align 4, !mcsema_real_eip !19
  %117 = icmp eq i32 %114, %116
  %_new_gep_81.phi.trans.insert = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, i64 -24
  %.phi.trans.insert = bitcast i8* %_new_gep_81.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 4
  br i1 %117, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x266:                                      ; preds = %block_0x236, %block_0x24e, %block_0x242
  %118 = phi i32 [ %76, %block_0x242 ], [ %.pre307, %block_0x24e ], [ %116, %block_0x236 ]
  %119 = phi i32 [ %71, %block_0x242 ], [ %137, %block_0x24e ], [ %.pre, %block_0x236 ]
  %120 = sext i32 %119 to i64, !mcsema_real_eip !20
  %121 = mul nsw i64 %120, 11, !mcsema_real_eip !21
  %122 = add i64 %121, ptrtoint (%1* @data_0x359 to i64)
  %123 = sext i32 %118 to i64, !mcsema_real_eip !22
  %124 = add i64 %122, %123, !mcsema_real_eip !23
  %125 = inttoptr i64 %124 to i8*
  store i8 88, i8* %125, align 1, !mcsema_real_eip !23
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_67290 = load i8*, i8** %66, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_67290, i64 -36
  %126 = bitcast i8* %_new_gep_68 to i32*
  %127 = load i32, i32* %126, align 4, !mcsema_real_eip !24
  %128 = add i32 %127, 1
  %129 = zext i32 %128 to i64, !mcsema_real_eip !25
  store i32 %128, i32* %126, align 4, !mcsema_real_eip !26
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291 = load i8*, i8** %66, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -36
  %130 = bitcast i8* %_new_gep_74 to i32*
  %131 = load i32, i32* %130, align 4, !mcsema_real_eip !27
  %132 = add i32 %131, -28
  %133 = icmp slt i32 %132, 0
  %134 = sub i32 27, %131
  %135 = and i32 %134, %131
  %136 = icmp slt i32 %135, 0
  %tmp = xor i1 %133, %136
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !28

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %.pre307 = phi i32 [ %76, %block_0x242 ], [ %114, %block_0x236 ]
  %137 = phi i32 [ %71, %block_0x242 ], [ %.pre, %block_0x236 ]
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298 = phi i8* [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_4287, %block_0x242 ], [ %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_49301, %block_0x236 ]
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_77298, i64 -32
  %138 = bitcast i8* %_new_gep_78 to i32*
  %139 = load i32, i32* %138, align 4, !mcsema_real_eip !29
  %140 = icmp eq i32 %139, %137
  br i1 %140, label %block_0x298, label %block_0x266, !mcsema_real_eip !30

block_0x22c:                                      ; preds = %block_0x1f2
  %141 = add i32 %76, -11
  %142 = icmp slt i32 %141, 0
  %143 = sub i32 10, %76
  %144 = and i32 %143, %76
  %145 = icmp slt i32 %144, 0
  %146 = xor i1 %142, %145
  br i1 %146, label %block_0x242, label %block_0x236, !mcsema_real_eip !31

block_0x291:                                      ; preds = %block_0x266
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -4
  %147 = bitcast i8* %_new_gep_92 to i32*
  store i32 1, i32* %147, align 4, !mcsema_real_eip !32
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_94292 = load i8*, i8** %66, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_94292, i64 -4
  %148 = bitcast i8* %_new_gep_95 to i32*
  %149 = load i32, i32* %148, align 4, !mcsema_real_eip !8
  %150 = zext i32 %149 to i64, !mcsema_real_eip !8
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, i64 96)
  %151 = extractvalue { i64, i1 } %uadd357, 0
  %152 = xor i64 %151, %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, !mcsema_real_eip !9
  %153 = and i64 %152, 16, !mcsema_real_eip !9
  %154 = icmp ne i64 %153, 0, !mcsema_real_eip !9
  %155 = icmp slt i64 %151, 0
  %156 = icmp eq i64 %151, 0, !mcsema_real_eip !9
  %157 = xor i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_97275, -9223372036854775808, !mcsema_real_eip !9
  %158 = and i64 %152, %157, !mcsema_real_eip !9
  %159 = icmp slt i64 %158, 0
  %160 = trunc i64 %151 to i8, !mcsema_real_eip !9
  %161 = tail call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !9
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  %164 = extractvalue { i64, i1 } %uadd357, 1
  store volatile i64 %151, i64* %_RSP_ptr_272.sroa.0, align 8
  %165 = inttoptr i64 %151 to i64*, !mcsema_real_eip !10
  %166 = load i64, i64* %165, align 8
  store volatile i64 %166, i64* %_RBP_ptr_273.sroa.0, align 8
  %167 = add i64 %151, 16
  store volatile i64 %167, i64* %_RSP_ptr_272.sroa.0, align 8
  store i64 %150, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %123, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %129, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %167, i64* %RSP, align 8
  store volatile i64 %166, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %164, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %154, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %156, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %155, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %159, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x11e:                                      ; preds = %block_0x266
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -20
  %168 = bitcast i8* %_new_gep_106 to i32*
  %169 = load i32, i32* %168, align 4, !mcsema_real_eip !33
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_73291, i64 -28
  %170 = bitcast i8* %_new_gep_109 to i32*
  store i32 %169, i32* %170, align 4, !mcsema_real_eip !34
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293 = load i8*, i8** %66, align 8
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293, i64 -24
  %171 = bitcast i8* %_new_gep_112 to i32*
  %172 = load i32, i32* %171, align 4, !mcsema_real_eip !35
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_111293, i64 -32
  %173 = bitcast i8* %_new_gep_115 to i32*
  store i32 %172, i32* %173, align 4, !mcsema_real_eip !36
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294 = load i8*, i8** %66, align 8
  %_new_gep_118 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -36
  %174 = bitcast i8* %_new_gep_118 to i32*
  %175 = load i32, i32* %174, align 4, !mcsema_real_eip !37
  %176 = sext i32 %175 to i64, !mcsema_real_eip !37
  %_new_gep_121 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -64
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_121, i64 %176
  %177 = load i8, i8* %_new_gep_122, align 1, !mcsema_real_eip !38
  %178 = sext i8 %177 to i32, !mcsema_real_eip !38
  %179 = add nsw i32 %178, -97
  %180 = zext i32 %179 to i64, !mcsema_real_eip !39
  %181 = add nsw i32 %178, -119
  %182 = xor i32 %181, %179, !mcsema_real_eip !40
  %183 = icmp eq i32 %181, 0, !mcsema_real_eip !40
  %184 = icmp ult i32 %179, 22, !mcsema_real_eip !40
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_117294, i64 -80
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  store i64 %180, i64* %_allin_new_bt_126, align 8, !mcsema_real_eip !41
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_127295 = load i8*, i8** %66, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_127295, i64 -84
  %185 = bitcast i8* %_new_gep_128 to i32*
  store i32 %181, i32* %185, align 4, !mcsema_real_eip !42
  %.demorgan = or i1 %184, %183
  %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296 = load i8*, i8** %66, align 8
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !43

block_0x148:                                      ; preds = %block_0x11e
  %186 = ptrtoint i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296 to i64
  %187 = and i32 %182, %179, !mcsema_real_eip !40
  %188 = icmp slt i32 %187, 0
  %189 = icmp slt i8 %177, 119
  %190 = trunc i32 %181 to i8, !mcsema_real_eip !40
  %191 = tail call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !40
  %192 = and i8 %191, 1
  %193 = icmp eq i8 %192, 0
  %194 = and i32 %182, 16
  %195 = icmp eq i32 %194, 0
  %_new_gep_133 = getelementptr i8, i8* %_RBP_ptr_273.sroa.0.0._RBP_ptr_273.sroa.0.0._load_rbp_ptr_130296, i64 -80
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  %196 = load i64, i64* %_allin_new_bt_134, align 8, !mcsema_real_eip !44
  %197 = shl i64 %196, 3
  %198 = add i64 %197, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !45
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !45
  %200 = load i64, i64* %199, align 8, !mcsema_real_eip !45
  store i64 %196, i64* %RAX, align 8, !mcsema_real_eip !46
  store i64 %2, i64* %RBX, align 8, !mcsema_real_eip !46
  store i64 %200, i64* %RCX, align 8, !mcsema_real_eip !46
  store i64 %129, i64* %RDX, align 8, !mcsema_real_eip !46
  store i64 %3, i64* %RSI, align 8, !mcsema_real_eip !46
  store i64 %4, i64* %RDI, align 8, !mcsema_real_eip !46
  %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_135281 = load i64, i64* %_RSP_ptr_272.sroa.0, align 8
  store volatile i64 %_RSP_ptr_272.sroa.0.0._RSP_ptr_272.sroa.0.0._load_rsp_ptr_135281, i64* %RSP, align 8
  store volatile i64 %186, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !46
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !46
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !46
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !46
  store i64 %9, i64* %R12, align 8, !mcsema_real_eip !46
  store i64 %10, i64* %R13, align 8, !mcsema_real_eip !46
  store i64 %11, i64* %R14, align 8, !mcsema_real_eip !46
  store i64 %12, i64* %R15, align 8, !mcsema_real_eip !46
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !46
  store i1 %184, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %193, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %195, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %183, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %189, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %188, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  call void @llvm.trap()
  unreachable
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_RSP_ptr_247.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_248.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_249.i = alloca [104 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !54
  %_RSP_ptr_247.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_247.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_247.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_248.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_248.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_248.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_249.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 104, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_249.i, i64 0, i64 104
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_247.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !54
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !54
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !54
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !54
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !54
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !54
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !54
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !54
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !54
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !54
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !54
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !54
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !54
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !54
  %6 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !54
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !54
  %7 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !54
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !54
  %8 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !54
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !54
  %9 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !54
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !54
  %10 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !54
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !54
  %11 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !54
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !54
  %12 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !54
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !54
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !54
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !54
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !54
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !54
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !54
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !54
  %13 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !54
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !54
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !54
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !54
  %16 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !54
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !54
  %17 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !54
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !54
  %18 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !54
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !54
  %19 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !54
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !54
  %20 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !54
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !54
  %21 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !54
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !54
  %22 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !54
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !54
  %23 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !54
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !54
  %24 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !54
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !54
  %25 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !54
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !54
  %26 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !54
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !54
  %27 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !54
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !54
  %28 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !54
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !54
  %29 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !54
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !54
  %30 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !54
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !54
  %31 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !54
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !54
  %32 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !54
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !54
  %33 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !54
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !54
  %34 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !54
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !54
  %35 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !54
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !54
  %36 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !54
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !54
  %37 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !54
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !54
  %38 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !54
  %39 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !54
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !54
  %42 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !54
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !54
  %43 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !54
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !54
  %44 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !54
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !54
  %45 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !54
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !54
  %46 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !54
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !54
  %47 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !54
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !54
  %48 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !54
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !54
  %49 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !54
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !54
  %50 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !54
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !54
  %51 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !54
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !54
  %52 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !54
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !54
  %53 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !54
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !54
  %54 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !54
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !54
  %55 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !54
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !54
  %56 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !54
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !54
  %57 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !54
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !54
  %58 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !54
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !54
  %59 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !54
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !54
  %60 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !54
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !54
  %61 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !54
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !54
  %62 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !54
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !54
  %63 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !54
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_250.i = load i64, i64* %_RBP_ptr_248.sroa.0.i, align 8
  %64 = bitcast i64* %_RSP_ptr_247.sroa.0.i to i8**
  %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_261.i7 = load i8*, i8** %64, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_261.i7, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_250.i, i64* %_allin_new_bt_.i, align 8
  %65 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %65, i64* %_RBP_ptr_248.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_261.i7, i64 -104
  %66 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %66, i64* %_RSP_ptr_247.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_261.i7, i64 -72
  %67 = ptrtoint i8* %_new_gep_3.i to i64
  %_new_gep_5.i = getelementptr i8, i8* %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_261.i7, i64 -12
  %68 = bitcast i8* %_new_gep_5.i to i32*
  store i32 0, i32* %68, align 4, !mcsema_real_eip !55
  %69 = bitcast i64* %_RBP_ptr_248.sroa.0.i to i8**
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_7262.i8 = load i8*, i8** %69, align 8
  %_new_gep_8.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_7262.i8, i64 -8
  %70 = trunc i64 %5 to i32, !mcsema_real_eip !56
  %71 = bitcast i8* %_new_gep_8.i to i32*
  store i32 %70, i32* %71, align 4, !mcsema_real_eip !56
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_10263.i9 = load i8*, i8** %69, align 8
  %_new_gep_11.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_10263.i9, i64 -16
  %_allin_new_bt_12.i = bitcast i8* %_new_gep_11.i to i64*
  store i64 %4, i64* %_allin_new_bt_12.i, align 8, !mcsema_real_eip !57
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_13264.i10 = load i8*, i8** %69, align 8
  %_new_gep_14.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_13264.i10, i64 -36
  %72 = bitcast i8* %_new_gep_14.i to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !58
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_16265.i11 = load i8*, i8** %69, align 8
  %_new_gep_17.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_16265.i11, i64 -20
  %73 = bitcast i8* %_new_gep_17.i to i32*
  store i32 1, i32* %73, align 4, !mcsema_real_eip !59
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_19266.i12 = load i8*, i8** %69, align 8
  %_new_gep_20.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_19266.i12, i64 -24
  %74 = bitcast i8* %_new_gep_20.i to i32*
  store i32 1, i32* %74, align 4, !mcsema_real_eip !60
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_22267.i13 = load i8*, i8** %69, align 8
  %_new_gep_23.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_22267.i13, i64 -24
  %75 = bitcast i8* %_new_gep_23.i to i32*
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !61
  %77 = sext i32 %76 to i64, !mcsema_real_eip !61
  %78 = mul nsw i64 %77, 11, !mcsema_real_eip !62
  %79 = add i64 %78, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_26.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_22267.i13, i64 -20
  %80 = bitcast i8* %_new_gep_26.i to i32*
  %81 = load i32, i32* %80, align 4, !mcsema_real_eip !63
  %82 = sext i32 %81 to i64, !mcsema_real_eip !63
  %83 = add i64 %79, %82, !mcsema_real_eip !64
  %84 = inttoptr i64 %83 to i8*
  store i8 88, i8* %84, align 1, !mcsema_real_eip !64
  %85 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %67, i64 28), !mcsema_real_eip !65
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_28268.i14 = load i8*, i8** %69, align 8
  %_new_gep_29.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_28268.i14, i64 -72
  %_allin_new_bt_30.i = bitcast i8* %_new_gep_29.i to i64*
  store i64 %85, i64* %_allin_new_bt_30.i, align 8, !mcsema_real_eip !66
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_31269.i15 = load i8*, i8** %69, align 8
  %_new_gep_32.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_31269.i15, i64 -36
  %86 = bitcast i8* %_new_gep_32.i to i32*
  %87 = load i32, i32* %86, align 4, !mcsema_real_eip !27
  %88 = add i32 %87, -28
  %89 = icmp slt i32 %88, 0
  %90 = sub i32 27, %87
  %91 = and i32 %90, %87
  %92 = icmp slt i32 %91, 0
  %tmp.i = xor i1 %89, %92
  br i1 %tmp.i, label %block_0x11e.i, label %block_0x291.i, !mcsema_real_eip !28

block_0x291.i:                                    ; preds = %driverBlockRaw
  %_new_gep_35.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_31269.i15, i64 -4
  %93 = bitcast i8* %_new_gep_35.i to i32*
  store i32 1, i32* %93, align 4, !mcsema_real_eip !32
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_37270.i16 = load i8*, i8** %69, align 8
  %_new_gep_38.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_37270.i16, i64 -4
  %94 = bitcast i8* %_new_gep_38.i to i32*
  %95 = load i32, i32* %94, align 4, !mcsema_real_eip !8
  %96 = zext i32 %95 to i64, !mcsema_real_eip !8
  %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_40251.i = load i64, i64* %_RSP_ptr_247.sroa.0.i, align 8
  %uadd351.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_40251.i, i64 96)
  %97 = extractvalue { i64, i1 } %uadd351.i, 0
  %98 = xor i64 %97, %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_40251.i, !mcsema_real_eip !9
  %99 = and i64 %98, 16, !mcsema_real_eip !9
  %100 = icmp ne i64 %99, 0, !mcsema_real_eip !9
  %101 = icmp slt i64 %97, 0
  %102 = icmp eq i64 %97, 0, !mcsema_real_eip !9
  %103 = xor i64 %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_40251.i, -9223372036854775808, !mcsema_real_eip !9
  %104 = and i64 %98, %103, !mcsema_real_eip !9
  %105 = icmp slt i64 %104, 0
  %106 = trunc i64 %97 to i8, !mcsema_real_eip !9
  %107 = tail call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !9
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  %110 = extractvalue { i64, i1 } %uadd351.i, 1
  store volatile i64 %97, i64* %_RSP_ptr_247.sroa.0.i, align 8
  %111 = inttoptr i64 %97 to i64*, !mcsema_real_eip !10
  %112 = load i64, i64* %111, align 8
  store volatile i64 %112, i64* %_RBP_ptr_248.sroa.0.i, align 8
  %113 = add i64 %97, 16
  store volatile i64 %113, i64* %_RSP_ptr_247.sroa.0.i, align 8
  store i64 %96, i64* %RAX.i, align 8, !mcsema_real_eip !11
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !11
  %114 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 28, i64 28>, <2 x i64>* %114, align 8
  store i64 %67, i64* %RSI.i, align 8, !mcsema_real_eip !11
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !11
  store volatile i64 %113, i64* %RSP.i, align 8
  store volatile i64 %112, i64* %RBP.i, align 8
  store i64 %67, i64* %R8.i, align 8, !mcsema_real_eip !11
  store i64 %79, i64* %R9.i, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !11
  store i1 %110, i1* %CF.i, align 1, !mcsema_real_eip !11
  store i1 %109, i1* %PF.i, align 1, !mcsema_real_eip !11
  store i1 %100, i1* %AF.i, align 1, !mcsema_real_eip !11
  store i1 %102, i1* %ZF.i, align 1, !mcsema_real_eip !11
  store i1 %101, i1* %SF.i, align 1, !mcsema_real_eip !11
  store i1 %105, i1* %OF.i, align 1, !mcsema_real_eip !11
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !11
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !11
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !11
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !11
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !11
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !11
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !11
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !11
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_247.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_248.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 104, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_b0.exit

block_0x11e.i:                                    ; preds = %driverBlockRaw
  %_new_gep_48.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_31269.i15, i64 -20
  %115 = bitcast i8* %_new_gep_48.i to i32*
  %116 = load i32, i32* %115, align 4, !mcsema_real_eip !33
  %_new_gep_51.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_31269.i15, i64 -28
  %117 = bitcast i8* %_new_gep_51.i to i32*
  store i32 %116, i32* %117, align 4, !mcsema_real_eip !34
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_53271.i17 = load i8*, i8** %69, align 8
  %_new_gep_54.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_53271.i17, i64 -24
  %118 = bitcast i8* %_new_gep_54.i to i32*
  %119 = load i32, i32* %118, align 4, !mcsema_real_eip !35
  %_new_gep_57.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_53271.i17, i64 -32
  %120 = bitcast i8* %_new_gep_57.i to i32*
  store i32 %119, i32* %120, align 4, !mcsema_real_eip !36
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_59272.i18 = load i8*, i8** %69, align 8
  %_new_gep_60.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_59272.i18, i64 -36
  %121 = bitcast i8* %_new_gep_60.i to i32*
  %122 = load i32, i32* %121, align 4, !mcsema_real_eip !37
  %123 = sext i32 %122 to i64, !mcsema_real_eip !37
  %_new_gep_63.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_59272.i18, i64 -64
  %_new_gep_64.i = getelementptr i8, i8* %_new_gep_63.i, i64 %123
  %124 = load i8, i8* %_new_gep_64.i, align 1, !mcsema_real_eip !38
  %125 = sext i8 %124 to i32, !mcsema_real_eip !38
  %126 = add nsw i32 %125, -97
  %127 = zext i32 %126 to i64, !mcsema_real_eip !39
  %128 = add nsw i32 %125, -119
  %129 = xor i32 %128, %126, !mcsema_real_eip !40
  %130 = icmp eq i32 %128, 0, !mcsema_real_eip !40
  %131 = icmp ult i32 %126, 22, !mcsema_real_eip !40
  %_new_gep_67.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_59272.i18, i64 -80
  %_allin_new_bt_68.i = bitcast i8* %_new_gep_67.i to i64*
  store i64 %127, i64* %_allin_new_bt_68.i, align 8, !mcsema_real_eip !41
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_69273.i19 = load i8*, i8** %69, align 8
  %_new_gep_70.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_69273.i19, i64 -84
  %132 = bitcast i8* %_new_gep_70.i to i32*
  store i32 %128, i32* %132, align 4, !mcsema_real_eip !42
  %.demorgan.i = or i1 %131, %130
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_72274.i = load i64, i64* %_RBP_ptr_248.sroa.0.i, align 8
  %133 = inttoptr i64 %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_72274.i to i8*
  br i1 %.demorgan.i, label %block_0x148.i, label %block_0x18e.i, !mcsema_real_eip !43

block_0x18e.i:                                    ; preds = %block_0x11e.i
  %_new_gep_73.i = getelementptr i8, i8* %133, i64 -4
  %134 = bitcast i8* %_new_gep_73.i to i32*
  store i32 1, i32* %134, align 4, !mcsema_real_eip !47
  %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_75275.i20 = load i8*, i8** %69, align 8
  %_new_gep_76.i = getelementptr i8, i8* %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_75275.i20, i64 -4
  %135 = bitcast i8* %_new_gep_76.i to i32*
  %136 = load i32, i32* %135, align 4, !mcsema_real_eip !8
  %137 = zext i32 %136 to i64, !mcsema_real_eip !8
  %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_78254.i = load i64, i64* %_RSP_ptr_247.sroa.0.i, align 8
  %uadd350.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_78254.i, i64 96)
  %138 = extractvalue { i64, i1 } %uadd350.i, 0
  %139 = xor i64 %138, %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_78254.i, !mcsema_real_eip !9
  %140 = and i64 %139, 16, !mcsema_real_eip !9
  %141 = icmp ne i64 %140, 0, !mcsema_real_eip !9
  %142 = icmp slt i64 %138, 0
  %143 = icmp eq i64 %138, 0, !mcsema_real_eip !9
  %144 = xor i64 %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_78254.i, -9223372036854775808, !mcsema_real_eip !9
  %145 = and i64 %139, %144, !mcsema_real_eip !9
  %146 = icmp slt i64 %145, 0
  %147 = trunc i64 %138 to i8, !mcsema_real_eip !9
  %148 = tail call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !9
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  %151 = extractvalue { i64, i1 } %uadd350.i, 1
  store volatile i64 %138, i64* %_RSP_ptr_247.sroa.0.i, align 8
  %152 = inttoptr i64 %138 to i64*, !mcsema_real_eip !10
  %153 = load i64, i64* %152, align 8
  store volatile i64 %153, i64* %_RBP_ptr_248.sroa.0.i, align 8
  %154 = add i64 %138, 16
  store volatile i64 %154, i64* %_RSP_ptr_247.sroa.0.i, align 8
  store i64 %137, i64* %RAX.i, align 8, !mcsema_real_eip !11
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !11
  store i64 %127, i64* %RCX.i, align 8, !mcsema_real_eip !11
  store i64 28, i64* %RDX.i, align 8, !mcsema_real_eip !11
  store i64 %67, i64* %RSI.i, align 8, !mcsema_real_eip !11
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !11
  store volatile i64 %154, i64* %RSP.i, align 8
  store volatile i64 %153, i64* %RBP.i, align 8
  store i64 %67, i64* %R8.i, align 8, !mcsema_real_eip !11
  store i64 %79, i64* %R9.i, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !11
  store i1 %151, i1* %CF.i, align 1, !mcsema_real_eip !11
  store i1 %150, i1* %PF.i, align 1, !mcsema_real_eip !11
  store i1 %141, i1* %AF.i, align 1, !mcsema_real_eip !11
  store i1 %143, i1* %ZF.i, align 1, !mcsema_real_eip !11
  store i1 %142, i1* %SF.i, align 1, !mcsema_real_eip !11
  store i1 %146, i1* %OF.i, align 1, !mcsema_real_eip !11
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !11
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !11
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !11
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !11
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !11
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !11
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !11
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !11
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_247.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_248.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 104, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_b0.exit

block_0x148.i:                                    ; preds = %block_0x11e.i
  %155 = and i32 %129, %126, !mcsema_real_eip !40
  %156 = icmp slt i32 %155, 0
  %157 = icmp slt i8 %124, 119
  %158 = trunc i32 %128 to i8, !mcsema_real_eip !40
  %159 = tail call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !40
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  %162 = and i32 %129, 16
  %163 = icmp eq i32 %162, 0
  %_new_gep_87.i = getelementptr i8, i8* %133, i64 -80
  %_allin_new_bt_88.i = bitcast i8* %_new_gep_87.i to i64*
  %164 = load i64, i64* %_allin_new_bt_88.i, align 8, !mcsema_real_eip !44
  %165 = shl i64 %164, 3
  %166 = add i64 %165, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !45
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !45
  %168 = load i64, i64* %167, align 8, !mcsema_real_eip !45
  store i64 %164, i64* %RAX.i, align 8, !mcsema_real_eip !46
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !46
  store i64 %168, i64* %RCX.i, align 8, !mcsema_real_eip !46
  store i64 28, i64* %RDX.i, align 8, !mcsema_real_eip !46
  store i64 %67, i64* %RSI.i, align 8, !mcsema_real_eip !46
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !46
  %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_89257.i = load i64, i64* %_RSP_ptr_247.sroa.0.i, align 8
  store volatile i64 %_RSP_ptr_247.sroa.0.i.0._RSP_ptr_247.sroa.0.0._RSP_ptr_247.sroa.0.0._load_rsp_ptr_89257.i, i64* %RSP.i, align 8
  store volatile i64 %_RBP_ptr_248.sroa.0.i.0._RBP_ptr_248.sroa.0.0._RBP_ptr_248.sroa.0.0._load_rbp_ptr_72274.i, i64* %RBP.i, align 8
  store i64 %67, i64* %R8.i, align 8, !mcsema_real_eip !46
  store i64 %79, i64* %R9.i, align 8, !mcsema_real_eip !46
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !46
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !46
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !46
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !46
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !46
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !46
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !46
  store i1 %131, i1* %CF.i, align 1, !mcsema_real_eip !46
  store i1 %161, i1* %PF.i, align 1, !mcsema_real_eip !46
  store i1 %163, i1* %AF.i, align 1, !mcsema_real_eip !46
  store i1 %130, i1* %ZF.i, align 1, !mcsema_real_eip !46
  store i1 %157, i1* %SF.i, align 1, !mcsema_real_eip !46
  store i1 %156, i1* %OF.i, align 1, !mcsema_real_eip !46
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !46
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !46
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !46
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !46
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !46
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !46
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !46
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !46
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !46
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !46
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !46
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !46
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !46
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !46
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !46
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !46
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !46
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !46
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !46
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !46
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !46
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !46
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !46
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !46
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !46
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !46
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !46
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !46
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !46
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !46
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !46
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !46
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !46
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !46
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !46
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !46
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !46
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !46
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !46
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !46
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !46
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !46
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !46
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !46
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !46
  call void @llvm.trap()
  unreachable

sub_b0.exit:                                      ; preds = %block_0x18e.i, %block_0x291.i
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 370, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!3 = !{i64 376, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!4 = !{i64 420, [24 x i8] c"\09movslq\09-24(%rbp), %rcx\00"}
!5 = !{i64 424, [18 x i8] c"\09imulq\09 $11, %rcx\00"}
!6 = !{i64 431, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!7 = !{i64 435, [26 x i8] c"\09movsbl\09(%rax,%rcx), %edx\00"}
!8 = !{i64 664, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!9 = !{i64 667, [16 x i8] c"\09addq\09$96, %rsp\00"}
!10 = !{i64 671, [11 x i8] c"\09popq\09%rbp\00"}
!11 = !{i64 672, [6 x i8] c"\09retq\00"}
!12 = !{i64 578, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!13 = !{i64 584, [8 x i8] c"\09jne\0924\00"}
!14 = !{i64 502, [8 x i8] c"\09jne\0958\00"}
!15 = !{i64 566, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!16 = !{i64 569, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!17 = !{i64 572, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!18 = !{i64 575, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!19 = !{i64 581, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!20 = !{i64 624, [24 x i8] c"\09movslq\09-24(%rbp), %rcx\00"}
!21 = !{i64 628, [18 x i8] c"\09imulq\09 $11, %rcx\00"}
!22 = !{i64 635, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!23 = !{i64 639, [23 x i8] c"\09movb\09$88, (%rax,%rcx)\00"}
!24 = !{i64 643, [22 x i8] c"\09movl\09-36(%rbp), %edx\00"}
!25 = !{i64 646, [15 x i8] c"\09addl\09$1, %edx\00"}
!26 = !{i64 649, [22 x i8] c"\09movl\09%edx, -36(%rbp)\00"}
!27 = !{i64 276, [21 x i8] c"\09cmpl\09$28, -36(%rbp)\00"}
!28 = !{i64 280, [9 x i8] c"\09jge\09371\00"}
!29 = !{i64 590, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!30 = !{i64 596, [8 x i8] c"\09jne\0912\00"}
!31 = !{i64 560, [7 x i8] c"\09jl\0912\00"}
!32 = !{i64 657, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!33 = !{i64 286, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!34 = !{i64 289, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!35 = !{i64 292, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!36 = !{i64 295, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!37 = !{i64 298, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!38 = !{i64 302, [29 x i8] c"\09movsbl\09-64(%rbp,%rcx), %eax\00"}
!39 = !{i64 307, [17 x i8] c"\09addl\09$-97, %eax\00"}
!40 = !{i64 312, [16 x i8] c"\09subl\09$22, %eax\00"}
!41 = !{i64 315, [22 x i8] c"\09movq\09%rcx, -80(%rbp)\00"}
!42 = !{i64 319, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!43 = !{i64 322, [7 x i8] c"\09ja\0970\00"}
!44 = !{i64 328, [22 x i8] c"\09movq\09-80(%rbp), %rax\00"}
!45 = !{i64 332, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!46 = !{i64 340, [12 x i8] c"\09jmpq\09*%rcx\00"}
!47 = !{i64 398, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!48 = !{i64 384, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!49 = !{i64 390, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!50 = !{i64 356, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!51 = !{i64 362, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!52 = !{i64 342, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!53 = !{i64 348, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!54 = !{i64 176, [12 x i8] c"\09pushq\09%rbp\00"}
!55 = !{i64 207, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!56 = !{i64 214, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!57 = !{i64 217, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!58 = !{i64 221, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!59 = !{i64 228, [20 x i8] c"\09movl\09$1, -20(%rbp)\00"}
!60 = !{i64 235, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!61 = !{i64 242, [24 x i8] c"\09movslq\09-24(%rbp), %rsi\00"}
!62 = !{i64 246, [18 x i8] c"\09imulq\09 $11, %rsi\00"}
!63 = !{i64 253, [24 x i8] c"\09movslq\09-20(%rbp), %rsi\00"}
!64 = !{i64 257, [22 x i8] c"\09movb\09$88, (%r9,%rsi)\00"}
!65 = !{i64 267, [9 x i8] c"\09callq\090\00"}
!66 = !{i64 272, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
