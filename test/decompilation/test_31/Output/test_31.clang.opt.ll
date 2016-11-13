; ModuleID = 'Output/test_31.clang.opt.bc'
source_filename = "Output/test_31.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [4 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0xb1 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) unnamed_addr #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>, <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI, align 8, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %6 = load i64, i64* %RSP, align 8, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %7 = load i64, i64* %RBP, align 8, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64, i64* %RIP, align 8, !mcsema_real_eip !2
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
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !2
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
  %46 = load i64, i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %48 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %50 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !2
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
  %68 = bitcast i64* %STACK_BASE to <2 x i64>*
  %69 = load <2 x i64>, <2 x i64>* %68, align 8
  %70 = add i64 %6, -8
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !2
  store i64 %7, i64* %71, align 8, !mcsema_real_eip !2
  %72 = add i64 %6, -24
  %73 = add i64 %6, -16, !mcsema_real_eip !3
  %74 = trunc i64 %5 to i32, !mcsema_real_eip !3
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !3
  %switch = icmp ult i32 %74, 2
  br i1 %switch, label %block_0x5b, label %block_0x33

block_0x5b:                                       ; preds = %entry, %block_0x33
  %XMM15_val.0 = phi i128 [ %289, %block_0x33 ], [ %67, %entry ]
  %XMM14_val.0 = phi i128 [ %288, %block_0x33 ], [ %66, %entry ]
  %XMM13_val.0 = phi i128 [ %287, %block_0x33 ], [ %65, %entry ]
  %XMM12_val.0 = phi i128 [ %286, %block_0x33 ], [ %64, %entry ]
  %XMM11_val.0 = phi i128 [ %285, %block_0x33 ], [ %63, %entry ]
  %XMM10_val.0 = phi i128 [ %284, %block_0x33 ], [ %62, %entry ]
  %XMM9_val.0 = phi i128 [ %283, %block_0x33 ], [ %61, %entry ]
  %XMM8_val.0 = phi i128 [ %282, %block_0x33 ], [ %60, %entry ]
  %XMM7_val.0 = phi i128 [ %281, %block_0x33 ], [ %59, %entry ]
  %XMM6_val.0 = phi i128 [ %280, %block_0x33 ], [ %58, %entry ]
  %XMM5_val.0 = phi i128 [ %279, %block_0x33 ], [ %57, %entry ]
  %XMM4_val.0 = phi i128 [ %278, %block_0x33 ], [ %56, %entry ]
  %XMM3_val.0 = phi i128 [ %277, %block_0x33 ], [ %55, %entry ]
  %XMM2_val.0 = phi i128 [ %276, %block_0x33 ], [ %54, %entry ]
  %XMM1_val.0 = phi i128 [ %275, %block_0x33 ], [ %53, %entry ]
  %XMM0_val.0 = phi i128 [ %274, %block_0x33 ], [ %52, %entry ]
  %FPU_FOPCODE_val.0 = phi i11 [ %273, %block_0x33 ], [ %51, %entry ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %272, %block_0x33 ], [ %50, %entry ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %271, %block_0x33 ], [ %49, %entry ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %270, %block_0x33 ], [ %48, %entry ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %269, %block_0x33 ], [ %47, %entry ]
  %FPU_TAG_val.sroa.0.0 = phi i64 [ %268, %block_0x33 ], [ %46, %entry ]
  %FPU_IM_val.0 = phi i1 [ %267, %block_0x33 ], [ %43, %entry ]
  %FPU_DM_val.0 = phi i1 [ %266, %block_0x33 ], [ %42, %entry ]
  %FPU_ZM_val.0 = phi i1 [ %265, %block_0x33 ], [ %41, %entry ]
  %FPU_OM_val.0 = phi i1 [ %264, %block_0x33 ], [ %40, %entry ]
  %FPU_UM_val.0 = phi i1 [ %263, %block_0x33 ], [ %39, %entry ]
  %FPU_PM_val.0 = phi i1 [ %262, %block_0x33 ], [ %38, %entry ]
  %FPU_PC_val.0 = phi i2 [ %261, %block_0x33 ], [ %37, %entry ]
  %FPU_RC_val.0 = phi i2 [ %260, %block_0x33 ], [ %36, %entry ]
  %FPU_X_val.0 = phi i1 [ %259, %block_0x33 ], [ %35, %entry ]
  %FPU_IE_val.0 = phi i1 [ %258, %block_0x33 ], [ %34, %entry ]
  %FPU_DE_val.0 = phi i1 [ %257, %block_0x33 ], [ %33, %entry ]
  %FPU_ZE_val.0 = phi i1 [ %256, %block_0x33 ], [ %32, %entry ]
  %FPU_OE_val.0 = phi i1 [ %255, %block_0x33 ], [ %31, %entry ]
  %FPU_UE_val.0 = phi i1 [ %254, %block_0x33 ], [ %30, %entry ]
  %FPU_PE_val.0 = phi i1 [ %253, %block_0x33 ], [ %29, %entry ]
  %FPU_SF_val.0 = phi i1 [ %252, %block_0x33 ], [ %28, %entry ]
  %FPU_ES_val.0 = phi i1 [ %251, %block_0x33 ], [ %27, %entry ]
  %FPU_C0_val.0 = phi i1 [ %250, %block_0x33 ], [ %26, %entry ]
  %FPU_C1_val.0 = phi i1 [ %249, %block_0x33 ], [ %25, %entry ]
  %FPU_C2_val.0 = phi i1 [ %248, %block_0x33 ], [ %24, %entry ]
  %FPU_TOP_val.0 = phi i3 [ %247, %block_0x33 ], [ %23, %entry ]
  %FPU_C3_val.0 = phi i1 [ %246, %block_0x33 ], [ %22, %entry ]
  %FPU_B_val.0 = phi i1 [ %245, %block_0x33 ], [ %21, %entry ]
  %DF_val.0 = phi i1 [ %244, %block_0x33 ], [ %17, %entry ]
  %RIP_val.0 = phi i64 [ %243, %block_0x33 ], [ %16, %entry ]
  %RSP_val.0 = phi i64 [ %233, %block_0x33 ], [ %72, %entry ]
  %RBP_val.0 = phi i64 [ %234, %block_0x33 ], [ %70, %entry ]
  %RDI_val.0 = phi i64 [ %297, %block_0x33 ], [ %5, %entry ]
  %.sink = phi i32 [ %296, %block_0x33 ], [ 1, %entry ]
  %76 = phi <2 x i64> [ %230, %block_0x33 ], [ %2, %entry ]
  %77 = phi <2 x i64> [ %232, %block_0x33 ], [ %4, %entry ]
  %78 = phi <2 x i64> [ %236, %block_0x33 ], [ %9, %entry ]
  %79 = phi <2 x i64> [ %238, %block_0x33 ], [ %11, %entry ]
  %80 = phi <2 x i64> [ %240, %block_0x33 ], [ %13, %entry ]
  %81 = phi <2 x i64> [ %242, %block_0x33 ], [ %15, %entry ]
  %82 = phi <2 x i64> [ %291, %block_0x33 ], [ %69, %entry ]
  %83 = add i64 %RBP_val.0, -4
  %84 = inttoptr i64 %83 to i32*
  store i32 %.sink, i32* %84, align 4
  %85 = zext i32 %.sink to i64, !mcsema_real_eip !4
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0, i64 16)
  %86 = extractvalue { i64, i1 } %uadd, 0
  %87 = xor i64 %86, %RSP_val.0, !mcsema_real_eip !5
  %88 = and i64 %87, 16
  %89 = icmp eq i64 %88, 0
  %90 = icmp slt i64 %86, 0
  %91 = icmp eq i64 %86, 0, !mcsema_real_eip !5
  %92 = xor i64 %RSP_val.0, -9223372036854775808, !mcsema_real_eip !5
  %93 = and i64 %87, %92, !mcsema_real_eip !5
  %94 = icmp slt i64 %93, 0
  %95 = trunc i64 %86 to i8, !mcsema_real_eip !5
  %96 = tail call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !5
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  %99 = extractvalue { i64, i1 } %uadd, 1
  %100 = inttoptr i64 %86 to i64*, !mcsema_real_eip !6
  %101 = load i64, i64* %100, align 8, !mcsema_real_eip !6
  %102 = add i64 %86, 16, !mcsema_real_eip !7
  store i64 %85, i64* %RAX, align 8, !mcsema_real_eip !7
  %103 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %76, <2 x i64>* %103, align 8
  %104 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %77, <2 x i64>* %104, align 8
  store i64 %RDI_val.0, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %102, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %101, i64* %RBP, align 8, !mcsema_real_eip !7
  %105 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %78, <2 x i64>* %105, align 8
  %106 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %79, <2 x i64>* %106, align 8
  %107 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %80, <2 x i64>* %107, align 8
  %108 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %81, <2 x i64>* %108, align 8
  store i64 %RIP_val.0, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %99, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %98, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %89, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %91, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %90, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %94, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %FPU_TAG_val.sroa.0.0, i64* %45, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !7
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !7
  %109 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %82, <2 x i64>* %109, align 1
  ret void, !mcsema_real_eip !7

block_0x33:                                       ; preds = %entry
  %110 = add i32 %74, -1
  %111 = xor i32 %110, %74, !mcsema_real_eip !8
  %112 = and i32 %111, 16, !mcsema_real_eip !8
  %113 = icmp ne i32 %112, 0, !mcsema_real_eip !8
  %114 = trunc i32 %110 to i8, !mcsema_real_eip !8
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !8
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  %118 = icmp eq i32 %110, 0, !mcsema_real_eip !8
  %119 = icmp slt i32 %110, 0
  %120 = and i32 %111, %74, !mcsema_real_eip !8
  %121 = icmp slt i32 %120, 0
  %122 = zext i32 %110 to i64, !mcsema_real_eip !8
  %123 = add i64 %6, -32
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !9
  store i64 -4981261766360305936, i64* %124, align 8, !mcsema_real_eip !9
  store i64 %122, i64* %RAX, align 8, !mcsema_real_eip !9
  %125 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %125, align 8
  %126 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %126, align 8
  store i64 %122, i64* %RDI, align 8, !mcsema_real_eip !9
  store i64 %123, i64* %RSP, align 8, !mcsema_real_eip !9
  store i64 %70, i64* %RBP, align 8, !mcsema_real_eip !9
  %127 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %127, align 8
  %128 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %128, align 8
  %129 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %129, align 8
  %130 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %130, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !9
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %113, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 %118, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %119, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %121, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !9
  %131 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %69, <2 x i64>* %131, align 1
  tail call x86_64_sysvcc void @sub_0(%struct.regs* nonnull %0), !mcsema_real_eip !9
  %132 = bitcast %struct.regs* %0 to <2 x i64>*
  %133 = load <2 x i64>, <2 x i64>* %132, align 8
  %134 = bitcast i64* %RCX to <2 x i64>*
  %135 = load <2 x i64>, <2 x i64>* %134, align 8
  %136 = load i64, i64* %RSI, align 8, !mcsema_real_eip !9
  %137 = load i64, i64* %RSP, align 8, !mcsema_real_eip !9
  %138 = bitcast i64* %RBP to <2 x i64>*
  %139 = load <2 x i64>, <2 x i64>* %138, align 8
  %140 = bitcast i64* %R9 to <2 x i64>*
  %141 = load <2 x i64>, <2 x i64>* %140, align 8
  %142 = bitcast i64* %R11 to <2 x i64>*
  %143 = load <2 x i64>, <2 x i64>* %142, align 8
  %144 = bitcast i64* %R13 to <2 x i64>*
  %145 = load <2 x i64>, <2 x i64>* %144, align 8
  %146 = bitcast i64* %R15 to <2 x i64>*
  %147 = load <2 x i64>, <2 x i64>* %146, align 8
  %148 = load i1, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !9
  %149 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !9
  %150 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  %151 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  %152 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  %153 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  %154 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  %155 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  %156 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  %157 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  %158 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  %159 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  %160 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  %161 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  %162 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  %163 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !9
  %164 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  %165 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  %166 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  %167 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  %168 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  %169 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  %170 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  %171 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  %172 = load i64, i64* %45, align 4
  %173 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  %174 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !9
  %175 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  %176 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !9
  %177 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !9
  %178 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !9
  %179 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !9
  %180 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !9
  %181 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !9
  %182 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !9
  %183 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !9
  %184 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !9
  %185 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !9
  %186 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !9
  %187 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !9
  %188 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !9
  %189 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !9
  %190 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !9
  %191 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !9
  %192 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !9
  %193 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !9
  %194 = bitcast i64* %STACK_BASE to <2 x i64>*
  %195 = load <2 x i64>, <2 x i64>* %194, align 8
  %196 = extractelement <2 x i64> %139, i32 0
  %197 = add i64 %196, -8, !mcsema_real_eip !10
  %198 = inttoptr i64 %197 to i32*
  %199 = load i32, i32* %198, align 4, !mcsema_real_eip !10
  %200 = add i32 %199, -2
  %201 = xor i32 %200, %199, !mcsema_real_eip !11
  %202 = and i32 %201, 16, !mcsema_real_eip !11
  %203 = icmp ne i32 %202, 0, !mcsema_real_eip !11
  %204 = trunc i32 %200 to i8, !mcsema_real_eip !11
  %205 = tail call i8 @llvm.ctpop.i8(i8 %204), !mcsema_real_eip !11
  %206 = and i8 %205, 1
  %207 = icmp eq i8 %206, 0
  %208 = icmp eq i32 %200, 0, !mcsema_real_eip !11
  %209 = icmp slt i32 %200, 0
  %210 = icmp ult i32 %199, 2, !mcsema_real_eip !11
  %211 = and i32 %201, %199, !mcsema_real_eip !11
  %212 = icmp slt i32 %211, 0
  %213 = zext i32 %200 to i64, !mcsema_real_eip !11
  %214 = add i64 %196, -12, !mcsema_real_eip !12
  %215 = extractelement <2 x i64> %133, i32 0
  %216 = trunc i64 %215 to i32, !mcsema_real_eip !12
  %217 = inttoptr i64 %214 to i32*
  store i32 %216, i32* %217, align 4, !mcsema_real_eip !12
  %218 = add i64 %137, -8
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !13
  store i64 -4981261766360305936, i64* %219, align 8, !mcsema_real_eip !13
  %220 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %133, <2 x i64>* %220, align 8
  %221 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> %135, <2 x i64>* %221, align 8
  store i64 %136, i64* %RSI, align 8, !mcsema_real_eip !13
  store i64 %213, i64* %RDI, align 8, !mcsema_real_eip !13
  store i64 %218, i64* %RSP, align 8, !mcsema_real_eip !13
  %222 = bitcast i64* %RBP to <2 x i64>*
  store <2 x i64> %139, <2 x i64>* %222, align 8
  %223 = bitcast i64* %R9 to <2 x i64>*
  store <2 x i64> %141, <2 x i64>* %223, align 8
  %224 = bitcast i64* %R11 to <2 x i64>*
  store <2 x i64> %143, <2 x i64>* %224, align 8
  %225 = bitcast i64* %R13 to <2 x i64>*
  store <2 x i64> %145, <2 x i64>* %225, align 8
  %226 = bitcast i64* %R15 to <2 x i64>*
  store <2 x i64> %147, <2 x i64>* %226, align 8
  store i1 %210, i1* %CF, align 1, !mcsema_real_eip !13
  store i1 %207, i1* %PF, align 1, !mcsema_real_eip !13
  store i1 %203, i1* %AF, align 1, !mcsema_real_eip !13
  store i1 %208, i1* %ZF, align 1, !mcsema_real_eip !13
  store i1 %209, i1* %SF, align 1, !mcsema_real_eip !13
  store i1 %212, i1* %OF, align 1, !mcsema_real_eip !13
  store i1 %148, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  store i1 %149, i1* %FPU_B, align 1, !mcsema_real_eip !13
  store i1 %150, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  store i3 %151, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  store i1 %152, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  store i1 %153, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  store i1 %154, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  store i1 %155, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  store i1 %156, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  store i1 %157, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  store i1 %158, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  store i1 %159, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  store i1 %160, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  store i1 %161, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  store i1 %162, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  store i1 %163, i1* %FPU_X, align 1, !mcsema_real_eip !13
  store i2 %164, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  store i2 %165, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  store i1 %166, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  store i1 %167, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  store i1 %168, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  store i1 %169, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  store i1 %170, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  store i1 %171, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  store i64 %172, i64* %45, align 4
  store i16 %173, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  store i64 %174, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  store i16 %175, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  store i64 %176, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  store i11 %177, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !13
  store i128 %178, i128* %XMM0, align 1, !mcsema_real_eip !13
  store i128 %179, i128* %XMM1, align 1, !mcsema_real_eip !13
  store i128 %180, i128* %XMM2, align 1, !mcsema_real_eip !13
  store i128 %181, i128* %XMM3, align 1, !mcsema_real_eip !13
  store i128 %182, i128* %XMM4, align 1, !mcsema_real_eip !13
  store i128 %183, i128* %XMM5, align 1, !mcsema_real_eip !13
  store i128 %184, i128* %XMM6, align 1, !mcsema_real_eip !13
  store i128 %185, i128* %XMM7, align 1, !mcsema_real_eip !13
  store i128 %186, i128* %XMM8, align 1, !mcsema_real_eip !13
  store i128 %187, i128* %XMM9, align 1, !mcsema_real_eip !13
  store i128 %188, i128* %XMM10, align 1, !mcsema_real_eip !13
  store i128 %189, i128* %XMM11, align 1, !mcsema_real_eip !13
  store i128 %190, i128* %XMM12, align 1, !mcsema_real_eip !13
  store i128 %191, i128* %XMM13, align 1, !mcsema_real_eip !13
  store i128 %192, i128* %XMM14, align 1, !mcsema_real_eip !13
  store i128 %193, i128* %XMM15, align 1, !mcsema_real_eip !13
  %227 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %195, <2 x i64>* %227, align 1
  tail call x86_64_sysvcc void @sub_0(%struct.regs* nonnull %0), !mcsema_real_eip !13
  %228 = load i64, i64* %RAX, align 8, !mcsema_real_eip !13
  %229 = bitcast i64* %RBX to <2 x i64>*
  %230 = load <2 x i64>, <2 x i64>* %229, align 8
  %231 = bitcast i64* %RDX to <2 x i64>*
  %232 = load <2 x i64>, <2 x i64>* %231, align 8
  %233 = load i64, i64* %RSP, align 8, !mcsema_real_eip !13
  %234 = load i64, i64* %RBP, align 8, !mcsema_real_eip !13
  %235 = bitcast i64* %R8 to <2 x i64>*
  %236 = load <2 x i64>, <2 x i64>* %235, align 8
  %237 = bitcast i64* %R10 to <2 x i64>*
  %238 = load <2 x i64>, <2 x i64>* %237, align 8
  %239 = bitcast i64* %R12 to <2 x i64>*
  %240 = load <2 x i64>, <2 x i64>* %239, align 8
  %241 = bitcast i64* %R14 to <2 x i64>*
  %242 = load <2 x i64>, <2 x i64>* %241, align 8
  %243 = load i64, i64* %RIP, align 8, !mcsema_real_eip !13
  %244 = load i1, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !13
  %245 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !13
  %246 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  %247 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  %248 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  %249 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  %250 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  %251 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  %252 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  %253 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  %254 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  %255 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  %256 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  %257 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  %258 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  %259 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !13
  %260 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  %261 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  %262 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  %263 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  %264 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  %265 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  %266 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  %267 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %268 = load i64, i64* %45, align 4
  %269 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  %270 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !13
  %271 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  %272 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !13
  %273 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !13
  %274 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !13
  %275 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !13
  %276 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !13
  %277 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !13
  %278 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !13
  %279 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !13
  %280 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !13
  %281 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !13
  %282 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !13
  %283 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !13
  %284 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !13
  %285 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !13
  %286 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !13
  %287 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !13
  %288 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !13
  %289 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !13
  %290 = bitcast i64* %STACK_BASE to <2 x i64>*
  %291 = load <2 x i64>, <2 x i64>* %290, align 8
  %292 = add i64 %234, -12, !mcsema_real_eip !14
  %293 = inttoptr i64 %292 to i32*
  %294 = load i32, i32* %293, align 4, !mcsema_real_eip !14
  %295 = trunc i64 %228 to i32, !mcsema_real_eip !15
  %296 = add i32 %294, %295
  %297 = zext i32 %296 to i64, !mcsema_real_eip !15
  br label %block_0x5b
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !16
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !16
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !16
  %1 = bitcast %struct.regs* %0 to <2 x i64>*
  %2 = load <2 x i64>, <2 x i64>* %1, align 8
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !16
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !16
  %3 = bitcast i64* %RCX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !16
  %5 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !16
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !16
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !16
  %6 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !16
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !16
  %7 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !16
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !16
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !16
  %8 = bitcast i64* %R8.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !16
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !16
  %10 = bitcast i64* %R10.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !16
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !16
  %12 = bitcast i64* %R12.i to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !16
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !16
  %14 = bitcast i64* %R14.i to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !16
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !16
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !16
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !16
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !16
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !16
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !16
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !16
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !16
  %17 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !16
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !16
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !16
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !16
  %20 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !16
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !16
  %21 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !16
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !16
  %22 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !16
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !16
  %23 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !16
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !16
  %24 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !16
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !16
  %25 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !16
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !16
  %26 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !16
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !16
  %27 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !16
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !16
  %28 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !16
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !16
  %29 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !16
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !16
  %30 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !16
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !16
  %31 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !16
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !16
  %32 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !16
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !16
  %33 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !16
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !16
  %34 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !16
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !16
  %35 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !16
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !16
  %36 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !16
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !16
  %37 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !16
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !16
  %38 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !16
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !16
  %39 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !16
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !16
  %40 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !16
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !16
  %41 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !16
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !16
  %42 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !16
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !16
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !16
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !16
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !16
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !16
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !16
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !16
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !16
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !16
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !16
  %50 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !16
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !16
  %51 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !16
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !16
  %52 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !16
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !16
  %53 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !16
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !16
  %54 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !16
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !16
  %55 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !16
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !16
  %56 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !16
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !16
  %57 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !16
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !16
  %58 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !16
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !16
  %59 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !16
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !16
  %60 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !16
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !16
  %61 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !16
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !16
  %62 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !16
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !16
  %63 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !16
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !16
  %64 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !16
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !16
  %65 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !16
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !16
  %66 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !16
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !16
  %67 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %68 = load <2 x i64>, <2 x i64>* %67, align 8
  %69 = add i64 %6, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !16
  store i64 %7, i64* %70, align 8, !mcsema_real_eip !16
  %71 = add i64 %6, -24
  %72 = xor i64 %71, %69, !mcsema_real_eip !17
  %73 = and i64 %72, 16
  %74 = icmp eq i64 %73, 0
  %75 = trunc i64 %71 to i8, !mcsema_real_eip !17
  %76 = tail call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !17
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  %79 = icmp eq i64 %71, 0, !mcsema_real_eip !17
  %80 = icmp slt i64 %71, 0
  %81 = icmp ult i64 %69, 16, !mcsema_real_eip !17
  %82 = and i64 %72, %69, !mcsema_real_eip !17
  %83 = icmp slt i64 %82, 0
  %84 = add i64 %6, -12, !mcsema_real_eip !18
  %85 = inttoptr i64 %84 to i32*
  store i32 0, i32* %85, align 4, !mcsema_real_eip !18
  %86 = add i64 %6, -32
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !19
  store i64 -4981261766360305936, i64* %87, align 8, !mcsema_real_eip !19
  %88 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %88, align 8
  %89 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %89, align 8
  store i64 %5, i64* %RSI.i, align 8, !mcsema_real_eip !19
  store i64 5, i64* %RDI.i, align 8, !mcsema_real_eip !19
  store i64 %86, i64* %RSP.i, align 8, !mcsema_real_eip !19
  store i64 %69, i64* %RBP.i, align 8, !mcsema_real_eip !19
  %90 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %90, align 8
  %91 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %93, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !19
  store i1 %81, i1* %CF.i, align 1, !mcsema_real_eip !19
  store i1 %78, i1* %PF.i, align 1, !mcsema_real_eip !19
  store i1 %74, i1* %AF.i, align 1, !mcsema_real_eip !19
  store i1 %79, i1* %ZF.i, align 1, !mcsema_real_eip !19
  store i1 %80, i1* %SF.i, align 1, !mcsema_real_eip !19
  store i1 %83, i1* %OF.i, align 1, !mcsema_real_eip !19
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !19
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !19
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !19
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  %94 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %94, align 1
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !19
  %95 = load i64, i64* %RAX.i, align 8, !mcsema_real_eip !19
  %96 = bitcast i64* %RBX.i to <2 x i64>*
  %97 = load <2 x i64>, <2 x i64>* %96, align 8
  %98 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !19
  %99 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !19
  %100 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !19
  %101 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !19
  %102 = bitcast i64* %R9.i to <2 x i64>*
  %103 = load <2 x i64>, <2 x i64>* %102, align 8
  %104 = bitcast i64* %R11.i to <2 x i64>*
  %105 = load <2 x i64>, <2 x i64>* %104, align 8
  %106 = bitcast i64* %R13.i to <2 x i64>*
  %107 = load <2 x i64>, <2 x i64>* %106, align 8
  %108 = bitcast i64* %R15.i to <2 x i64>*
  %109 = load <2 x i64>, <2 x i64>* %108, align 8
  %110 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !19
  %111 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  %112 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  %113 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  %114 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  %115 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  %116 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  %117 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  %118 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  %119 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  %120 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  %121 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  %122 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  %123 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  %124 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  %125 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  %126 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  %127 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  %128 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  %129 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  %130 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  %131 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  %132 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  %133 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  %134 = load i64, i64* %44, align 4
  %135 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  %136 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !19
  %137 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  %138 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !19
  %139 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !19
  %140 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  %141 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  %142 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  %143 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  %144 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  %145 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  %146 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  %147 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  %148 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  %149 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  %150 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  %151 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  %152 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  %153 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  %154 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  %155 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  %156 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %157 = load <2 x i64>, <2 x i64>* %156, align 8
  %158 = and i64 %95, 4294967295
  %159 = inttoptr i64 %99 to i64*, !mcsema_real_eip !20
  %160 = load i64, i64* %159, align 8, !mcsema_real_eip !20
  %161 = add i64 %99, 8, !mcsema_real_eip !20
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !20
  %163 = load i64, i64* %162, align 8, !mcsema_real_eip !20
  %164 = add i64 %99, 16, !mcsema_real_eip !20
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !20
  %166 = load i64, i64* %165, align 8, !mcsema_real_eip !20
  %167 = add i64 %99, 24, !mcsema_real_eip !20
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !20
  %169 = load i64, i64* %168, align 8, !mcsema_real_eip !20
  %170 = add i64 %99, 32, !mcsema_real_eip !20
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !20
  %172 = load i64, i64* %171, align 8, !mcsema_real_eip !20
  %173 = add i64 %99, 40, !mcsema_real_eip !20
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !20
  %175 = load i64, i64* %174, align 8, !mcsema_real_eip !20
  %176 = extractelement <2 x i64> %97, i32 1
  %177 = extractelement <2 x i64> %103, i32 0
  %178 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0xb1 to i64), i64 %158, i64 %98, i64 %176, i64 %101, i64 %177, i64 %160, i64 %163, i64 %166, i64 %169, i64 %172, i64 %175), !mcsema_real_eip !20
  %179 = add i64 %100, -8, !mcsema_real_eip !21
  %180 = trunc i64 %178 to i32, !mcsema_real_eip !21
  %181 = inttoptr i64 %179 to i32*
  store i32 %180, i32* %181, align 4, !mcsema_real_eip !21
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %99, i64 16)
  %182 = extractvalue { i64, i1 } %uadd.i, 0
  %183 = xor i64 %182, %99, !mcsema_real_eip !22
  %184 = and i64 %183, 16
  %185 = icmp eq i64 %184, 0
  %186 = icmp slt i64 %182, 0
  %187 = icmp eq i64 %182, 0, !mcsema_real_eip !22
  %188 = xor i64 %99, -9223372036854775808, !mcsema_real_eip !22
  %189 = and i64 %183, %188, !mcsema_real_eip !22
  %190 = icmp slt i64 %189, 0
  %191 = trunc i64 %182 to i8, !mcsema_real_eip !22
  %192 = tail call i8 @llvm.ctpop.i8(i8 %191), !mcsema_real_eip !22
  %193 = and i8 %192, 1
  %194 = icmp eq i8 %193, 0
  %195 = extractvalue { i64, i1 } %uadd.i, 1
  %196 = inttoptr i64 %182 to i64*, !mcsema_real_eip !23
  %197 = load i64, i64* %196, align 8, !mcsema_real_eip !23
  %198 = add i64 %182, 16, !mcsema_real_eip !24
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !24
  %199 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %97, <2 x i64>* %199, align 8
  store i64 %98, i64* %RDX.i, align 8, !mcsema_real_eip !24
  %200 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 0, i64 ptrtoint (%0* @data_0xb1 to i64)>, <2 x i64>* %200, align 8
  store i64 %198, i64* %RSP.i, align 8, !mcsema_real_eip !24
  store i64 %197, i64* %RBP.i, align 8, !mcsema_real_eip !24
  store i64 %101, i64* %R8.i, align 8, !mcsema_real_eip !24
  %201 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> %103, <2 x i64>* %201, align 8
  %202 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %105, <2 x i64>* %202, align 8
  %203 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %107, <2 x i64>* %203, align 8
  %204 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %109, <2 x i64>* %204, align 8
  store i1 %195, i1* %CF.i, align 1, !mcsema_real_eip !24
  store i1 %194, i1* %PF.i, align 1, !mcsema_real_eip !24
  store i1 %185, i1* %AF.i, align 1, !mcsema_real_eip !24
  store i1 %187, i1* %ZF.i, align 1, !mcsema_real_eip !24
  store i1 %186, i1* %SF.i, align 1, !mcsema_real_eip !24
  store i1 %190, i1* %OF.i, align 1, !mcsema_real_eip !24
  store i1 %110, i1* %DF.i, align 1, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !24
  store i1 %111, i1* %FPU_B.i, align 1, !mcsema_real_eip !24
  store i1 %112, i1* %FPU_C3.i, align 1, !mcsema_real_eip !24
  store i3 %113, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !24
  store i1 %114, i1* %FPU_C2.i, align 1, !mcsema_real_eip !24
  store i1 %115, i1* %FPU_C1.i, align 1, !mcsema_real_eip !24
  store i1 %116, i1* %FPU_C0.i, align 1, !mcsema_real_eip !24
  store i1 %117, i1* %FPU_ES.i, align 1, !mcsema_real_eip !24
  store i1 %118, i1* %FPU_SF.i, align 1, !mcsema_real_eip !24
  store i1 %119, i1* %FPU_PE.i, align 1, !mcsema_real_eip !24
  store i1 %120, i1* %FPU_UE.i, align 1, !mcsema_real_eip !24
  store i1 %121, i1* %FPU_OE.i, align 1, !mcsema_real_eip !24
  store i1 %122, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !24
  store i1 %123, i1* %FPU_DE.i, align 1, !mcsema_real_eip !24
  store i1 %124, i1* %FPU_IE.i, align 1, !mcsema_real_eip !24
  store i1 %125, i1* %FPU_X.i, align 1, !mcsema_real_eip !24
  store i2 %126, i2* %FPU_RC.i, align 1, !mcsema_real_eip !24
  store i2 %127, i2* %FPU_PC.i, align 1, !mcsema_real_eip !24
  store i1 %128, i1* %FPU_PM.i, align 1, !mcsema_real_eip !24
  store i1 %129, i1* %FPU_UM.i, align 1, !mcsema_real_eip !24
  store i1 %130, i1* %FPU_OM.i, align 1, !mcsema_real_eip !24
  store i1 %131, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !24
  store i1 %132, i1* %FPU_DM.i, align 1, !mcsema_real_eip !24
  store i1 %133, i1* %FPU_IM.i, align 1, !mcsema_real_eip !24
  store i64 %134, i64* %44, align 4
  store i16 %135, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %136, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !24
  store i16 %137, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %138, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !24
  store i11 %139, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !24
  store i128 %140, i128* %XMM0.i, align 1, !mcsema_real_eip !24
  store i128 %141, i128* %XMM1.i, align 1, !mcsema_real_eip !24
  store i128 %142, i128* %XMM2.i, align 1, !mcsema_real_eip !24
  store i128 %143, i128* %XMM3.i, align 1, !mcsema_real_eip !24
  store i128 %144, i128* %XMM4.i, align 1, !mcsema_real_eip !24
  store i128 %145, i128* %XMM5.i, align 1, !mcsema_real_eip !24
  store i128 %146, i128* %XMM6.i, align 1, !mcsema_real_eip !24
  store i128 %147, i128* %XMM7.i, align 1, !mcsema_real_eip !24
  store i128 %148, i128* %XMM8.i, align 1, !mcsema_real_eip !24
  store i128 %149, i128* %XMM9.i, align 1, !mcsema_real_eip !24
  store i128 %150, i128* %XMM10.i, align 1, !mcsema_real_eip !24
  store i128 %151, i128* %XMM11.i, align 1, !mcsema_real_eip !24
  store i128 %152, i128* %XMM12.i, align 1, !mcsema_real_eip !24
  store i128 %153, i128* %XMM13.i, align 1, !mcsema_real_eip !24
  store i128 %154, i128* %XMM14.i, align 1, !mcsema_real_eip !24
  store i128 %155, i128* %XMM15.i, align 1, !mcsema_real_eip !24
  %205 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %157, <2 x i64>* %205, align 1
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 13}
!4 = !{i64 91}
!5 = !{i64 94}
!6 = !{i64 98}
!7 = !{i64 99}
!8 = !{i64 54}
!9 = !{i64 61}
!10 = !{i64 66}
!11 = !{i64 69}
!12 = !{i64 75}
!13 = !{i64 78}
!14 = !{i64 83}
!15 = !{i64 86}
!16 = !{i64 112}
!17 = !{i64 116}
!18 = !{i64 125}
!19 = !{i64 132}
!20 = !{i64 151}
!21 = !{i64 161}
!22 = !{i64 166}
!23 = !{i64 170}
!24 = !{i64 171}
